@interface IDSGroupMasterKeyMaterialCollection
- (IDSGroupMasterKeyMaterialCollection)initWithMasterKeyMaterials:(id)a3 membershipURIs:(id)a4;
- (id)debugDescription;
- (id)description;
@end

@implementation IDSGroupMasterKeyMaterialCollection

- (IDSGroupMasterKeyMaterialCollection)initWithMasterKeyMaterials:(id)a3 membershipURIs:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = IDSGroupMasterKeyMaterialCollection;
  v9 = [(IDSGroupMasterKeyMaterialCollection *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_masterKeyMaterials, a3);
    objc_storeStrong(&v10->_membershipURIs, a4);
  }

  return v10;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(IDSGroupMasterKeyMaterialCollection *)self membershipURIs];
  v5 = [v4 count];
  v6 = [(IDSGroupMasterKeyMaterialCollection *)self masterKeyMaterials];
  v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<%@: %p URICount: %lu, MkMCount: %lu>", v3, self, v5, [v6 count]);

  return v7;
}

- (id)debugDescription
{
  v3 = objc_opt_class();
  v4 = [(IDSGroupMasterKeyMaterialCollection *)self membershipURIs];
  v5 = [(IDSGroupMasterKeyMaterialCollection *)self masterKeyMaterials];
  v6 = [NSString stringWithFormat:@"<%@: %p URIs: %@, MkMs: %@>", v3, self, v4, v5];

  return v6;
}

@end