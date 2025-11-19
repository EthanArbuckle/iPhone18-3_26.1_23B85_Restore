@interface HTHangRequest
+ (id)sandboxExtensionForPath:(id)a3;
- (BOOL)_insertNSNumberInXPCDictionaryUsingKey:(const char *)a3 number:(id)a4 dict:(id)a5;
- (id)_checkDirectoryPathIsValid;
- (id)_createXPCDictionary:(id)a3;
- (id)initRequest:(id)a3 error:(id *)a4;
- (id)initRequestWithPath:(id)a3 dictionary:(id)a4 error:(id *)p_isa;
@end

@implementation HTHangRequest

- (id)_checkDirectoryPathIsValid
{
  v3 = [(HTHangRequest *)self sharedDirectoryPath];

  if (v3)
  {
    v18 = 0;
    v4 = +[NSFileManager defaultManager];
    v5 = [(HTHangRequest *)self sharedDirectoryPath];
    v6 = [v4 fileExistsAtPath:v5 isDirectory:&v18];

    if (v6)
    {
      if (v18)
      {
        v7 = 0;
        goto LABEL_9;
      }

      v14 = [NSString alloc];
      v15 = [(HTHangRequest *)self sharedDirectoryPath];
      v11 = [v14 initWithFormat:@"File '%@' is not a directory.", v15];

      v19 = NSLocalizedDescriptionKey;
      v20 = v11;
      v12 = &v20;
      v13 = &v19;
    }

    else
    {
      v9 = [NSString alloc];
      v10 = [(HTHangRequest *)self sharedDirectoryPath];
      v11 = [v9 initWithFormat:@"File '%@' does not exist", v10];

      v21 = NSLocalizedDescriptionKey;
      v22 = v11;
      v12 = &v22;
      v13 = &v21;
    }

    v16 = [NSDictionary dictionaryWithObjects:v12 forKeys:v13 count:1];
    v7 = [NSError errorWithDomain:@"kHTHangRequestError" code:0 userInfo:v16];
  }

  else
  {
    v23 = NSLocalizedDescriptionKey;
    v24 = @"Directory path not provided by client";
    v8 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v7 = [NSError errorWithDomain:@"kHTHangRequestError" code:0 userInfo:v8];
  }

LABEL_9:

  return v7;
}

- (BOOL)_insertNSNumberInXPCDictionaryUsingKey:(const char *)a3 number:(id)a4 dict:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [v7 objCType];
  if (*v9 == 66 && !v9[1])
  {
    xpc_dictionary_set_BOOL(v8, a3, [v7 BOOLValue]);
LABEL_35:
    v21 = 1;
    goto LABEL_36;
  }

  v10 = [v7 objCType];
  if (*v10 == 105 && !v10[1])
  {
    v23 = [v7 intValue];
LABEL_31:
    v24 = v23;
LABEL_34:
    xpc_dictionary_set_int64(v8, a3, v24);
    goto LABEL_35;
  }

  v11 = [v7 objCType];
  if (*v11 == 115 && !v11[1])
  {
    v23 = [v7 shortValue];
    goto LABEL_31;
  }

  v12 = [v7 objCType];
  if (*v12 == 113 && !v12[1])
  {
    goto LABEL_27;
  }

  v13 = [v7 objCType];
  if (*v13 == 99 && !v13[1])
  {
    v23 = [v7 charValue];
    goto LABEL_31;
  }

  v14 = [v7 objCType];
  if (*v14 == 113 && !v14[1])
  {
LABEL_27:
    v22 = [v7 longValue];
LABEL_33:
    v24 = v22;
    goto LABEL_34;
  }

  v15 = [v7 objCType];
  if (*v15 == 113 && !v15[1])
  {
    v22 = [v7 longLongValue];
    goto LABEL_33;
  }

  v16 = [v7 objCType];
  if (*v16 == 73 && !v16[1])
  {
    v26 = [v7 unsignedIntValue];
LABEL_41:
    xpc_dictionary_set_uint64(v8, a3, v26);
    goto LABEL_35;
  }

  v17 = [v7 objCType];
  if (*v17 == 81 && !v17[1])
  {
    v27 = [v7 unsignedLongValue];
LABEL_40:
    v26 = v27;
    goto LABEL_41;
  }

  v18 = [v7 objCType];
  if (*v18 == 81 && !v18[1])
  {
    v27 = [v7 unsignedLongLongValue];
    goto LABEL_40;
  }

  v19 = [v7 objCType];
  if (*v19 == 100 && !v19[1])
  {
    [v7 doubleValue];
    xpc_dictionary_set_double(v8, a3, v28);
    goto LABEL_35;
  }

  v20 = shared_ht_log_handle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    sub_10001480C(v7, v20);
  }

  v21 = 0;
LABEL_36:

  return v21;
}

- (id)_createXPCDictionary:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = xpc_dictionary_create(0, 0, 0);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v21;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v20 + 1) + 8 * v9);
        v11 = [v5 objectForKeyedSubscript:v10];
        v12 = v11;
        if (v10)
        {
          v13 = v11 == 0;
        }

        else
        {
          v13 = 1;
        }

        if (v13)
        {
          v17 = shared_ht_log_handle();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            sub_1000149A4();
          }

          goto LABEL_27;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          break;
        }

        v14 = [v10 UTF8String];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          xpc_dictionary_set_string(v4, v14, [v12 UTF8String]);
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if (![(HTHangRequest *)self _insertNSNumberInXPCDictionaryUsingKey:v14 number:v12 dict:v4])
            {
              goto LABEL_28;
            }
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v17 = shared_ht_log_handle();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                sub_100014938();
              }

LABEL_27:

LABEL_28:
              v16 = 0;
              goto LABEL_29;
            }

            [v12 timeIntervalSince1970];
            xpc_dictionary_set_date(v4, v14, (v15 * 1000000000.0));
          }
        }

        if (v7 == ++v9)
        {
          v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          goto LABEL_21;
        }
      }

      v17 = shared_ht_log_handle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10001489C(v10, v5, v17);
      }

      goto LABEL_27;
    }

LABEL_21:

    v16 = v4;
LABEL_29:
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)sandboxExtensionForPath:(id)a3
{
  [a3 UTF8String];
  v3 = sandbox_extension_issue_file();
  if (v3)
  {
    v4 = v3;
    v5 = [NSString stringWithUTF8String:v3];
    free(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)initRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(HTHangRequest *)self _createXPCDictionary:v6];
  requestXPCDictionary = self->_requestXPCDictionary;
  self->_requestXPCDictionary = v7;

  v9 = [(HTHangRequest *)self requestXPCDictionary];

  if (a4 && !v9)
  {
    v10 = [NSString stringWithFormat:@"Could not create xpc_object_t request dictionary from dictionary '%@'", v6];
    v15 = NSLocalizedDescriptionKey;
    v16 = v10;
    v11 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v12 = [NSError errorWithDomain:@"kHTHangRequestError" code:0 userInfo:v11];
    v13 = *a4;
    *a4 = v12;
  }

  return self;
}

- (id)initRequestWithPath:(id)a3 dictionary:(id)a4 error:(id *)p_isa
{
  v9 = a3;
  v10 = a4;
  objc_storeStrong(&self->_sharedDirectoryPath, a3);
  v11 = [(HTHangRequest *)self _checkDirectoryPathIsValid];
  if (!v11)
  {
    v12 = [objc_opt_class() sandboxExtensionForPath:self->_sharedDirectoryPath];
    sandboxExtension = self->_sandboxExtension;
    self->_sandboxExtension = v12;

    v14 = [(HTHangRequest *)self sandboxExtension];

    if (v14)
    {
      v15 = [v10 mutableCopy];
      v16 = [(HTHangRequest *)self sandboxExtension];
      v17 = [NSString stringWithCString:"sandboxExtension" encoding:4];
      [v15 setObject:v16 forKeyedSubscript:v17];

      self = [(HTHangRequest *)self initRequest:v15 error:p_isa];
      p_isa = &self->super.isa;
      goto LABEL_7;
    }

    if (!p_isa)
    {
      goto LABEL_7;
    }

    v19 = [(HTHangRequest *)self sharedDirectoryPath];
    v20 = [NSString stringWithFormat:@"Could not create sandbox extension for '%@'. This may be due to lack of sufficient permissions to access the directory.", v19];

    v24 = NSLocalizedDescriptionKey;
    v25 = v20;
    v21 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v22 = [NSError errorWithDomain:@"kHTHangRequestError" code:0 userInfo:v21];
    v23 = *p_isa;
    *p_isa = v22;

    goto LABEL_4;
  }

  if (p_isa)
  {
    objc_storeStrong(p_isa, v11);
LABEL_4:
    p_isa = 0;
  }

LABEL_7:

  return p_isa;
}

@end