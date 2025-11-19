@interface CRNextCardCommand
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation CRNextCardCommand

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = CRNextCardCommand;
  v5 = [(CRBasicPayloadCommand *)&v9 copyWithZone:?];
  v6 = [(CRNextCardCommand *)self nextCard];
  v7 = [v6 copyWithZone:a3];
  [v5 setNextCard:v7];

  return v5;
}

@end