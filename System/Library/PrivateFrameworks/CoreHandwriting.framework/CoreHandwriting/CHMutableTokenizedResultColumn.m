@interface CHMutableTokenizedResultColumn
- (CHMutableTokenizedResultColumn)initWithTokenRows:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)addTokenRowWithTokens:(id)a3;
- (void)removeTokenRowAtIndex:(int64_t)a3;
- (void)setTokenRowWithTokens:(id)a3 atIndex:(int64_t)a4;
- (void)setTokenRows:(id)a3;
- (void)sortTokenRows;
@end

@implementation CHMutableTokenizedResultColumn

- (CHMutableTokenizedResultColumn)initWithTokenRows:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CHMutableTokenizedResultColumn;
  v10 = [(CHTokenizedResultColumn *)&v14 initWithTokenRows:MEMORY[0x1E695E0F0]];
  if (v10)
  {
    v11 = objc_msgSend_mutableCopy(v4, v5, v6, v7, v8, v9);
    tokenRows = v10->super._tokenRows;
    v10->super._tokenRows = v11;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CHTokenizedResultColumn alloc];
  tokenRows = self->super._tokenRows;

  return objc_msgSend_initWithTokenRows_(v4, v5, tokenRows, v6, v7, v8);
}

- (void)setTokenRows:(id)a3
{
  if (self->super._tokenRows != a3)
  {
    v8 = objc_msgSend_mutableCopy(a3, a2, a3, v3, v4, v5);
    tokenRows = self->super._tokenRows;
    self->super._tokenRows = v8;
  }
}

- (int64_t)addTokenRowWithTokens:(id)a3
{
  v4 = a3;
  if (!objc_msgSend_count(v4, v5, v6, v7, v8, v9))
  {

    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v15 = objc_msgSend_firstObject(v4, v10, v11, v12, v13, v14);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v25 = objc_opt_class();
    if (self)
    {
LABEL_4:
      self = self->super._tokenRows;
    }
  }

  else
  {
    v28 = objc_msgSend_firstObject(v4, v17, v18, v19, v20, v21);
    objc_opt_class();
    v29 = objc_opt_isKindOfClass();

    if ((v29 & 1) == 0)
    {
      if (self)
      {
        objc_msgSend_addObject_(self->super._tokenRows, v30, v4, v31, v32, v33);
        self = self->super._tokenRows;
      }

      else
      {
        objc_msgSend_addObject_(0, v30, v4, v31, v32, v33);
      }

      v26 = objc_msgSend_count(self, v34, v35, v36, v37, v38);
      goto LABEL_13;
    }

    v25 = objc_opt_class();
    if (self)
    {
      goto LABEL_4;
    }
  }

  v26 = objc_msgSend_mergeTokenRow_intoUniqueRows_(v25, v22, v4, self, v23, v24);
LABEL_13:
  v39 = v26;

  return v39;
}

- (void)setTokenRowWithTokens:(id)a3 atIndex:(int64_t)a4
{
  v66 = *MEMORY[0x1E69E9840];
  v11 = a3;
  if (self)
  {
    v12 = self->super._tokenRows;
    v18 = objc_msgSend_count(v12, v13, v14, v15, v16, v17);
  }

  else
  {
    v12 = 0;
    v18 = objc_msgSend_count(0, v6, v7, v8, v9, v10);
  }

  v19 = v18;

  if (v19 <= a4)
  {
    if (qword_1EA84DC48 == -1)
    {
      v25 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
LABEL_6:
        if (self)
        {
          v31 = self->super._tokenRows;
          v37 = objc_msgSend_count(v31, v32, v33, v34, v35, v36);
        }

        else
        {
          v31 = 0;
          v37 = objc_msgSend_count(0, v26, v27, v28, v29, v30);
        }

        v62 = 134218240;
        v63 = a4;
        v64 = 2048;
        v65 = v37;
        _os_log_impl(&dword_18366B000, v25, OS_LOG_TYPE_ERROR, "Invalid index %ld when trying to replace a row from column with %lu rows.", &v62, 0x16u);
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v25 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_6;
      }
    }
  }

  if (self)
  {
    v38 = self->super._tokenRows;
    v44 = objc_msgSend_count(v38, v39, v40, v41, v42, v43);

    if (v44 > a4)
    {
      goto LABEL_18;
    }

LABEL_12:
    if (qword_1EA84DC48 == -1)
    {
      v48 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
      {
LABEL_14:
        if (self)
        {
          v54 = self->super._tokenRows;
          v60 = objc_msgSend_count(v54, v55, v56, v57, v58, v59);
        }

        else
        {
          v54 = 0;
          v60 = objc_msgSend_count(0, v49, v50, v51, v52, v53);
        }

        v62 = 134218240;
        v63 = a4;
        v64 = 2048;
        v65 = v60;
        _os_log_impl(&dword_18366B000, v48, OS_LOG_TYPE_FAULT, "Invalid index %ld when trying to replace a row from column with %lu rows.", &v62, 0x16u);
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v48 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_14;
      }
    }

    goto LABEL_18;
  }

  v61 = objc_msgSend_count(0, v20, v21, v22, v23, v24);

  if (v61 <= a4)
  {
    goto LABEL_12;
  }

LABEL_18:
  if (self)
  {
    self = self->super._tokenRows;
  }

  objc_msgSend_setObject_atIndexedSubscript_(self, v45, v11, a4, v46, v47);
}

- (void)removeTokenRowAtIndex:(int64_t)a3
{
  v7 = self;
  v63 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v8 = self->super._tokenRows;
    v14 = objc_msgSend_count(v8, v9, v10, v11, v12, v13);
  }

  else
  {
    v8 = 0;
    v14 = objc_msgSend_count(0, a2, a3, v3, v4, v5);
  }

  v15 = v14;

  if (v15 <= a3)
  {
    if (qword_1EA84DC48 == -1)
    {
      v21 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
LABEL_6:
        if (v7)
        {
          v27 = v7->super._tokenRows;
          v33 = objc_msgSend_count(v27, v28, v29, v30, v31, v32);
        }

        else
        {
          v27 = 0;
          v33 = objc_msgSend_count(0, v22, v23, v24, v25, v26);
        }

        v59 = 134218240;
        v60 = a3;
        v61 = 2048;
        v62 = v33;
        _os_log_impl(&dword_18366B000, v21, OS_LOG_TYPE_ERROR, "Invalid index %ld when trying to remvove a row from column with %lu rows.", &v59, 0x16u);
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v21 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_6;
      }
    }
  }

  if (v7)
  {
    v34 = v7->super._tokenRows;
    v40 = objc_msgSend_count(v34, v35, v36, v37, v38, v39);

    if (v40 > a3)
    {
      goto LABEL_18;
    }

LABEL_12:
    if (qword_1EA84DC48 == -1)
    {
      v45 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
      {
LABEL_14:
        if (v7)
        {
          v51 = v7->super._tokenRows;
          v57 = objc_msgSend_count(v51, v52, v53, v54, v55, v56);
        }

        else
        {
          v51 = 0;
          v57 = objc_msgSend_count(0, v46, v47, v48, v49, v50);
        }

        v59 = 134218240;
        v60 = a3;
        v61 = 2048;
        v62 = v57;
        _os_log_impl(&dword_18366B000, v45, OS_LOG_TYPE_FAULT, "Invalid index %ld when trying to remvove a row from column with %lu rows.", &v59, 0x16u);
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v45 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_14;
      }
    }

    goto LABEL_18;
  }

  v58 = objc_msgSend_count(0, v16, v17, v18, v19, v20);

  if (v58 <= a3)
  {
    goto LABEL_12;
  }

LABEL_18:
  if (v7)
  {
    v7 = v7->super._tokenRows;
  }

  objc_msgSend_removeObjectAtIndex_(v7, v41, a3, v42, v43, v44);
}

- (void)sortTokenRows
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = objc_msgSend_firstObject(self->super._tokenRows, a2, v2, v3, v4, v5);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  tokenRows = self->super._tokenRows;
  if (isKindOfClass)
  {
    v15 = &unk_1EF1BC950;

LABEL_4:
    objc_msgSend_sortUsingComparator_(tokenRows, v9, v15, v11, v12, v13);
    return;
  }

  v16 = objc_msgSend_firstObject(tokenRows, v9, v10, v11, v12, v13);
  objc_opt_class();
  v17 = objc_opt_isKindOfClass();

  if (v17)
  {
    tokenRows = self->super._tokenRows;
    v15 = &unk_1EF1BC970;

    goto LABEL_4;
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v18 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v24 = objc_msgSend_firstObject(self->super._tokenRows, v19, v20, v21, v22, v23);
    v26 = 138412290;
    v27 = objc_opt_class();
    v25 = v27;
    _os_log_impl(&dword_18366B000, v18, OS_LOG_TYPE_ERROR, "Unexpected token class (%@) encountered when sorting token rows.", &v26, 0xCu);
  }
}

@end