@interface COClusterConfiguration
+ (BOOL)_validateServices:(unint64_t)a3 options:(unint64_t)a4;
+ (COClusterConfiguration)configurationWithDomain:(id)a3 requiredServices:(unint64_t)a4 options:(unint64_t)a5 realm:(id)a6;
+ (COClusterConfiguration)configurationWithDomain:(id)a3 requiredServices:(unint64_t)a4 options:(unint64_t)a5 realm:(id)a6 globalServiceName:(id)a7;
+ (id)_prefixFromDomain:(id)a3;
+ (id)configurationForExplicitClusterIdentifier:(id)a3 requiredServices:(unint64_t)a4 options:(unint64_t)a5;
+ (id)domainPermittedCharacterSet;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToClusterConfiguration:(id)a3;
- (COClusterConfiguration)initWithCoder:(id)a3;
- (id)_initWithPrefix:(id)a3 requiredServices:(unint64_t)a4 options:(unint64_t)a5 realm:(id)a6 globalServiceName:(id)a7;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation COClusterConfiguration

- (id)_initWithPrefix:(id)a3 requiredServices:(unint64_t)a4 options:(unint64_t)a5 realm:(id)a6 globalServiceName:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v23.receiver = self;
  v23.super_class = COClusterConfiguration;
  v15 = [(COClusterConfiguration *)&v23 init];
  if (v15)
  {
    v16 = [v12 copy];
    prefix = v15->_prefix;
    v15->_prefix = v16;

    v15->_requiredServices = a4;
    v15->_options = a5;
    v18 = [v13 copy];
    realm = v15->_realm;
    v15->_realm = v18;

    v20 = [v14 copy];
    globalServiceName = v15->_globalServiceName;
    v15->_globalServiceName = v20;
  }

  return v15;
}

+ (COClusterConfiguration)configurationWithDomain:(id)a3 requiredServices:(unint64_t)a4 options:(unint64_t)a5 realm:(id)a6
{
  v10 = a6;
  v11 = [a1 _prefixFromDomain:a3];
  if (v11 && [a1 _validateServices:a4 options:a5])
  {
    v12 = [[a1 alloc] _initWithPrefix:v11 requiredServices:a4 options:a5 realm:v10 globalServiceName:0];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (COClusterConfiguration)configurationWithDomain:(id)a3 requiredServices:(unint64_t)a4 options:(unint64_t)a5 realm:(id)a6 globalServiceName:(id)a7
{
  v12 = a6;
  v13 = a7;
  v14 = [a1 _prefixFromDomain:a3];
  v15 = v14;
  v16 = 0;
  if (!(a4 & 3 | a5 & 1) && v14)
  {
    v16 = [[a1 alloc] _initWithPrefix:v14 requiredServices:a4 options:a5 realm:v12 globalServiceName:v13];
  }

  return v16;
}

+ (id)configurationForExplicitClusterIdentifier:(id)a3 requiredServices:(unint64_t)a4 options:(unint64_t)a5
{
  v8 = a3;
  if (![v8 length])
  {
    v12 = 0;
    goto LABEL_11;
  }

  v9 = [a1 domainPermittedCharacterSet];
  v10 = [v9 invertedSet];

  if ([v8 rangeOfCharacterFromSet:v10] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = COLogForCategory(7);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      +[COClusterConfiguration configurationForExplicitClusterIdentifier:requiredServices:options:];
    }

    goto LABEL_9;
  }

  if (![a1 _validateServices:a4 options:a5])
  {
LABEL_9:
    v12 = 0;
    goto LABEL_10;
  }

  v11 = [_COClusterRealmExplicitMembership realmWithClusterIdentifier:v8];
  v12 = [[a1 alloc] _initWithPrefix:&stru_2857AE980 requiredServices:a4 options:a5 realm:v11 globalServiceName:0];

LABEL_10:
LABEL_11:

  return v12;
}

- (COClusterConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 decodeIntegerForKey:@"version"] == 1)
  {
    v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"prefix"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requiredServices"];
    v7 = [v6 unsignedIntegerValue];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"options"];
    v9 = [v8 unsignedIntegerValue];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"realm"];
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"globalService"];
    if (v5 && v6 && v8 && v10)
    {
      v12 = [(COClusterConfiguration *)self _initWithPrefix:v5 requiredServices:v7 options:v9 realm:v10 globalServiceName:v11];
    }

    else
    {

      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
    v5 = self;
  }

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:1 forKey:@"version"];
  v5 = [(COClusterConfiguration *)self prefix];
  [v4 encodeObject:v5 forKey:@"prefix"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[COClusterConfiguration requiredServices](self, "requiredServices")}];
  [v4 encodeObject:v6 forKey:@"requiredServices"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[COClusterConfiguration options](self, "options")}];
  [v4 encodeObject:v7 forKey:@"options"];

  v8 = [(COClusterConfiguration *)self realm];
  [v4 encodeObject:v8 forKey:@"realm"];

  v9 = [(COClusterConfiguration *)self globalServiceName];
  [v4 encodeObject:v9 forKey:@"globalService"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(COClusterConfiguration *)self prefix];
  v7 = [(COClusterConfiguration *)self requiredServices];
  v8 = [(COClusterConfiguration *)self options];
  v9 = [(COClusterConfiguration *)self realm];
  v10 = [v3 stringWithFormat:@"<%@: %p, pfx(%@) s(%#0lx) o(%#0lx) r(%@)>", v5, self, v6, v7, v8, v9];

  return v10;
}

- (unint64_t)hash
{
  v2 = [(COClusterConfiguration *)self prefix];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  if (self == v4)
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

- (BOOL)isEqualToClusterConfiguration:(id)a3
{
  v5 = a3;
  v6 = [(COClusterConfiguration *)self prefix];
  v7 = [v5 prefix];
  if ([v6 isEqualToString:v7])
  {
    v8 = [(COClusterConfiguration *)self requiredServices];
    if (v8 == [v5 requiredServices])
    {
      v9 = [(COClusterConfiguration *)self options];
      if (v9 == [v5 options])
      {
        v10 = [(COClusterConfiguration *)self realm];
        v11 = [v5 realm];
        if (![v10 isEqual:v11])
        {
          v15 = 0;
LABEL_15:

          goto LABEL_10;
        }

        v12 = [(COClusterConfiguration *)self globalServiceName];
        if (v12 || ([v5 globalServiceName], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v13 = [(COClusterConfiguration *)self globalServiceName];
          v14 = [v5 globalServiceName];
          v15 = [v13 isEqual:v14];

          if (v12)
          {
LABEL_14:

            goto LABEL_15;
          }
        }

        else
        {
          v15 = 1;
        }

        v12 = v3;
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

+ (BOOL)_validateServices:(unint64_t)a3 options:(unint64_t)a4
{
  if (!a3)
  {
    v4 = COLogForCategory(7);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [COClusterConfiguration _validateServices:v4 options:?];
    }

    goto LABEL_14;
  }

  if ((a3 & 0xFFFFFFFFFFFFFFF0) != 0)
  {
    v4 = COLogForCategory(7);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      +[COClusterConfiguration _validateServices:options:];
    }

LABEL_14:

    return 0;
  }

  if ((a4 & 0xFFFFFFFFFFFFFFFELL) != 0)
  {
    v4 = COLogForCategory(7);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      +[COClusterConfiguration _validateServices:options:];
    }

    goto LABEL_14;
  }

  result = 1;
  if ((a3 & 3) != 0 && !a4)
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

+ (id)_prefixFromDomain:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = [objc_opt_class() domainPermittedCharacterSet];
    v5 = [v4 invertedSet];

    if ([v3 rangeOfCharacterFromSet:v5] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"d-cluster.%@", v3];
    }

    else
    {
      v7 = COLogForCategory(7);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        +[COClusterConfiguration _prefixFromDomain:];
      }

      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
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