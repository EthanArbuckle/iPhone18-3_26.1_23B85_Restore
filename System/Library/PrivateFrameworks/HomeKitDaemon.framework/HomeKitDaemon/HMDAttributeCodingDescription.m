@interface HMDAttributeCodingDescription
- (NSAttributeDescription)attribute;
@end

@implementation HMDAttributeCodingDescription

- (NSAttributeDescription)attribute
{
  if (self)
  {
    self = [(HMDPropertyCodingDescription *)self property];
    v2 = vars8;
  }

  return self;
}

@end