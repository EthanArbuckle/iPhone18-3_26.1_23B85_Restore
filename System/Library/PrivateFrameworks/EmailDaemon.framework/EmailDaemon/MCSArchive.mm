@interface MCSArchive
- (BOOL)commitToMessages:(id)a3 failures:(id)a4 newMessages:(id)a5;
- (BOOL)willFlag;
- (BOOL)willMarkRead;
- (BOOL)willMarkUnread;
- (BOOL)willUnflag;
- (MCSArchive)initWithStore:(id)a3;
- (id)applyPendingChangeToObjects:(id)a3;
- (id)localizedShortOperationDescription;
@end

@implementation MCSArchive

- (MCSArchive)initWithStore:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = MCSArchive;
  v5 = [(MCSArchive *)&v17 init];
  if (v5)
  {
    v6 = [v4 archiveDestination];
    if (v6 == -500)
    {
      v7 = [MCSFlagChange alloc];
      v8 = [NSSet setWithObjects:MessageIsRead, 0];
      v9 = [(MCSFlagChange *)v7 initWithFlagsToSet:v8 flagsToClear:0 reason:4];

      objc_storeStrong(&v5->_seenOrTransferOperation, v9);
      v10 = [MCSFlagChange alloc];
      v11 = [NSSet setWithObjects:MessageIsDeleted, 0];
      v12 = [(MCSFlagChange *)v10 initWithFlagsToSet:v11 flagsToClear:0 reason:4];

      [(MCSFlagChange *)v12 setIsDeletion:1];
      deleteOperation = v5->_deleteOperation;
      v5->_deleteOperation = &v12->super;

      v5->_isDeleteInPlace = 1;
    }

    else
    {
      v14 = [[MCSTransfer alloc] initWithSpecialDestination:v6 markAsRead:1 deleteIfSame:1];
      [(MCSTransfer *)v14 setIsDeletion:0];
      seenOrTransferOperation = v5->_seenOrTransferOperation;
      v5->_seenOrTransferOperation = &v14->super;

      v5->_isDeleteInPlace = 0;
    }
  }

  return v5;
}

- (id)applyPendingChangeToObjects:(id)a3
{
  v4 = a3;
  v5 = [[NSMutableDictionary alloc] initWithCapacity:2];
  v6 = [(MCSOperation *)self->_seenOrTransferOperation applyPendingChangeToObjects:v4];
  [v5 addEntriesFromDictionary:v6];

  v7 = [(MCSOperation *)self->_deleteOperation applyPendingChangeToObjects:v4];
  [v5 addEntriesFromDictionary:v7];

  return v5;
}

- (BOOL)commitToMessages:(id)a3 failures:(id)a4 newMessages:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[MFActivityMonitor currentMonitor];
  [v11 addReason:MonitoredActivityReasonArchiving];

  LOBYTE(v11) = [(MCSMessageOperation *)self->_seenOrTransferOperation commitToMessages:v8 failures:v9 newMessages:v10];
  LOBYTE(self) = v11 | [(MCSMessageOperation *)self->_deleteOperation commitToMessages:v8 failures:v9 newMessages:v10];

  return self & 1;
}

- (BOOL)willMarkRead
{
  v3 = [(MCSMessageOperation *)self->_seenOrTransferOperation willMarkRead];
  if (self->_isDeleteInPlace)
  {
    v3 |= [(MCSMessageOperation *)self->_deleteOperation willMarkRead];
  }

  return v3;
}

- (BOOL)willMarkUnread
{
  v3 = [(MCSMessageOperation *)self->_seenOrTransferOperation willMarkUnread];
  if (self->_isDeleteInPlace)
  {
    v3 |= [(MCSMessageOperation *)self->_deleteOperation willMarkUnread];
  }

  return v3;
}

- (BOOL)willUnflag
{
  v3 = [(MCSMessageOperation *)self->_seenOrTransferOperation willUnflag];
  if (self->_isDeleteInPlace)
  {
    v3 |= [(MCSMessageOperation *)self->_deleteOperation willUnflag];
  }

  return v3;
}

- (BOOL)willFlag
{
  v3 = [(MCSMessageOperation *)self->_seenOrTransferOperation willFlag];
  if (self->_isDeleteInPlace)
  {
    v3 |= [(MCSMessageOperation *)self->_deleteOperation willFlag];
  }

  return v3;
}

- (id)localizedShortOperationDescription
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"OPERATION_ARCHIVE_DESC" value:&stru_10015BEC8 table:@"Main"];

  return v3;
}

@end