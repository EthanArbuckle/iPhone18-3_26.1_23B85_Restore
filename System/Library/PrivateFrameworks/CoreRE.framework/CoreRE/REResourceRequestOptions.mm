@interface REResourceRequestOptions
- (REResourceRequestOptions)init;
- (REResourceRequestOptions)initWithCoder:(id)coder;
@end

@implementation REResourceRequestOptions

- (REResourceRequestOptions)init
{
  v3.receiver = self;
  v3.super_class = REResourceRequestOptions;
  return [(REResourceRequestOptions *)&v3 init];
}

- (REResourceRequestOptions)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = REResourceRequestOptions;
  return [(REResourceRequestOptions *)&v4 init];
}

@end