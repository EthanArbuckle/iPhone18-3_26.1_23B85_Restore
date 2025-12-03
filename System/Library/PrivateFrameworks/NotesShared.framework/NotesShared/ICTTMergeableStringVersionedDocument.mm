@interface ICTTMergeableStringVersionedDocument
- (ICTTMergeableAttributedString)mergeableString;
- (ICTTMergeableStringVersionedDocument)initWithMergeableString:(id)string;
- (id)serializeCurrentVersion:(unsigned int *)version;
- (unint64_t)mergeWithStringVersionedDocument:(id)document;
- (void)mergeVersion:(unsigned int)version fromData:(id)data;
@end

@implementation ICTTMergeableStringVersionedDocument

- (ICTTMergeableAttributedString)mergeableString
{
  mergeableString = self->_mergeableString;
  if (!mergeableString)
  {
    v4 = [ICTTMergeableAttributedString alloc];
    replicaID = [(ICTTVersionedDocument *)self replicaID];
    v6 = [(ICTTMergeableString *)v4 initWithReplicaID:replicaID];
    v7 = self->_mergeableString;
    self->_mergeableString = v6;

    mergeableString = self->_mergeableString;
  }

  return mergeableString;
}

- (ICTTMergeableStringVersionedDocument)initWithMergeableString:(id)string
{
  stringCopy = string;
  replicaUUID = [stringCopy replicaUUID];
  v9.receiver = self;
  v9.super_class = ICTTMergeableStringVersionedDocument;
  v7 = [(ICTTVersionedDocument *)&v9 initWithData:0 replicaID:replicaUUID];

  if (v7)
  {
    objc_storeStrong(&v7->_mergeableString, string);
  }

  return v7;
}

- (unint64_t)mergeWithStringVersionedDocument:(id)document
{
  documentCopy = document;
  mergeableString = [(ICTTMergeableStringVersionedDocument *)self mergeableString];
  mergeableString2 = [documentCopy mergeableString];
  v7 = [mergeableString mergeWithString:mergeableString2];

  if (v7)
  {
    v9.receiver = self;
    v9.super_class = ICTTMergeableStringVersionedDocument;
    [(ICTTVersionedDocument *)&v9 mergeWithVersionedDocument:documentCopy];
  }

  return v7;
}

- (void)mergeVersion:(unsigned int)version fromData:(id)data
{
  dataCopy = data;
  v5 = [ICTTMergeableAttributedString alloc];
  uUID = [MEMORY[0x277CCAD78] UUID];
  v7 = [(ICTTMergeableString *)v5 initWithData:dataCopy replicaID:uUID];

  if (v7)
  {
    mergeableString = [(ICTTMergeableStringVersionedDocument *)self mergeableString];
    [mergeableString mergeWithString:v7];
  }
}

- (id)serializeCurrentVersion:(unsigned int *)version
{
  *version = +[ICTTMergeableStringVersionedDocument serializationVersion];
  mergeableString = [(ICTTMergeableStringVersionedDocument *)self mergeableString];
  serialize = [mergeableString serialize];

  return serialize;
}

@end