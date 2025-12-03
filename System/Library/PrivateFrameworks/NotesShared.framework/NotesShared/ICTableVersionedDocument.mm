@interface ICTableVersionedDocument
- (ICCRDocument)innerTableDocument;
- (ICTable)table;
- (ICTableVersionedDocument)initWithColumnCount:(unint64_t)count rowCount:(unint64_t)rowCount replicaID:(id)d;
- (id)serializeCurrentVersion:(unsigned int *)version;
- (unint64_t)mergeWithTableVersionedDocument:(id)document;
- (void)mergeVersion:(unsigned int)version fromData:(id)data;
@end

@implementation ICTableVersionedDocument

- (ICTableVersionedDocument)initWithColumnCount:(unint64_t)count rowCount:(unint64_t)rowCount replicaID:(id)d
{
  v15.receiver = self;
  v15.super_class = ICTableVersionedDocument;
  v7 = [(ICTTVersionedDocument *)&v15 initWithData:0 replicaID:d];
  if (v7)
  {
    if (count)
    {
      v8 = 0;
      do
      {
        table = [(ICTableVersionedDocument *)v7 table];
        v10 = [table insertColumnAtIndex:v8];

        ++v8;
      }

      while (count != v8);
    }

    if (rowCount)
    {
      v11 = 0;
      do
      {
        table2 = [(ICTableVersionedDocument *)v7 table];
        v13 = [table2 insertRowAtIndex:v11];

        ++v11;
      }

      while (rowCount != v11);
    }
  }

  return v7;
}

- (unint64_t)mergeWithTableVersionedDocument:(id)document
{
  documentCopy = document;
  innerTableDocument = [(ICTableVersionedDocument *)self innerTableDocument];
  innerTableDocument2 = [documentCopy innerTableDocument];

  v7 = [innerTableDocument mergeWithDocument:innerTableDocument2];
  v8 = 1;
  if (v7 != 1)
  {
    v8 = 2;
  }

  if (v7)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

- (ICCRDocument)innerTableDocument
{
  table = [(ICTableVersionedDocument *)self table];
  document = [table document];

  return document;
}

- (ICTable)table
{
  table = self->_table;
  if (!table)
  {
    v4 = [ICCRTTCompatibleDocument alloc];
    replicaID = [(ICTTVersionedDocument *)self replicaID];
    v6 = [(ICCRDocument *)v4 initWithReplica:replicaID];
    innerTableDocument = self->_innerTableDocument;
    self->_innerTableDocument = v6;

    v8 = [(CRTable *)[ICTable alloc] initWithDocument:self->_innerTableDocument];
    v9 = self->_table;
    self->_table = v8;

    [(ICCRDocument *)self->_innerTableDocument setRootObject:self->_table];
    table = self->_table;
  }

  return table;
}

- (void)mergeVersion:(unsigned int)version fromData:(id)data
{
  dataCopy = data;
  replicaID = [(ICTTVersionedDocument *)self replicaID];
  obj = [ICCRCoderUnarchiver decodedDocumentFromData:dataCopy replica:replicaID];

  v7 = obj;
  if (obj)
  {
    innerTableDocument = self->_innerTableDocument;
    if (innerTableDocument)
    {
      [(ICCRDocument *)innerTableDocument mergeWithDocument:obj];
    }

    else
    {
      objc_storeStrong(&self->_innerTableDocument, obj);
      rootObject = [(ICCRDocument *)self->_innerTableDocument rootObject];
      table = self->_table;
      self->_table = rootObject;
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

  innerTableDocument = self->_innerTableDocument;

  return [(ICCRDocument *)innerTableDocument archivedData];
}

@end