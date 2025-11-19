@interface ICNoteContainer
- (BOOL)canBeSharedViaICloud;
- (BOOL)isSharedReadOnly;
- (BOOL)isSharedViaICloud;
- (BOOL)mergeWithSubFolderMergeableData:(id)a3;
- (BOOL)noteIsVisible:(id)a3;
- (ICCROrderedSet)subFolderIdentifiersOrderedSet;
- (ICTTOrderedSetVersionedDocument)subFolderIdentifiersOrderedSetDocument;
- (void)applyDateHeadersType:(int64_t)a3;
- (void)saveSubFolderMergeableDataIfNeeded;
- (void)willRefresh:(BOOL)a3;
- (void)willSave;
- (void)willTurnIntoFault;
- (void)writeSubFolderMergeableData;
@end

@implementation ICNoteContainer

- (void)willTurnIntoFault
{
  if (![(ICNoteContainer *)self isSubFolderOrderMergeableDataDirty])
  {
    subFolderIdentifiersOrderedSetDocument = self->_subFolderIdentifiersOrderedSetDocument;
    self->_subFolderIdentifiersOrderedSetDocument = 0;
  }

  v4.receiver = self;
  v4.super_class = ICNoteContainer;
  [(ICNoteContainer *)&v4 willTurnIntoFault];
}

- (BOOL)isSharedReadOnly
{
  v3.receiver = self;
  v3.super_class = ICNoteContainer;
  return [(ICCloudSyncingObject *)&v3 isSharedReadOnly];
}

- (BOOL)isSharedViaICloud
{
  v3.receiver = self;
  v3.super_class = ICNoteContainer;
  return [(ICCloudSyncingObject *)&v3 isSharedViaICloud];
}

- (BOOL)canBeSharedViaICloud
{
  v3.receiver = self;
  v3.super_class = ICNoteContainer;
  return [(ICCloudSyncingObject *)&v3 canBeSharedViaICloud];
}

- (BOOL)noteIsVisible:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  v5 = [(ICNoteContainer *)self predicateForVisibleNotes];
  v6 = [v5 evaluateWithObject:v4];

  return v6;
}

- (void)willRefresh:(BOOL)a3
{
  v3 = a3;
  if (![(ICNoteContainer *)self isSubFolderOrderMergeableDataDirty])
  {
    subFolderIdentifiersOrderedSetDocument = self->_subFolderIdentifiersOrderedSetDocument;
    self->_subFolderIdentifiersOrderedSetDocument = 0;
  }

  v6.receiver = self;
  v6.super_class = ICNoteContainer;
  [(ICNoteContainer *)&v6 willRefresh:v3];
}

- (void)willSave
{
  [(ICNoteContainer *)self saveSubFolderMergeableDataIfNeeded];
  v3.receiver = self;
  v3.super_class = ICNoteContainer;
  [(ICCloudSyncingObject *)&v3 willSave];
}

- (ICTTOrderedSetVersionedDocument)subFolderIdentifiersOrderedSetDocument
{
  subFolderIdentifiersOrderedSetDocument = self->_subFolderIdentifiersOrderedSetDocument;
  if (!subFolderIdentifiersOrderedSetDocument)
  {
    v4 = [ICTTOrderedSetVersionedDocument alloc];
    v5 = [(ICNoteContainer *)self subFolderOrderMergeableData];
    v6 = [(ICCloudSyncingObject *)self currentReplicaID];
    v7 = [(ICTTVersionedDocument *)v4 initWithData:v5 replicaID:v6];
    v8 = self->_subFolderIdentifiersOrderedSetDocument;
    self->_subFolderIdentifiersOrderedSetDocument = v7;

    subFolderIdentifiersOrderedSetDocument = self->_subFolderIdentifiersOrderedSetDocument;
  }

  return subFolderIdentifiersOrderedSetDocument;
}

- (ICCROrderedSet)subFolderIdentifiersOrderedSet
{
  objc_opt_class();
  v3 = [(ICNoteContainer *)self subFolderIdentifiersOrderedSetDocument];
  v4 = [v3 orderedSet];
  v5 = ICCheckedDynamicCast();

  return v5;
}

- (void)saveSubFolderMergeableDataIfNeeded
{
  if ([(ICNoteContainer *)self isSubFolderOrderMergeableDataDirty])
  {

    [(ICNoteContainer *)self writeSubFolderMergeableData];
  }
}

- (BOOL)mergeWithSubFolderMergeableData:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  v5 = [ICTTOrderedSetVersionedDocument alloc];
  v6 = [(ICCloudSyncingObject *)self currentReplicaID];
  v7 = [(ICTTVersionedDocument *)v5 initWithData:v4 replicaID:v6];

  v8 = [(ICNoteContainer *)self subFolderIdentifiersOrderedSetDocument];
  v9 = [v8 mergeWithOrderedSetVersionedDocument:v7];

  v10 = v9 == 2;
  if (v9 == 2)
  {
    [(ICNoteContainer *)self setSubFolderOrderMergeableDataDirty:1];
  }

  return v10;
}

- (void)writeSubFolderMergeableData
{
  if ([(ICNoteContainer *)self isSubFolderOrderMergeableDataDirty])
  {
    [(ICNoteContainer *)self setSubFolderOrderMergeableDataDirty:0];
  }

  v4 = [(ICNoteContainer *)self subFolderIdentifiersOrderedSetDocument];
  v3 = [v4 serialize];
  [(ICNoteContainer *)self setSubFolderOrderMergeableData:v3];
}

- (void)applyDateHeadersType:(int64_t)a3
{
  if (a3 <= 2)
  {
    [(ICNoteContainer *)self setDateHeadersType:?];
  }
}

@end