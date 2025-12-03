@interface MBPlaceholderEntitlements
- (BOOL)writeToFile:(id)file error:(id *)error;
- (MBPlaceholderEntitlements)initWithBundleID:(id)d relativePath:(id)path entitlements:(id)entitlements;
- (MBPlaceholderEntitlements)initWithPropertyList:(id)list;
- (id)propertyList;
- (void)dealloc;
@end

@implementation MBPlaceholderEntitlements

- (MBPlaceholderEntitlements)initWithBundleID:(id)d relativePath:(id)path entitlements:(id)entitlements
{
  v10.receiver = self;
  v10.super_class = MBPlaceholderEntitlements;
  v8 = [(MBPlaceholderEntitlements *)&v10 init];
  if (v8)
  {
    v8->_bundleID = d;
    v8->_relativePath = path;
    v8->_entitlements = entitlements;
  }

  return v8;
}

- (MBPlaceholderEntitlements)initWithPropertyList:(id)list
{
  v6.receiver = self;
  v6.super_class = MBPlaceholderEntitlements;
  v4 = [(MBPlaceholderEntitlements *)&v6 init];
  if (v4)
  {
    v4->_bundleID = [list objectForKeyedSubscript:@"bundleID"];
    v4->_relativePath = [list objectForKeyedSubscript:@"relativePath"];
    v4->_entitlements = [list objectForKeyedSubscript:@"entitlements"];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MBPlaceholderEntitlements;
  [(MBPlaceholderEntitlements *)&v3 dealloc];
}

- (id)propertyList
{
  v3[0] = @"bundleID";
  v3[1] = @"relativePath";
  v4 = *&self->_bundleID;
  v3[2] = @"entitlements";
  entitlements = self->_entitlements;
  return [NSDictionary dictionaryWithObjects:&v4 forKeys:v3 count:3];
}

- (BOOL)writeToFile:(id)file error:(id *)error
{
  v6 = [NSPropertyListSerialization dataWithPropertyList:self->_entitlements format:200 options:0 error:error];
  if (v6)
  {

    LOBYTE(v6) = [(NSData *)v6 writeToFile:file options:1 error:error];
  }

  return v6;
}

@end