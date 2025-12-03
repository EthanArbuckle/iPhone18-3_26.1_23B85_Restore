@interface GESSTriMesh
- (BOOL)getFaceGroupIDs:(unsigned __int16 *)ds size:(unint64_t)size;
- (BOOL)getFaceVertexNormalIndices:(unsigned int *)indices size:(unint64_t)size;
- (BOOL)getFaceVertexUVIndices:(unsigned int *)indices size:(unint64_t)size;
- (BOOL)getFaces:(unsigned int *)faces size:(unint64_t)size;
- (BOOL)getGroupIDToMaterialNameDict:(id)dict;
- (BOOL)getMaterial:(id)material;
- (BOOL)getPositions:(float *)positions size:(unint64_t)size;
- (BOOL)getUVs:(float *)vs size:(unint64_t)size;
- (BOOL)getVertexColors:(float *)colors size:(unint64_t)size;
- (BOOL)getVertexNormals:(float *)normals size:(unint64_t)size;
- (BOOL)setFaceCrossField:(float *)field size:(unint64_t)size;
- (GESSTriMesh)init;
- (void)meshImpl;
- (void)setMeshImpl:(const void *)impl;
@end

@implementation GESSTriMesh

- (GESSTriMesh)init
{
  v7.receiver = self;
  v7.super_class = GESSTriMesh;
  v2 = [(GESSTriMeshBase *)&v7 init];
  v5 = v2;
  if (v2)
  {
    objc_msgSend_setMeshType_(v2, v3, 1, v4);
  }

  return v5;
}

- (void)meshImpl
{
  v3.receiver = self;
  v3.super_class = GESSTriMesh;
  return [(GESSPolyMesh *)&v3 meshImpl];
}

- (void)setMeshImpl:(const void *)impl
{
  v3 = *(impl + 1);
  v5 = *impl;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4.receiver = self;
  v4.super_class = GESSTriMesh;
  [(GESSPolyMesh *)&v4 setMeshImpl:&v5];
  if (v6)
  {
    sub_24BC9EC78(v6);
  }
}

- (BOOL)getPositions:(float *)positions size:(unint64_t)size
{
  v7 = objc_msgSend_vertexSize(self, a2, positions, size);
  if (3 * v7 != size)
  {
    return 0;
  }

  v8 = v7;
  v9 = objc_alloc(MEMORY[0x277CBEA90]);
  v11 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v9, v10, positions, 12 * v8, 0);
  PositionData = objc_msgSend_getPositionData_(self, v12, v11, v13);

  return PositionData;
}

- (BOOL)getFaces:(unsigned int *)faces size:(unint64_t)size
{
  v7 = objc_msgSend_faceSize(self, a2, faces, size);
  if (3 * v7 != size)
  {
    return 0;
  }

  v8 = v7;
  v9 = objc_alloc(MEMORY[0x277CBEA90]);
  v11 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v9, v10, faces, 12 * v8, 0);
  FaceData = objc_msgSend_getFaceData_(self, v12, v11, v13);

  return FaceData;
}

- (BOOL)getUVs:(float *)vs size:(unint64_t)size
{
  v7 = objc_msgSend_uvSize(self, a2, vs, size);
  if (size != 2 * v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = objc_alloc(MEMORY[0x277CBEA90]);
  v11 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v9, v10, vs, 8 * v8, 0);
  UVData = objc_msgSend_getUVData_(self, v12, v11, v13);

  return UVData;
}

- (BOOL)getFaceVertexUVIndices:(unsigned int *)indices size:(unint64_t)size
{
  v7 = objc_msgSend_faceSize(self, a2, indices, size);
  if (3 * v7 != size)
  {
    return 0;
  }

  v8 = v7;
  v9 = objc_alloc(MEMORY[0x277CBEA90]);
  v11 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v9, v10, indices, 12 * v8, 0);
  FaceVertexUVIndexData = objc_msgSend_getFaceVertexUVIndexData_(self, v12, v11, v13);

  return FaceVertexUVIndexData;
}

- (BOOL)getVertexNormals:(float *)normals size:(unint64_t)size
{
  v7 = objc_msgSend_vertexNormalSize(self, a2, normals, size);
  if (3 * v7 != size)
  {
    return 0;
  }

  v8 = v7;
  v9 = objc_alloc(MEMORY[0x277CBEA90]);
  v11 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v9, v10, normals, 12 * v8, 0);
  VertexNormalData = objc_msgSend_getVertexNormalData_(self, v12, v11, v13);

  return VertexNormalData;
}

- (BOOL)getFaceVertexNormalIndices:(unsigned int *)indices size:(unint64_t)size
{
  v7 = objc_msgSend_faceSize(self, a2, indices, size);
  if (3 * v7 != size)
  {
    return 0;
  }

  v8 = v7;
  v9 = objc_alloc(MEMORY[0x277CBEA90]);
  v11 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v9, v10, indices, 12 * v8, 0);
  FaceVertexNormalIndexData = objc_msgSend_getFaceVertexNormalIndexData_(self, v12, v11, v13);

  return FaceVertexNormalIndexData;
}

- (BOOL)getVertexColors:(float *)colors size:(unint64_t)size
{
  v7 = objc_msgSend_vertexSize(self, a2, colors, size);
  if (3 * v7 != size)
  {
    return 0;
  }

  v8 = v7;
  v9 = objc_alloc(MEMORY[0x277CBEA90]);
  v11 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v9, v10, colors, 12 * v8, 0);
  VertexColorData = objc_msgSend_getVertexColorData_(self, v12, v11, v13);

  return VertexColorData;
}

- (BOOL)getFaceGroupIDs:(unsigned __int16 *)ds size:(unint64_t)size
{
  if (objc_msgSend_faceSize(self, a2, ds, size) != size)
  {
    return 0;
  }

  v7 = objc_alloc(MEMORY[0x277CBEA90]);
  v9 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v7, v8, ds, 2 * size, 0);
  FaceGroupIDData = objc_msgSend_getFaceGroupIDData_(self, v10, v9, v11);

  return FaceGroupIDData;
}

- (BOOL)setFaceCrossField:(float *)field size:(unint64_t)size
{
  sizeCopy = size;
  v6 = objc_msgSend_meshImpl(self, a2, field, size);

  return sub_24BCDB4B8(v6, field, sizeCopy);
}

- (BOOL)getGroupIDToMaterialNameDict:(id)dict
{
  dictCopy = dict;
  if ((objc_msgSend_valid(self, v5, v6, v7) & 1) != 0 && (objc_msgSend_meshType(self, v8, v9, v10) == 1 || objc_msgSend_meshType(self, v11, v12, v13) == 11))
  {
    v14 = objc_msgSend_meshImpl(self, v11, v12, v13);
    v23 = -1;
    sub_24BC836D4(__p, off_27F078FF8);
    v15 = sub_24BD26644(v14, &v23, __p);
    v16 = v15;
    if (v22 < 0)
    {
      operator delete(__p[0]);
      if (!v16)
      {
        goto LABEL_12;
      }
    }

    else if (!v15)
    {
      goto LABEL_12;
    }

    v17 = (*(v14 + 80) + 16 * v23);
    v19 = *v17;
    v18 = v17[1];
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v18);
    }

    sub_24BE759D8(*(v19 + 40), dictCopy);
  }

  else
  {
    v16 = 0;
  }

LABEL_12:

  return v16;
}

- (BOOL)getMaterial:(id)material
{
  materialCopy = material;
  if ((objc_msgSend_valid(self, v5, v6, v7) & 1) == 0 || objc_msgSend_meshType(self, v8, v9, v10) != 1 && objc_msgSend_meshType(self, v11, v12, v13) != 11)
  {
    goto LABEL_6;
  }

  v14 = objc_msgSend_materialImpl(self, v11, v12, v13);
  v15 = v14;
  if (v14)
  {
    if (sub_24BCD277C(v14))
    {
LABEL_6:
      LOBYTE(v15) = 0;
      goto LABEL_7;
    }

    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
    LOBYTE(v15) = sub_24BE752F4(v15, v17, v18, v19);
    if (v15)
    {
      objc_msgSend_setSubMaterialNameToIndex_(materialCopy, v20, v17, v21);
      objc_msgSend_setSubMaterials_(materialCopy, v22, v18, v23);
      objc_msgSend_setMaterialParameterData_(materialCopy, v24, v19, v25);
    }
  }

LABEL_7:

  return v15;
}

@end