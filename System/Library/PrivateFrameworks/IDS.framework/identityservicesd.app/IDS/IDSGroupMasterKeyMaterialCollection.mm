@interface IDSGroupMasterKeyMaterialCollection
- (IDSGroupMasterKeyMaterialCollection)initWithMasterKeyMaterials:(id)materials membershipURIs:(id)is;
- (id)debugDescription;
- (id)description;
@end

@implementation IDSGroupMasterKeyMaterialCollection

- (IDSGroupMasterKeyMaterialCollection)initWithMasterKeyMaterials:(id)materials membershipURIs:(id)is
{
  materialsCopy = materials;
  isCopy = is;
  v12.receiver = self;
  v12.super_class = IDSGroupMasterKeyMaterialCollection;
  v9 = [(IDSGroupMasterKeyMaterialCollection *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_masterKeyMaterials, materials);
    objc_storeStrong(&v10->_membershipURIs, is);
  }

  return v10;
}

- (id)description
{
  v3 = objc_opt_class();
  membershipURIs = [(IDSGroupMasterKeyMaterialCollection *)self membershipURIs];
  v5 = [membershipURIs count];
  masterKeyMaterials = [(IDSGroupMasterKeyMaterialCollection *)self masterKeyMaterials];
  v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<%@: %p URICount: %lu, MkMCount: %lu>", v3, self, v5, [masterKeyMaterials count]);

  return v7;
}

- (id)debugDescription
{
  v3 = objc_opt_class();
  membershipURIs = [(IDSGroupMasterKeyMaterialCollection *)self membershipURIs];
  masterKeyMaterials = [(IDSGroupMasterKeyMaterialCollection *)self masterKeyMaterials];
  v6 = [NSString stringWithFormat:@"<%@: %p URIs: %@, MkMs: %@>", v3, self, membershipURIs, masterKeyMaterials];

  return v6;
}

@end