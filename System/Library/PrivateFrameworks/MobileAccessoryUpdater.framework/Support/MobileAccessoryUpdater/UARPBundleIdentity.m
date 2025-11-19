@interface UARPBundleIdentity
- (UARPBundleIdentity)initWithBuild:(id)a3 chipEntries:(id)a4;
- (id)description;
- (void)dealloc;
@end

@implementation UARPBundleIdentity

- (UARPBundleIdentity)initWithBuild:(id)a3 chipEntries:(id)a4
{
  v8.receiver = self;
  v8.super_class = UARPBundleIdentity;
  v6 = [(UARPBundleIdentity *)&v8 init];
  if (v6)
  {
    v6->_build = [a3 copy];
    v6->_chipEntries = [a4 copy];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = UARPBundleIdentity;
  [(UARPBundleIdentity *)&v3 dealloc];
}

- (id)description
{
  v3 = +[NSMutableString string];
  v4 = objc_opt_class();
  [v3 appendFormat:@"%@\n{\n", NSStringFromClass(v4)];
  [v3 appendFormat:@"\tBuild: %@\n", self->_build];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  chipEntries = self->_chipEntries;
  v6 = [(NSArray *)chipEntries countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(chipEntries);
        }

        [v3 appendFormat:@"%@\n", objc_msgSend(*(*(&v11 + 1) + 8 * v9), "descriptionWithTabDepth:", 1)];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSArray *)chipEntries countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [v3 appendString:@"}\n"];
  return [NSString stringWithString:v3];
}

@end