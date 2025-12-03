@interface WFContentAttribution
+ (id)attributionWithAppDescriptor:(id)descriptor accountIdentifier:(id)identifier disclosureLevel:(unint64_t)level managedLevel:(unint64_t)managedLevel;
+ (id)attributionWithAppDescriptor:(id)descriptor disclosureLevel:(unint64_t)level;
+ (id)attributionWithDisclosureLevel:(unint64_t)level origin:(id)origin disclosureWarnings:(id)warnings originalItemIdentifier:(id)identifier;
+ (id)attributionWithDisclosureLevel:(unint64_t)level origin:(id)origin disclosureWarnings:(id)warnings originalItemIdentifiers:(id)identifiers;
+ (id)attributionWithDisclosureLevel:(unint64_t)level origin:(id)origin disclosureWarnings:(id)warnings originalItemIdentifiers:(id)identifiers count:(unint64_t)count;
+ (id)attributionWithDisclosureLevel:(unint64_t)level origin:(id)origin originalItemIdentifiers:(id)identifiers;
+ (id)objectWithWFSerializedRepresentation:(id)representation;
+ (id)shortcutsAppAttributionWithDisclosureLevel:(unint64_t)level;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (WFContentAttribution)initWithCoder:(id)coder;
- (WFContentAttribution)initWithDisclosureLevel:(unint64_t)level origin:(id)origin disclosureWarnings:(id)warnings originalItemIdentifiers:(id)identifiers count:(unint64_t)count;
- (id)attributionByReplacingAccountWithAppOrigin;
- (id)attributionByUpdatingItemsCount:(unint64_t)count;
- (id)identifier;
- (id)wfSerializedRepresentation;
- (id)wfSerializedRepresentationWithPrivateItemIdentifiers;
- (unint64_t)count;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFContentAttribution

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  origin = [(WFContentAttribution *)self origin];
  v7 = [origin description];
  v8 = [v3 stringWithFormat:@"<%@: %p, origin: %@, count: %lu>", v5, self, v7, -[WFContentAttribution count](self, "count")];

  return v8;
}

- (id)wfSerializedRepresentationWithPrivateItemIdentifiers
{
  wfSerializedRepresentation = [(WFContentAttribution *)self wfSerializedRepresentation];
  v4 = [wfSerializedRepresentation mutableCopy];

  privateItemIdentifiers = [(WFContentAttribution *)self privateItemIdentifiers];
  array = [privateItemIdentifiers array];
  [v4 setObject:array forKey:@"privateItemIdentifiers"];

  return v4;
}

- (id)wfSerializedRepresentation
{
  v18 = *MEMORY[0x277D85DE8];
  origin = [(WFContentAttribution *)self origin];
  wfSerializedRepresentation = [origin wfSerializedRepresentation];

  if (wfSerializedRepresentation)
  {
    v5 = MEMORY[0x277CBEB38];
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[WFContentAttribution disclosureLevel](self, "disclosureLevel", @"disclosureLevel"}];
    v13[0] = v6;
    v13[1] = wfSerializedRepresentation;
    v12[1] = @"origin";
    v12[2] = @"count";
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[WFContentAttribution count](self, "count")}];
    v13[2] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
    v9 = [v5 dictionaryWithDictionary:v8];
  }

  else
  {
    v6 = getWFSecurityLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      origin2 = [(WFContentAttribution *)self origin];
      *buf = 136315394;
      v15 = "[WFContentAttribution wfSerializedRepresentation]";
      v16 = 2114;
      v17 = origin2;
      _os_log_impl(&dword_21E1BD000, v6, OS_LOG_TYPE_FAULT, "%s Could not serialize origin: %{public}@", buf, 0x16u);
    }

    v9 = 0;
  }

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[WFContentAttribution disclosureLevel](self forKey:{"disclosureLevel"), @"disclosureLevel"}];
  disclosureWarnings = [(WFContentAttribution *)self disclosureWarnings];
  array = [disclosureWarnings array];
  [coderCopy encodeObject:array forKey:@"disclosureWarnings"];

  origin = [(WFContentAttribution *)self origin];
  [coderCopy encodeObject:origin forKey:@"origin"];

  privateItemIdentifiers = [(WFContentAttribution *)self privateItemIdentifiers];
  array2 = [privateItemIdentifiers array];
  [coderCopy encodeObject:array2 forKey:@"privateItemIdentifiers"];

  [coderCopy encodeInteger:-[WFContentAttribution count](self forKey:{"count"), @"count"}];
}

- (WFContentAttribution)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"disclosureLevel"];
  v6 = +[WFDisclosureWarning allDisclosureWarningClasses];
  v7 = [v6 setByAddingObject:objc_opt_class()];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"disclosureWarnings"];

  v9 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"privateItemIdentifiers"];

  v13 = +[WFContentLocation allContentLocationClasses];
  v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"origin"];

  v15 = [coderCopy decodeIntegerForKey:@"count"];
  v16 = [MEMORY[0x277CBEB70] orderedSetWithArray:v12];
  v17 = [(WFContentAttribution *)self initWithDisclosureLevel:v5 origin:v14 disclosureWarnings:v8 originalItemIdentifiers:v16 count:v15];

  return v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else if ([(WFContentAttribution *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    disclosureLevel = [(WFContentAttribution *)self disclosureLevel];
    if (disclosureLevel == [(WFContentAttribution *)v5 disclosureLevel])
    {
      origin = [(WFContentAttribution *)self origin];
      origin2 = [(WFContentAttribution *)v5 origin];
      if ([origin isEqual:origin2] && (v9 = -[WFContentAttribution count](self, "count"), v9 == -[WFContentAttribution count](v5, "count")))
      {
        privateItemIdentifiers = [(WFContentAttribution *)self privateItemIdentifiers];
        privateItemIdentifiers2 = [(WFContentAttribution *)v5 privateItemIdentifiers];
        v12 = [privateItemIdentifiers isEqualToOrderedSet:privateItemIdentifiers2];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)hash
{
  disclosureLevel = [(WFContentAttribution *)self disclosureLevel];
  v4 = [(WFContentAttribution *)self count];
  origin = [(WFContentAttribution *)self origin];
  v6 = [origin hash];
  privateItemIdentifiers = [(WFContentAttribution *)self privateItemIdentifiers];
  v8 = disclosureLevel ^ v4 ^ v6;
  v9 = [privateItemIdentifiers hash] ^ 0x9E3779B97F4A7C15;

  return v8 ^ v9;
}

- (unint64_t)count
{
  result = self->_count;
  if (!result)
  {
    privateItemIdentifiers = [(WFContentAttribution *)self privateItemIdentifiers];
    self->_count = [privateItemIdentifiers count];

    return self->_count;
  }

  return result;
}

- (id)identifier
{
  v3 = MEMORY[0x277CCACA8];
  origin = [(WFContentAttribution *)self origin];
  identifier = [origin identifier];
  v6 = [v3 stringWithFormat:@"com.apple.Shortcuts.attribution_%@_%lu", identifier, -[WFContentAttribution disclosureLevel](self, "disclosureLevel"), 0];

  return v6;
}

- (id)attributionByUpdatingItemsCount:(unint64_t)count
{
  if ([(WFContentAttribution *)self count]== count)
  {
    selfCopy = self;
  }

  else
  {
    v6 = [WFContentAttribution alloc];
    disclosureLevel = [(WFContentAttribution *)self disclosureLevel];
    origin = [(WFContentAttribution *)self origin];
    disclosureWarnings = [(WFContentAttribution *)self disclosureWarnings];
    array = [disclosureWarnings array];
    privateItemIdentifiers = [(WFContentAttribution *)self privateItemIdentifiers];
    selfCopy = [(WFContentAttribution *)v6 initWithDisclosureLevel:disclosureLevel origin:origin disclosureWarnings:array originalItemIdentifiers:privateItemIdentifiers count:count];
  }

  return selfCopy;
}

- (id)attributionByReplacingAccountWithAppOrigin
{
  origin = [(WFContentAttribution *)self origin];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    origin2 = [(WFContentAttribution *)self origin];
    disclosureLevel = [(WFContentAttribution *)self disclosureLevel];
    appContentLocation = [origin2 appContentLocation];
    disclosureWarnings = [(WFContentAttribution *)self disclosureWarnings];
    array = [disclosureWarnings array];
    privateItemIdentifiers = [(WFContentAttribution *)self privateItemIdentifiers];
    selfCopy = [WFContentAttribution attributionWithDisclosureLevel:disclosureLevel origin:appContentLocation disclosureWarnings:array originalItemIdentifiers:privateItemIdentifiers count:[(WFContentAttribution *)self count]];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (WFContentAttribution)initWithDisclosureLevel:(unint64_t)level origin:(id)origin disclosureWarnings:(id)warnings originalItemIdentifiers:(id)identifiers count:(unint64_t)count
{
  v28 = *MEMORY[0x277D85DE8];
  originCopy = origin;
  warningsCopy = warnings;
  identifiersCopy = identifiers;
  if (!originCopy)
  {
    v16 = getWFSecurityLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v27 = "[WFContentAttribution initWithDisclosureLevel:origin:disclosureWarnings:originalItemIdentifiers:count:]";
      _os_log_impl(&dword_21E1BD000, v16, OS_LOG_TYPE_FAULT, "%s WFContentAttribution being created with a nil origin!", buf, 0xCu);
    }
  }

  v25.receiver = self;
  v25.super_class = WFContentAttribution;
  v17 = [(WFContentAttribution *)&v25 init];
  v18 = v17;
  if (v17)
  {
    v17->_disclosureLevel = level;
    objc_storeStrong(&v17->_origin, origin);
    v18->_count = count;
    v19 = [MEMORY[0x277CBEB70] orderedSetWithArray:warningsCopy];
    disclosureWarnings = v18->_disclosureWarnings;
    v18->_disclosureWarnings = v19;

    if (level == 1)
    {
      orderedSet = identifiersCopy;
    }

    else
    {
      orderedSet = [MEMORY[0x277CBEB70] orderedSet];
    }

    privateItemIdentifiers = v18->_privateItemIdentifiers;
    v18->_privateItemIdentifiers = orderedSet;

    v23 = v18;
  }

  return v18;
}

+ (id)attributionWithDisclosureLevel:(unint64_t)level origin:(id)origin disclosureWarnings:(id)warnings originalItemIdentifiers:(id)identifiers count:(unint64_t)count
{
  identifiersCopy = identifiers;
  warningsCopy = warnings;
  originCopy = origin;
  v15 = [[self alloc] initWithDisclosureLevel:level origin:originCopy disclosureWarnings:warningsCopy originalItemIdentifiers:identifiersCopy count:count];

  return v15;
}

+ (id)attributionWithAppDescriptor:(id)descriptor accountIdentifier:(id)identifier disclosureLevel:(unint64_t)level managedLevel:(unint64_t)managedLevel
{
  if (identifier)
  {
    [WFAccountContentLocation locationWithAccountIdentifier:identifier appDescriptor:descriptor managedLevel:managedLevel];
  }

  else
  {
    [WFAppContentLocation locationWithAppDescriptor:descriptor, 0, level, managedLevel];
  }
  v8 = ;
  v9 = [self attributionWithDisclosureLevel:level origin:v8 originalItemIdentifier:0];

  return v9;
}

+ (id)attributionWithAppDescriptor:(id)descriptor disclosureLevel:(unint64_t)level
{
  v6 = [WFAppContentLocation locationWithAppDescriptor:descriptor];
  v7 = [self attributionWithDisclosureLevel:level origin:v6 originalItemIdentifier:0];

  return v7;
}

+ (id)objectWithWFSerializedRepresentation:(id)representation
{
  v19 = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  v5 = [representationCopy wfObjectOfClass:objc_opt_class() forKey:@"disclosureLevel"];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  v7 = [representationCopy valueForKey:@"origin"];
  v8 = [WFContentLocation objectWithWFSerializedRepresentation:v7];

  v9 = [representationCopy wfObjectOfClass:objc_opt_class() forKey:@"count"];
  unsignedIntegerValue2 = [v9 unsignedIntegerValue];

  if (v8)
  {
    v11 = [representationCopy objectForKey:@"privateItemIdentifiers"];
    if (v11)
    {
      v12 = [objc_alloc(MEMORY[0x277CBEB70]) initWithArray:v11];
    }

    else
    {
      v12 = 0;
    }

    v15 = [self alloc];
    v14 = [v15 initWithDisclosureLevel:unsignedIntegerValue origin:v8 disclosureWarnings:MEMORY[0x277CBEBF8] originalItemIdentifiers:v12 count:unsignedIntegerValue2];
  }

  else
  {
    v13 = getWFSecurityLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315138;
      v18 = "+[WFContentAttribution objectWithWFSerializedRepresentation:]";
      _os_log_impl(&dword_21E1BD000, v13, OS_LOG_TYPE_ERROR, "%s Attempted to initialize a serialized WFContentAttribution with nil origin", &v17, 0xCu);
    }

    v14 = 0;
  }

  return v14;
}

+ (id)shortcutsAppAttributionWithDisclosureLevel:(unint64_t)level
{
  v5 = objc_alloc(MEMORY[0x277CD3A58]);
  v6 = [v5 initWithBundleIdentifier:*MEMORY[0x277D7A338]];
  mEMORY[0x277CD3A88] = [MEMORY[0x277CD3A88] sharedResolver];
  v8 = [mEMORY[0x277CD3A88] resolvedAppMatchingDescriptor:v6];

  v9 = [WFAppContentLocation locationWithAppDescriptor:v8];
  v10 = objc_opt_new();
  v11 = [self attributionWithDisclosureLevel:level origin:v9 originalItemIdentifiers:v10];

  return v11;
}

+ (id)attributionWithDisclosureLevel:(unint64_t)level origin:(id)origin disclosureWarnings:(id)warnings originalItemIdentifier:(id)identifier
{
  v10 = MEMORY[0x277CBEB70];
  warningsCopy = warnings;
  originCopy = origin;
  if (identifier)
  {
    v13 = [v10 orderedSetWithObject:identifier];
  }

  else
  {
    v13 = objc_opt_new();
  }

  v14 = v13;
  v15 = [self attributionWithDisclosureLevel:level origin:originCopy disclosureWarnings:warningsCopy originalItemIdentifiers:v13];

  return v15;
}

+ (id)attributionWithDisclosureLevel:(unint64_t)level origin:(id)origin disclosureWarnings:(id)warnings originalItemIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  warningsCopy = warnings;
  originCopy = origin;
  v13 = [[self alloc] initWithDisclosureLevel:level origin:originCopy disclosureWarnings:warningsCopy originalItemIdentifiers:identifiersCopy count:{objc_msgSend(identifiersCopy, "count")}];

  return v13;
}

+ (id)attributionWithDisclosureLevel:(unint64_t)level origin:(id)origin originalItemIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  originCopy = origin;
  v10 = [self alloc];
  v11 = [identifiersCopy count];
  v12 = [v10 initWithDisclosureLevel:level origin:originCopy disclosureWarnings:MEMORY[0x277CBEBF8] originalItemIdentifiers:identifiersCopy count:v11];

  return v12;
}

@end