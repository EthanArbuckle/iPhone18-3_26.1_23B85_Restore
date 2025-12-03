@interface ECAngleBracketIDHash
- (ECAngleBracketIDHash)initWithAngleBracketID:(id)d;
@end

@implementation ECAngleBracketIDHash

- (ECAngleBracketIDHash)initWithAngleBracketID:(id)d
{
  ec_messageIDSubstring = [d ec_messageIDSubstring];
  v7.receiver = self;
  v7.super_class = ECAngleBracketIDHash;
  v5 = [(EFStringHash *)&v7 initWithString:ec_messageIDSubstring];

  return v5;
}

@end