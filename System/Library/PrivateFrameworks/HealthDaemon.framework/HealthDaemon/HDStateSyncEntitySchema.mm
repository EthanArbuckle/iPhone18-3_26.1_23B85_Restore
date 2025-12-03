@interface HDStateSyncEntitySchema
+ (id)schemaWithDomain:(id)domain dataKeys:(id)keys;
- (BOOL)isEqual:(id)equal;
- (HDStateSyncEntitySchema)initWithCoder:(id)coder;
- (HDStateSyncEntitySchema)initWithWithDomain:(id)domain dataKeys:(id)keys;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDStateSyncEntitySchema

+ (id)schemaWithDomain:(id)domain dataKeys:(id)keys
{
  keysCopy = keys;
  domainCopy = domain;
  v7 = [[HDStateSyncEntitySchema alloc] initWithWithDomain:domainCopy dataKeys:keysCopy];

  return v7;
}

- (HDStateSyncEntitySchema)initWithWithDomain:(id)domain dataKeys:(id)keys
{
  domainCopy = domain;
  keysCopy = keys;
  v14.receiver = self;
  v14.super_class = HDStateSyncEntitySchema;
  v8 = [(HDStateSyncEntitySchema *)&v14 init];
  if (v8)
  {
    v9 = [domainCopy copy];
    domain = v8->_domain;
    v8->_domain = v9;

    v11 = [keysCopy copy];
    dataKeys = v8->_dataKeys;
    v8->_dataKeys = v11;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  domain = self->_domain;
  v6 = equalCopy->_domain;
  if (domain != v6 && (!v6 || ![(NSString *)domain isEqualToString:?]))
  {
    goto LABEL_9;
  }

  dataKeys = self->_dataKeys;
  v8 = equalCopy->_dataKeys;
  if (dataKeys == v8)
  {
LABEL_10:
    v9 = 1;
    goto LABEL_11;
  }

  if (!v8)
  {
LABEL_9:
    v9 = 0;
    goto LABEL_11;
  }

  v9 = [(NSSet *)dataKeys isEqual:?];
LABEL_11:

  return v9;
}

- (HDStateSyncEntitySchema)initWithCoder:(id)coder
{
  v13[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"domain"];
  v6 = MEMORY[0x277CBEB98];
  v13[0] = objc_opt_class();
  v13[1] = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v8 = [v6 setWithArray:v7];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"dataKeys"];

  v10 = [(HDStateSyncEntitySchema *)self initWithWithDomain:v5 dataKeys:v9];
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  domain = self->_domain;
  coderCopy = coder;
  [coderCopy encodeObject:domain forKey:@"domain"];
  [coderCopy encodeObject:self->_dataKeys forKey:@"dataKeys"];
}

@end