@interface HDStateSyncEntitySchema
+ (id)schemaWithDomain:(id)a3 dataKeys:(id)a4;
- (BOOL)isEqual:(id)a3;
- (HDStateSyncEntitySchema)initWithCoder:(id)a3;
- (HDStateSyncEntitySchema)initWithWithDomain:(id)a3 dataKeys:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDStateSyncEntitySchema

+ (id)schemaWithDomain:(id)a3 dataKeys:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[HDStateSyncEntitySchema alloc] initWithWithDomain:v6 dataKeys:v5];

  return v7;
}

- (HDStateSyncEntitySchema)initWithWithDomain:(id)a3 dataKeys:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HDStateSyncEntitySchema;
  v8 = [(HDStateSyncEntitySchema *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    domain = v8->_domain;
    v8->_domain = v9;

    v11 = [v7 copy];
    dataKeys = v8->_dataKeys;
    v8->_dataKeys = v11;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  domain = self->_domain;
  v6 = v4->_domain;
  if (domain != v6 && (!v6 || ![(NSString *)domain isEqualToString:?]))
  {
    goto LABEL_9;
  }

  dataKeys = self->_dataKeys;
  v8 = v4->_dataKeys;
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

- (HDStateSyncEntitySchema)initWithCoder:(id)a3
{
  v13[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"domain"];
  v6 = MEMORY[0x277CBEB98];
  v13[0] = objc_opt_class();
  v13[1] = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v8 = [v6 setWithArray:v7];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"dataKeys"];

  v10 = [(HDStateSyncEntitySchema *)self initWithWithDomain:v5 dataKeys:v9];
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  domain = self->_domain;
  v5 = a3;
  [v5 encodeObject:domain forKey:@"domain"];
  [v5 encodeObject:self->_dataKeys forKey:@"dataKeys"];
}

@end