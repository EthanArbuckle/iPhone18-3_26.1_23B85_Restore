@interface OUObjectAsset
- (OUObjectAsset)init;
- (OUObjectAsset)initWithCoder:(id)a3;
- (OUObjectAsset)initWithDictionaryRepresentation:(id)a3;
- (id)GetAllObjects;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation OUObjectAsset

- (OUObjectAsset)init
{
  v8.receiver = self;
  v8.super_class = OUObjectAsset;
  v2 = [(OUObjectAsset *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    groups = v2->_groups;
    v2->_groups = v3;

    v5 = objc_opt_new();
    objects = v2->_objects;
    v2->_objects = v5;
  }

  return v2;
}

- (OUObjectAsset)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = OUObjectAsset;
  v5 = [(OUObjectAsset *)&v17 init];
  v6 = [v4 objectForKeyedSubscript:@"objects"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  objects = v5->_objects;
  v5->_objects = v7;

  if (!v5->_objects)
  {
    v9 = objc_opt_new();
    v10 = v5->_objects;
    v5->_objects = v9;
  }

  v11 = [v4 objectForKeyedSubscript:@"groups"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  groups = v5->_groups;
  v5->_groups = v12;

  if (!v5->_groups)
  {
    v14 = objc_opt_new();
    v15 = v5->_groups;
    v5->_groups = v14;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(OUObjectAsset);
  v5 = [(NSMutableDictionary *)self->_groups mutableCopy];
  groups = v4->_groups;
  v4->_groups = v5;

  v7 = [(NSMutableArray *)self->_objects mutableCopy];
  objects = v4->_objects;
  v4->_objects = v7;

  return v4;
}

- (OUObjectAsset)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = OUObjectAsset;
  v5 = [(OUObjectAsset *)&v18 init];
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"groups"];
  v10 = [v9 mutableCopy];

  v11 = [v10 mutableCopy];
  groups = v5->_groups;
  v5->_groups = v11;

  v13 = [v4 decodeObjectOfClasses:v8 forKey:@"objects"];
  v14 = [v13 mutableCopy];

  v15 = [v14 mutableCopy];
  objects = v5->_objects;
  v5->_objects = v15;

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_objects forKey:@"objects"];
  [v4 encodeObject:self->_groups forKey:@"groups"];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  [v3 setObject:self->_objects forKeyedSubscript:@"objects"];
  [v3 setObject:self->_groups forKeyedSubscript:@"groups"];
  v4 = [v3 copy];

  return v4;
}

- (id)GetAllObjects
{
  v2 = [(NSMutableArray *)self->_objects copy];

  return v2;
}

@end