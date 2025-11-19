@interface SGTextMessageKey
- (id)description;
@end

@implementation SGTextMessageKey

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [(SGMessageKey *)self source];
  v5 = [(SGMessageKey *)self uniqueIdentifier];
  v6 = [v3 initWithFormat:@"<SGTextMessageKey source=%@ uniqueIdentifier=%@>", v4, v5];

  return v6;
}

@end