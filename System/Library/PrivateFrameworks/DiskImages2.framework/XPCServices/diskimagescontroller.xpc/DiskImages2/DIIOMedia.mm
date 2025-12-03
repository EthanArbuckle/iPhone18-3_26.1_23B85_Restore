@interface DIIOMedia
- (DIIOMedia)initWithDevName:(id)name error:(id *)error;
- (NSString)BSDName;
- (id)copyBlockDeviceWithError:(id *)error;
@end

@implementation DIIOMedia

- (DIIOMedia)initWithDevName:(id)name error:(id *)error
{
  nameCopy = name;
  lastPathComponent = [nameCopy lastPathComponent];
  v8 = IOBSDNameMatching(kIOMainPortDefault, 0, [lastPathComponent UTF8String]);
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v8);

  if (MatchingService)
  {
    v13.receiver = self;
    v13.super_class = DIIOMedia;
    self = [(DIIOObject *)&v13 initWithIOObject:MatchingService];
    selfCopy = self;
  }

  else
  {
    nameCopy = [NSString stringWithFormat:@"Failed to find IO media entry for %@", nameCopy];
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