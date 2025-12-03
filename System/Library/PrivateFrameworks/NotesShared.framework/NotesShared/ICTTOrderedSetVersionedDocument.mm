@interface ICTTOrderedSetVersionedDocument
- (ICCROrderedSet)orderedSet;
- (id)serializeCurrentVersion:(unsigned int *)version;
- (unint64_t)mergeWithOrderedSetVersionedDocument:(id)document;
- (void)mergeVersion:(unsigned int)version fromData:(id)data;
@end

@implementation ICTTOrderedSetVersionedDocument

- (unint64_t)mergeWithOrderedSetVersionedDocument:(id)document
{
  documentCopy = document;
  orderedSet = [(ICTTOrderedSetVersionedDocument *)self orderedSet];
  allObjects = [orderedSet allObjects];

  document = [(ICTTOrderedSetVersionedDocument *)self document];
  document2 = [documentCopy document];
  [document mergeWithDocument:document2];

  orderedSet2 = [(ICTTOrderedSetVersionedDocument *)self orderedSet];
  allObjects2 = [orderedSet2 allObjects];

  v13.receiver = self;
  v13.super_class = ICTTOrderedSetVersionedDocument;
  [(ICTTVersionedDocument *)&v13 mergeWithVersionedDocument:documentCopy];

  if ([allObjects2 isEqualToArray:allObjects])
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
    replicaID = [(ICTTVersionedDocument *)self replicaID];
    v6 = [(ICCRDocument *)v4 initWithReplica:replicaID];
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

- (void)mergeVersion:(unsigned int)version fromData:(id)data
{
  dataCopy = data;
  replicaID = [(ICTTVersionedDocument *)self replicaID];
  obj = [ICCRCoderUnarchiver decodedDocumentFromData:dataCopy replica:replicaID];

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
      rootObject = [obj rootObject];
      orderedSet = self->_orderedSet;
      self->_orderedSet = rootObject;
    }

    v7 = obj;
  }
}

- (id)serializeCurrentVersion:(unsigned int *)version
{
  if (version)
  {
    *version = [objc_opt_class() serializationVersion];
  }

  document = self->_document;

  return [(ICCRDocument *)document archivedData];
}

@end