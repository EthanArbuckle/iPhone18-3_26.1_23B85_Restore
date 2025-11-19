@interface _CDContextualKeyPathMO
+ (id)materializedContextValueFrom:(id)a3;
+ (id)materializedKeyPathFrom:(id)a3;
+ (void)hydrateMO:(id)a3 fromKeyPath:(id)a4 andValue:(id)a5;
@end

@implementation _CDContextualKeyPathMO

+ (void)hydrateMO:(id)a3 fromKeyPath:(id)a4 andValue:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [v10 key];
  [v8 setKey:v11];

  v12 = [v10 deviceID];
  [v8 setDeviceIDString:v12];

  [v8 setIsUserCentric:{objc_msgSend(v10, "isUserCentric")}];
  v13 = [v10 isEphemeral];

  [v8 setIsEphemeral:v13];
  v14 = [v9 lastModifiedDate];
  [v8 setLastModifiedDate:v14];

  v18 = 0;
  v15 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v9 requiringSecureCoding:1 error:&v18];

  v16 = v18;
  if (v15)
  {
    [v8 setValue:v15];
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [_CDContextualKeyPathMO hydrateMO:a1 fromKeyPath:v16 andValue:?];
  }

  v17 = [MEMORY[0x1E695DF00] date];
  [v8 setCreationDate:v17];
}

+ (id)materializedKeyPathFrom:(id)a3
{
  v3 = a3;
  v4 = [_CDContextualKeyPath alloc];
  v5 = [v3 key];
  v6 = [v3 deviceIDString];
  v7 = [v3 isUserCentric];
  v8 = [v3 isEphemeral];

  v9 = [(_CDContextualKeyPath *)v4 initWithKey:v5 forDeviceID:v6 isUserCentric:v7 isEphemeral:v8];

  return v9;
}

+ (id)materializedContextValueFrom:(id)a3
{
  v3 = MEMORY[0x1E696ACD0];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v4 value];

  v7 = [v3 unarchivedObjectOfClass:v5 fromData:v6 error:0];

  return v7;
}

+ (void)hydrateMO:(objc_class *)a1 fromKeyPath:(uint64_t)a2 andValue:.cold.1(objc_class *a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = NSStringFromClass(a1);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_1A9611000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@: Error setting mo.value: %@", &v5, 0x16u);

  v4 = *MEMORY[0x1E69E9840];
}

@end