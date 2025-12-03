@interface LPStaticAPFSPhysicalStore
+ (id)supportedContentTypes;
- (id)container;
- (id)parent;
- (int)role;
@end

@implementation LPStaticAPFSPhysicalStore

+ (id)supportedContentTypes
{
  if (objc_opt_class() == self)
  {
    v6[0] = LPAPFSPhysicalStoreMediaUUID[0];
    v6[1] = LPAPFSPhysicalStoreDiagsMediaUUID[0];
    v6[2] = LPAPFSPhysicalStoreRecoveryMediaUUID[0];
    v3 = [NSArray arrayWithObjects:v6 count:3];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = &OBJC_METACLASS___LPStaticAPFSPhysicalStore;
    v3 = objc_msgSendSuper2(&v5, "supportedContentTypes");
  }

  return v3;
}

- (int)role
{
  content = [(LPStaticMedia *)self content];
  v3 = content;
  if (!content)
  {
    _os_log_pack_size();
    v5 = _os_log_pack_fill();
    *v5 = 136315138;
    *(v5 + 4) = "[LPStaticAPFSPhysicalStore role]";
    _LPLogPack(1);
    goto LABEL_7;
  }

  if (([content isEqualToString:LPAPFSPhysicalStoreDiagsMediaUUID[0]] & 1) == 0)
  {
    if ([v3 isEqualToString:LPAPFSPhysicalStoreRecoveryMediaUUID[0]])
    {
      v4 = 2;
      goto LABEL_8;
    }

LABEL_7:
    v4 = 0;
    goto LABEL_8;
  }

  v4 = 1;
LABEL_8:

  return v4;
}

- (id)parent
{
  iterator = 0;
  if (IORegistryEntryCreateIterator([(LPStaticMedia *)self ioMedia], "IOService", 3u, &iterator))
  {
    _os_log_pack_size();
    v2 = _os_log_pack_fill();
    *v2 = 136315138;
    *(v2 + 4) = "[LPStaticAPFSPhysicalStore parent]";
    _LPLogPack(1);
LABEL_3:
    v3 = 0;
    goto LABEL_4;
  }

  v5 = IOIteratorNext(iterator);
  if (!v5)
  {
    goto LABEL_3;
  }

  v6 = v5;
  v3 = 0;
  do
  {
    if (IOObjectConformsTo(v6, "IOMedia") && (CFProperty = IORegistryEntryCreateCFProperty(v6, @"Content", 0, 0)) != 0)
    {
      v8 = CFProperty;
      v9 = CFGetTypeID(CFProperty);
      if (v9 == CFStringGetTypeID())
      {
        v21 = 0u;
        v20 = 0u;
        v19 = 0u;
        v18 = 0u;
        v10 = +[LPStaticPartitionMedia contentTypesForPartitionMedia];
        v11 = [v10 countByEnumeratingWithState:&v18 objects:v23 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = 0;
          v14 = *v19;
          do
          {
            for (i = 0; i != v12; i = i + 1)
            {
              if (*v19 != v14)
              {
                objc_enumerationMutation(v10);
              }

              if (CFStringCompare(*(*(&v18 + 1) + 8 * i), v8, 0) == kCFCompareEqualTo)
              {
                v16 = [(LPStaticMedia *)[LPStaticPartitionMedia alloc] initWithIOMediaObject:v6];

                v13 = 1;
                v3 = v16;
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v18 objects:v23 count:16];
          }

          while (v12);
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }

      CFRelease(v8);
    }

    else
    {
      v13 = 0;
    }

    v17 = IOIteratorNext(iterator);
    if (!v17)
    {
      break;
    }

    v6 = v17;
  }

  while ((v13 & 1) == 0);
LABEL_4:

  return v3;
}

- (id)container
{
  v11 = 0;
  IORegistryEntryGetRegistryEntryID([(LPStaticMedia *)self ioMedia], &v11);
  v16[0] = @"IOParentMatch";
  v14 = @"IORegistryEntryID";
  v2 = [NSNumber numberWithUnsignedLongLong:v11];
  v15 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v17[0] = v3;
  v17[1] = @"IOMedia";
  v16[1] = @"IOProviderClass";
  v16[2] = @"IOPropertyMatch";
  v12 = @"Content";
  v13 = LPAPFSContainerMediaTypeUUID[0];
  v4 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v17[2] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:3];

  LODWORD(v3) = +[LPStaticMedia IOMainPort];
  v6 = v5;
  MatchingService = IOServiceGetMatchingService(v3, v6);
  if (MatchingService)
  {
    v8 = MatchingService;
    v9 = [(LPStaticMedia *)[LPStaticAPFSContainer alloc] initWithIOMediaObject:MatchingService];
    IOObjectRelease(v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end