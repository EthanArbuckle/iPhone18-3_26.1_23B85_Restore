@interface KVDictionaryLog
+ (void)initialize;
- (BOOL)clear:(id *)a3;
- (BOOL)clearObjectForKey:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToDictionaryLog:(id)a3;
- (BOOL)isReadOnly;
- (BOOL)writeUpdatedObject:(id)a3 forKey:(id)a4 error:(id *)a5;
- (BOOL)writeUpdatedObjects:(id)a3 forKeys:(id)a4 error:(id *)a5;
- (KVDictionaryLog)init;
- (id)description;
- (id)mutableDictionaryForKey:(id)a3 error:(id *)a4;
- (id)objectForKey:(id)a3;
- (unint64_t)hash;
@end

@implementation KVDictionaryLog

- (unint64_t)hash
{
  v7 = objc_msgSend_hash(self->_logFileURL, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v8, self->_protectionClass, v9, v10, v11);
  v18 = objc_msgSend_hash(v12, v13, v14, v15, v16, v17);
  v24 = v7 ^ objc_msgSend_hash(self->_log, v19, v20, v21, v22, v23);

  return v18 ^ v24;
}

- (BOOL)isEqualToDictionaryLog:(id)a3
{
  v4 = a3;
  if (objc_msgSend_isEqual_(self->_logFileURL, v5, v4[1], v6, v7, v8) && self->_protectionClass == *(v4 + 6))
  {
    isEqual = objc_msgSend_isEqual_(self->_log, v9, v4[2], v10, v11, v12);
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    isEqualToDictionaryLog = objc_msgSend_isEqualToDictionaryLog_(self, v5, v4, v6, v7, v8);
  }

  else
  {
    isEqualToDictionaryLog = 0;
  }

  return isEqualToDictionaryLog;
}

- (BOOL)clear:(id *)a3
{
  v59[1] = *MEMORY[0x277D85DE8];
  if (objc_msgSend_isReadOnly(self, a2, a3, v3, v4, v5))
  {
    v13 = MEMORY[0x277CCA9B8];
    v58 = *MEMORY[0x277CCA450];
    v14 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v8, @"instance: %@ is read only.", v10, v11, v12, self);
    v59[0] = v14;
    v17 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v15, v59, &v58, 1, v16);
    v20 = objc_msgSend_errorWithDomain_code_userInfo_(v13, v18, @"com.apple.koa.dictionary.log", 3, v17, v19);
    v21 = v20;
    v22 = 0;
    if (a3 && v20)
    {
      v23 = v20;
      v22 = 0;
      *a3 = v21;
    }

    goto LABEL_18;
  }

  v17 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v8, v9, v10, v11, v12);
  v21 = objc_msgSend_path(self->_logFileURL, v24, v25, v26, v27, v28);
  if (!v21 || !objc_msgSend_fileExistsAtPath_(v17, v29, v21, v31, v32, v33))
  {
    v36 = 0;
    goto LABEL_17;
  }

  logFileURL = self->_logFileURL;
  v53 = 0;
  v35 = objc_msgSend_removeItemAtURL_error_(v17, v29, logFileURL, &v53, v32, v33);
  v36 = v53;
  if (v35)
  {
LABEL_17:
    objc_msgSend_removeAllObjects(self->_log, v29, v30, v31, v32, v33);
    v22 = 1;
    v14 = v36;
    goto LABEL_18;
  }

  v37 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v42 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v38, @"Failed to remove log file at path: %@", v39, v40, v41, v21);
  objc_msgSend_setObject_forKey_(v37, v43, v42, *MEMORY[0x277CCA450], v44, v45);

  if (v36)
  {
    objc_msgSend_setObject_forKey_(v37, v46, v36, *MEMORY[0x277CCA7E8], v47, v48);
  }

  v14 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v46, @"com.apple.koa.dictionary.log", 8, v37, v48);

  if (a3 && v14)
  {
    v49 = v14;
    *a3 = v14;
  }

  v50 = qword_28106B3C0;
  if (os_log_type_enabled(qword_28106B3C0, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v55 = "[KVDictionaryLog clear:]";
    v56 = 2112;
    v57 = v14;
    _os_log_error_impl(&dword_2559A5000, v50, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
  }

  v22 = 0;
LABEL_18:

  v51 = *MEMORY[0x277D85DE8];
  return v22;
}

- (BOOL)clearObjectForKey:(id)a3 error:(id *)a4
{
  v71[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (objc_msgSend_isReadOnly(self, v7, v8, v9, v10, v11))
  {
    v16 = MEMORY[0x277CCA9B8];
    v70 = *MEMORY[0x277CCA450];
    v17 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v12, @"instance: %@ is read only.", v13, v14, v15, self);
    v71[0] = v17;
    v20 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v18, v71, &v70, 1, v19);
    objc_msgSend_errorWithDomain_code_userInfo_(v16, v21, @"com.apple.koa.dictionary.log", 3, v20, v22);
    goto LABEL_10;
  }

  if (!v6)
  {
    v38 = MEMORY[0x277CCA9B8];
    v68 = *MEMORY[0x277CCA450];
    v17 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v12, @"Invalid key: %@", v13, v14, v15, 0);
    v69 = v17;
    v20 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v39, &v69, &v68, 1, v40);
    objc_msgSend_errorWithDomain_code_userInfo_(v38, v41, @"com.apple.koa.dictionary.log", 1, v20, v42);
    v43 = LABEL_10:;
    if (a4 && v43)
    {
      v43 = v43;
      *a4 = v43;
    }

    v31 = 0;
    goto LABEL_26;
  }

  v23 = objc_msgSend_objectForKey_(self->_log, v12, v6, v13, v14, v15);
  if (v23)
  {
    v17 = v23;
    objc_msgSend_removeObjectForKey_(self->_log, v24, v6, v25, v26, v27);
    logFileURL = self->_logFileURL;
    log = self->_log;
    protectionClass = self->_protectionClass;
    v61 = 0;
    v31 = KVWritePropertyList(log, logFileURL, protectionClass, &v61);
    v35 = v61;
    if (v31)
    {
      v36 = qword_28106B3C0;
      if (os_log_type_enabled(qword_28106B3C0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v63 = "[KVDictionaryLog clearObjectForKey:error:]";
        v64 = 2112;
        v65 = v17;
        v66 = 2112;
        v67 = v6;
        _os_log_debug_impl(&dword_2559A5000, v36, OS_LOG_TYPE_DEBUG, "%s Removed object: %@ for key: %@", buf, 0x20u);
      }

      v37 = v35;
    }

    else
    {
      objc_msgSend_setObject_forKey_(self->_log, v32, v17, v6, v33, v34);
      v45 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v50 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v46, @"Failed to write removal for key: %@ reverting to prior object: %@", v47, v48, v49, v6, v17);
      objc_msgSend_setObject_forKey_(v45, v51, v50, *MEMORY[0x277CCA450], v52, v53);

      if (v35)
      {
        objc_msgSend_setObject_forKey_(v45, v54, v35, *MEMORY[0x277CCA7E8], v55, v56);
      }

      v37 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v54, @"com.apple.koa.dictionary.log", 8, v45, v56);

      if (a4 && v37)
      {
        v57 = v37;
        *a4 = v37;
      }

      v58 = qword_28106B3C0;
      if (os_log_type_enabled(qword_28106B3C0, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v63 = "[KVDictionaryLog clearObjectForKey:error:]";
        v64 = 2112;
        v65 = v37;
        _os_log_error_impl(&dword_2559A5000, v58, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v44 = qword_28106B3C0;
    if (os_log_type_enabled(qword_28106B3C0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v63 = "[KVDictionaryLog clearObjectForKey:error:]";
      v64 = 2112;
      v65 = v6;
      _os_log_debug_impl(&dword_2559A5000, v44, OS_LOG_TYPE_DEBUG, "%s No object exists for key: %@", buf, 0x16u);
    }

    v17 = 0;
    v31 = 1;
  }

LABEL_26:

  v59 = *MEMORY[0x277D85DE8];
  return v31;
}

- (BOOL)writeUpdatedObjects:(id)a3 forKeys:(id)a4 error:(id *)a5
{
  v161[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (objc_msgSend_isReadOnly(self, v10, v11, v12, v13, v14))
  {
    v20 = MEMORY[0x277CCA9B8];
    v160 = *MEMORY[0x277CCA450];
    v21 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v15, @"instance: %@ is read only.", v17, v18, v19, self);
    v161[0] = v21;
    v24 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v22, v161, &v160, 1, v23);
    objc_msgSend_errorWithDomain_code_userInfo_(v20, v25, @"com.apple.koa.dictionary.log", 3, v24, v26);
    goto LABEL_19;
  }

  v27 = objc_msgSend_count(v8, v15, v16, v17, v18, v19);
  if (v27 != objc_msgSend_count(v9, v28, v29, v30, v31, v32))
  {
    v94 = MEMORY[0x277CCA9B8];
    v158 = *MEMORY[0x277CCA450];
    v21 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v33, @"Unexpected number of objects: %@ for keys: %@", v34, v35, v36, v8, v9);
    v159 = v21;
    v24 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v95, &v159, &v158, 1, v96);
    objc_msgSend_errorWithDomain_code_userInfo_(v94, v97, @"com.apple.koa.dictionary.log", 1, v24, v98);
    v99 = LABEL_19:;
    if (a5 && v99)
    {
      v99 = v99;
      *a5 = v99;
    }

    goto LABEL_23;
  }

  v143 = a5;
  v37 = objc_alloc(MEMORY[0x277CBEB38]);
  v43 = objc_msgSend_count(v9, v38, v39, v40, v41, v42);
  v21 = objc_msgSend_initWithCapacity_(v37, v44, v43, v45, v46, v47);
  v53 = objc_msgSend_count(v8, v48, v49, v50, v51, v52);
  if (objc_msgSend_count(v8, v54, v55, v56, v57, v58))
  {
    for (i = 0; i < objc_msgSend_count(v8, v89, v90, v91, v92, v93); ++i)
    {
      v64 = objc_msgSend_objectAtIndex_(v8, v59, i, v60, v61, v62);
      v69 = objc_msgSend_objectAtIndex_(v9, v65, i, v66, v67, v68);
      v74 = objc_msgSend_objectForKey_(v21, v70, v69, v71, v72, v73);
      if (v74)
      {
        v79 = v74;
        isEqual = objc_msgSend_isEqual_(v74, v75, v64, v76, v77, v78);
      }

      else
      {
        v79 = objc_msgSend_objectForKey_(self->_log, v75, v69, v76, v77, v78);
        if (!v79)
        {
          goto LABEL_15;
        }

        isEqual = objc_msgSend_isEqual_(v79, v84, v64, v85, v86, v87);
      }

      if (isEqual)
      {
        v88 = qword_28106B3C0;
        if (os_log_type_enabled(qword_28106B3C0, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v150 = "[KVDictionaryLog writeUpdatedObjects:forKeys:error:]";
          v151 = 2112;
          v152 = v64;
          v153 = 2112;
          v154 = v69;
          _os_log_debug_impl(&dword_2559A5000, v88, OS_LOG_TYPE_DEBUG, "%s object: %@ is already recorded for key: %@", buf, 0x20u);
        }

        --v53;
        goto LABEL_16;
      }

      objc_msgSend_setObject_forKey_(v21, v81, v79, v69, v82, v83);
LABEL_15:
      objc_msgSend_setObject_forKey_(self->_log, v84, v64, v69, v86, v87);
LABEL_16:
    }
  }

  if (!v53)
  {
    v100 = 1;
    goto LABEL_25;
  }

  logFileURL = self->_logFileURL;
  log = self->_log;
  protectionClass = self->_protectionClass;
  v148 = 0;
  v106 = KVWritePropertyList(log, logFileURL, protectionClass, &v148);
  v107 = v148;
  v108 = v107;
  if (v106)
  {
    v109 = qword_28106B3C0;
    if (os_log_type_enabled(qword_28106B3C0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v150 = "[KVDictionaryLog writeUpdatedObjects:forKeys:error:]";
      v151 = 2112;
      v152 = v8;
      v153 = 2112;
      v154 = v9;
      v155 = 2112;
      v156 = v21;
      _os_log_debug_impl(&dword_2559A5000, v109, OS_LOG_TYPE_DEBUG, "%s Updated object(s): %@ for key(s): %@ replacing prior object(s): %@", buf, 0x2Au);
    }

    v100 = 1;
    v24 = v108;
    goto LABEL_24;
  }

  v142 = v107;
  v146 = 0u;
  v147 = 0u;
  v144 = 0u;
  v145 = 0u;
  v110 = v9;
  v113 = objc_msgSend_countByEnumeratingWithState_objects_count_(v110, v111, &v144, v157, 16, v112);
  if (v113)
  {
    v118 = v113;
    v119 = *v145;
    do
    {
      for (j = 0; j != v118; ++j)
      {
        if (*v145 != v119)
        {
          objc_enumerationMutation(v110);
        }

        v121 = *(*(&v144 + 1) + 8 * j);
        v126 = objc_msgSend_objectForKey_(v21, v114, v121, v115, v116, v117);
        v127 = self->_log;
        if (v126)
        {
          objc_msgSend_setObject_forKey_(v127, v122, v126, v121, v124, v125);
        }

        else
        {
          objc_msgSend_removeObjectForKey_(v127, v122, v121, v123, v124, v125);
        }
      }

      v118 = objc_msgSend_countByEnumeratingWithState_objects_count_(v110, v114, &v144, v157, 16, v117);
    }

    while (v118);
  }

  v128 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v133 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v129, @"Failed to write updated object(s): %@ for key(s): %@ reverting to prior object(s): %@", v130, v131, v132, v8, v110, v21);
  objc_msgSend_setObject_forKey_(v128, v134, v133, *MEMORY[0x277CCA450], v135, v136);

  if (v142)
  {
    objc_msgSend_setObject_forKey_(v128, v137, v142, *MEMORY[0x277CCA7E8], v138, v139);
  }

  v24 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v137, @"com.apple.koa.dictionary.log", 8, v128, v139);

  if (v143 && v24)
  {
    v140 = v24;
    *v143 = v24;
  }

  v141 = qword_28106B3C0;
  if (os_log_type_enabled(qword_28106B3C0, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v150 = "[KVDictionaryLog writeUpdatedObjects:forKeys:error:]";
    v151 = 2112;
    v152 = v24;
    _os_log_error_impl(&dword_2559A5000, v141, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
  }

LABEL_23:
  v100 = 0;
LABEL_24:

LABEL_25:
  v101 = *MEMORY[0x277D85DE8];
  return v100;
}

- (BOOL)writeUpdatedObject:(id)a3 forKey:(id)a4 error:(id *)a5
{
  v41[1] = *MEMORY[0x277D85DE8];
  if (a3 && a4)
  {
    v39 = a3;
    v8 = MEMORY[0x277CBEA60];
    v9 = a4;
    v10 = a3;
    v14 = objc_msgSend_arrayWithObjects_count_(v8, v11, &v39, 1, v12, v13);
    v38 = v9;
    v18 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v15, &v38, 1, v16, v17);

    v21 = objc_msgSend_writeUpdatedObjects_forKeys_error_(self, v19, v14, v18, a5, v20);
  }

  else
  {
    v22 = MEMORY[0x277CCA9B8];
    v40 = *MEMORY[0x277CCA450];
    v23 = MEMORY[0x277CCACA8];
    v24 = a4;
    v25 = a3;
    v14 = objc_msgSend_stringWithFormat_(v23, v26, @"Invalid {object: %@ key: %@}", v27, v28, v29, v25, v24);
    v41[0] = v14;
    v18 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v30, v41, &v40, 1, v31);
    v34 = objc_msgSend_errorWithDomain_code_userInfo_(v22, v32, @"com.apple.koa.dictionary.log", 1, v18, v33);

    if (a5 && v34)
    {
      v35 = v34;
      *a5 = v34;
    }

    v21 = 0;
  }

  v36 = *MEMORY[0x277D85DE8];
  return v21;
}

- (id)mutableDictionaryForKey:(id)a3 error:(id *)a4
{
  v43[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v11 = objc_msgSend_objectForKey_(self, v7, v6, v8, v9, v10);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
LABEL_13:
    v35 = v12;
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = objc_msgSend_mutableCopy(v11, v13, v14, v15, v16, v17);
    goto LABEL_13;
  }

  if (!v11)
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    goto LABEL_13;
  }

  v18 = MEMORY[0x277CCA9B8];
  v42 = *MEMORY[0x277CCA450];
  v19 = MEMORY[0x277CCACA8];
  v20 = objc_opt_class();
  v21 = NSStringFromClass(v20);
  v26 = objc_msgSend_stringWithFormat_(v19, v22, @"Unexpected object: %@ for key: %@ expected: %@", v23, v24, v25, v11, v6, v21);
  v43[0] = v26;
  v29 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v27, v43, &v42, 1, v28);
  v32 = objc_msgSend_errorWithDomain_code_userInfo_(v18, v30, @"com.apple.koa.dictionary.log", 4, v29, v31);

  if (a4 && v32)
  {
    v33 = v32;
    *a4 = v32;
  }

  v34 = qword_28106B3C0;
  if (os_log_type_enabled(qword_28106B3C0, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v39 = "[KVDictionaryLog mutableDictionaryForKey:error:]";
    v40 = 2112;
    v41 = v32;
    _os_log_error_impl(&dword_2559A5000, v34, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
  }

  v35 = 0;
LABEL_14:

  v36 = *MEMORY[0x277D85DE8];

  return v35;
}

- (id)objectForKey:(id)a3
{
  v6 = objc_msgSend_objectForKey_(self->_log, a2, a3, v3, v4, v5);
  v12 = objc_msgSend_copy(v6, v7, v8, v9, v10, v11);

  return v12;
}

- (BOOL)isReadOnly
{
  log = self->_log;
  objc_opt_class();
  return (objc_opt_isKindOfClass() & 1) == 0;
}

- (id)description
{
  v16.receiver = self;
  v16.super_class = KVDictionaryLog;
  v3 = [(KVDictionaryLog *)&v16 description];
  v9 = objc_msgSend_path(self->_logFileURL, v4, v5, v6, v7, v8);
  v14 = objc_msgSend_stringByAppendingFormat_(v3, v10, @" logFile: %@", v11, v12, v13, v9);

  return v14;
}

- (KVDictionaryLog)init
{
  v3 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x277CBEAD8], a2, *MEMORY[0x277CBE658], @"init unsupported", MEMORY[0x277CBEC10], v2);
  objc_exception_throw(v3);
}

+ (void)initialize
{
  if (qword_28106B3B8 != -1)
  {
    dispatch_once(&qword_28106B3B8, &unk_2867B56F8);
  }
}

@end