@interface CKXORCWriter
- ($3CC19D079FD0B010EE84973AA846B91B)beginReferencedListForReference:(SEL)reference inStruct:(unint64_t)struct;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)appendRowForStruct:(SEL)struct;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)beginAppendedListStructInList:(SEL)list;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)beginReferencedStructForReference:(SEL)reference inStruct:(unint64_t)struct;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)beginRootStructWithType:(SEL)type error:(unint64_t)error;
- (BOOL)commitBatchIfNeededWithError:(id *)error;
- (BOOL)commitBatchWithError:(id *)error;
- (BOOL)createWriterWithError:(id *)error;
- (BOOL)flushWithError:(id *)error;
- (BOOL)growCurrentBatchToIncludeBatchOffset:(unint64_t)offset;
- (BOOL)growCurrentBatchToIncludeRow:(unint64_t)row;
- (BOOL)setWritableStorage:(id)storage error:(id *)error;
- (CKXORCWriter)initWithSchema:(id)schema;
- (CKXORCWriter)initWithSchema:(id)schema helpers:(id)helpers options:(id)options;
- (id).cxx_construct;
- (unint64_t)offsetInCurrentBatchForRow:(unint64_t)row;
- (unint64_t)valueSizeForField:(unint64_t)field;
- (void)_appendData:(void *)data withValueSize:(unint64_t)size length:(unint64_t)length toRow:(unint64_t)row toList:(unint64_t)list;
- (void)assignStruct:(id *)struct toReference:(unint64_t)reference inStruct:(id *)inStruct;
- (void)commitStruct:(id *)struct;
- (void)expandColumn:(void *)column includingBatchOffset:(unint64_t)offset;
- (void)expandColumn:(void *)column includingRow:(unint64_t)row;
- (void)listColumnForReference:(unint64_t)reference;
- (void)resetColumnNulls:(void *)nulls inRange:(_NSRange)range;
- (void)rootColumn;
- (void)setData:(void *)data withEncoding:(const char *)encoding forField:(unint64_t)field inStruct:(id *)struct;
- (void)setData:(void *)data withLength:(unint64_t)length forList:(id *)list;
- (void)structColumnForStruct:(unint64_t)struct;
- (void)structReferenceColumnForReference:(unint64_t)reference;
- (void)updateNumberOfElementsForCurrentBatch;
- (void)valueColumnForField:(unint64_t)field;
@end

@implementation CKXORCWriter

- (CKXORCWriter)initWithSchema:(id)schema
{
  v4 = MEMORY[0x277CBEAD8];
  v5 = NSStringFromSelector(a2);
  objc_msgSend_raise_format_(v4, v6, *MEMORY[0x277CBE658], @"%@ is unavailable", v7, v8, v9, v5);

  return 0;
}

- (CKXORCWriter)initWithSchema:(id)schema helpers:(id)helpers options:(id)options
{
  schemaCopy = schema;
  helpersCopy = helpers;
  optionsCopy = options;
  if (!helpersCopy)
  {
    v22 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v11, v12, v13, v14, v15, v16);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v22, v23, a2, self, @"CKXORCReaderWriter.mm", 669, @"The ORC writer requires a helper object conforming to CKXORCHelpers");
  }

  v24.receiver = self;
  v24.super_class = CKXORCWriter;
  v18 = [(CKXWriterBase *)&v24 initWithSchema:schemaCopy];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_helpers, helpers);
    v20 = optionsCopy;
    if (!optionsCopy)
    {
      v20 = objc_opt_new();
    }

    objc_storeStrong(&v19->_options, v20);
    if (!optionsCopy)
    {
    }

    v19->_rootStructToken = -1;
  }

  return v19;
}

- (void)resetColumnNulls:(void *)nulls inRange:(_NSRange)range
{
  v4 = *(nulls + 1);
  if (v4 >= range.location + range.length)
  {
    v4 = range.location + range.length;
  }

  memset((*(nulls + 5) + range.location), (*(nulls + 64) & 1) == 0, v4 - range.location);
}

- (BOOL)createWriterWithError:(id *)error
{
  v25[8] = *MEMORY[0x277D85DE8];
  v9 = objc_msgSend_storage(self, a2, error, v3, v4, v5, v6);

  if (!v9)
  {
    v10 = MEMORY[0x277CBEAD8];
    v11 = NSStringFromSelector(sel_setWritableStorage_error_);
    objc_msgSend_raise_format_(v10, v12, *MEMORY[0x277CBE660], @"Call %@ before writing data", v13, v14, v15, v11);
  }

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_24397CD18;
  v25[3] = &unk_278DDB318;
  v25[4] = self;
  v25[5] = a2;
  v16 = v25;
  sub_24397CD18(v16, v17, v18, v19, v20, v21, v22);

  v23 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)updateNumberOfElementsForCurrentBatch
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ptr = self->_currentBatch.__ptr_;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_24397D4B4;
  v5[3] = &unk_278DDB3E0;
  v5[4] = &v6;
  objc_msgSend_enumerateColumn_includingRoot_shallow_withBlock_(CKXORCUtilities, a2, ptr, 0, 1, v5, v2);
  *(self->_currentBatch.__ptr_ + 2) = v7[3];
  _Block_object_dispose(&v6, 8);
}

- (BOOL)commitBatchWithError:(id *)error
{
  v77 = *MEMORY[0x277D85DE8];
  v8 = objc_msgSend_writeError(self, a2, error, v3, v4, v5, v6);

  v15 = MEMORY[0x277CBC880];
  v16 = MEMORY[0x277CBC840];
  if (v8)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v17 = *v16;
    if (os_log_type_enabled(*v16, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2438A8000, v17, OS_LOG_TYPE_FAULT, "BUG IN CLOUDKIT: Calling commitBatch while writeError is present", buf, 2u);
    }
  }

  if (self->_uncommittedStructs.__tree_.__size_)
  {
    if (*v15 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v18 = *v16;
    if (os_log_type_enabled(*v16, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2438A8000, v18, OS_LOG_TYPE_FAULT, "BUG IN CLOUDKIT: Committing batch while uncommitted structs are still present", buf, 2u);
    }
  }

  objc_msgSend_updateNumberOfElementsForCurrentBatch(self, v9, v10, v11, v12, v13, v14);
  v24 = *(self->_currentBatch.__ptr_ + 2);
  if (v24)
  {
    v75[0] = MEMORY[0x277D85DD0];
    v75[1] = 3221225472;
    v75[2] = sub_24397DA2C;
    v75[3] = &unk_278DDB408;
    v75[4] = self;
    objc_msgSend_enumerateAllColumnsWithBlock_(self, v19, v75, v20, v21, v22, v23);
    v74[0] = MEMORY[0x277D85DD0];
    v74[1] = 3221225472;
    v74[2] = sub_24397DAEC;
    v74[3] = &unk_278DDB2F0;
    v74[4] = self;
    v25 = v74;
    sub_24397DAEC(v25, v26, v27, v28, v29, v30, v31);

    objc_msgSend_enumerateAllColumnsWithBlock_(self, v32, &unk_2856A2DD0, v33, v34, v35, v36);
    sub_243980924(self->_uncommittedStructs.__tree_.__end_node_.__left_);
    self->_uncommittedStructs.__tree_.__begin_node_ = &self->_uncommittedStructs.__tree_.__end_node_;
    self->_uncommittedStructs.__tree_.__size_ = 0;
    self->_uncommittedStructs.__tree_.__end_node_.__left_ = 0;
    (*(*self->_currentBatch.__ptr_ + 32))(self->_currentBatch.__ptr_);
    objc_msgSend_enumerateAllColumnsWithBlock_(self, v37, &unk_2856A2DF0, v38, v39, v40, v41);
    v73[0] = MEMORY[0x277D85DD0];
    v73[1] = 3221225472;
    v73[2] = sub_24397DDB8;
    v73[3] = &unk_278DDB408;
    v73[4] = self;
    objc_msgSend_enumerateAllColumnsWithBlock_(self, v42, v73, v43, v44, v45, v46);
    v53 = objc_msgSend_startingRowForCurrentBatch(self, v47, v48, v49, v50, v51, v52);
    objc_msgSend_setStartingRowForCurrentBatch_(self, v54, v53 + v24, v55, v56, v57, v58);
    v65 = objc_msgSend_commitCount(self, v59, v60, v61, v62, v63, v64);
    objc_msgSend_setCommitCount_(self, v66, v65 + 1, v67, v68, v69, v70);
  }

  result = 1;
  v72 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)commitBatchIfNeededWithError:(id *)error
{
  if (self->_uncommittedStructs.__tree_.__size_)
  {
    return 1;
  }

  objc_msgSend_updateNumberOfElementsForCurrentBatch(self, a2, error, v3, v4, v5, v6);
  ptr = self->_currentBatch.__ptr_;
  v11 = *(ptr + 1);
  v10 = *(ptr + 2);
  v18 = objc_msgSend_options(self, v12, v13, v14, v15, v16, v17);
  objc_msgSend_batchCommitMarginPercentage(v18, v19, v20, v21, v22, v23, v24);
  v26 = (v25 * v11);

  if (v10 + v26 < v11)
  {
    return 1;
  }

  return objc_msgSend_commitBatchWithError_(self, v27, error, v28, v29, v30, v31);
}

- (BOOL)growCurrentBatchToIncludeBatchOffset:(unint64_t)offset
{
  v65 = *MEMORY[0x277D85DE8];
  ptr = self->_currentBatch.__ptr_;
  v11 = *(ptr + 1);
  if (v11 > offset)
  {
    v49 = *(ptr + 1);
  }

  else
  {
    v12 = objc_msgSend_options(self, a2, offset, v3, v4, v5, v6);
    v19 = objc_msgSend_batchSize(v12, v13, v14, v15, v16, v17, v18);

    LOBYTE(v12) = offset + 1 > v19;
    v26 = objc_msgSend_options(self, v20, v21, v22, v23, v24, v25);
    v33 = v26;
    if (v12)
    {
      v34 = objc_msgSend_batchResizeIncrement(v26, v27, v28, v29, v30, v31, v32);
      v41 = objc_msgSend_options(self, v35, v36, v37, v38, v39, v40);
      v48 = objc_msgSend_batchResizeIncrement(v41, v42, v43, v44, v45, v46, v47) * ((offset + 1) / v34 + 1);
    }

    else
    {
      v48 = objc_msgSend_batchSize(v26, v27, v28, v29, v30, v31, v32);
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v50 = *MEMORY[0x277CBC840];
    if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218240;
      v62 = v11;
      v63 = 2048;
      v64 = v48;
      _os_log_debug_impl(&dword_2438A8000, v50, OS_LOG_TYPE_DEBUG, "Growing ORC write batch to size %llu->%llu", buf, 0x16u);
    }

    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = sub_24397E13C;
    v60[3] = &unk_278DDB430;
    v60[5] = v48;
    v60[6] = a2;
    v60[4] = self;
    objc_msgSend_enumerateAllColumnsWithBlock_(self, v51, v60, v52, v53, v54, v55);
    v49 = *(self->_currentBatch.__ptr_ + 1);
  }

  if (v49 <= offset)
  {
    v58 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, offset, v3, v4, v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v58, v59, a2, self, @"CKXORCReaderWriter.mm", 880, @"Incorrect rows loaded: batch offset %llu does not fit in range %d->%llu", offset, 0, v49);
  }

  result = v11 <= offset;
  v57 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)growCurrentBatchToIncludeRow:(unint64_t)row
{
  if (objc_msgSend_startingRowForCurrentBatch(self, a2, row, v3, v4, v5, v6) > row)
  {
    return 0;
  }

  v17 = row - objc_msgSend_startingRowForCurrentBatch(self, v9, v10, v11, v12, v13, v14);

  return objc_msgSend_growCurrentBatchToIncludeBatchOffset_(self, v16, v17, v18, v19, v20, v21);
}

- (unint64_t)offsetInCurrentBatchForRow:(unint64_t)row
{
  if (objc_msgSend_startingRowForCurrentBatch(self, a2, row, v3, v4, v5, v6) > row)
  {
    v23 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v10, v11, v12, v13, v14, v15);
    v30 = objc_msgSend_startingRowForCurrentBatch(self, v24, v25, v26, v27, v28, v29);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v23, v31, a2, self, @"CKXORCReaderWriter.mm", 899, @"Can't access row (%llu) smaller than the current batch starting row (%llu)", row, v30);
  }

  objc_msgSend_growCurrentBatchToIncludeRow_(self, v10, row, v12, v13, v14, v15);
  return row - objc_msgSend_startingRowForCurrentBatch(self, v16, v17, v18, v19, v20, v21);
}

- (void)expandColumn:(void *)column includingBatchOffset:(unint64_t)offset
{
  if (column)
  {
    v4 = *(column + 2);
    if (v4 <= offset + 1)
    {
      v5 = offset + 1;
    }

    else
    {
      v5 = *(column + 2);
    }

    *(column + 2) = v5;
    if (*(column + 64) == 1)
    {
      *(*(column + 5) + offset) = 1;
    }

    v6 = **column;
    v7 = __dynamic_cast(column, &unk_2856A2580, &unk_2856A2608, 0);
    if (v7)
    {
      v8 = v4 + 1 > v5;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      v9 = (v7[12] + 8 * v4);
      v12 = *v9;
      v10 = v9 + 2;
      v11 = v12;
      v13 = v4 + 2;
      if (v4 + 2 <= v5 + 1)
      {
        v13 = v5 + 1;
      }

      v14 = v13 + ~v4;
      v15 = (v13 - v4) & 0xFFFFFFFFFFFFFFFELL;
      v16 = vdupq_n_s64(v14 - 1);
      v17 = 1;
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v17 - 1), xmmword_24398C940)));
        if (v18.i8[0])
        {
          *(v10 - 1) = v11;
        }

        if (v18.i8[4])
        {
          *v10 = v11;
        }

        v17 += 2;
        v10 += 2;
        v15 -= 2;
      }

      while (v15);
    }
  }
}

- (void)expandColumn:(void *)column includingRow:(unint64_t)row
{
  v10 = objc_msgSend_offsetInCurrentBatchForRow_(self, a2, row, row, v4, v5, v6);

  objc_msgSend_expandColumn_includingBatchOffset_(self, v9, column, v10, v11, v12, v13);
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)appendRowForStruct:(SEL)struct
{
  v12 = objc_msgSend_writeError(self, struct, a4, v4, v5, v6, v7);

  if (v12)
  {
    retstr->var0 = 0;
    retstr->var1 = -1;
    retstr->var2 = -1;
    return result;
  }

  v19 = objc_msgSend_structColumnForStruct_(self, v14, a4, v15, v16, v17, v18);
  v26 = objc_msgSend_options(self, v20, v21, v22, v23, v24, v25);
  v33 = objc_msgSend_testRowsInterspersedWithNulls(v26, v27, v28, v29, v30, v31, v32);

  if (v33)
  {
    if (!arc4random_uniform(0xAu))
    {
      v40 = *(v19 + 16) + arc4random_uniform(3u) + 1;
      if (*(v19 + 8) > (v40 + 1))
      {
        *(v19 + 16) = v40;
      }
    }
  }

  v159 = 0;
  v160 = &v159;
  v161 = 0x2020000000;
  v162 = 0;
  v41 = objc_msgSend_schema(self, v34, v35, v36, v37, v38, v39);
  v48 = objc_msgSend_rootStructToken(self, v42, v43, v44, v45, v46, v47);
  if (sub_243987864(v41, v48, v49, v50, v51, v52, v53))
  {
    v60 = objc_msgSend_schema(self, v54, v55, v56, v57, v58, v59);
    v67 = objc_msgSend_rootStructToken(self, v61, v62, v63, v64, v65, v66);
    v73 = sub_2439875B4(v60, v67, v68, v69, v70, v71, v72);

    if (v73 == 1)
    {
      v80 = objc_msgSend_schema(self, v74, v75, v76, v77, v78, v79);
      v87 = objc_msgSend_rootStructToken(self, v81, v82, v83, v84, v85, v86);
      v92 = sub_2439876DC(v80, 0, v87, v88, v89, v90, v91);

      v160[3] = 0;
      if (v92 == a4)
      {
        ptr = self->_currentBatch.__ptr_;
        v158[0] = MEMORY[0x277D85DD0];
        v158[1] = 3221225472;
        v158[2] = sub_24397E860;
        v158[3] = &unk_278DDB3E0;
        v158[4] = &v159;
        objc_msgSend_enumerateColumn_includingRoot_shallow_withBlock_(CKXORCUtilities, v93, ptr, 0, 1, v158, v97);
      }

      else
      {
        v112 = *(objc_msgSend_structColumnForStruct_(self, v93, v92, v94, v95, v96, v97) + 16);
        v118 = *(objc_msgSend_structColumnForStruct_(self, v113, a4, v114, v115, v116, v117) + 16);
        v119 = v112 - 1;
        if (!v112)
        {
          v119 = 0;
        }

        if (v118 <= v119)
        {
          v118 = v119;
        }

        v160[3] = v118;
      }

      v120 = objc_msgSend_startingRowForCurrentBatch(self, v99, v100, v101, v102, v103, v104);
      v111 = v160;
      v106 = v160[3] + v120;
      goto LABEL_19;
    }
  }

  else
  {
  }

  v106 = *(v19 + 16) + objc_msgSend_startingRowForCurrentBatch(self, v74, v75, v76, v77, v78, v79);
  v111 = v160;
LABEL_19:
  v111[3] = v106;
  objc_msgSend_growCurrentBatchToIncludeRow_(self, v105, v106, v107, v108, v109, v110);
  if ((*(v19 + 16) + 1) > *(v19 + 8))
  {
    v156 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v121, v122, v123, v124, v125, v126);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v156, v157, struct, self, @"CKXORCReaderWriter.mm", 974, @"Number of elements in batch exceeds capacity");
  }

  retstr->var0 = a4;
  retstr->var1 = 0;
  v127 = v160[3];
  retstr->var2 = v127;
  objc_msgSend_expandColumn_includingRow_(self, v121, v19, v127, v124, v125, v126);
  v134 = objc_msgSend_rootColumn(self, v128, v129, v130, v131, v132, v133);
  v140 = objc_msgSend_offsetInCurrentBatchForRow_(self, v135, v160[3], v136, v137, v138, v139);
  v147 = objc_msgSend_schema(self, v141, v142, v143, v144, v145, v146);
  v154 = objc_msgSend_helpers(self, v148, v149, v150, v151, v152, v153);
  objc_msgSend_setDefaultValuesForStruct_withRootColumn_atOffset_withSchema_orcHelpers_(CKXORCUtilities, v155, a4, v134, v140, v147, v154);

  _Block_object_dispose(&v159, 8);
  return result;
}

- (void)rootColumn
{
  result = self->_currentBatch.__ptr_;
  if (result)
  {
    v3 = **result;
    return __dynamic_cast(result, &unk_2856A2580, &unk_2856A25F0, 0);
  }

  return result;
}

- (BOOL)setWritableStorage:(id)storage error:(id *)error
{
  storageCopy = storage;
  ptr = self->_writer.__ptr_;
  self->_writer.__ptr_ = 0;
  if (ptr)
  {
    (*(*ptr + 8))(ptr);
  }

  v7 = self->_outputStream.__ptr_;
  self->_outputStream.__ptr_ = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = self->_currentBatch.__ptr_;
  self->_currentBatch.__ptr_ = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  sub_243980924(self->_uncommittedStructs.__tree_.__end_node_.__left_);
  self->_uncommittedStructs.__tree_.__begin_node_ = &self->_uncommittedStructs.__tree_.__end_node_;
  self->_uncommittedStructs.__tree_.__size_ = 0;
  self->_uncommittedStructs.__tree_.__end_node_.__left_ = 0;
  self->_rootStructToken = 0;
  self->_startingRowForCurrentBatch = 0;
  self->_commitCount = 0;
  writeError = self->_writeError;
  self->_writeError = 0;

  storage = self->_storage;
  self->_storage = storageCopy;

  return 1;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)beginRootStructWithType:(SEL)type error:(unint64_t)error
{
  v40 = 0;
  WriterWithError = objc_msgSend_createWriterWithError_(self, type, &v40, a5, v5, v6, v7);
  v13 = v40;
  v19 = v13;
  if (WriterWithError)
  {
    objc_msgSend_setRootStructToken_(self, v14, error, v15, v16, v17, v18);
    v26 = objc_msgSend_schema(self, v20, v21, v22, v23, v24, v25);
    v32 = sub_243987864(v26, error, v27, v28, v29, v30, v31);

    if (v32)
    {
      retstr->var0 = error;
      *&retstr->var1 = xmmword_2439934B0;
    }

    else
    {
      retstr->var0 = 0;
      retstr->var1 = 0;
      retstr->var2 = 0;
      objc_msgSend_appendRowForStruct_(self, v33, error, v34, v35, v36, v37);
    }
  }

  else
  {
    if (a5)
    {
      v38 = v13;
      *a5 = v19;
    }

    retstr->var0 = 0;
    retstr->var1 = -1;
    retstr->var2 = -1;
  }

  return result;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)beginReferencedStructForReference:(SEL)reference inStruct:(unint64_t)struct
{
  if (a5->var1 == 1)
  {
    v36 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], reference, struct, a5, v5, v6, v7);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v36, v37, reference, self, @"CKXORCReaderWriter.mm", 1031, @"Invalid struct");
  }

  v12 = objc_msgSend_writeError(self, reference, struct, a5, v5, v6, v7);

  if (v12)
  {
    retstr->var0 = 0;
    retstr->var1 = -1;
    retstr->var2 = -1;
  }

  else
  {
    v20 = objc_msgSend_schema(self, v14, v15, v16, v17, v18, v19);
    v26 = sub_243987478(v20, struct, v21, v22, v23, v24, v25);

    retstr->var0 = 0;
    retstr->var1 = 0;
    retstr->var2 = 0;
    objc_msgSend_appendRowForStruct_(self, v27, v26, v28, v29, v30, v31);
    v40 = *&retstr->var0;
    var2 = retstr->var2;
    v38 = *&a5->var0;
    v39 = a5->var2;
    objc_msgSend_assignStruct_toReference_inStruct_(self, v32, &v40, struct, &v38, v33, v34);
    return sub_243980970(&self->_uncommittedStructs, &retstr->var0);
  }

  return result;
}

- ($3CC19D079FD0B010EE84973AA846B91B)beginReferencedListForReference:(SEL)reference inStruct:(unint64_t)struct
{
  v12 = objc_msgSend_writeError(self, reference, struct, a5, v5, v6, v7);

  if (v12)
  {
    *&retstr->var0 = xmmword_2439935B0;
    var2 = -1;
    retstr->var2 = -1;
  }

  else
  {
    v21 = objc_msgSend_schema(self, v14, v15, v16, v17, v18, v19);
    v27 = sub_2439871D0(v21, struct, v22, v23, v24, v25, v26);

    if (v27)
    {
      v34 = -1;
    }

    else
    {
      v35 = objc_msgSend_schema(self, v28, v29, v30, v31, v32, v33);
      v34 = sub_243987518(v35, struct, v36, v37, v38, v39, v40);
    }

    if (a5->var1 == 1)
    {
      retstr->var0 = v34;
      retstr->var1 = struct;
      retstr->var2 = 1;
      retstr->var3 = struct;
      return result;
    }

    var2 = a5->var2;
    retstr->var0 = v34;
    retstr->var1 = struct;
    retstr->var2 = 0;
  }

  retstr->var3 = var2;
  return result;
}

- (void)_appendData:(void *)data withValueSize:(unint64_t)size length:(unint64_t)length toRow:(unint64_t)row toList:(unint64_t)list
{
  lengthCopy = length;
  dataCopy = data;
  if (size != 8)
  {
    v50 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, data, size, length, row, list);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v50, v51, a2, self, @"CKXORCReaderWriter.mm", 1068, @"Array integer size %lu not supported", size);
  }

  v14 = objc_msgSend_writeError(self, a2, data, size, length, row, list);

  if (!v14)
  {
    goto LABEL_7;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v20 = *MEMORY[0x277CBC840];
  if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&dword_2438A8000, v20, OS_LOG_TYPE_FAULT, "BUG IN CLOUDKIT: Calling _appendData while writeError is present", buf, 2u);
    if (!lengthCopy)
    {
      return;
    }
  }

  else
  {
LABEL_7:
    if (!lengthCopy)
    {
      return;
    }
  }

  v21 = objc_msgSend_listColumnForReference_(self, v15, list, v16, v17, v18, v19);
  objc_msgSend_expandColumn_includingRow_(self, v22, v21, row, v23, v24, v25);
  v31 = v21[15];
  if (v31)
  {
    v32 = **v31;
    v33 = __dynamic_cast(v31, &unk_2856A2580, &unk_2856A2590, 0);
  }

  else
  {
    v33 = 0;
  }

  v40 = objc_msgSend_offsetInCurrentBatchForRow_(self, v26, row, v27, v28, v29, v30) + 1;
  v41 = *(v21[12] + 8 * v40);
  if (v41 != v33[2])
  {
    v52 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v34, v35, v36, v37, v38, v39);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v52, v53, a2, self, @"CKXORCReaderWriter.mm", 1090, @"Can't append to any list row other than the last one");
  }

  objc_msgSend_growCurrentBatchToIncludeBatchOffset_(self, v34, lengthCopy + v41 - 1, v36, v37, v38, v39);
  v46 = v41;
  v47 = lengthCopy;
  do
  {
    objc_msgSend_expandColumn_includingBatchOffset_(self, v42, v33, v46++, v43, v44, v45);
    --v47;
  }

  while (v47);
  if (v40 <= v21[2])
  {
    v48 = v21[12];
    do
    {
      *(v48 + 8 * v40++) += lengthCopy;
    }

    while (v40 <= v21[2]);
  }

  v49 = (v33[12] + 8 * v41);
  do
  {
    __dst = 0;
    memcpy(&__dst, dataCopy, size);
    *v49++ = __dst;
    dataCopy += size;
    --lengthCopy;
  }

  while (lengthCopy);
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)beginAppendedListStructInList:(SEL)list
{
  if (a4->var0 == -1)
  {
    v21 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], list, a4, v4, v5, v6, v7);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v21, v22, list, self, @"CKXORCReaderWriter.mm", 1112, @"Invalid struct");
  }

  v11 = objc_msgSend_writeError(self, list, a4, v4, v5, v6, v7);

  if (v11)
  {
    retstr->var0 = 0;
    retstr->var1 = -1;
    retstr->var2 = -1;
  }

  else
  {
    retstr->var0 = 0;
    retstr->var1 = 0;
    retstr->var2 = 0;
    objc_msgSend_appendRowForStruct_(self, v13, a4->var0, v14, v15, v16, v17);
    if (a4->var2 == 1)
    {

      return sub_243980970(&self->_uncommittedStructs, &retstr->var0);
    }

    else
    {
      var3 = a4->var3;
      v23 = retstr->var2 - var3;
      objc_msgSend__appendData_withValueSize_length_toRow_toList_(self, v18, &v23, 8, 1, var3, a4->var1);
      return sub_243980970(&self->_uncommittedStructs, &retstr->var0);
    }
  }

  return result;
}

- (unint64_t)valueSizeForField:(unint64_t)field
{
  v8 = objc_msgSend_schema(self, a2, field, v3, v4, v5, v6);
  v14 = sub_243987270(v8, field, v9, v10, v11, v12, v13);

  return v14;
}

- (void)setData:(void *)data withEncoding:(const char *)encoding forField:(unint64_t)field inStruct:(id *)struct
{
  if (struct->var1 == 1)
  {
    v67 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, data, encoding, field, struct, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v67, v56, a2, self, @"CKXORCReaderWriter.mm", 1152, @"Invalid struct");
  }

  v13 = objc_msgSend_writeError(self, a2, data, encoding, field, struct, v6);

  if (!v13)
  {
    v19 = objc_msgSend_valueColumnForField_(self, v14, field, v15, v16, v17, v18);
    if (v19)
    {
      v24 = **v19;
      v25 = __dynamic_cast(v19, &unk_2856A2580, &unk_2856A2590, 0);
    }

    else
    {
      v25 = 0;
    }

    var2 = struct->var2;
    objc_msgSend_expandColumn_includingRow_(self, v20, v25, var2, v21, v22, v23);
    v66 = objc_msgSend_typeForEncoding_(MEMORY[0x277CBC4D8], v27, encoding, v28, v29, v30, v31);
    v37 = objc_msgSend_valueSizeForField_(self, v32, field, v33, v34, v35, v36);
    if (v37 != objc_msgSend_size(v66, v38, v39, v40, v41, v42, v43))
    {
      v57 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v44, v45, v46, v47, v48, v49);
      v64 = objc_msgSend_size(v66, v58, v59, v60, v61, v62, v63);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v57, v65, a2, self, @"CKXORCReaderWriter.mm", 1165, @"Invalid size for data (is %lu, expecting %lu)", v37, v64);
    }

    *(v25[12] + 8 * objc_msgSend_offsetInCurrentBatchForRow_(self, v44, var2, v46, v47, v48, v49)) = 0;
    v55 = objc_msgSend_offsetInCurrentBatchForRow_(self, v50, var2, v51, v52, v53, v54);
    memcpy((v25[12] + 8 * v55), data, v37);
  }
}

- (void)setData:(void *)data withLength:(unint64_t)length forList:(id *)list
{
  if (list->var0 != -1)
  {
    v83 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, data, length, list, v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v83, v78, a2, self, @"CKXORCReaderWriter.mm", 1171, @"Invalid struct");
  }

  if (list->var2 == 1)
  {
    v84 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, data, length, list, v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v84, v79, a2, self, @"CKXORCReaderWriter.mm", 1172, @"Invalid list");
  }

  v12 = objc_msgSend_writeError(self, a2, data, length, list, v5, v6);

  if (!v12)
  {
    v81 = objc_msgSend_schema(self, v13, v14, v15, v16, v17, v18);
    v24 = sub_2439871D0(v81, list->var1, v19, v20, v21, v22, v23);

    if ((v24 - 1) < 2)
    {
      v35 = objc_msgSend_valueColumnForField_(self, v25, list->var1, v27, v28, v29, v30);
      if (v35)
      {
        v40 = **v35;
        v41 = __dynamic_cast(v35, &unk_2856A2580, &unk_2856A25C0, 0);
      }

      else
      {
        v41 = 0;
      }

      var3 = list->var3;
      objc_msgSend_expandColumn_includingRow_(self, v36, v41, var3, v37, v38, v39);
      if (*(v41[12] + 8 * objc_msgSend_offsetInCurrentBatchForRow_(self, v44, var3, v45, v46, v47, v48)))
      {
        v55 = objc_msgSend_offsetInCurrentBatchForRow_(self, v49, var3, v51, v52, v53, v54);
        free(*(v41[12] + 8 * v55));
        *(v41[12] + 8 * objc_msgSend_offsetInCurrentBatchForRow_(self, v56, var3, v57, v58, v59, v60)) = 0;
      }

      if (data)
      {
        v61 = malloc_type_malloc(length, 0x100004077774924uLL);
        *(v41[12] + 8 * objc_msgSend_offsetInCurrentBatchForRow_(self, v62, var3, v63, v64, v65, v66)) = v61;
        v72 = objc_msgSend_offsetInCurrentBatchForRow_(self, v67, var3, v68, v69, v70, v71);
        memcpy(*(v41[12] + 8 * v72), data, length);
      }

      else
      {
        if (length)
        {
          v85 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v49, v50, v51, v52, v53, v54);
          objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v85, v80, a2, self, @"CKXORCReaderWriter.mm", 1203, @"Attempting to set null data with non-zero length");
        }

        *(v41[5] + objc_msgSend_offsetInCurrentBatchForRow_(self, v49, var3, v51, v52, v53, v54)) = 0;
      }

      *(v41[17] + 8 * objc_msgSend_offsetInCurrentBatchForRow_(self, v73, var3, v74, v75, v76, v77)) = length;
    }

    else if (v24)
    {
      if (v24 == 3)
      {
        v31 = list->var3;
        v33 = objc_msgSend_valueSizeForField_(self, v25, list->var1, v27, v28, v29, v30);
        var1 = list->var1;

        objc_msgSend__appendData_withValueSize_length_toRow_toList_(self, v32, data, v33, length, v31, var1);
      }
    }

    else
    {
      v82 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v25, v26, v27, v28, v29, v30);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v82, v42, a2, self, @"CKXORCReaderWriter.mm", 1182, @"Invalid list type");
    }
  }
}

- (void)assignStruct:(id *)struct toReference:(unint64_t)reference inStruct:(id *)inStruct
{
  if (struct->var1 == 1)
  {
    v44 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, struct, reference, inStruct, v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v44, v45, a2, self, @"CKXORCReaderWriter.mm", 1223, @"Invalid struct");
  }

  if (inStruct->var1 == 1)
  {
    v46 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, struct, reference, inStruct, v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v46, v47, a2, self, @"CKXORCReaderWriter.mm", 1224, @"Invalid struct");
  }

  var0 = struct->var0;
  v13 = objc_msgSend_schema(self, a2, struct, reference, inStruct, v5, v6);
  v19 = sub_243987478(v13, reference, v14, v15, v16, v17, v18);

  if (var0 != v19)
  {
    v48 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v20, v21, v22, v23, v24, v25);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v48, v49, a2, self, @"CKXORCReaderWriter.mm", 1225, @"Invalid struct type");
  }

  v26 = objc_msgSend_writeError(self, v20, v21, v22, v23, v24, v25);

  if (!v26)
  {
    v32 = objc_msgSend_structReferenceColumnForReference_(self, v27, reference, v28, v29, v30, v31);
    var2 = inStruct->var2;
    objc_msgSend_expandColumn_includingRow_(self, v34, v32, var2, v35, v36, v37);
    v38 = struct->var2 - var2;
    *(*(v32 + 96) + 8 * objc_msgSend_offsetInCurrentBatchForRow_(self, v39, var2, v40, v41, v42, v43)) = v38;
  }
}

- (void)commitStruct:(id *)struct
{
  if (struct->var1 == 1)
  {
    v41 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, struct, v3, v4, v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v41, v42, a2, self, @"CKXORCReaderWriter.mm", 1248, @"Invalid struct");
  }

  v9 = objc_msgSend_writeError(self, a2, struct, v3, v4, v5, v6);

  if (v9)
  {
    return;
  }

  p_uncommittedStructs = &self->_uncommittedStructs;
  left = self->_uncommittedStructs.__tree_.__end_node_.__left_;
  if (!left)
  {
    goto LABEL_34;
  }

  var1 = struct->var1;
  var2 = struct->var2;
  p_end_node = &self->_uncommittedStructs.__tree_.__end_node_;
  isa = self->_uncommittedStructs.__tree_.__end_node_.__left_;
  var0 = struct->var0;
  do
  {
    begin_node = isa->_uncommittedStructs.__tree_.__begin_node_;
    if (begin_node < var1)
    {
LABEL_7:
      isa = (isa + 8);
      goto LABEL_10;
    }

    if (begin_node > var1)
    {
      goto LABEL_9;
    }

    v23 = isa->_uncommittedStructs.__tree_.__end_node_.__left_;
    if (v23 < var2)
    {
      goto LABEL_7;
    }

    if (v23 > var2)
    {
LABEL_9:
      p_end_node = isa;
    }

    else
    {
      ptr = isa->_currentBatch.__ptr_;
      v25 = ptr >= var0;
      v26 = ptr < var0;
      if (v25)
      {
        p_end_node = isa;
      }

      isa = (isa + 8 * v26);
    }

LABEL_10:
    isa = isa->super.super.isa;
  }

  while (isa);
  if (&self->_uncommittedStructs.__tree_.__end_node_ != p_end_node)
  {
    v27 = p_end_node->_uncommittedStructs.__tree_.__begin_node_;
    if (var1 >= v27)
    {
      if (var1 > v27 || (v30 = p_end_node->_uncommittedStructs.__tree_.__end_node_.__left_, var2 >= v30) && (var2 > v30 || var0 >= p_end_node->_currentBatch.__ptr_))
      {
        schema = p_end_node->super._schema;
        if (schema)
        {
          do
          {
            v29 = schema;
            schema = schema->super.isa;
          }

          while (schema);
        }

        else
        {
          v31 = p_end_node;
          do
          {
            v29 = v31->_writer.__ptr_;
            v32 = *v29 == v31;
            v31 = v29;
          }

          while (!v32);
        }

        if (p_uncommittedStructs->__tree_.__begin_node_ == p_end_node)
        {
          p_uncommittedStructs->__tree_.__begin_node_ = v29;
        }

        --self->_uncommittedStructs.__tree_.__size_;
        sub_243961E9C(left, p_end_node);
        operator delete(p_end_node);
      }
    }
  }

LABEL_34:
  v43 = 0;
  v33 = objc_msgSend_commitBatchIfNeededWithError_(self, v10, &v43, v11, v12, v13, v14);
  v39 = v43;
  if ((v33 & 1) == 0)
  {
    objc_msgSend_setWriteError_(self, v34, v39, v35, v36, v37, v38);
  }
}

- (BOOL)flushWithError:(id *)error
{
  v47 = *MEMORY[0x277D85DE8];
  if (self->_writer.__ptr_)
  {
    goto LABEL_8;
  }

  v44 = 0;
  WriterWithError = objc_msgSend_createWriterWithError_(self, a2, &v44, v3, v4, v5, v6);
  v10 = v44;
  if (error)
  {
    v11 = WriterWithError;
  }

  else
  {
    v11 = 1;
  }

  if ((v11 & 1) == 0)
  {
    v10 = v10;
    *error = v10;
  }

  if (WriterWithError)
  {
LABEL_8:
    v12 = objc_msgSend_writeError(self, a2, error, v3, v4, v5, v6);
    v13 = v12 == 0;

    v20 = objc_msgSend_writeError(self, v14, v15, v16, v17, v18, v19);
    if (v13)
    {
      sub_243980924(self->_uncommittedStructs.__tree_.__end_node_.__left_);
      self->_uncommittedStructs.__tree_.__begin_node_ = &self->_uncommittedStructs.__tree_.__end_node_;
      self->_uncommittedStructs.__tree_.__size_ = 0;
      self->_uncommittedStructs.__tree_.__end_node_.__left_ = 0;
      v43 = v20;
      v26 = objc_msgSend_commitBatchWithError_(self, v21, &v43, v22, v23, v24, v25);
      v27 = v43;

      if (v26)
      {
        v42[0] = MEMORY[0x277D85DD0];
        v42[1] = 3221225472;
        v42[2] = sub_243980080;
        v42[3] = &unk_278DDB2F0;
        v42[4] = self;
        v28 = v42;
        sub_243980080(v28);

        v20 = v27;
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v29 = *MEMORY[0x277CBC840];
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          v41 = objc_msgSend_startingRowForCurrentBatch(self, v30, v31, v32, v33, v34, v35);
          *buf = 134217984;
          v46 = v41;
          _os_log_debug_impl(&dword_2438A8000, v29, OS_LOG_TYPE_DEBUG, "Flushed ORC writer with rows: %llu", buf, 0xCu);
        }

        v36 = 1;
        goto LABEL_24;
      }

      v20 = v27;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v37 = *MEMORY[0x277CBC840];
    if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v46 = v20;
      _os_log_debug_impl(&dword_2438A8000, v37, OS_LOG_TYPE_DEBUG, "Error flushing ORC writer: %@", buf, 0xCu);
      if (error)
      {
        goto LABEL_21;
      }
    }

    else if (error)
    {
LABEL_21:
      v38 = v20;
      v36 = 0;
      *error = v20;
LABEL_24:

      goto LABEL_25;
    }

    v36 = 0;
    goto LABEL_24;
  }

  v36 = 0;
LABEL_25:
  v39 = *MEMORY[0x277D85DE8];
  return v36;
}

- (void)structColumnForStruct:(unint64_t)struct
{
  v9 = objc_msgSend_rootColumn(self, a2, struct, v3, v4, v5, v6);
  v16 = objc_msgSend_helpers(self, v10, v11, v12, v13, v14, v15);
  v22 = objc_msgSend_topLevelIndexForStruct_(v16, v17, struct, v18, v19, v20, v21);

  result = *(*(v9 + 80) + 8 * v22);
  if (result)
  {
    v24 = **result;

    return __dynamic_cast(result, &unk_2856A2580, &unk_2856A25F0, 0);
  }

  return result;
}

- (void)structReferenceColumnForReference:(unint64_t)reference
{
  v10 = objc_msgSend_schema(self, a2, reference, v3, v4, v5, v6);
  if (v10)
  {
    v11 = *(v10[10] + 56 * reference + 16);
  }

  else
  {
    v11 = 0;
  }

  v17 = objc_msgSend_structColumnForStruct_(self, v12, v11, v13, v14, v15, v16);
  v24 = objc_msgSend_helpers(self, v18, v19, v20, v21, v22, v23);
  v30 = objc_msgSend_structReferenceIndexForReference_(v24, v25, reference, v26, v27, v28, v29);

  v37 = *(v17 + 80);
  if (v30 >= (*(v17 + 88) - v37) >> 3 || (v38 = *(v37 + 8 * v30)) == 0 || (v39 = **v38, (result = __dynamic_cast(v38, &unk_2856A2580, &unk_2856A2590, 0)) == 0))
  {
    v41 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v31, v32, v33, v34, v35, v36);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v41, v42, a2, self, @"CKXORCReaderWriter.mm", 1317, @"Unexpected null struct reference column in writer");

    return 0;
  }

  return result;
}

- (void)listColumnForReference:(unint64_t)reference
{
  v10 = objc_msgSend_schema(self, a2, reference, v3, v4, v5, v6);
  if (v10)
  {
    v11 = *(v10[10] + 56 * reference + 16);
  }

  else
  {
    v11 = 0;
  }

  v17 = objc_msgSend_structColumnForStruct_(self, v12, v11, v13, v14, v15, v16);
  v24 = objc_msgSend_helpers(self, v18, v19, v20, v21, v22, v23);
  v30 = objc_msgSend_listColumnIndexForReference_(v24, v25, reference, v26, v27, v28, v29);

  v37 = *(v17 + 80);
  if (v30 >= (*(v17 + 88) - v37) >> 3 || (v38 = *(v37 + 8 * v30)) == 0 || (v39 = **v38, (result = __dynamic_cast(v38, &unk_2856A2580, &unk_2856A2608, 0)) == 0))
  {
    v41 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v31, v32, v33, v34, v35, v36);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v41, v42, a2, self, @"CKXORCReaderWriter.mm", 1326, @"Unexpected null struct list column in writer");

    return 0;
  }

  return result;
}

- (void)valueColumnForField:(unint64_t)field
{
  v10 = objc_msgSend_schema(self, a2, field, v3, v4, v5, v6);
  if (v10)
  {
    v11 = *(v10[10] + 56 * field + 16);
  }

  else
  {
    v11 = 0;
  }

  v17 = objc_msgSend_structColumnForStruct_(self, v12, v11, v13, v14, v15, v16);
  v24 = objc_msgSend_helpers(self, v18, v19, v20, v21, v22, v23);
  v30 = objc_msgSend_valueColumnIndexForField_(v24, v25, field, v26, v27, v28, v29);

  v37 = *(v17 + 80);
  if (v30 >= (*(v17 + 88) - v37) >> 3 || (result = *(v37 + 8 * v30)) == 0)
  {
    v39 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v31, v32, v33, v34, v35, v36);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v39, v40, a2, self, @"CKXORCReaderWriter.mm", 1335, @"Unexpected null value column in writer");

    return 0;
  }

  return result;
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 4) = 0;
  *(self + 7) = 0;
  *(self + 6) = 0;
  *(self + 5) = self + 48;
  return self;
}

@end