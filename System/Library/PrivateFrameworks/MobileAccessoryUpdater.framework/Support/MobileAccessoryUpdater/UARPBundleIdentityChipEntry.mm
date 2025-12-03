@interface UARPBundleIdentityChipEntry
- (UARPBundleIdentityChipEntry)initWithChipName:(id)name boardID:(id)d chipID:(id)iD securityDomain:(id)domain manifest:(id)manifest;
- (id)descriptionWithTabDepth:(unint64_t)depth;
- (void)dealloc;
@end

@implementation UARPBundleIdentityChipEntry

- (UARPBundleIdentityChipEntry)initWithChipName:(id)name boardID:(id)d chipID:(id)iD securityDomain:(id)domain manifest:(id)manifest
{
  v14.receiver = self;
  v14.super_class = UARPBundleIdentityChipEntry;
  v12 = [(UARPBundleIdentityChipEntry *)&v14 init];
  if (v12)
  {
    v12->_chipName = [name copy];
    v12->_boardID = d;
    v12->_chipID = iD;
    v12->_securityDomain = domain;
    v12->_manifest = manifest;
  }

  return v12;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = UARPBundleIdentityChipEntry;
  [(UARPBundleIdentityChipEntry *)&v3 dealloc];
}

- (id)descriptionWithTabDepth:(unint64_t)depth
{
  v5 = sub_10002D978(depth);
  v6 = sub_10002D978(depth + 1);
  v7 = +[NSMutableString string];
  v8 = objc_opt_class();
  [v7 appendFormat:@"%@%@\n", v5, NSStringFromClass(v8)];
  [v7 appendFormat:@"%@{\n", v5];
  [v7 appendFormat:@"%@Chip name: %@\n", v6, self->_chipName];
  [v7 appendFormat:@"%@%@\n", v6, self->_boardID];
  [v7 appendFormat:@"%@%@\n", v6, self->_chipID];
  [v7 appendFormat:@"%@%@\n", v6, self->_securityDomain];
  manifestEpoch = self->_manifestEpoch;
  if (manifestEpoch)
  {
    [v7 appendFormat:@"%@%@\n", v6, manifestEpoch];
  }

  [v7 appendFormat:@"%@Manifest\n", v6];
  [v7 appendFormat:@"%@{\n", v6];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  manifest = self->_manifest;
  v11 = [(NSArray *)manifest countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(manifest);
        }

        [v7 appendFormat:@"%@\n", objc_msgSend(*(*(&v16 + 1) + 8 * v14), "descriptionWithTabDepth:", depth + 2)];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [(NSArray *)manifest countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }

  [v7 appendFormat:@"%@}\n", v6];
  [v7 appendFormat:@"%@}", v5];
  return [NSString stringWithString:v7];
}

@end