@interface DIIOObject
+ (id)copyDiskImagesControllerWithError:(id *)a3;
- (DIIOObject)initWithClassName:(id)a3 error:(id *)a4;
- (DIIOObject)initWithDIIOObject:(id)a3;
- (DIIOObject)initWithIOObject:(unsigned int)a3 retain:(BOOL)a4;
- (DIIOObject)initWithIteratorNext:(id)a3;
- (DIIOObject)initWithRegistryEntryID:(unint64_t)a3 error:(id *)a4;
- (DIIOObject)ioObjectWithClassName:(id)a3 iterateParent:(BOOL)a4 error:(id *)a5;
- (NSString)ioClassName;
- (id)copyParentWithError:(id *)a3;
- (id)copyPropertyWithClass:(Class)a3 key:(id)a4;
- (unint64_t)registryEntryIDWithError:(id *)a3;
- (void)dealloc;
@end

@implementation DIIOObject

- (DIIOObject)initWithIOObject:(unsigned int)a3 retain:(BOOL)a4
{
  if (a3)
  {
    if (a4)
    {
      IOObjectRetain(a3);
    }

    v10.receiver = self;
    v10.super_class = DIIOObject;
    v6 = [(DIIOObject *)&v10 init];
    v7 = v6;
    if (v6)
    {
      v6->_ioObj = a3;
    }

    else
    {
      IOObjectRelease(a3);
    }

    self = v7;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (DIIOObject)initWithDIIOObject:(id)a3
{
  v4 = [a3 ioObj];

  return [(DIIOObject *)self initWithIOObject:v4 retain:1];
}

- (DIIOObject)initWithRegistryEntryID:(unint64_t)a3 error:(id *)a4
{
  v7 = *MEMORY[0x277CD2898];
  v8 = IORegistryEntryIDMatching(a3);
  MatchingService = IOServiceGetMatchingService(v7, v8);
  if (MatchingService)
  {
    self = [(DIIOObject *)self initWithIOObject:MatchingService];
    v10 = self;
  }

  else
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot find registry entry ID 0x%llx", a3];
    v10 = [DIError nilWithEnumValue:153 verboseInfo:v11 error:a4];
  }

  return v10;
}

- (DIIOObject)initWithClassName:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = *MEMORY[0x277CD2898];
  v8 = IOServiceMatching([v6 UTF8String]);
  MatchingService = IOServiceGetMatchingService(v7, v8);
  if (MatchingService)
  {
    self = [(DIIOObject *)self initWithIOObject:MatchingService];
    v10 = self;
  }

  else
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot find IO object of class %@", v6];
    v10 = [DIError nilWithEnumValue:153 verboseInfo:v11 error:a4];
  }

  return v10;
}

- (DIIOObject)initWithIteratorNext:(id)a3
{
  v4 = [a3 copyNextObject];

  return [(DIIOObject *)self initWithIOObject:v4];
}

- (unint64_t)registryEntryIDWithError:(id *)a3
{
  entryID = 0;
  RegistryEntryID = IORegistryEntryGetRegistryEntryID([(DIIOObject *)self ioObj], &entryID);
  if (!RegistryEntryID)
  {
    return entryID;
  }

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to get registry entry ID, ret %d", RegistryEntryID];
  [DIError failWithEnumValue:153 verboseInfo:v5 error:a3];

  return 0;
}

- (NSString)ioClassName
{
  v2 = IOObjectCopyClass([(DIIOObject *)self ioObj]);

  return v2;
}

- (void)dealloc
{
  ioObj = self->_ioObj;
  if (ioObj)
  {
    IOObjectRelease(ioObj);
    self->_ioObj = 0;
  }

  v4.receiver = self;
  v4.super_class = DIIOObject;
  [(DIIOObject *)&v4 dealloc];
}

- (DIIOObject)ioObjectWithClassName:(id)a3 iterateParent:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v8 = a3;
  v9 = [v8 UTF8String];
  if (v6)
  {
    v10 = 3;
  }

  else
  {
    v10 = 1;
  }

  v11 = [(DIIOObject *)self newIteratorWithOptions:v10 error:a5];
  if (v11)
  {
    v12 = 0;
    while (1)
    {
      v13 = [[DIIOObject alloc] initWithIteratorNext:v11];

      if (!v13)
      {
        break;
      }

      v12 = v13;
      if (IOObjectConformsTo([(DIIOObject *)v13 ioObj], v9))
      {
        goto LABEL_11;
      }
    }

    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot find %@ entry", v8];
    v13 = [DIError nilWithEnumValue:153 verboseInfo:v14 error:a5];
  }

  else
  {
    v13 = 0;
  }

LABEL_11:

  return v13;
}

- (id)copyPropertyWithClass:(Class)a3 key:(id)a4
{
  v5 = a4;
  v6 = [(DIIOObject *)self ioObj];
  CFProperty = IORegistryEntryCreateCFProperty(v6, v5, *MEMORY[0x277CBECE8], 0);

  if (CFProperty && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v8 = CFProperty;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyParentWithError:(id *)a3
{
  parent = 0;
  ParentEntry = IORegistryEntryGetParentEntry([(DIIOObject *)self ioObj], "IOService", &parent);
  if (ParentEntry)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to get parent registry entry, err code %d", ParentEntry];
    v6 = [DIError nilWithEnumValue:153 verboseInfo:v5 error:a3];
  }

  else
  {
    v7 = [DIIOObject alloc];
    return [(DIIOObject *)v7 initWithIOObject:parent];
  }

  return v6;
}

+ (id)copyDiskImagesControllerWithError:(id *)a3
{
  v4 = [[DIIOObject alloc] initWithClassName:@"AppleDiskImagesController" error:0];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [DIError nilWithEnumValue:153 verboseInfo:@"Failed to find DiskImages2 controller error:driver might not be installed", a3];
  }

  v7 = v6;

  return v7;
}

@end