@interface HDSourceRevision
- (HDSourceRevision)initWithSource:(id)source version:(id)version productType:(id)type operatingSystemVersion:(id *)systemVersion;
@end

@implementation HDSourceRevision

- (HDSourceRevision)initWithSource:(id)source version:(id)version productType:(id)type operatingSystemVersion:(id *)systemVersion
{
  sourceCopy = source;
  versionCopy = version;
  typeCopy = type;
  v18.receiver = self;
  v18.super_class = HDSourceRevision;
  v14 = [(HDSourceRevision *)&v18 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_sourceEntity, source);
    objc_storeStrong(&v15->_version, version);
    objc_storeStrong(&v15->_productType, type);
    v16 = *&systemVersion->var0;
    v15->_operatingSystemVersion.patchVersion = systemVersion->var2;
    *&v15->_operatingSystemVersion.majorVersion = v16;
  }

  return v15;
}

@end