@interface DEDExtensionIdentifier
+ (id)archivedClasses;
+ (id)log;
+ (id)parseDEDIdentifierString:(id)a3;
- (BOOL)isEqual:(id)a3;
- (DEDExtensionIdentifier)initWithCoder:(id)a3;
- (DEDExtensionIdentifier)initWithExtensionIdentifier:(id)a3 invocationNumber:(int64_t)a4;
- (DEDExtensionIdentifier)initWithString:(id)a3;
- (NSString)stringValue;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DEDExtensionIdentifier

+ (id)log
{
  if (log_onceToken_3 != -1)
  {
    +[DEDExtensionIdentifier log];
  }

  v3 = log_log_3;

  return v3;
}

void __29__DEDExtensionIdentifier_log__block_invoke()
{
  v2 = +[DEDConfiguration sharedInstance];
  v0 = os_log_create([v2 loggingSubsystem], "ded-identifier");
  v1 = log_log_3;
  log_log_3 = v0;
}

+ (id)parseDEDIdentifierString:(id)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 componentsSeparatedByString:@"."];
  v5 = [v4 mutableCopy];

  v6 = [v5 lastObject];
  v7 = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
  v8 = [v6 stringByTrimmingCharactersInSet:v7];

  if ([v8 isEqualToString:&stru_285B72378])
  {
    [v5 removeLastObject];
    v9 = [v5 componentsJoinedByString:@"."];
    v13[0] = v9;
    v13[1] = v6;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  }

  else
  {
    v14[0] = v3;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (DEDExtensionIdentifier)initWithString:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = DEDExtensionIdentifier;
  v5 = [(DEDExtensionIdentifier *)&v15 init];
  if (!v5)
  {
LABEL_9:
    v10 = v5;
    goto LABEL_10;
  }

  v6 = [objc_opt_class() parseDEDIdentifierString:v4];
  v7 = v6;
  if (v6 && [v6 count])
  {
    if ([v7 count] == 1)
    {
      v8 = [v7 firstObject];
      extensionIdentifier = v5->_extensionIdentifier;
      v5->_extensionIdentifier = v8;

      v5->_invocationNumber = 0;
    }

    else
    {
      v11 = [v7 lastObject];
      v5->_invocationNumber = [v11 integerValue];

      v12 = [v7 firstObject];
      v13 = v5->_extensionIdentifier;
      v5->_extensionIdentifier = v12;
    }

    goto LABEL_9;
  }

  v10 = 0;
LABEL_10:

  return v10;
}

- (DEDExtensionIdentifier)initWithExtensionIdentifier:(id)a3 invocationNumber:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = DEDExtensionIdentifier;
  v8 = [(DEDExtensionIdentifier *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_extensionIdentifier, a3);
    v9->_invocationNumber = a4;
  }

  return v9;
}

- (NSString)stringValue
{
  if ([(DEDExtensionIdentifier *)self invocationNumber])
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = [(DEDExtensionIdentifier *)self extensionIdentifier];
    v5 = [v3 stringWithFormat:@"%@.%ld", v4, -[DEDExtensionIdentifier invocationNumber](self, "invocationNumber")];
  }

  else
  {
    v5 = [(DEDExtensionIdentifier *)self extensionIdentifier];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(DEDExtensionIdentifier *)self extensionIdentifier];
  [v5 encodeObject:v4 forKey:@"extensionIdentifier"];

  [v5 encodeInteger:-[DEDExtensionIdentifier invocationNumber](self forKey:{"invocationNumber"), @"invocationNumber"}];
}

- (DEDExtensionIdentifier)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = DEDExtensionIdentifier;
  v5 = [(DEDExtensionIdentifier *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"extensionIdentifier"];
    extensionIdentifier = v5->_extensionIdentifier;
    v5->_extensionIdentifier = v6;

    v5->_invocationNumber = [v4 decodeIntegerForKey:@"invocationNumber"];
  }

  return v5;
}

+ (id)archivedClasses
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__DEDExtensionIdentifier_archivedClasses__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (archivedClasses_onceToken_2 != -1)
  {
    dispatch_once(&archivedClasses_onceToken_2, block);
  }

  v2 = archivedClasses_classes;

  return v2;
}

uint64_t __41__DEDExtensionIdentifier_archivedClasses__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CBEB98];
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  archivedClasses_classes = [v1 setWithObjects:{v3, objc_opt_class(), 0}];

  return MEMORY[0x2821F96F8]();
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    v6 = [(DEDExtensionIdentifier *)self extensionIdentifier];
    v7 = [v5 extensionIdentifier];
    if ([v6 isEqualToString:v7])
    {
      v8 = [(DEDExtensionIdentifier *)self invocationNumber];
      v9 = v8 == [v5 invocationNumber];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end