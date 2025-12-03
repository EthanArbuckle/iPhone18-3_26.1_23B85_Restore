@interface MTFWrappedWord
- (NSString)fGroupPOS;
- (NSString)fText;
@end

@implementation MTFWrappedWord

- (NSString)fText
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(MTFWrappedWord *)self elem]+ 200;

  return [v2 stringWithCString:v3 encoding:1];
}

- (NSString)fGroupPOS
{
  v2 = MEMORY[0x277CCACA8];
  elem = [(MTFWrappedWord *)self elem];
  v4 = *(MEMORY[0x277D65538] + 8 * elem->var13);

  return [v2 stringWithCString:v4 encoding:1];
}

@end