@interface INInteraction(sgLogging)
- (id)sg_LoggingIdentifier;
@end

@implementation INInteraction(sgLogging)

- (id)sg_LoggingIdentifier
{
  v2 = objc_alloc(MEMORY[0x277CCACA8]);
  v3 = [a1 identifier];
  v4 = [v2 initWithFormat:@"%tu", objc_msgSend(v3, "hash")];

  if ([v4 length] > 0xC)
  {
    v5 = [v4 substringWithRange:{0, 12}];
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;

  return v6;
}

@end