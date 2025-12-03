@interface FSTaskOptionsBundle
- (FSTaskOptions)taskOptions;
- (FSTaskOptionsBundle)init;
- (FSTaskOptionsBundle)initWithCoder:(id)coder;
- (int)mapStringToKind:(id)kind;
- (void)addOption:(id)option;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateOptionsUsingBlock:(id)block;
@end

@implementation FSTaskOptionsBundle

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"This object may only be encoded by an NSXPCCoder." userInfo:0];
    objc_exception_throw(v4);
  }

  [coderCopy encodeObject:self->_extras forKey:@"FSTB.e"];
  [coderCopy encodeObject:self->_options forKey:@"FSTB.o"];
  [coderCopy encodeObject:self->_parameters forKey:@"FSTB.p"];
}

- (FSTaskOptionsBundle)initWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"This object may only be decoded by an NSXPCCoder." userInfo:0];
    objc_exception_throw(v17);
  }

  v18.receiver = self;
  v18.super_class = FSTaskOptionsBundle;
  v5 = [(FSTaskOptionsBundle *)&v18 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [coderCopy decodeDictionaryWithKeysOfClass:v6 objectsOfClass:objc_opt_class() forKey:@"FSTB.e"];
    v8 = [v7 mutableCopy];
    extras = v5->_extras;
    v5->_extras = v8;

    v10 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"FSTB.o"];
    v11 = [v10 mutableCopy];
    options = v5->_options;
    v5->_options = v11;

    v13 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"FSTB.p"];
    v14 = [v13 mutableCopy];
    parameters = v5->_parameters;
    v5->_parameters = v14;
  }

  return v5;
}

- (FSTaskOptionsBundle)init
{
  v10.receiver = self;
  v10.super_class = FSTaskOptionsBundle;
  v2 = [(FSTaskOptionsBundle *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    options = v2->_options;
    v2->_options = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    parameters = v2->_parameters;
    v2->_parameters = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    extras = v2->_extras;
    v2->_extras = v7;
  }

  return v2;
}

- (int)mapStringToKind:(id)kind
{
  kindCopy = kind;
  if (kindCopy)
  {
    if ([@"Path" isEqualToString:kindCopy])
    {
      v4 = 0;
    }

    else if ([@"Directory" isEqualToString:kindCopy])
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

void __85__FSTaskOptionsBundle_bundleForArguments_count_extension_operationType_errorHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (!a2 || v5)
  {
    v9 = fskit_std_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v15 = v6;
      _os_log_impl(&dword_24A929000, v9, OS_LOG_TYPE_INFO, "Could not get extensions - %@", buf, 0xCu);
    }
  }

  else
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __85__FSTaskOptionsBundle_bundleForArguments_count_extension_operationType_errorHandler___block_invoke_2;
    v11[3] = &unk_278FED200;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v12 = v7;
    v13 = v8;
    [a2 enumerateObjectsUsingBlock:v11];
    v9 = v12;
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __85__FSTaskOptionsBundle_bundleForArguments_count_extension_operationType_errorHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 bundleIdentifier];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)addOption:(id)option
{
  options = self->_options;
  optionCopy = option;
  [(NSArray *)options addObject:optionCopy];
  parameters = self->_parameters;
  originalArgv = [optionCopy originalArgv];

  [(NSArray *)parameters addObjectsFromArray:originalArgv];
}

- (FSTaskOptions)taskOptions
{
  v2 = [[FSTaskOptions alloc] initWithOptions:self->_parameters extras:self->_extras];

  return v2;
}

- (void)enumerateOptionsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSArray *)self->_options count];
  v12 = 0;
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = v8;
      v8 = [(NSArray *)self->_options objectAtIndexedSubscript:v7];

      option = [v8 option];
      if ([v8 hasValue])
      {
        optionValue = [v8 optionValue];
        blockCopy[2](blockCopy, option, optionValue, v7, &v12);
      }

      else
      {
        blockCopy[2](blockCopy, option, 0, v7, &v12);
      }

      if (v12)
      {
        break;
      }

      ++v7;
    }

    while (v7 < v6);
  }
}

@end