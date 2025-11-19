@interface _DKCompatibility
+ (id)compatibilityFromSerializedCompatibility:(id)a3;
+ (id)compatibilityWithMinVersion:(int64_t)a3 maxVersion:(int64_t)a4;
+ (id)currentCompatibility;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (id)eventPredicate;
- (id)filterIncompatibleEvents:(id)a3;
- (id)serialize;
@end

@implementation _DKCompatibility

+ (id)currentCompatibility
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40___DKCompatibility_currentCompatibility__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (currentCompatibility_onceToken != -1)
  {
    dispatch_once(&currentCompatibility_onceToken, block);
  }

  v2 = currentCompatibility_compatibility;

  return v2;
}

+ (id)compatibilityWithMinVersion:(int64_t)a3 maxVersion:(int64_t)a4
{
  v6 = objc_alloc_init(_DKCompatibility);
  [(_DKCompatibility *)v6 setMin:a3 & ~(a3 >> 63)];
  [(_DKCompatibility *)v6 setMax:a4];

  return v6;
}

- (id)serialize
{
  v9[2] = *MEMORY[0x1E69E9840];
  v8[0] = @"min";
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[_DKCompatibility min](self, "min")}];
  v8[1] = @"max";
  v9[0] = v3;
  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[_DKCompatibility max](self, "max")}];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)compatibilityFromSerializedCompatibility:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"min"];
  v6 = [v4 objectForKeyedSubscript:@"max"];

  v7 = [a1 compatibilityWithMinVersion:objc_msgSend(v5 maxVersion:{"unsignedLongLongValue"), objc_msgSend(v6, "unsignedLongLongValue")}];

  return v7;
}

- (id)eventPredicate
{
  v3 = MEMORY[0x1E696AE18];
  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[_DKCompatibility min](self, "min")}];
  v5 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[_DKCompatibility max](self, "max")}];
  v6 = [v3 predicateWithFormat:@"(compatibilityVersion >= %@ AND compatibilityVersion <= %@)", v4, v5];

  return v6;
}

- (id)filterIncompatibleEvents:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_DKCompatibility *)self eventPredicate];
  v6 = [v4 filteredArrayUsingPredicate:v5];

  if (os_variant_has_internal_diagnostics() && ([v6 isEqual:v4] & 1) == 0)
  {
    v7 = [MEMORY[0x1E695DFD8] setWithArray:v6];
    v8 = [MEMORY[0x1E695DFA8] setWithArray:v4];
    [v8 minusSet:v7];
    v9 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = 138412546;
      v13 = self;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&dword_191750000, v9, OS_LOG_TYPE_INFO, "%@ Filtered incompatible events: %@", &v12, 0x16u);
    }
  }

  v10 = *MEMORY[0x1E69E9840];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(_DKCompatibility *)self min];
      if (v6 == [(_DKCompatibility *)v5 min])
      {
        v7 = [(_DKCompatibility *)self max];
        v8 = v7 == [(_DKCompatibility *)v5 max];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[_DKCompatibility min](self, "min")}];
  v5 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[_DKCompatibility max](self, "max")}];
  v6 = [v3 stringWithFormat:@"CompatibilityVersion {min: %@, max: %@}", v4, v5];

  return v6;
}

@end