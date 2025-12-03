@interface NTKDirectoryMonitor
- (NSString)path;
- (NTKDirectoryMonitor)init;
- (NTKDirectoryMonitor)initWithPath:(id)path handler:(id)handler;
@end

@implementation NTKDirectoryMonitor

- (NSString)path
{

  v2 = sub_22DCB611C();

  return v2;
}

- (NTKDirectoryMonitor)initWithPath:(id)path handler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = sub_22DCB612C();
  v7 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  v9 = sub_22DC74618(v5, v7, sub_22DC74608, v8);

  return v9;
}

- (NTKDirectoryMonitor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end