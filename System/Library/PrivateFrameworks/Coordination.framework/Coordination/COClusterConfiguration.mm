@interface COClusterConfiguration
+ (BOOL)_validateServices:(unint64_t)services options:(unint64_t)options;
+ (COClusterConfiguration)configurationWithDomain:(id)domain requiredServices:(unint64_t)services options:(unint64_t)options realm:(id)realm;
+ (COClusterConfiguration)configurationWithDomain:(id)domain requiredServices:(unint64_t)services options:(unint64_t)options realm:(id)realm globalServiceName:(id)name;
+ (id)_prefixFromDomain:(id)domain;
+ (id)configurationForExplicitClusterIdentifier:(id)identifier requiredServices:(unint64_t)services options:(unint64_t)options;
+ (id)domainPermittedCharacterSet;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToClusterConfiguration:(id)configuration;
- (COClusterConfiguration)initWithCoder:(id)coder;
- (id)_initWithPrefix:(id)prefix requiredServices:(unint64_t)services options:(unint64_t)options realm:(id)realm globalServiceName:(id)name;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation COClusterConfiguration

- (id)_initWithPrefix:(id)prefix requiredServices:(unint64_t)services options:(unint64_t)options realm:(id)realm globalServiceName:(id)name
{
  prefixCopy = prefix;
  realmCopy = realm;
  nameCopy = name;
  v23.receiver = self;
  v23.super_class = COClusterConfiguration;
  v15 = [(COClusterConfiguration *)&v23 init];
  if (v15)
  {
    v16 = [prefixCopy copy];
    prefix = v15->_prefix;
    v15->_prefix = v16;

    v15->_requiredServices = services;
    v15->_options = options;
    v18 = [realmCopy copy];
    realm = v15->_realm;
    v15->_realm = v18;

    v20 = [nameCopy copy];
    globalServiceName = v15->_globalServiceName;
    v15->_globalServiceName = v20;
  }

  return v15;
}

+ (COClusterConfiguration)configurationWithDomain:(id)domain requiredServices:(unint64_t)services options:(unint64_t)options realm:(id)realm
{
  realmCopy = realm;
  v11 = [self _prefixFromDomain:domain];
  if (v11 && [self _validateServices:services options:options])
  {
    v12 = [[self alloc] _initWithPrefix:v11 requiredServices:services options:options realm:realmCopy globalServiceName:0];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (COClusterConfiguration)configurationWithDomain:(id)domain requiredServices:(unint64_t)services options:(unint64_t)options realm:(id)realm globalServiceName:(id)name
{
  realmCopy = realm;
  nameCopy = name;
  v14 = [self _prefixFromDomain:domain];
  v15 = v14;
  v16 = 0;
  if (!(services & 3 | options & 1) && v14)
  {
    v16 = [[self alloc] _initWithPrefix:v14 requiredServices:services options:options realm:realmCopy globalServiceName:nameCopy];
  }

  return v16;
}

+ (id)configurationForExplicitClusterIdentifier:(id)identifier requiredServices:(unint64_t)services options:(unint64_t)options
{
  identifierCopy = identifier;
  if (![identifierCopy length])
  {
    v12 = 0;
    goto LABEL_11;
  }

  domainPermittedCharacterSet = [self domainPermittedCharacterSet];
  invertedSet = [domainPermittedCharacterSet invertedSet];

  if ([identifierCopy rangeOfCharacterFromSet:invertedSet] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = COLogForCategory(7);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      +[COClusterConfiguration configurationForExplicitClusterIdentifier:requiredServices:options:];
    }

    goto LABEL_9;
  }

  if (![self _validateServices:services options:options])
  {
LABEL_9:
    v12 = 0;
    goto LABEL_10;
  }

  v11 = [_COClusterRealmExplicitMembership realmWithClusterIdentifier:identifierCopy];
  v12 = [[self alloc] _initWithPrefix:&stru_2857AE980 requiredServices:services options:options realm:v11 globalServiceName:0];

LABEL_10:
LABEL_11:

  return v12;
}

- (COClusterConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy decodeIntegerForKey:@"version"] == 1)
  {
    selfCopy = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"prefix"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requiredServices"];
    unsignedIntegerValue = [v6 unsignedIntegerValue];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"options"];
    unsignedIntegerValue2 = [v8 unsignedIntegerValue];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"realm"];
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"globalService"];
    if (selfCopy && v6 && v8 && v10)
    {
      v12 = [(COClusterConfiguration *)self _initWithPrefix:selfCopy requiredServices:unsignedIntegerValue options:unsignedIntegerValue2 realm:v10 globalServiceName:v11];
    }

    else
    {

      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
    selfCopy = self;
  }

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:1 forKey:@"version"];
  prefix = [(COClusterConfiguration *)self prefix];
  [coderCopy encodeObject:prefix forKey:@"prefix"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[COClusterConfiguration requiredServices](self, "requiredServices")}];
  [coderCopy encodeObject:v6 forKey:@"requiredServices"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[COClusterConfiguration options](self, "options")}];
  [coderCopy encodeObject:v7 forKey:@"options"];

  realm = [(COClusterConfiguration *)self realm];
  [coderCopy encodeObject:realm forKey:@"realm"];

  globalServiceName = [(COClusterConfiguration *)self globalServiceName];
  [coderCopy encodeObject:globalServiceName forKey:@"globalService"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  prefix = [(COClusterConfiguration *)self prefix];
  requiredServices = [(COClusterConfiguration *)self requiredServices];
  options = [(COClusterConfiguration *)self options];
  realm = [(COClusterConfiguration *)self realm];
  v10 = [v3 stringWithFormat:@"<%@: %p, pfx(%@) s(%#0lx) o(%#0lx) r(%@)>", v5, self, prefix, requiredServices, options, realm];

  return v10;
}

- (unint64_t)hash
{
  prefix = [(COClusterConfiguration *)self prefix];
  v3 = [prefix hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_5;
  }

  if (self == equalCopy)
  {
    v6 = 1;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(COClusterConfiguration *)self isEqualToClusterConfiguration:v5];
  }

  else
  {
LABEL_5:
    v6 = 0;
  }

LABEL_7:

  return v6;
}

- (BOOL)isEqualToClusterConfiguration:(id)configuration
{
  configurationCopy = configuration;
  prefix = [(COClusterConfiguration *)self prefix];
  prefix2 = [configurationCopy prefix];
  if ([prefix isEqualToString:prefix2])
  {
    requiredServices = [(COClusterConfiguration *)self requiredServices];
    if (requiredServices == [configurationCopy requiredServices])
    {
      options = [(COClusterConfiguration *)self options];
      if (options == [configurationCopy options])
      {
        realm = [(COClusterConfiguration *)self realm];
        realm2 = [configurationCopy realm];
        if (![realm isEqual:realm2])
        {
          v15 = 0;
LABEL_15:

          goto LABEL_10;
        }

        globalServiceName = [(COClusterConfiguration *)self globalServiceName];
        if (globalServiceName || ([configurationCopy globalServiceName], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          globalServiceName2 = [(COClusterConfiguration *)self globalServiceName];
          globalServiceName3 = [configurationCopy globalServiceName];
          v15 = [globalServiceName2 isEqual:globalServiceName3];

          if (globalServiceName)
          {
LABEL_14:

            goto LABEL_15;
          }
        }

        else
        {
          v15 = 1;
        }

        globalServiceName = v3;
        goto LABEL_14;
      }
    }
  }

  v15 = 0;
LABEL_10:

  return v15;
}

+ (id)domainPermittedCharacterSet
{
  if (domainPermittedCharacterSet_onceToken != -1)
  {
    +[COClusterConfiguration domainPermittedCharacterSet];
  }

  v3 = domainPermittedCharacterSet_permitted;

  return v3;
}

void __53__COClusterConfiguration_domainPermittedCharacterSet__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCAB50]);
  v1 = [MEMORY[0x277CCA900] uppercaseLetterCharacterSet];
  [v0 formUnionWithCharacterSet:v1];

  v2 = [MEMORY[0x277CCA900] lowercaseLetterCharacterSet];
  [v0 formUnionWithCharacterSet:v2];

  v3 = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
  [v0 formUnionWithCharacterSet:v3];

  [v0 addCharactersInString:@"_"];
  [v0 addCharactersInString:@"-"];
  [v0 addCharactersInString:@"."];
  v4 = domainPermittedCharacterSet_permitted;
  domainPermittedCharacterSet_permitted = v0;
}

+ (BOOL)_validateServices:(unint64_t)services options:(unint64_t)options
{
  if (!services)
  {
    v4 = COLogForCategory(7);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [COClusterConfiguration _validateServices:v4 options:?];
    }

    goto LABEL_14;
  }

  if ((services & 0xFFFFFFFFFFFFFFF0) != 0)
  {
    v4 = COLogForCategory(7);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      +[COClusterConfiguration _validateServices:options:];
    }

LABEL_14:

    return 0;
  }

  if ((options & 0xFFFFFFFFFFFFFFFELL) != 0)
  {
    v4 = COLogForCategory(7);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      +[COClusterConfiguration _validateServices:options:];
    }

    goto LABEL_14;
  }

  result = 1;
  if ((services & 3) != 0 && !options)
  {
    v4 = COLogForCategory(7);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      +[COClusterConfiguration _validateServices:options:];
    }

    goto LABEL_14;
  }

  return result;
}

+ (id)_prefixFromDomain:(id)domain
{
  domainCopy = domain;
  if ([domainCopy length])
  {
    domainPermittedCharacterSet = [objc_opt_class() domainPermittedCharacterSet];
    invertedSet = [domainPermittedCharacterSet invertedSet];

    if ([domainCopy rangeOfCharacterFromSet:invertedSet] == 0x7FFFFFFFFFFFFFFFLL)
    {
      domainCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"d-cluster.%@", domainCopy];
    }

    else
    {
      v7 = COLogForCategory(7);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        +[COClusterConfiguration _prefixFromDomain:];
      }

      domainCopy = 0;
    }
  }

  else
  {
    domainCopy = 0;
  }

  return domainCopy;
}

+ (void)configurationForExplicitClusterIdentifier:requiredServices:options:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4(&dword_244328000, v0, v1, "Invalid character in cluster identifier %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)_validateServices:options:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4(&dword_244328000, v0, v1, "Invalid cluster configuration: unknown services %lX", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)_validateServices:options:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4(&dword_244328000, v0, v1, "Invalid cluster configuration: unknown options %lX", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)_validateServices:options:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4(&dword_244328000, v0, v1, "Invalid cluster configuration: services %lX require Coordinator option", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)_prefixFromDomain:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4(&dword_244328000, v0, v1, "Invalid character in cluster domain %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end