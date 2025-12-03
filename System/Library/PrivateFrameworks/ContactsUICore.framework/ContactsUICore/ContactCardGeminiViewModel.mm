@interface ContactCardGeminiViewModel
- (void)geminiDataSourceDidUpdate:(id)update;
@end

@implementation ContactCardGeminiViewModel

- (void)geminiDataSourceDidUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  sub_1A34289F8(updateCopy);
}

@end