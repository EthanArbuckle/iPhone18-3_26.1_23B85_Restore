@interface CRKURLResources
- (CRKURLResources)initWithResources:(id)a3;
- (NSDate)lastModificationDate;
- (NSNumber)documentIdentifier;
- (NSNumber)isDirectory;
- (id)copyWithZone:(_NSZone *)a3;
- (id)immutableResources;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)mutableResources;
- (id)underlyingResources;
- (unint64_t)size;
@end

@implementation CRKURLResources

- (CRKURLResources)initWithResources:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CRKURLResources;
  v5 = [(CRKURLResources *)&v9 init];
  if (v5)
  {
    v6 = [v4 mutableCopy];
    resources = v5->_resources;
    v5->_resources = v6;
  }

  return v5;
}

- (id)underlyingResources
{
  v2 = [(CRKURLResources *)self resources];
  v3 = [v2 copy];

  return v3;
}

- (NSNumber)isDirectory
{
  v2 = [(CRKURLResources *)self resources];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277CBE868]];

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
  v2 = [(CRKURLResources *)self resources];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277CBE7C8]];

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
  v2 = [(CRKURLResources *)self resources];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277CBE7B0]];

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
  v2 = [(CRKURLResources *)self resources];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277CBE838]];

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

  v6 = [v5 unsignedLongValue];
  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CRKURLResources alloc];
  v5 = [(CRKURLResources *)self resources];
  v6 = [(CRKURLResources *)v4 initWithResources:v5];

  return v6;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [CRKMutableURLResources alloc];
  v5 = [(CRKURLResources *)self resources];
  v6 = [(CRKURLResources *)v4 initWithResources:v5];

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