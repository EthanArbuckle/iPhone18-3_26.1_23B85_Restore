@interface CNHandleStringClassifier
+ (id)classificationOfHandleStrings:(id)a3 classificationQuality:(unint64_t)a4;
+ (id)classificationStrategyForQuality:(unint64_t)a3;
- (CNHandleStringClassifier)initWithClassificationQuality:(unint64_t)a3;
- (CNHandleStringClassifier)initWithClassificationStrategy:(id)a3;
- (id)description;
- (unint64_t)typeOfHandleString:(id)a3;
- (void)classifyHandleString:(id)a3 builder:(id)a4;
@end

@implementation CNHandleStringClassifier

+ (id)classificationOfHandleStrings:(id)a3 classificationQuality:(unint64_t)a4
{
  v6 = a3;
  v7 = +[CNLogging apiUsageLog];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [CNHandleStringClassifier classificationOfHandleStrings:v7 classificationQuality:?];
  }

  v8 = +[CNLogging apiUsageLog];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [CNHandleStringClassifier classificationOfHandleStrings:v6 classificationQuality:v8];
  }

  v9 = +[CNLogging apiUsageLog];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [CNHandleStringClassifier classificationOfHandleStrings:a4 classificationQuality:v9];
  }

  v10 = objc_alloc_init(CNHandleStringsClassificationBuilder);
  v11 = [[a1 alloc] initWithClassificationQuality:a4];
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __80__CNHandleStringClassifier_classificationOfHandleStrings_classificationQuality___block_invoke;
  v20 = &unk_1E6ED8720;
  v12 = v11;
  v21 = v12;
  v13 = v10;
  v22 = v13;
  [v6 _cn_each:&v17];
  v14 = [(CNHandleStringsClassificationBuilder *)v13 build:v17];
  v15 = +[CNLogging apiUsageLog];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [CNHandleStringClassifier classificationOfHandleStrings:v15 classificationQuality:?];
  }

  return v14;
}

- (CNHandleStringClassifier)initWithClassificationQuality:(unint64_t)a3
{
  v4 = [objc_opt_class() classificationStrategyForQuality:a3];
  v5 = [(CNHandleStringClassifier *)self initWithClassificationStrategy:v4];

  return v5;
}

+ (id)classificationStrategyForQuality:(unint64_t)a3
{
  if (a3 == 1)
  {
    v3 = +[_CNDataDetectorsHandleStringClassificationStrategy assistedDataDetectorsStrategy];
  }

  else
  {
    v3 = objc_alloc_init(_CNRegExHandleStringClassificationStrategy);
  }

  return v3;
}

- (CNHandleStringClassifier)initWithClassificationStrategy:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    if (CNGuardOSLog_cn_once_token_0_7 != -1)
    {
      [CNHandleStringClassifier initWithClassificationStrategy:];
    }

    v6 = CNGuardOSLog_cn_once_object_0_7;
    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_7, OS_LOG_TYPE_FAULT))
    {
      [CNHandleStringClassifier initWithClassificationStrategy:v6];
    }
  }

  v11.receiver = self;
  v11.super_class = CNHandleStringClassifier;
  v7 = [(CNHandleStringClassifier *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_classificationStrategy, a3);
    v9 = v8;
  }

  return v8;
}

- (id)description
{
  v3 = [CNDescriptionBuilder descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"classificationStrategy" object:self->_classificationStrategy];
  v5 = [v3 build];

  return v5;
}

- (void)classifyHandleString:(id)a3 builder:(id)a4
{
  v8 = a3;
  v6 = a4;
  if ((off_1EF440708(&__block_literal_global_120, v8) & 1) == 0)
  {
    v7 = [(CNHandleStringClassifier *)self typeOfHandleString:v8];
    if (v7 == 2)
    {
      [v6 addPhoneNumber:v8];
    }

    else if (v7 == 1)
    {
      [v6 addEmailAddress:v8];
    }

    else
    {
      [v6 addUnknown:v8];
    }
  }
}

- (unint64_t)typeOfHandleString:(id)a3
{
  v4 = [a3 _cn_trimmedString];
  if (off_1EF440708(&__block_literal_global_120, v4))
  {
    v5 = 0;
  }

  else
  {
    v5 = [(_CNHandleStringClassificationStrategy *)self->_classificationStrategy classificationOfHandleString:v4];
  }

  return v5;
}

+ (void)classificationOfHandleStrings:(void *)a1 classificationQuality:(NSObject *)a2 .cold.2(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = 134217984;
  v5 = [a1 count];
  _os_log_debug_impl(&dword_1859F0000, a2, OS_LOG_TYPE_DEBUG, "   handleStrings: %lu", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

+ (void)classificationOfHandleStrings:(uint64_t)a1 classificationQuality:(NSObject *)a2 .cold.3(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a1;
  _os_log_debug_impl(&dword_1859F0000, a2, OS_LOG_TYPE_DEBUG, "   quality: %lu", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end