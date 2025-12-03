@interface WFAskLLMUserPrompt
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFAskLLMUserPrompt

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_21E1D0618(coderCopy);
}

@end