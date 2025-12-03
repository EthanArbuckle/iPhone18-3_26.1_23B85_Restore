@interface DIBlockDevice
+ (id)copyUnmatchedDiskImageWithRegEntryID:(unint64_t)d error:(id *)error;
- (NSString)mediumType;
- (id)copyIOMediaWithError:(id *)error;
- (id)copyRootBlockDeviceWithError:(id *)error;
@end

@implementation DIBlockDevice

- (id)copyIOMediaWithError:(id *)error
{
  v3 = [(DIIOObject *)self ioObjectWithClassName:@"IOMedia" iterateParent:0 error:error];
  v4 = [(DIIOObject *)[DIIOMedia alloc] initWithDIIOObject:v3];

  return v4;
}

- (NSString)mediumType
{
  v2 = [(DIIOObject *)self copyPropertyWithClass:objc_opt_class() key:@"Device Characteristics"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKeyedSubscript:@"Medium Type"];
    v5 = [v4 copy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)copyRootBlockDeviceWithError:(id *)error
{
  v5 = [(DIIOObject *)self copyPropertyWithClass:objc_opt_class() key:@"RootDeviceEntryID"];
  v6 = [DIBlockDevice alloc];
  if (v5)
  {
    v7 = -[DIIOObject initWithRegistryEntryID:error:](v6, "initWithRegistryEntryID:error:", [v5 unsignedLongLongValue], error);
  }

  else
  {
    v7 = [(DIIOObject *)v6 initWithDIIOObject:self];
  }

  v8 = v7;

  return v8;
}

+ (id)copyUnmatchedDiskImageWithRegEntryID:(unint64_t)d error:(id *)error
{
  v6 = [[DIIOObject alloc] initWithClassName:@"AppleDiskImagesController" error:error];
  v7 = [(DIIOObject *)v6 newIteratorWithOptions:0 error:error];
  if (v7)
  {
    v8 = 0;
    while (1)
    {
      v9 = [(DIIOObject *)[DIBlockDevice alloc] initWithIteratorNext:v7];

      if (!v9)
      {
        break;
      }

      v8 = v9;
      if ([(DIIOObject *)v9 registryEntryIDWithError:0]== d)
      {
        goto LABEL_8;
      }
    }

    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot find disk image with reg entry ID 0x%llx", d];
    v9 = [DIError nilWithEnumValue:153 verboseInfo:v10 error:error];
  }

  else
  {
    v9 = 0;
  }

LABEL_8:

  return v9;
}

@end