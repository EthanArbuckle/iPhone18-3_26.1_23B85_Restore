@interface UARPManifestEntry
- (NSDictionary)personalizationDictionary;
- (UARPManifestEntry)initWithName:(id)name digest:(id)digest trusted:(BOOL)trusted productionMode:(BOOL)mode securityMode:(BOOL)securityMode;
- (id)descriptionWithTabDepth:(unint64_t)depth;
@end

@implementation UARPManifestEntry

- (UARPManifestEntry)initWithName:(id)name digest:(id)digest trusted:(BOOL)trusted productionMode:(BOOL)mode securityMode:(BOOL)securityMode
{
  v14.receiver = self;
  v14.super_class = UARPManifestEntry;
  v12 = [(UARPManifestEntry *)&v14 init];
  if (v12)
  {
    v12->_name = [name copy];
    v12->_digest = [digest copy];
    v12->_trusted = trusted;
    v12->_productionMode = mode;
    v12->_securityMode = securityMode;
  }

  return v12;
}

- (NSDictionary)personalizationDictionary
{
  v5[0] = self->_digest;
  v4[0] = kAMAuthInstallTagImageDigest;
  v4[1] = kAMAuthInstallTagImageEffectiveProductionMode;
  v5[1] = [NSNumber numberWithBool:self->_productionMode];
  v4[2] = kAMAuthInstallTagImageEffectiveSecurityMode;
  v5[2] = [NSNumber numberWithBool:self->_securityMode];
  v4[3] = kAMAuthInstallTagImageTrusted;
  v5[3] = [NSNumber numberWithBool:self->_trusted];
  return [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:4];
}

- (id)descriptionWithTabDepth:(unint64_t)depth
{
  v5 = sub_10002D978(depth);
  v6 = sub_10002D978(depth + 1);
  v7 = +[NSMutableString string];
  v8 = objc_opt_class();
  [v7 appendFormat:@"%@%@\n", v5, NSStringFromClass(v8)];
  [v7 appendFormat:@"%@{\n", v5];
  [v7 appendFormat:@"%@Name: %@\n", v6, self->_name];
  [v7 appendFormat:@"%@Digest: %@\n", v6, self->_digest];
  if (self->_trusted)
  {
    v9 = "YES";
  }

  else
  {
    v9 = "NO";
  }

  [v7 appendFormat:@"%@Trusted: %s\n", v6, v9];
  if (self->_productionMode)
  {
    v10 = "YES";
  }

  else
  {
    v10 = "NO";
  }

  [v7 appendFormat:@"%@Production mode: %s\n", v6, v10];
  if (self->_securityMode)
  {
    v11 = "YES";
  }

  else
  {
    v11 = "NO";
  }

  [v7 appendFormat:@"%@Security mode: %s\n", v6, v11];
  [v7 appendFormat:@"%@}", v5];

  return [NSString stringWithString:v7];
}

@end