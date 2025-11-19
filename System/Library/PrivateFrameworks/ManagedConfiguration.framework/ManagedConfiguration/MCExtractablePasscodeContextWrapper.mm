@interface MCExtractablePasscodeContextWrapper
+ (id)contextWrapperForExtractablePasscode:(id)a3 outError:(id *)a4;
+ (id)contextWrapperFromExternalizedContext:(id)a3 outError:(id *)a4;
- (BOOL)passcodeExists;
- (BOOL)passcodeIsEqualToString:(id)a3;
- (NSString)passcode;
- (unint64_t)passcodeLength;
@end

@implementation MCExtractablePasscodeContextWrapper

- (NSString)passcode
{
  v18 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__6;
  v14 = __Block_byref_object_dispose__6;
  v15 = 0;
  v9.receiver = self;
  v9.super_class = MCExtractablePasscodeContextWrapper;
  v2 = [(MCACMContextWrapper *)&v9 contextRef];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__MCExtractablePasscodeContextWrapper_passcode__block_invoke;
  v8[3] = &unk_1E77D2500;
  v8[4] = &v10;
  Data = ACMContextGetData(v2, 7, v8);
  if (Data)
  {
    v4 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v17 = Data;
      _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_ERROR, "Couldn't get passcode in auth context: ACM err %d", buf, 8u);
    }
  }

  v5 = v11[5];
  _Block_object_dispose(&v10, 8);

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

void __47__MCExtractablePasscodeContextWrapper_passcode__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 && a3)
  {
    v4 = MEMORY[0x1E696AEC0];
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:a2 length:a3 encoding:4];
    v5 = [v4 _newZStringWithString:v8];
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

- (unint64_t)passcodeLength
{
  v2 = [(MCExtractablePasscodeContextWrapper *)self passcode];
  v3 = [v2 length];

  return v3;
}

- (BOOL)passcodeExists
{
  v2 = [(MCExtractablePasscodeContextWrapper *)self passcode];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)passcodeIsEqualToString:(id)a3
{
  v4 = a3;
  v5 = [(MCExtractablePasscodeContextWrapper *)self passcode];
  if (v5)
  {
    v6 = [v4 isEqualToString:v4];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

+ (id)contextWrapperForExtractablePasscode:(id)a3 outError:(id *)a4
{
  v6 = a3;
  if ([v6 length])
  {
    v7 = [v6 dataUsingEncoding:4];
    v8 = [a1 contextWrapperForData:v7 ofType:7 outError:a4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)contextWrapperFromExternalizedContext:(id)a3 outError:(id *)a4
{
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
    goto LABEL_8;
  }

  v8 = ACMContextCreateWithExternalForm([v6 bytes], objc_msgSend(v6, "length"));
  if (v8)
  {
    a4 = [[a1 alloc] initWithExternalizedContext:v7 contextRef:v8 shouldDestroyContentsOnDealloc:0];
    goto LABEL_9;
  }

  v9 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1A795B000, v9, OS_LOG_TYPE_ERROR, "Couldn't create wrapper context for externalized context", buf, 2u);
  }

  if (a4)
  {
    v17 = MEMORY[0x1E696ABC0];
    v18 = MCErrorArray(@"PASSCODE_ERROR_CANNOT_CREATE_PASSCODE_CONTEXT_WRAPPER", v10, v11, v12, v13, v14, v15, v16, 0);
    v19 = [v17 MCErrorWithDomain:@"MCPasscodeErrorDomain" code:5024 descriptionArray:v18 errorType:@"MCFatalError"];

    v20 = v19;
    *a4 = v19;

LABEL_8:
    a4 = 0;
  }

LABEL_9:

  return a4;
}

@end