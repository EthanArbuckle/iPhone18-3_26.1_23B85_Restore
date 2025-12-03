@interface MTFWrappedPhoneme
- (NSString)name;
@end

@implementation MTFWrappedPhoneme

- (NSString)name
{
  v2 = MEMORY[0x277CCACA8];
  elem = [(MTFWrappedPhoneme *)self elem];
  v4 = *(MEMORY[0x277D65550] + 8 * elem->var9);

  return [v2 stringWithCString:v4 encoding:1];
}

@end