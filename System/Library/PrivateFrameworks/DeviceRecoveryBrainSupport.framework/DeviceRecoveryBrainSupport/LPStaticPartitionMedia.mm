@interface LPStaticPartitionMedia
+ (id)contentTypesForPartitionMedia;
+ (id)primaryMedia;
+ (id)supportedContentTypes;
- (id)children;
@end

@implementation LPStaticPartitionMedia

+ (id)supportedContentTypes
{
  if (objc_opt_class() == self)
  {
    contentTypesForPartitionMedia = [self contentTypesForPartitionMedia];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = &OBJC_METACLASS___LPStaticPartitionMedia;
    contentTypesForPartitionMedia = objc_msgSendSuper2(&v5, "supportedContentTypes");
  }

  return contentTypesForPartitionMedia;
}

+ (id)contentTypesForPartitionMedia
{
  v4[0] = @"GUID_partition_scheme";
  v4[1] = @"FDisk_partition_scheme";
  v4[2] = @"Apple_partition_scheme";
  v2 = [NSArray arrayWithObjects:v4 count:3];

  return v2;
}

+ (id)primaryMedia
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = +[LPStaticMedia allMedia];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 isPrimaryMedia])
        {
          v3 = v6;
          goto LABEL_12;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v3;
}

- (id)children
{
  v3 = [NSMutableArray arrayWithCapacity:16];
  iterator = 0;
  if (IORegistryEntryCreateIterator([(LPStaticMedia *)self ioMedia], "IOService", 1u, &iterator))
  {
    _os_log_pack_size();
    *_os_log_pack_fill() = 0;
    _LPLogPack(1);
    v4 = __NSArray0__;
  }

  else
  {
    v5 = iterator;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3254779904;
    v13[2] = __34__LPStaticPartitionMedia_children__block_invoke;
    v13[3] = &__block_descriptor_44_e8_32s_e8_v12__0I8l;
    v15 = iterator;
    v14 = v3;
    v8 = _NSConcreteStackBlock;
    v9 = 3254779904;
    v10 = __34__LPStaticPartitionMedia_children__block_invoke_13;
    v11 = &__block_descriptor_40_e8_32s_e5_v8__0l;
    v6 = v14;
    v12 = v6;
    iterateSafely(v5, 3, v13, &v8);
    IOObjectRelease(iterator);
    v4 = [NSArray arrayWithArray:v6, v8, v9, v10, v11];
  }

  return v4;
}

void __34__LPStaticPartitionMedia_children__block_invoke(uint64_t a1, uint64_t object)
{
  if (IOObjectConformsTo(object, "IOMedia"))
  {
    IORegistryIteratorExitEntry(*(a1 + 40));
    v4 = [LPStaticMedia mediaOfCorrectTypeGivenIOMedia:object];
    if (v4)
    {
      [*(a1 + 32) addObject:v4];
    }
  }
}

@end