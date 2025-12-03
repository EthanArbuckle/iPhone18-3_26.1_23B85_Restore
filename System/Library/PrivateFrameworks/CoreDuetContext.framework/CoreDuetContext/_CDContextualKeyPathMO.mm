@interface _CDContextualKeyPathMO
+ (id)materializedContextValueFrom:(id)from;
+ (id)materializedKeyPathFrom:(id)from;
+ (void)hydrateMO:(id)o fromKeyPath:(id)path andValue:(id)value;
@end

@implementation _CDContextualKeyPathMO

+ (void)hydrateMO:(id)o fromKeyPath:(id)path andValue:(id)value
{
  oCopy = o;
  valueCopy = value;
  pathCopy = path;
  v11 = [pathCopy key];
  [oCopy setKey:v11];

  deviceID = [pathCopy deviceID];
  [oCopy setDeviceIDString:deviceID];

  [oCopy setIsUserCentric:{objc_msgSend(pathCopy, "isUserCentric")}];
  isEphemeral = [pathCopy isEphemeral];

  [oCopy setIsEphemeral:isEphemeral];
  lastModifiedDate = [valueCopy lastModifiedDate];
  [oCopy setLastModifiedDate:lastModifiedDate];

  v18 = 0;
  v15 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:valueCopy requiringSecureCoding:1 error:&v18];

  v16 = v18;
  if (v15)
  {
    [oCopy setValue:v15];
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [_CDContextualKeyPathMO hydrateMO:self fromKeyPath:v16 andValue:?];
  }

  date = [MEMORY[0x1E695DF00] date];
  [oCopy setCreationDate:date];
}

+ (id)materializedKeyPathFrom:(id)from
{
  fromCopy = from;
  v4 = [_CDContextualKeyPath alloc];
  v5 = [fromCopy key];
  deviceIDString = [fromCopy deviceIDString];
  isUserCentric = [fromCopy isUserCentric];
  isEphemeral = [fromCopy isEphemeral];

  v9 = [(_CDContextualKeyPath *)v4 initWithKey:v5 forDeviceID:deviceIDString isUserCentric:isUserCentric isEphemeral:isEphemeral];

  return v9;
}

+ (id)materializedContextValueFrom:(id)from
{
  v3 = MEMORY[0x1E696ACD0];
  fromCopy = from;
  v5 = objc_opt_class();
  value = [fromCopy value];

  v7 = [v3 unarchivedObjectOfClass:v5 fromData:value error:0];

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