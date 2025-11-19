@interface NSFileManager(SYExtendedAttributes)
- (BOOL)setExtendedAttributeData:()SYExtendedAttributes forKey:atURL:error:;
- (id)stringForExtendedAttribute:()SYExtendedAttributes atURL:error:;
- (uint64_t)setExtendedAttributeValue:()SYExtendedAttributes forKey:atURL:error:;
- (void)dataForExtendedAttribute:()SYExtendedAttributes atURL:error:;
@end

@implementation NSFileManager(SYExtendedAttributes)

- (uint64_t)setExtendedAttributeValue:()SYExtendedAttributes forKey:atURL:error:
{
  v10 = a5;
  v11 = a4;
  v12 = [a3 dataUsingEncoding:4];
  v13 = [a1 setExtendedAttributeData:v12 forKey:v11 atURL:v10 error:a6];

  return v13;
}

- (BOOL)setExtendedAttributeData:()SYExtendedAttributes forKey:atURL:error:
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v11 isFileURL];
  v13 = v12;
  if (a6 && v12)
  {
    v14 = objc_alloc(MEMORY[0x1E696ABC0]);
    v15 = *MEMORY[0x1E696A978];
    v16 = v11;
    v17 = objc_opt_new();
    v18 = [v16 absoluteURL];
    [v17 setObject:v18 forKeyedSubscript:*MEMORY[0x1E696A980]];

    v19 = [v16 absoluteString];

    [v17 setObject:v19 forKeyedSubscript:*MEMORY[0x1E696A990]];
    [v17 setObject:@"Unsupported URL" forKeyedSubscript:*MEMORY[0x1E696A578]];
    [v17 setObject:@"This API only works with file URLs." forKeyedSubscript:*MEMORY[0x1E696A588]];
    [v17 setObject:@"Ensure that you pass a valid file or file-reference URL into this API." forKeyedSubscript:*MEMORY[0x1E696A598]];
    *a6 = [v14 initWithDomain:v15 code:-1002 userInfo:v17];
  }

  if (v13)
  {
    goto LABEL_10;
  }

  if ([v11 isFileReferenceURL])
  {
    v20 = [v11 filePathURL];

    v11 = v20;
  }

  v21 = setxattr([v11 fileSystemRepresentation], objc_msgSend(v10, "UTF8String"), objc_msgSend(v9, "bytes"), objc_msgSend(v9, "length"), 0, 6);
  v22 = v21 == 0;
  if (a6 && v21)
  {
    v23 = *__error();
    v24 = objc_alloc(MEMORY[0x1E696ABC0]);
    v25 = *MEMORY[0x1E696A798];
    v11 = v11;
    v26 = objc_opt_new();
    v27 = [v11 absoluteURL];
    [v26 setObject:v27 forKeyedSubscript:*MEMORY[0x1E696A980]];

    v28 = [v11 absoluteString];

    [v26 setObject:v28 forKeyedSubscript:*MEMORY[0x1E696A990]];
    *a6 = [v24 initWithDomain:v25 code:v23 userInfo:v26];

LABEL_10:
    v22 = 0;
  }

  return v22;
}

- (id)stringForExtendedAttribute:()SYExtendedAttributes atURL:error:
{
  v6 = [a1 dataForExtendedAttribute:? atURL:? error:?];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v6 encoding:4];
    v8 = v7;
    if (a5 && !v7)
    {
      v9 = objc_alloc(MEMORY[0x1E696ABC0]);
      *a5 = [v9 initWithDomain:*MEMORY[0x1E696A250] code:2048 userInfo:0];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)dataForExtendedAttribute:()SYExtendedAttributes atURL:error:
{
  v7 = a3;
  v8 = a4;
  v9 = [v8 isFileURL];
  v10 = v9;
  if (a5 && v9)
  {
    v11 = objc_alloc(MEMORY[0x1E696ABC0]);
    v12 = *MEMORY[0x1E696A978];
    v13 = v8;
    v14 = objc_opt_new();
    v15 = [v13 absoluteURL];
    [v14 setObject:v15 forKeyedSubscript:*MEMORY[0x1E696A980]];

    v16 = [v13 absoluteString];

    [v14 setObject:v16 forKeyedSubscript:*MEMORY[0x1E696A990]];
    [v14 setObject:@"Unsupported URL" forKeyedSubscript:*MEMORY[0x1E696A578]];
    [v14 setObject:@"This API only works with file URLs." forKeyedSubscript:*MEMORY[0x1E696A588]];
    [v14 setObject:@"Ensure that you pass a valid file or file-reference URL into this API." forKeyedSubscript:*MEMORY[0x1E696A598]];
    *a5 = [v11 initWithDomain:v12 code:-1002 userInfo:v14];
  }

  if (v10)
  {
    goto LABEL_5;
  }

  v17 = getxattr([v8 fileSystemRepresentation], objc_msgSend(v7, "UTF8String"), 0, 0, 0, 0);
  if (v17 < 0)
  {
    if (a5)
    {
      v21 = *__error();
      v22 = objc_alloc(MEMORY[0x1E696ABC0]);
      v23 = *MEMORY[0x1E696A798];
      v24 = v8;
      v25 = objc_opt_new();
      v26 = [v24 absoluteURL];
      [v25 setObject:v26 forKeyedSubscript:*MEMORY[0x1E696A980]];

      v27 = [v24 absoluteString];

      [v25 setObject:v27 forKeyedSubscript:*MEMORY[0x1E696A990]];
      *a5 = [v22 initWithDomain:v23 code:v21 userInfo:v25];

LABEL_5:
      a5 = 0;
    }
  }

  else if (v17)
  {
    v18 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:v17];
    v19 = getxattr([v8 fileSystemRepresentation], objc_msgSend(v7, "UTF8String"), objc_msgSend(v18, "mutableBytes"), objc_msgSend(v18, "length"), 0, 0);
    if ((v19 & 0x8000000000000000) != 0)
    {
      if (a5)
      {
        v28 = *__error();
        v29 = objc_alloc(MEMORY[0x1E696ABC0]);
        v30 = *MEMORY[0x1E696A798];
        v31 = v8;
        v32 = objc_opt_new();
        v33 = [v31 absoluteURL];
        [v32 setObject:v33 forKeyedSubscript:*MEMORY[0x1E696A980]];

        v34 = [v31 absoluteString];

        [v32 setObject:v34 forKeyedSubscript:*MEMORY[0x1E696A990]];
        *a5 = [v29 initWithDomain:v30 code:v28 userInfo:v32];

        a5 = 0;
      }
    }

    else
    {
      v20 = v19;
      if (v19 < [v18 length])
      {
        [v18 setLength:v20];
      }

      a5 = v18;
    }
  }

  else
  {
    a5 = [MEMORY[0x1E695DEF0] data];
  }

  return a5;
}

@end