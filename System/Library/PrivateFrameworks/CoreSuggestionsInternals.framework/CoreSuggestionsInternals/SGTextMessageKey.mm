@interface SGTextMessageKey
- (id)description;
@end

@implementation SGTextMessageKey

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  source = [(SGMessageKey *)self source];
  uniqueIdentifier = [(SGMessageKey *)self uniqueIdentifier];
  v6 = [v3 initWithFormat:@"<SGTextMessageKey source=%@ uniqueIdentifier=%@>", source, uniqueIdentifier];

  return v6;
}

@end