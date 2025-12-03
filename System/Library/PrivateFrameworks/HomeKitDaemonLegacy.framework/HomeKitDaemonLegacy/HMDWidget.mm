@interface HMDWidget
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (HMDWidget)initWithIdentifier:(id)identifier kind:(id)kind;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (unint64_t)hash;
@end

@implementation HMDWidget

- (NSArray)attributeDescriptions
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  identifier = [(HMDWidget *)self identifier];
  v5 = [v3 initWithName:@"Identifier" value:identifier];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  kind = [(HMDWidget *)self kind];
  v8 = [v6 initWithName:@"Kind" value:kind];
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (unint64_t)hash
{
  identifier = [(HMDWidget *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    identifier = [(HMDWidget *)self identifier];
    identifier2 = [v6 identifier];
    if ([identifier isEqualToString:identifier2])
    {
      kind = [(HMDWidget *)self kind];
      kind2 = [v6 kind];
      v11 = [kind isEqualToString:kind2];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (HMDWidget)initWithIdentifier:(id)identifier kind:(id)kind
{
  identifierCopy = identifier;
  kindCopy = kind;
  if (!identifierCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v8 = kindCopy;
  if (!kindCopy)
  {
LABEL_7:
    v15 = _HMFPreconditionFailure();
    return +[(HMDWidget *)v15];
  }

  v17.receiver = self;
  v17.super_class = HMDWidget;
  v9 = [(HMDWidget *)&v17 init];
  if (v9)
  {
    v10 = [identifierCopy copy];
    identifier = v9->_identifier;
    v9->_identifier = v10;

    v12 = [v8 copy];
    kind = v9->_kind;
    v9->_kind = v12;
  }

  return v9;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end