@interface CNHandleStringClassifier
+ (id)classificationOfHandleStrings:(id)strings classificationQuality:(unint64_t)quality;
+ (id)classificationStrategyForQuality:(unint64_t)quality;
- (CNHandleStringClassifier)initWithClassificationQuality:(unint64_t)quality;
- (CNHandleStringClassifier)initWithClassificationStrategy:(id)strategy;
- (id)description;
- (unint64_t)typeOfHandleString:(id)string;
- (void)classifyHandleString:(id)string builder:(id)builder;
@end

@implementation CNHandleStringClassifier

+ (id)classificationOfHandleStrings:(id)strings classificationQuality:(unint64_t)quality
{
  stringsCopy = strings;
  v7 = +[CNLogging apiUsageLog];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [CNHandleStringClassifier classificationOfHandleStrings:v7 classificationQuality:?];
  }

  v8 = +[CNLogging apiUsageLog];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [CNHandleStringClassifier classificationOfHandleStrings:stringsCopy classificationQuality:v8];
  }

  v9 = +[CNLogging apiUsageLog];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [CNHandleStringClassifier classificationOfHandleStrings:quality classificationQuality:v9];
  }

  v10 = objc_alloc_init(CNHandleStringsClassificationBuilder);
  v11 = [[self alloc] initWithClassificationQuality:quality];
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __80__CNHandleStringClassifier_classificationOfHandleStrings_classificationQuality___block_invoke;
  v20 = &unk_1E6ED8720;
  v12 = v11;
  v21 = v12;
  v13 = v10;
  v22 = v13;
  [stringsCopy _cn_each:&v17];
  v14 = [(CNHandleStringsClassificationBuilder *)v13 build:v17];
  v15 = +[CNLogging apiUsageLog];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [CNHandleStringClassifier classificationOfHandleStrings:v15 classificationQuality:?];
  }

  return v14;
}

- (CNHandleStringClassifier)initWithClassificationQuality:(unint64_t)quality
{
  v4 = [objc_opt_class() classificationStrategyForQuality:quality];
  v5 = [(CNHandleStringClassifier *)self initWithClassificationStrategy:v4];

  return v5;
}

+ (id)classificationStrategyForQuality:(unint64_t)quality
{
  if (quality == 1)
  {
    v3 = +[_CNDataDetectorsHandleStringClassificationStrategy assistedDataDetectorsStrategy];
  }

  else
  {
    v3 = objc_alloc_init(_CNRegExHandleStringClassificationStrategy);
  }

  return v3;
}

- (CNHandleStringClassifier)initWithClassificationStrategy:(id)strategy
{
  strategyCopy = strategy;
  if (!strategyCopy)
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
    objc_storeStrong(&v7->_classificationStrategy, strategy);
    v9 = v8;
  }

  return v8;
}

- (id)description
{
  v3 = [CNDescriptionBuilder descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"classificationStrategy" object:self->_classificationStrategy];
  build = [v3 build];

  return build;
}

- (void)classifyHandleString:(id)string builder:(id)builder
{
  stringCopy = string;
  builderCopy = builder;
  if ((off_1EF440708(&__block_literal_global_120, stringCopy) & 1) == 0)
  {
    v7 = [(CNHandleStringClassifier *)self typeOfHandleString:stringCopy];
    if (v7 == 2)
    {
      [builderCopy addPhoneNumber:stringCopy];
    }

    else if (v7 == 1)
    {
      [builderCopy addEmailAddress:stringCopy];
    }

    else
    {
      [builderCopy addUnknown:stringCopy];
    }
  }
}

- (unint64_t)typeOfHandleString:(id)string
{
  _cn_trimmedString = [string _cn_trimmedString];
  if (off_1EF440708(&__block_literal_global_120, _cn_trimmedString))
  {
    v5 = 0;
  }

  else
  {
    v5 = [(_CNHandleStringClassificationStrategy *)self->_classificationStrategy classificationOfHandleString:_cn_trimmedString];
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