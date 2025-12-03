@interface IDSOffGridModeOptions
- (IDSOffGridModeOptions)init;
- (IDSOffGridModeOptions)initWithCoder:(id)coder;
@end

@implementation IDSOffGridModeOptions

- (IDSOffGridModeOptions)init
{
  v3.receiver = self;
  v3.super_class = IDSOffGridModeOptions;
  return [(IDSOffGridModeOptions *)&v3 init];
}

- (IDSOffGridModeOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_alloc_init(IDSOffGridModeOptions);
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"entry-point-source"];

  [(IDSOffGridModeOptions *)v5 setEntryPointSource:v6];
  return v5;
}

@end