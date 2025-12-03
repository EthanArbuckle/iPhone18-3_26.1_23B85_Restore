@interface HTHangRequest
+ (id)sandboxExtensionForPath:(id)path;
- (BOOL)_insertNSNumberInXPCDictionaryUsingKey:(const char *)key number:(id)number dict:(id)dict;
- (id)_checkDirectoryPathIsValid;
- (id)_createXPCDictionary:(id)dictionary;
- (id)initRequest:(id)request error:(id *)error;
- (id)initRequestWithPath:(id)path dictionary:(id)dictionary error:(id *)p_isa;
@end

@implementation HTHangRequest

- (id)_checkDirectoryPathIsValid
{
  sharedDirectoryPath = [(HTHangRequest *)self sharedDirectoryPath];

  if (sharedDirectoryPath)
  {
    v18 = 0;
    v4 = +[NSFileManager defaultManager];
    sharedDirectoryPath2 = [(HTHangRequest *)self sharedDirectoryPath];
    v6 = [v4 fileExistsAtPath:sharedDirectoryPath2 isDirectory:&v18];

    if (v6)
    {
      if (v18)
      {
        v7 = 0;
        goto LABEL_9;
      }

      v14 = [NSString alloc];
      sharedDirectoryPath3 = [(HTHangRequest *)self sharedDirectoryPath];
      v11 = [v14 initWithFormat:@"File '%@' is not a directory.", sharedDirectoryPath3];

      v19 = NSLocalizedDescriptionKey;
      v20 = v11;
      v12 = &v20;
      v13 = &v19;
    }

    else
    {
      v9 = [NSString alloc];
      sharedDirectoryPath4 = [(HTHangRequest *)self sharedDirectoryPath];
      v11 = [v9 initWithFormat:@"File '%@' does not exist", sharedDirectoryPath4];

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

- (BOOL)_insertNSNumberInXPCDictionaryUsingKey:(const char *)key number:(id)number dict:(id)dict
{
  numberCopy = number;
  dictCopy = dict;
  objCType = [numberCopy objCType];
  if (*objCType == 66 && !objCType[1])
  {
    xpc_dictionary_set_BOOL(dictCopy, key, [numberCopy BOOLValue]);
LABEL_35:
    v21 = 1;
    goto LABEL_36;
  }

  objCType2 = [numberCopy objCType];
  if (*objCType2 == 105 && !objCType2[1])
  {
    intValue = [numberCopy intValue];
LABEL_31:
    v24 = intValue;
LABEL_34:
    xpc_dictionary_set_int64(dictCopy, key, v24);
    goto LABEL_35;
  }

  objCType3 = [numberCopy objCType];
  if (*objCType3 == 115 && !objCType3[1])
  {
    intValue = [numberCopy shortValue];
    goto LABEL_31;
  }

  objCType4 = [numberCopy objCType];
  if (*objCType4 == 113 && !objCType4[1])
  {
    goto LABEL_27;
  }

  objCType5 = [numberCopy objCType];
  if (*objCType5 == 99 && !objCType5[1])
  {
    intValue = [numberCopy charValue];
    goto LABEL_31;
  }

  objCType6 = [numberCopy objCType];
  if (*objCType6 == 113 && !objCType6[1])
  {
LABEL_27:
    longValue = [numberCopy longValue];
LABEL_33:
    v24 = longValue;
    goto LABEL_34;
  }

  objCType7 = [numberCopy objCType];
  if (*objCType7 == 113 && !objCType7[1])
  {
    longValue = [numberCopy longLongValue];
    goto LABEL_33;
  }

  objCType8 = [numberCopy objCType];
  if (*objCType8 == 73 && !objCType8[1])
  {
    unsignedIntValue = [numberCopy unsignedIntValue];
LABEL_41:
    xpc_dictionary_set_uint64(dictCopy, key, unsignedIntValue);
    goto LABEL_35;
  }

  objCType9 = [numberCopy objCType];
  if (*objCType9 == 81 && !objCType9[1])
  {
    unsignedLongValue = [numberCopy unsignedLongValue];
LABEL_40:
    unsignedIntValue = unsignedLongValue;
    goto LABEL_41;
  }

  objCType10 = [numberCopy objCType];
  if (*objCType10 == 81 && !objCType10[1])
  {
    unsignedLongValue = [numberCopy unsignedLongLongValue];
    goto LABEL_40;
  }

  objCType11 = [numberCopy objCType];
  if (*objCType11 == 100 && !objCType11[1])
  {
    [numberCopy doubleValue];
    xpc_dictionary_set_double(dictCopy, key, v28);
    goto LABEL_35;
  }

  v20 = shared_ht_log_handle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    sub_10001480C(numberCopy, v20);
  }

  v21 = 0;
LABEL_36:

  return v21;
}

- (id)_createXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    v4 = xpc_dictionary_create(0, 0, 0);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v5 = dictionaryCopy;
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

        uTF8String = [v10 UTF8String];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          xpc_dictionary_set_string(v4, uTF8String, [v12 UTF8String]);
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if (![(HTHangRequest *)self _insertNSNumberInXPCDictionaryUsingKey:uTF8String number:v12 dict:v4])
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
            xpc_dictionary_set_date(v4, uTF8String, (v15 * 1000000000.0));
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

+ (id)sandboxExtensionForPath:(id)path
{
  [path UTF8String];
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

- (id)initRequest:(id)request error:(id *)error
{
  requestCopy = request;
  v7 = [(HTHangRequest *)self _createXPCDictionary:requestCopy];
  requestXPCDictionary = self->_requestXPCDictionary;
  self->_requestXPCDictionary = v7;

  requestXPCDictionary = [(HTHangRequest *)self requestXPCDictionary];

  if (error && !requestXPCDictionary)
  {
    requestCopy = [NSString stringWithFormat:@"Could not create xpc_object_t request dictionary from dictionary '%@'", requestCopy];
    v15 = NSLocalizedDescriptionKey;
    v16 = requestCopy;
    v11 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v12 = [NSError errorWithDomain:@"kHTHangRequestError" code:0 userInfo:v11];
    v13 = *error;
    *error = v12;
  }

  return self;
}

- (id)initRequestWithPath:(id)path dictionary:(id)dictionary error:(id *)p_isa
{
  pathCopy = path;
  dictionaryCopy = dictionary;
  objc_storeStrong(&self->_sharedDirectoryPath, path);
  _checkDirectoryPathIsValid = [(HTHangRequest *)self _checkDirectoryPathIsValid];
  if (!_checkDirectoryPathIsValid)
  {
    v12 = [objc_opt_class() sandboxExtensionForPath:self->_sharedDirectoryPath];
    sandboxExtension = self->_sandboxExtension;
    self->_sandboxExtension = v12;

    sandboxExtension = [(HTHangRequest *)self sandboxExtension];

    if (sandboxExtension)
    {
      v15 = [dictionaryCopy mutableCopy];
      sandboxExtension2 = [(HTHangRequest *)self sandboxExtension];
      v17 = [NSString stringWithCString:"sandboxExtension" encoding:4];
      [v15 setObject:sandboxExtension2 forKeyedSubscript:v17];

      self = [(HTHangRequest *)self initRequest:v15 error:p_isa];
      p_isa = &self->super.isa;
      goto LABEL_7;
    }

    if (!p_isa)
    {
      goto LABEL_7;
    }

    sharedDirectoryPath = [(HTHangRequest *)self sharedDirectoryPath];
    v20 = [NSString stringWithFormat:@"Could not create sandbox extension for '%@'. This may be due to lack of sufficient permissions to access the directory.", sharedDirectoryPath];

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
    objc_storeStrong(p_isa, _checkDirectoryPathIsValid);
LABEL_4:
    p_isa = 0;
  }

LABEL_7:

  return p_isa;
}

@end