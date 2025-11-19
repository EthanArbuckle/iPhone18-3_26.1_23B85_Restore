@interface BRCloudDocsHelper
+ (id)queryFastPathsForPrimaryPersona:(id)a3;
- (id)queryPathsForPersona:(id)a3 withError:(id *)a4;
@end

@implementation BRCloudDocsHelper

+ (id)queryFastPathsForPrimaryPersona:(id)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E69DF068] sharedManager];
  v5 = [v4 currentPersona];

  if (([v3 isEqualToString:@"__defaultPersonaID__"] & 1) != 0 || (objc_msgSend(v5, "isDataSeparatedPersona") & 1) == 0 && (objc_msgSend(v5, "userPersonaUniqueString"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqualToString:", v3), v11, v12))
  {
    v6 = [MEMORY[0x1E695DFF8] fp_homeDirectory];
    v7 = [v6 br_realpathURL];

    if (v7)
    {
      v8 = [MEMORY[0x1E695DFF8] fp_lmdURL];
      v9 = [v8 br_realpathURL];

      v15 = 0;
      v10 = 0;
      if ([MEMORY[0x1E695DFF8] br_isURL:v9 syncRootOwnedByICloudDrive:&v15 withError:0])
      {
        if (v9 && (v15 & 1) != 0)
        {
          v10 = objc_opt_new();
          [v10 setObject:v7 forKeyedSubscript:@"home"];
          [v10 setObject:v9 forKeyedSubscript:@"Mobile Documents"];
        }

        else
        {
          v16 = @"home";
          v17[0] = v7;
          v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
        }
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)queryPathsForPersona:(id)a3 withError:(id *)a4
{
  v4 = brc_bread_crumbs("[BRCloudDocsHelper queryPathsForPersona:withError:]", 82);
  v5 = brc_default_log(0, 0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    [BRCloudDocsHelper queryPathsForPersona:v4 withError:v5];
  }

  return 0;
}

- (void)queryPathsForPersona:(uint64_t)a1 withError:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_1AE2A9000, a2, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: you should subclass%@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end