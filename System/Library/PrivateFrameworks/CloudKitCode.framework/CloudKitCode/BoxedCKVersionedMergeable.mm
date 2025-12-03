@interface BoxedCKVersionedMergeable
- (id)stateVector;
- (unint64_t)deltaDeliveryRequirements;
@end

@implementation BoxedCKVersionedMergeable

- (id)stateVector
{
  selfCopy = self;
  v3 = sub_24388D854();

  return v3;
}

- (unint64_t)deltaDeliveryRequirements
{
  selfCopy = self;
  v3 = sub_24388D958();

  return v3;
}

@end