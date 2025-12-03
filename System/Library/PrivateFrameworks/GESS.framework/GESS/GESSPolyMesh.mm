@interface GESSPolyMesh
- (BOOL)cloneFrom:(id)from;
- (BOOL)getFaceData:(id)data;
- (BOOL)getFaceGroupIDData:(id)data;
- (BOOL)getFaceVertexNormalIndexData:(id)data;
- (BOOL)getFaceVertexUVIndexData:(id)data;
- (BOOL)getPositionData:(id)data;
- (BOOL)getUVData:(id)data;
- (BOOL)getVertexColorData:(id)data;
- (BOOL)getVertexNormalData:(id)data;
- (BOOL)typeValid;
- (BOOL)valid;
- (GESSPolyMesh)init;
- (id).cxx_construct;
- (unsigned)faceSize;
- (unsigned)halfEdgeSize;
- (unsigned)uvSize;
- (unsigned)vertexNormalSize;
- (unsigned)vertexSize;
- (void)setMaterialImpl:(const void *)impl;
- (void)setMeshImpl:(const void *)impl;
@end

@implementation GESSPolyMesh

- (GESSPolyMesh)init
{
  v7.receiver = self;
  v7.super_class = GESSPolyMesh;
  v2 = [(GESSPolyMesh *)&v7 init];
  v5 = v2;
  if (v2)
  {
    objc_msgSend_setMeshType_(v2, v3, 0xFFFFFFFFLL, v4);
  }

  return v5;
}

- (void)setMeshImpl:(const void *)impl
{
  v4 = *impl;
  v3 = *(impl + 1);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_meshImpl.__cntrl_;
  self->_meshImpl.__ptr_ = v4;
  self->_meshImpl.__cntrl_ = v3;
  if (cntrl)
  {
    sub_24BC9EC78(cntrl);
  }
}

- (void)setMaterialImpl:(const void *)impl
{
  v4 = *impl;
  v3 = *(impl + 1);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_materialImpl.__cntrl_;
  self->_materialImpl.__ptr_ = v4;
  self->_materialImpl.__cntrl_ = v3;
  if (cntrl)
  {
    sub_24BC9EC78(cntrl);
  }
}

- (BOOL)typeValid
{
  if (objc_msgSend_meshType(self, a2, v2, v3) == -1)
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    v8 = objc_msgSend_meshType(self, v5, v6, v7);
    if (v8)
    {
      LOBYTE(v8) = objc_msgSend_meshType(self, v9, v10, v11) != 10;
    }
  }

  return v8;
}

- (BOOL)valid
{
  v5 = objc_msgSend_meshImpl(self, a2, v2, v3);
  if (v5)
  {

    LOBYTE(v5) = objc_msgSend_typeValid(self, v6, v7, v8);
  }

  return v5;
}

- (unsigned)vertexSize
{
  LODWORD(v5) = objc_msgSend_valid(self, a2, v2, v3);
  if (v5)
  {
    if (objc_msgSend_meshType(self, v6, v7, v8) == 1 || objc_msgSend_meshType(self, v9, v10, v11) == 11)
    {
      v12 = objc_msgSend_meshImpl(self, v9, v10, v11);
      return (*(v12 + 112) - *(v12 + 104)) >> 2;
    }

    else
    {
      LODWORD(v5) = 0;
    }
  }

  return v5;
}

- (unsigned)halfEdgeSize
{
  result = objc_msgSend_valid(self, a2, v2, v3);
  if (result)
  {
    if (objc_msgSend_meshType(self, v6, v7, v8) == 1 || objc_msgSend_meshType(self, v9, v10, v11) == 11)
    {
      v12 = objc_msgSend_meshImpl(self, v9, v10, v11);
      return -858993459 * ((*(v12 + 136) - *(v12 + 128)) >> 2);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (unsigned)faceSize
{
  LODWORD(v5) = objc_msgSend_valid(self, a2, v2, v3);
  if (v5)
  {
    if (objc_msgSend_meshType(self, v6, v7, v8) == 1 || objc_msgSend_meshType(self, v9, v10, v11) == 11)
    {
      v12 = objc_msgSend_meshImpl(self, v9, v10, v11);
      return (*(v12 + 160) - *(v12 + 152)) >> 2;
    }

    else
    {
      LODWORD(v5) = 0;
    }
  }

  return v5;
}

- (unsigned)uvSize
{
  result = objc_msgSend_valid(self, a2, v2, v3);
  if (result)
  {
    if (objc_msgSend_meshType(self, v6, v7, v8) != 1 && objc_msgSend_meshType(self, v9, v10, v11) != 11)
    {
      return 0;
    }

    v12 = objc_msgSend_meshImpl(self, v9, v10, v11);
    sub_24BC836D4(__p, off_27F078F78[0]);
    v19 = 0;
    v13 = sub_24BCB74D4((v12 + 80), &v19, __p);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }

    if (v13 != -1)
    {
      v14 = (*(v12 + 80) + 16 * v13);
      v16 = *v14;
      v15 = v14[1];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v15);
      }

      return (*(*v16 + 16))(v16);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (unsigned)vertexNormalSize
{
  result = objc_msgSend_valid(self, a2, v2, v3);
  if (result)
  {
    if (objc_msgSend_meshType(self, v6, v7, v8) == 1 || objc_msgSend_meshType(self, v9, v10, v11) == 11)
    {
      v12 = objc_msgSend_meshImpl(self, v9, v10, v11);
      v22 = 0;
      sub_24BD3B790(v12, &v22);
      if (v22 == 3)
      {
        sub_24BC836D4(__p, off_27F078FE0[0]);
        v23[0] = 0;
        v23[1] = 0;
        v16 = sub_24BCB6470(v12 + 10, v23, __p);
        if (v21 < 0)
        {
          operator delete(__p[0]);
        }

        v17 = &v12[10][2 * v16];
        v19 = *v17;
        v18 = v17[1];
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v18);
        }

        return (*(*v19 + 16))(v19);
      }

      else if (v22 == 2)
      {
        return objc_msgSend_faceSize(self, v13, v14, v15);
      }

      else
      {
        result = 0;
        if (v22 == 1)
        {
          return objc_msgSend_vertexSize(self, v13, v14, v15);
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (BOOL)getPositionData:(id)data
{
  dataCopy = data;
  if ((objc_msgSend_valid(self, v5, v6, v7) & 1) != 0 && (objc_msgSend_meshType(self, v8, v9, v10) == 1 || objc_msgSend_meshType(self, v11, v12, v13) == 11) && (v14 = objc_msgSend_vertexSize(self, v11, v12, v13), objc_msgSend_length(dataCopy, v15, v16, v17) == 12 * v14))
  {
    v18 = dataCopy;
    v22 = objc_msgSend_bytes(v18, v19, v20, v21);
    v26 = objc_msgSend_meshImpl(self, v23, v24, v25);
    v27 = (*(v26 + 8) + 16 * *(v26 + 176));
    v29 = *v27;
    v28 = v27[1];
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v28);
    }

    if (v14)
    {
      v30 = 0;
      v31 = (*(v29 + 40) + 8);
      do
      {
        *(v22 + 4 * v30) = *(v31 - 2);
        *(v22 + 4 * (v30 + 1)) = *(v31 - 1);
        v32 = *v31;
        v31 += 4;
        *(v22 + 4 * (v30 + 2)) = v32;
        v30 += 3;
      }

      while (3 * v14 != v30);
    }

    v33 = 1;
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

- (BOOL)getFaceData:(id)data
{
  dataCopy = data;
  if ((objc_msgSend_valid(self, v5, v6, v7) & 1) != 0 && objc_msgSend_meshType(self, v8, v9, v10) == 1)
  {
    v14 = objc_msgSend_faceSize(self, v11, v12, v13);
    if (objc_msgSend_length(dataCopy, v15, v16, v17) == 4 * (3 * v14))
    {
      v18 = dataCopy;
      v22 = objc_msgSend_bytes(v18, v19, v20, v21);
      sub_24BCB2008(__p, 3uLL);
      if (v14)
      {
        v26 = 0;
        v27 = 2;
        do
        {
          v28 = objc_msgSend_meshImpl(self, v23, v24, v25);
          v32 = v26;
          sub_24BCD567C(v28, &v32, __p);
          v29 = __p[0];
          *(v22 + 4 * (v27 - 2)) = *__p[0];
          *(v22 + 4 * (v27 - 1)) = v29[1];
          *(v22 + 4 * v27) = v29[2];
          ++v26;
          v27 += 3;
        }

        while (v14 != v26);
      }

      else
      {
        v29 = __p[0];
        if (!__p[0])
        {
LABEL_12:
          v30 = 1;
          goto LABEL_9;
        }
      }

      __p[1] = v29;
      operator delete(v29);
      goto LABEL_12;
    }
  }

  v30 = 0;
LABEL_9:

  return v30;
}

- (BOOL)getUVData:(id)data
{
  dataCopy = data;
  if ((objc_msgSend_valid(self, v5, v6, v7) & 1) == 0 || objc_msgSend_meshType(self, v8, v9, v10) != 1 && objc_msgSend_meshType(self, v11, v12, v13) != 11)
  {
    goto LABEL_16;
  }

  v14 = objc_msgSend_meshImpl(self, v11, v12, v13);
  sub_24BC836D4(__p, off_27F078F78[0]);
  v40 = 0;
  v15 = sub_24BCB74D4((v14 + 80), &v40, __p);
  if (v39 < 0)
  {
    operator delete(__p[0]);
  }

  if (v15 == -1)
  {
    goto LABEL_16;
  }

  v16 = (*(v14 + 80) + 16 * v15);
  v18 = *v16;
  v17 = v16[1];
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v17);
  }

  v19 = (*(*v18 + 16))(v18);
  if (objc_msgSend_length(dataCopy, v20, v21, v22) == 8 * (v19 & 0x7FFFFFFF))
  {
    v23 = dataCopy;
    v27 = objc_msgSend_bytes(v23, v24, v25, v26);
    v28 = v19;
    if (v19)
    {
      v29 = v27;
      v30 = 0;
      v31 = 2 * v28;
      do
      {
        v32 = (*(v14 + 80) + 16 * v15);
        v34 = *v32;
        v33 = v32[1];
        if (v33)
        {
          atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v33);
        }

        v35 = (*(v34 + 40) + 4 * v30);
        *(v29 + 4 * v30) = *v35;
        *(v29 + 4 * (v30 + 1)) = v35[1];
        v30 += 2;
      }

      while (v31 != v30);
    }

    v36 = 1;
  }

  else
  {
LABEL_16:
    v36 = 0;
  }

  return v36;
}

- (BOOL)getFaceVertexUVIndexData:(id)data
{
  dataCopy = data;
  if ((objc_msgSend_valid(self, v5, v6, v7) & 1) == 0)
  {
    goto LABEL_30;
  }

  if (objc_msgSend_meshType(self, v8, v9, v10) != 1)
  {
    if (objc_msgSend_meshType(self, v11, v12, v13) == 11)
    {
      v38 = objc_msgSend_meshImpl(self, v35, v36, v37);
      LODWORD(v71) = -1;
      sub_24BC836D4(__p, off_27F078FB8[0]);
      v39 = sub_24BCB1F74(v38, &v71, __p);
      v43 = v39;
      if (v70 < 0)
      {
        operator delete(__p[0]);
        if (!v43)
        {
          goto LABEL_30;
        }
      }

      else if (!v39)
      {
        goto LABEL_30;
      }

      v44 = objc_msgSend_faceSize(self, v40, v41, v42);
      v45 = dataCopy;
      v49 = objc_msgSend_bytes(v45, v46, v47, v48);
      if (v44)
      {
        v53 = v49;
        v54 = 0;
        v55 = 0;
        do
        {
          v56 = (*(v38 + 56) + 16 * v71);
          v58 = *v56;
          v57 = v56[1];
          if (v57)
          {
            atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v57);
          }

          v59 = (*(v58 + 40) + 24 * v54);
          v60 = *v59;
          v61 = v59[1] - *v59;
          if (v61)
          {
            v62 = 1;
            v63 = v55;
            do
            {
              v64 = *v60++;
              *(v53 + 4 * v63++) = v64;
            }

            while (v61 >> 2 > v62++);
          }

          v55 += v61 >> 2;
          ++v54;
        }

        while (v54 != v44);
        v66 = 4 * v55;
      }

      else
      {
        v66 = 0;
      }

      if (objc_msgSend_length(dataCopy, v50, v51, v52) == v66)
      {
        goto LABEL_29;
      }
    }

LABEL_30:
    v67 = 0;
    goto LABEL_31;
  }

  v14 = objc_msgSend_meshImpl(self, v11, v12, v13);
  sub_24BC836D4(__p, off_27F078FB8[0]);
  v72 = 0;
  v71 = 0;
  v18 = sub_24BCCAA0C((v14 + 56), &v71, __p);
  if (v70 < 0)
  {
    operator delete(__p[0]);
  }

  if (v18 == -1)
  {
    goto LABEL_30;
  }

  v19 = objc_msgSend_faceSize(self, v15, v16, v17);
  if (objc_msgSend_length(dataCopy, v20, v21, v22) != 12 * v19)
  {
    goto LABEL_30;
  }

  v23 = dataCopy;
  v27 = objc_msgSend_bytes(v23, v24, v25, v26);
  if (v19)
  {
    v28 = v27;
    v29 = 0;
    v30 = 3 * v19;
    do
    {
      v31 = (*(v14 + 56) + 16 * v18);
      v33 = *v31;
      v32 = v31[1];
      if (v32)
      {
        atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v32);
      }

      v34 = (*(v33 + 40) + 4 * v29);
      *(v28 + 4 * v29) = *v34;
      *(v28 + 4 * (v29 + 1)) = v34[1];
      *(v28 + 4 * (v29 + 2)) = v34[2];
      v29 += 3;
    }

    while (v30 != v29);
  }

LABEL_29:
  v67 = 1;
LABEL_31:

  return v67;
}

- (BOOL)getVertexNormalData:(id)data
{
  dataCopy = data;
  if ((objc_msgSend_valid(self, v5, v6, v7) & 1) == 0 || objc_msgSend_meshType(self, v8, v9, v10) != 1 && objc_msgSend_meshType(self, v11, v12, v13) != 11)
  {
    goto LABEL_51;
  }

  v14 = objc_msgSend_meshImpl(self, v11, v12, v13);
  v15 = dataCopy;
  v19 = objc_msgSend_bytes(v15, v16, v17, v18);
  v86 = 0;
  sub_24BD3B790(v14, &v86);
  if (v86 == 3)
  {
    sub_24BC836D4(__p, off_27F078FE0[0]);
    v87 = 0;
    v88 = 0;
    v57 = sub_24BCB6470((v14 + 80), &v87, __p);
    if (v85 < 0)
    {
      operator delete(__p[0]);
    }

    v58 = (*(v14 + 80) + 16 * v57);
    v60 = *v58;
    v59 = v58[1];
    if (v59)
    {
      atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v59);
    }

    v61 = (*(*v60 + 16))(v60);
    if (objc_msgSend_length(dataCopy, v62, v63, v64) != 12 * v61)
    {
      goto LABEL_51;
    }

    v65 = v61;
    if (v61)
    {
      v83 = dataCopy;
      v66 = 0;
      v67 = 0;
      v68 = 0;
      v69 = 16 * v65;
      do
      {
        v70 = *(v14 + 80);
        v71 = (v70 + 16 * v57);
        v73 = *v71;
        v72 = v71[1];
        if (v72)
        {
          atomic_fetch_add_explicit(&v72->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v72);
          v70 = *(v14 + 80);
          v74 = (v70 + 16 * v57);
          v76 = *v74;
          v75 = v74[1];
          v77 = 3 * v68;
          *(v19 + 4 * v67) = *(*(v73 + 40) + v66);
          if (v75)
          {
            atomic_fetch_add_explicit(&v75->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v75);
            v70 = *(v14 + 80);
          }

          v73 = v76;
        }

        else
        {
          *(v19 + 4 * v67) = *(*(v73 + 40) + v66);
          v77 = v67;
        }

        *(v19 + 4 * (v77 + 1)) = *(*(v73 + 40) + v66 + 4);
        v78 = (v70 + 16 * v57);
        v80 = *v78;
        v79 = v78[1];
        if (v79)
        {
          atomic_fetch_add_explicit(&v79->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v79);
        }

        *(v19 + 4 * (v77 + 2)) = *(*(v80 + 40) + v66 + 8);
        ++v68;
        v67 += 3;
        v66 += 16;
      }

      while (v69 != v66);
      goto LABEL_50;
    }

    goto LABEL_53;
  }

  if (v86 == 2)
  {
    v40 = *(v14 + 160) - *(v14 + 152);
    if (objc_msgSend_length(dataCopy, v20, v21, v22) != 12 * (v40 >> 2))
    {
LABEL_51:
      v81 = 0;
      goto LABEL_52;
    }

    sub_24BC836D4(__p, off_27F078FD0[0]);
    v87 = 0;
    v88 = 0;
    v41 = sub_24BCB6470((v14 + 56), &v87, __p);
    if (v85 < 0)
    {
      operator delete(__p[0]);
    }

    if ((v40 & 0x3FFFFFFFCLL) != 0)
    {
      v83 = dataCopy;
      v42 = 0;
      v43 = 0;
      v44 = 0;
      v45 = (v40 >> 2);
      do
      {
        v46 = *(v14 + 56);
        v47 = (v46 + 16 * v41);
        v49 = *v47;
        v48 = v47[1];
        if (v48)
        {
          atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v48);
          v46 = *(v14 + 56);
          v50 = (v46 + 16 * v41);
          v52 = *v50;
          v51 = v50[1];
          v53 = 3 * v44;
          *(v19 + 4 * v43) = *(*(v49 + 40) + v42);
          if (v51)
          {
            atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v51);
            v46 = *(v14 + 56);
          }

          v49 = v52;
        }

        else
        {
          *(v19 + 4 * v43) = *(*(v49 + 40) + v42);
          v53 = v43;
        }

        *(v19 + 4 * (v53 + 1)) = *(*(v49 + 40) + v42 + 4);
        v54 = (v46 + 16 * v41);
        v56 = *v54;
        v55 = v54[1];
        if (v55)
        {
          atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v55);
        }

        *(v19 + 4 * (v53 + 2)) = *(*(v56 + 40) + v42 + 8);
        ++v44;
        v43 += 3;
        v42 += 16;
        --v45;
      }

      while (v45);
      goto LABEL_50;
    }

LABEL_53:
    v81 = 1;
    goto LABEL_52;
  }

  if (v86 != 1)
  {
    goto LABEL_51;
  }

  v23 = *(v14 + 112) - *(v14 + 104);
  if (objc_msgSend_length(dataCopy, v20, v21, v22) != 12 * (v23 >> 2))
  {
    goto LABEL_51;
  }

  sub_24BC836D4(__p, off_27F078F98[0]);
  v87 = 0;
  v88 = 0;
  v24 = sub_24BCB6470((v14 + 8), &v87, __p);
  if (v85 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v23 & 0x3FFFFFFFCLL) == 0)
  {
    goto LABEL_53;
  }

  v83 = dataCopy;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = (v23 >> 2);
  do
  {
    v29 = *(v14 + 8);
    v30 = (v29 + 16 * v24);
    v32 = *v30;
    v31 = v30[1];
    if (v31)
    {
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v31);
      v29 = *(v14 + 8);
      v33 = (v29 + 16 * v24);
      v35 = *v33;
      v34 = v33[1];
      v36 = 3 * v27;
      *(v19 + 4 * v26) = *(*(v32 + 40) + v25);
      if (v34)
      {
        atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v34);
        v29 = *(v14 + 8);
      }

      v32 = v35;
    }

    else
    {
      *(v19 + 4 * v26) = *(*(v32 + 40) + v25);
      v36 = v26;
    }

    *(v19 + 4 * (v36 + 1)) = *(*(v32 + 40) + v25 + 4);
    v37 = (v29 + 16 * v24);
    v39 = *v37;
    v38 = v37[1];
    if (v38)
    {
      atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v38);
    }

    *(v19 + 4 * (v36 + 2)) = *(*(v39 + 40) + v25 + 8);
    ++v27;
    v26 += 3;
    v25 += 16;
    --v28;
  }

  while (v28);
LABEL_50:
  v81 = 1;
  dataCopy = v83;
LABEL_52:

  return v81;
}

- (BOOL)getFaceVertexNormalIndexData:(id)data
{
  dataCopy = data;
  if ((objc_msgSend_valid(self, v5, v6, v7) & 1) == 0)
  {
    goto LABEL_22;
  }

  if (objc_msgSend_meshType(self, v8, v9, v10) != 1)
  {
    if (objc_msgSend_meshType(self, v11, v12, v13) != 11)
    {
      goto LABEL_22;
    }

    v30 = objc_msgSend_meshImpl(self, v27, v28, v29);
    v32 = *(v30 + 152);
    v31 = *(v30 + 160);
    v33 = dataCopy;
    v37 = objc_msgSend_bytes(v33, v34, v35, v36);
    LODWORD(v92) = 0;
    sub_24BD3B790(v30, &v92);
    v41 = v31 - v32;
    v42 = (v31 - v32) >> 2;
    switch(v92)
    {
      case 3:
        v91 = -1;
        sub_24BC836D4(&__p, off_27F078FC0[0]);
        sub_24BCB1F74(v30, &v91, &__p);
        if (SHIBYTE(v90) < 0)
        {
          operator delete(__p);
        }

        if (v42)
        {
          v76 = 0;
          v45 = 0;
          v77 = (v41 >> 2);
          do
          {
            v78 = (*(v30 + 56) + 16 * v91);
            v80 = *v78;
            v79 = v78[1];
            if (v79)
            {
              atomic_fetch_add_explicit(&v79->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_24BC9EC78(v79);
            }

            v81 = (*(v80 + 40) + 24 * v76);
            v82 = *v81;
            v83 = v81[1] - *v81;
            if (v83)
            {
              v84 = 1;
              v85 = v45;
              do
              {
                v86 = *v82++;
                *(v37 + 4 * v85++) = v86;
                v51 = v83 >> 2 > v84++;
              }

              while (v51);
            }

            v45 += v83 >> 2;
            ++v76;
          }

          while (v76 != v77);
          goto LABEL_61;
        }

        break;
      case 2:
        __p = 0;
        v89 = 0;
        v90 = 0;
        if (v42)
        {
          v43 = 0;
          v68 = 0;
          v45 = 0;
          do
          {
            v89 = v43;
            v91 = v68;
            sub_24BCB1A9C(v30, &v91, &__p);
            v43 = __p;
            v69 = v89 - __p;
            if (v89 != __p)
            {
              v70 = 1;
              v71 = v45;
              do
              {
                *(v37 + 4 * v71++) = v68;
                v51 = v69 >> 2 > v70++;
              }

              while (v51);
            }

            v45 += v69 >> 2;
            ++v68;
          }

          while (v68 != v42);
          goto LABEL_43;
        }

        break;
      case 1:
        __p = 0;
        v89 = 0;
        v90 = 0;
        if (v42)
        {
          v43 = 0;
          v44 = 0;
          v45 = 0;
          do
          {
            v89 = v43;
            v91 = v44;
            sub_24BCB1A9C(v30, &v91, &__p);
            v43 = __p;
            v46 = v89 - __p;
            if (v89 != __p)
            {
              v47 = 1;
              v48 = v45;
              v49 = __p;
              do
              {
                v50 = *v49++;
                *(v37 + 4 * v48++) = v50;
                v51 = v46 >> 2 > v47++;
              }

              while (v51);
            }

            v45 += v46 >> 2;
            ++v44;
          }

          while (v44 != v42);
LABEL_43:
          if (v43)
          {
            v89 = v43;
            operator delete(v43);
          }

          goto LABEL_61;
        }

        break;
      default:
        goto LABEL_22;
    }

    v45 = 0;
LABEL_61:
    v52 = objc_msgSend_length(dataCopy, v38, v39, v40) == 4 * v45;
    goto LABEL_23;
  }

  v14 = objc_msgSend_meshImpl(self, v11, v12, v13);
  v18 = *(v14 + 160) - *(v14 + 152);
  v19 = v18 >> 2;
  if (objc_msgSend_length(dataCopy, v15, v16, v17) != 12 * (v18 >> 2))
  {
LABEL_22:
    v52 = 0;
    goto LABEL_23;
  }

  v20 = dataCopy;
  v24 = objc_msgSend_bytes(v20, v21, v22, v23);
  v91 = 0;
  sub_24BD3B790(v14, &v91);
  if (v91 == 1)
  {
    sub_24BCB2008(&__p, 3uLL);
    if (v19)
    {
      v72 = 0;
      v73 = (v18 >> 2);
      v74 = 2;
      do
      {
        LODWORD(v92) = v72;
        sub_24BCD567C(v14, &v92, &__p);
        v75 = __p;
        *(v24 + 4 * (v74 - 2)) = *__p;
        *(v24 + 4 * (v74 - 1)) = v75[1];
        *(v24 + 4 * v74) = v75[2];
        ++v72;
        v74 += 3;
      }

      while (v73 != v72);
    }

    else
    {
      v75 = __p;
      if (!__p)
      {
LABEL_64:
        v52 = 1;
        goto LABEL_23;
      }
    }

    v89 = v75;
    operator delete(v75);
    goto LABEL_64;
  }

  if (v91 != 3)
  {
    if (v91 == 2)
    {
      if (v19)
      {
        v25 = 0;
        v26 = 2;
        do
        {
          *(v24 + 4 * (v26 - 2)) = v25;
          *(v24 + 4 * (v26 - 1)) = v25;
          *(v24 + 4 * v26) = v25++;
          v26 += 3;
        }

        while ((v18 >> 2) != v25);
      }

      goto LABEL_64;
    }

    goto LABEL_22;
  }

  sub_24BC836D4(&__p, off_27F078FC0[0]);
  v93 = 0;
  v92 = 0;
  v54 = sub_24BCCAA0C((v14 + 56), &v92, &__p);
  if (SHIBYTE(v90) < 0)
  {
    operator delete(__p);
  }

  if (!v19)
  {
    goto LABEL_64;
  }

  v87 = dataCopy;
  v55 = 0;
  v56 = 0;
  do
  {
    v57 = *(v14 + 56);
    v58 = (v57 + 16 * v54);
    v60 = *v58;
    v59 = v58[1];
    if (v59)
    {
      atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v59);
      v57 = *(v14 + 56);
      v61 = (v57 + 16 * v54);
      v63 = *v61;
      v62 = v61[1];
      v64 = 3 * v56;
      *(v24 + 4 * v55) = *(*(v60 + 40) + 4 * v55);
      if (v62)
      {
        atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v62);
        v57 = *(v14 + 56);
      }

      v60 = v63;
    }

    else
    {
      *(v24 + 4 * v55) = *(*(v60 + 40) + 4 * v55);
      v64 = v55;
    }

    *(v24 + 4 * (v64 + 1)) = *(*(v60 + 40) + 4 * v55 + 4);
    v65 = (v57 + 16 * v54);
    v67 = *v65;
    v66 = v65[1];
    if (v66)
    {
      atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v66);
    }

    *(v24 + 4 * (v64 + 2)) = *(*(v67 + 40) + 4 * v55 + 8);
    ++v56;
    v55 += 3;
  }

  while (3 * (v18 >> 2) != v55);
  v52 = 1;
  dataCopy = v87;
LABEL_23:

  return v52;
}

- (BOOL)getVertexColorData:(id)data
{
  dataCopy = data;
  if ((objc_msgSend_valid(self, v5, v6, v7) & 1) == 0 || objc_msgSend_meshType(self, v8, v9, v10) != 1)
  {
    goto LABEL_13;
  }

  v14 = objc_msgSend_meshImpl(self, v11, v12, v13);
  sub_24BC836D4(__p, off_27F078F90[0]);
  v40[0] = 0;
  v40[1] = 0;
  v18 = sub_24BCB6470((v14 + 8), v40, __p);
  if (v39 < 0)
  {
    operator delete(__p[0]);
  }

  if (v18 != -1 && (v19 = objc_msgSend_vertexSize(self, v15, v16, v17), objc_msgSend_length(dataCopy, v20, v21, v22) == 12 * v19))
  {
    v23 = dataCopy;
    v27 = objc_msgSend_bytes(v23, v24, v25, v26);
    if (v19)
    {
      v28 = v27;
      v29 = 0;
      v30 = 16 * v19;
      v31 = 2;
      do
      {
        v32 = (*(v14 + 8) + 16 * v18);
        v34 = *v32;
        v33 = v32[1];
        if (v33)
        {
          atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v33);
        }

        v35 = (*(v34 + 40) + v29);
        *(v28 + 4 * (v31 - 2)) = *v35;
        *(v28 + 4 * (v31 - 1)) = v35[1];
        *(v28 + 4 * v31) = v35[2];
        v31 += 3;
        v29 += 16;
      }

      while (v30 != v29);
    }

    v36 = 1;
  }

  else
  {
LABEL_13:
    v36 = 0;
  }

  return v36;
}

- (BOOL)getFaceGroupIDData:(id)data
{
  dataCopy = data;
  if ((objc_msgSend_valid(self, v5, v6, v7) & 1) == 0 || objc_msgSend_meshType(self, v8, v9, v10) != 1 && objc_msgSend_meshType(self, v11, v12, v13) != 11)
  {
    goto LABEL_14;
  }

  v14 = objc_msgSend_faceSize(self, v11, v12, v13);
  if (objc_msgSend_length(dataCopy, v15, v16, v17) != 2 * v14)
  {
    goto LABEL_14;
  }

  v18 = dataCopy;
  v22 = objc_msgSend_bytes(v18, v19, v20, v21);
  v26 = objc_msgSend_meshImpl(self, v23, v24, v25);
  sub_24BC836D4(__p, off_27F078FC8[0]);
  v41 = 0;
  v30 = sub_24BD274E4((v26 + 56), &v41, __p);
  if (v40 < 0)
  {
    operator delete(__p[0]);
  }

  if (v30 != -1)
  {
    v31 = (*(objc_msgSend_meshImpl(self, v27, v28, v29) + 56) + 16 * v30);
    v33 = *v31;
    v32 = v31[1];
    if (v32)
    {
      atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v32);
    }

    if (v14)
    {
      v34 = v14;
      v35 = *(v33 + 40);
      do
      {
        v36 = *v35++;
        *v22++ = v36;
        --v34;
      }

      while (v34);
    }

    v37 = 1;
  }

  else
  {
LABEL_14:
    v37 = 0;
  }

  return v37;
}

- (BOOL)cloneFrom:(id)from
{
  fromCopy = from;
  v8 = fromCopy;
  if (self != fromCopy)
  {
    if (objc_msgSend_valid(fromCopy, v5, v6, v7))
    {
      v12 = objc_msgSend_meshType(self, v9, v10, v11);
      if (v12 == objc_msgSend_meshType(v8, v13, v14, v15))
      {
        if (objc_msgSend_meshImpl(self, v16, v17, v18))
        {
          v22 = objc_msgSend_meshImpl(self, v19, v20, v21);
          v26 = objc_msgSend_meshImpl(v8, v23, v24, v25);
          sub_24BCB3658(v22, v26);
          if (objc_msgSend_materialImpl(v8, v27, v28, v29))
          {
            if (!objc_msgSend_materialImpl(self, v30, v31, v32))
            {
              operator new();
            }

            v36 = objc_msgSend_materialImpl(self, v33, v34, v35);
            v40 = objc_msgSend_materialImpl(v8, v37, v38, v39);
            v41 = v40;
            if (v36 != v40)
            {
              sub_24BE7335C(v36, *v40, v40[1], 0xAAAAAAAAAAAAAAABLL * ((v40[1] - *v40) >> 4));
              sub_24BE739BC(v36 + 24, v41[3], v41[4], 0xAAAAAAAAAAAAAAABLL * ((v41[4] - v41[3]) >> 4));
              sub_24BCCEEA4((v36 + 48), v41[6], v41 + 7);
            }
          }

          goto LABEL_10;
        }

        if (objc_msgSend_meshType(self, v19, v20, v21) == 1)
        {
          sub_24BD51FA4();
        }
      }
    }

    v42 = 0;
    goto LABEL_14;
  }

LABEL_10:
  v42 = 1;
LABEL_14:

  return v42;
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end