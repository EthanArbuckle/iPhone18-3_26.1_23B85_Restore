@interface GESSQuadMesh
- (BOOL)getFaceGroupIDs:(unsigned __int16 *)a3 size:(unint64_t)a4;
- (BOOL)getFaceVertexCounts:(char *)a3 size:(unint64_t)a4;
- (BOOL)getFaceVertexNormalIndices:(unsigned int *)a3 size:(unint64_t)a4;
- (BOOL)getFaceVertexUVIndices:(unsigned int *)a3 size:(unint64_t)a4;
- (BOOL)getFaces:(unsigned int *)a3 size:(unint64_t)a4;
- (BOOL)getGroupIDToMaterialNameDict:(id)a3;
- (BOOL)getMaterial:(id)a3;
- (BOOL)getPositions:(float *)a3 size:(unint64_t)a4;
- (BOOL)getUVs:(float *)a3 size:(unint64_t)a4;
- (BOOL)getVertexColors:(float *)a3 size:(unint64_t)a4;
- (BOOL)getVertexNormals:(float *)a3 size:(unint64_t)a4;
- (GESSQuadMesh)init;
- (void)meshImpl;
- (void)setMeshImpl:(const void *)a3;
@end

@implementation GESSQuadMesh

- (GESSQuadMesh)init
{
  v7.receiver = self;
  v7.super_class = GESSQuadMesh;
  v2 = [(GESSQuadMeshBase *)&v7 init];
  v5 = v2;
  if (v2)
  {
    objc_msgSend_setMeshType_(v2, v3, 11, v4);
  }

  return v5;
}

- (void)meshImpl
{
  v3.receiver = self;
  v3.super_class = GESSQuadMesh;
  return [(GESSPolyMesh *)&v3 meshImpl];
}

- (void)setMeshImpl:(const void *)a3
{
  v3 = *(a3 + 1);
  v5 = *a3;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4.receiver = self;
  v4.super_class = GESSQuadMesh;
  [(GESSPolyMesh *)&v4 setMeshImpl:&v5];
  if (v6)
  {
    sub_24BC9EC78(v6);
  }
}

- (BOOL)getPositions:(float *)a3 size:(unint64_t)a4
{
  v7 = objc_msgSend_vertexSize(self, a2, a3, a4);
  v8 = 3 * v7;
  if (v8 == a4)
  {
    v9 = v7;
    v10 = objc_alloc(MEMORY[0x277CBEA90]);
    v12 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v10, v11, a3, 12 * v9, 0);
    objc_msgSend_getPositionData_(self, v13, v12, v14);
  }

  return v8 == a4;
}

- (BOOL)getFaceVertexCounts:(char *)a3 size:(unint64_t)a4
{
  v7 = objc_msgSend_faceSize(self, a2, a3, a4);
  v11 = v7;
  if (v7 == a4 && v7 != 0)
  {
    v13 = 0;
    do
    {
      __p = 0;
      v19 = 0;
      v20 = 0;
      v14 = objc_msgSend_meshImpl(self, v8, v9, v10);
      v17 = v13;
      sub_24BCB1A9C(v14, &v17, &__p);
      v15 = __p;
      a3[v13] = (v19 - __p) >> 2;
      if (v15)
      {
        v19 = v15;
        operator delete(v15);
      }

      ++v13;
    }

    while (a4 != v13);
  }

  return v11 == a4;
}

- (BOOL)getFaces:(unsigned int *)a3 size:(unint64_t)a4
{
  v7 = objc_msgSend_faceSize(self, a2, a3, a4);
  if (!v7)
  {
    v23 = 0;
    return v23 == a4;
  }

  v11 = v7;
  v12 = 0;
  v13 = 0;
  do
  {
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v14 = objc_msgSend_meshImpl(self, v8, v9, v10);
    v25 = v12;
    sub_24BCB1A9C(v14, &v25, &v26);
    v15 = v26;
    v16 = (v27 - v26) >> 2;
    if (v27 == v26)
    {
      v13 += v16;
      if (!v26)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v17 = (v27 - v26) >> 2;
      v18 = 1;
      v19 = v13;
      v20 = v26;
      do
      {
        v21 = *v20++;
        a3[v19++] = v21;
      }

      while (v17 > v18++);
      v13 += v16;
    }

    v27 = v15;
    operator delete(v15);
LABEL_9:
    ++v12;
  }

  while (v12 != v11);
  v23 = v13;
  return v23 == a4;
}

- (BOOL)getUVs:(float *)a3 size:(unint64_t)a4
{
  v7 = objc_msgSend_uvSize(self, a2, a3, a4);
  if (a4 != 2 * v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = objc_alloc(MEMORY[0x277CBEA90]);
  v11 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v9, v10, a3, 8 * v8, 0);
  UVData = objc_msgSend_getUVData_(self, v12, v11, v13);

  return UVData;
}

- (BOOL)getFaceVertexUVIndices:(unsigned int *)a3 size:(unint64_t)a4
{
  v7 = objc_alloc(MEMORY[0x277CBEA90]);
  v9 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v7, v8, a3, 4 * a4, 0);
  LOBYTE(a3) = objc_msgSend_getFaceVertexUVIndexData_(self, v10, v9, v11);

  return a3;
}

- (BOOL)getVertexNormals:(float *)a3 size:(unint64_t)a4
{
  v7 = objc_msgSend_vertexNormalSize(self, a2, a3, a4);
  if (3 * v7 != a4)
  {
    return 0;
  }

  v8 = v7;
  v9 = objc_alloc(MEMORY[0x277CBEA90]);
  v11 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v9, v10, a3, 12 * v8, 0);
  VertexNormalData = objc_msgSend_getVertexNormalData_(self, v12, v11, v13);

  return VertexNormalData;
}

- (BOOL)getFaceVertexNormalIndices:(unsigned int *)a3 size:(unint64_t)a4
{
  v7 = objc_alloc(MEMORY[0x277CBEA90]);
  v9 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v7, v8, a3, 4 * a4, 0);
  LOBYTE(a3) = objc_msgSend_getFaceVertexNormalIndexData_(self, v10, v9, v11);

  return a3;
}

- (BOOL)getVertexColors:(float *)a3 size:(unint64_t)a4
{
  v7 = objc_msgSend_vertexSize(self, a2, a3, a4);
  if (3 * v7 != a4)
  {
    return 0;
  }

  v8 = v7;
  v9 = objc_alloc(MEMORY[0x277CBEA90]);
  v11 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v9, v10, a3, 12 * v8, 0);
  VertexColorData = objc_msgSend_getVertexColorData_(self, v12, v11, v13);

  return VertexColorData;
}

- (BOOL)getFaceGroupIDs:(unsigned __int16 *)a3 size:(unint64_t)a4
{
  if (objc_msgSend_faceSize(self, a2, a3, a4) != a4)
  {
    return 0;
  }

  v7 = objc_alloc(MEMORY[0x277CBEA90]);
  v9 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v7, v8, a3, 2 * a4, 0);
  FaceGroupIDData = objc_msgSend_getFaceGroupIDData_(self, v10, v9, v11);

  return FaceGroupIDData;
}

- (BOOL)getGroupIDToMaterialNameDict:(id)a3
{
  v4 = a3;
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

    sub_24BE759D8(*(v19 + 40), v4);
  }

  else
  {
    v16 = 0;
  }

LABEL_12:

  return v16;
}

- (BOOL)getMaterial:(id)a3
{
  v4 = a3;
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
      objc_msgSend_setSubMaterialNameToIndex_(v4, v20, v17, v21);
      objc_msgSend_setSubMaterials_(v4, v22, v18, v23);
      objc_msgSend_setMaterialParameterData_(v4, v24, v19, v25);
    }
  }

LABEL_7:

  return v15;
}

@end