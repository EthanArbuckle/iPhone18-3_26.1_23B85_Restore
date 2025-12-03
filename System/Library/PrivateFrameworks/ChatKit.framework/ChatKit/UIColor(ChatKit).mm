@interface UIColor(ChatKit)
- (double)ck_imColorComponents;
@end

@implementation UIColor(ChatKit)

- (double)ck_imColorComponents
{
  v1 = *(MEMORY[0x1E69A6E08] + 16);
  v3 = *MEMORY[0x1E69A6E08];
  v4 = v1;
  [self getRed:&v3 green:&v3 + 8 blue:&v4 alpha:&v4 + 8];
  return *&v3;
}

@end