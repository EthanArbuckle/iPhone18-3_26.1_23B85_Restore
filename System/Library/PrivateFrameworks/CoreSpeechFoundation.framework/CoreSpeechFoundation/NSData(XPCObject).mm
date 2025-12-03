@interface NSData(XPCObject)
- (id)_cs_initWithXPCObject:()XPCObject;
- (id)_cs_xpcObject;
@end

@implementation NSData(XPCObject)

- (id)_cs_xpcObject
{
  v1 = xpc_data_create([self bytes], objc_msgSend(self, "length"));

  return v1;
}

- (id)_cs_initWithXPCObject:()XPCObject
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_4;
  }

  if (MEMORY[0x1E12BAC70](v4) != MEMORY[0x1E69E9E70])
  {
    v6 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
LABEL_4:
      v7 = 0;
      goto LABEL_5;
    }

    v12 = 136315138;
    v13 = "[NSData(XPCObject) _cs_initWithXPCObject:]";
    v11 = "%s xpc object should be XPC_TYPE_DATA";
LABEL_13:
    _os_log_error_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_ERROR, v11, &v12, 0xCu);
    goto LABEL_4;
  }

  length = xpc_data_get_length(v5);
  if (!length)
  {
    v6 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    v12 = 136315138;
    v13 = "[NSData(XPCObject) _cs_initWithXPCObject:]";
    v11 = "%s Cannot create NSData with size 0";
    goto LABEL_13;
  }

  v7 = [self initWithBytes:xpc_data_get_bytes_ptr(v5) length:length];
LABEL_5:

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

@end