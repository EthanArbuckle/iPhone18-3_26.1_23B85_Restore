@interface ICNoteContainer
- (BOOL)canBeSharedViaICloud;
- (BOOL)isSharedReadOnly;
- (BOOL)isSharedViaICloud;
- (BOOL)mergeWithSubFolderMergeableData:(id)data;
- (BOOL)noteIsVisible:(id)visible;
- (ICCROrderedSet)subFolderIdentifiersOrderedSet;
- (ICTTOrderedSetVersionedDocument)subFolderIdentifiersOrderedSetDocument;
- (void)applyDateHeadersType:(int64_t)type;
- (void)saveSubFolderMergeableDataIfNeeded;
- (void)willRefresh:(BOOL)refresh;
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

- (BOOL)noteIsVisible:(id)visible
{
  if (!visible)
  {
    return 0;
  }

  visibleCopy = visible;
  predicateForVisibleNotes = [(ICNoteContainer *)self predicateForVisibleNotes];
  v6 = [predicateForVisibleNotes evaluateWithObject:visibleCopy];

  return v6;
}

- (void)willRefresh:(BOOL)refresh
{
  refreshCopy = refresh;
  if (![(ICNoteContainer *)self isSubFolderOrderMergeableDataDirty])
  {
    subFolderIdentifiersOrderedSetDocument = self->_subFolderIdentifiersOrderedSetDocument;
    self->_subFolderIdentifiersOrderedSetDocument = 0;
  }

  v6.receiver = self;
  v6.super_class = ICNoteContainer;
  [(ICNoteContainer *)&v6 willRefresh:refreshCopy];
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
    subFolderOrderMergeableData = [(ICNoteContainer *)self subFolderOrderMergeableData];
    currentReplicaID = [(ICCloudSyncingObject *)self currentReplicaID];
    v7 = [(ICTTVersionedDocument *)v4 initWithData:subFolderOrderMergeableData replicaID:currentReplicaID];
    v8 = self->_subFolderIdentifiersOrderedSetDocument;
    self->_subFolderIdentifiersOrderedSetDocument = v7;

    subFolderIdentifiersOrderedSetDocument = self->_subFolderIdentifiersOrderedSetDocument;
  }

  return subFolderIdentifiersOrderedSetDocument;
}

- (ICCROrderedSet)subFolderIdentifiersOrderedSet
{
  objc_opt_class();
  subFolderIdentifiersOrderedSetDocument = [(ICNoteContainer *)self subFolderIdentifiersOrderedSetDocument];
  orderedSet = [subFolderIdentifiersOrderedSetDocument orderedSet];
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

- (BOOL)mergeWithSubFolderMergeableData:(id)data
{
  if (!data)
  {
    return 0;
  }

  dataCopy = data;
  v5 = [ICTTOrderedSetVersionedDocument alloc];
  currentReplicaID = [(ICCloudSyncingObject *)self currentReplicaID];
  v7 = [(ICTTVersionedDocument *)v5 initWithData:dataCopy replicaID:currentReplicaID];

  subFolderIdentifiersOrderedSetDocument = [(ICNoteContainer *)self subFolderIdentifiersOrderedSetDocument];
  v9 = [subFolderIdentifiersOrderedSetDocument mergeWithOrderedSetVersionedDocument:v7];

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

  subFolderIdentifiersOrderedSetDocument = [(ICNoteContainer *)self subFolderIdentifiersOrderedSetDocument];
  serialize = [subFolderIdentifiersOrderedSetDocument serialize];
  [(ICNoteContainer *)self setSubFolderOrderMergeableData:serialize];
}

- (void)applyDateHeadersType:(int64_t)type
{
  if (type <= 2)
  {
    [(ICNoteContainer *)self setDateHeadersType:?];
  }
}

@end