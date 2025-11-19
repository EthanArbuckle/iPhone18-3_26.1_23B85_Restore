@interface HMBLocalZoneMirrorInput(FirewallRuleManager)
+ (uint64_t)frmSyncCommitWithMirrorInput:()FirewallRuleManager options:error:;
- (uint64_t)frmSyncCommitWithOptions:()FirewallRuleManager error:;
@end

@implementation HMBLocalZoneMirrorInput(FirewallRuleManager)

- (uint64_t)frmSyncCommitWithOptions:()FirewallRuleManager error:
{
  v6 = a3;
  v7 = [objc_opt_class() frmSyncCommitWithMirrorInput:a1 options:v6 error:a4];

  return v7;
}

+ (uint64_t)frmSyncCommitWithMirrorInput:()FirewallRuleManager options:error:
{
  v6 = [a3 commitWithOptions:a4 error:a5];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 blockAndWaitForCompletionWithError:a5];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 mirrorOutputResult];

      if (!v10 || ([v9 mirrorOutputResult], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "blockAndWaitForCompletionWithError:", a5), v12 = objc_claimAutoreleasedReturnValue(), v11, v12, v12))
      {
        v12 = 1;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end