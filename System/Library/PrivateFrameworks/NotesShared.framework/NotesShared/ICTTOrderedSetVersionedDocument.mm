@interface ICTTOrderedSetVersionedDocument
- (ICCROrderedSet)orderedSet;
- (id)serializeCurrentVersion:(unsigned int *)a3;
- (unint64_t)mergeWithOrderedSetVersionedDocument:(id)a3;
- (void)mergeVersion:(unsigned int)a3 fromData:(id)a4;
@end

@implementation ICTTOrderedSetVersionedDocument

- (unint64_t)mergeWithOrderedSetVersionedDocument:(id)a3
{
  v4 = a3;
  v5 = [(ICTTOrderedSetVersionedDocument *)self orderedSet];
  v6 = [v5 allObjects];

  v7 = [(ICTTOrderedSetVersionedDocument *)self document];
  v8 = [v4 document];
  [v7 mergeWithDocument:v8];

  v9 = [(ICTTOrderedSetVersionedDocument *)self orderedSet];
  v10 = [v9 allObjects];

  v13.receiver = self;
  v13.super_class = ICTTOrderedSetVersionedDocument;
  [(ICTTVersionedDocument *)&v13 mergeWithVersionedDocument:v4];

  if ([v10 isEqualToArray:v6])
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  return v11;
}

- (ICCROrderedSet)orderedSet
{
  orderedSet = self->_orderedSet;
  if (!orderedSet)
  {
    v4 = [ICCRDocument alloc];
    v5 = [(ICTTVersionedDocument *)self replicaID];
    v6 = [(ICCRDocument *)v4 initWithReplica:v5];
    document = self->_document;
    self->_document = v6;

    v8 = objc_alloc_init(ICCROrderedSet);
    v9 = self->_orderedSet;
    self->_orderedSet = v8;

    [(ICCRDocument *)self->_document setRootObject:self->_orderedSet];
    orderedSet = self->_orderedSet;
  }

  return orderedSet;
}

- (void)mergeVersion:(unsigned int)a3 fromData:(id)a4
{
  v5 = a4;
  v6 = [(ICTTVersionedDocument *)self replicaID];
  obj = [ICCRCoderUnarchiver decodedDocumentFromData:v5 replica:v6];

  v7 = obj;
  if (obj)
  {
    document = self->_document;
    if (document)
    {
      [(ICCRDocument *)document mergeWithDocument:obj];
    }

    else
    {
      objc_storeStrong(&self->_document, obj);
      v9 = [obj rootObject];
      orderedSet = self->_orderedSet;
      self->_orderedSet = v9;
    }

    v7 = obj;
  }
}

- (id)serializeCurrentVersion:(unsigned int *)a3
{
  if (a3)
  {
    *a3 = [objc_opt_class() serializationVersion];
  }

  document = self->_document;

  return [(ICCRDocument *)document archivedData];
}

@end