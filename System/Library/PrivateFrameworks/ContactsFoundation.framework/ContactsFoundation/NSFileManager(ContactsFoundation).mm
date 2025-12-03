@interface NSFileManager(ContactsFoundation)
- (id)_cn_valueForExtendedAttribute:()ContactsFoundation path:error:;
- (uint64_t)_cn_getValue:()ContactsFoundation forExtendendAttribute:path:error:;
- (uint64_t)_cn_getValue:()ContactsFoundation forExtendendAttribute:url:error:;
- (uint64_t)_cn_removeExtendedAttributeForKey:()ContactsFoundation path:error:;
- (uint64_t)_cn_setValue:()ContactsFoundation forExtendedAttribute:path:error:;
- (uint64_t)_cn_setValue:()ContactsFoundation forExtendedAttribute:url:error:;
@end

@implementation NSFileManager(ContactsFoundation)

- (uint64_t)_cn_setValue:()ContactsFoundation forExtendedAttribute:url:error:
{
  v10 = a4;
  v11 = a3;
  path = [a5 path];
  v13 = [self _cn_setValue:v11 forExtendedAttribute:v10 path:path error:a6];

  return v13;
}

- (uint64_t)_cn_getValue:()ContactsFoundation forExtendendAttribute:url:error:
{
  v10 = a4;
  path = [a5 path];
  v12 = [self _cn_getValue:a3 forExtendendAttribute:v10 path:path error:a6];

  return v12;
}

- (uint64_t)_cn_setValue:()ContactsFoundation forExtendedAttribute:path:error:
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (off_1EF440708(&__block_literal_global_120, v10))
  {
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CNContactsFoundationErrorDomain" code:1300 userInfo:0];
    if (a6)
    {
LABEL_3:
      v12 = v12;
      *a6 = v12;
    }
  }

  else
  {
    if (!setxattr([v11 UTF8String], objc_msgSend(v10, "UTF8String"), objc_msgSend(v9, "UTF8String"), objc_msgSend(v9, "lengthOfBytesUsingEncoding:", 4), 0, 0))
    {
      v13 = 1;
      goto LABEL_5;
    }

    v12 = +[CNFoundationError errorWithErrno];
    if (a6)
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
LABEL_5:

  return v13;
}

- (id)_cn_valueForExtendedAttribute:()ContactsFoundation path:error:
{
  v17[1] = *MEMORY[0x1E69E9840];
  v15 = 0;
  v6 = [self _cn_getValue:&v15 forExtendendAttribute:a3 path:a4 error:a5];
  v7 = v15;
  v8 = v7;
  if (v6)
  {
    if (!v7)
    {
      v9 = [CNFoundationError errorWithErrno:93];
      v16 = *MEMORY[0x1E696AA08];
      v17[0] = v9;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CNContactsFoundationErrorDomain" code:1302 userInfo:v10];
      if (a5)
      {
        v11 = v11;
        *a5 = v11;
      }
    }

    v12 = 0;
  }

  else
  {
    v12 = v7;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (uint64_t)_cn_getValue:()ContactsFoundation forExtendendAttribute:path:error:
{
  v27 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  if (off_1EF440708(&__block_literal_global_120, v10))
  {
    v12 = MEMORY[0x1E696ABC0];
    v13 = @"CNContactsFoundationErrorDomain";
    v14 = 1300;
LABEL_11:
    v18 = [v12 errorWithDomain:v13 code:v14 userInfo:0];
    if (a6)
    {
      v18 = v18;
      *a6 = v18;
    }

LABEL_14:
    v17 = 0;
    goto LABEL_15;
  }

  if (([self fileExistsAtPath:v11] & 1) == 0)
  {
    v12 = MEMORY[0x1E696ABC0];
    v13 = *MEMORY[0x1E696A250];
    v14 = 4;
    goto LABEL_11;
  }

  memset(value, 0, sizeof(value));
  v15 = getxattr([v11 UTF8String], objc_msgSend(v10, "UTF8String"), value, 0xFFuLL, 0, 0);
  if (v15 < 0)
  {
    if (v15 != -1 || *__error() != 93)
    {
      v21 = +[CNFoundationError errorWithErrno];
      v24 = *MEMORY[0x1E696AA08];
      v25 = v21;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      v23 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CNContactsFoundationErrorDomain" code:1302 userInfo:v22];
      if (a6)
      {
        v23 = v23;
        *a6 = v23;
      }

      goto LABEL_14;
    }

    if (a3)
    {
      *a3 = 0;
    }
  }

  else
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:value];
    if (!v16)
    {
      v12 = MEMORY[0x1E696ABC0];
      v13 = @"CNContactsFoundationErrorDomain";
      v14 = 1301;
      goto LABEL_11;
    }

    if (a3)
    {
      v16 = v16;
      *a3 = v16;
    }
  }

  v17 = 1;
LABEL_15:

  v19 = *MEMORY[0x1E69E9840];
  return v17;
}

- (uint64_t)_cn_removeExtendedAttributeForKey:()ContactsFoundation path:error:
{
  v8 = a3;
  v9 = a4;
  if (off_1EF440708(&__block_literal_global_120, v8))
  {
    v10 = MEMORY[0x1E696ABC0];
    v11 = @"CNContactsFoundationErrorDomain";
    v12 = 1300;
    goto LABEL_8;
  }

  if (([self fileExistsAtPath:v9] & 1) == 0)
  {
    v10 = MEMORY[0x1E696ABC0];
    v11 = *MEMORY[0x1E696A250];
    v12 = 4;
LABEL_8:
    v14 = [v10 errorWithDomain:v11 code:v12 userInfo:0];
    if (!a5)
    {
LABEL_10:

      v13 = 0;
      goto LABEL_11;
    }

LABEL_9:
    v14 = v14;
    *a5 = v14;
    goto LABEL_10;
  }

  if (removexattr([v9 UTF8String], objc_msgSend(v8, "UTF8String"), 0) && *__error() != 93)
  {
    v14 = +[CNFoundationError errorWithErrno];
    if (!a5)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v13 = 1;
LABEL_11:

  return v13;
}

@end