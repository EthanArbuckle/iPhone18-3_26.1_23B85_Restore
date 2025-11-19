@interface ICTTMergeableStringVersionedDocument
- (ICTTMergeableAttributedString)mergeableString;
- (ICTTMergeableStringVersionedDocument)initWithMergeableString:(id)a3;
- (id)serializeCurrentVersion:(unsigned int *)a3;
- (unint64_t)mergeWithStringVersionedDocument:(id)a3;
- (void)mergeVersion:(unsigned int)a3 fromData:(id)a4;
@end

@implementation ICTTMergeableStringVersionedDocument

- (ICTTMergeableAttributedString)mergeableString
{
  mergeableString = self->_mergeableString;
  if (!mergeableString)
  {
    v4 = [ICTTMergeableAttributedString alloc];
    v5 = [(ICTTVersionedDocument *)self replicaID];
    v6 = [(ICTTMergeableString *)v4 initWithReplicaID:v5];
    v7 = self->_mergeableString;
    self->_mergeableString = v6;

    mergeableString = self->_mergeableString;
  }

  return mergeableString;
}

- (ICTTMergeableStringVersionedDocument)initWithMergeableString:(id)a3
{
  v5 = a3;
  v6 = [v5 replicaUUID];
  v9.receiver = self;
  v9.super_class = ICTTMergeableStringVersionedDocument;
  v7 = [(ICTTVersionedDocument *)&v9 initWithData:0 replicaID:v6];

  if (v7)
  {
    objc_storeStrong(&v7->_mergeableString, a3);
  }

  return v7;
}

- (unint64_t)mergeWithStringVersionedDocument:(id)a3
{
  v4 = a3;
  v5 = [(ICTTMergeableStringVersionedDocument *)self mergeableString];
  v6 = [v4 mergeableString];
  v7 = [v5 mergeWithString:v6];

  if (v7)
  {
    v9.receiver = self;
    v9.super_class = ICTTMergeableStringVersionedDocument;
    [(ICTTVersionedDocument *)&v9 mergeWithVersionedDocument:v4];
  }

  return v7;
}

- (void)mergeVersion:(unsigned int)a3 fromData:(id)a4
{
  v9 = a4;
  v5 = [ICTTMergeableAttributedString alloc];
  v6 = [MEMORY[0x277CCAD78] UUID];
  v7 = [(ICTTMergeableString *)v5 initWithData:v9 replicaID:v6];

  if (v7)
  {
    v8 = [(ICTTMergeableStringVersionedDocument *)self mergeableString];
    [v8 mergeWithString:v7];
  }
}

- (id)serializeCurrentVersion:(unsigned int *)a3
{
  *a3 = +[ICTTMergeableStringVersionedDocument serializationVersion];
  v4 = [(ICTTMergeableStringVersionedDocument *)self mergeableString];
  v5 = [v4 serialize];

  return v5;
}

@end