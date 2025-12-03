@interface MCMCodeSigningEntry
- (BOOL)isAdvanceCopy;
- (BOOL)isEqual:(id)equal;
- (BOOL)isInvalid;
- (BOOL)isPlaceholder;
- (BOOL)isRegisteredByCaller;
- (BOOL)isRegisteredByKernel;
- (MCMCodeSigningEntry)initWithCodeSigningInfo:(id)info;
- (MCMCodeSigningEntry)initWithCodeSigningInfo:(id)info andDataContainerClass:(unint64_t)class;
- (MCMCodeSigningEntry)initWithSerializedDictionary:(id)dictionary;
- (NSArray)childBundleIdentifiers;
- (NSDictionary)codeSigningInfo;
- (id)description;
- (id)serialize;
- (unint64_t)dataContainerClass;
- (unint64_t)hash;
- (void)setAdvanceCopy:(BOOL)copy;
- (void)setChildBundleIdentifiers:(id)identifiers;
- (void)setCodeSigningInfo:(id)info;
- (void)setDataContainerClass:(unint64_t)class;
- (void)setInvalid:(BOOL)invalid;
- (void)setPlaceholder:(BOOL)placeholder;
- (void)setRegisteredByCaller:(BOOL)caller;
- (void)setRegisteredByKernel:(BOOL)kernel;
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

- (void)setDataContainerClass:(unint64_t)class
{
  v4 = *MEMORY[0x1E69E9840];
  self->_dataContainerClass = class;
  v3 = *MEMORY[0x1E69E9840];
}

- (void)setRegisteredByKernel:(BOOL)kernel
{
  v4 = *MEMORY[0x1E69E9840];
  self->_registeredByKernel = kernel;
  v3 = *MEMORY[0x1E69E9840];
}

- (BOOL)isRegisteredByKernel
{
  result = self->_registeredByKernel;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)setRegisteredByCaller:(BOOL)caller
{
  v4 = *MEMORY[0x1E69E9840];
  self->_registeredByCaller = caller;
  v3 = *MEMORY[0x1E69E9840];
}

- (void)setAdvanceCopy:(BOOL)copy
{
  v4 = *MEMORY[0x1E69E9840];
  self->_advanceCopy = copy;
  v3 = *MEMORY[0x1E69E9840];
}

- (BOOL)isAdvanceCopy
{
  result = self->_advanceCopy;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)setPlaceholder:(BOOL)placeholder
{
  v4 = *MEMORY[0x1E69E9840];
  self->_placeholder = placeholder;
  v3 = *MEMORY[0x1E69E9840];
}

- (BOOL)isPlaceholder
{
  result = self->_placeholder;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)setInvalid:(BOOL)invalid
{
  v4 = *MEMORY[0x1E69E9840];
  self->_invalid = invalid;
  v3 = *MEMORY[0x1E69E9840];
}

- (BOOL)isInvalid
{
  result = self->_invalid;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)setChildBundleIdentifiers:(id)identifiers
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];
  p_childBundleIdentifiers = &self->_childBundleIdentifiers;

  objc_storeStrong(p_childBundleIdentifiers, identifiers);
}

- (NSArray)childBundleIdentifiers
{
  result = self->_childBundleIdentifiers;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)setCodeSigningInfo:(id)info
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];
  p_codeSigningInfo = &self->_codeSigningInfo;

  objc_storeStrong(p_codeSigningInfo, info);
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
  codeSigningInfo = [(MCMCodeSigningEntry *)self codeSigningInfo];
  v4 = [codeSigningInfo hash];
  childBundleIdentifiers = [(MCMCodeSigningEntry *)self childBundleIdentifiers];
  v6 = [childBundleIdentifiers hash];
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

- (BOOL)isEqual:(id)equal
{
  v24 = *MEMORY[0x1E69E9840];
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      codeSigningInfo = [(MCMCodeSigningEntry *)self codeSigningInfo];
      if (codeSigningInfo || ([(MCMCodeSigningEntry *)v6 codeSigningInfo], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        codeSigningInfo2 = [(MCMCodeSigningEntry *)self codeSigningInfo];
        codeSigningInfo3 = [(MCMCodeSigningEntry *)v6 codeSigningInfo];
        v10 = [codeSigningInfo2 isEqualToDictionary:codeSigningInfo3];

        if (codeSigningInfo)
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

      childBundleIdentifiers = [(MCMCodeSigningEntry *)self childBundleIdentifiers];
      if (childBundleIdentifiers || ([(MCMCodeSigningEntry *)v6 childBundleIdentifiers], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        childBundleIdentifiers2 = [(MCMCodeSigningEntry *)self childBundleIdentifiers];
        childBundleIdentifiers3 = [(MCMCodeSigningEntry *)v6 childBundleIdentifiers];
        v15 = [childBundleIdentifiers2 isEqualToArray:childBundleIdentifiers3];

        if (childBundleIdentifiers)
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

      isInvalid = [(MCMCodeSigningEntry *)self isInvalid];
      if (isInvalid == [(MCMCodeSigningEntry *)v6 isInvalid])
      {
        isPlaceholder = [(MCMCodeSigningEntry *)self isPlaceholder];
        if (isPlaceholder == [(MCMCodeSigningEntry *)v6 isPlaceholder])
        {
          isAdvanceCopy = [(MCMCodeSigningEntry *)self isAdvanceCopy];
          if (isAdvanceCopy == [(MCMCodeSigningEntry *)v6 isAdvanceCopy])
          {
            isRegisteredByCaller = [(MCMCodeSigningEntry *)self isRegisteredByCaller];
            if (isRegisteredByCaller == [(MCMCodeSigningEntry *)v6 isRegisteredByCaller])
            {
              isRegisteredByKernel = [(MCMCodeSigningEntry *)self isRegisteredByKernel];
              if (isRegisteredByKernel == [(MCMCodeSigningEntry *)v6 isRegisteredByKernel])
              {
                dataContainerClass = [(MCMCodeSigningEntry *)self dataContainerClass];
                v11 = dataContainerClass == [(MCMCodeSigningEntry *)v6 dataContainerClass];
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
  codeSigningInfo = [(MCMCodeSigningEntry *)self codeSigningInfo];
  [v3 setObject:codeSigningInfo forKeyedSubscript:@"CodeSigningInfo"];

  childBundleIdentifiers = [(MCMCodeSigningEntry *)self childBundleIdentifiers];
  [v3 setObject:childBundleIdentifiers forKeyedSubscript:@"ChildBundleIds"];

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

- (MCMCodeSigningEntry)initWithSerializedDictionary:(id)dictionary
{
  v19 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v18.receiver = self;
  v18.super_class = MCMCodeSigningEntry;
  v5 = [(MCMCodeSigningEntry *)&v18 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"CodeSigningInfo"];
    codeSigningInfo = v5->_codeSigningInfo;
    v5->_codeSigningInfo = v6;

    v8 = [dictionaryCopy objectForKeyedSubscript:@"ChildBundleIds"];
    childBundleIdentifiers = v5->_childBundleIdentifiers;
    v5->_childBundleIdentifiers = v8;

    v10 = [dictionaryCopy objectForKeyedSubscript:@"Invalid"];
    v5->_invalid = [v10 BOOLValue];

    v11 = [dictionaryCopy objectForKeyedSubscript:@"Placeholder"];
    v5->_placeholder = [v11 BOOLValue];

    v12 = [dictionaryCopy objectForKeyedSubscript:@"AdvanceCopy"];
    v5->_advanceCopy = [v12 BOOLValue];

    v13 = [dictionaryCopy objectForKeyedSubscript:@"RegisteredByCaller"];
    v5->_registeredByCaller = [v13 BOOLValue];

    v14 = [dictionaryCopy objectForKeyedSubscript:@"RegisteredByKernel"];
    v5->_registeredByKernel = [v14 BOOLValue];

    v15 = [dictionaryCopy objectForKeyedSubscript:@"DataContainerClass"];
    v5->_dataContainerClass = [v15 unsignedLongLongValue];
  }

  v16 = *MEMORY[0x1E69E9840];
  return v5;
}

- (MCMCodeSigningEntry)initWithCodeSigningInfo:(id)info
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];

  return [(MCMCodeSigningEntry *)self initWithCodeSigningInfo:info andDataContainerClass:0];
}

- (MCMCodeSigningEntry)initWithCodeSigningInfo:(id)info andDataContainerClass:(unint64_t)class
{
  v14 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v13.receiver = self;
  v13.super_class = MCMCodeSigningEntry;
  v8 = [(MCMCodeSigningEntry *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_codeSigningInfo, info);
    childBundleIdentifiers = v9->_childBundleIdentifiers;
    v9->_childBundleIdentifiers = 0;

    v9->_registeredByKernel = 0;
    *&v9->_invalid = 0;
    v9->_dataContainerClass = class;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

@end