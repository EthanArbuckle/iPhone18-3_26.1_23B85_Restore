@interface KVLinkOOVItemBuilder
+ (void)initialize;
- (KVLinkOOVItemBuilder)init;
- (id)_buildItemWithError:(id *)a3;
- (id)linkOOVItemWithPhrase:(id)a3 itemId:(id)a4 customPronunciations:(id)a5 error:(id *)a6;
@end

@implementation KVLinkOOVItemBuilder

- (id)_buildItemWithError:(id *)a3
{
  v20 = *MEMORY[0x277D85DE8];
  builder = self->_builder;
  v15 = 0;
  v8 = objc_msgSend_buildItemWithError_(builder, a2, &v15, v3, v4, v5);
  v9 = v15;
  if (v8)
  {
    v10 = v8;
    goto LABEL_7;
  }

  v11 = qword_28106B3C0;
  if (os_log_type_enabled(qword_28106B3C0, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v17 = "[KVLinkOOVItemBuilder _buildItemWithError:]";
    v18 = 2112;
    v19 = v9;
    _os_log_error_impl(&dword_2559A5000, v11, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  else if (!a3)
  {
    goto LABEL_7;
  }

  if (v9)
  {
    v12 = v9;
    *a3 = v9;
  }

LABEL_7:

  v13 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)linkOOVItemWithPhrase:(id)a3 itemId:(id)a4 customPronunciations:(id)a5 error:(id *)a6
{
  v77 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  builder = self->_builder;
  v71 = 0;
  v15 = objc_msgSend_setItemType_itemId_error_(builder, v13, 11, a4, &v71, v14);
  v18 = v71;
  if (v15)
  {
    v19 = self->_builder;
    v70 = v18;
    v20 = objc_msgSend_addFieldWithType_value_error_(v19, v16, 500, v10, &v70, v17);
    v21 = v70;

    if (v20)
    {
      v27 = objc_msgSend_null(MEMORY[0x277CBEB68], v22, v23, v24, v25, v26);
      if (objc_msgSend_isEqual_(v11, v28, v27, v29, v30, v31))
      {
      }

      else
      {
        v44 = objc_msgSend_count(v11, v32, v33, v34, v35, v36);

        if (v44)
        {
          v64 = a6;
          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          v45 = v11;
          v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v46, &v66, v72, 16, v47);
          if (v48)
          {
            v51 = v48;
            v52 = *v67;
            while (2)
            {
              v53 = 0;
              v54 = v21;
              do
              {
                if (*v67 != v52)
                {
                  objc_enumerationMutation(v45);
                }

                v55 = *(*(&v66 + 1) + 8 * v53);
                v56 = self->_builder;
                v65 = v54;
                v57 = objc_msgSend_addFieldWithType_value_error_(v56, v49, 501, v55, &v65, v50, v64);
                v21 = v65;

                if (!v57)
                {
                  v62 = qword_28106B3C0;
                  if (os_log_type_enabled(qword_28106B3C0, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315394;
                    v74 = "[KVLinkOOVItemBuilder linkOOVItemWithPhrase:itemId:customPronunciations:error:]";
                    v75 = 2112;
                    v76 = v21;
                    _os_log_error_impl(&dword_2559A5000, v62, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
                  }

                  if (v64 && v21)
                  {
                    v63 = v21;
                    *v64 = v21;
                  }

                  v42 = 0;
                  goto LABEL_24;
                }

                ++v53;
                v54 = v21;
              }

              while (v51 != v53);
              v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v49, &v66, v72, 16, v50);
              if (v51)
              {
                continue;
              }

              break;
            }
          }

          v58 = self;
          v59 = v64;
          goto LABEL_23;
        }
      }

      v58 = self;
      v59 = a6;
LABEL_23:
      v42 = objc_msgSend__buildItemWithError_(v58, v37, v59, v38, v39, v40, v64);
      goto LABEL_24;
    }

    v18 = v21;
  }

  v41 = qword_28106B3C0;
  if (os_log_type_enabled(qword_28106B3C0, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v74 = "[KVLinkOOVItemBuilder linkOOVItemWithPhrase:itemId:customPronunciations:error:]";
    v75 = 2112;
    v76 = v18;
    _os_log_error_impl(&dword_2559A5000, v41, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
  }

  v42 = 0;
  if (a6 && v18)
  {
    v43 = v18;
    v42 = 0;
    *a6 = v18;
  }

  v21 = v18;
LABEL_24:

  v60 = *MEMORY[0x277D85DE8];

  return v42;
}

- (KVLinkOOVItemBuilder)init
{
  v6.receiver = self;
  v6.super_class = KVLinkOOVItemBuilder;
  v2 = [(KVLinkOOVItemBuilder *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(KVItemBuilder);
    builder = v2->_builder;
    v2->_builder = v3;
  }

  return v2;
}

+ (void)initialize
{
  if (qword_28106B3B8 != -1)
  {
    dispatch_once(&qword_28106B3B8, &unk_2867B56F8);
  }
}

@end