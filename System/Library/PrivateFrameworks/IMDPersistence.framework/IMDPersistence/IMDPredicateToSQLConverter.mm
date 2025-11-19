@interface IMDPredicateToSQLConverter
- (IMDPredicateToSQLConverter)initWithPredicate:(id)a3 keyPathsToColumns:(id)a4 columnPrefix:(id)a5;
- (NSArray)parameters;
- (void)bindParametersToSqliteWithStatement:(CSDBSqliteStatement *)a3;
@end

@implementation IMDPredicateToSQLConverter

- (NSArray)parameters
{
  v3 = objc_msgSend_copy(self->_foundParameters, a2, v2);

  return v3;
}

- (IMDPredicateToSQLConverter)initWithPredicate:(id)a3 keyPathsToColumns:(id)a4 columnPrefix:(id)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = IMDPredicateToSQLConverter;
  v11 = [(IMDPredicateToSQLConverter *)&v19 init];
  if (v11)
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    foundParameters = v11->_foundParameters;
    v11->_foundParameters = v12;

    objc_storeStrong(&v11->_keyPathsToColumns, a4);
    objc_storeStrong(&v11->_columnPrefix, a5);
    v14 = sub_1B7B81744(v11, v8);
    expression = v11->_expression;
    v11->_expression = v14;
  }

  v16 = v11;

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

- (void)bindParametersToSqliteWithStatement:(CSDBSqliteStatement *)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = objc_msgSend_parameters(self, a2, a3, 0);
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v15, v19, 16);
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          CSDBSqliteBindTextFromCFString();
          goto LABEL_13;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_msgSend_integerValue(v9, v11, v12);
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_13;
          }

          objc_msgSend___im_nanosecondTimeInterval(v9, v10, v13);
        }

        CSDBSqliteBindInt64();
LABEL_13:
        ++v8;
      }

      while (v6 != v8);
      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v10, &v15, v19, 16);
    }

    while (v6);
  }

  v14 = *MEMORY[0x1E69E9840];
}

@end