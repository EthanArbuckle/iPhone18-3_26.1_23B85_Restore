@interface NSDictionary
@end

@implementation NSDictionary

void __40__NSDictionary_XPCObject___cs_xpcObject__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [v6 _cs_xpcObject];
      if (v7)
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v9 = *(a1 + 32);
        if (isKindOfClass)
        {
          v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v5];
          xpc_dictionary_set_value(v9, [v10 UTF8String], v7);
        }

        else
        {
          xpc_dictionary_set_value(v9, [v5 UTF8String], v7);
        }
      }
    }

    else
    {
      v11 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        v12 = v11;
        v13 = [v6 description];
        *buf = 136315394;
        v17 = "[NSDictionary(XPCObject) _cs_xpcObject]_block_invoke";
        v18 = 2114;
        v19 = v13;
        _os_log_error_impl(&dword_1DDA4B000, v12, OS_LOG_TYPE_ERROR, "%s Cannot encode non-plist types into XPC object : %{public}@", buf, 0x16u);
      }
    }
  }

  else
  {
    v14 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v17 = "[NSDictionary(XPCObject) _cs_xpcObject]_block_invoke";
      _os_log_error_impl(&dword_1DDA4B000, v14, OS_LOG_TYPE_ERROR, "%s Cannot encode key into xpcobject since the key is not NSString class type", buf, 0xCu);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

uint64_t __49__NSDictionary_XPCObject___cs_initWithXPCObject___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (a2 && v5)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
    v8 = MEMORY[0x1E12BAC70](v6);
    if (v8 == MEMORY[0x1E69E9F18] || v8 == MEMORY[0x1E69E9EB0] || v8 == MEMORY[0x1E69E9E58] || v8 == MEMORY[0x1E69E9E88])
    {
      v14 = 0x1E696AD98;
    }

    else if (v8 == MEMORY[0x1E69E9E80])
    {
      v14 = 0x1E695DF20;
    }

    else if (v8 == MEMORY[0x1E69E9F10])
    {
      v14 = 0x1E696AEC0;
    }

    else if (v8 == MEMORY[0x1E69E9E70])
    {
      v14 = 0x1E695DEF0;
    }

    else
    {
      if (v8 != MEMORY[0x1E69E9E50])
      {
        v12 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
        {
          v19 = 136315138;
          v20 = "[NSDictionary(XPCObject) _cs_initWithXPCObject:]_block_invoke";
          _os_log_error_impl(&dword_1DDA4B000, v12, OS_LOG_TYPE_ERROR, "%s Cannot decode non-plist types of XPC object", &v19, 0xCu);
        }

LABEL_28:

        goto LABEL_29;
      }

      v14 = 0x1E695DEC8;
    }

    v15 = objc_alloc(*v14);
    v16 = [v15 _cs_initWithXPCObject:v6];

    if (v16)
    {
      [*(a1 + 32) setObject:v16 forKey:v7];
    }

    goto LABEL_28;
  }

  v13 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v19 = 136315138;
    v20 = "[NSDictionary(XPCObject) _cs_initWithXPCObject:]_block_invoke";
    _os_log_error_impl(&dword_1DDA4B000, v13, OS_LOG_TYPE_ERROR, "%s xpcObject key or value is NULL", &v19, 0xCu);
  }

LABEL_29:

  v17 = *MEMORY[0x1E69E9840];
  return 1;
}

@end