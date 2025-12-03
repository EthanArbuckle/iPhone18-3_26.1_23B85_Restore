@interface GESSIOTriMeshCreator
- (BOOL)create:(id)create;
- (BOOL)setFaceGroupIDs:(unsigned __int16 *)ds size:(unint64_t)size;
- (BOOL)setFaceVertexNormalIndices:(unsigned int *)indices size:(unint64_t)size;
- (BOOL)setFaceVertexUVIndices:(unsigned int *)indices size:(unint64_t)size;
- (BOOL)setFaces:(unsigned int *)faces size:(unint64_t)size;
- (BOOL)setPositions:(float *)positions size:(unint64_t)size;
- (BOOL)setUVs:(float *)vs size:(unint64_t)size;
- (BOOL)setVertexColors:(float *)colors size:(unint64_t)size;
- (BOOL)setVertexNormals:(float *)normals size:(unint64_t)size;
@end

@implementation GESSIOTriMeshCreator

- (BOOL)setPositions:(float *)positions size:(unint64_t)size
{
  v7 = objc_alloc(MEMORY[0x277CBEA90]);
  v9 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v7, v8, positions, 4 * size, 0);
  LOBYTE(positions) = objc_msgSend_setPositionData_(self, v10, v9, v11);

  return positions;
}

- (BOOL)setFaces:(unsigned int *)faces size:(unint64_t)size
{
  v7 = objc_alloc(MEMORY[0x277CBEA90]);
  v9 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v7, v8, faces, 4 * size, 0);
  LOBYTE(faces) = objc_msgSend_setFaceData_(self, v10, v9, v11);

  return faces;
}

- (BOOL)setVertexNormals:(float *)normals size:(unint64_t)size
{
  v7 = objc_alloc(MEMORY[0x277CBEA90]);
  v9 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v7, v8, normals, 4 * size, 0);
  LOBYTE(normals) = objc_msgSend_setVertexNormalData_(self, v10, v9, v11);

  return normals;
}

- (BOOL)setFaceVertexNormalIndices:(unsigned int *)indices size:(unint64_t)size
{
  v7 = objc_alloc(MEMORY[0x277CBEA90]);
  v9 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v7, v8, indices, 4 * size, 0);
  LOBYTE(indices) = objc_msgSend_setFaceVertexNormalIndexData_(self, v10, v9, v11);

  return indices;
}

- (BOOL)setVertexColors:(float *)colors size:(unint64_t)size
{
  v7 = objc_alloc(MEMORY[0x277CBEA90]);
  v9 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v7, v8, colors, 4 * size, 0);
  LOBYTE(colors) = objc_msgSend_setVertexColorData_(self, v10, v9, v11);

  return colors;
}

- (BOOL)setUVs:(float *)vs size:(unint64_t)size
{
  v7 = objc_alloc(MEMORY[0x277CBEA90]);
  v9 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v7, v8, vs, 4 * size, 0);
  LOBYTE(vs) = objc_msgSend_setUVData_(self, v10, v9, v11);

  return vs;
}

- (BOOL)setFaceVertexUVIndices:(unsigned int *)indices size:(unint64_t)size
{
  v7 = objc_alloc(MEMORY[0x277CBEA90]);
  v9 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v7, v8, indices, 4 * size, 0);
  LOBYTE(indices) = objc_msgSend_setFaceVertexUVIndexData_(self, v10, v9, v11);

  return indices;
}

- (BOOL)setFaceGroupIDs:(unsigned __int16 *)ds size:(unint64_t)size
{
  v7 = objc_alloc(MEMORY[0x277CBEA90]);
  v9 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v7, v8, ds, 2 * size, 0);
  LOBYTE(ds) = objc_msgSend_setFaceGroupIDData_(self, v10, v9, v11);

  return ds;
}

- (BOOL)create:(id)create
{
  v4.receiver = self;
  v4.super_class = GESSIOTriMeshCreator;
  return [(GESSIOPolyMeshCreator *)&v4 create:create];
}

@end