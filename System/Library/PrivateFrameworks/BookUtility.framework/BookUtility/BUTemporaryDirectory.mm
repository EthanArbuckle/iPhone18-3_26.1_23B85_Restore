@interface BUTemporaryDirectory
- (BOOL)_createDirectoryWithSignature:(id)signature subdirectory:(id)subdirectory error:(id *)error;
- (BUTemporaryDirectory)init;
- (BUTemporaryDirectory)initWithSignature:(id)signature subdirectory:(id)subdirectory error:(id *)error;
- (id)initForWritingToURL:(id)l error:(id *)error;
- (void)dealloc;
@end

@implementation BUTemporaryDirectory

- (BUTemporaryDirectory)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%@: %s", @"Do not call method", "[BUTemporaryDirectory init]");
  v6 = objc_msgSend_exceptionWithName_reason_userInfo_(v2, v5, v3, v4, 0);
  v7 = v6;

  objc_exception_throw(v6);
}

- (BUTemporaryDirectory)initWithSignature:(id)signature subdirectory:(id)subdirectory error:(id *)error
{
  signatureCopy = signature;
  subdirectoryCopy = subdirectory;
  v14.receiver = self;
  v14.super_class = BUTemporaryDirectory;
  v10 = [(BUTemporaryDirectory *)&v14 init];
  v12 = v10;
  if (v10 && (objc_msgSend__createDirectoryWithSignature_subdirectory_error_(v10, v11, signatureCopy, subdirectoryCopy, error) & 1) == 0)
  {

    v12 = 0;
  }

  return v12;
}

- (id)initForWritingToURL:(id)l error:(id *)error
{
  lCopy = l;
  v18.receiver = self;
  v18.super_class = BUTemporaryDirectory;
  v9 = [(BUTemporaryDirectory *)&v18 init];
  if (v9)
  {
    v10 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v7, v8);
    v12 = objc_msgSend_URLForDirectory_inDomain_appropriateForURL_create_error_(v10, v11, 99, 1, lCopy, 1, error);

    v15 = objc_msgSend_path(v12, v13, v14);
    path = v9->_path;
    v9->_path = v15;

    if (!v12)
    {

      v9 = 0;
    }
  }

  return v9;
}

- (void)dealloc
{
  if (!self->_leak)
  {
    v4 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], a2, v2);
    path = self->_path;
    v14 = 0;
    v7 = objc_msgSend_removeItemAtPath_error_(v4, v6, path, &v14);
    v8 = v14;
    v11 = v8;
    if ((v7 & 1) == 0)
    {
      isNoSuchFileError = objc_msgSend_bu_isNoSuchFileError(v8, v9, v10);

      if (isNoSuchFileError)
      {
LABEL_7:

        goto LABEL_8;
      }

      v4 = BUZipLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_241DCF6E4(v11, &self->_path, v4);
      }
    }

    goto LABEL_7;
  }

LABEL_8:
  v13.receiver = self;
  v13.super_class = BUTemporaryDirectory;
  [(BUTemporaryDirectory *)&v13 dealloc];
}

- (BOOL)_createDirectoryWithSignature:(id)signature subdirectory:(id)subdirectory error:(id *)error
{
  signatureCopy = signature;
  subdirectoryCopy = subdirectory;
  if (signatureCopy)
  {
    v10 = signatureCopy;
  }

  else
  {
    v10 = &stru_2853F3C08;
  }

  if (qword_27EC72980 != -1)
  {
    sub_241DCF770();
  }

  Current = CFAbsoluteTimeGetCurrent();
  v13 = objc_msgSend_stringByAppendingFormat_(qword_27EC72978, v12, @"_%@_%d_%d", v10, Current, atomic_fetch_add(dword_27EC72988, 1u) + 1);
  if (objc_msgSend_length(v13, v14, v15) >= 0x100)
  {
    v17 = objc_msgSend_substringToIndex_(v13, v16, 255);

    v13 = v17;
  }

  v18 = NSTemporaryDirectory();
  v20 = v18;
  if (subdirectoryCopy)
  {
    v21 = objc_msgSend_stringByAppendingPathComponent_(v18, v19, subdirectoryCopy);

    v20 = v21;
  }

  v22 = objc_msgSend_stringByAppendingPathComponent_(v20, v19, v13);
  v25 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v23, v24);
  v33 = 0;
  v27 = objc_msgSend_createDirectoryAtPath_withIntermediateDirectories_attributes_error_(v25, v26, v22, 1, 0, &v33);
  v28 = v33;

  objc_storeStrong(&self->_path, v22);
  if (error && (v27 & 1) == 0)
  {
    if (v28)
    {
      v30 = v28;
      *error = v28;
    }

    else
    {
      v31 = objc_msgSend_bu_fileWriteUnknownErrorWithUserInfo_(MEMORY[0x277CCA9B8], v29, 0);
      *error = v31;
    }
  }

  return v27;
}

@end