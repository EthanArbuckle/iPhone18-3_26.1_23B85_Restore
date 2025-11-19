@interface NUDeviceTrait
- (BOOL)isLandscape;
- (NUDeviceTrait)initWithDeviceTraitSize:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation NUDeviceTrait

- (NUDeviceTrait)initWithDeviceTraitSize:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = NUDeviceTrait;
  result = [(NUDeviceTrait *)&v5 init];
  if (result)
  {
    result->_deviceTraitSize = a3;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [NUDeviceTrait alloc];
  v5 = [(NUDeviceTrait *)self deviceTraitSize];

  return [(NUDeviceTrait *)v4 initWithDeviceTraitSize:v5];
}

- (BOOL)isLandscape
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D75128] sharedApplication];
  v3 = [v2 windows];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = *v14;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v14 != v6)
      {
        objc_enumerationMutation(v4);
      }

      v8 = *(*(&v13 + 1) + 8 * v7);
      if ([v8 isKeyWindow])
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v9 = v8;

    if (v9)
    {
      v10 = [v9 windowScene];
      LOBYTE(v5) = ([v10 interfaceOrientation] - 3) < 2;

      goto LABEL_12;
    }

    LOBYTE(v5) = 0;
  }

  else
  {
LABEL_9:
    v9 = v4;
LABEL_12:
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

@end