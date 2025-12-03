@interface DIIOMedia
- (DIIOMedia)initWithDevName:(id)name error:(id *)error;
- (NSString)BSDName;
- (id)copyBlockDeviceWithError:(id *)error;
@end

@implementation DIIOMedia

- (DIIOMedia)initWithDevName:(id)name error:(id *)error
{
  nameCopy = name;
  v7 = *MEMORY[0x277CD2898];
  lastPathComponent = [nameCopy lastPathComponent];
  v9 = IOBSDNameMatching(v7, 0, [lastPathComponent UTF8String]);
  MatchingService = IOServiceGetMatchingService(v7, v9);

  if (MatchingService)
  {
    v14.receiver = self;
    v14.super_class = DIIOMedia;
    self = [(DIIOObject *)&v14 initWithIOObject:MatchingService];
    selfCopy = self;
  }

  else
  {
    nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to find IO media entry for %@", nameCopy];
    selfCopy = [DIError nilWithEnumValue:153 verboseInfo:nameCopy error:error];
  }

  return selfCopy;
}

- (NSString)BSDName
{
  v2 = [(DIIOObject *)self copyPropertyWithClass:objc_opt_class() key:@"BSD Name"];

  return v2;
}

- (id)copyBlockDeviceWithError:(id *)error
{
  v3 = [(DIIOObject *)self ioObjectWithClassName:@"IOBlockStorageDevice" iterateParent:1 error:error];
  v4 = [(DIIOObject *)[DIBlockDevice alloc] initWithDIIOObject:v3];

  return v4;
}

@end