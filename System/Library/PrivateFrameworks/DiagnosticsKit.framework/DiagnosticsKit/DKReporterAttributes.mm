@interface DKReporterAttributes
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToReportGeneratorAttributes:(id)attributes;
- (DKReporterAttributes)initWithExtension:(id)extension;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)_validateAndAddDomain:(id)domain withInfo:(id)info toManifest:(id)manifest;
- (void)_validateAndAddExtensionManifest:(id)manifest toManifest:(id)toManifest;
@end

@implementation DKReporterAttributes

- (void)_validateAndAddDomain:(id)domain withInfo:(id)info toManifest:(id)manifest
{
  v26 = *MEMORY[0x277D85DE8];
  domainCopy = domain;
  infoCopy = info;
  manifestCopy = manifest;
  v9 = [infoCopy alwaysGetKey:@"DKReporterManifestVersion" ofType:objc_opt_class()];
  v10 = [infoCopy alwaysGetKey:@"DKReporterManifestResources" ofType:objc_opt_class()];
  v11 = [MEMORY[0x277CBEB58] set];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v21 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v11 addObject:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v14);
  }

  v18 = [DKComponentIdentity componentIdentityWithDomain:domainCopy version:v9 resources:v11];
  if (v18)
  {
    [manifestCopy addObject:v18];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_validateAndAddExtensionManifest:(id)manifest toManifest:(id)toManifest
{
  v20 = *MEMORY[0x277D85DE8];
  manifestCopy = manifest;
  toManifestCopy = toManifest;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [manifestCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(manifestCopy);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [manifestCopy alwaysGetKey:v12 ofType:objc_opt_class()];
          [(DKReporterAttributes *)self _validateAndAddDomain:v12 withInfo:v13 toManifest:toManifestCopy];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [manifestCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (DKReporterAttributes)initWithExtension:(id)extension
{
  extensionCopy = extension;
  v23.receiver = self;
  v23.super_class = DKReporterAttributes;
  v6 = [(DKReporterAttributes *)&v23 init];
  if (v6)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uuid = v6->_uuid;
    v6->_uuid = uUID;

    objc_storeStrong(&v6->_extension, extension);
    infoDictionary = [extensionCopy infoDictionary];
    v10 = [infoDictionary objectForKeyedSubscript:*MEMORY[0x277CBEC50]];
    version = v6->_version;
    v6->_version = v10;

    attributes = [extensionCopy attributes];
    v13 = [attributes objectForKeyedSubscript:@"DKReporterName"];
    name = v6->_name;
    v6->_name = v13;

    attributes2 = [extensionCopy attributes];
    v16 = [attributes2 objectForKeyedSubscript:@"DKBundleIdentifier"];
    bundleIdentifier = v6->_bundleIdentifier;
    v6->_bundleIdentifier = v16;

    if (!v6->_bundleIdentifier)
    {
      objc_storeStrong(&v6->_bundleIdentifier, @"Default");
    }

    v6->_headless = 1;
    v18 = [MEMORY[0x277CBEB58] set];
    attributes3 = [extensionCopy attributes];
    v20 = [attributes3 alwaysGetKey:@"DKReporterManifest" ofType:objc_opt_class()];

    [(DKReporterAttributes *)v6 _validateAndAddExtensionManifest:v20 toManifest:v18];
    manifest = v6->_manifest;
    v6->_manifest = v18;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_version copyWithZone:zone];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  v8 = [(NSString *)self->_name copyWithZone:zone];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v10 = [(NSSet *)self->_manifest copyWithZone:zone];
  v11 = *(v5 + 48);
  *(v5 + 48) = v10;

  objc_storeStrong((v5 + 16), self->_extension);
  v12 = [(NSUUID *)self->_uuid copyWithZone:zone];
  v13 = *(v5 + 56);
  *(v5 + 56) = v12;

  return v5;
}

- (unint64_t)hash
{
  uuid = [(DKReporterAttributes *)self uuid];
  v3 = [uuid hash];

  return v3;
}

- (BOOL)isEqualToReportGeneratorAttributes:(id)attributes
{
  attributesCopy = attributes;
  uuid = [(DKReporterAttributes *)self uuid];
  uuid2 = [attributesCopy uuid];

  LOBYTE(attributesCopy) = [uuid isEqual:uuid2];
  return attributesCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = self == equalCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(DKReporterAttributes *)self isEqualToReportGeneratorAttributes:equalCopy];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  name = [(DKReporterAttributes *)self name];
  version = [(DKReporterAttributes *)self version];
  uuid = [(DKReporterAttributes *)self uuid];
  v9 = [v3 stringWithFormat:@"<%@: %p %@, version: %@, uuid: %@>", v5, self, name, version, uuid];;

  return v9;
}

@end