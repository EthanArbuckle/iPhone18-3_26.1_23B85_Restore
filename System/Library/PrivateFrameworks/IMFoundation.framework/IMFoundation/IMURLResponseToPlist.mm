@interface IMURLResponseToPlist
+ (void)generate:(id)generate data:(id)data toFilePath:(id)path;
@end

@implementation IMURLResponseToPlist

+ (void)generate:(id)generate data:(id)data toFilePath:(id)path
{
  generateCopy = generate;
  dataCopy = data;
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v11 = objc_msgSend_URL(generateCopy, v9, v10);
  v14 = objc_msgSend_absoluteString(v11, v12, v13);

  v17 = objc_msgSend_allHeaderFields(generateCopy, v15, v16);
  if (v17)
  {
    CFDictionarySetValue(v8, @"headers", v17);
  }

  v18 = MEMORY[0x1E696AD98];
  v21 = objc_msgSend_statusCode(generateCopy, v19, v20);
  v23 = objc_msgSend_numberWithInteger_(v18, v22, v21);
  if (v23)
  {
    CFDictionarySetValue(v8, @"statusCode", v23);
  }

  if (v14)
  {
    CFDictionarySetValue(v8, @"url", v14);
  }

  v44 = v14;
  v24 = objc_alloc(MEMORY[0x1E696AEC0]);
  v26 = objc_msgSend_initWithData_encoding_(v24, v25, dataCopy, 4);
  v28 = objc_msgSend_dataUsingEncoding_(v26, v27, 4);
  v46 = 0;
  v30 = objc_msgSend_propertyListWithData_options_format_error_(MEMORY[0x1E696AE40], v29, v28, 0, 0, &v46);
  v31 = v46;
  if (v31)
  {
    v32 = dataCopy;
    if (!dataCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v32 = v30;
  if (v30)
  {
LABEL_9:
    CFDictionarySetValue(v8, @"body", v32);
  }

LABEL_10:

  v45 = 0;
  v34 = objc_msgSend_dataWithPropertyList_format_options_error_(MEMORY[0x1E696AE40], v33, v8, 100, 0, &v45);
  if (v45)
  {
    NSLog(&cfstr_CanTSerializeD.isa, v45, v8);
  }

  v35 = objc_alloc(MEMORY[0x1E696AEC0]);
  v37 = objc_msgSend_initWithData_encoding_(v35, v36, v34, 4);
  v40 = objc_msgSend_URL(generateCopy, v38, v39);
  v43 = objc_msgSend_absoluteString(v40, v41, v42);
  NSLog(&cfstr_FullplistForUr.isa, v43, v37);
}

@end