@interface CRNextCardCommand
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CRNextCardCommand

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = CRNextCardCommand;
  v5 = [(CRBasicPayloadCommand *)&v9 copyWithZone:?];
  nextCard = [(CRNextCardCommand *)self nextCard];
  v7 = [nextCard copyWithZone:zone];
  [v5 setNextCard:v7];

  return v5;
}

@end