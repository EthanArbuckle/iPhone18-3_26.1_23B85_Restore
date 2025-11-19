@interface BMPersonaUtilities
+ (void)runAsPersonaIdentifier:(id)a3 block:(id)a4;
@end

@implementation BMPersonaUtilities

+ (void)runAsPersonaIdentifier:(id)a3 block:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4, 0);
  }
}

@end