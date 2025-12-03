@interface IDSTransportScoreCard
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation IDSTransportScoreCard

- (id)copyWithZone:(_NSZone *)zone
{
  result = objc_alloc_init(IDSTransportScoreCard);
  *(result + 8) = *&self->score;
  *(result + 3) = self->transportInterface;
  *(result + 8) = self->interfaceIndex;
  *(result + 36) = self->alreadySelected;
  *(result + 37) = self->isIPv6;
  return result;
}

@end