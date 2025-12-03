@interface WFCoercionOptions
+ (id)new;
+ (id)optionsWithDictionary:(id)dictionary;
+ (void)registerDefaultDisallowedCoercionPath:(id)path;
- (BOOL)coercionPathIsDisallowed:(id)disallowed;
- (BOOL)shouldContinueLoadingWebContentIfExternalResourcesAreDenied;
- (WFCoercionOptions)initWithDictionary:(id)dictionary;
- (WFContentPermissionRequestor)permissionRequestor;
- (id)itemClassPrioritizationType;
- (id)optionsByAddingContentsOfOptions:(id)options;
- (id)preferredTypes;
@end

@implementation WFCoercionOptions

- (id)optionsByAddingContentsOfOptions:(id)options
{
  optionsCopy = options;
  dictionary = [(WFCoercionOptions *)self dictionary];
  v6 = [dictionary mutableCopy];

  dictionary2 = [optionsCopy dictionary];

  [v6 addEntriesFromDictionary:dictionary2];
  v8 = [WFCoercionOptions optionsWithDictionary:v6];

  return v8;
}

- (WFCoercionOptions)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (!dictionaryCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFCoercionOptions.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"dictionary"}];
  }

  v12.receiver = self;
  v12.super_class = WFCoercionOptions;
  v6 = [(WFCoercionOptions *)&v12 init];
  if (v6)
  {
    v7 = [dictionaryCopy copy];
    dictionary = v6->_dictionary;
    v6->_dictionary = v7;

    v9 = v6;
  }

  return v6;
}

+ (id)optionsWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [[WFCoercionOptions alloc] initWithDictionary:dictionaryCopy];

  return v4;
}

+ (id)new
{
  if (new_onceToken != -1)
  {
    dispatch_once(&new_onceToken, &__block_literal_global_1370);
  }

  v3 = new_options;

  return v3;
}

uint64_t __24__WFCoercionOptions_new__block_invoke()
{
  new_options = objc_alloc_init(WFCoercionOptions);

  return MEMORY[0x2821F96F8]();
}

- (BOOL)coercionPathIsDisallowed:(id)disallowed
{
  v27 = *MEMORY[0x277D85DE8];
  disallowedCopy = disallowed;
  dictionary = [(WFCoercionOptions *)self dictionary];
  v6 = [dictionary objectForKey:@"WFCoercionOptionIgnoreDefaultDisallowedCoercionPaths"];
  bOOLValue = [v6 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = _defaultDisallowedCoercionPaths;
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
LABEL_4:
      v12 = 0;
      while (1)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        if (WFCoercionPathContainsPath(disallowedCopy, *(*(&v21 + 1) + 8 * v12)))
        {
          goto LABEL_20;
        }

        if (v10 == ++v12)
        {
          v10 = [v8 countByEnumeratingWithState:&v21 objects:v26 count:16];
          if (v10)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [dictionary objectForKey:{@"WFCoercionOptionDisallowedCoercionPaths", 0}];
  v13 = [v8 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v13)
  {
    v14 = *v18;
LABEL_13:
    v15 = 0;
    while (1)
    {
      if (*v18 != v14)
      {
        objc_enumerationMutation(v8);
      }

      if (WFCoercionPathContainsPath(disallowedCopy, *(*(&v17 + 1) + 8 * v15)))
      {
        break;
      }

      if (v13 == ++v15)
      {
        v13 = [v8 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v13)
        {
          goto LABEL_13;
        }

        goto LABEL_21;
      }
    }

LABEL_20:
    LOBYTE(v13) = 1;
  }

LABEL_21:

  return v13;
}

+ (void)registerDefaultDisallowedCoercionPath:(id)path
{
  v3 = registerDefaultDisallowedCoercionPath__onceToken;
  pathCopy = path;
  v6 = pathCopy;
  if (v3 == -1)
  {
    v5 = pathCopy;
  }

  else
  {
    dispatch_once(&registerDefaultDisallowedCoercionPath__onceToken, &__block_literal_global_4506);
    v5 = v6;
  }

  [_defaultDisallowedCoercionPaths addObject:v5];
}

uint64_t __84__WFCoercionOptions_DisallowedCoercionPaths__registerDefaultDisallowedCoercionPath___block_invoke()
{
  _defaultDisallowedCoercionPaths = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (id)preferredTypes
{
  dictionary = [(WFCoercionOptions *)self dictionary];
  v3 = [dictionary objectForKey:@"WFCoercionOptionPreferredTypes"];

  return v3;
}

- (id)itemClassPrioritizationType
{
  dictionary = [(WFCoercionOptions *)self dictionary];
  v3 = [dictionary objectForKey:@"WFCoercionOptionItemClassPrioritizationType"];

  return v3;
}

- (WFContentPermissionRequestor)permissionRequestor
{
  dictionary = [(WFCoercionOptions *)self dictionary];
  v3 = [dictionary objectForKey:@"PermissionRequestor"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = objc_opt_new();
  }

  v6 = v5;

  return v6;
}

- (BOOL)shouldContinueLoadingWebContentIfExternalResourcesAreDenied
{
  dictionary = [(WFCoercionOptions *)self dictionary];
  v3 = [dictionary objectForKey:@"ContinueLoadingWebContentIfExternalResourcesAreDenied"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

@end