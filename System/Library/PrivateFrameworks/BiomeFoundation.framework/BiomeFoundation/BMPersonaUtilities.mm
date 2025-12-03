@interface BMPersonaUtilities
+ (void)runAsPersonaIdentifier:(id)identifier block:(id)block;
@end

@implementation BMPersonaUtilities

+ (void)runAsPersonaIdentifier:(id)identifier block:(id)block
{
  if (block)
  {
    (*(block + 2))(block, 0);
  }
}

@end