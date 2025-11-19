@interface LPStaticAPFSContainer
+ (id)_containerWithPhysticalStoreRole:(int)a3;
+ (id)allAPFSContainers;
+ (id)supportedContentTypes;
- (id)physicalStores;
@end

@implementation LPStaticAPFSContainer

+ (id)supportedContentTypes
{
  v4 = LPAPFSContainerMediaTypeUUID[0];
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

+ (id)allAPFSContainers
{
  v2 = +[LPStaticMedia allMedia];
  v3 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v2 count]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(NSMutableArray *)v3 addObject:v9, v12];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [NSArray arrayWithArray:v3];

  return v10;
}

+ (id)_containerWithPhysticalStoreRole:(int)a3
{
  v4 = +[LPStaticPartitionMedia primaryMedia];
  v5 = v4;
  if (v4)
  {
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = [v4 children];
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v11 role] == a3)
          {
            v12 = [v11 container];
            goto LABEL_14;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v12 = 0;
LABEL_14:
  }

  else
  {
    _os_log_pack_size();
    v13 = _os_log_pack_fill();
    *v13 = 136315138;
    *(v13 + 4) = "+[LPStaticAPFSContainer _containerWithPhysticalStoreRole:]";
    _LPLogPack(1);
    v12 = 0;
  }

  return v12;
}

void __47__LPStaticAPFSContainer_volumesWithRole_group___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [(LPStaticMedia *)[LPStaticAPFSVolume alloc] initWithIOMediaObject:a2];
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (id)physicalStores
{
  v3 = [(LPStaticMedia *)self BSDName];
  [LPStaticMedia waitForIOMediaWithDevNode:v3];

  v4 = [NSMutableArray arrayWithCapacity:2];
  v17[1] = @"IOPropertyMatch";
  v18[0] = @"IOMedia";
  v17[0] = @"IOProviderClass";
  v15 = @"Content";
  v16 = LPAPFSPhysicalStoreMediaUUID[0];
  v5 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v18[1] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];

  iterator = 0;
  if (IORegistryEntryCreateIterator([(LPStaticMedia *)self ioMedia], "IOService", 3u, &iterator))
  {
    _os_log_pack_size();
    v7 = _os_log_pack_fill();
    *v7 = 136315138;
    *(v7 + 4) = "[LPStaticAPFSContainer physicalStores]";
    _LPLogPack(1);
    v8 = 0;
  }

  else
  {
    v9 = IOIteratorNext(iterator);
    if (v9)
    {
      v10 = v9;
      do
      {
        if (IOObjectConformsTo(v10, "IOMedia"))
        {
          IORegistryIteratorExitEntry(iterator);
        }

        matches = 0;
        IOServiceMatchPropertyTable(v10, v6, &matches);
        if (matches)
        {
          v11 = [(LPStaticMedia *)[LPStaticAPFSPhysicalStore alloc] initWithIOMediaObject:v10];
          if (v11)
          {
            [(NSMutableArray *)v4 addObject:v11];
          }
        }

        IOObjectRelease(v10);
        v10 = IOIteratorNext(iterator);
      }

      while (v10);
    }

    if (iterator)
    {
      IOObjectRelease(iterator);
    }

    v8 = [NSArray arrayWithArray:v4];
  }

  return v8;
}

@end