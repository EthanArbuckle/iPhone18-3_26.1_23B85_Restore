@interface CRKURLResources
- (CRKURLResources)initWithResources:(id)resources;
- (NSDate)lastModificationDate;
- (NSNumber)documentIdentifier;
- (NSNumber)isDirectory;
- (id)copyWithZone:(_NSZone *)zone;
- (id)immutableResources;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)mutableResources;
- (id)underlyingResources;
- (unint64_t)size;
@end

@implementation CRKURLResources

- (CRKURLResources)initWithResources:(id)resources
{
  resourcesCopy = resources;
  v9.receiver = self;
  v9.super_class = CRKURLResources;
  v5 = [(CRKURLResources *)&v9 init];
  if (v5)
  {
    v6 = [resourcesCopy mutableCopy];
    resources = v5->_resources;
    v5->_resources = v6;
  }

  return v5;
}

- (id)underlyingResources
{
  resources = [(CRKURLResources *)self resources];
  v3 = [resources copy];

  return v3;
}

- (NSNumber)isDirectory
{
  resources = [(CRKURLResources *)self resources];
  v3 = [resources objectForKeyedSubscript:*MEMORY[0x277CBE868]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (NSNumber)documentIdentifier
{
  resources = [(CRKURLResources *)self resources];
  v3 = [resources objectForKeyedSubscript:*MEMORY[0x277CBE7C8]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (NSDate)lastModificationDate
{
  resources = [(CRKURLResources *)self resources];
  v3 = [resources objectForKeyedSubscript:*MEMORY[0x277CBE7B0]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (unint64_t)size
{
  resources = [(CRKURLResources *)self resources];
  v3 = [resources objectForKeyedSubscript:*MEMORY[0x277CBE838]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  unsignedLongValue = [v5 unsignedLongValue];
  return unsignedLongValue;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CRKURLResources alloc];
  resources = [(CRKURLResources *)self resources];
  v6 = [(CRKURLResources *)v4 initWithResources:resources];

  return v6;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [CRKMutableURLResources alloc];
  resources = [(CRKURLResources *)self resources];
  v6 = [(CRKURLResources *)v4 initWithResources:resources];

  return v6;
}

- (id)immutableResources
{
  v2 = [(CRKURLResources *)self copy];

  return v2;
}

- (id)mutableResources
{
  v2 = [(CRKURLResources *)self mutableCopy];

  return v2;
}

@end