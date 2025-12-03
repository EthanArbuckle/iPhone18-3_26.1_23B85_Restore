@interface _MCSJunk
- (BOOL)commitToMessages:(id)messages failures:(id)failures newMessages:(id)newMessages;
- (BOOL)willFlag;
- (BOOL)willMarkRead;
- (BOOL)willMarkUnread;
- (BOOL)willUnflag;
- (id)applyPendingChangeToObjects:(id)objects;
@end

@implementation _MCSJunk

- (id)applyPendingChangeToObjects:(id)objects
{
  objectsCopy = objects;
  v5 = +[NSMutableDictionary dictionary];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = self->_operations;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) applyPendingChangeToObjects:{objectsCopy, v12}];
        [v5 addEntriesFromDictionary:v10];
      }

      v7 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v5;
}

- (BOOL)commitToMessages:(id)messages failures:(id)failures newMessages:(id)newMessages
{
  messagesCopy = messages;
  failuresCopy = failures;
  newMessagesCopy = newMessages;
  v11 = +[MFActivityMonitor currentMonitor];
  [v11 addReason:MonitoredActivityReasonJunking];

  v12 = [(_MCSJunk *)self mf_andOperations:self->_operations];
  LOBYTE(v11) = [v12 commitToMessages:messagesCopy failures:failuresCopy newMessages:newMessagesCopy];

  return v11;
}

- (BOOL)willMarkRead
{
  v2 = [(_MCSJunk *)self mf_orOperations:self->_operations];
  willMarkRead = [v2 willMarkRead];

  return willMarkRead;
}

- (BOOL)willMarkUnread
{
  v2 = [(_MCSJunk *)self mf_orOperations:self->_operations];
  willMarkUnread = [v2 willMarkUnread];

  return willMarkUnread;
}

- (BOOL)willFlag
{
  v2 = [(_MCSJunk *)self mf_orOperations:self->_operations];
  willFlag = [v2 willFlag];

  return willFlag;
}

- (BOOL)willUnflag
{
  v2 = [(_MCSJunk *)self mf_orOperations:self->_operations];
  willUnflag = [v2 willUnflag];

  return willUnflag;
}

@end