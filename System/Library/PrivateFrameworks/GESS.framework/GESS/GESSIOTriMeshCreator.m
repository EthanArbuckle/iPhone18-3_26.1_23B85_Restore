@interface GESSIOTriMeshCreator
- (BOOL)create:(id)a3;
- (BOOL)setFaceGroupIDs:(unsigned __int16 *)a3 size:(unint64_t)a4;
- (BOOL)setFaceVertexNormalIndices:(unsigned int *)a3 size:(unint64_t)a4;
- (BOOL)setFaceVertexUVIndices:(unsigned int *)a3 size:(unint64_t)a4;
- (BOOL)setFaces:(unsigned int *)a3 size:(unint64_t)a4;
- (BOOL)setPositions:(float *)a3 size:(unint64_t)a4;
- (BOOL)setUVs:(float *)a3 size:(unint64_t)a4;
- (BOOL)setVertexColors:(float *)a3 size:(unint64_t)a4;
- (BOOL)setVertexNormals:(float *)a3 size:(unint64_t)a4;
@end

@implementation GESSIOTriMeshCreator

- (BOOL)setPositions:(float *)a3 size:(unint64_t)a4
{
  v7 = objc_alloc(MEMORY[0x277CBEA90]);
  v9 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v7, v8, a3, 4 * a4, 0);
  LOBYTE(a3) = objc_msgSend_setPositionData_(self, v10, v9, v11);

  return a3;
}

- (BOOL)setFaces:(unsigned int *)a3 size:(unint64_t)a4
{
  v7 = objc_alloc(MEMORY[0x277CBEA90]);
  v9 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v7, v8, a3, 4 * a4, 0);
  LOBYTE(a3) = objc_msgSend_setFaceData_(self, v10, v9, v11);

  return a3;
}

- (BOOL)setVertexNormals:(float *)a3 size:(unint64_t)a4
{
  v7 = objc_alloc(MEMORY[0x277CBEA90]);
  v9 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v7, v8, a3, 4 * a4, 0);
  LOBYTE(a3) = objc_msgSend_setVertexNormalData_(self, v10, v9, v11);

  return a3;
}

- (BOOL)setFaceVertexNormalIndices:(unsigned int *)a3 size:(unint64_t)a4
{
  v7 = objc_alloc(MEMORY[0x277CBEA90]);
  v9 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v7, v8, a3, 4 * a4, 0);
  LOBYTE(a3) = objc_msgSend_setFaceVertexNormalIndexData_(self, v10, v9, v11);

  return a3;
}

- (BOOL)setVertexColors:(float *)a3 size:(unint64_t)a4
{
  v7 = objc_alloc(MEMORY[0x277CBEA90]);
  v9 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v7, v8, a3, 4 * a4, 0);
  LOBYTE(a3) = objc_msgSend_setVertexColorData_(self, v10, v9, v11);

  return a3;
}

- (BOOL)setUVs:(float *)a3 size:(unint64_t)a4
{
  v7 = objc_alloc(MEMORY[0x277CBEA90]);
  v9 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v7, v8, a3, 4 * a4, 0);
  LOBYTE(a3) = objc_msgSend_setUVData_(self, v10, v9, v11);

  return a3;
}

- (BOOL)setFaceVertexUVIndices:(unsigned int *)a3 size:(unint64_t)a4
{
  v7 = objc_alloc(MEMORY[0x277CBEA90]);
  v9 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v7, v8, a3, 4 * a4, 0);
  LOBYTE(a3) = objc_msgSend_setFaceVertexUVIndexData_(self, v10, v9, v11);

  return a3;
}

- (BOOL)setFaceGroupIDs:(unsigned __int16 *)a3 size:(unint64_t)a4
{
  v7 = objc_alloc(MEMORY[0x277CBEA90]);
  v9 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v7, v8, a3, 2 * a4, 0);
  LOBYTE(a3) = objc_msgSend_setFaceGroupIDData_(self, v10, v9, v11);

  return a3;
}

- (BOOL)create:(id)a3
{
  v4.receiver = self;
  v4.super_class = GESSIOTriMeshCreator;
  return [(GESSIOPolyMeshCreator *)&v4 create:a3];
}

@end