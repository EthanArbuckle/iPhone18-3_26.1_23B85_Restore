@interface CHE5MLModel
+ (id)createProgramLibraryWithError:(id *)error;
+ (id)defaultURLOfModelInThisBundle;
+ (id)inputNames;
+ (id)loadHashWithURL:(id)l;
+ (id)modelHash;
+ (id)outputNames;
@end

@implementation CHE5MLModel

+ (id)loadHashWithURL:(id)l
{
  v18 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v15 = 0;
  v8 = objc_msgSend_checkResourceIsReachableAndReturnError_(lCopy, v4, &v15, v5, v6, v7);
  v11 = v15;
  if (v8)
  {
    v12 = objc_msgSend_stringWithContentsOfURL_encoding_error_(MEMORY[0x1E696AEC0], v9, lCopy, 4, 0, v10);
  }

  else
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v13 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v11;
      _os_log_impl(&dword_18366B000, v13, OS_LOG_TYPE_ERROR, "Failed to locate E5ML model hash. %@", buf, 0xCu);
    }

    v12 = 0;
  }

  return v12;
}

+ (id)modelHash
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_18398F820;
  block[3] = &unk_1E6DDC0E0;
  block[4] = self;
  if (qword_1EA84D2E0 == -1)
  {
    v2 = qword_1EA84D2D8;
  }

  else
  {
    dispatch_once(&qword_1EA84D2E0, block);
    v2 = qword_1EA84D2D8;
  }

  return v2;
}

+ (id)createProgramLibraryWithError:(id *)error
{
  v7 = objc_msgSend_defaultURLOfModelInThisBundle(self, a2, error, v3, v4, v5);
  if (v7)
  {
    v12 = v7;
    v13 = objc_msgSend_URLByAppendingPathComponent_(v7, v8, @"model.specialization.bundle", v9, v10, v11);
    if (objc_msgSend_checkResourceIsReachableAndReturnError_(v13, v14, 0, v15, v16, v17))
    {
      v18 = v13;

      v12 = v18;
    }

    v19 = [CHE5MLProgramLibrary alloc];
    v23 = objc_msgSend_initWithModelURL_error_(v19, v20, v12, error, v21, v22);

    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

+ (id)defaultURLOfModelInThisBundle
{
  v3 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x1E695DF30], a2, *MEMORY[0x1E695D930], @"Subclasses must override this method.", 0, v2);
  objc_exception_throw(v3);
}

+ (id)inputNames
{
  v3 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x1E695DF30], a2, *MEMORY[0x1E695D930], @"Subclasses must override this method.", 0, v2);
  objc_exception_throw(v3);
}

+ (id)outputNames
{
  v3 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x1E695DF30], a2, *MEMORY[0x1E695D930], @"Subclasses must override this method.", 0, v2);
  objc_exception_throw(v3);
}

@end