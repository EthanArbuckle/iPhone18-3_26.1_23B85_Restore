@interface NSNumber(XPCObject)
- (id)_cs_initWithXPCObject:()XPCObject;
- (id)_cs_xpcObject;
@end

@implementation NSNumber(XPCObject)

- (id)_cs_xpcObject
{
  v13 = *MEMORY[0x1E69E9840];
  objCType = [self objCType];
  if (!objCType)
  {
    v6 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315138;
      v12 = "[NSNumber(XPCObject) _cs_xpcObject]";
      v10 = "%s Cannot create xpcObject if objcType is NULL";
      goto LABEL_19;
    }

LABEL_7:
    v5 = 0;
    goto LABEL_13;
  }

  v3 = *objCType;
  v4 = v3 - 67;
  if ((v3 - 67) <= 0x30)
  {
    if (((1 << v4) & 0x14241) != 0)
    {
      v5 = xpc_uint64_create([self unsignedLongLongValue]);
      goto LABEL_13;
    }

    if (((1 << v4) & 0x1424100000000) != 0)
    {
      v5 = xpc_int64_create([self longLongValue]);
      goto LABEL_13;
    }

    if (((1 << v4) & 0xA00000000) != 0)
    {
      [self doubleValue];
      v5 = xpc_double_create(v7);
      goto LABEL_13;
    }
  }

  if (v3 != 66)
  {
    v6 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315138;
      v12 = "[NSNumber(XPCObject) _cs_xpcObject]";
      v10 = "%s Cannot create xpcObject since there is no matching type";
LABEL_19:
      _os_log_error_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_ERROR, v10, &v11, 0xCu);
      goto LABEL_7;
    }

    goto LABEL_7;
  }

  v5 = xpc_BOOL_create([self BOOLValue]);
LABEL_13:
  v8 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)_cs_initWithXPCObject:()XPCObject
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v7 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315138;
      v14 = "[NSNumber(XPCObject) _cs_initWithXPCObject:]";
      v8 = "%s Cannot create NSNumber if xpcObject is NULL";
      goto LABEL_19;
    }

LABEL_9:
    v9 = 0;
    goto LABEL_15;
  }

  v6 = MEMORY[0x1E12BAC70](v4);
  if (v6 == MEMORY[0x1E69E9E58])
  {
    v10 = [self initWithBool:xpc_BOOL_get_value(v5)];
  }

  else if (v6 == MEMORY[0x1E69E9E88])
  {
    v10 = [self initWithDouble:xpc_double_get_value(v5)];
  }

  else if (v6 == MEMORY[0x1E69E9EB0])
  {
    v10 = [self initWithLongLong:xpc_int64_get_value(v5)];
  }

  else
  {
    if (v6 != MEMORY[0x1E69E9F18])
    {
      v7 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        v13 = 136315138;
        v14 = "[NSNumber(XPCObject) _cs_initWithXPCObject:]";
        v8 = "%s XPC object type should be BOOL, DOUBLE, INT64, or UINT64";
LABEL_19:
        _os_log_error_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_ERROR, v8, &v13, 0xCu);
        goto LABEL_9;
      }

      goto LABEL_9;
    }

    v10 = [self initWithUnsignedLongLong:xpc_uint64_get_value(v5)];
  }

  v9 = v10;
LABEL_15:

  v11 = *MEMORY[0x1E69E9840];

  return v9;
}

@end