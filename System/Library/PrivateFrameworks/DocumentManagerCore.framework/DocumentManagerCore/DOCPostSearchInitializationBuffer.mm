@interface DOCPostSearchInitializationBuffer
- (DOCPostSearchInitializationBuffer)init;
@end

@implementation DOCPostSearchInitializationBuffer

- (DOCPostSearchInitializationBuffer)init
{
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v7.receiver = self;
  v7.super_class = DOCPostSearchInitializationBuffer;
  v5 = [(DOCOperationBuffer *)&v7 initWithLabel:uUIDString];

  return v5;
}

@end