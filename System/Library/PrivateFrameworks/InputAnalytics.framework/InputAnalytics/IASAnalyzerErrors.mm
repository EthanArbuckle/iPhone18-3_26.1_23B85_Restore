@interface IASAnalyzerErrors
+ (id)consolidatedErrorStringFromErrors:(id)errors;
- (IASAnalyzerErrors)init;
- (id)errorString;
- (void)clear;
- (void)logErrorCodeIfNotNil:(id)nil;
@end

@implementation IASAnalyzerErrors

- (IASAnalyzerErrors)init
{
  v6.receiver = self;
  v6.super_class = IASAnalyzerErrors;
  v2 = [(IASAnalyzerErrors *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    objc_msgSend_setErrors_(v2, v4, v3);
  }

  return v2;
}

- (void)logErrorCodeIfNotNil:(id)nil
{
  nilCopy = nil;
  if (nilCopy)
  {
    v7 = nilCopy;
    if (objc_msgSend_length(nilCopy, v5, v6) != 1)
    {
      v10 = sub_1D4620388();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1D462DC4C(v7, v10);
      }

      v7 = @"E";
    }

    v11 = objc_msgSend_errors(self, v8, v9);
    objc_msgSend_addObject_(v11, v12, v7);
  }
}

- (id)errorString
{
  v22[1] = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_errors(self, a2, v2);
  v7 = objc_msgSend_count(v4, v5, v6);

  if (v7)
  {
    v10 = objc_msgSend_errors(self, v8, v9);
    v11 = objc_alloc(MEMORY[0x1E696AEB0]);
    v13 = objc_msgSend_initWithKey_ascending_(v11, v12, @"self", 1);
    v22[0] = v13;
    v15 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v14, v22, 1);
    v17 = objc_msgSend_sortedArrayUsingDescriptors_(v10, v16, v15);

    v19 = objc_msgSend_componentsJoinedByString_(v17, v18, &stru_1F4FDAA18);
  }

  else
  {
    v19 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (void)clear
{
  v5 = objc_msgSend_errors(self, a2, v2);
  objc_msgSend_removeAllObjects(v5, v3, v4);
}

+ (id)consolidatedErrorStringFromErrors:(id)errors
{
  v41 = *MEMORY[0x1E69E9840];
  errorsCopy = errors;
  v6 = errorsCopy;
  if (errorsCopy && objc_msgSend_count(errorsCopy, v4, v5))
  {
    v9 = objc_msgSend_array(MEMORY[0x1E695DF70], v7, v8);
    v12 = objc_msgSend_allKeys(v6, v10, v11);
    v14 = objc_msgSend_sortedArrayUsingSelector_(v12, v13, sel_compare_);

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v15 = v14;
    v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v36, v40, 16);
    if (v17)
    {
      v19 = v17;
      v20 = *v37;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v37 != v20)
          {
            objc_enumerationMutation(v15);
          }

          v22 = *(*(&v36 + 1) + 8 * i);
          v23 = objc_msgSend_objectForKeyedSubscript_(v6, v18, v22);
          v27 = objc_msgSend_errorString(v23, v24, v25);
          if (v27)
          {
            v28 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v26, @"%@%@%@", v22, @":", v27);
            objc_msgSend_addObject_(v9, v29, v28);
          }
        }

        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v18, &v36, v40, 16);
      }

      while (v19);
    }

    if (objc_msgSend_count(v9, v30, v31))
    {
      v33 = objc_msgSend_componentsJoinedByString_(v9, v32, @"");;
    }

    else
    {
      v33 = 0;
    }
  }

  else
  {
    v33 = 0;
  }

  v34 = *MEMORY[0x1E69E9840];

  return v33;
}

@end