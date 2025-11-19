@interface MCResourceInformation
- (MCResourceInformation)initWithCoder:(id)a3;
- (NSString)debugDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MCResourceInformation

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_18E31F7C0(v4);
}

- (MCResourceInformation)initWithCoder:(id)a3
{
  v3 = a3;
  ResourceInformation.init(coder:)();
  return result;
}

- (NSString)debugDescription
{
  v2 = self;
  sub_18E31FDE0();

  v3 = sub_18E44EA8C();

  return v3;
}

@end