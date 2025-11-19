@interface KVSpanMatcher
+ (id)indexMatcher;
+ (id)itemMatcher:(id)a3 locale:(id)a4;
+ (id)itemMatcher:(id)a3 tokenizer:(id)a4 error:(id *)a5;
- (KVSpanMatcher)initWithSpanMatcher:(id)a3;
- (id)_convertResults:(id)a3;
- (id)matchSpans:(id)a3 error:(id *)a4;
- (id)matchSpans:(id)a3 userId:(id)a4 error:(id *)a5;
@end

@implementation KVSpanMatcher

- (id)_convertResults:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x277CBEB18]);
  v10 = objc_msgSend_count(v3, v5, v6, v7, v8, v9);
  v15 = objc_msgSend_initWithCapacity_(v4, v11, v10, v12, v13, v14);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v16 = v3;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v38, v42, 16, v18);
  if (v19)
  {
    v20 = v19;
    v21 = *v39;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v39 != v21)
        {
          objc_enumerationMutation(v16);
        }

        v23 = *(*(&v38 + 1) + 8 * i);
        v24 = [KVSpanMatchResult alloc];
        matched = objc_msgSend_initWithSpanMatchResult_(v24, v25, v23, v26, v27, v28, v38);
        if (matched)
        {
          objc_msgSend_addObject_(v15, v29, matched, v30, v31, v32);
        }
      }

      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v34, &v38, v42, 16, v35);
    }

    while (v20);
  }

  v36 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)matchSpans:(id)a3 userId:(id)a4 error:(id *)a5
{
  spanMatcher = self->_spanMatcher;
  v9 = a4;
  v15 = objc_msgSend_query(a3, v10, v11, v12, v13, v14);
  v18 = objc_msgSend_matchSpans_userId_error_(spanMatcher, v16, v15, v9, a5, v17);

  v23 = objc_msgSend__convertResults_(self, v19, v18, v20, v21, v22);

  return v23;
}

- (id)matchSpans:(id)a3 error:(id *)a4
{
  spanMatcher = self->_spanMatcher;
  v9 = objc_msgSend_query(a3, a2, a3, a4, v4, v5);
  v13 = objc_msgSend_matchSpans_error_(spanMatcher, v10, v9, a4, v11, v12);

  v18 = objc_msgSend__convertResults_(self, v14, v13, v15, v16, v17);

  return v18;
}

- (KVSpanMatcher)initWithSpanMatcher:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = KVSpanMatcher;
  v6 = [(KVSpanMatcher *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_spanMatcher, a3);
  }

  return v7;
}

+ (id)itemMatcher:(id)a3 tokenizer:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = a3;
  v9 = sub_2559B35BC();
  v15 = objc_msgSend_tokenizer(v7, v10, v11, v12, v13, v14);

  v18 = objc_msgSend_itemMatcher_tokenizer_error_(v9, v16, v8, v15, a5, v17);

  v19 = objc_alloc(objc_opt_class());
  v24 = objc_msgSend_initWithSpanMatcher_(v19, v20, v18, v21, v22, v23);

  return v24;
}

+ (id)itemMatcher:(id)a3 locale:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2050000000;
  v7 = qword_27F7DA3B0;
  v33 = qword_27F7DA3B0;
  if (!qword_27F7DA3B0)
  {
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = sub_2559B3AA4;
    v35 = &unk_279804178;
    v36 = &v30;
    sub_2559B3AA4(buf);
    v7 = v31[3];
  }

  v8 = v7;
  _Block_object_dispose(&v30, 8);
  v9 = [v7 alloc];
  v14 = objc_msgSend_initWithLocale_(v9, v10, v6, v11, v12, v13);
  v15 = sub_2559B35BC();
  v29 = 0;
  v18 = objc_msgSend_itemMatcher_tokenizer_error_(v15, v16, v5, v14, &v29, v17);
  v19 = v29;
  if (!v18)
  {
    v20 = qword_28106B3C0;
    if (os_log_type_enabled(qword_28106B3C0, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "+[KVSpanMatcher itemMatcher:locale:]";
      *&buf[12] = 2112;
      *&buf[14] = v19;
      _os_log_error_impl(&dword_2559A5000, v20, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
    }
  }

  v21 = objc_alloc(objc_opt_class());
  v26 = objc_msgSend_initWithSpanMatcher_(v21, v22, v18, v23, v24, v25);

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

+ (id)indexMatcher
{
  v2 = objc_alloc(objc_opt_class());
  v3 = sub_2559B35BC();
  v9 = objc_msgSend_indexMatcher(v3, v4, v5, v6, v7, v8);
  v14 = objc_msgSend_initWithSpanMatcher_(v2, v10, v9, v11, v12, v13);

  return v14;
}

@end