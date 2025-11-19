@interface BRLoadUbiquityEntitlements
@end

@implementation BRLoadUbiquityEntitlements

void ___BRLoadUbiquityEntitlements_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = BRCopyEntitlementsForSelf();
  v2 = BREntitledContainerIdentifiers(v1);
  v3 = currentProcessUbiquityContainerEntitlements;
  currentProcessUbiquityContainerEntitlements = v2;

  v4 = [v1 objectForKeyedSubscript:@"com.apple.private.librarian.container-proxy"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    currentProcessIsContainerProxy = [v4 BOOLValue];
    if (currentProcessIsContainerProxy)
    {
      v5 = v4;
      goto LABEL_9;
    }
  }

  else
  {
    currentProcessIsContainerProxy = 0;
  }

  v5 = [v1 objectForKeyedSubscript:@"com.apple.private.clouddocs.automation"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 BOOLValue];
  }

  else
  {
    v6 = 0;
  }

  currentProcessIsContainerProxy = v6;
LABEL_9:
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __BRIsCurrentProcessHasAccessToGroupContainers_block_invoke;
  v10[3] = &unk_1E7A153C0;
  v11 = v1;
  v7 = v1;
  v8 = MEMORY[0x1B26FEA90](v10);
  if ((v8)[2](v8, @"com.apple.security.application-groups"))
  {
    v9 = 1;
  }

  else
  {
    v9 = (v8)[2](v8, @"com.apple.private.security.restricted-application-groups");
  }

  currentProcessHasAccessToGroupContainers = v9;
  objc_autoreleasePoolPop(v0);
}

@end