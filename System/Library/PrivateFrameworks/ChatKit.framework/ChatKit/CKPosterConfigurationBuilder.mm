@interface CKPosterConfigurationBuilder
+ (void)createPosterConfigurationForExtensionIdentifier:(id)identifier completion:(id)completion;
@end

@implementation CKPosterConfigurationBuilder

+ (void)createPosterConfigurationForExtensionIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v6 = MEMORY[0x193AF5EC0](@"PRUISPosterConfigurationBuilder", @"PosterKit");
  if (v6)
  {
    v7 = [v6 alloc];
    Helper_x8__PRSPosterRoleBackdrop = gotLoadHelper_x8__PRSPosterRoleBackdrop(v8);
    v12 = [v11 initWithProvider:identifierCopy role:{**(v10 + 104), Helper_x8__PRSPosterRoleBackdrop}];
    v13 = [v12 buildPosterConfigurationWithCompletion:completionCopy];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

@end