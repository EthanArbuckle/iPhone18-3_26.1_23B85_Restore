@interface DEDExtensionIdentifier
+ (id)archivedClasses;
+ (id)log;
+ (id)parseDEDIdentifierString:(id)string;
- (BOOL)isEqual:(id)equal;
- (DEDExtensionIdentifier)initWithCoder:(id)coder;
- (DEDExtensionIdentifier)initWithExtensionIdentifier:(id)identifier invocationNumber:(int64_t)number;
- (DEDExtensionIdentifier)initWithString:(id)string;
- (NSString)stringValue;
- (void)encodeWithCoder:(id)coder;
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

+ (id)parseDEDIdentifierString:(id)string
{
  v14[1] = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v4 = [stringCopy componentsSeparatedByString:@"."];
  v5 = [v4 mutableCopy];

  lastObject = [v5 lastObject];
  decimalDigitCharacterSet = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
  v8 = [lastObject stringByTrimmingCharactersInSet:decimalDigitCharacterSet];

  if ([v8 isEqualToString:&stru_285B72378])
  {
    [v5 removeLastObject];
    v9 = [v5 componentsJoinedByString:@"."];
    v13[0] = v9;
    v13[1] = lastObject;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  }

  else
  {
    v14[0] = stringCopy;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (DEDExtensionIdentifier)initWithString:(id)string
{
  stringCopy = string;
  v15.receiver = self;
  v15.super_class = DEDExtensionIdentifier;
  v5 = [(DEDExtensionIdentifier *)&v15 init];
  if (!v5)
  {
LABEL_9:
    v10 = v5;
    goto LABEL_10;
  }

  v6 = [objc_opt_class() parseDEDIdentifierString:stringCopy];
  v7 = v6;
  if (v6 && [v6 count])
  {
    if ([v7 count] == 1)
    {
      firstObject = [v7 firstObject];
      extensionIdentifier = v5->_extensionIdentifier;
      v5->_extensionIdentifier = firstObject;

      v5->_invocationNumber = 0;
    }

    else
    {
      lastObject = [v7 lastObject];
      v5->_invocationNumber = [lastObject integerValue];

      firstObject2 = [v7 firstObject];
      v13 = v5->_extensionIdentifier;
      v5->_extensionIdentifier = firstObject2;
    }

    goto LABEL_9;
  }

  v10 = 0;
LABEL_10:

  return v10;
}

- (DEDExtensionIdentifier)initWithExtensionIdentifier:(id)identifier invocationNumber:(int64_t)number
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = DEDExtensionIdentifier;
  v8 = [(DEDExtensionIdentifier *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_extensionIdentifier, identifier);
    v9->_invocationNumber = number;
  }

  return v9;
}

- (NSString)stringValue
{
  if ([(DEDExtensionIdentifier *)self invocationNumber])
  {
    v3 = MEMORY[0x277CCACA8];
    extensionIdentifier = [(DEDExtensionIdentifier *)self extensionIdentifier];
    extensionIdentifier2 = [v3 stringWithFormat:@"%@.%ld", extensionIdentifier, -[DEDExtensionIdentifier invocationNumber](self, "invocationNumber")];
  }

  else
  {
    extensionIdentifier2 = [(DEDExtensionIdentifier *)self extensionIdentifier];
  }

  return extensionIdentifier2;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  extensionIdentifier = [(DEDExtensionIdentifier *)self extensionIdentifier];
  [coderCopy encodeObject:extensionIdentifier forKey:@"extensionIdentifier"];

  [coderCopy encodeInteger:-[DEDExtensionIdentifier invocationNumber](self forKey:{"invocationNumber"), @"invocationNumber"}];
}

- (DEDExtensionIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = DEDExtensionIdentifier;
  v5 = [(DEDExtensionIdentifier *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"extensionIdentifier"];
    extensionIdentifier = v5->_extensionIdentifier;
    v5->_extensionIdentifier = v6;

    v5->_invocationNumber = [coderCopy decodeIntegerForKey:@"invocationNumber"];
  }

  return v5;
}

+ (id)archivedClasses
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__DEDExtensionIdentifier_archivedClasses__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = equalCopy;
    extensionIdentifier = [(DEDExtensionIdentifier *)self extensionIdentifier];
    extensionIdentifier2 = [v5 extensionIdentifier];
    if ([extensionIdentifier isEqualToString:extensionIdentifier2])
    {
      invocationNumber = [(DEDExtensionIdentifier *)self invocationNumber];
      v9 = invocationNumber == [v5 invocationNumber];
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