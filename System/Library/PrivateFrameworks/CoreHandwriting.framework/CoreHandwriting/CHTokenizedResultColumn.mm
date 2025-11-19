@interface CHTokenizedResultColumn
- (BOOL)containsStartingTokenEquivalentToToken:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CHTokenizedResultColumn)initWithCoder:(id)a3;
- (CHTokenizedResultColumn)initWithTokenRows:(id)a3;
- (NSArray)mathTokenRows;
- (NSArray)textTokenRows;
- (NSIndexSet)strokeIndexes;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (int64_t)indexOfEquivalentTokenRow:(id)a3 tokenRange:(_NSRange)a4;
@end

@implementation CHTokenizedResultColumn

- (CHTokenizedResultColumn)initWithTokenRows:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CHTokenizedResultColumn;
  v10 = [(CHTokenizedResultColumn *)&v14 init];
  if (v10)
  {
    v11 = objc_msgSend_copy(v4, v5, v6, v7, v8, v9);
    tokenRows = v10->_tokenRows;
    v10->_tokenRows = v11;
  }

  return v10;
}

- (CHTokenizedResultColumn)initWithCoder:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v14 = objc_msgSend_setWithObjects_(v4, v10, v6, v11, v12, v13, v7, v8, v9, 0);
  v18 = objc_msgSend_decodeObjectOfClasses_forKey_(v5, v15, v14, @"tokenRows", v16, v17);

  if (v18)
  {
    v23 = objc_msgSend_initWithTokenRows_(self, v19, v18, v20, v21, v22);
  }

  else
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v24 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v28 = objc_opt_class();
      v25 = v28;
      _os_log_impl(&dword_18366B000, v24, OS_LOG_TYPE_ERROR, "%@ decoding failed. Result token rows are required to be nonnull when constructing a request", buf, 0xCu);
    }

    v23 = 0;
  }

  return v23;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [CHMutableTokenizedResultColumn alloc];
  tokenRows = self->_tokenRows;

  return objc_msgSend_initWithTokenRows_(v4, v5, tokenRows, v6, v7, v8);
}

- (id)description
{
  v7 = objc_msgSend_tokenRows(self, a2, v2, v3, v4, v5);
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = sub_183763FC8;
  v32[3] = &unk_1E6DDD728;
  v32[4] = self;
  v11 = objc_msgSend_ch_descriptionWithSeparator_filterBlock_(v7, v8, @"\n", v32, v9, v10);

  v31.receiver = self;
  v31.super_class = CHTokenizedResultColumn;
  v12 = [(CHTokenizedResultColumn *)&v31 description];
  v18 = objc_msgSend_tokenRows(self, v13, v14, v15, v16, v17);
  v24 = objc_msgSend_count(v18, v19, v20, v21, v22, v23);
  v29 = objc_msgSend_stringByAppendingFormat_(v12, v25, @" rows: %ld {\n%@\n}", v26, v27, v28, v24, v11);

  return v29;
}

- (int64_t)indexOfEquivalentTokenRow:(id)a3 tokenRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0x7FFFFFFFFFFFFFFFLL;
  tokenRows = self->_tokenRows;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1837642E0;
  v16[3] = &unk_1E6DDD750;
  v19 = location;
  v20 = length;
  v9 = v7;
  v17 = v9;
  v18 = &v21;
  objc_msgSend_enumerateObjectsUsingBlock_(tokenRows, v10, v16, v11, v12, v13);
  v14 = v22[3];

  _Block_object_dispose(&v21, 8);
  return v14;
}

- (BOOL)containsStartingTokenEquivalentToToken:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  tokenRows = self->_tokenRows;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1837644C0;
  v12[3] = &unk_1E6DDD778;
  v6 = v4;
  v13 = v6;
  v14 = &v15;
  objc_msgSend_enumerateObjectsUsingBlock_(tokenRows, v7, v12, v8, v9, v10);
  LOBYTE(tokenRows) = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  return tokenRows;
}

- (NSIndexSet)strokeIndexes
{
  v41 = *MEMORY[0x1E69E9840];
  v7 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], a2, v2, v3, v4, v5);
  if (objc_msgSend_count(self->_tokenRows, v8, v9, v10, v11, v12))
  {
    v18 = objc_msgSend_firstObject(self->_tokenRows, v13, v14, v15, v16, v17);
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v36, v40, 16, v20);
    if (v21)
    {
      v27 = v21;
      v28 = *v37;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v37 != v28)
          {
            objc_enumerationMutation(v18);
          }

          v30 = objc_msgSend_strokeIndexes(*(*(&v36 + 1) + 8 * i), v22, v23, v24, v25, v26);
          objc_msgSend_addIndexes_(v7, v31, v30, v32, v33, v34);
        }

        v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v22, &v36, v40, 16, v26);
      }

      while (v27);
    }
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v11 = v5;
    if (self)
    {
      if (self == v5)
      {
        LOBYTE(self) = 1;
      }

      else
      {
        self = self->_tokenRows;
        v12 = objc_msgSend_tokenRows(v5, v6, v7, v8, v9, v10);
        LOBYTE(self) = objc_msgSend_isEqualToArray_(self, v13, v12, v14, v15, v16);
      }
    }

    return self;
  }

  else
  {

    return 0;
  }
}

- (NSArray)textTokenRows
{
  v84 = *MEMORY[0x1E69E9840];
  v7 = objc_msgSend_firstObject(self->_tokenRows, a2, v2, v3, v4, v5);
  v13 = objc_msgSend_firstObject(v7, v8, v9, v10, v11, v12);
  if (v13)
  {
    v19 = v13;
    v20 = objc_msgSend_firstObject(self->_tokenRows, v14, v15, v16, v17, v18);
    v26 = objc_msgSend_firstObject(v20, v21, v22, v23, v24, v25);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      goto LABEL_8;
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v7 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v38 = objc_msgSend_firstObject(self->_tokenRows, v33, v34, v35, v36, v37);
      v44 = objc_msgSend_firstObject(v38, v39, v40, v41, v42, v43);
      *v83 = 138412290;
      *&v83[4] = objc_opt_class();
      v45 = *&v83[4];
      _os_log_impl(&dword_18366B000, v7, OS_LOG_TYPE_ERROR, "Invalid class (%@) in text token rows.", v83, 0xCu);
    }
  }

LABEL_8:
  v46 = objc_msgSend_firstObject(self->_tokenRows, v28, v29, v30, v31, v32, *v83);
  v52 = objc_msgSend_firstObject(v46, v47, v48, v49, v50, v51);
  if (v52)
  {
    v58 = v52;
    v59 = objc_msgSend_firstObject(self->_tokenRows, v53, v54, v55, v56, v57);
    v65 = objc_msgSend_firstObject(v59, v60, v61, v62, v63, v64);
    objc_opt_class();
    v66 = objc_opt_isKindOfClass();

    if (v66)
    {
      goto LABEL_15;
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v46 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
    {
      v72 = objc_msgSend_firstObject(self->_tokenRows, v67, v68, v69, v70, v71);
      v78 = objc_msgSend_firstObject(v72, v73, v74, v75, v76, v77);
      v79 = objc_opt_class();
      *v83 = 138412290;
      *&v83[4] = v79;
      v80 = v79;
      _os_log_impl(&dword_18366B000, v46, OS_LOG_TYPE_FAULT, "Invalid class (%@) in text token rows.", v83, 0xCu);
    }
  }

LABEL_15:
  tokenRows = self->_tokenRows;

  return tokenRows;
}

- (NSArray)mathTokenRows
{
  v84 = *MEMORY[0x1E69E9840];
  v7 = objc_msgSend_firstObject(self->_tokenRows, a2, v2, v3, v4, v5);
  v13 = objc_msgSend_firstObject(v7, v8, v9, v10, v11, v12);
  if (v13)
  {
    v19 = v13;
    v20 = objc_msgSend_firstObject(self->_tokenRows, v14, v15, v16, v17, v18);
    v26 = objc_msgSend_firstObject(v20, v21, v22, v23, v24, v25);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      goto LABEL_8;
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v7 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v38 = objc_msgSend_firstObject(self->_tokenRows, v33, v34, v35, v36, v37);
      v44 = objc_msgSend_firstObject(v38, v39, v40, v41, v42, v43);
      *v83 = 138412290;
      *&v83[4] = objc_opt_class();
      v45 = *&v83[4];
      _os_log_impl(&dword_18366B000, v7, OS_LOG_TYPE_ERROR, "Invalid class (%@) in text token rows.", v83, 0xCu);
    }
  }

LABEL_8:
  v46 = objc_msgSend_firstObject(self->_tokenRows, v28, v29, v30, v31, v32, *v83);
  v52 = objc_msgSend_firstObject(v46, v47, v48, v49, v50, v51);
  if (v52)
  {
    v58 = v52;
    v59 = objc_msgSend_firstObject(self->_tokenRows, v53, v54, v55, v56, v57);
    v65 = objc_msgSend_firstObject(v59, v60, v61, v62, v63, v64);
    objc_opt_class();
    v66 = objc_opt_isKindOfClass();

    if (v66)
    {
      goto LABEL_15;
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v46 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
    {
      v72 = objc_msgSend_firstObject(self->_tokenRows, v67, v68, v69, v70, v71);
      v78 = objc_msgSend_firstObject(v72, v73, v74, v75, v76, v77);
      v79 = objc_opt_class();
      *v83 = 138412290;
      *&v83[4] = v79;
      v80 = v79;
      _os_log_impl(&dword_18366B000, v46, OS_LOG_TYPE_FAULT, "Invalid class (%@) in text token rows.", v83, 0xCu);
    }
  }

LABEL_15:
  tokenRows = self->_tokenRows;

  return tokenRows;
}

@end