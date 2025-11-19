@interface CHTokenizedResultToken
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToTokenizedResultToken:(id)a3;
- (BOOL)isEquivalentToToken:(id)a3;
- (CGRect)bounds;
- (CHTokenizedResultToken)init;
- (CHTokenizedResultToken)initWithCoder:(id)a3;
- (CHTokenizedResultToken)initWithString:(id)a3 strokeIndexes:(id)a4 bounds:(CGRect)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CHTokenizedResultToken

- (CHTokenizedResultToken)init
{
  v7 = objc_msgSend_indexSet(MEMORY[0x1E696AC90], a2, v2, v3, v4, v5);
  v11 = objc_msgSend_initWithString_strokeIndexes_bounds_(self, v8, &stru_1EF1C0318, v7, v9, v10, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24));

  return v11;
}

- (CHTokenizedResultToken)initWithString:(id)a3 strokeIndexes:(id)a4 bounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v52 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v16 = objc_msgSend_characterSetWithRange_(MEMORY[0x1E696AB08], v13, 57440, 1024, v14, v15);
  v21 = objc_msgSend_rangeOfCharacterFromSet_(v11, v17, v16, v18, v19, v20);

  if (v21 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (qword_1EA84DC48 == -1)
    {
      v25 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
LABEL_5:

        goto LABEL_6;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v25 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_5;
      }
    }

    *buf = 138412290;
    v51 = v11;
    _os_log_impl(&dword_18366B000, v25, OS_LOG_TYPE_ERROR, "The input string (%@) contains one or more ligature private code points", buf, 0xCu);
    goto LABEL_5;
  }

LABEL_6:
  v26 = objc_msgSend_characterSetWithRange_(MEMORY[0x1E696AB08], v22, 57440, 1024, v23, v24);
  v31 = objc_msgSend_rangeOfCharacterFromSet_(v11, v27, v26, v28, v29, v30);

  if (v31 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_11;
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v32 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v32 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
  {
LABEL_9:
    *buf = 138412290;
    v51 = v11;
    _os_log_impl(&dword_18366B000, v32, OS_LOG_TYPE_FAULT, "The input string (%@) contains one or more ligature private code points", buf, 0xCu);
  }

LABEL_10:

LABEL_11:
  v49.receiver = self;
  v49.super_class = CHTokenizedResultToken;
  v38 = [(CHTokenizedResultToken *)&v49 init];
  if (v38)
  {
    v39 = objc_msgSend_copy(v11, v33, v34, v35, v36, v37);
    string = v38->_string;
    v38->_string = v39;

    v46 = objc_msgSend_copy(v12, v41, v42, v43, v44, v45);
    strokeIndexes = v38->_strokeIndexes;
    v38->_strokeIndexes = v46;

    v38->_bounds.origin.x = x;
    v38->_bounds.origin.y = y;
    v38->_bounds.size.width = width;
    v38->_bounds.size.height = height;
  }

  return v38;
}

- (CHTokenizedResultToken)initWithCoder:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_class();
  v9 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v6, v5, @"string", v7, v8);
  v10 = objc_opt_class();
  v14 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v11, v10, @"strokeIndexes", v12, v13);
  v15 = v14;
  if (v9)
  {
    v16 = v14 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v17 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v33 = objc_opt_class();
      v18 = v33;
      _os_log_impl(&dword_18366B000, v17, OS_LOG_TYPE_ERROR, "%@ decoding failed. Token string and stroke indexes are required to be nonnull when constructing a result token", buf, 0xCu);
    }

    v19 = 0;
  }

  else
  {
    v31.receiver = self;
    v31.super_class = CHTokenizedResultToken;
    v19 = [(CHTokenizedResultToken *)&v31 init];
    objc_storeStrong(v19 + 1, v9);
    objc_storeStrong(v19 + 2, v15);
    v29 = *(MEMORY[0x1E695F050] + 16);
    v30 = *MEMORY[0x1E695F050];
    *(v19 + 24) = *MEMORY[0x1E695F050];
    *(v19 + 40) = v29;
    v20 = objc_opt_class();
    self = objc_msgSend_decodeObjectOfClass_forKey_(v4, v21, v20, @"bounds", v22, v23);
    objc_msgSend_getValue_size_(self, v24, (v19 + 24), 32, v25, v26);
    if (CGRectEqualToRect(*(v19 + 24), *MEMORY[0x1E695F058]))
    {
      *(v19 + 24) = v30;
      *(v19 + 40) = v29;
    }
  }

  return v19;
}

- (void)encodeWithCoder:(id)a3
{
  string = self->_string;
  v5 = a3;
  objc_msgSend_encodeObject_forKey_(v5, v6, string, @"string", v7, v8);
  objc_msgSend_encodeObject_forKey_(v5, v9, self->_strokeIndexes, @"strokeIndexes", v10, v11);
  v18 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x1E696B098], v12, &self->_bounds, "{CGRect={CGPoint=dd}{CGSize=dd}}", v13, v14);
  objc_msgSend_encodeObject_forKey_(v5, v15, v18, @"bounds", v16, v17);
}

- (id)description
{
  v10.receiver = self;
  v10.super_class = CHTokenizedResultToken;
  v3 = [(CHTokenizedResultToken *)&v10 description];
  v8 = objc_msgSend_stringByAppendingFormat_(v3, v4, @" '%@', strokes: %@, bounds: [%0.4f, %0.4f, %0.4f, %0.4f]", v5, v6, v7, self->_string, self->_strokeIndexes, *&self->_bounds.origin.x, *&self->_bounds.origin.y, *&self->_bounds.size.width, *&self->_bounds.size.height);

  return v8;
}

- (BOOL)isEqualToTokenizedResultToken:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (self != v4)
  {
    string = self->_string;
    v12 = objc_msgSend_string(v4, v5, v6, v7, v8, v9);
    v18 = v12;
    if (string == v12)
    {
    }

    else
    {
      v19 = self->_string;
      v20 = objc_msgSend_string(v10, v13, v14, v15, v16, v17);
      LODWORD(v19) = objc_msgSend_isEqualToString_(v19, v21, v20, v22, v23, v24);

      if (!v19)
      {
        goto LABEL_9;
      }
    }

    strokeIndexes = self->_strokeIndexes;
    v32 = objc_msgSend_strokeIndexes(v10, v25, v26, v27, v28, v29);
    v38 = v32;
    if (strokeIndexes == v32)
    {
    }

    else
    {
      v39 = self->_strokeIndexes;
      v40 = objc_msgSend_strokeIndexes(v10, v33, v34, v35, v36, v37);
      LODWORD(v39) = objc_msgSend_isEqualToIndexSet_(v39, v41, v40, v42, v43, v44);

      if (!v39)
      {
LABEL_9:
        v30 = 0;
        goto LABEL_12;
      }
    }

    objc_msgSend_bounds(v10, v45, v46, v47, v48, v49);
    v55.origin.x = v50;
    v55.origin.y = v51;
    v55.size.width = v52;
    v55.size.height = v53;
    v30 = CGRectEqualToRect(self->_bounds, v55);
    goto LABEL_12;
  }

  v30 = 1;
LABEL_12:

  return v30;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isEqualToTokenizedResultToken = objc_msgSend_isEqualToTokenizedResultToken_(self, v5, v4, v6, v7, v8);

    return isEqualToTokenizedResultToken;
  }

  else
  {

    return 0;
  }
}

- (BOOL)isEquivalentToToken:(id)a3
{
  v4 = a3;
  string = self->_string;
  v11 = objc_msgSend_string(v4, v6, v7, v8, v9, v10);
  v17 = v11;
  if (string == v11)
  {
  }

  else
  {
    v18 = self->_string;
    v19 = objc_msgSend_string(v4, v12, v13, v14, v15, v16);
    LODWORD(v18) = objc_msgSend_isEqualToString_(v18, v20, v19, v21, v22, v23);

    if (!v18)
    {
      isEqualToIndexSet = 0;
      goto LABEL_9;
    }
  }

  strokeIndexes = self->_strokeIndexes;
  v36 = objc_msgSend_strokeIndexes(v4, v24, v25, v26, v27, v28);
  if (strokeIndexes == v36)
  {
    isEqualToIndexSet = 1;
  }

  else
  {
    v37 = self->_strokeIndexes;
    v38 = objc_msgSend_strokeIndexes(v4, v31, v32, v33, v34, v35);
    isEqualToIndexSet = objc_msgSend_isEqualToIndexSet_(v37, v39, v38, v40, v41, v42);
  }

LABEL_9:
  return isEqualToIndexSet;
}

- (CGRect)bounds
{
  x = self->_bounds.origin.x;
  y = self->_bounds.origin.y;
  width = self->_bounds.size.width;
  height = self->_bounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end