@interface REReferenceObjectPayload
- (REReferenceObjectPayload)init;
@end

@implementation REReferenceObjectPayload

- (REReferenceObjectPayload)init
{
  v3.receiver = self;
  v3.super_class = REReferenceObjectPayload;
  return [(RESharedResourcePayload *)&v3 init];
}

@end