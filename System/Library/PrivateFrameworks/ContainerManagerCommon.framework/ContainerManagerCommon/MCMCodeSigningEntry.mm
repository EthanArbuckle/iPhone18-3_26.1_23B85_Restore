@interface MCMCodeSigningEntry
- (BOOL)isAdvanceCopy;
- (BOOL)isEqual:(id)a3;
- (BOOL)isInvalid;
- (BOOL)isPlaceholder;
- (BOOL)isRegisteredByCaller;
- (BOOL)isRegisteredByKernel;
- (MCMCodeSigningEntry)initWithCodeSigningInfo:(id)a3;
- (MCMCodeSigningEntry)initWithCodeSigningInfo:(id)a3 andDataContainerClass:(unint64_t)a4;
- (MCMCodeSigningEntry)initWithSerializedDictionary:(id)a3;
- (NSArray)childBundleIdentifiers;
- (NSDictionary)codeSigningInfo;
- (id)description;
- (id)serialize;
- (unint64_t)dataContainerClass;
- (unint64_t)hash;
- (void)setAdvanceCopy:(BOOL)a3;
- (void)setChildBundleIdentifiers:(id)a3;
- (void)setCodeSigningInfo:(id)a3;
- (void)setDataContainerClass:(unint64_t)a3;
- (void)setInvalid:(BOOL)a3;
- (void)setPlaceholder:(BOOL)a3;
- (void)setRegisteredByCaller:(BOOL)a3;
- (void)setRegisteredByKernel:(BOOL)a3;
@end

@implementation MCMCodeSigningEntry

- (unint64_t)dataContainerClass
{
  result = self->_dataContainerClass;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSDictionary)codeSigningInfo
{
  result = self->_codeSigningInfo;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isRegisteredByCaller
{
  result = self->_registeredByCaller;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)setDataContainerClass:(unint64_t)a3
{
  v4 = *MEMORY[0x1E69E9840];
  self->_dataContainerClass = a3;
  v3 = *MEMORY[0x1E69E9840];
}

- (void)setRegisteredByKernel:(BOOL)a3
{
  v4 = *MEMORY[0x1E69E9840];
  self->_registeredByKernel = a3;
  v3 = *MEMORY[0x1E69E9840];
}

- (BOOL)isRegisteredByKernel
{
  result = self->_registeredByKernel;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)setRegisteredByCaller:(BOOL)a3
{
  v4 = *MEMORY[0x1E69E9840];
  self->_registeredByCaller = a3;
  v3 = *MEMORY[0x1E69E9840];
}

- (void)setAdvanceCopy:(BOOL)a3
{
  v4 = *MEMORY[0x1E69E9840];
  self->_advanceCopy = a3;
  v3 = *MEMORY[0x1E69E9840];
}

- (BOOL)isAdvanceCopy
{
  result = self->_advanceCopy;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)setPlaceholder:(BOOL)a3
{
  v4 = *MEMORY[0x1E69E9840];
  self->_placeholder = a3;
  v3 = *MEMORY[0x1E69E9840];
}

- (BOOL)isPlaceholder
{
  result = self->_placeholder;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)setInvalid:(BOOL)a3
{
  v4 = *MEMORY[0x1E69E9840];
  self->_invalid = a3;
  v3 = *MEMORY[0x1E69E9840];
}

- (BOOL)isInvalid
{
  result = self->_invalid;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)setChildBundleIdentifiers:(id)a3
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];
  p_childBundleIdentifiers = &self->_childBundleIdentifiers;

  objc_storeStrong(p_childBundleIdentifiers, a3);
}

- (NSArray)childBundleIdentifiers
{
  result = self->_childBundleIdentifiers;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)setCodeSigningInfo:(id)a3
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];
  p_codeSigningInfo = &self->_codeSigningInfo;

  objc_storeStrong(p_codeSigningInfo, a3);
}

- (id)description
{
  v7[5] = *MEMORY[0x1E69E9840];
  v3 = [MCMLazyDescription alloc];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__MCMCodeSigningEntry_description__block_invoke;
  v7[3] = &unk_1E86B1128;
  v7[4] = self;
  v4 = [(MCMLazyDescription *)v3 initWithDescriber:v7];
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

id __34__MCMCodeSigningEntry_description__block_invoke(uint64_t a1, char a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AEC0];
  v5 = *(a1 + 32);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  if ([*(a1 + 32) isInvalid])
  {
    v8 = 89;
  }

  else
  {
    v8 = 78;
  }

  v24 = v8;
  if ([*(a1 + 32) isPlaceholder])
  {
    v9 = 89;
  }

  else
  {
    v9 = 78;
  }

  if ([*(a1 + 32) isAdvanceCopy])
  {
    v10 = 89;
  }

  else
  {
    v10 = 78;
  }

  if ([*(a1 + 32) isRegisteredByCaller])
  {
    v11 = 89;
  }

  else
  {
    v11 = 78;
  }

  if ([*(a1 + 32) isRegisteredByKernel])
  {
    v12 = 89;
  }

  else
  {
    v12 = 78;
  }

  v13 = [*(a1 + 32) dataContainerClass];
  v14 = [*(a1 + 32) childBundleIdentifiers];
  v15 = v14;
  if (a2)
  {
    v16 = [v14 redactedDescription];
    v17 = [*(a1 + 32) codeSigningInfo];
    v18 = [v17 redactedDescription];
    v19 = v4;
    v20 = v18;
    v21 = [v19 stringWithFormat:@"<%@ invalid: %c, placeholder: %c, advanceCopy: %c, regByCaller: %c, regByKernel: %c, dataClass: %llu, childBundles: %@, CSinfo: %@>", v7, v24, v9, v10, v11, v12, v13, v16, v18];
  }

  else
  {
    v16 = [*(a1 + 32) codeSigningInfo];
    v21 = [v4 stringWithFormat:@"<%@ invalid: %c, placeholder: %c, advanceCopy: %c, regByCaller: %c, regByKernel: %c, dataClass: %llu, childBundles: %@, CSinfo: %@>", v7, v24, v9, v10, v11, v12, v13, v15, v16];
  }

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

- (unint64_t)hash
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(MCMCodeSigningEntry *)self codeSigningInfo];
  v4 = [v3 hash];
  v5 = [(MCMCodeSigningEntry *)self childBundleIdentifiers];
  v6 = [v5 hash];
  if ([(MCMCodeSigningEntry *)self isInvalid])
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  if ([(MCMCodeSigningEntry *)self isPlaceholder])
  {
    v8 = 4;
  }

  else
  {
    v8 = 0;
  }

  if ([(MCMCodeSigningEntry *)self isRegisteredByCaller])
  {
    v9 = 8;
  }

  else
  {
    v9 = 0;
  }

  v10 = [(MCMCodeSigningEntry *)self dataContainerClass]!= 0;
  if ([(MCMCodeSigningEntry *)self isAdvanceCopy])
  {
    v11 = 32;
  }

  else
  {
    v11 = 0;
  }

  if ([(MCMCodeSigningEntry *)self isRegisteredByKernel])
  {
    v12 = 64;
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v7 + (v6 ^ v4) + v8 + v9 + 16 * v10 + v11 + v12;
}

- (BOOL)isEqual:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self == v5)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [(MCMCodeSigningEntry *)self codeSigningInfo];
      if (v7 || ([(MCMCodeSigningEntry *)v6 codeSigningInfo], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v8 = [(MCMCodeSigningEntry *)self codeSigningInfo];
        v9 = [(MCMCodeSigningEntry *)v6 codeSigningInfo];
        v10 = [v8 isEqualToDictionary:v9];

        if (v7)
        {

          if (!v10)
          {
            goto LABEL_22;
          }
        }

        else
        {

          if ((v10 & 1) == 0)
          {
            goto LABEL_22;
          }
        }
      }

      v12 = [(MCMCodeSigningEntry *)self childBundleIdentifiers];
      if (v12 || ([(MCMCodeSigningEntry *)v6 childBundleIdentifiers], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v13 = [(MCMCodeSigningEntry *)self childBundleIdentifiers];
        v14 = [(MCMCodeSigningEntry *)v6 childBundleIdentifiers];
        v15 = [v13 isEqualToArray:v14];

        if (v12)
        {

          if (!v15)
          {
            goto LABEL_22;
          }
        }

        else
        {

          if ((v15 & 1) == 0)
          {
            goto LABEL_22;
          }
        }
      }

      v16 = [(MCMCodeSigningEntry *)self isInvalid];
      if (v16 == [(MCMCodeSigningEntry *)v6 isInvalid])
      {
        v17 = [(MCMCodeSigningEntry *)self isPlaceholder];
        if (v17 == [(MCMCodeSigningEntry *)v6 isPlaceholder])
        {
          v18 = [(MCMCodeSigningEntry *)self isAdvanceCopy];
          if (v18 == [(MCMCodeSigningEntry *)v6 isAdvanceCopy])
          {
            v19 = [(MCMCodeSigningEntry *)self isRegisteredByCaller];
            if (v19 == [(MCMCodeSigningEntry *)v6 isRegisteredByCaller])
            {
              v20 = [(MCMCodeSigningEntry *)self isRegisteredByKernel];
              if (v20 == [(MCMCodeSigningEntry *)v6 isRegisteredByKernel])
              {
                v23 = [(MCMCodeSigningEntry *)self dataContainerClass];
                v11 = v23 == [(MCMCodeSigningEntry *)v6 dataContainerClass];
                goto LABEL_23;
              }
            }
          }
        }
      }

LABEL_22:
      v11 = 0;
LABEL_23:

      goto LABEL_24;
    }

    v11 = 0;
  }

LABEL_24:

  v21 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)serialize
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = [(MCMCodeSigningEntry *)self codeSigningInfo];
  [v3 setObject:v4 forKeyedSubscript:@"CodeSigningInfo"];

  v5 = [(MCMCodeSigningEntry *)self childBundleIdentifiers];
  [v3 setObject:v5 forKeyedSubscript:@"ChildBundleIds"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[MCMCodeSigningEntry isInvalid](self, "isInvalid")}];
  [v3 setObject:v6 forKeyedSubscript:@"Invalid"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[MCMCodeSigningEntry isPlaceholder](self, "isPlaceholder")}];
  [v3 setObject:v7 forKeyedSubscript:@"Placeholder"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[MCMCodeSigningEntry isAdvanceCopy](self, "isAdvanceCopy")}];
  [v3 setObject:v8 forKeyedSubscript:@"AdvanceCopy"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[MCMCodeSigningEntry isRegisteredByCaller](self, "isRegisteredByCaller")}];
  [v3 setObject:v9 forKeyedSubscript:@"RegisteredByCaller"];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[MCMCodeSigningEntry isRegisteredByKernel](self, "isRegisteredByKernel")}];
  [v3 setObject:v10 forKeyedSubscript:@"RegisteredByKernel"];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MCMCodeSigningEntry dataContainerClass](self, "dataContainerClass")}];
  [v3 setObject:v11 forKeyedSubscript:@"DataContainerClass"];

  v12 = [v3 copy];
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (MCMCodeSigningEntry)initWithSerializedDictionary:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v18.receiver = self;
  v18.super_class = MCMCodeSigningEntry;
  v5 = [(MCMCodeSigningEntry *)&v18 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"CodeSigningInfo"];
    codeSigningInfo = v5->_codeSigningInfo;
    v5->_codeSigningInfo = v6;

    v8 = [v4 objectForKeyedSubscript:@"ChildBundleIds"];
    childBundleIdentifiers = v5->_childBundleIdentifiers;
    v5->_childBundleIdentifiers = v8;

    v10 = [v4 objectForKeyedSubscript:@"Invalid"];
    v5->_invalid = [v10 BOOLValue];

    v11 = [v4 objectForKeyedSubscript:@"Placeholder"];
    v5->_placeholder = [v11 BOOLValue];

    v12 = [v4 objectForKeyedSubscript:@"AdvanceCopy"];
    v5->_advanceCopy = [v12 BOOLValue];

    v13 = [v4 objectForKeyedSubscript:@"RegisteredByCaller"];
    v5->_registeredByCaller = [v13 BOOLValue];

    v14 = [v4 objectForKeyedSubscript:@"RegisteredByKernel"];
    v5->_registeredByKernel = [v14 BOOLValue];

    v15 = [v4 objectForKeyedSubscript:@"DataContainerClass"];
    v5->_dataContainerClass = [v15 unsignedLongLongValue];
  }

  v16 = *MEMORY[0x1E69E9840];
  return v5;
}

- (MCMCodeSigningEntry)initWithCodeSigningInfo:(id)a3
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];

  return [(MCMCodeSigningEntry *)self initWithCodeSigningInfo:a3 andDataContainerClass:0];
}

- (MCMCodeSigningEntry)initWithCodeSigningInfo:(id)a3 andDataContainerClass:(unint64_t)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v13.receiver = self;
  v13.super_class = MCMCodeSigningEntry;
  v8 = [(MCMCodeSigningEntry *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_codeSigningInfo, a3);
    childBundleIdentifiers = v9->_childBundleIdentifiers;
    v9->_childBundleIdentifiers = 0;

    v9->_registeredByKernel = 0;
    *&v9->_invalid = 0;
    v9->_dataContainerClass = a4;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

@end