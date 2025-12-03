@interface ICDrawingVersionedDocument
- (ICDrawing)drawing;
- (id)serializeCurrentVersion:(unsigned int *)version;
- (unint64_t)mergeWithDrawingVersionedDocument:(id)document;
- (void)mergeVersion:(unsigned int)version fromData:(id)data;
@end

@implementation ICDrawingVersionedDocument

- (ICDrawing)drawing
{
  drawing = self->_drawing;
  if (drawing)
  {
    v4 = drawing;
    replicaID = self->_drawing;
    self->_drawing = v4;
  }

  else
  {
    v6 = [ICDrawing alloc];
    replicaID = [(ICTTVersionedDocument *)self replicaID];
    v7 = [(ICDrawing *)v6 initWithReplicaID:replicaID];
    v8 = self->_drawing;
    self->_drawing = v7;
  }

  v9 = self->_drawing;

  return v9;
}

- (unint64_t)mergeWithDrawingVersionedDocument:(id)document
{
  documentCopy = document;
  drawing = [(ICDrawingVersionedDocument *)self drawing];
  drawing2 = [documentCopy drawing];
  v7 = [drawing mergeWithDrawing:drawing2];

  v9.receiver = self;
  v9.super_class = ICDrawingVersionedDocument;
  [(ICTTVersionedDocument *)&v9 mergeWithVersionedDocument:documentCopy];

  return v7;
}

- (void)mergeVersion:(unsigned int)version fromData:(id)data
{
  v4 = *&version;
  dataCopy = data;
  v6 = [ICDrawing alloc];
  replicaID = [(ICTTVersionedDocument *)self replicaID];
  v8 = [(ICDrawing *)v6 initWithData:dataCopy version:v4 replicaID:replicaID];

  if (self->_drawing)
  {
    if (!v8)
    {
      goto LABEL_6;
    }

    drawing = [(ICDrawingVersionedDocument *)self drawing];
    [drawing mergeWithDrawing:v8];
  }

  else
  {
    v10 = v8;
    drawing = self->_drawing;
    self->_drawing = v10;
  }

LABEL_6:
}

- (id)serializeCurrentVersion:(unsigned int *)version
{
  drawing = [(ICDrawingVersionedDocument *)self drawing];
  v5 = [drawing serializeWithPathData:1 toVersion:version];

  return v5;
}

@end