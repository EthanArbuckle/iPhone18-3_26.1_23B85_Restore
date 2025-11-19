@interface HMDRelationshipCodingDescription
- (NSRelationshipDescription)relationship;
@end

@implementation HMDRelationshipCodingDescription

- (NSRelationshipDescription)relationship
{
  if (self)
  {
    self = [(HMDPropertyCodingDescription *)self property];
    v2 = vars8;
  }

  return self;
}

@end