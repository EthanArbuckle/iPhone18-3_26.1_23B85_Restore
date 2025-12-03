@interface IDSGroupStableKeyMaterialCollection
- (IDSGroupStableKeyMaterialCollection)initWithStableKeyMaterials:(id)materials;
- (id)description;
@end

@implementation IDSGroupStableKeyMaterialCollection

- (IDSGroupStableKeyMaterialCollection)initWithStableKeyMaterials:(id)materials
{
  materialsCopy = materials;
  v9.receiver = self;
  v9.super_class = IDSGroupStableKeyMaterialCollection;
  v6 = [(IDSGroupStableKeyMaterialCollection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_stableKeyMaterials, materials);
  }

  return v7;
}

- (id)description
{
  v3 = objc_opt_class();
  stableKeyMaterials = [(IDSGroupStableKeyMaterialCollection *)self stableKeyMaterials];
  v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<%@: %p SKMCount: %lu>", v3, self, [stableKeyMaterials count]);

  return v5;
}

@end