@interface CHDocumentLayoutAnalysisTileResult
+ (id)descriptionForSparseAdjacencyMatrix:(const void *)matrix;
+ (id)descriptionForStrokeClassificationMatrix:(const void *)matrix;
+ (void)deserializeStrokeClassificationMatrix:(void *)matrix sparseAdjacencyMatrix:(void *)adjacencyMatrix withCoder:(id)coder;
+ (void)serializeStrokeClassificationMatrix:(const void *)matrix sparseAdjacencyMatrix:(const void *)adjacencyMatrix withCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (CHDocumentLayoutAnalysisTileResult)initWithCoder:(id)coder;
- (CHDocumentLayoutAnalysisTileResult)initWithStrokeClassificationMatrix:(void *)matrix sparseAdjacencyMatrix:(void *)adjacencyMatrix;
- (id).cxx_construct;
- (id)debugDescription;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CHDocumentLayoutAnalysisTileResult

- (CHDocumentLayoutAnalysisTileResult)initWithStrokeClassificationMatrix:(void *)matrix sparseAdjacencyMatrix:(void *)adjacencyMatrix
{
  v10.receiver = self;
  v10.super_class = CHDocumentLayoutAnalysisTileResult;
  v6 = [(CHDocumentLayoutAnalysisTileResult *)&v10 init];
  v7 = v6;
  if (v6)
  {
    p_strokeClassificationMatrix = &v6->_strokeClassificationMatrix;
    if (&v7->_strokeClassificationMatrix != matrix)
    {
      sub_18372D05C(p_strokeClassificationMatrix, *matrix, *(matrix + 1), 0xAAAAAAAAAAAAAAABLL * ((*(matrix + 1) - *matrix) >> 3));
    }

    if (&v7->_sparseAdjacencyMatrix != adjacencyMatrix)
    {
      sub_18372D3D4(&v7->_sparseAdjacencyMatrix, *adjacencyMatrix, *(adjacencyMatrix + 1), 0xCCCCCCCCCCCCCCCDLL * ((*(adjacencyMatrix + 1) - *adjacencyMatrix) >> 3));
    }

    v7->_hash = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

+ (void)serializeStrokeClassificationMatrix:(const void *)matrix sparseAdjacencyMatrix:(const void *)adjacencyMatrix withCoder:(id)coder
{
  coderCopy = coder;
  v11 = coderCopy;
  v12 = *(matrix + 1) - *matrix;
  v13 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 3);
  if (v12)
  {
    v14 = (*(*matrix + 8) - **matrix) >> 2;
  }

  else
  {
    v14 = 0;
  }

  objc_msgSend_encodeInteger_forKey_(coderCopy, v8, v13, @"strokeCount", v9, v10);
  objc_msgSend_encodeInteger_forKey_(v11, v15, v14, @"strokeClassCount", v16, v17);
  if (v14 * v13)
  {
    if (!((v14 * v13) >> 62))
    {
      operator new();
    }

    sub_18369761C();
  }

  v68 = v11;
  v22 = *matrix;
  v48 = *(matrix + 1);
  if (*matrix != v48)
  {
    v21 = 0;
    while (1)
    {
      v24 = *v22;
      v23 = v22[1];
      v25 = v23 - *v22;
      v26 = v25 >> 2;
      if (v25 >> 2 >= 1)
      {
        if (-v21 < v25)
        {
          v27 = v21;
          v28 = v21 >> 2;
          if ((v26 + v28) >> 62)
          {
            sub_18369761C();
          }

          if (v26 + v28)
          {
            if (!((v26 + v28) >> 62))
            {
              operator new();
            }

            sub_183688F00();
          }

          v37 = (4 * v28);
          v21 = 4 * v28 + v25;
          if ((v25 - 4) < 0x1C)
          {
            goto LABEL_46;
          }

          if (v27 - v24 < 0x20)
          {
            goto LABEL_46;
          }

          v38 = ((v25 - 4) >> 2) + 1;
          v39 = v38 & 0x7FFFFFFFFFFFFFF8;
          v40 = &v37[v39];
          v41 = &v24[v39];
          v42 = (v24 + 4);
          v43 = v37 + 4;
          v44 = v38 & 0x7FFFFFFFFFFFFFF8;
          do
          {
            v45 = *v42;
            *(v43 - 1) = *(v42 - 1);
            *v43 = v45;
            v42 += 2;
            v43 += 2;
            v44 -= 8;
          }

          while (v44);
          v37 = v40;
          v24 = v41;
          if (v38 != (v38 & 0x7FFFFFFFFFFFFFF8))
          {
LABEL_46:
            do
            {
              v46 = *v24++;
              *v37++ = v46;
            }

            while (v37 != v21);
          }

          memcpy(0, 0, v27);
          goto LABEL_8;
        }

        if (v24 != v23)
        {
          break;
        }
      }

LABEL_8:
      v22 += 3;
      if (v22 == v48)
      {
        goto LABEL_34;
      }
    }

    if ((v25 - 4) < 0x1C || (v21 - v24) < 0x20)
    {
      v31 = *v22;
      v32 = v21;
    }

    else
    {
      v29 = ((v25 - 4) >> 2) + 1;
      v30 = v29 & 0x7FFFFFFFFFFFFFF8;
      v31 = &v24[v30];
      v32 = (v21 + v30 * 4);
      v33 = (v21 + 16);
      v34 = (v24 + 4);
      v35 = v29 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v36 = *v34;
        *(v33 - 1) = *(v34 - 1);
        *v33 = v36;
        v33 += 2;
        v34 += 2;
        v35 -= 8;
      }

      while (v35);
      if (v29 == (v29 & 0x7FFFFFFFFFFFFFF8))
      {
        goto LABEL_31;
      }
    }

    do
    {
      v47 = *v31++;
      *v32++ = v47;
    }

    while (v31 != v23);
LABEL_31:
    v21 = v32;
    goto LABEL_8;
  }

  v21 = 0;
LABEL_34:
  v49 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v18, 0, v21, v19, v20);
  objc_msgSend_encodeObject_forKey_(v68, v50, v49, @"strokeClassificationMatrix", v51, v52);
  v61 = objc_msgSend_data(MEMORY[0x1E695DF88], v53, v54, v55, v56, v57);
  v62 = *adjacencyMatrix;
  v63 = *(adjacencyMatrix + 1);
  while (v62 != v63)
  {
    v69 = *(v62 + 24);
    objc_msgSend_appendBytes_length_(v61, v58, &v69, 8, v59, v60);
    for (i = (v62 + 16); ; objc_msgSend_appendBytes_length_(v61, v65, (i + 3), 4, v66, v67))
    {
      i = *i;
      if (!i)
      {
        break;
      }

      objc_msgSend_appendBytes_length_(v61, v58, (i + 2), 8, v59, v60);
    }

    v62 += 40;
  }

  objc_msgSend_encodeObject_forKey_(v68, v58, v61, @"sparseAdjacencyMatrix", v59, v60);
}

+ (void)deserializeStrokeClassificationMatrix:(void *)matrix sparseAdjacencyMatrix:(void *)adjacencyMatrix withCoder:(id)coder
{
  coderCopy = coder;
  v12 = objc_msgSend_decodeIntegerForKey_(coderCopy, v8, @"strokeCount", v9, v10, v11);
  v17 = objc_msgSend_decodeIntegerForKey_(coderCopy, v13, @"strokeClassCount", v14, v15, v16);
  v18 = objc_opt_class();
  objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v19, v18, @"strokeClassificationMatrix", v20, v21);
  v85 = v84 = coderCopy;
  if (v17 * v12 != objc_msgSend_length(v85, v22, v23, v24, v25, v26) >> 2)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v32 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v32, OS_LOG_TYPE_ERROR, "Unexpected data format when deserializing stroke classification matrix.", buf, 2u);
    }
  }

  if (v17 * v12 != objc_msgSend_length(v85, v27, v28, v29, v30, v31) >> 2)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v33 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v33, OS_LOG_TYPE_FAULT, "Unexpected data format when deserializing stroke classification matrix.", buf, 2u);
    }
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(matrix + 2) - *matrix) >> 3) < v12)
  {
    if (v12 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_18368964C();
  }

  v34 = v85;
  objc_msgSend_bytes(v34, v35, v36, v37, v38, v39);
  if (v12)
  {
    v40 = v12;
    v41 = 4 * v17;
    v83 = v12;
    do
    {
      if (v41)
      {
        if ((v41 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_18369761C();
      }

      v44 = *(matrix + 1);
      v43 = *(matrix + 2);
      if (v44 < v43)
      {
        *v44 = 0;
        v44[1] = 0;
        v42 = v44 + 3;
        v44[2] = 0;
      }

      else
      {
        v45 = *matrix;
        v46 = v44 - *matrix;
        v47 = 0xAAAAAAAAAAAAAAABLL * (v46 >> 3) + 1;
        if (v47 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_18368964C();
        }

        v48 = 0xAAAAAAAAAAAAAAABLL * ((v43 - v45) >> 3);
        if (2 * v48 > v47)
        {
          v47 = 2 * v48;
        }

        if (v48 >= 0x555555555555555)
        {
          v49 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v49 = v47;
        }

        if (v49)
        {
          if (v49 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          sub_183688F00();
        }

        v50 = (8 * (v46 >> 3));
        *v50 = 0;
        v50[1] = 0;
        v50[2] = 0;
        v42 = v50 + 3;
        v51 = v50 - v46;
        memcpy(v50 - v46, v45, v46);
        *matrix = v51;
        *(matrix + 1) = v42;
        *(matrix + 2) = 0;
        if (v45)
        {
          operator delete(v45);
        }
      }

      *(matrix + 1) = v42;
      --v40;
    }

    while (v40);
    if (0xCCCCCCCCCCCCCCCDLL * ((*(adjacencyMatrix + 2) - *adjacencyMatrix) >> 3) < v12)
    {
      if (v12 < 0x666666666666667)
      {
        adjacencyMatrixCopy = adjacencyMatrix;
        operator new();
      }

      sub_18368964C();
    }
  }

  v52 = objc_opt_class();
  v56 = objc_msgSend_decodeObjectOfClass_forKey_(v84, v53, v52, @"sparseAdjacencyMatrix", v54, v55);
  v57 = v56;
  v68 = objc_msgSend_bytes(v57, v58, v59, v60, v61, v62);
  v69 = 0;
  while (v69 < objc_msgSend_length(v56, v63, v64, v65, v66, v67, v83))
  {
    v70 = v68 + v69;
    v71 = *(v68 + v69);
    *buf = 0u;
    v88 = 0u;
    LODWORD(adjacencyMatrixCopy) = 1065353216;
    if (v71)
    {
      v72 = -8 - v69;
      do
      {
        v86[0] = *(v70 + 8);
        v86[1] = v86;
        v73 = *(v70 + 16);
        *(sub_18372DD50(buf, v86[0]) + 6) = v73;
        v72 -= 12;
        v70 += 12;
        --v71;
      }

      while (v71);
      v69 = -v72;
      v74 = *(adjacencyMatrix + 1);
      if (v74 >= *(adjacencyMatrix + 2))
      {
LABEL_49:
        v80 = sub_18372E058(adjacencyMatrix, buf);
        v76 = v88;
        *(adjacencyMatrix + 1) = v80;
        if (v76)
        {
          goto LABEL_55;
        }

        goto LABEL_56;
      }
    }

    else
    {
      v69 += 8;
      v74 = *(adjacencyMatrix + 1);
      if (v74 >= *(adjacencyMatrix + 2))
      {
        goto LABEL_49;
      }
    }

    v75 = *buf;
    *buf = 0;
    *v74 = v75;
    *(v74 + 8) = *&buf[8];
    *&buf[8] = 0;
    v76 = v88;
    *(v74 + 16) = v88;
    v77 = *(&v88 + 1);
    *(v74 + 24) = *(&v88 + 1);
    *(v74 + 32) = adjacencyMatrixCopy;
    if (v77)
    {
      v78 = v76[1];
      v79 = *(v74 + 8);
      if ((v79 & (v79 - 1)) != 0)
      {
        if (v78 >= v79)
        {
          v78 %= v79;
        }
      }

      else
      {
        v78 &= v79 - 1;
      }

      v76 = 0;
      *(v75 + 8 * v78) = v74 + 16;
      v88 = 0uLL;
    }

    *(adjacencyMatrix + 1) = v74 + 40;
    if (v76)
    {
      do
      {
LABEL_55:
        v81 = *v76;
        operator delete(v76);
        v76 = v81;
      }

      while (v81);
    }

LABEL_56:
    v82 = *buf;
    *buf = 0;
    if (v82)
    {
      operator delete(v82);
    }
  }
}

+ (id)descriptionForStrokeClassificationMatrix:(const void *)matrix
{
  if (*(matrix + 1) == *matrix)
  {
    v24 = @"Stroke Classification Matrix:";
  }

  else
  {
    v7 = 0;
    v8 = @"Stroke Classification Matrix:";
    do
    {
      v9 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AD60], a2, @"\n%lu: [", v3, v4, v5, v7);
      v14 = v9;
      v15 = *(*matrix + 24 * v7);
      if (*(*matrix + 24 * v7 + 8) != v15)
      {
        objc_msgSend_appendFormat_(v9, v10, @"%.3f", v11, v12, v13, *v15);
        v16 = (*matrix + 24 * v7);
        v17 = *v16;
        if ((v16[1] - *v16) >= 5)
        {
          v18 = 1;
          do
          {
            objc_msgSend_appendFormat_(v14, v10, @", %.3f", v11, v12, v13, *(v17 + 4 * v18));
            v19 = (*matrix + 24 * v7);
            v17 = *v19;
            ++v18;
          }

          while (v18 < (v19[1] - *v19) >> 2);
        }
      }

      objc_msgSend_appendString_(v14, v10, @"]", v11, v12, v13);
      v24 = objc_msgSend_stringByAppendingString_(v8, v20, v14, v21, v22, v23);

      ++v7;
      v8 = v24;
    }

    while (v7 < 0xAAAAAAAAAAAAAAABLL * ((*(matrix + 1) - *matrix) >> 3));
  }

  return v24;
}

+ (id)descriptionForSparseAdjacencyMatrix:(const void *)matrix
{
  if (*(matrix + 1) == *matrix)
  {
    v26 = @"Sparse Adjacent Matrix:";
  }

  else
  {
    v7 = 0;
    v8 = @"Sparse Adjacent Matrix:";
    objc_msgSend_stringWithFormat_(MEMORY[0x1E696AD60], a2, @"\n%lu: [", v3, v4, v5, 0);
    while (1)
      v13 = {;
      if (*(*matrix + 40 * v7 + 16))
      {
        v15 = 0;
        v16 = -1;
        v17 = *(*matrix + 40 * v7 + 16);
        do
        {
          v17 = *v17;
          ++v16;
          v15 += 16;
        }

        while (v17);
        if (v16 < 0xFFFFFFFFFFFFFFFLL)
        {
          operator new();
        }

        sub_1836D58DC();
      }

      sub_18372E214(0, 0, 0, 1, v14);
      objc_msgSend_appendString_(v13, v18, @"]", v19, v20, v21);
      v26 = objc_msgSend_stringByAppendingString_(v8, v22, v13, v23, v24, v25);

      ++v7;
      v8 = v26;
      if (v7 >= 0xCCCCCCCCCCCCCCCDLL * ((*(matrix + 1) - *matrix) >> 3))
      {
        break;
      }

      objc_msgSend_stringWithFormat_(MEMORY[0x1E696AD60], v9, @"\n%lu: [", v10, v11, v12, v7);
    }
  }

  return v26;
}

- (CHDocumentLayoutAnalysisTileResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  __p = 0;
  v31 = 0;
  v32 = 0;
  objc_msgSend_deserializeStrokeClassificationMatrix_sparseAdjacencyMatrix_withCoder_(CHDocumentLayoutAnalysisTileResult, v5, &v33, &__p, coderCopy, v6);
  v14 = objc_msgSend_initWithStrokeClassificationMatrix_sparseAdjacencyMatrix_(self, v7, &v33, &__p, v8, v9);
  if (v14)
  {
    v14[7] = objc_msgSend_decodeIntegerForKey_(coderCopy, v10, @"hash", v11, v12, v13);
  }

  v15 = v14;
  v16 = __p;
  if (__p)
  {
    v17 = v31;
    v18 = __p;
    if (v31 != __p)
    {
      do
      {
        v19 = *(v17 - 3);
        if (v19)
        {
          do
          {
            v20 = *v19;
            operator delete(v19);
            v19 = v20;
          }

          while (v20);
        }

        v22 = *(v17 - 5);
        v17 -= 5;
        v21 = v22;
        *v17 = 0;
        if (v22)
        {
          operator delete(v21);
        }
      }

      while (v17 != v16);
      v18 = __p;
    }

    v31 = v16;
    operator delete(v18);
  }

  v23 = v33;
  if (v33)
  {
    v24 = v34;
    v25 = v33;
    if (v34 != v33)
    {
      v26 = v34;
      do
      {
        v28 = *(v26 - 3);
        v26 -= 24;
        v27 = v28;
        if (v28)
        {
          *(v24 - 2) = v27;
          operator delete(v27);
        }

        v24 = v26;
      }

      while (v26 != v23);
      v25 = v33;
    }

    v34 = v23;
    operator delete(v25);
  }

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  v20 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  if (0xAAAAAAAAAAAAAAABLL * ((self->_strokeClassificationMatrix.__end_ - self->_strokeClassificationMatrix.__begin_) >> 3) != 0xCCCCCCCCCCCCCCCDLL * ((self->_sparseAdjacencyMatrix.__end_ - self->_sparseAdjacencyMatrix.__begin_) >> 3))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v7 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 0xAAAAAAAAAAAAAAABLL * ((self->_strokeClassificationMatrix.__end_ - self->_strokeClassificationMatrix.__begin_) >> 3);
      v9 = 0xCCCCCCCCCCCCCCCDLL * ((self->_sparseAdjacencyMatrix.__end_ - self->_sparseAdjacencyMatrix.__begin_) >> 3);
      v16 = 134218240;
      v17 = v8;
      v18 = 2048;
      v19 = v9;
      _os_log_impl(&dword_18366B000, v7, OS_LOG_TYPE_ERROR, "Number of strokes in the stroke classification matrix (%lu) doesn't match the number of strokes in the adjacency matrix (%lu)", &v16, 0x16u);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((self->_strokeClassificationMatrix.__end_ - self->_strokeClassificationMatrix.__begin_) >> 3) != 0xCCCCCCCCCCCCCCCDLL * ((self->_sparseAdjacencyMatrix.__end_ - self->_sparseAdjacencyMatrix.__begin_) >> 3))
    {
      if (qword_1EA84DC48 == -1)
      {
        v10 = qword_1EA84DC50[0];
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
        {
LABEL_10:

          goto LABEL_11;
        }
      }

      else
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        v10 = qword_1EA84DC50[0];
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_10;
        }
      }

      v11 = 0xAAAAAAAAAAAAAAABLL * ((self->_strokeClassificationMatrix.__end_ - self->_strokeClassificationMatrix.__begin_) >> 3);
      v12 = 0xCCCCCCCCCCCCCCCDLL * ((self->_sparseAdjacencyMatrix.__end_ - self->_sparseAdjacencyMatrix.__begin_) >> 3);
      v16 = 134218240;
      v17 = v11;
      v18 = 2048;
      v19 = v12;
      _os_log_impl(&dword_18366B000, v10, OS_LOG_TYPE_FAULT, "Number of strokes in the stroke classification matrix (%lu) doesn't match the number of strokes in the adjacency matrix (%lu)", &v16, 0x16u);
      goto LABEL_10;
    }
  }

LABEL_11:
  objc_msgSend_serializeStrokeClassificationMatrix_sparseAdjacencyMatrix_withCoder_(CHDocumentLayoutAnalysisTileResult, v4, &self->_strokeClassificationMatrix, &self->_sparseAdjacencyMatrix, coderCopy, v5);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v13, self->_hash, @"hash", v14, v15);
}

- (id)description
{
  v10.receiver = self;
  v10.super_class = CHDocumentLayoutAnalysisTileResult;
  v3 = [(CHDocumentLayoutAnalysisTileResult *)&v10 description];
  v8 = objc_msgSend_stringByAppendingFormat_(v3, v4, @" Stroke count = %lu", v5, v6, v7, 0xAAAAAAAAAAAAAAABLL * ((self->_strokeClassificationMatrix.__end_ - self->_strokeClassificationMatrix.__begin_) >> 3));

  return v8;
}

- (id)debugDescription
{
  v6 = objc_msgSend_descriptionForStrokeClassificationMatrix_(CHDocumentLayoutAnalysisTileResult, a2, &self->_strokeClassificationMatrix, v2, v3, v4);
  v11 = objc_msgSend_descriptionForSparseAdjacencyMatrix_(CHDocumentLayoutAnalysisTileResult, v7, &self->_sparseAdjacencyMatrix, v8, v9, v10);
  v17 = objc_msgSend_description(self, v12, v13, v14, v15, v16);
  v22 = objc_msgSend_stringByAppendingFormat_(v17, v18, @"\n%@", v19, v20, v21, v6);

  v27 = objc_msgSend_stringByAppendingFormat_(v22, v23, @"\n%@", v24, v25, v26, v11);

  return v27;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = sub_1837285DC(self, equalCopy);

    return v5;
  }

  else
  {

    return 0;
  }
}

- (unint64_t)hash
{
  result = self->_hash;
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    begin = self->_strokeClassificationMatrix.__begin_;
    end = self->_strokeClassificationMatrix.__end_;
    v9 = 0;
    v10 = end - begin;
    if (end != begin)
    {
      v11 = 0;
      v12 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 3);
      if (v12 <= 1)
      {
        v12 = 1;
      }

      do
      {
        v13 = *&begin[24 * v11];
        v14 = *&begin[24 * v11 + 8] - v13;
        if (v14)
        {
          v15 = v14 >> 2;
          if ((v14 >> 2) <= 1)
          {
            v16 = 1;
          }

          else
          {
            v16 = v14 >> 2;
          }

          if (v15 <= 7)
          {
            v17 = 0;
LABEL_16:
            v36 = v16 - v17;
            v37 = &v13->f32[v17];
            do
            {
              v38 = *v37++;
              v39 = LODWORD(v38);
              if (v38 == 0.0)
              {
                v39 = 0;
              }

              *&v9 ^= v39;
              --v36;
            }

            while (v36);
            goto LABEL_6;
          }

          v17 = v16 & 0xFFFFFFFFFFFFFFF8;
          v18 = 0uLL;
          v19 = v9;
          v20 = v13 + 1;
          v21 = v16 & 0xFFFFFFFFFFFFFFF8;
          v22 = 0uLL;
          v23 = 0uLL;
          do
          {
            v24 = v20[-1];
            v25 = vceqzq_f32(v24);
            v26.i64[0] = v25.i32[2];
            v26.i64[1] = v25.i32[3];
            v27 = v26;
            v26.i64[0] = v25.i32[0];
            v26.i64[1] = v25.i32[1];
            v28 = v26;
            v29 = vceqzq_f32(*v20);
            v26.i64[0] = v29.i32[2];
            v26.i64[1] = v29.i32[3];
            v30 = v26;
            v26.i64[0] = v29.i32[0];
            v26.i64[1] = v29.i32[1];
            v31 = v26;
            v26.i64[0] = v24.u32[2];
            v26.i64[1] = v24.u32[3];
            v32 = v26;
            v26.i64[0] = v24.u32[0];
            v26.i64[1] = v24.u32[1];
            v33 = v26;
            v26.i64[0] = v20->i64[1];
            v26.i64[1] = HIDWORD(*v20);
            v34 = v26;
            v26.i64[0] = v20->u32[0];
            v26.i64[1] = HIDWORD(v20->i64[0]);
            v18 = veorq_s8(vbicq_s8(v32, v27), v18);
            v19 = veorq_s8(vbicq_s8(v33, v28), v19);
            v23 = veorq_s8(vbicq_s8(v34, v30), v23);
            v22 = veorq_s8(vbicq_s8(v26, v31), v22);
            v20 += 2;
            v21 -= 8;
          }

          while (v21);
          v35 = veorq_s8(veorq_s8(v22, v19), veorq_s8(v23, v18));
          v9 = veor_s8(*v35.i8, *&vextq_s8(v35, v35, 8uLL));
          if (v15 != v17)
          {
            goto LABEL_16;
          }
        }

LABEL_6:
        ++v11;
      }

      while (v11 != v12);
    }

    v41 = self->_sparseAdjacencyMatrix.__begin_;
    v40 = self->_sparseAdjacencyMatrix.__end_;
    if (v40 == v41)
    {
      v43 = 0;
    }

    else
    {
      v42 = 0;
      v43 = 0;
      do
      {
        v44 = v41[5 * v42 + 2];
        if (v44)
        {
          do
          {
            v45 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], a2, *(v44 + 2), v2, v3, v4);
            v51 = objc_msgSend_hash(v45, v46, v47, v48, v49, v50);
            v52 = v44[6];
            v53 = LODWORD(v52);
            if (v52 == 0.0)
            {
              v53 = 0;
            }

            v43 ^= v51 ^ v53;

            v44 = *v44;
          }

          while (v44);
          v41 = self->_sparseAdjacencyMatrix.__begin_;
          v40 = self->_sparseAdjacencyMatrix.__end_;
        }

        ++v42;
      }

      while (v42 < 0xCCCCCCCCCCCCCCCDLL * ((v40 - v41) >> 3));
    }

    result = v43 ^ *&v9;
    self->_hash = v43 ^ *&v9;
  }

  return result;
}

- (id).cxx_construct
{
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end