@interface ICTableVersionedDocument
- (ICCRDocument)innerTableDocument;
- (ICTable)table;
- (ICTableVersionedDocument)initWithColumnCount:(unint64_t)a3 rowCount:(unint64_t)a4 replicaID:(id)a5;
- (id)serializeCurrentVersion:(unsigned int *)a3;
- (unint64_t)mergeWithTableVersionedDocument:(id)a3;
- (void)mergeVersion:(unsigned int)a3 fromData:(id)a4;
@end

@implementation ICTableVersionedDocument

- (ICTableVersionedDocument)initWithColumnCount:(unint64_t)a3 rowCount:(unint64_t)a4 replicaID:(id)a5
{
  v15.receiver = self;
  v15.super_class = ICTableVersionedDocument;
  v7 = [(ICTTVersionedDocument *)&v15 initWithData:0 replicaID:a5];
  if (v7)
  {
    if (a3)
    {
      v8 = 0;
      do
      {
        v9 = [(ICTableVersionedDocument *)v7 table];
        v10 = [v9 insertColumnAtIndex:v8];

        ++v8;
      }

      while (a3 != v8);
    }

    if (a4)
    {
      v11 = 0;
      do
      {
        v12 = [(ICTableVersionedDocument *)v7 table];
        v13 = [v12 insertRowAtIndex:v11];

        ++v11;
      }

      while (a4 != v11);
    }
  }

  return v7;
}

- (unint64_t)mergeWithTableVersionedDocument:(id)a3
{
  v4 = a3;
  v5 = [(ICTableVersionedDocument *)self innerTableDocument];
  v6 = [v4 innerTableDocument];

  v7 = [v5 mergeWithDocument:v6];
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
  v2 = [(ICTableVersionedDocument *)self table];
  v3 = [v2 document];

  return v3;
}

- (ICTable)table
{
  table = self->_table;
  if (!table)
  {
    v4 = [ICCRTTCompatibleDocument alloc];
    v5 = [(ICTTVersionedDocument *)self replicaID];
    v6 = [(ICCRDocument *)v4 initWithReplica:v5];
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

- (void)mergeVersion:(unsigned int)a3 fromData:(id)a4
{
  v5 = a4;
  v6 = [(ICTTVersionedDocument *)self replicaID];
  obj = [ICCRCoderUnarchiver decodedDocumentFromData:v5 replica:v6];

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
      v9 = [(ICCRDocument *)self->_innerTableDocument rootObject];
      table = self->_table;
      self->_table = v9;
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

  innerTableDocument = self->_innerTableDocument;

  return [(ICCRDocument *)innerTableDocument archivedData];
}

@end