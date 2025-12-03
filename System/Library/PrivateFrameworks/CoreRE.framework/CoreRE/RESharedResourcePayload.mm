@interface RESharedResourcePayload
- (NSObject)clientObject;
- (RESharedResourcePayload)init;
- (RESharedResourcePayload)initWithCoder:(id)coder;
@end

@implementation RESharedResourcePayload

- (RESharedResourcePayload)init
{
  v3.receiver = self;
  v3.super_class = RESharedResourcePayload;
  return [(RESharedResourcePayload *)&v3 init];
}

- (RESharedResourcePayload)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = RESharedResourcePayload;
  return [(RESharedResourcePayload *)&v4 init];
}

- (NSObject)clientObject
{
  WeakRetained = objc_loadWeakRetained(&self->_clientObject);

  return WeakRetained;
}

@end