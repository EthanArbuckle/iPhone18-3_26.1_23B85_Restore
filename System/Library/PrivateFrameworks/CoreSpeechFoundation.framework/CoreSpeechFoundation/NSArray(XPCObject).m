@interface NSArray(XPCObject)
- (id)_cs_initWithXPCObject:()XPCObject;
- (id)_cs_xpcObject;
@end

@implementation NSArray(XPCObject)

- (id)_cs_xpcObject
{
  v2 = xpc_array_create(0, 0);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__NSArray_XPCObject___cs_xpcObject__block_invoke;
  v5[3] = &unk_1E865B670;
  v3 = v2;
  v6 = v3;
  [a1 enumerateObjectsUsingBlock:v5];

  return v3;
}

- (id)_cs_initWithXPCObject:()XPCObject
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
LABEL_5:
    v7 = 0;
    goto LABEL_9;
  }

  if (MEMORY[0x1E12BAC70](v4) != MEMORY[0x1E69E9E50])
  {
    v6 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v15 = "[NSArray(XPCObject) _cs_initWithXPCObject:]";
      _os_log_error_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_ERROR, "%s xpc object should be XPC_TYPE_ARRAY", buf, 0xCu);
    }

    goto LABEL_5;
  }

  v8 = [MEMORY[0x1E695DF70] array];
  v9 = v8;
  if (v8)
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = __44__NSArray_XPCObject___cs_initWithXPCObject___block_invoke;
    applier[3] = &unk_1E865B648;
    v13 = v8;
    xpc_array_apply(v5, applier);
  }

  v7 = [a1 initWithArray:v9];

LABEL_9:
  v10 = *MEMORY[0x1E69E9840];

  return v7;
}

@end