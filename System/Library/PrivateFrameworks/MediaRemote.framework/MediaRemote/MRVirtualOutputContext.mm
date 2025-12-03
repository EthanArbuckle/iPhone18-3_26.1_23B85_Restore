@interface MRVirtualOutputContext
- (BOOL)isVolumeControlAvailable;
- (MRVirtualOutputContext)initWithUID:(id)d;
- (float)volume;
@end

@implementation MRVirtualOutputContext

- (MRVirtualOutputContext)initWithUID:(id)d
{
  dCopy = d;
  v6 = +[MRVirtualOutputContextManager sharedManager];
  v7 = [v6 fetchForUID:dCopy];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = MRVirtualOutputContext;
    v9 = [(MRVirtualOutputContext *)&v14 init];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_uniqueIdentifier, d);
      v11 = +[MRVirtualOutputContextManager sharedManager];
      [v11 addOutputContext:v10];
    }

    v8 = v10;
    self = v8;
  }

  v12 = v8;

  return v12;
}

- (BOOL)isVolumeControlAvailable
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  outputDevices = [(MRVirtualOutputContext *)self outputDevices];
  v3 = [outputDevices countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(outputDevices);
        }

        if ([*(*(&v8 + 1) + 8 * i) isVolumeControlAvailable])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [outputDevices countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v6 = *MEMORY[0x1E69E9840];
  return v3;
}

- (float)volume
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  outputDevices = [(MRVirtualOutputContext *)self outputDevices];
  v3 = [outputDevices countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    v6 = 0.0;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(outputDevices);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        [v8 volume];
        if (v6 <= v9)
        {
          [v8 volume];
          v6 = v10;
        }
      }

      v4 = [outputDevices countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 0.0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v6;
}

@end