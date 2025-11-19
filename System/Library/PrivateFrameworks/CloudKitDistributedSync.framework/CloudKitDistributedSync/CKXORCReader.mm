@interface CKXORCReader
- ($3CC19D079FD0B010EE84973AA846B91B)referencedListForReference:(SEL)a3 inStruct:(unint64_t)a4;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)referencedStructAtIndex:(SEL)a3 inList:(int64_t)a4;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)referencedStructForReference:(SEL)a3 inStruct:(unint64_t)a4;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)rootStructWithType:(SEL)a3;
- (BOOL)_setInputWithError:(id *)a3;
- (BOOL)createReaderIfNecessaryWithError:(id *)a3;
- (BOOL)loadBatchWithRow:(unint64_t)a3 forStruct:(unint64_t)a4;
- (BOOL)referenceIsNull:(unint64_t)a3 inStruct:(id *)a4;
- (BOOL)setReadableStorage:(id)a3 error:(id *)a4;
- (CKXORCReader)initWithSchema:(id)a3;
- (CKXORCReader)initWithSchema:(id)a3 helpers:(id)a4 options:(id)a5;
- (id).cxx_construct;
- (id)rowsForStructColumn:(unint64_t)a3;
- (int64_t)lengthForList:(id *)a3;
- (unint64_t)offsetInCurrentBatchForRow:(unint64_t)a3 forStruct:(unint64_t)a4;
- (unint64_t)valueSizeForField:(unint64_t)a3;
- (void)copyData:(void *)a3 forField:(unint64_t)a4 inStruct:(id *)a5;
- (void)copyData:(void *)a3 forList:(id *)a4;
- (void)createRowReaderForStruct:(unint64_t)a3;
- (void)listColumnForReference:(unint64_t)a3;
- (void)rootColumnForStruct:(unint64_t)a3;
- (void)structColumnForStruct:(unint64_t)a3;
- (void)structReferenceColumnForReference:(unint64_t)a3;
- (void)valueColumnForField:(unint64_t)a3;
@end

@implementation CKXORCReader

- (CKXORCReader)initWithSchema:(id)a3
{
  v4 = MEMORY[0x277CBEAD8];
  v5 = NSStringFromSelector(a2);
  objc_msgSend_raise_format_(v4, v6, *MEMORY[0x277CBE658], @"%@ is unavailable", v7, v8, v9, v5);

  return 0;
}

- (CKXORCReader)initWithSchema:(id)a3 helpers:(id)a4 options:(id)a5
{
  v9 = a3;
  v10 = a4;
  v17 = a5;
  if (!v10)
  {
    v22 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v11, v12, v13, v14, v15, v16);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v22, v23, a2, self, @"CKXORCReaderWriter.mm", 144, @"The ORC reader requires a helper object conforming to CKXORCHelpers");
  }

  v24.receiver = self;
  v24.super_class = CKXORCReader;
  v18 = [(CKXReaderBase *)&v24 initWithSchema:v9];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_helpers, a4);
    v20 = v17;
    if (!v17)
    {
      v20 = objc_opt_new();
    }

    objc_storeStrong(&v19->_options, v20);
    if (!v17)
    {
    }
  }

  return v19;
}

- (BOOL)createReaderIfNecessaryWithError:(id *)a3
{
  v24[7] = *MEMORY[0x277D85DE8];
  if (!self->_reader.__ptr_)
  {
    v8 = objc_msgSend_storage(self, a2, a3, v3, v4, v5, v6);

    if (!v8)
    {
      v9 = MEMORY[0x277CBEAD8];
      v10 = NSStringFromSelector(sel_setReadableStorage_error_);
      objc_msgSend_raise_format_(v9, v11, *MEMORY[0x277CBE660], @"Call %@ before writing data", v12, v13, v14, v10);
    }

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_243978A68;
    v24[3] = &unk_278DDB2F0;
    v24[4] = self;
    v15 = v24;
    sub_243978A68(v15, v16, v17, v18, v19, v20, v21);
  }

  v22 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)createRowReaderForStruct:(unint64_t)a3
{
  v23[10] = *MEMORY[0x277D85DE8];
  v10 = self;
  if (!v10->_reader.__ptr_)
  {
    v14 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v4, v5, v6, v7, v8, v9);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "void CKXReaderCheck(CKXORCReader *__strong)", v16, v17, v18, v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v14, v21, v20, @"CKXORCReaderWriter.mm", 135, @"Reader not present: make sure that [CKXORCReader setData:error:] has been called", v22);
  }

  begin = v10->_structToReaderBatchPair.__begin_;
  if (a3 >= (v10->_structToReaderBatchPair.__end_ - begin) >> 4 || !begin[2 * a3])
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = sub_243979234;
    v23[3] = &unk_278DDB318;
    v23[4] = v10;
    v23[5] = a3;
    v12 = v23;
    sub_243979234(v12);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)loadBatchWithRow:(unint64_t)a3 forStruct:(unint64_t)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v13 = self;
  if (!v13->_reader.__ptr_)
  {
    v22 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v7, v8, v9, v10, v11, v12);
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "void CKXReaderCheck(CKXORCReader *__strong)", v24, v25, v26, v27);
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v22, v29, v28, @"CKXORCReaderWriter.mm", 135, @"Reader not present: make sure that [CKXORCReader setData:error:] has been called", v30);
  }

  objc_msgSend_createRowReaderForStruct_(v13, v14, a4, v15, v16, v17, v18);
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_243979B3C;
  v31[3] = &unk_278DDB340;
  v31[4] = v13;
  v31[5] = &v32;
  v31[6] = a3;
  v31[7] = a2;
  v31[8] = a4;
  v19 = v31;
  sub_243979B3C(v19);

  LOBYTE(v19) = *(v33 + 24);
  _Block_object_dispose(&v32, 8);
  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

- (unint64_t)offsetInCurrentBatchForRow:(unint64_t)a3 forStruct:(unint64_t)a4
{
  v34 = *MEMORY[0x277D85DE8];
  objc_msgSend_loadBatchWithRow_forStruct_(self, a2, a3, a4, v4, v5, v6);
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = sub_24397A320;
  v27[3] = &unk_278DDB368;
  v27[4] = self;
  v28 = &v30;
  v29 = a4;
  v11 = v27;
  v12 = *(self->_structToReaderBatchPair.__begin_ + 2 * a4);
  v13 = (*(*v12 + 48))(v12);
  *(v28[1] + 24) = v13;

  v20 = *(*(self->_structToReaderBatchPair.__begin_ + 2 * a4 + 1) + 16);
  v21 = v31[3];
  v22 = a3 - v21;
  if (a3 < v21 || v22 >= v20)
  {
    v25 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v14, v15, v16, v17, v18, v19);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v25, v26, a2, self, @"CKXORCReaderWriter.mm", 281, @"Incorrect rows loaded: row %llu does not fit in range %llu->llu", a3, v31[3], v31[3] + v20);

    v22 = a3 - v31[3];
  }

  _Block_object_dispose(&v30, 8);
  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

- (id)rowsForStructColumn:(unint64_t)a3
{
  v30[11] = *MEMORY[0x277D85DE8];
  v11 = self;
  if (!v11->_reader.__ptr_)
  {
    v21 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v5, v6, v7, v8, v9, v10);
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "void CKXReaderCheck(CKXORCReader *__strong)", v23, v24, v25, v26);
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v21, v28, v27, @"CKXORCReaderWriter.mm", 135, @"Reader not present: make sure that [CKXORCReader setData:error:] has been called", v29);
  }

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = sub_24397A778;
  v30[3] = &unk_278DDB390;
  v30[4] = v11;
  v30[5] = a3;
  v30[6] = a2;
  v12 = v30;
  sub_24397A778(v12, v13, v14, v15, v16, v17, v18);

  result = v11->_rowsForTopLevelContainerStructs.__begin_[a3];
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)rootColumnForStruct:(unint64_t)a3
{
  objc_msgSend_createRowReaderForStruct_(self, a2, a3, v3, v4, v5, v6);
  v16 = *(self->_structToReaderBatchPair.__begin_ + 2 * a3 + 1);
  if (!v16 || (v17 = **v16, (result = __dynamic_cast(v16, &unk_2856A2580, &unk_2856A25F0, 0)) == 0))
  {
    v19 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v10, v11, v12, v13, v14, v15);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v19, v20, a2, self, @"CKXORCReaderWriter.mm", 327, @"Root column not found");

    return 0;
  }

  return result;
}

- (BOOL)setReadableStorage:(id)a3 error:(id *)a4
{
  v7 = a3;
  if (self->_storage == v7)
  {
    v13 = 1;
  }

  else
  {
    objc_storeStrong(&self->_storage, a3);
    v13 = objc_msgSend__setInputWithError_(self, v8, a4, v9, v10, v11, v12);
  }

  return v13;
}

- (BOOL)_setInputWithError:(id *)a3
{
  ptr = self->_reader.__ptr_;
  self->_reader.__ptr_ = 0;
  if (ptr)
  {
    (*(*ptr + 8))(ptr, a2);
  }

  begin = self->_structToReaderBatchPair.__begin_;
  for (i = self->_structToReaderBatchPair.__end_; i != begin; sub_24398088C(i))
  {
    i -= 2;
  }

  self->_structToReaderBatchPair.__end_ = begin;
  v12 = self->_rowsForTopLevelContainerStructs.__begin_;
  for (j = self->_rowsForTopLevelContainerStructs.var0; j != v12; --j)
  {
    v14 = *(j - 1);
  }

  self->_rowsForTopLevelContainerStructs.var0 = v12;
  self->_loadCount = 0;
  v18 = 0;
  ReaderIfNecessaryWithError = objc_msgSend_createReaderIfNecessaryWithError_(self, a2, &v18, v3, v4, v5, v6);
  v16 = v18;
  if (a3 && (ReaderIfNecessaryWithError & 1) == 0)
  {
    v16 = v16;
    *a3 = v16;
  }

  return ReaderIfNecessaryWithError;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)rootStructWithType:(SEL)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_24397B300;
  v25[3] = &unk_278DDB3B8;
  v25[4] = self;
  v26 = &v27;
  v7 = v25;
  v8 = (*(*self->_reader.__ptr_ + 24))(self->_reader.__ptr_);
  *(v26[1] + 24) = v8;

  if (v28[3])
  {
    v15 = objc_msgSend_schema(self, v9, v10, v11, v12, v13, v14);
    v21 = sub_243987864(v15, a4, v16, v17, v18, v19, v20);

    retstr->var0 = a4;
    p_var1 = &retstr->var1;
    if (v21)
    {
      *p_var1 = xmmword_2439934B0;
    }

    else
    {
      *p_var1 = 0;
      p_var1[1] = 0;
    }
  }

  else
  {
    retstr->var0 = 0;
    retstr->var1 = -1;
    retstr->var2 = -1;
  }

  _Block_object_dispose(&v27, 8);
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)referencedStructForReference:(SEL)a3 inStruct:(unint64_t)a4
{
  v12 = objc_msgSend_schema(self, a3, a4, a5, v5, v6, v7);
  v18 = sub_243987478(v12, a4, v13, v14, v15, v16, v17);

  result = objc_msgSend_structReferenceColumnForReference_(self, v19, a4, v20, v21, v22, v23);
  if (result && (v29 = result, result = objc_msgSend_offsetInCurrentBatchForRow_forStruct_(self, v25, a5->var2, a5->var0, v26, v27, v28), *(&result->var0 + v29[1].var2)))
  {
    result = objc_msgSend_offsetInCurrentBatchForRow_forStruct_(self, v30, a5->var2, a5->var0, v31, v32, v33);
    v34 = a5->var2 + *(v29[4].var0 + 8 * result);
    retstr->var0 = v18;
    retstr->var1 = 0;
  }

  else
  {
    v34 = -1;
    retstr->var0 = 0;
    retstr->var1 = -1;
  }

  retstr->var2 = v34;
  return result;
}

- (BOOL)referenceIsNull:(unint64_t)a3 inStruct:(id *)a4
{
  v11 = objc_msgSend_schema(self, a2, a3, a4, v4, v5, v6);
  v17 = sub_243987104(v11, a3, v12, v13, v14, v15, v16);

  if (v17 == 1)
  {
    v31 = objc_msgSend_structReferenceColumnForReference_(self, v18, a3, v20, v21, v22, v23);
    if (!v31)
    {
      return 1;
    }
  }

  else
  {
    if (v17 != 2)
    {
      goto LABEL_8;
    }

    v24 = objc_msgSend_schema(self, v18, v19, v20, v21, v22, v23);
    v30 = sub_2439871D0(v24, a3, v25, v26, v27, v28, v29);

    if ((v30 - 1) >= 2)
    {
      if (!v30 || v30 == 3)
      {
        v31 = objc_msgSend_listColumnForReference_(self, v18, a3, v20, v21, v22, v23);
        if (!v31)
        {
          return 1;
        }

        return *(*(v31 + 40) + objc_msgSend_offsetInCurrentBatchForRow_forStruct_(self, v32, a4->var2, a4->var0, v33, v34, v35)) == 0;
      }

LABEL_8:
      v37 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v18, v19, v20, v21, v22, v23);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v37, v38, a2, self, @"CKXORCReaderWriter.mm", 425, @"Invalid field type");

      return 0;
    }

    v31 = objc_msgSend_valueColumnForField_(self, v18, a3, v20, v21, v22, v23);
    if (!v31)
    {
      return 1;
    }
  }

  return *(*(v31 + 40) + objc_msgSend_offsetInCurrentBatchForRow_forStruct_(self, v32, a4->var2, a4->var0, v33, v34, v35)) == 0;
}

- ($3CC19D079FD0B010EE84973AA846B91B)referencedListForReference:(SEL)a3 inStruct:(unint64_t)a4
{
  v12 = objc_msgSend_schema(self, a3, a4, a5, v5, v6, v7);
  v18 = sub_2439871D0(v12, a4, v13, v14, v15, v16, v17);

  if (v18)
  {
    v26 = -1;
  }

  else
  {
    v27 = objc_msgSend_schema(self, v20, v21, v22, v23, v24, v25);
    v26 = sub_243987518(v27, a4, v28, v29, v30, v31, v32);
  }

  if (a5->var1 == 1)
  {
    result = objc_msgSend_rowsForStructColumn_(self, v20, v26, v22, v23, v24, v25);
    v33 = 1;
    var2 = a4;
  }

  else
  {
    v33 = 0;
    var2 = a5->var2;
  }

  retstr->var0 = v26;
  retstr->var1 = a4;
  retstr->var2 = v33;
  retstr->var3 = var2;
  return result;
}

- (int64_t)lengthForList:(id *)a3
{
  v8 = a2;
  v10 = objc_msgSend_schema(self, a2, a3, v3, v4, v5, v6);
  if (v10)
  {
    v11 = *(v10[10] + 56 * a3->var1 + 16);
  }

  else
  {
    v11 = 0;
  }

  v18 = objc_msgSend_schema(self, v12, v13, v14, v15, v16, v17);
  v24 = sub_2439871D0(v18, a3->var1, v19, v20, v21, v22, v23);

  var3 = a3->var3;
  if ((v24 - 1) < 2)
  {
    if (a3->var2 == 1)
    {
      v54 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v25, v26, v27, v28, v29, v30);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v54, v55, v8, self, @"CKXORCReaderWriter.mm", 472, @"Invalid list");
    }

    v32 = objc_msgSend_valueColumnForField_(self, v25, a3->var1, v27, v28, v29, v30);
    if (!v32)
    {
      return 0;
    }

    v33 = **v32;
    v34 = __dynamic_cast(v32, &unk_2856A2580, &unk_2856A25C0, 0);
    if (!v34)
    {
      return 0;
    }

    return *(v34[17] + 8 * objc_msgSend_offsetInCurrentBatchForRow_forStruct_(self, v35, var3, v11, v36, v37, v38));
  }

  else
  {
    if (v24)
    {
      if (v24 != 3)
      {
        return v8;
      }

LABEL_14:
      v46 = objc_msgSend_listColumnForReference_(self, v25, a3->var1, v27, v28, v29, v30);
      if (v46)
      {
        v51 = v46;
        v52 = objc_msgSend_offsetInCurrentBatchForRow_forStruct_(self, v47, var3, v11, v48, v49, v50);
        return *(*(v51 + 96) + 8 * v52 + 8) - *(*(v51 + 96) + 8 * v52);
      }

      return 0;
    }

    if (a3->var2 != 1)
    {
      goto LABEL_14;
    }

    v39 = objc_msgSend_rowsForStructColumn_(self, v25, a3->var0, v27, v28, v29, v30);
    v8 = objc_msgSend_count(v39, v40, v41, v42, v43, v44, v45);
  }

  return v8;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)referencedStructAtIndex:(SEL)a3 inList:(int64_t)a4
{
  if (a5->var0 == -1)
  {
    v49 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a3, a4, a5, v5, v6, v7);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v49, v50, a3, self, @"CKXORCReaderWriter.mm", 488, @"Invalid struct");
  }

  v13 = *&a5->var2;
  v55 = *&a5->var0;
  v56 = v13;
  if (objc_msgSend_lengthForList_(self, a3, &v55, a5, v5, v6, v7) <= a4)
  {
    v51 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v14, v15, v16, v17, v18, v19);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v51, v52, a3, self, @"CKXORCReaderWriter.mm", 491, @"Index out of range");
  }

  if (a5->var2 == 1)
  {
    v20 = objc_msgSend_rowsForStructColumn_(self, v14, a5->var0, v16, v17, v18, v19);
    v61 = 0;
    v62 = &v61;
    v63 = 0x2020000000;
    v64 = 0x7FFFFFFFFFFFFFFFLL;
    v60[0] = 0;
    v60[1] = v60;
    v60[2] = 0x2020000000;
    v60[3] = 0;
    *&v55 = MEMORY[0x277D85DD0];
    *(&v55 + 1) = 3221225472;
    *&v56 = sub_243980794;
    *(&v56 + 1) = &unk_278DDB458;
    v58 = &v61;
    v59 = a4;
    v57 = v60;
    objc_msgSend_enumerateRangesUsingBlock_(v20, v21, &v55, v22, v23, v24, v25);
    v30 = v62[3];
    if (v30 == 0x7FFFFFFFFFFFFFFFLL)
    {
      objc_msgSend_raise_format_(MEMORY[0x277CBEAD8], v26, *MEMORY[0x277CBE730], @"Index %lu out of range", v27, v28, v29, a4);
      v30 = v62[3];
    }

    _Block_object_dispose(v60, 8);
    _Block_object_dispose(&v61, 8);
  }

  else
  {
    v32 = objc_msgSend_schema(self, v14, v15, v16, v17, v18, v19);
    if (v32)
    {
      v33 = *(v32[10] + 56 * a5->var1 + 16);
    }

    else
    {
      v33 = 0;
    }

    v45 = objc_msgSend_listColumnForReference_(self, v34, a5->var1, v35, v36, v37, v38);
    if (!v45)
    {
      v53 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v39, v40, v41, v42, v43, v44);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v53, v54, a3, self, @"CKXORCReaderWriter.mm", 501, @"Unexpected null struct list column in reader");
    }

    v46 = *(*(v45 + 96) + 8 * objc_msgSend_offsetInCurrentBatchForRow_forStruct_(self, v39, a5->var3, v33, v42, v43, v44));
    v47 = *(v45 + 120);
    v48 = **v47;
    result = __dynamic_cast(v47, &unk_2856A2580, &unk_2856A2590, 0);
    v30 = a5->var3 + *(result[4].var0 + 8 * v46 + 8 * a4);
  }

  retstr->var0 = a5->var0;
  retstr->var1 = 0;
  retstr->var2 = v30;
  return result;
}

- (unint64_t)valueSizeForField:(unint64_t)a3
{
  v8 = objc_msgSend_schema(self, a2, a3, v3, v4, v5, v6);
  v14 = sub_243987270(v8, a3, v9, v10, v11, v12, v13);

  return v14;
}

- (void)copyData:(void *)a3 forField:(unint64_t)a4 inStruct:(id *)a5
{
  if (a5->var1 == 1)
  {
    v33 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, a3, a4, a5, v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v33, v34, a2, self, @"CKXORCReaderWriter.mm", 522, @"Invalid struct");
  }

  v11 = objc_msgSend_valueColumnForField_(self, a2, a4, a4, a5, v5, v6);
  if (v11)
  {
    v12 = **v11;
    v13 = __dynamic_cast(v11, &unk_2856A2580, &unk_2856A2590, 0);
    if (v13)
    {
      v18 = v13;
      var2 = a5->var2;
      v20 = objc_msgSend_offsetInCurrentBatchForRow_forStruct_(self, v14, var2, a5->var0, v15, v16, v17);
      if (a3)
      {
        if (*(v18[5] + v20))
        {
          v26 = objc_msgSend_valueSizeForField_(self, v21, a4, v22, v23, v24, v25);
          v31 = (v18[12] + 8 * objc_msgSend_offsetInCurrentBatchForRow_forStruct_(self, v27, var2, a5->var0, v28, v29, v30));

          memcpy(a3, v31, v26);
        }
      }
    }
  }
}

- (void)copyData:(void *)a3 forList:(id *)a4
{
  v8 = a3;
  if (a4->var0 != -1)
  {
    v98 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, a3, a4, v4, v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v98, v99, a2, self, @"CKXORCReaderWriter.mm", 535, @"Invalid struct");
  }

  if (a4->var2 == 1)
  {
    v100 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, a3, a4, v4, v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v100, v101, a2, self, @"CKXORCReaderWriter.mm", 536, @"Invalid list");
  }

  v11 = objc_msgSend_schema(self, a2, a3, a4, v4, v5, v6);
  v17 = sub_2439871D0(v11, a4->var1, v12, v13, v14, v15, v16);

  if ((v17 - 1) < 2)
  {
    v47 = objc_msgSend_schema(self, v18, v19, v20, v21, v22, v23);
    if (v47)
    {
      v48 = *(v47[10] + 56 * a4->var1 + 16);
    }

    else
    {
      v48 = 0;
    }

    v54 = objc_msgSend_valueColumnForField_(self, v49, a4->var1, v50, v51, v52, v53);
    if (v54)
    {
      v55 = **v54;
      v56 = __dynamic_cast(v54, &unk_2856A2580, &unk_2856A25C0, 0);
      if (v56)
      {
        v61 = v56;
        var3 = a4->var3;
        v63 = objc_msgSend_offsetInCurrentBatchForRow_forStruct_(self, v57, var3, v48, v58, v59, v60);
        if (v8)
        {
          if (*(v61[5] + v63))
          {
            v68 = *(v61[12] + 8 * objc_msgSend_offsetInCurrentBatchForRow_forStruct_(self, v64, var3, v48, v65, v66, v67));
            v73 = *(v61[17] + 8 * objc_msgSend_offsetInCurrentBatchForRow_forStruct_(self, v69, var3, v48, v70, v71, v72));

            memcpy(v8, v68, v73);
          }
        }
      }
    }
  }

  else if (v17)
  {
    if (v17 == 3)
    {
      v24 = objc_msgSend_schema(self, v18, v19, v20, v21, v22, v23);
      v25 = v24 ? *(v24[10] + 56 * a4->var1 + 16) : 0;

      v31 = objc_msgSend_listColumnForReference_(self, v26, a4->var1, v27, v28, v29, v30);
      if (v31)
      {
        v36 = v31;
        v37 = a4->var3;
        v38 = objc_msgSend_offsetInCurrentBatchForRow_forStruct_(self, v32, v37, v25, v33, v34, v35);
        if (v8)
        {
          if (*(v36[5] + v38))
          {
            v44 = v36[15];
            if (v44)
            {
              v45 = **v44;
              v46 = __dynamic_cast(v44, &unk_2856A2580, &unk_2856A2590, 0);
            }

            else
            {
              v46 = 0;
            }

            v75 = *&a4->var2;
            v103[0] = *&a4->var0;
            v103[1] = v75;
            v76 = objc_msgSend_lengthForList_(self, v39, v103, v40, v41, v42, v43);
            v81 = *(v36[12] + 8 * objc_msgSend_offsetInCurrentBatchForRow_forStruct_(self, v77, v37, v25, v78, v79, v80));
            v87 = objc_msgSend_valueSizeForField_(self, v82, a4->var1, v83, v84, v85, v86);
            if (v76 >= 1)
            {
              v94 = v87;
              v95 = 8 * v81;
              do
              {
                if (v94 == 8)
                {
                  *v8 = *(v46[12] + v95);
                }

                else
                {
                  v96 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v88, v89, v90, v91, v92, v93);
                  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v96, v97, a2, self, @"CKXORCReaderWriter.mm", 580, @"Array integer size %lu not supported", v94);
                }

                ++v8;
                v95 += 8;
                --v76;
              }

              while (v76);
            }
          }
        }
      }
    }
  }

  else
  {
    v102 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v18, v19, v20, v21, v22, v23);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v102, v74, a2, self, @"CKXORCReaderWriter.mm", 542, @"Invalid list type");
  }
}

- (void)structColumnForStruct:(unint64_t)a3
{
  result = **(objc_msgSend_rootColumnForStruct_(self, a2, a3, v3, v4, v5, v6) + 80);
  if (result)
  {
    v8 = **result;

    return __dynamic_cast(result, &unk_2856A2580, &unk_2856A25F0, 0);
  }

  return result;
}

- (void)structReferenceColumnForReference:(unint64_t)a3
{
  v9 = objc_msgSend_schema(self, a2, a3, v3, v4, v5, v6);
  if (v9)
  {
    v10 = *(v9[10] + 56 * a3 + 16);
  }

  else
  {
    v10 = 0;
  }

  v16 = objc_msgSend_structColumnForStruct_(self, v11, v10, v12, v13, v14, v15);
  v23 = objc_msgSend_helpers(self, v17, v18, v19, v20, v21, v22);
  v29 = objc_msgSend_structReferenceIndexForReference_(v23, v24, a3, v25, v26, v27, v28);

  v30 = *(v16 + 80);
  if (v29 >= (*(v16 + 88) - v30) >> 3)
  {
    return 0;
  }

  v31 = *(v30 + 8 * v29);
  if (!v31)
  {
    return 0;
  }

  v32 = **v31;

  return __dynamic_cast(v31, &unk_2856A2580, &unk_2856A2590, 0);
}

- (void)listColumnForReference:(unint64_t)a3
{
  v9 = objc_msgSend_schema(self, a2, a3, v3, v4, v5, v6);
  if (v9)
  {
    v10 = *(v9[10] + 56 * a3 + 16);
  }

  else
  {
    v10 = 0;
  }

  v16 = objc_msgSend_structColumnForStruct_(self, v11, v10, v12, v13, v14, v15);
  v23 = objc_msgSend_helpers(self, v17, v18, v19, v20, v21, v22);
  v29 = objc_msgSend_listColumnIndexForReference_(v23, v24, a3, v25, v26, v27, v28);

  v30 = *(v16 + 80);
  if (v29 >= (*(v16 + 88) - v30) >> 3)
  {
    return 0;
  }

  v31 = *(v30 + 8 * v29);
  if (!v31)
  {
    return 0;
  }

  v32 = **v31;

  return __dynamic_cast(v31, &unk_2856A2580, &unk_2856A2608, 0);
}

- (void)valueColumnForField:(unint64_t)a3
{
  v9 = objc_msgSend_schema(self, a2, a3, v3, v4, v5, v6);
  if (v9)
  {
    v10 = *(v9[10] + 56 * a3 + 16);
  }

  else
  {
    v10 = 0;
  }

  v16 = objc_msgSend_structColumnForStruct_(self, v11, v10, v12, v13, v14, v15);
  v23 = objc_msgSend_helpers(self, v17, v18, v19, v20, v21, v22);
  v29 = objc_msgSend_valueColumnIndexForField_(v23, v24, a3, v25, v26, v27, v28);

  v30 = *(v16 + 80);
  if (v29 >= (*(v16 + 88) - v30) >> 3)
  {
    return 0;
  }

  else
  {
    return *(v30 + 8 * v29);
  }
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 4) = 0;
  *(self + 5) = 0;
  *(self + 3) = 0;
  *(self + 7) = 0;
  *(self + 8) = 0;
  *(self + 6) = 0;
  return self;
}

@end