@interface DIIOMedia
- (DIIOMedia)initWithDevName:(id)a3 error:(id *)a4;
- (NSString)BSDName;
- (id)copyBlockDeviceWithError:(id *)a3;
@end

@implementation DIIOMedia

- (DIIOMedia)initWithDevName:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = *MEMORY[0x277CD2898];
  v8 = [v6 lastPathComponent];
  v9 = IOBSDNameMatching(v7, 0, [v8 UTF8String]);
  MatchingService = IOServiceGetMatchingService(v7, v9);

  if (MatchingService)
  {
    v14.receiver = self;
    v14.super_class = DIIOMedia;
    self = [(DIIOObject *)&v14 initWithIOObject:MatchingService];
    v11 = self;
  }

  else
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to find IO media entry for %@", v6];
    v11 = [DIError nilWithEnumValue:153 verboseInfo:v12 error:a4];
  }

  return v11;
}

- (NSString)BSDName
{
  v2 = [(DIIOObject *)self copyPropertyWithClass:objc_opt_class() key:@"BSD Name"];

  return v2;
}

- (id)copyBlockDeviceWithError:(id *)a3
{
  v3 = [(DIIOObject *)self ioObjectWithClassName:@"IOBlockStorageDevice" iterateParent:1 error:a3];
  v4 = [(DIIOObject *)[DIBlockDevice alloc] initWithDIIOObject:v3];

  return v4;
}

@end