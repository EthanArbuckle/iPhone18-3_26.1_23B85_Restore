@interface CHTokenizedResult
+ (id)loadFromFile:(id)file;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToTokenizedResult:(id)result;
- (CHTokenizedResult)initWithCoder:(id)coder;
- (CHTokenizedResult)initWithIsMinimalDrawingResult:(BOOL)result;
- (id)description;
- (id)writeToFile;
- (id)writeToFileInFolder:(id)folder basename:(id)basename;
- (unint64_t)hash;
@end

@implementation CHTokenizedResult

- (CHTokenizedResult)initWithIsMinimalDrawingResult:(BOOL)result
{
  v5.receiver = self;
  v5.super_class = CHTokenizedResult;
  result = [(CHTokenizedResult *)&v5 init];
  if (result)
  {
    result->_isMinimalDrawingResult = result;
  }

  return result;
}

- (CHTokenizedResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9 = objc_msgSend_decodeBoolForKey_(coderCopy, v5, @"isMinimalDrawingResult", v6, v7, v8);
  IsMinimalDrawingResult = objc_msgSend_initWithIsMinimalDrawingResult_(self, v10, v9, v11, v12, v13);

  return IsMinimalDrawingResult;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = CHTokenizedResult;
  v2 = [(CHTokenizedResult *)&v4 description];

  return v2;
}

- (BOOL)isEqualToTokenizedResult:(id)result
{
  resultCopy = result;
  v10 = resultCopy;
  if (self == resultCopy)
  {

    return 1;
  }

  else
  {
    v11 = objc_msgSend_topTranscription(self, v5, v6, v7, v8, v9);
    v17 = objc_msgSend_topTranscription(v10, v12, v13, v14, v15, v16);
    isEqualToString = objc_msgSend_isEqualToString_(v11, v18, v17, v19, v20, v21);

    return isEqualToString;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isEqualToTokenizedResult = objc_msgSend_isEqualToTokenizedResult_(self, v5, equalCopy, v6, v7, v8);

    return isEqualToTokenizedResult;
  }

  else
  {

    return 0;
  }
}

- (unint64_t)hash
{
  v6 = objc_msgSend_topTranscription(self, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_hash(v6, v7, v8, v9, v10, v11);

  return v12;
}

- (id)writeToFile
{
  v3 = MEMORY[0x1E695DFF8];
  v4 = NSTemporaryDirectory();
  v9 = objc_msgSend_fileURLWithPath_(v3, v5, v4, v6, v7, v8);

  v10 = objc_alloc_init(MEMORY[0x1E696AB78]);
  objc_msgSend_setDateFormat_(v10, v11, @"dd-MM-yyyy-HH-mm-ss-SSS", v12, v13, v14);
  v20 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v15, v16, v17, v18, v19);
  v26 = objc_msgSend_UUIDString(v20, v21, v22, v23, v24, v25);
  v31 = objc_msgSend_substringToIndex_(v26, v27, 4, v28, v29, v30);

  v37 = objc_msgSend_now(MEMORY[0x1E695DF00], v32, v33, v34, v35, v36);
  v42 = objc_msgSend_stringFromDate_(v10, v38, v37, v39, v40, v41);

  v47 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v43, @"/result_%@-%@.dat", v44, v45, v46, v42, v31);
  v51 = objc_msgSend_writeToFileInFolder_basename_(self, v48, v9, v47, v49, v50);

  return v51;
}

- (id)writeToFileInFolder:(id)folder basename:(id)basename
{
  v60 = *MEMORY[0x1E69E9840];
  folderCopy = folder;
  basenameCopy = basename;
  v8 = objc_alloc_init(MEMORY[0x1E696AC08]);
  v14 = objc_msgSend_absoluteString(folderCopy, v9, v10, v11, v12, v13);
  v19 = objc_msgSend_fileExistsAtPath_(v8, v15, v14, v16, v17, v18);

  if (v19)
  {
    v24 = 0;
LABEL_5:
    v28 = objc_msgSend_URLByAppendingPathComponent_(folderCopy, v20, basenameCopy, v21, v22, v23);
    v31 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], v29, self, 1, 0, v30);
    v54 = v24;
    objc_msgSend_writeToURL_options_error_(v31, v32, v28, 1, &v54, v33);
    v27 = v54;

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v34 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v40 = objc_msgSend_absoluteString(v28, v35, v36, v37, v38, v39);
      v46 = objc_msgSend_description(v27, v41, v42, v43, v44, v45);
      *buf = 138412546;
      v57 = v40;
      v58 = 2112;
      v59 = v46;
      _os_log_impl(&dword_18366B000, v34, OS_LOG_TYPE_DEFAULT, "TokenizedResult writeToFile saving drawing at URL %@, error = %@", buf, 0x16u);
    }

    if (v27)
    {
      v52 = 0;
    }

    else
    {
      v52 = objc_msgSend_absoluteString(v28, v47, v48, v49, v50, v51);
    }

    goto LABEL_18;
  }

  v55 = 0;
  DirectoryAtURL_withIntermediateDirectories_attributes_error = objc_msgSend_createDirectoryAtURL_withIntermediateDirectories_attributes_error_(v8, v20, folderCopy, 1, 0, &v55);
  v26 = v55;
  v27 = v26;
  if (DirectoryAtURL_withIntermediateDirectories_attributes_error)
  {
    v24 = v26;
    goto LABEL_5;
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v28 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v57 = folderCopy;
    v58 = 2112;
    v59 = v27;
    _os_log_impl(&dword_18366B000, v28, OS_LOG_TYPE_ERROR, "Drawing unable to create folder at URL %@: Error %@", buf, 0x16u);
  }

  v52 = 0;
LABEL_18:

  return v52;
}

+ (id)loadFromFile:(id)file
{
  v6 = objc_msgSend_dataWithContentsOfFile_(MEMORY[0x1E695DEF0], a2, file, v3, v4, v5);
  v7 = MEMORY[0x1E696ACD0];
  v8 = objc_opt_class();
  v11 = objc_msgSend_unarchivedObjectOfClass_fromData_error_(v7, v9, v8, v6, 0, v10);

  return v11;
}

@end