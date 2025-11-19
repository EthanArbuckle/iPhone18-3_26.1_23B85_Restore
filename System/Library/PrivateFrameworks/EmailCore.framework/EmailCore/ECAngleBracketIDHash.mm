@interface ECAngleBracketIDHash
- (ECAngleBracketIDHash)initWithAngleBracketID:(id)a3;
@end

@implementation ECAngleBracketIDHash

- (ECAngleBracketIDHash)initWithAngleBracketID:(id)a3
{
  v4 = [a3 ec_messageIDSubstring];
  v7.receiver = self;
  v7.super_class = ECAngleBracketIDHash;
  v5 = [(EFStringHash *)&v7 initWithString:v4];

  return v5;
}

@end