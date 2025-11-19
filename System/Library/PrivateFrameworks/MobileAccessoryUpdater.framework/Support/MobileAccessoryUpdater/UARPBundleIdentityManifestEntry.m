@interface UARPBundleIdentityManifestEntry
- (UARPBundleIdentityManifestEntry)initWithName:(id)a3 digest:(id)a4 trusted:(BOOL)a5;
- (id)descriptionWithTabDepth:(unint64_t)a3;
- (id)getTabs:(unint64_t)a3;
- (void)dealloc;
@end

@implementation UARPBundleIdentityManifestEntry

- (UARPBundleIdentityManifestEntry)initWithName:(id)a3 digest:(id)a4 trusted:(BOOL)a5
{
  v10.receiver = self;
  v10.super_class = UARPBundleIdentityManifestEntry;
  v8 = [(UARPBundleIdentityManifestEntry *)&v10 init];
  if (v8)
  {
    v8->_name = [a3 copy];
    v8->_digest = [a4 copy];
    v8->_trusted = a5;
  }

  return v8;
}

- (void)dealloc
{
  [(NSString *)self->_name dealloc];

  v3.receiver = self;
  v3.super_class = UARPBundleIdentityManifestEntry;
  [(UARPBundleIdentityManifestEntry *)&v3 dealloc];
}

- (id)getTabs:(unint64_t)a3
{
  for (i = +[NSMutableString string]; a3; --a3)
  {
    [i appendString:@"\t"];
  }

  return i;
}

- (id)descriptionWithTabDepth:(unint64_t)a3
{
  v5 = sub_10002D978(a3);
  v6 = sub_10002D978(a3 + 1);
  v7 = +[NSMutableString string];
  v8 = objc_opt_class();
  [v7 appendFormat:@"%@%@\n", v5, NSStringFromClass(v8)];
  [v7 appendFormat:@"%@{\n", v5];
  [v7 appendFormat:@"%@\tName: %@\n", v6, self->_name];
  [v7 appendFormat:@"%@\tDigest: %@\n", v6, self->_digest];
  if (self->_trusted)
  {
    v9 = "YES";
  }

  else
  {
    v9 = "NO";
  }

  [v7 appendFormat:@"%@\tTrusted: %s\n", v6, v9];
  [v7 appendFormat:@"%@}", v5];

  return [NSString stringWithString:v7];
}

@end