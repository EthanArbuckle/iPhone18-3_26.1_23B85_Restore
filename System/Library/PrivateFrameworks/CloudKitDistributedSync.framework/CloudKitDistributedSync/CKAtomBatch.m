@interface CKAtomBatch
+ (id)atomBatchByMergingAtomBatches:(id)a3 error:(id *)a4;
+ (id)bindingForFormatVersion:(unsigned __int8)a3;
- ($06D0163FE0D7AFE752A9F21F38483579)writerIdentity;
- (BOOL)_setStorage:(id)a3 optionsByReaderWriterClass:(id)a4 error:(id *)a5;
- (BOOL)fileBacked;
- (BOOL)finishWritingWithError:(id *)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isWriting;
- (BOOL)size:(unint64_t *)a3 error:(id *)a4;
- (BOOL)splitWithMaximumSize:(unint64_t)a3 error:(id *)a4 block:(id)a5;
- (BOOL)validateWithError:(id *)a3;
- (CKAtomBatch)initWithCoder:(id)a3;
- (CKAtomBatch)initWithData:(id)a3 mergeableValueID:(id)a4 vectors:(id)a5 options:(id)a6 error:(id *)a7;
- (CKAtomBatch)initWithFileURL:(id)a3 mergeableValueID:(id)a4 vectors:(id)a5 options:(id)a6 error:(id *)a7;
- (CKAtomBatch)initWithMergeableDelta:(id)a3 error:(id *)a4;
- (CKDSReadableStorage)storage;
- (CKDistributedTimestampStateVector)enumeratedContentsVector;
- (CKMergeableDeltaVectors)vectors;
- (CKMergeableValueID)mergeableValueID;
- (id)_metadataForCoding;
- (id)copyWithZone:(_NSZone *)a3;
- (id)data;
- (id)dataWithError:(id *)a3;
- (id)description;
- (id)initWriterWithMergeableValueID:(id)a3 vectors:(id)a4 options:(id)a5 error:(id *)a6;
- (id)nthAtom:(int64_t)a3;
- (id)splitWithMaximumDeltaSize:(unint64_t)a3 error:(id *)a4;
- (id)splitWithMaximumSize:(unint64_t)a3 error:(id *)a4;
- (id)writableCopy;
- (id)writableCopyWithMergeableValueID:(id)a3 vectors:(id)a4;
- (id)writerOptions;
- (int64_t)count;
- (unint64_t)hash;
- (unsigned)formatVersion;
- (void)appendAtomWithBlock:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateAtomsWithOptions:(id)a3 usingBlock:(id)a4;
- (void)finishWriting;
@end

@implementation CKAtomBatch

- (CKAtomBatch)initWithData:(id)a3 mergeableValueID:(id)a4 vectors:(id)a5 options:(id)a6 error:(id *)a7
{
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [CKDSReadableStorage alloc];
  v22 = objc_msgSend_initWithData_(v16, v17, v15, v18, v19, v20, v21);

  v29 = objc_msgSend_underlyingReaderOptionsByClass(v12, v23, v24, v25, v26, v27, v28);

  v31 = objc_msgSend_initWithStorage_optionsByReaderWriterClass_mergeableValueID_vectors_formatVersion_error_(self, v30, v22, v29, v14, v13, 3, a7);
  return v31;
}

- (CKAtomBatch)initWithFileURL:(id)a3 mergeableValueID:(id)a4 vectors:(id)a5 options:(id)a6 error:(id *)a7
{
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [CKDSReadableStorage alloc];
  v22 = objc_msgSend_initWithFileURL_(v16, v17, v15, v18, v19, v20, v21);

  v29 = objc_msgSend_underlyingReaderOptionsByClass(v12, v23, v24, v25, v26, v27, v28);

  v31 = objc_msgSend_initWithStorage_optionsByReaderWriterClass_mergeableValueID_vectors_formatVersion_error_(self, v30, v22, v29, v14, v13, 3, a7);
  return v31;
}

- (id)initWriterWithMergeableValueID:(id)a3 vectors:(id)a4 options:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v18 = a5;
  if (!v18)
  {
    v18 = objc_opt_new();
  }

  if (!objc_msgSend_fileBacked(v18, v12, v13, v14, v15, v16, v17))
  {
    v48 = [CKDSWritableStorage alloc];
    v40 = objc_msgSend_initInMemory(v48, v49, v50, v51, v52, v53, v54);
    goto LABEL_8;
  }

  v25 = objc_msgSend_fileURL(v18, v19, v20, v21, v22, v23, v24);

  v26 = [CKDSWritableStorage alloc];
  v33 = v26;
  if (v25)
  {
    v34 = objc_msgSend_fileURL(v18, v27, v28, v29, v30, v31, v32);
    v40 = objc_msgSend_initWithFileURL_(v33, v35, v34, v36, v37, v38, v39);

    v41 = 0;
    if (v40)
    {
LABEL_6:

LABEL_8:
      v55 = objc_msgSend_underlyingWriterOptionsByClass(v18, v42, v43, v44, v45, v46, v47);
      v62 = objc_msgSend_formatVersion(v18, v56, v57, v58, v59, v60, v61);
      self = objc_msgSend_initWithStorage_optionsByReaderWriterClass_mergeableValueID_vectors_formatVersion_error_(self, v63, v40, v55, v10, v11, v62, a6);

      v41 = v40;
      v64 = self;
      goto LABEL_9;
    }
  }

  else
  {
    v66 = 0;
    v40 = objc_msgSend_initWithTemporaryFile_(v26, v27, &v66, v29, v30, v31, v32);
    v41 = v66;
    if (v40)
    {
      goto LABEL_6;
    }
  }

  if (a6)
  {
    v41 = v41;
    v64 = 0;
    *a6 = v41;
  }

  else
  {
    v64 = 0;
  }

LABEL_9:

  return v64;
}

- (CKDSReadableStorage)storage
{
  v7 = objc_msgSend_backingStore(self, a2, v2, v3, v4, v5, v6);
  v14 = objc_msgSend_readableStorage(v7, v8, v9, v10, v11, v12, v13);

  return v14;
}

- (unsigned)formatVersion
{
  v9 = objc_msgSend_backingStore(self, a2, v2, v3, v4, v5, v6);

  if (!v9)
  {
    v25 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v10, v11, v12, v13, v14, v15);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v25, v26, a2, self, @"CKAtomBatch.m", 238, @"Unable to read format version before data is set");
  }

  v16 = objc_msgSend_backingStore(self, v10, v11, v12, v13, v14, v15);
  v23 = objc_msgSend_formatVersion(v16, v17, v18, v19, v20, v21, v22);

  return v23;
}

- (BOOL)fileBacked
{
  v7 = objc_msgSend_storage(self, a2, v2, v3, v4, v5, v6);
  v14 = objc_msgSend_fileURL(v7, v8, v9, v10, v11, v12, v13);
  v15 = v14 != 0;

  return v15;
}

- (id)writerOptions
{
  v3 = objc_opt_new();
  v10 = objc_msgSend_formatVersion(self, v4, v5, v6, v7, v8, v9);
  objc_msgSend_setFormatVersion_(v3, v11, v10, v12, v13, v14, v15);
  v22 = objc_msgSend_fileBacked(self, v16, v17, v18, v19, v20, v21);
  objc_msgSend_setFileBacked_(v3, v23, v22, v24, v25, v26, v27);

  return v3;
}

- ($06D0163FE0D7AFE752A9F21F38483579)writerIdentity
{
  v9 = objc_msgSend_backingStore(self, a2, v2, v3, v4, v5, v6);

  if (!v9)
  {
    v25 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v10, v11, v12, v13, v14, v15);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v25, v26, a2, self, @"CKAtomBatch.m", 255, @"Unable to read writer identity before data is set");
  }

  v16 = objc_msgSend_backingStore(self, v10, v11, v12, v13, v14, v15);
  v23 = objc_msgSend_writerIdentity(v16, v17, v18, v19, v20, v21, v22);

  return v23;
}

- (void)enumerateAtomsWithOptions:(id)a3 usingBlock:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15 = objc_msgSend_backingStore(self, v9, v10, v11, v12, v13, v14);

  if (!v15)
  {
    v30 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v16, v17, v18, v19, v20, v21);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v30, v31, a2, self, @"CKAtomBatch.m", 261, @"Unable to read atoms before data is set");
  }

  v22 = objc_msgSend_backingStore(self, v16, v17, v18, v19, v20, v21);
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = sub_24396A7AC;
  v32[3] = &unk_278DDAE08;
  v33 = v7;
  v34 = v8;
  v23 = v8;
  v24 = v7;
  objc_msgSend_readUsingBlock_(v22, v25, v32, v26, v27, v28, v29);
}

- (id)nthAtom:(int64_t)a3
{
  v10 = objc_msgSend_backingStore(self, a2, a3, v3, v4, v5, v6);

  if (!v10)
  {
    v31 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v11, v12, v13, v14, v15, v16);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v31, v32, a2, self, @"CKAtomBatch.m", 282, @"Unable to read atoms before data is set");
  }

  if (objc_msgSend_count(self, v11, v12, v13, v14, v15, v16) <= a3)
  {
    v33 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v17, v18, v19, v20, v21, v22);
    v40 = objc_msgSend_count(self, v34, v35, v36, v37, v38, v39);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v33, v41, a2, self, @"CKAtomBatch.m", 283, @"Trying to read index: %ld, but atom batch has %ld atoms", a3, v40);

    if ((a3 & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else if ((a3 & 0x8000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v42 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v17, v18, v19, v20, v21, v22);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v42, v43, a2, self, @"CKAtomBatch.m", 284, @"Can not access a negative index: %ld", a3);

LABEL_5:
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = sub_24396AC80;
  v49 = sub_24396AC90;
  v50 = 0;
  v23 = objc_msgSend_backingStore(self, v17, v18, v19, v20, v21, v22);
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = sub_24396AC98;
  v44[3] = &unk_278DDAE30;
  v44[4] = &v45;
  v44[5] = a3;
  objc_msgSend_readUsingBlock_(v23, v24, v44, v25, v26, v27, v28);

  v29 = v46[5];
  _Block_object_dispose(&v45, 8);

  return v29;
}

- (void)appendAtomWithBlock:(id)a3
{
  v5 = a3;
  v12 = objc_msgSend_backingStore(self, v6, v7, v8, v9, v10, v11);

  if (!v12)
  {
    v34 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v13, v14, v15, v16, v17, v18);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v34, v35, a2, self, @"CKAtomBatch.m", 294, @"Unable to append atoms before data is set");
  }

  v19 = self->_mergeableValueID;
  v26 = objc_msgSend_backingStore(self, v20, v21, v22, v23, v24, v25);
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = sub_24396AE34;
  v36[3] = &unk_278DDAE80;
  v37 = v19;
  v38 = v5;
  v36[4] = self;
  v27 = v19;
  v28 = v5;
  objc_msgSend_writeUsingBlock_(v26, v29, v36, v30, v31, v32, v33);
}

- (BOOL)isWriting
{
  v7 = objc_msgSend_backingStore(self, a2, v2, v3, v4, v5, v6);
  isWriting = objc_msgSend_isWriting(v7, v8, v9, v10, v11, v12, v13);

  return isWriting;
}

- (void)finishWriting
{
  v12 = 0;
  v6 = objc_msgSend_finishWritingWithError_(self, a2, &v12, v2, v3, v4, v5);
  v11 = v12;
  if ((v6 & 1) == 0)
  {
    objc_msgSend_raise_format_(MEMORY[0x277CBEAD8], v7, *MEMORY[0x277CBE648], @"Failed to finish writing: %@", v8, v9, v10, v11);
  }
}

- (BOOL)finishWritingWithError:(id *)a3
{
  v7 = a3;
  v8 = objc_msgSend_backingStore(self, a2, a3, v3, v4, v5, v6);
  LOBYTE(v7) = objc_msgSend_finishWritingWithError_(v8, v9, v7, v10, v11, v12, v13);

  return v7;
}

- (BOOL)validateWithError:(id *)a3
{
  v152[1] = *MEMORY[0x277D85DE8];
  if (objc_msgSend_isWriting(self, a2, a3, v3, v4, v5, v6))
  {
    objc_msgSend_raise_format_(MEMORY[0x277CBEAD8], v9, *MEMORY[0x277CBE660], @"[CKAtomBatch finishWritingWithError:] must be called before reading data", v12, v13, v14);
    v15 = 0;
  }

  else
  {
    v16 = objc_msgSend_formatVersion(self, v9, v10, v11, v12, v13, v14);
    v23 = objc_msgSend_vectors(self, v17, v18, v19, v20, v21, v22);
    v30 = objc_msgSend_previous(v23, v24, v25, v26, v27, v28, v29);
    v37 = objc_msgSend_mutableCopy(v30, v31, v32, v33, v34, v35, v36);

    v44 = objc_msgSend_contents(v23, v38, v39, v40, v41, v42, v43);
    v51 = objc_msgSend_clockVector(v44, v45, v46, v47, v48, v49, v50);
    objc_msgSend_unionVector_(v37, v52, v51, v53, v54, v55, v56);

    v63 = objc_msgSend_contents(v23, v57, v58, v59, v60, v61, v62);
    v69 = objc_msgSend_vectorFilteredByAtomState_(v63, v64, 3, v65, v66, v67, v68);

    v76 = objc_msgSend_contents(v23, v70, v71, v72, v73, v74, v75);
    v83 = objc_msgSend_clockVector(v76, v77, v78, v79, v80, v81, v82);
    v90 = objc_msgSend_mutableCopy(v83, v84, v85, v86, v87, v88, v89);

    v97 = objc_msgSend_clockVector(v69, v91, v92, v93, v94, v95, v96);
    objc_msgSend_minusVector_(v90, v98, v97, v99, v100, v101, v102);

    v103 = objc_opt_new();
    v147 = 0;
    v148 = &v147;
    v149 = 0x2020000000;
    v150 = 1;
    v141 = 0;
    v142 = &v141;
    v143 = 0x3032000000;
    v144 = sub_24396AC80;
    v145 = sub_24396AC90;
    v146 = 0;
    v134[0] = MEMORY[0x277D85DD0];
    v134[1] = 3221225472;
    v134[2] = sub_24396B418;
    v134[3] = &unk_278DDAEF8;
    v138 = &v141;
    v139 = &v147;
    v140 = v16;
    v104 = v23;
    v135 = v104;
    v105 = v37;
    v136 = v105;
    v106 = v103;
    v137 = v106;
    objc_msgSend_enumerateAtomsWithOptions_usingBlock_(self, v107, 0, v134, v108, v109, v110);
    if (!v142[5] && (objc_msgSend_isEqual_(v106, v111, v90, v112, v113, v114, v115) & 1) == 0)
    {
      *(v148 + 24) = 0;
      v121 = MEMORY[0x277CCA9B8];
      v151 = *MEMORY[0x277CCA450];
      v122 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v116, @"Batch contents %@ not equal to contents vector %@", v117, v118, v119, v120, v106, v90);
      v152[0] = v122;
      v126 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v123, v152, &v151, 1, v124, v125);
      v130 = objc_msgSend_errorWithDomain_code_userInfo_(v121, v127, @"CKDSErrorDomain", 3, v126, v128, v129);
      v131 = v142[5];
      v142[5] = v130;
    }

    if (a3)
    {
      *a3 = v142[5];
    }

    v15 = *(v148 + 24);

    _Block_object_dispose(&v141, 8);
    _Block_object_dispose(&v147, 8);
  }

  v132 = *MEMORY[0x277D85DE8];
  return v15 & 1;
}

- (id)data
{
  v21 = 0;
  v8 = objc_msgSend_dataWithError_(self, a2, &v21, v2, v3, v4, v5);
  v15 = v21;
  if (v8)
  {
    v16 = v8;
  }

  else
  {
    v17 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v9, v10, v11, v12, v13, v14);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v17, v18, a2, self, @"CKAtomBatch.m", 432, @"Unable to retrieve atom batch data: %@", v15);

    v16 = objc_opt_new();
  }

  v19 = v16;

  return v19;
}

- (id)dataWithError:(id *)a3
{
  if (objc_msgSend_isWriting(self, a2, a3, v3, v4, v5, v6))
  {
    objc_msgSend_raise_format_(MEMORY[0x277CBEAD8], v10, *MEMORY[0x277CBE660], @"[CKAtomBatch finishWritingWithError:] must be called before reading data", v13, v14, v15);
    v16 = 0;
  }

  else
  {
    v17 = objc_msgSend_backingStore(self, v10, v11, v12, v13, v14, v15);
    v24 = objc_msgSend_readableStorage(v17, v18, v19, v20, v21, v22, v23);

    if (!v24)
    {
      v32 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v25, v26, v27, v28, v29, v30);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v32, v33, a2, self, @"CKAtomBatch.m", 447, @"Unexpectedly nil readable storage");
    }

    v16 = objc_msgSend_dataWithError_(v24, v25, a3, v27, v28, v29, v30);
  }

  return v16;
}

- (BOOL)_setStorage:(id)a3 optionsByReaderWriterClass:(id)a4 error:(id *)a5
{
  v58[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v16 = objc_msgSend_backingStore(self, v10, v11, v12, v13, v14, v15);

  if (v16)
  {
    if (a5)
    {
      v20 = MEMORY[0x277CCA9B8];
      v57 = *MEMORY[0x277CCA450];
      v58[0] = @"Cannot replace existing backing store";
      v21 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v17, v58, &v57, 1, v18, v19);
      *a5 = objc_msgSend_errorWithDomain_code_userInfo_(v20, v22, @"CKDSErrorDomain", 1, v21, v23, v24);
    }

    v25 = 0;
  }

  else
  {
    v54 = 0;
    v53 = 0;
    v52 = 0;
    v26 = objc_msgSend_header_forStorage_error_(CKXBackingStore, v17, &v53, v8, &v52, v18, v19);
    v27 = v52;
    v28 = v27;
    if (v26)
    {
      v29 = [CKXBackingStore alloc];
      v30 = objc_opt_class();
      v36 = objc_msgSend_bindingForFormatVersion_(v30, v31, v53, v32, v33, v34, v35);
      v38 = objc_msgSend_initWithStorage_binding_optionsByReaderWriterClass_formatVersion_error_(v29, v37, v8, v36, v9, v53, a5);
      backingStore = self->_backingStore;
      self->_backingStore = v38;

      v43 = self->_backingStore;
      if (v43 && v53 >= 3u && !self->_vectors)
      {
        if (a5)
        {
          v44 = MEMORY[0x277CCA9B8];
          v55 = *MEMORY[0x277CCA450];
          v56 = @"Expecting non-nil vectors";
          v45 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v40, &v56, &v55, 1, v41, v42);
          *a5 = objc_msgSend_errorWithDomain_code_userInfo_(v44, v46, @"CKDSErrorDomain", 2, v45, v47, v48);

          v43 = self->_backingStore;
        }

        self->_backingStore = 0;

        v43 = self->_backingStore;
      }

      v25 = v43 != 0;
    }

    else if (a5)
    {
      v49 = v27;
      v25 = 0;
      *a5 = v28;
    }

    else
    {
      v25 = 0;
    }
  }

  v50 = *MEMORY[0x277D85DE8];
  return v25;
}

- (CKMergeableValueID)mergeableValueID
{
  p_mergeableValueID = &self->_mergeableValueID;
  if (!self->_mergeableValueID && objc_msgSend_formatVersion(self, a2, v2, v3, v4, v5, v6) <= 2 && (objc_msgSend_isWriting(self, v9, v10, v11, v12, v13, v14) & 1) == 0)
  {
    v31 = 0;
    v32 = &v31;
    v33 = 0x3032000000;
    v34 = sub_24396AC80;
    v35 = sub_24396AC90;
    v36 = 0;
    v21 = objc_msgSend_backingStore(self, v15, v16, v17, v18, v19, v20);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = sub_24396C178;
    v30[3] = &unk_278DDAF48;
    v30[4] = &v31;
    objc_msgSend_readUsingBlock_(v21, v22, v30, v23, v24, v25, v26);

    v27 = v32[5];
    if (v27)
    {
      objc_storeStrong(p_mergeableValueID, v27);
    }

    _Block_object_dispose(&v31, 8);
  }

  v28 = *p_mergeableValueID;

  return v28;
}

- (BOOL)size:(unint64_t *)a3 error:(id *)a4
{
  if (objc_msgSend_isWriting(self, a2, a3, a4, v4, v5, v6))
  {
    objc_msgSend_raise_format_(MEMORY[0x277CBEAD8], v10, *MEMORY[0x277CBE660], @"[CKAtomBatch finishWritingWithError:] must be called before getting the size", v13, v14, v15);
    return 0;
  }

  else
  {
    v61 = 0;
    v17 = objc_msgSend_storage(self, v10, v11, v12, v13, v14, v15);
    v60 = 0;
    v16 = objc_msgSend_size_error_(v17, v18, &v61, &v60, v19, v20, v21);
    v22 = v60;

    if (v16)
    {
      v29 = objc_msgSend_mergeableValueID(self, v23, v24, v25, v26, v27, v28);
      if (v29 && (v36 = v29, objc_msgSend_mergeableValueID(self, v30, v31, v32, v33, v34, v35), v37 = objc_claimAutoreleasedReturnValue(), isEncrypted = objc_msgSend_isEncrypted(v37, v38, v39, v40, v41, v42, v43), v37, v36, (isEncrypted & 1) == 0))
      {
        v45 = v61;
      }

      else
      {
        v45 = v61 + 28;
        v61 += 28;
      }

      v47 = v45 + 2;
      if (v45 >= 0x80)
      {
        do
        {
          ++v47;
          v48 = v45 >> 14;
          v45 >>= 7;
        }

        while (v48);
      }

      v49 = objc_msgSend__metadataForCoding(self, v30, v31, v32, v33, v34, v35);
      v56 = objc_msgSend_size(v49, v50, v51, v52, v53, v54, v55);
      v57 = v56 + 2;
      if (v56 >= 0x80)
      {
        do
        {
          ++v57;
          v58 = v56 >> 14;
          v56 >>= 7;
        }

        while (v58);
      }

      if (a3)
      {
        *a3 = v47 + v57 + 16;
      }
    }

    else if (a4)
    {
      v46 = v22;
      *a4 = v22;
    }
  }

  return v16;
}

- (int64_t)count
{
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  if (objc_msgSend_isWriting(self, a2, v2, v3, v4, v5, v6))
  {
    v14 = objc_msgSend_backingStore(self, v8, v9, v10, v11, v12, v13);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = sub_24396C530;
    v28[3] = &unk_278DDAF70;
    v28[4] = &v29;
    objc_msgSend_writeUsingBlock_(v14, v15, v28, v16, v17, v18, v19);
  }

  else
  {
    v14 = objc_msgSend_backingStore(self, v8, v9, v10, v11, v12, v13);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = sub_24396C58C;
    v27[3] = &unk_278DDAF48;
    v27[4] = &v29;
    objc_msgSend_readUsingBlock_(v14, v20, v27, v21, v22, v23, v24);
  }

  v25 = v30[3];
  _Block_object_dispose(&v29, 8);
  return v25;
}

- (CKDistributedTimestampStateVector)enumeratedContentsVector
{
  v3 = objc_opt_new();
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_24396C698;
  v10[3] = &unk_278DDAF98;
  v4 = v3;
  v11 = v4;
  objc_msgSend_enumerateAtomsWithOptions_usingBlock_(self, v5, 0, v10, v6, v7, v8);

  return v4;
}

- (CKMergeableDeltaVectors)vectors
{
  if (!self->_vectors && (objc_msgSend_isWriting(self, a2, v2, v3, v4, v5, v6) & 1) == 0)
  {
    v14 = objc_msgSend_enumeratedContentsVector(self, v8, v9, v10, v11, v12, v13);
    v15 = objc_alloc(MEMORY[0x277CBC468]);
    v16 = objc_opt_new();
    v21 = objc_msgSend_initWithPreviousStateVector_currentStateVector_(v15, v17, v16, v14, v18, v19, v20);
    vectors = self->_vectors;
    self->_vectors = v21;
  }

  v23 = self->_vectors;

  return v23;
}

- (id)description
{
  v3 = objc_opt_new();
  v10 = objc_msgSend_backingStore(self, v4, v5, v6, v7, v8, v9);
  v17 = objc_msgSend_readableStorage(v10, v11, v12, v13, v14, v15, v16);
  v24 = v17;
  if (v17)
  {
    v25 = v17;
  }

  else
  {
    v26 = objc_msgSend_backingStore(self, v18, v19, v20, v21, v22, v23);
    v25 = objc_msgSend_writableStorage(v26, v27, v28, v29, v30, v31, v32);
  }

  v127 = 0;
  objc_msgSend_size_error_(v25, v33, &v127, 0, v34, v35, v36);
  v37 = objc_opt_class();
  v38 = NSStringFromClass(v37);
  objc_msgSend_appendFormat_(v3, v39, @"<%@: %p; ", v40, v41, v42, v43, v38, self);

  v50 = objc_msgSend_formatVersion(self, v44, v45, v46, v47, v48, v49);
  v57 = CKDSStringForBackingStoreFormatVersion(v50, v51, v52, v53, v54, v55, v56);
  objc_msgSend_appendFormat_(v3, v58, @"formatVersion=%@, ", v59, v60, v61, v62, v57);

  v63 = MEMORY[0x277CCABB0];
  isWriting = objc_msgSend_isWriting(self, v64, v65, v66, v67, v68, v69);
  v76 = objc_msgSend_numberWithBool_(v63, v71, isWriting, v72, v73, v74, v75);
  objc_msgSend_appendFormat_(v3, v77, @"isWriting=%@, ", v78, v79, v80, v81, v76);

  objc_msgSend_appendFormat_(v3, v82, @"storage=%@, ", v83, v84, v85, v86, v25);
  v92 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v87, v127, v88, v89, v90, v91);
  objc_msgSend_appendFormat_(v3, v93, @"size=%@, ", v94, v95, v96, v97, v92);

  if (self->_mergeableValueID || (objc_msgSend_isWriting(self, v98, v99, v100, v101, v102, v103) & 1) == 0)
  {
    v104 = objc_msgSend_mergeableValueID(self, v98, v99, v100, v101, v102, v103);
    objc_msgSend_appendFormat_(v3, v105, @"valueID=%@, ", v106, v107, v108, v109, v104);
  }

  if (self->_vectors)
  {
    v110 = objc_msgSend_vectors(self, v98, v99, v100, v101, v102, v103);
    objc_msgSend_appendFormat_(v3, v111, @"vectors=%@, ", v112, v113, v114, v115, v110);
  }

  v116 = objc_msgSend_length(v3, v98, v99, v100, v101, v102, v103);
  objc_msgSend_deleteCharactersInRange_(v3, v117, v116 - 2, 2, v118, v119, v120);
  objc_msgSend_appendFormat_(v3, v121, @">", v122, v123, v124, v125);

  return v3;
}

- (unint64_t)hash
{
  v8 = objc_msgSend_mergeableValueID(self, a2, v2, v3, v4, v5, v6);
  v15 = objc_msgSend_hash(v8, v9, v10, v11, v12, v13, v14);
  v22 = objc_msgSend_vectors(self, v16, v17, v18, v19, v20, v21);
  v29 = objc_msgSend_hash(v22, v23, v24, v25, v26, v27, v28);

  return v29 ^ v15;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (v5 == self)
  {
    isEqual = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v13 = objc_msgSend_mergeableValueID(self, v7, v8, v9, v10, v11, v12);
      v26 = objc_msgSend_mergeableValueID(v6, v14, v15, v16, v17, v18, v19);
      if (v13 != v26)
      {
        v27 = objc_msgSend_mergeableValueID(self, v20, v21, v22, v23, v24, v25);
        v3 = objc_msgSend_mergeableValueID(v6, v28, v29, v30, v31, v32, v33);
        if (!objc_msgSend_isEqual_(v27, v34, v3, v35, v36, v37, v38))
        {
          isEqual = 0;
LABEL_13:

LABEL_14:
          goto LABEL_15;
        }

        v68 = v27;
      }

      v40 = objc_msgSend_vectors(self, v20, v21, v22, v23, v24, v25);
      v53 = objc_msgSend_vectors(v6, v41, v42, v43, v44, v45, v46);
      if (v40 == v53)
      {
        isEqual = 1;
      }

      else
      {
        v54 = objc_msgSend_vectors(self, v47, v48, v49, v50, v51, v52);
        v61 = objc_msgSend_vectors(v6, v55, v56, v57, v58, v59, v60);
        isEqual = objc_msgSend_isEqual_(v54, v62, v61, v63, v64, v65, v66);
      }

      v27 = v68;
      if (v13 == v26)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    isEqual = 0;
  }

LABEL_15:

  return isEqual;
}

+ (id)bindingForFormatVersion:(unsigned __int8)a3
{
  if (a3 == 2)
  {
    CKXAtomBindingFormatVersionORC();
  }

  else
  {
    CKXAtomBindingFormatVersionORCv2();
  }
  v3 = ;

  return v3;
}

- (id)writableCopyWithMergeableValueID:(id)a3 vectors:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [CKAtomBatch alloc];
  v16 = objc_msgSend_writerOptions(self, v10, v11, v12, v13, v14, v15);
  v60 = 0;
  inited = objc_msgSend_initWriterWithMergeableValueID_vectors_options_error_(v9, v17, v7, v8, v16, &v60, v18);

  v20 = v60;
  if (v20)
  {
    v48 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v21, v22, v23, v24, v25, v26);
    v55 = objc_msgSend_description(v20, v49, v50, v51, v52, v53, v54);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v48, v56, a2, self, @"CKAtomBatch.m", 752, v55);
  }

  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = sub_24396D5C0;
  v57[3] = &unk_278DDB038;
  v27 = inited;
  v58 = v27;
  v59 = v7;
  v28 = v7;
  objc_msgSend_enumerateAtomsWithOptions_usingBlock_(self, v29, 0, v57, v30, v31, v32);
  v39 = objc_msgSend_atomValueDescriptionBlock(self, v33, v34, v35, v36, v37, v38);
  objc_msgSend_setAtomValueDescriptionBlock_(v27, v40, v39, v41, v42, v43, v44);

  v45 = v59;
  v46 = v27;

  return v27;
}

- (id)writableCopy
{
  v8 = objc_msgSend_mergeableValueID(self, a2, v2, v3, v4, v5, v6);
  v13 = objc_msgSend_writableCopyWithMergeableValueID_vectors_(self, v9, v8, 0, v10, v11, v12);

  return v13;
}

+ (id)atomBatchByMergingAtomBatches:(id)a3 error:(id *)a4
{
  v157[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (objc_msgSend_count(v5, v6, v7, v8, v9, v10, v11))
  {
    if (objc_msgSend_count(v5, v12, v13, v14, v15, v16, v17) == 1)
    {
      v24 = objc_msgSend_firstObject(v5, v18, v19, v20, v21, v22, v23);
    }

    else
    {
      v138 = a4;
      v30 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v148 = 0u;
      v149 = 0u;
      v150 = 0u;
      v151 = 0u;
      v31 = v5;
      v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v32, &v148, v155, 16, v33, v34);
      if (v35)
      {
        v42 = v35;
        v43 = *v149;
        do
        {
          for (i = 0; i != v42; ++i)
          {
            if (*v149 != v43)
            {
              objc_enumerationMutation(v31);
            }

            v45 = objc_msgSend_vectors(*(*(&v148 + 1) + 8 * i), v36, v37, v38, v39, v40, v41);
            objc_msgSend_addObject_(v30, v46, v45, v47, v48, v49, v50);
          }

          v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v36, &v148, v155, 16, v40, v41);
        }

        while (v42);
      }

      v56 = objc_msgSend_mergeableDeltaMetadataVectorsByCombiningVectors_(MEMORY[0x277CBC468], v51, v30, v52, v53, v54, v55);
      v63 = objc_msgSend_firstObject(v31, v57, v58, v59, v60, v61, v62);
      v70 = objc_msgSend_writerOptions(v63, v64, v65, v66, v67, v68, v69);

      v71 = [CKAtomBatch alloc];
      v78 = objc_msgSend_firstObject(v31, v72, v73, v74, v75, v76, v77);
      v85 = objc_msgSend_mergeableValueID(v78, v79, v80, v81, v82, v83, v84);
      v147 = 0;
      inited = objc_msgSend_initWriterWithMergeableValueID_vectors_options_error_(v71, v86, v85, v56, v70, &v147, v87);
      v89 = v147;

      if (inited)
      {
        v135 = v89;
        v136 = v56;
        v137 = v5;
        v145 = 0u;
        v146 = 0u;
        v143 = 0u;
        v144 = 0u;
        obj = v31;
        v93 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v90, &v143, v154, 16, v91, v92);
        if (v93)
        {
          v100 = v93;
          v101 = *v144;
          while (2)
          {
            for (j = 0; j != v100; ++j)
            {
              if (*v144 != v101)
              {
                objc_enumerationMutation(obj);
              }

              v103 = *(*(&v143 + 1) + 8 * j);
              v104 = objc_msgSend_formatVersion(v103, v94, v95, v96, v97, v98, v99, v135, v136, v137);
              if (v104 != objc_msgSend_formatVersion(v70, v105, v106, v107, v108, v109, v110))
              {
                if (v138)
                {
                  v126 = MEMORY[0x277CCA9B8];
                  v152 = *MEMORY[0x277CCA450];
                  v153 = @"Unable to merge atom batches with different format versions";
                  v127 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v111, &v153, &v152, 1, v112, v113);
                  *v138 = objc_msgSend_errorWithDomain_code_userInfo_(v126, v128, @"CKDSErrorDomain", 2, v127, v129, v130);
                }

                v24 = 0;
                v56 = v136;
                v5 = v137;
                v89 = v135;
                goto LABEL_35;
              }

              v141[0] = MEMORY[0x277D85DD0];
              v141[1] = 3221225472;
              v141[2] = sub_24396DC18;
              v141[3] = &unk_278DDAF98;
              v142 = inited;
              objc_msgSend_enumerateAtomsWithOptions_usingBlock_(v103, v114, 0, v141, v115, v116, v117);
            }

            v100 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v94, &v143, v154, 16, v98, v99);
            if (v100)
            {
              continue;
            }

            break;
          }
        }

        v140 = 0;
        v123 = objc_msgSend_finishWritingWithError_(inited, v118, &v140, v119, v120, v121, v122);
        v124 = v140;
        v125 = v124;
        if (v123)
        {
          v24 = inited;
        }

        else if (v138)
        {
          v132 = v124;
          v24 = 0;
          *v138 = v125;
        }

        else
        {
          v24 = 0;
        }

        v56 = v136;
        v5 = v137;
        v89 = v135;
      }

      else if (v138)
      {
        v131 = v89;
        v24 = 0;
        *v138 = v89;
      }

      else
      {
        v24 = 0;
      }

LABEL_35:
    }
  }

  else
  {
    if (a4)
    {
      v25 = MEMORY[0x277CCA9B8];
      v156 = *MEMORY[0x277CCA450];
      v157[0] = @"Cannot merge zero atom batches";
      v26 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v12, v157, &v156, 1, v16, v17);
      *a4 = objc_msgSend_errorWithDomain_code_userInfo_(v25, v27, @"CKDSErrorDomain", 2, v26, v28, v29);
    }

    v24 = 0;
  }

  v133 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)splitWithMaximumSize:(unint64_t)a3 error:(id *)a4
{
  v7 = objc_opt_new();
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_24396DD98;
  v14[3] = &unk_278DDB088;
  v8 = v7;
  v15 = v8;
  if (objc_msgSend_splitWithMaximumSize_error_block_(self, v9, a3, a4, v14, v10, v11))
  {
    v12 = v8;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)splitWithMaximumSize:(unint64_t)a3 error:(id *)a4 block:(id)a5
{
  v401 = *MEMORY[0x277D85DE8];
  v8 = a5;
  if (objc_msgSend_isWriting(self, v9, v10, v11, v12, v13, v14))
  {
    v368 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v15, v16, v17, v18, v19, v20);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v368, v369, a2, self, @"CKAtomBatch.m", 854, @"Cannot split an atom batch which is writing");
  }

  v21 = objc_msgSend_vectors(self, v15, v16, v17, v18, v19, v20);
  v376 = objc_msgSend_previous(v21, v22, v23, v24, v25, v26, v27);

  v34 = objc_msgSend_vectors(self, v28, v29, v30, v31, v32, v33);
  v373 = objc_msgSend_removals(v34, v35, v36, v37, v38, v39, v40);

  v47 = objc_msgSend_vectors(self, v41, v42, v43, v44, v45, v46);
  v54 = objc_msgSend_dependencies(v47, v48, v49, v50, v51, v52, v53);
  v61 = objc_msgSend_mutableCopy(v54, v55, v56, v57, v58, v59, v60);

  v68 = objc_msgSend_vectors(self, v62, v63, v64, v65, v66, v67);
  v75 = objc_msgSend_contents(v68, v69, v70, v71, v72, v73, v74);
  v82 = objc_msgSend_clockVector(v75, v76, v77, v78, v79, v80, v81);
  v375 = v61;
  objc_msgSend_unionVector_(v61, v83, v82, v84, v85, v86, v87);

  v94 = objc_msgSend_vectors(self, v88, v89, v90, v91, v92, v93);
  v101 = objc_msgSend_contents(v94, v95, v96, v97, v98, v99, v100);
  v372 = objc_msgSend_vectorFilteredByAtomState_(v101, v102, 3, v103, v104, v105, v106);

  v378 = objc_opt_new();
  v377 = objc_opt_new();
  v107 = self;
  v108 = v107;
  if (!v107)
  {
    v109 = 0;
    v327 = 0;
    v360 = 0;
LABEL_45:
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v362 = *MEMORY[0x277CBC840];
    if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v398 = v108;
      v399 = 2048;
      v400 = v360;
      _os_log_debug_impl(&dword_2438A8000, v362, OS_LOG_TYPE_DEBUG, "Successfully split atom batch %@ over %tu iterations", buf, 0x16u);
    }

    v363 = 1;
    goto LABEL_57;
  }

  v370 = a4;
  v109 = 0;
  v382 = 0;
  v110 = 1;
  v381 = v107;
  v374 = v8;
  while (1)
  {
    v111 = v110;
    context = objc_autoreleasePoolPush();
    if (v108 != v381)
    {
      v118 = objc_msgSend_vectors(v381, v112, v113, v114, v115, v116, v117);
      v125 = objc_msgSend_contents(v118, v119, v120, v121, v122, v123, v124);
      v132 = objc_msgSend_mutableCopy(v125, v126, v127, v128, v129, v130, v131);

      v139 = objc_msgSend_vectors(v108, v133, v134, v135, v136, v137, v138);
      v146 = objc_msgSend_contents(v139, v140, v141, v142, v143, v144, v145);
      v153 = objc_msgSend_clockVector(v146, v147, v148, v149, v150, v151, v152);
      objc_msgSend_intersectVector_(v132, v154, v153, v155, v156, v157, v158);

      v165 = objc_msgSend_vectors(v108, v159, v160, v161, v162, v163, v164);
      v172 = objc_msgSend_contents(v165, v166, v167, v168, v169, v170, v171);
      objc_msgSend_unionStateVector_(v172, v173, v132, v174, v175, v176, v177);

      if (!v382)
      {
        v184 = objc_msgSend_vectors(v108, v178, v179, v180, v181, v182, v183);
        v191 = objc_msgSend_contents(v184, v185, v186, v187, v188, v189, v190);
        objc_msgSend_unionStateVector_(v191, v192, v372, v193, v194, v195, v196);

        v203 = objc_msgSend_vectors(v108, v197, v198, v199, v200, v201, v202);
        v210 = objc_msgSend_removals(v203, v204, v205, v206, v207, v208, v209);
        objc_msgSend_unionStateVector_(v210, v211, v373, v212, v213, v214, v215);
      }
    }

    v385 = v111;
    v216 = objc_msgSend_count(v108, v112, v113, v114, v115, v116, v117);
    v395 = v109;
    v396 = 0;
    v221 = objc_msgSend_size_error_(v108, v217, &v396, &v395, v218, v219, v220);
    v222 = v395;

    if ((v221 & 1) == 0)
    {

      objc_autoreleasePoolPop(context);
      v327 = 0;
      v109 = v222;
      v361 = v370;
      v360 = v385;
      goto LABEL_50;
    }

    v229 = v396;
    if (v396 <= a3 || v216 <= 1)
    {
      if (v8)
      {
        v8[2](v8, v108);
        ++v382;
        v229 = v396;
      }

      if (v229 > a3)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v329 = *MEMORY[0x277CBC840];
        if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_INFO))
        {
          *buf = 134218240;
          v398 = v396;
          v399 = 2048;
          v400 = a3;
          _os_log_impl(&dword_2438A8000, v329, OS_LOG_TYPE_INFO, "An indivisible batch of size %tu exceeds the maximum requested size %tu, continuing as a best effort", buf, 0x16u);
        }
      }

      v330 = v8;
      v331 = objc_msgSend_lastObject(v378, v223, v224, v225, v226, v227, v228);
      v280 = objc_msgSend_lastObject(v377, v332, v333, v334, v335, v336, v337);
      objc_msgSend_removeLastObject(v378, v338, v339, v340, v341, v342, v343);
      objc_msgSend_removeLastObject(v377, v344, v345, v346, v347, v348, v349);
      if (v331)
      {
        v350 = [CKAtomBatch alloc];
        v357 = objc_msgSend_mergeableValueID(v381, v351, v352, v353, v354, v355, v356);
        v394 = v222;
        v327 = objc_msgSend_initWithStorage_optionsByReaderWriterClass_mergeableValueID_vectors_formatVersion_error_(v350, v358, v331, 0, v357, v280, 3, &v394);
        v359 = v394;

        v301 = v331;
        if (!v327)
        {
          LOBYTE(v294) = 0;
          v328 = 1;
          v8 = v330;
          goto LABEL_37;
        }
      }

      else
      {
        v327 = 0;
        v359 = v222;
        v301 = 0;
      }

      v8 = v330;
      v328 = 0;
      LOBYTE(v294) = 1;
    }

    else
    {
      v230 = objc_alloc(MEMORY[0x277CBC468]);
      v231 = objc_opt_new();
      v232 = objc_opt_new();
      v235 = objc_msgSend_initWithPreviousVector_contentsVector_removalsVector_dependenciesVector_(v230, v233, v376, v231, v232, v375, v234);

      v236 = objc_alloc(MEMORY[0x277CBC468]);
      v237 = objc_opt_new();
      v238 = objc_opt_new();
      v241 = objc_msgSend_initWithPreviousVector_contentsVector_removalsVector_dependenciesVector_(v236, v239, v376, v237, v238, v375, v240);

      v242 = [CKAtomBatch alloc];
      v249 = objc_msgSend_mergeableValueID(v381, v243, v244, v245, v246, v247, v248);
      v256 = objc_msgSend_writerOptions(v381, v250, v251, v252, v253, v254, v255);
      v393 = v222;
      v380 = v235;
      inited = objc_msgSend_initWriterWithMergeableValueID_vectors_options_error_(v242, v257, v249, v235, v256, &v393, v258);
      v260 = v393;

      v379 = inited;
      if (inited)
      {
        v261 = [CKAtomBatch alloc];
        v268 = objc_msgSend_mergeableValueID(v381, v262, v263, v264, v265, v266, v267);
        v275 = objc_msgSend_writerOptions(v381, v269, v270, v271, v272, v273, v274);
        v392 = v260;
        v278 = objc_msgSend_initWriterWithMergeableValueID_vectors_options_error_(v261, v276, v268, v241, v275, &v392, v277);
        v279 = v392;

        v280 = v241;
        if (v278)
        {
          v371 = v241;
          v388[0] = MEMORY[0x277D85DD0];
          v388[1] = 3221225472;
          v388[2] = sub_24396E7E0;
          v388[3] = &unk_278DDB0B0;
          v391 = v216;
          v281 = v379;
          v282 = v379;
          v389 = v282;
          v283 = v278;
          v284 = v278;
          v390 = v284;
          objc_msgSend_enumerateAtomsWithOptions_usingBlock_(v108, v285, 0, v388, v286, v287, v288);
          v387 = v279;
          v294 = objc_msgSend_finishWritingWithError_(v282, v289, &v387, v290, v291, v292, v293);
          v295 = v387;

          v301 = v380;
          if (v294)
          {
            v386 = v295;
            v294 = objc_msgSend_finishWritingWithError_(v284, v296, &v386, v297, v298, v299, v300);
            v302 = v386;

            if (v294)
            {
              v309 = objc_msgSend_storage(v284, v303, v304, v305, v306, v307, v308);
              objc_msgSend_addObject_(v378, v310, v309, v311, v312, v313, v314);

              v321 = objc_msgSend_vectors(v284, v315, v316, v317, v318, v319, v320);
              objc_msgSend_addObject_(v377, v322, v321, v323, v324, v325, v326);

              v327 = v282;
              v328 = 0;
              LOBYTE(v294) = 1;
            }

            else
            {
              v327 = 0;
              v328 = 1;
            }

            v295 = v302;
          }

          else
          {
            v327 = 0;
            v328 = 1;
          }

          v279 = v295;
          v280 = v371;
          v278 = v283;
        }

        else
        {
          v327 = 0;
          LOBYTE(v294) = 0;
          v328 = 1;
          v281 = v379;
          v301 = v380;
        }

        v359 = v279;
      }

      else
      {
        v359 = v260;
        v327 = 0;
        LOBYTE(v294) = 0;
        v328 = 1;
        v281 = 0;
        v301 = v380;
        v280 = v241;
      }

      v8 = v374;
    }

LABEL_37:

    objc_autoreleasePoolPop(context);
    if (v328)
    {
      break;
    }

    v360 = v385;
    v110 = v385 + 1;
    v108 = v327;
    v109 = v359;
    if (!v327)
    {
      goto LABEL_43;
    }
  }

  v360 = v385;
  v109 = v359;
LABEL_43:
  v361 = v370;
  if (v294)
  {
    v108 = v381;
    goto LABEL_45;
  }

LABEL_50:
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v364 = *MEMORY[0x277CBC840];
  if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v398 = v381;
    v399 = 2048;
    v400 = v360;
    _os_log_error_impl(&dword_2438A8000, v364, OS_LOG_TYPE_ERROR, "Failed to split atom batch %@ over %tu iterations", buf, 0x16u);
    if (!v361)
    {
      goto LABEL_56;
    }

LABEL_54:
    v365 = v109;
    v363 = 0;
    *v361 = v109;
  }

  else
  {
    if (v361)
    {
      goto LABEL_54;
    }

LABEL_56:
    v363 = 0;
  }

LABEL_57:

  v366 = *MEMORY[0x277D85DE8];
  return v363;
}

- (id)copyWithZone:(_NSZone *)a3
{
  if (objc_msgSend_isWriting(self, a2, a3, v3, v4, v5, v6))
  {
    v51 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v9, v10, v11, v12, v13, v14);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v51, v52, a2, self, @"CKAtomBatch.m", 1032, @"Cannot copy an atom batch which is writing");
  }

  v15 = [CKAtomBatch alloc];
  v22 = objc_msgSend_storage(self, v16, v17, v18, v19, v20, v21);
  vectors = self->_vectors;
  mergeableValueID = self->_mergeableValueID;
  v31 = objc_msgSend_formatVersion(self, v25, v26, v27, v28, v29, v30);
  v53 = 0;
  v33 = objc_msgSend_initWithStorage_optionsByReaderWriterClass_mergeableValueID_vectors_formatVersion_error_(v15, v32, v22, 0, mergeableValueID, vectors, v31, &v53);
  v34 = v53;

  if (!v33)
  {
    v35 = MEMORY[0x277CBEAD8];
    v36 = *MEMORY[0x277CBE660];
    v37 = objc_opt_class();
    v38 = NSStringFromClass(v37);
    v45 = objc_msgSend_description(v34, v39, v40, v41, v42, v43, v44);
    objc_msgSend_raise_format_(v35, v46, v36, @"Failed to copy %@: %@", v47, v48, v49, v38, v45);
  }

  return v33;
}

- (void)encodeWithCoder:(id)a3
{
  v54 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (objc_msgSend_isWriting(self, v6, v7, v8, v9, v10, v11))
  {
    v49 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v12, v13, v14, v15, v16, v17);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v49, v50, a2, self, @"CKAtomBatch.m", 1058, @"Cannot encode an atom batch which is writing");
  }

  v51 = 0;
  v18 = objc_msgSend_dataWithError_(self, v12, &v51, v14, v15, v16, v17);
  v19 = v51;
  if (v18)
  {
    mergeableValueID = self->_mergeableValueID;
    v21 = NSStringFromSelector(sel_mergeableValueID);
    objc_msgSend_encodeObject_forKey_(v5, v22, mergeableValueID, v21, v23, v24, v25);

    if (self->_vectors)
    {
      v32 = objc_msgSend__metadataForCoding(self, v26, v27, v28, v29, v30, v31);
      objc_msgSend_encodeObject_forKey_(v5, v33, v32, @"metadata", v34, v35, v36);
    }

    else
    {
      objc_msgSend_encodeObject_forKey_(v5, v26, 0, @"metadata", v29, v30, v31);
    }

    v43 = NSStringFromSelector(sel_data);
    objc_msgSend_encodeObject_forKey_(v5, v44, v18, v43, v45, v46, v47);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v37 = *MEMORY[0x277CBC840];
    if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v53 = v19;
      _os_log_error_impl(&dword_2438A8000, v37, OS_LOG_TYPE_ERROR, "Error exporting data for atom batch in coder: %@", buf, 0xCu);
    }

    objc_msgSend_failWithError_(v5, v38, v19, v39, v40, v41, v42);
  }

  v48 = *MEMORY[0x277D85DE8];
}

- (CKAtomBatch)initWithCoder:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_mergeableValueID);
  v11 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v7, v5, v6, v8, v9, v10);

  v12 = objc_opt_class();
  v17 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v13, v12, @"metadata", v14, v15, v16);
  v18 = objc_opt_class();
  v19 = NSStringFromSelector(sel_data);
  v24 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v20, v18, v19, v21, v22, v23);

  v31 = objc_msgSend_vectors(v17, v25, v26, v27, v28, v29, v30);
  v45 = 0;
  v34 = objc_msgSend_initWithData_mergeableValueID_vectors_error_(self, v32, v24, v11, v31, &v45, v33);
  v35 = v45;

  if (v35)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v36 = *MEMORY[0x277CBC840];
    if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v47 = v35;
      _os_log_error_impl(&dword_2438A8000, v36, OS_LOG_TYPE_ERROR, "Error initializing atom batch from data in coder: %@", buf, 0xCu);
    }

    objc_msgSend_failWithError_(v4, v37, v35, v38, v39, v40, v41);
    v42 = 0;
  }

  else
  {
    v42 = v34;
  }

  v43 = *MEMORY[0x277D85DE8];
  return v42;
}

- (id)_metadataForCoding
{
  v31[2] = *MEMORY[0x277D85DE8];
  v31[0] = 0;
  v31[1] = 0;
  v3 = objc_alloc(MEMORY[0x277CCAD78]);
  v9 = objc_msgSend_initWithUUIDBytes_(v3, v4, v31, v5, v6, v7, v8);
  v16 = objc_msgSend_UUIDString(v9, v10, v11, v12, v13, v14, v15);

  v17 = objc_alloc(MEMORY[0x277CBC460]);
  v24 = objc_msgSend_vectors(self, v18, v19, v20, v21, v22, v23);
  v28 = objc_msgSend_initWithIdentifier_vectors_replacedDeltaIdentifiers_(v17, v25, v16, v24, 0, v26, v27);

  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

- (CKAtomBatch)initWithMergeableDelta:(id)a3 error:(id *)a4
{
  v63 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC840];
  if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_DEBUG))
  {
    v61 = 138412290;
    v62 = v6;
    _os_log_debug_impl(&dword_2438A8000, v7, OS_LOG_TYPE_DEBUG, "Creating atom batch from delta: %@", &v61, 0xCu);
  }

  v20 = objc_msgSend_fileURL(v6, v8, v9, v10, v11, v12, v13);
  if (v20)
  {
    v21 = objc_msgSend_valueID(v6, v14, v15, v16, v17, v18, v19);
    v28 = objc_msgSend_metadata(v6, v22, v23, v24, v25, v26, v27);
    v35 = objc_msgSend_vectors(v28, v29, v30, v31, v32, v33, v34);
    self = objc_msgSend_initWithFileURL_mergeableValueID_vectors_options_error_(self, v36, v20, v21, v35, 0, a4);
  }

  else
  {
    v21 = objc_msgSend_dataWithError_(v6, v14, a4, v16, v17, v18, v19);
    if (!v21)
    {
      v58 = 0;
      goto LABEL_10;
    }

    v28 = objc_msgSend_valueID(v6, v37, v38, v39, v40, v41, v42);
    v35 = objc_msgSend_metadata(v6, v43, v44, v45, v46, v47, v48);
    v55 = objc_msgSend_vectors(v35, v49, v50, v51, v52, v53, v54);
    self = objc_msgSend_initWithData_mergeableValueID_vectors_error_(self, v56, v21, v28, v55, a4, v57);
  }

  v58 = self;
LABEL_10:

  v59 = *MEMORY[0x277D85DE8];
  return v58;
}

- (id)splitWithMaximumDeltaSize:(unint64_t)a3 error:(id *)a4
{
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_24396F654;
  v29 = sub_24396F664;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 1;
  v7 = objc_opt_new();
  v19 = &v21;
  v20 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_24396F66C;
  v16[3] = &unk_278DDB0D8;
  v18 = &v25;
  v8 = v7;
  v17 = v8;
  LOBYTE(self) = objc_msgSend_splitWithMaximumSize_error_block_(self, v9, a3, &v20, v16, v10, v11);
  v12 = v20;
  v13 = v12;
  if (v22[3] & self)
  {
    v14 = v8;
  }

  else if (a4)
  {
    if (v26[5])
    {
      v12 = v26[5];
    }

    v14 = 0;
    *a4 = v12;
  }

  else
  {
    v14 = 0;
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);

  return v14;
}

@end