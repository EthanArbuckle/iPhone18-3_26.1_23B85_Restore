@interface KVSpanMatchResult
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSpanMatchResult:(id)a3;
- (KVSpanMatchResult)initWithSpanMatchResult:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)fieldMatches;
- (id)itemInfo;
- (id)spanInfo;
@end

@implementation KVSpanMatchResult

- (BOOL)isEqualToSpanMatchResult:(id)a3
{
  spanMatchResult = self->_spanMatchResult;
  v7 = objc_msgSend_spanMatchResult(a3, a2, a3, v3, v4, v5);
  LOBYTE(spanMatchResult) = objc_msgSend_isEqual_(spanMatchResult, v8, v7, v9, v10, v11);

  return spanMatchResult;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    isEqualToSpanMatchResult = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    isEqualToSpanMatchResult = objc_msgSend_isEqualToSpanMatchResult_(self, v6, v5, v7, v8, v9);
  }

  else
  {
    isEqualToSpanMatchResult = 0;
  }

  return isEqualToSpanMatchResult;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v10 = objc_msgSend_allocWithZone_(v5, v6, a3, v7, v8, v9);
  v15 = objc_msgSend_copyWithZone_(self->_spanMatchResult, v11, a3, v12, v13, v14);
  v16 = v10[1];
  v10[1] = v15;

  return v10;
}

- (id)fieldMatches
{
  v53 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  v9 = objc_msgSend_fieldMatches(self->_spanMatchResult, v4, v5, v6, v7, v8);
  v15 = objc_msgSend_count(v9, v10, v11, v12, v13, v14);
  v20 = objc_msgSend_initWithCapacity_(v3, v16, v15, v17, v18, v19);

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v26 = objc_msgSend_fieldMatches(self->_spanMatchResult, v21, v22, v23, v24, v25, 0);
  v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v48, v52, 16, v28);
  if (v29)
  {
    v30 = v29;
    v31 = *v49;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v49 != v31)
        {
          objc_enumerationMutation(v26);
        }

        v33 = *(*(&v48 + 1) + 8 * i);
        v34 = [KVFieldMatch alloc];
        v43 = objc_msgSend_initWithFieldMatch_(v34, v35, v33, v36, v37, v38);
        if (v43)
        {
          objc_msgSend_addObject_(v20, v39, v43, v40, v41, v42);
        }
      }

      v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v44, &v48, v52, 16, v45);
    }

    while (v30);
  }

  v46 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)spanInfo
{
  v3 = [KVSpanInfo alloc];
  v9 = objc_msgSend_spanInfo(self->_spanMatchResult, v4, v5, v6, v7, v8);
  v14 = objc_msgSend_initWithSpanInfo_(v3, v10, v9, v11, v12, v13);

  return v14;
}

- (id)itemInfo
{
  v3 = [KVItemInfo alloc];
  v9 = objc_msgSend_entityInfo(self->_spanMatchResult, v4, v5, v6, v7, v8);
  v14 = objc_msgSend_initWithCascadeEntityInfo_(v3, v10, v9, v11, v12, v13);

  return v14;
}

- (KVSpanMatchResult)initWithSpanMatchResult:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v33.receiver = self;
  v33.super_class = KVSpanMatchResult;
  v6 = [(KVSpanMatchResult *)&v33 init];
  p_isa = &v6->super.isa;
  if (v6 && (objc_storeStrong(&v6->_spanMatchResult, a3), objc_msgSend_entityInfo(p_isa[1], v8, v9, v10, v11, v12), v13 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend_entityType(v13, v14, v15, v16, v17, v18), v13, v19 != 1))
  {
    v21 = qword_28106B3C0;
    if (os_log_type_enabled(qword_28106B3C0, OS_LOG_TYPE_ERROR))
    {
      v24 = p_isa[1];
      v25 = v21;
      v31 = objc_msgSend_entityInfo(v24, v26, v27, v28, v29, v30);
      v32 = p_isa[1];
      *buf = 136315650;
      v35 = "[KVSpanMatchResult initWithSpanMatchResult:]";
      v36 = 2112;
      v37 = v31;
      v38 = 2112;
      v39 = v32;
      _os_log_error_impl(&dword_2559A5000, v25, OS_LOG_TYPE_ERROR, "%s Unsupported entityInfo: %@ for result: %@", buf, 0x20u);
    }

    v20 = 0;
  }

  else
  {
    v20 = p_isa;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v20;
}

@end