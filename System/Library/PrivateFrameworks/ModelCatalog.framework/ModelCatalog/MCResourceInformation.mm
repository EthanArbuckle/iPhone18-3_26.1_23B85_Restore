@interface MCResourceInformation
- (MCResourceInformation)initWithCoder:(id)coder;
- (NSString)debugDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MCResourceInformation

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_18E31F7C0(coderCopy);
}

- (MCResourceInformation)initWithCoder:(id)coder
{
  coderCopy = coder;
  ResourceInformation.init(coder:)();
  return result;
}

- (NSString)debugDescription
{
  selfCopy = self;
  sub_18E31FDE0();

  v3 = sub_18E44EA8C();

  return v3;
}

@end