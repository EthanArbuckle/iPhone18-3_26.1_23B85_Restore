@interface CKXBackingStore
+ ($B3A8F95EBB77A6B0A6D0D56B621ADA09)headerForData:(id)a3;
+ (BOOL)header:(id *)a3 forStorage:(id)a4 error:(id *)a5;
- ($3CC19D079FD0B010EE84973AA846B91B)beginReferencedListForReference:(SEL)a3 inStruct:(unint64_t)a4;
- ($3CC19D079FD0B010EE84973AA846B91B)referencedListForReference:(SEL)a3 inStruct:(unint64_t)a4;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)beginAppendedListStructInList:(SEL)a3;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)beginReferencedStructForReference:(SEL)a3 inStruct:(unint64_t)a4;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)beginRootStructWithType:(SEL)a3 error:(unint64_t)a4;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)referencedStructAtIndex:(SEL)a3 inList:(int64_t)a4;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)referencedStructForReference:(SEL)a3 inStruct:(unint64_t)a4;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)rootStructWithType:(SEL)a3;
- (BOOL)_setupBackingStoreForReadingWithError:(id *)a3;
- (BOOL)_setupBackingStoreForWritingWithError:(id *)a3;
- (BOOL)finishWritingWithError:(id *)a3;
- (BOOL)flushWithError:(id *)a3;
- (BOOL)isWriting;
- (BOOL)referenceIsNull:(unint64_t)a3 inStruct:(id *)a4;
- (BOOL)setReadableStorage:(id)a3 error:(id *)a4;
- (BOOL)setWritableStorage:(id)a3 error:(id *)a4;
- (CKDSReadableStorage)readableStorage;
- (CKDSWritableStorage)writableStorage;
- (CKXBackingStore)initWithStorage:(id)a3 binding:(id)a4 optionsByReaderWriterClass:(id)a5 formatVersion:(unsigned __int8)a6 error:(id *)a7;
- (id)appendedStructProxyForListInstance:(id *)a3;
- (id)reader;
- (id)readerForProxy:(id)a3;
- (id)schema;
- (id)structProxyForListInstance:(id *)a3 atIndex:(int64_t)a4;
- (id)writer;
- (id)writerForProxy:(id)a3;
- (int64_t)lengthForList:(id *)a3;
- (unint64_t)valueSizeForField:(unint64_t)a3;
- (void)assignStruct:(id *)a3 toReference:(unint64_t)a4 inStruct:(id *)a5;
- (void)commitStruct:(id *)a3;
- (void)copyData:(void *)a3 forField:(unint64_t)a4 inStruct:(id *)a5;
- (void)copyData:(void *)a3 forList:(id *)a4;
- (void)proxyScope:(id)a3;
- (void)readUsingBlock:(id)a3;
- (void)setData:(void *)a3 withEncoding:(const char *)a4 forField:(unint64_t)a5 inStruct:(id *)a6;
- (void)setData:(void *)a3 withLength:(unint64_t)a4 forList:(id *)a5;
- (void)writeUsingBlock:(id)a3;
@end

@implementation CKXBackingStore

- (CKXBackingStore)initWithStorage:(id)a3 binding:(id)a4 optionsByReaderWriterClass:(id)a5 formatVersion:(unsigned __int8)a6 error:(id *)a7
{
  v14 = a3;
  v15 = a4;
  v22 = a5;
  if (v14)
  {
    if (v15)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v52 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v16, v17, v18, v19, v20, v21);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v52, v53, a2, self, @"CKXBackingStore.mm", 60, @"Storage must not be nil");

    if (v15)
    {
      goto LABEL_3;
    }
  }

  v54 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v16, v17, v18, v19, v20, v21);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v54, v55, a2, self, @"CKXBackingStore.mm", 61, @"Binding must not be nil");

LABEL_3:
  v58 = a2;
  v23 = a7;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v61.receiver = self;
  v61.super_class = CKXBackingStore;
  v25 = [(CKXBackingStore *)&v61 init];
  if (v25)
  {
    v26 = objc_opt_new();
    v27 = *(v25 + 4);
    *(v25 + 4) = v26;

    objc_storeStrong(v25 + 8, a4);
    v28 = [CKXVersionedReaderWriterStore alloc];
    v33 = objc_msgSend_initWithBinding_optionsByReaderWriterClass_(v28, v29, v15, v22, v30, v31, v32);
    v34 = *(v25 + 3);
    *(v25 + 3) = v33;

    objc_storeStrong(v25 + 2, a3);
    if (isKindOfClass)
    {
      *(v25 + 4) = 0;
      v25[10] = 0;
      v60 = 0;
      v40 = objc_msgSend__setupBackingStoreForReadingWithError_(v25, v35, &v60, v36, v37, v38, v39);
      v41 = v60;
    }

    else
    {
      v25[8] = a6;
      *(v25 + 9) = 1025;
      v59 = 0;
      v40 = objc_msgSend__setupBackingStoreForWritingWithError_(v25, v35, &v59, v36, v37, v38, v39);
      v41 = v59;
    }

    v43 = v41;
    v42 = v43;
    if ((v40 & 1) == 0)
    {
      if (v43)
      {
        if (!a7)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v56 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v44, v45, v46, v47, v48, v49);
        objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v56, v57, v58, v25, @"CKXBackingStore.mm", 90, @"No error found for failed backing store init");

        if (!a7)
        {
          goto LABEL_13;
        }
      }

      v50 = v42;
      v23 = 0;
      *a7 = v42;
      goto LABEL_13;
    }
  }

  else
  {
    v42 = 0;
  }

  v23 = v25;
LABEL_13:

  return v23;
}

- (BOOL)_setupBackingStoreForReadingWithError:(id *)a3
{
  v213[1] = *MEMORY[0x277D85DE8];
  v10 = objc_msgSend_readableStorage(self, a2, a3, v3, v4, v5, v6);

  if (!v10)
  {
    v184 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v11, v12, v13, v14, v15, v16);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v184, v185, a2, self, @"CKXBackingStore.mm", 142, @"Readable storage not present");
  }

  if (self->_topLevelReadProxy)
  {
    v186 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v11, v12, v13, v14, v15, v16);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v186, v187, a2, self, @"CKXBackingStore.mm", 143, @"Backing store already set up for reading");
  }

  v17 = objc_opt_class();
  v24 = objc_msgSend_readableStorage(self, v18, v19, v20, v21, v22, v23);
  v209 = 0;
  v28 = objc_msgSend_header_forStorage_error_(v17, v25, &self->_header, v24, &v209, v26, v27);
  v29 = v209;

  if (v28)
  {
    v36 = objc_msgSend_formatVersion(self, v30, v31, v32, v33, v34, v35);
    v208 = 0;
    isReader_error = objc_msgSend__validateVersion_isReader_error_(self, v37, v36, 1, &v208, v38, v39);
    v41 = v208;
    v48 = v41;
    if ((isReader_error & 1) == 0)
    {
      if (a3)
      {
        v112 = v41;
        v111 = 0;
        *a3 = v48;
      }

      else
      {
        v111 = 0;
      }

      goto LABEL_29;
    }

    v49 = objc_msgSend_readerWriterStore(self, v42, v43, v44, v45, v46, v47);
    v56 = objc_msgSend_formatVersion(self, v50, v51, v52, v53, v54, v55);
    v62 = objc_msgSend_readerForVersion_(v49, v57, v56, v58, v59, v60, v61);

    if (!v62)
    {
      v188 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v63, v64, v65, v66, v67, v68);
      v195 = objc_msgSend_formatVersion(self, v189, v190, v191, v192, v193, v194);
      v202 = CKDSStringForBackingStoreFormatVersion(v195, v196, v197, v198, v199, v200, v201);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v188, v203, a2, self, @"CKXBackingStore.mm", 167, @"Reader unexpectedly unavailable for atom batch format version %@", v202);
    }

    v69 = objc_opt_class();
    v76 = objc_msgSend_formatVersion(self, v70, v71, v72, v73, v74, v75);
    v82 = objc_msgSend_headerSizeForFormatVersion_(v69, v77, v76, v78, v79, v80, v81);
    v89 = objc_msgSend_readableStorage(self, v83, v84, v85, v86, v87, v88);
    v96 = objc_msgSend_fileURL(v89, v90, v91, v92, v93, v94, v95);
    v97 = v96 == 0;

    if (v97)
    {
      v113 = objc_msgSend_readableStorage(self, v98, v99, v100, v101, v102, v103);
      v105 = objc_msgSend_data(v113, v114, v115, v116, v117, v118, v119);

      if (objc_msgSend_length(v105, v120, v121, v122, v123, v124, v125) < v82)
      {
        v132 = MEMORY[0x277CCA9B8];
        v210 = *MEMORY[0x277CCA450];
        v211 = @"Invalid file length";
        v133 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v126, &v211, &v210, 1, v130, v131);
        v109 = objc_msgSend_errorWithDomain_code_userInfo_(v132, v134, @"CKDSErrorDomain", 5, v133, v135, v136);

        goto LABEL_20;
      }

      v144 = objc_msgSend_length(v105, v126, v127, v128, v129, v130, v131);
      v149 = objc_msgSend_subdataWithRange_(v105, v145, v82, v144 - v82, v146, v147, v148);
      v150 = [CKDSReadableStorage alloc];
      v156 = objc_msgSend_initWithData_(v150, v151, v149, v152, v153, v154, v155);
      v206 = 0;
      v161 = objc_msgSend_setReadableStorage_error_(v62, v157, v156, &v206, v158, v159, v160);
      v109 = v206;

      if ((v161 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v82)
      {
        v104 = MEMORY[0x277CCA9B8];
        v212 = *MEMORY[0x277CCA450];
        v213[0] = @"Not implemented";
        v105 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v98, v213, &v212, 1, v102, v103);
        v109 = objc_msgSend_errorWithDomain_code_userInfo_(v104, v106, @"CKDSErrorDomain", 1, v105, v107, v108);
LABEL_20:

LABEL_21:
        if (a3)
        {
          v137 = v109;
          *a3 = v109;
        }

        v111 = 0;
        goto LABEL_28;
      }

      v138 = objc_msgSend_readableStorage(self, v98, v99, v100, v101, v102, v103);
      v207 = 0;
      v143 = objc_msgSend_setReadableStorage_error_(v62, v139, v138, &v207, v140, v141, v142);
      v109 = v207;

      if ((v143 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    v204 = 0uLL;
    v205 = 0;
    v168 = objc_msgSend_binding(self, v162, v163, v164, v165, v166, v167);
    v175 = objc_msgSend_topLevelStructToken(v168, v169, v170, v171, v172, v173, v174);
    objc_msgSend_rootStructWithType_(self, v176, v175, v177, v178, v179, v180);

    topLevelReadProxy = self->_topLevelReadProxy;
    self->_topLevelReadProxy = 0;

    v111 = 1;
LABEL_28:

LABEL_29:
    goto LABEL_30;
  }

  if (a3)
  {
    v110 = v29;
    v111 = 0;
    *a3 = v29;
  }

  else
  {
    v111 = 0;
  }

LABEL_30:

  v182 = *MEMORY[0x277D85DE8];
  return v111;
}

- (BOOL)_setupBackingStoreForWritingWithError:(id *)a3
{
  v10 = objc_msgSend_writableStorage(self, a2, a3, v3, v4, v5, v6);

  if (!v10)
  {
    v92 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v11, v12, v13, v14, v15, v16);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v92, v93, a2, self, @"CKXBackingStore.mm", 216, @"Writable storage not present");
  }

  if (self->_topLevelWriteProxy)
  {
    v94 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v11, v12, v13, v14, v15, v16);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v94, v95, a2, self, @"CKXBackingStore.mm", 217, @"Backing store already set up for writing");
  }

  v17 = objc_msgSend_formatVersion(self, v11, v12, v13, v14, v15, v16);
  v118 = 0;
  isReader_error = objc_msgSend__validateVersion_isReader_error_(self, v18, v17, 0, &v118, v19, v20);
  v22 = v118;
  v29 = v22;
  if (isReader_error)
  {
    v30 = objc_msgSend_readerWriterStore(self, v23, v24, v25, v26, v27, v28);
    v37 = objc_msgSend_formatVersion(self, v31, v32, v33, v34, v35, v36);
    v43 = objc_msgSend_writerForVersion_(v30, v38, v37, v39, v40, v41, v42);

    if (!v43)
    {
      v96 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v44, v45, v46, v47, v48, v49);
      v103 = objc_msgSend_formatVersion(self, v97, v98, v99, v100, v101, v102);
      v110 = CKDSStringForBackingStoreFormatVersion(v103, v104, v105, v106, v107, v108, v109);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v96, v111, a2, self, @"CKXBackingStore.mm", 231, @"Writer unexpectedly unavailable for atom batch format version %@", v110);
    }

    v50 = objc_msgSend_writableStorage(self, v44, v45, v46, v47, v48, v49);
    v117 = 0;
    v55 = objc_msgSend_setWritableStorage_error_(v43, v51, v50, &v117, v52, v53, v54);
    v56 = v117;

    if (v55)
    {

      v115 = 0uLL;
      v116 = 0;
      v63 = objc_msgSend_binding(self, v57, v58, v59, v60, v61, v62);
      v70 = objc_msgSend_topLevelStructToken(v63, v64, v65, v66, v67, v68, v69);
      v114 = 0;
      objc_msgSend_beginRootStructWithType_error_(self, v71, v70, &v114, v72, v73, v74);
      v56 = v114;

      v81 = v115 != 0;
      if (v115)
      {
        v112 = v115;
        v113 = v116;
        v82 = objc_msgSend_cacheScope(self, v75, v76, v77, v78, v79, v80);
        v86 = objc_msgSend__proxyWithStructInstance_mutable_cacheScope_(self, v83, &v112, 1, v82, v84, v85);
        topLevelWriteProxy = self->_topLevelWriteProxy;
        self->_topLevelWriteProxy = v86;

LABEL_20:
        goto LABEL_21;
      }

      if (!a3)
      {
        goto LABEL_20;
      }

      v90 = v56;
    }

    else
    {
      if (!a3)
      {
        v81 = 0;
        goto LABEL_20;
      }

      v89 = v56;
      v81 = 0;
    }

    *a3 = v56;
    goto LABEL_20;
  }

  if (a3)
  {
    v88 = v22;
    v81 = 0;
    *a3 = v29;
  }

  else
  {
    v81 = 0;
  }

LABEL_21:

  return v81;
}

- (CKDSReadableStorage)readableStorage
{
  storage = self->_storage;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = self->_storage;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (CKDSWritableStorage)writableStorage
{
  storage = self->_storage;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = self->_storage;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isWriting
{
  v7 = objc_msgSend_writableStorage(self, a2, v2, v3, v4, v5, v6);
  v8 = v7 != 0;

  return v8;
}

- (id)reader
{
  if (objc_msgSend_isWriting(self, a2, v2, v3, v4, v5, v6))
  {
    v36 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v9, v10, v11, v12, v13, v14);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v36, v37, a2, self, @"CKXBackingStore.mm", 291, @"Reading not permitted while writing");
  }

  v15 = objc_msgSend_readerWriterStore(self, v9, v10, v11, v12, v13, v14);
  v22 = objc_msgSend_formatVersion(self, v16, v17, v18, v19, v20, v21);
  v28 = objc_msgSend_readerForVersion_(v15, v23, v22, v24, v25, v26, v27);

  if (!v28)
  {
    v38 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v29, v30, v31, v32, v33, v34);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v38, v39, a2, self, @"CKXBackingStore.mm", 293, @"Reader not found");
  }

  return v28;
}

- (id)writer
{
  if ((objc_msgSend_isWriting(self, a2, v2, v3, v4, v5, v6) & 1) == 0)
  {
    v36 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v9, v10, v11, v12, v13, v14);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v36, v37, a2, self, @"CKXBackingStore.mm", 298, @"Writing not permitted while reading");
  }

  v15 = objc_msgSend_readerWriterStore(self, v9, v10, v11, v12, v13, v14);
  v22 = objc_msgSend_formatVersion(self, v16, v17, v18, v19, v20, v21);
  v28 = objc_msgSend_writerForVersion_(v15, v23, v22, v24, v25, v26, v27);

  if (!v28)
  {
    v38 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v29, v30, v31, v32, v33, v34);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v38, v39, a2, self, @"CKXBackingStore.mm", 300, @"Writer not found");
  }

  return v28;
}

- (void)readUsingBlock:(id)a3
{
  v111 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  if (objc_msgSend_isWriting(self, v7, v8, v9, v10, v11, v12))
  {
    v101 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v13, v14, v15, v16, v17, v18);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v101, v102, a2, self, @"CKXBackingStore.mm", 306, @"finishWriting needs to be called before any data can be read");
  }

  v19 = objc_msgSend_topLevelReadProxy(self, v13, v14, v15, v16, v17, v18);

  v20 = *MEMORY[0x277CBC878];
  v21 = *MEMORY[0x277CBC880];
  if (v19)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v20);
    }

    v22 = *MEMORY[0x277CBC840];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v43 = objc_msgSend_header(self, v23, v24, v25, v26, v27, v28);
      v50 = CKDSStringForBackingStoreFormatVersion(v43, v44, v45, v46, v47, v48, v49);
      v57 = objc_msgSend_header(self, v51, v52, v53, v54, v55, v56) >> 8;
      v64 = objc_msgSend_header(self, v58, v59, v60, v61, v62, v63) >> 16;
      v71 = objc_msgSend_readableStorage(self, v65, v66, v67, v68, v69, v70);
      v103 = 138413058;
      v104 = v50;
      v105 = 1024;
      v106 = v57;
      v107 = 1024;
      v108 = v64;
      v109 = 2112;
      v110 = v71;
      _os_log_debug_impl(&dword_2438A8000, v22, OS_LOG_TYPE_DEBUG, "Reading %@ file with writer code %u, writer version %d, and storage %@", &v103, 0x22u);
    }

    v35 = objc_msgSend_topLevelReadProxy(self, v29, v30, v31, v32, v33, v34);
    v5[2](v5, v35);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v20);
    }

    v35 = *MEMORY[0x277CBC840];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      v72 = objc_msgSend_header(self, v36, v37, v38, v39, v40, v41);
      v79 = CKDSStringForBackingStoreFormatVersion(v72, v73, v74, v75, v76, v77, v78);
      v86 = objc_msgSend_header(self, v80, v81, v82, v83, v84, v85) >> 8;
      v93 = objc_msgSend_header(self, v87, v88, v89, v90, v91, v92) >> 16;
      v100 = objc_msgSend_readableStorage(self, v94, v95, v96, v97, v98, v99);
      v103 = 138413058;
      v104 = v79;
      v105 = 1024;
      v106 = v86;
      v107 = 1024;
      v108 = v93;
      v109 = 2112;
      v110 = v100;
      _os_log_debug_impl(&dword_2438A8000, v35, OS_LOG_TYPE_DEBUG, "Skipping read for %@ file with writer code %u, writer version %d, and storage %@, due to null root struct", &v103, 0x22u);
    }
  }

  objc_autoreleasePoolPop(v6);
  v42 = *MEMORY[0x277D85DE8];
}

- (void)writeUsingBlock:(id)a3
{
  v21 = a3;
  v5 = objc_autoreleasePoolPush();
  if ((objc_msgSend_isWriting(self, v6, v7, v8, v9, v10, v11) & 1) == 0)
  {
    v19 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v12, v13, v14, v15, v16, v17);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v19, v20, a2, self, @"CKXBackingStore.mm", 320, @"Writing not permitted after finishWriting has already been called");
  }

  v18 = objc_msgSend_topLevelWriteProxy(self, v12, v13, v14, v15, v16, v17);
  v21[2](v21, v18);

  objc_autoreleasePoolPop(v5);
}

- (BOOL)finishWritingWithError:(id *)a3
{
  if (objc_msgSend_isWriting(self, a2, a3, v3, v4, v5, v6))
  {
    v69 = 0;
    v14 = objc_msgSend_flushWithError_(self, v9, &v69, v10, v11, v12, v13);
    v15 = v69;
    if (v14)
    {
      v16 = objc_opt_class();
      v23 = objc_msgSend_writableStorage(self, v17, v18, v19, v20, v21, v22);
      v30 = objc_msgSend_formatVersion(self, v24, v25, v26, v27, v28, v29);
      v68 = v15;
      v34 = objc_msgSend_prefixStorage_withHeaderForVersion_error_(v16, v31, v23, v30, &v68, v32, v33);
      v35 = v68;

      if ((v34 & 1) == 0)
      {
        if (!a3)
        {
          v64 = 0;
          v15 = v35;
          goto LABEL_12;
        }

        v15 = v35;
        goto LABEL_11;
      }

      v42 = objc_msgSend_writableStorage(self, v36, v37, v38, v39, v40, v41);
      v49 = objc_msgSend_readableStorage(v42, v43, v44, v45, v46, v47, v48);
      storage = self->_storage;
      self->_storage = v49;

      objc_msgSend_reset(self->_topLevelWriteProxy, v51, v52, v53, v54, v55, v56);
      topLevelWriteProxy = self->_topLevelWriteProxy;
      self->_topLevelWriteProxy = 0;

      v67 = v35;
      v63 = objc_msgSend__setupBackingStoreForReadingWithError_(self, v58, &v67, v59, v60, v61, v62);
      v15 = v67;

      if (v63)
      {
        v64 = 1;
LABEL_12:

        return v64;
      }
    }

    if (!a3)
    {
      v64 = 0;
      goto LABEL_12;
    }

LABEL_11:
    v65 = v15;
    v64 = 0;
    *a3 = v15;
    goto LABEL_12;
  }

  return 1;
}

- (id)appendedStructProxyForListInstance:(id *)a3
{
  if (a3->var1)
  {
    v23 = 0uLL;
    v24 = 0;
    v9 = *&a3->var2;
    v22[0] = *&a3->var0;
    v22[1] = v9;
    objc_msgSend_beginAppendedListStructInList_(self, a2, v22, v3, v4, v5, v6);
    if (v23)
    {
      v16 = objc_msgSend_cacheScope(self, v10, v11, v12, v13, v14, v15, v23, v24);
      v20 = objc_msgSend__proxyWithStructInstance_mutable_cacheScope_(self, v17, v22, 1, v16, v18, v19);
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)structProxyForListInstance:(id *)a3 atIndex:(int64_t)a4
{
  if (a3->var1)
  {
    v23 = 0uLL;
    v24 = 0;
    v9 = *&a3->var2;
    v22[0] = *&a3->var0;
    v22[1] = v9;
    objc_msgSend_referencedStructAtIndex_inList_(self, a2, a4, v22, v4, v5, v6);
    if (v23)
    {
      v16 = objc_msgSend_cacheScope(self, v10, v11, v12, v13, v14, v15, v23, v24);
      v20 = objc_msgSend__proxyWithStructInstance_mutable_cacheScope_(self, v17, v22, 0, v16, v18, v19);
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (void)proxyScope:(id)a3
{
  v46 = a3;
  v10 = objc_msgSend_cacheScope(self, v4, v5, v6, v7, v8, v9);
  v17 = objc_msgSend_cacheScope(self, v11, v12, v13, v14, v15, v16);
  objc_msgSend_setCacheScope_(self, v18, v17 + 1, v19, v20, v21, v22);
  objc_msgSend_setCacheScope_(self, v23, v17 + 1, v24, v25, v26, v27);
  v28 = objc_autoreleasePoolPush();
  v46[2]();
  objc_autoreleasePoolPop(v28);
  v35 = objc_msgSend_proxyCache(self, v29, v30, v31, v32, v33, v34);
  objc_msgSend_putBackAllProxiesWithScope_(v35, v36, v17 + 1, v37, v38, v39, v40);

  objc_msgSend_setCacheScope_(self, v41, v10, v42, v43, v44, v45);
}

- (id)readerForProxy:(id)a3
{
  v5 = a3;
  if (objc_msgSend_isMutable(v5, v6, v7, v8, v9, v10, v11))
  {
    v19 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v12, v13, v14, v15, v16, v17);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v19, v20, a2, self, @"CKXBackingStore.mm", 480, @"Proxy must be immutable for reading");
  }

  return self;
}

- (id)writerForProxy:(id)a3
{
  v5 = a3;
  if ((objc_msgSend_isMutable(v5, v6, v7, v8, v9, v10, v11) & 1) == 0)
  {
    v26 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v12, v13, v14, v15, v16, v17);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v26, v27, a2, self, @"CKXBackingStore.mm", 485, @"Proxy must be mutable for writing");
  }

  if (objc_msgSend_committed(v5, v12, v13, v14, v15, v16, v17))
  {
    v18 = MEMORY[0x277CBEAD8];
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    objc_msgSend_raise_format_(v18, v21, *MEMORY[0x277CBE658], @"Write proxy %@ was retained out of scope and cannot be reused", v22, v23, v24, v20);
  }

  return self;
}

- (id)schema
{
  v7 = objc_msgSend_binding(self, a2, v2, v3, v4, v5, v6);
  v14 = objc_msgSend_schema(v7, v8, v9, v10, v11, v12, v13);

  return v14;
}

- (unint64_t)valueSizeForField:(unint64_t)a3
{
  v8 = objc_msgSend_schema(self, a2, a3, v3, v4, v5, v6);
  v14 = sub_243987270(v8, a3, v9, v10, v11, v12, v13);

  return v14;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)rootStructWithType:(SEL)a3
{
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  v10 = objc_msgSend_reader(self, a3, a4, v4, v5, v6, v7);
  v17 = v10;
  if (v10)
  {
    objc_msgSend_rootStructWithType_(v10, v11, a4, v12, v13, v14, v15);
  }

  else
  {
    retstr->var0 = 0;
    retstr->var1 = 0;
    retstr->var2 = 0;
  }

  return result;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)referencedStructForReference:(SEL)a3 inStruct:(unint64_t)a4
{
  v12 = objc_msgSend_schema(self, a3, a4, a5, v5, v6, v7);
  if (!v12 || (v13 = v12[10], 0x6DB6DB6DB6DB6DB7 * ((v12[11] - v13) >> 3) <= a4))
  {

    goto LABEL_7;
  }

  v14 = *(v13 + 56 * a4);

  if ((v14 & 1) == 0)
  {
LABEL_7:
    retstr->var0 = 0;
    retstr->var1 = -1;
    retstr->var2 = -1;
    return result;
  }

  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  v22 = objc_msgSend_reader(self, v16, v17, v18, v19, v20, v21);
  v27 = v22;
  v28 = *&a5->var0;
  var2 = a5->var2;
  if (v22)
  {
    objc_msgSend_referencedStructForReference_inStruct_(v22, v23, a4, &v28, v24, v25, v26);
  }

  else
  {
    retstr->var0 = 0;
    retstr->var1 = 0;
    retstr->var2 = 0;
  }

  return result;
}

- ($3CC19D079FD0B010EE84973AA846B91B)referencedListForReference:(SEL)a3 inStruct:(unint64_t)a4
{
  v12 = objc_msgSend_schema(self, a3, a4, a5, v5, v6, v7);
  if (!v12 || (v13 = v12[10], 0x6DB6DB6DB6DB6DB7 * ((v12[11] - v13) >> 3) <= a4))
  {

    goto LABEL_7;
  }

  v14 = *(v13 + 56 * a4);

  if ((v14 & 1) == 0)
  {
LABEL_7:
    retstr->var0 = 0;
    retstr->var1 = 0;
    retstr->var2 = -1;
    retstr->var3 = -1;
    return result;
  }

  *&retstr->var0 = 0u;
  *&retstr->var2 = 0u;
  v22 = objc_msgSend_reader(self, v16, v17, v18, v19, v20, v21);
  v27 = v22;
  v28 = *&a5->var0;
  var2 = a5->var2;
  if (v22)
  {
    objc_msgSend_referencedListForReference_inStruct_(v22, v23, a4, &v28, v24, v25, v26);
  }

  else
  {
    *&retstr->var0 = 0u;
    *&retstr->var2 = 0u;
  }

  return result;
}

- (BOOL)referenceIsNull:(unint64_t)a3 inStruct:(id *)a4
{
  v10 = objc_msgSend_schema(self, a2, a3, a4, v4, v5, v6);
  if (!v10 || (v11 = v10[10], 0x6DB6DB6DB6DB6DB7 * ((v10[11] - v11) >> 3) <= a3))
  {

    return 1;
  }

  v12 = *(v11 + 56 * a3);

  if (v12 != 1)
  {
    return 1;
  }

  v19 = objc_msgSend_reader(self, v13, v14, v15, v16, v17, v18);
  v26 = *&a4->var0;
  var2 = a4->var2;
  IsNull_inStruct = objc_msgSend_referenceIsNull_inStruct_(v19, v20, a3, &v26, v21, v22, v23);

  return IsNull_inStruct;
}

- (int64_t)lengthForList:(id *)a3
{
  if (!a3->var1)
  {
    return 0;
  }

  v8 = objc_msgSend_reader(self, a2, a3, v3, v4, v5, v6);
  v9 = *&a3->var2;
  v17[0] = *&a3->var0;
  v17[1] = v9;
  v15 = objc_msgSend_lengthForList_(v8, v10, v17, v11, v12, v13, v14);

  return v15;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)referencedStructAtIndex:(SEL)a3 inList:(int64_t)a4
{
  v12 = objc_msgSend_schema(self, a3, a4, a5, v5, v6, v7);
  if (!v12 || (var1 = a5->var1, v14 = v12[10], 0x6DB6DB6DB6DB6DB7 * ((v12[11] - v14) >> 3) <= var1))
  {

    goto LABEL_7;
  }

  v15 = *(v14 + 56 * var1);

  if ((v15 & 1) == 0)
  {
LABEL_7:
    retstr->var0 = 0;
    retstr->var1 = -1;
    retstr->var2 = -1;
    return result;
  }

  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  v23 = objc_msgSend_reader(self, v17, v18, v19, v20, v21, v22);
  v28 = v23;
  v29 = *&a5->var2;
  v30[0] = *&a5->var0;
  v30[1] = v29;
  if (v23)
  {
    objc_msgSend_referencedStructAtIndex_inList_(v23, v24, a4, v30, v25, v26, v27);
  }

  else
  {
    retstr->var0 = 0;
    retstr->var1 = 0;
    retstr->var2 = 0;
  }

  return result;
}

- (void)copyData:(void *)a3 forField:(unint64_t)a4 inStruct:(id *)a5
{
  v11 = objc_msgSend_schema(self, a2, a3, a4, a5, v5, v6);
  if (v11 && (v12 = v11[10], 0x6DB6DB6DB6DB6DB7 * ((v11[11] - v12) >> 3) > a4))
  {
    v13 = *(v12 + 56 * a4);

    if (v13 == 1)
    {
      v20 = objc_msgSend_reader(self, v14, v15, v16, v17, v18, v19);
      v24 = *&a5->var0;
      var2 = a5->var2;
      objc_msgSend_copyData_forField_inStruct_(v20, v21, a3, a4, &v24, v22, v23);
    }
  }

  else
  {
  }
}

- (void)copyData:(void *)a3 forList:(id *)a4
{
  v10 = objc_msgSend_schema(self, a2, a3, a4, v4, v5, v6);
  if (v10 && (var1 = a4->var1, v12 = v10[10], 0x6DB6DB6DB6DB6DB7 * ((v10[11] - v12) >> 3) > var1))
  {
    v13 = *(v12 + 56 * var1);

    if (v13 == 1)
    {
      v20 = objc_msgSend_reader(self, v14, v15, v16, v17, v18, v19);
      v21 = *&a4->var2;
      v26[0] = *&a4->var0;
      v26[1] = v21;
      objc_msgSend_copyData_forList_(v20, v22, a3, v26, v23, v24, v25);
    }
  }

  else
  {
  }
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)beginRootStructWithType:(SEL)a3 error:(unint64_t)a4
{
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  v11 = objc_msgSend_writer(self, a3, a4, a5, v5, v6, v7);
  v17 = v11;
  if (v11)
  {
    objc_msgSend_beginRootStructWithType_error_(v11, v12, a4, a5, v13, v14, v15);
  }

  else
  {
    retstr->var0 = 0;
    retstr->var1 = 0;
    retstr->var2 = 0;
  }

  return result;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)beginReferencedStructForReference:(SEL)a3 inStruct:(unint64_t)a4
{
  v12 = objc_msgSend_schema(self, a3, a4, a5, v5, v6, v7);
  if (!v12 || (v13 = v12[10], 0x6DB6DB6DB6DB6DB7 * ((v12[11] - v13) >> 3) <= a4))
  {

    goto LABEL_7;
  }

  v14 = *(v13 + 56 * a4);

  if ((v14 & 1) == 0)
  {
LABEL_7:
    retstr->var0 = 0;
    retstr->var1 = -1;
    retstr->var2 = -1;
    return result;
  }

  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  v22 = objc_msgSend_writer(self, v16, v17, v18, v19, v20, v21);
  v27 = v22;
  v28 = *&a5->var0;
  var2 = a5->var2;
  if (v22)
  {
    objc_msgSend_beginReferencedStructForReference_inStruct_(v22, v23, a4, &v28, v24, v25, v26);
  }

  else
  {
    retstr->var0 = 0;
    retstr->var1 = 0;
    retstr->var2 = 0;
  }

  return result;
}

- ($3CC19D079FD0B010EE84973AA846B91B)beginReferencedListForReference:(SEL)a3 inStruct:(unint64_t)a4
{
  v12 = objc_msgSend_schema(self, a3, a4, a5, v5, v6, v7);
  if (!v12 || (v13 = v12[10], 0x6DB6DB6DB6DB6DB7 * ((v12[11] - v13) >> 3) <= a4))
  {

    goto LABEL_7;
  }

  v14 = *(v13 + 56 * a4);

  if ((v14 & 1) == 0)
  {
LABEL_7:
    retstr->var0 = 0;
    retstr->var1 = 0;
    retstr->var2 = -1;
    retstr->var3 = -1;
    return result;
  }

  *&retstr->var0 = 0u;
  *&retstr->var2 = 0u;
  v22 = objc_msgSend_writer(self, v16, v17, v18, v19, v20, v21);
  v27 = v22;
  v28 = *&a5->var0;
  var2 = a5->var2;
  if (v22)
  {
    objc_msgSend_beginReferencedListForReference_inStruct_(v22, v23, a4, &v28, v24, v25, v26);
  }

  else
  {
    *&retstr->var0 = 0u;
    *&retstr->var2 = 0u;
  }

  return result;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)beginAppendedListStructInList:(SEL)a3
{
  v11 = objc_msgSend_schema(self, a3, a4, v4, v5, v6, v7);
  if (!v11 || (var1 = a4->var1, v13 = v11[10], 0x6DB6DB6DB6DB6DB7 * ((v11[11] - v13) >> 3) <= var1))
  {

    goto LABEL_7;
  }

  v14 = *(v13 + 56 * var1);

  if ((v14 & 1) == 0)
  {
LABEL_7:
    retstr->var0 = 0;
    retstr->var1 = -1;
    retstr->var2 = -1;
    return result;
  }

  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  v22 = objc_msgSend_writer(self, v16, v17, v18, v19, v20, v21);
  v28 = v22;
  v29 = *&a4->var2;
  v30[0] = *&a4->var0;
  v30[1] = v29;
  if (v22)
  {
    objc_msgSend_beginAppendedListStructInList_(v22, v23, v30, v24, v25, v26, v27);
  }

  else
  {
    retstr->var0 = 0;
    retstr->var1 = 0;
    retstr->var2 = 0;
  }

  return result;
}

- (void)setData:(void *)a3 withEncoding:(const char *)a4 forField:(unint64_t)a5 inStruct:(id *)a6
{
  v12 = objc_msgSend_schema(self, a2, a3, a4, a5, a6, v6);
  if (v12 && (v13 = v12[10], 0x6DB6DB6DB6DB6DB7 * ((v12[11] - v13) >> 3) > a5))
  {
    v14 = *(v13 + 56 * a5);

    if (v14 == 1)
    {
      v21 = objc_msgSend_writer(self, v15, v16, v17, v18, v19, v20);
      v24 = *&a6->var0;
      var2 = a6->var2;
      objc_msgSend_setData_withEncoding_forField_inStruct_(v21, v22, a3, a4, a5, &v24, v23);
    }
  }

  else
  {
  }
}

- (void)setData:(void *)a3 withLength:(unint64_t)a4 forList:(id *)a5
{
  v11 = objc_msgSend_schema(self, a2, a3, a4, a5, v5, v6);
  if (v11 && (var1 = a5->var1, v13 = v11[10], 0x6DB6DB6DB6DB6DB7 * ((v11[11] - v13) >> 3) > var1))
  {
    v14 = *(v13 + 56 * var1);

    if (v14 == 1)
    {
      v21 = objc_msgSend_writer(self, v15, v16, v17, v18, v19, v20);
      v22 = *&a5->var2;
      v26[0] = *&a5->var0;
      v26[1] = v22;
      objc_msgSend_setData_withLength_forList_(v21, v23, a3, a4, v26, v24, v25);
    }
  }

  else
  {
  }
}

- (void)assignStruct:(id *)a3 toReference:(unint64_t)a4 inStruct:(id *)a5
{
  v11 = objc_msgSend_schema(self, a2, a3, a4, a5, v5, v6);
  if (v11 && (v12 = v11[10], 0x6DB6DB6DB6DB6DB7 * ((v11[11] - v12) >> 3) > a4))
  {
    v13 = *(v12 + 56 * a4);

    if (v13 == 1)
    {
      v20 = objc_msgSend_writer(self, v14, v15, v16, v17, v18, v19);
      v26 = *&a3->var0;
      var2 = a3->var2;
      v24 = *&a5->var0;
      v25 = a5->var2;
      objc_msgSend_assignStruct_toReference_inStruct_(v20, v21, &v26, a4, &v24, v22, v23);
    }
  }

  else
  {
  }
}

- (void)commitStruct:(id *)a3
{
  v8 = objc_msgSend_writer(self, a2, a3, v3, v4, v5, v6);
  v14 = *a3;
  objc_msgSend_commitStruct_(v8, v9, &v14, v10, v11, v12, v13);
}

- (BOOL)flushWithError:(id *)a3
{
  v9 = objc_msgSend_topLevelWriteProxy(self, a2, a3, v3, v4, v5, v6);

  if (v9)
  {
    goto LABEL_6;
  }

  v26 = 0;
  v16 = objc_msgSend__setupBackingStoreForWritingWithError_(self, v10, &v26, v12, v13, v14, v15);
  v17 = v26;
  if (a3 && (v16 & 1) == 0)
  {
    v17 = v17;
    *a3 = v17;
  }

  if (!v16)
  {
    return 0;
  }

LABEL_6:
  v18 = objc_msgSend_writer(self, v10, v11, v12, v13, v14, v15);
  v24 = objc_msgSend_flushWithError_(v18, v19, a3, v20, v21, v22, v23);

  return v24;
}

- (BOOL)setReadableStorage:(id)a3 error:(id *)a4
{
  v9 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, a3, a4, v4, v5, v6);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v9, v10, a2, self, @"CKXBackingStore.mm", 642, @"setReadableStorage should not be called on the backing store instance");

  return 0;
}

- (BOOL)setWritableStorage:(id)a3 error:(id *)a4
{
  v9 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, a3, a4, v4, v5, v6);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v9, v10, a2, self, @"CKXBackingStore.mm", 647, @"setWritableStorage should not be called on the backing store instance");

  return 0;
}

+ (BOOL)header:(id *)a3 forStorage:(id)a4 error:(id *)a5
{
  v8 = a4;
  v15 = objc_msgSend_fileURL(v8, v9, v10, v11, v12, v13, v14);

  if (v15)
  {
    v22 = MEMORY[0x277CBEA90];
    v23 = objc_msgSend_fileURL(v8, v16, v17, v18, v19, v20, v21);
    v45 = 0;
    v27 = objc_msgSend_dataWithContentsOfURL_options_error_(v22, v24, v23, 1, &v45, v25, v26);
    v28 = v45;

    v34 = v27 != 0;
    if (v27)
    {
      if (a3)
      {
        v35 = objc_msgSend_headerForData_(a1, v29, v27, v30, v31, v32, v33);
        *&a3->var0 = v35;
        a3->var1.var1 = BYTE2(v35);
      }
    }

    else if (a5)
    {
      v43 = v28;
      *a5 = v28;
    }
  }

  else
  {
    if (a3)
    {
      v36 = objc_msgSend_data(v8, v16, v17, v18, v19, v20, v21);
      v42 = objc_msgSend_headerForData_(a1, v37, v36, v38, v39, v40, v41);
      *&a3->var0 = v42;
      a3->var1.var1 = BYTE2(v42);
    }

    v34 = 1;
  }

  return v34;
}

+ ($B3A8F95EBB77A6B0A6D0D56B621ADA09)headerForData:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_243984150;
  v26[3] = &unk_278DDB480;
  v4 = v3;
  v27 = v4;
  v5 = MEMORY[0x245D43840](v26);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_2439841BC;
  v24[3] = &unk_278DDB480;
  v6 = v4;
  v25 = v6;
  v7 = MEMORY[0x245D43840](v24);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_24398427C;
  v22[3] = &unk_278DDB480;
  v8 = v6;
  v23 = v8;
  v9 = MEMORY[0x245D43840](v22);
  v31 = 0;
  v30 = 0;
  v16 = objc_msgSend_length(v8, v10, v11, v12, v13, v14, v15);
  if (v16 >= 0xC)
  {
    objc_msgSend_getBytes_range_(v8, v17, &v30, 0, 12, v18, v19);
  }

  else
  {
    objc_msgSend_getBytes_range_(v8, v17, &v30, 0, v16, v18, v19);
  }

  v29 = 0;
  v28 = 0;
  if (((v5)[2](v5, &v30, &v28) & 1) == 0 && ((v7)[2](v7, &v30, &v28) & 1) == 0)
  {
    (v9)[2](v9, &v30, &v28);
  }

  v20 = *MEMORY[0x277D85DE8];
  return (v28 | (v29 << 16));
}

@end