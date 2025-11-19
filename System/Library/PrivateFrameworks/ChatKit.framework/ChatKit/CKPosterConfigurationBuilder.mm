@interface CKPosterConfigurationBuilder
+ (void)createPosterConfigurationForExtensionIdentifier:(id)a3 completion:(id)a4;
@end

@implementation CKPosterConfigurationBuilder

+ (void)createPosterConfigurationForExtensionIdentifier:(id)a3 completion:(id)a4
{
  v14 = a3;
  v5 = a4;
  v6 = MEMORY[0x193AF5EC0](@"PRUISPosterConfigurationBuilder", @"PosterKit");
  if (v6)
  {
    v7 = [v6 alloc];
    Helper_x8__PRSPosterRoleBackdrop = gotLoadHelper_x8__PRSPosterRoleBackdrop(v8);
    v12 = [v11 initWithProvider:v14 role:{**(v10 + 104), Helper_x8__PRSPosterRoleBackdrop}];
    v13 = [v12 buildPosterConfigurationWithCompletion:v5];
  }

  else
  {
    (*(v5 + 2))(v5, 0, 0);
  }
}

@end