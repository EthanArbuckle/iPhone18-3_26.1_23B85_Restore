@interface WFContentAttribution
+ (id)attributionWithAppDescriptor:(id)a3 accountIdentifier:(id)a4 disclosureLevel:(unint64_t)a5 managedLevel:(unint64_t)a6;
+ (id)attributionWithAppDescriptor:(id)a3 disclosureLevel:(unint64_t)a4;
+ (id)attributionWithDisclosureLevel:(unint64_t)a3 origin:(id)a4 disclosureWarnings:(id)a5 originalItemIdentifier:(id)a6;
+ (id)attributionWithDisclosureLevel:(unint64_t)a3 origin:(id)a4 disclosureWarnings:(id)a5 originalItemIdentifiers:(id)a6;
+ (id)attributionWithDisclosureLevel:(unint64_t)a3 origin:(id)a4 disclosureWarnings:(id)a5 originalItemIdentifiers:(id)a6 count:(unint64_t)a7;
+ (id)attributionWithDisclosureLevel:(unint64_t)a3 origin:(id)a4 originalItemIdentifiers:(id)a5;
+ (id)objectWithWFSerializedRepresentation:(id)a3;
+ (id)shortcutsAppAttributionWithDisclosureLevel:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (WFContentAttribution)initWithCoder:(id)a3;
- (WFContentAttribution)initWithDisclosureLevel:(unint64_t)a3 origin:(id)a4 disclosureWarnings:(id)a5 originalItemIdentifiers:(id)a6 count:(unint64_t)a7;
- (id)attributionByReplacingAccountWithAppOrigin;
- (id)attributionByUpdatingItemsCount:(unint64_t)a3;
- (id)identifier;
- (id)wfSerializedRepresentation;
- (id)wfSerializedRepresentationWithPrivateItemIdentifiers;
- (unint64_t)count;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFContentAttribution

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(WFContentAttribution *)self origin];
  v7 = [v6 description];
  v8 = [v3 stringWithFormat:@"<%@: %p, origin: %@, count: %lu>", v5, self, v7, -[WFContentAttribution count](self, "count")];

  return v8;
}

- (id)wfSerializedRepresentationWithPrivateItemIdentifiers
{
  v3 = [(WFContentAttribution *)self wfSerializedRepresentation];
  v4 = [v3 mutableCopy];

  v5 = [(WFContentAttribution *)self privateItemIdentifiers];
  v6 = [v5 array];
  [v4 setObject:v6 forKey:@"privateItemIdentifiers"];

  return v4;
}

- (id)wfSerializedRepresentation
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(WFContentAttribution *)self origin];
  v4 = [v3 wfSerializedRepresentation];

  if (v4)
  {
    v5 = MEMORY[0x277CBEB38];
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[WFContentAttribution disclosureLevel](self, "disclosureLevel", @"disclosureLevel"}];
    v13[0] = v6;
    v13[1] = v4;
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
      v10 = [(WFContentAttribution *)self origin];
      *buf = 136315394;
      v15 = "[WFContentAttribution wfSerializedRepresentation]";
      v16 = 2114;
      v17 = v10;
      _os_log_impl(&dword_21E1BD000, v6, OS_LOG_TYPE_FAULT, "%s Could not serialize origin: %{public}@", buf, 0x16u);
    }

    v9 = 0;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v9 = a3;
  [v9 encodeInteger:-[WFContentAttribution disclosureLevel](self forKey:{"disclosureLevel"), @"disclosureLevel"}];
  v4 = [(WFContentAttribution *)self disclosureWarnings];
  v5 = [v4 array];
  [v9 encodeObject:v5 forKey:@"disclosureWarnings"];

  v6 = [(WFContentAttribution *)self origin];
  [v9 encodeObject:v6 forKey:@"origin"];

  v7 = [(WFContentAttribution *)self privateItemIdentifiers];
  v8 = [v7 array];
  [v9 encodeObject:v8 forKey:@"privateItemIdentifiers"];

  [v9 encodeInteger:-[WFContentAttribution count](self forKey:{"count"), @"count"}];
}

- (WFContentAttribution)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"disclosureLevel"];
  v6 = +[WFDisclosureWarning allDisclosureWarningClasses];
  v7 = [v6 setByAddingObject:objc_opt_class()];
  v8 = [v4 decodeObjectOfClasses:v7 forKey:@"disclosureWarnings"];

  v9 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [v4 decodeObjectOfClasses:v11 forKey:@"privateItemIdentifiers"];

  v13 = +[WFContentLocation allContentLocationClasses];
  v14 = [v4 decodeObjectOfClasses:v13 forKey:@"origin"];

  v15 = [v4 decodeIntegerForKey:@"count"];
  v16 = [MEMORY[0x277CBEB70] orderedSetWithArray:v12];
  v17 = [(WFContentAttribution *)self initWithDisclosureLevel:v5 origin:v14 disclosureWarnings:v8 originalItemIdentifiers:v16 count:v15];

  return v17;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else if ([(WFContentAttribution *)v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = [(WFContentAttribution *)self disclosureLevel];
    if (v6 == [(WFContentAttribution *)v5 disclosureLevel])
    {
      v7 = [(WFContentAttribution *)self origin];
      v8 = [(WFContentAttribution *)v5 origin];
      if ([v7 isEqual:v8] && (v9 = -[WFContentAttribution count](self, "count"), v9 == -[WFContentAttribution count](v5, "count")))
      {
        v10 = [(WFContentAttribution *)self privateItemIdentifiers];
        v11 = [(WFContentAttribution *)v5 privateItemIdentifiers];
        v12 = [v10 isEqualToOrderedSet:v11];
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
  v3 = [(WFContentAttribution *)self disclosureLevel];
  v4 = [(WFContentAttribution *)self count];
  v5 = [(WFContentAttribution *)self origin];
  v6 = [v5 hash];
  v7 = [(WFContentAttribution *)self privateItemIdentifiers];
  v8 = v3 ^ v4 ^ v6;
  v9 = [v7 hash] ^ 0x9E3779B97F4A7C15;

  return v8 ^ v9;
}

- (unint64_t)count
{
  result = self->_count;
  if (!result)
  {
    v4 = [(WFContentAttribution *)self privateItemIdentifiers];
    self->_count = [v4 count];

    return self->_count;
  }

  return result;
}

- (id)identifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(WFContentAttribution *)self origin];
  v5 = [v4 identifier];
  v6 = [v3 stringWithFormat:@"com.apple.Shortcuts.attribution_%@_%lu", v5, -[WFContentAttribution disclosureLevel](self, "disclosureLevel"), 0];

  return v6;
}

- (id)attributionByUpdatingItemsCount:(unint64_t)a3
{
  if ([(WFContentAttribution *)self count]== a3)
  {
    v5 = self;
  }

  else
  {
    v6 = [WFContentAttribution alloc];
    v7 = [(WFContentAttribution *)self disclosureLevel];
    v8 = [(WFContentAttribution *)self origin];
    v9 = [(WFContentAttribution *)self disclosureWarnings];
    v10 = [v9 array];
    v11 = [(WFContentAttribution *)self privateItemIdentifiers];
    v5 = [(WFContentAttribution *)v6 initWithDisclosureLevel:v7 origin:v8 disclosureWarnings:v10 originalItemIdentifiers:v11 count:a3];
  }

  return v5;
}

- (id)attributionByReplacingAccountWithAppOrigin
{
  v3 = [(WFContentAttribution *)self origin];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(WFContentAttribution *)self origin];
    v6 = [(WFContentAttribution *)self disclosureLevel];
    v7 = [v5 appContentLocation];
    v8 = [(WFContentAttribution *)self disclosureWarnings];
    v9 = [v8 array];
    v10 = [(WFContentAttribution *)self privateItemIdentifiers];
    v11 = [WFContentAttribution attributionWithDisclosureLevel:v6 origin:v7 disclosureWarnings:v9 originalItemIdentifiers:v10 count:[(WFContentAttribution *)self count]];
  }

  else
  {
    v11 = self;
  }

  return v11;
}

- (WFContentAttribution)initWithDisclosureLevel:(unint64_t)a3 origin:(id)a4 disclosureWarnings:(id)a5 originalItemIdentifiers:(id)a6 count:(unint64_t)a7
{
  v28 = *MEMORY[0x277D85DE8];
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (!v13)
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
    v17->_disclosureLevel = a3;
    objc_storeStrong(&v17->_origin, a4);
    v18->_count = a7;
    v19 = [MEMORY[0x277CBEB70] orderedSetWithArray:v14];
    disclosureWarnings = v18->_disclosureWarnings;
    v18->_disclosureWarnings = v19;

    if (a3 == 1)
    {
      v21 = v15;
    }

    else
    {
      v21 = [MEMORY[0x277CBEB70] orderedSet];
    }

    privateItemIdentifiers = v18->_privateItemIdentifiers;
    v18->_privateItemIdentifiers = v21;

    v23 = v18;
  }

  return v18;
}

+ (id)attributionWithDisclosureLevel:(unint64_t)a3 origin:(id)a4 disclosureWarnings:(id)a5 originalItemIdentifiers:(id)a6 count:(unint64_t)a7
{
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = [[a1 alloc] initWithDisclosureLevel:a3 origin:v14 disclosureWarnings:v13 originalItemIdentifiers:v12 count:a7];

  return v15;
}

+ (id)attributionWithAppDescriptor:(id)a3 accountIdentifier:(id)a4 disclosureLevel:(unint64_t)a5 managedLevel:(unint64_t)a6
{
  if (a4)
  {
    [WFAccountContentLocation locationWithAccountIdentifier:a4 appDescriptor:a3 managedLevel:a6];
  }

  else
  {
    [WFAppContentLocation locationWithAppDescriptor:a3, 0, a5, a6];
  }
  v8 = ;
  v9 = [a1 attributionWithDisclosureLevel:a5 origin:v8 originalItemIdentifier:0];

  return v9;
}

+ (id)attributionWithAppDescriptor:(id)a3 disclosureLevel:(unint64_t)a4
{
  v6 = [WFAppContentLocation locationWithAppDescriptor:a3];
  v7 = [a1 attributionWithDisclosureLevel:a4 origin:v6 originalItemIdentifier:0];

  return v7;
}

+ (id)objectWithWFSerializedRepresentation:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 wfObjectOfClass:objc_opt_class() forKey:@"disclosureLevel"];
  v6 = [v5 unsignedIntegerValue];

  v7 = [v4 valueForKey:@"origin"];
  v8 = [WFContentLocation objectWithWFSerializedRepresentation:v7];

  v9 = [v4 wfObjectOfClass:objc_opt_class() forKey:@"count"];
  v10 = [v9 unsignedIntegerValue];

  if (v8)
  {
    v11 = [v4 objectForKey:@"privateItemIdentifiers"];
    if (v11)
    {
      v12 = [objc_alloc(MEMORY[0x277CBEB70]) initWithArray:v11];
    }

    else
    {
      v12 = 0;
    }

    v15 = [a1 alloc];
    v14 = [v15 initWithDisclosureLevel:v6 origin:v8 disclosureWarnings:MEMORY[0x277CBEBF8] originalItemIdentifiers:v12 count:v10];
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

+ (id)shortcutsAppAttributionWithDisclosureLevel:(unint64_t)a3
{
  v5 = objc_alloc(MEMORY[0x277CD3A58]);
  v6 = [v5 initWithBundleIdentifier:*MEMORY[0x277D7A338]];
  v7 = [MEMORY[0x277CD3A88] sharedResolver];
  v8 = [v7 resolvedAppMatchingDescriptor:v6];

  v9 = [WFAppContentLocation locationWithAppDescriptor:v8];
  v10 = objc_opt_new();
  v11 = [a1 attributionWithDisclosureLevel:a3 origin:v9 originalItemIdentifiers:v10];

  return v11;
}

+ (id)attributionWithDisclosureLevel:(unint64_t)a3 origin:(id)a4 disclosureWarnings:(id)a5 originalItemIdentifier:(id)a6
{
  v10 = MEMORY[0x277CBEB70];
  v11 = a5;
  v12 = a4;
  if (a6)
  {
    v13 = [v10 orderedSetWithObject:a6];
  }

  else
  {
    v13 = objc_opt_new();
  }

  v14 = v13;
  v15 = [a1 attributionWithDisclosureLevel:a3 origin:v12 disclosureWarnings:v11 originalItemIdentifiers:v13];

  return v15;
}

+ (id)attributionWithDisclosureLevel:(unint64_t)a3 origin:(id)a4 disclosureWarnings:(id)a5 originalItemIdentifiers:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [[a1 alloc] initWithDisclosureLevel:a3 origin:v12 disclosureWarnings:v11 originalItemIdentifiers:v10 count:{objc_msgSend(v10, "count")}];

  return v13;
}

+ (id)attributionWithDisclosureLevel:(unint64_t)a3 origin:(id)a4 originalItemIdentifiers:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a1 alloc];
  v11 = [v8 count];
  v12 = [v10 initWithDisclosureLevel:a3 origin:v9 disclosureWarnings:MEMORY[0x277CBEBF8] originalItemIdentifiers:v8 count:v11];

  return v12;
}

@end