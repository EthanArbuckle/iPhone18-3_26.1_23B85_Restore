@interface CHSingletonMLModel
+ (id)modelWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error;
+ (unint64_t)powerLogModelNameForModelKey:(id)key;
+ (void)releaseModelWithKey:(id)key;
- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error;
@end

@implementation CHSingletonMLModel

+ (id)modelWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error
{
  lCopy = l;
  configurationCopy = configuration;
  objc_opt_self();
  if (qword_1EA84CFB8 != -1)
  {
    dispatch_once(&qword_1EA84CFB8, &unk_1EF1BDE48);
  }

  v14 = objc_msgSend_relativePath(lCopy, v9, v10, v11, v12, v13);
  v15 = qword_1EA84CFB0;
  v26 = MEMORY[0x1E69E9820];
  v27 = 3221225472;
  v28 = sub_1837B01D8;
  v29 = &unk_1E6DDE268;
  v16 = v14;
  v30 = v16;
  v17 = lCopy;
  v31 = v17;
  v18 = configurationCopy;
  v32 = v18;
  errorCopy = error;
  dispatch_sync(v15, &v26);
  v23 = objc_msgSend_objectForKey_(qword_1EA84CFA0, v19, v16, v20, v21, v22, v26, v27, v28, v29);
  v24 = v23;
  if (v23)
  {
    ++*(v23 + 16);
  }

  return v24;
}

- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error
{
  featuresCopy = features;
  optionsCopy = options;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_1837B056C;
  v30 = sub_1837B057C;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_1837B056C;
  v24 = sub_1837B057C;
  v25 = 0;
  v10 = qword_1EA84CFB0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1837B0584;
  block[3] = &unk_1E6DDE290;
  v18 = &v26;
  block[4] = self;
  v11 = featuresCopy;
  v16 = v11;
  v12 = optionsCopy;
  v17 = v12;
  v19 = &v20;
  dispatch_sync(v10, block);
  if (error)
  {
    *error = v21[5];
  }

  v13 = v27[5];

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v13;
}

+ (void)releaseModelWithKey:(id)key
{
  keyCopy = key;
  v4 = qword_1EA84CFB0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1837B06B8;
  block[3] = &unk_1E6DDBE10;
  v7 = keyCopy;
  v5 = keyCopy;
  dispatch_sync(v4, block);
}

+ (unint64_t)powerLogModelNameForModelKey:(id)key
{
  keyCopy = key;
  if (objc_msgSend_hasSuffix_(keyCopy, v4, @"ctc_latn.bundle", v5, v6, v7))
  {

    return 4;
  }

  else if (objc_msgSend_hasSuffix_(keyCopy, v8, @"ctc_zh.bundle", v9, v10, v11))
  {

    return 5;
  }

  else if (objc_msgSend_hasSuffix_(keyCopy, v13, @"ctc_ja.bundle", v14, v15, v16))
  {

    return 6;
  }

  else if (objc_msgSend_hasSuffix_(keyCopy, v17, @"ctc_ko.bundle", v18, v19, v20))
  {

    return 7;
  }

  else if (objc_msgSend_hasSuffix_(keyCopy, v21, @"ctc_th.bundle", v22, v23, v24))
  {

    return 8;
  }

  else if (objc_msgSend_hasSuffix_(keyCopy, v25, @"ctc_cyrl.bundle", v26, v27, v28) & 1) != 0 || (objc_msgSend_hasSuffix_(keyCopy, v29, @"ctc_ar.bundle", v30, v31, v32))
  {

    return 9;
  }

  else
  {
    if (objc_msgSend_hasSuffix_(keyCopy, v33, @"ctc_vi.bundle", v34, v35, v36))
    {
      v37 = 11;
    }

    else
    {
      v37 = 0x7FFFFFFFFFFFFFFFLL;
    }

    return v37;
  }
}

@end