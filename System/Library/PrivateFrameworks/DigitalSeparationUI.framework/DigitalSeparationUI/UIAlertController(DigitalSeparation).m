@interface UIAlertController(DigitalSeparation)
+ (id)ds_alertControllerContinuityUnpairError:()DigitalSeparation;
+ (id)ds_alertControllerWithAppDeletionError:()DigitalSeparation;
+ (id)ds_alertControllerWithFetchSharingError:()DigitalSeparation;
+ (id)ds_alertControllerWithResetErrors:()DigitalSeparation;
+ (id)ds_alertControllerWithStopPermissionSharingError:()DigitalSeparation;
+ (id)ds_alertControllerWithStopSharingError:()DigitalSeparation;
@end

@implementation UIAlertController(DigitalSeparation)

+ (id)ds_alertControllerWithStopSharingError:()DigitalSeparation
{
  v4 = a3;
  v5 = [v4 ds_underlyingErrorsBySource];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D05460]];
  v7 = [v6 domain];
  v8 = [v7 isEqualToString:*MEMORY[0x277D05430]];

  if (v8)
  {
    v9 = [v6 underlyingErrors];
    v10 = [v9 firstObject];

    v6 = v10;
  }

  v11 = [v6 domain];
  if ([v11 isEqualToString:@"HMDigitalSeparationErrorDomain"])
  {
    v12 = [v6 code];

    if (v12 == 1)
    {
      v13 = DSUILocStringForKey(@"STOP_SHARING_FAILED_WITH_PIN_CODE_ERROR_MESSAGE");
      v14 = DSUILocStringForKey(@"STOP_SHARING_FAILED_WITH_PIN_CODE_ERROR_TITLE");
      v15 = [a1 alertControllerWithTitle:v14 message:v13 preferredStyle:1];
      goto LABEL_22;
    }
  }

  else
  {
  }

  v13 = [v4 ds_localizedAppNames];
  if ([v13 count] == 1)
  {
    v16 = MEMORY[0x277CCACA8];
    v17 = DSUILocStringForKey(@"STOP_SHARING_FAILED_TITLE_WITH_APP_NAME");
    v18 = [v13 firstObject];
    v19 = [v16 stringWithFormat:v17, v18];

    v20 = [v4 underlyingErrors];
    if (__79__UIAlertController_DigitalSeparation__ds_alertControllerWithStopSharingError___block_invoke(v20, v20))
    {
      v21 = @"STOP_SHARING_SOURCE_FAILED_RESTRICTIONS_SINGLE_APP";
    }

    else
    {
      v21 = @"STOP_SHARING_FAILED_WITH_APP_NAME";
    }

    v22 = DSUILocStringForKey(v21);

    v23 = MEMORY[0x277CCACA8];
    v24 = [v13 firstObject];
    [v23 stringWithFormat:v22, v24];
  }

  else
  {
    v25 = [v13 count];
    v19 = DSUILocStringForKey(@"STOP_SHARING_FAILED_TITLE");
    if (v25 < 2)
    {
      v14 = DSUILocStringForKey(@"STOP_SHARING_FAILED");
      goto LABEL_19;
    }

    v22 = [MEMORY[0x277CCAAF0] localizedStringByJoiningStrings:v13];
    v26 = [v4 underlyingErrors];
    if (__79__UIAlertController_DigitalSeparation__ds_alertControllerWithStopSharingError___block_invoke(v26, v26))
    {
      v27 = @"STOP_SHARING_SOURCE_FAILED_RESTRICTIONS_MULTIPLE_APPS";
    }

    else
    {
      v27 = @"STOP_SHARING_FAILED_WITH_MULTIPLE_APPS";
    }

    v24 = DSUILocStringForKey(v27);

    [MEMORY[0x277CCACA8] stringWithFormat:v24, v22];
  }
  v14 = ;

LABEL_19:
  if (os_variant_has_internal_content())
  {
    v28 = MEMORY[0x277CCACA8];
    v29 = [v4 ds_underlyingErrorsBySource];
    v30 = [v28 stringWithFormat:@"%@\n\nInternal Only: %@", v14, v29];

    v14 = v30;
  }

  v15 = [a1 alertControllerWithTitle:v19 message:v14 preferredStyle:1];

LABEL_22:

  return v15;
}

+ (id)ds_alertControllerWithResetErrors:()DigitalSeparation
{
  v4 = a3;
  if (_os_feature_enabled_impl())
  {
    v5 = [[DSErrorDescriptor alloc] initWithStopSharingErrors:v4];
    v6 = [(DSErrorDescriptor *)v5 localizedTitle];
    v7 = [(DSErrorDescriptor *)v5 localizedMessage];
    v8 = [a1 alertControllerWithTitle:v6 message:v7 preferredStyle:1];
  }

  else
  {
    v5 = [v4 lastObject];
    v8 = [a1 ds_alertControllerWithStopSharingError:v5];
  }

  return v8;
}

+ (id)ds_alertControllerWithFetchSharingError:()DigitalSeparation
{
  v4 = a3;
  if (_os_feature_enabled_impl())
  {
    v5 = [[DSErrorDescriptor alloc] initWithFetchSharingError:v4];
    v6 = [(DSErrorDescriptor *)v5 localizedTitle];
    v7 = [(DSErrorDescriptor *)v5 localizedMessage];
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [v4 ds_localizedAppNames];
    }

    else
    {
      NSLog(&cfstr_HandlingFetchE.isa, v4);
      v5 = MEMORY[0x277CBEBF8];
    }

    if ([(DSErrorDescriptor *)v5 count])
    {
      if ([(DSErrorDescriptor *)v5 count]== 1)
      {
        v8 = MEMORY[0x277CCACA8];
        v9 = DSUILocStringForKey(@"FETCH_SHARING_FAILED_TITLE_WITH_APP_NAME");
        v10 = [(DSErrorDescriptor *)v5 firstObject];
        v6 = [v8 stringWithFormat:v9, v10];

        v11 = MEMORY[0x277CCACA8];
        v12 = DSUILocStringForKey(@"FETCH_SHARING_FAILED_WITH_APP_NAME");
        v13 = [(DSErrorDescriptor *)v5 firstObject];
        [v11 stringWithFormat:v12, v13];
      }

      else
      {
        v6 = DSUILocStringForKey(@"FETCH_SHARING_FAILED_TITLE");
        v12 = [MEMORY[0x277CCAAF0] localizedStringByJoiningStrings:v5];
        v13 = DSUILocStringForKey(@"FETCH_SHARING_FAILED_WITH_MULTIPLE_APPS");
        [MEMORY[0x277CCACA8] stringWithFormat:v13, v12];
      }
      v7 = ;
    }

    else
    {
      v6 = DSUILocStringForKey(@"FETCH_SHARING_FAILED_TITLE");
      v7 = DSUILocStringForKey(@"FETCH_SHARING_FAILED");
    }

    if (os_variant_has_internal_content() && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v14 = MEMORY[0x277CCACA8];
      v15 = [v4 ds_underlyingErrorsBySource];
      v16 = [v14 stringWithFormat:@"%@\n\nInternal Only: %@", v7, v15];

      v7 = v16;
    }
  }

  v17 = [a1 alertControllerWithTitle:v6 message:v7 preferredStyle:1];

  return v17;
}

+ (id)ds_alertControllerWithAppDeletionError:()DigitalSeparation
{
  v4 = a3;
  if ([v4 code] == 8)
  {
    v5 = [v4 userInfo];

    v4 = [v5 objectForKeyedSubscript:*MEMORY[0x277D05438]];

    v6 = MEMORY[0x277CCACA8];
    v7 = DSUILocStringForKey(@"DELETE_APP_FAILED_TITLE");
    v8 = [v6 stringWithFormat:v7, v4];

    v9 = MEMORY[0x277CCACA8];
    v10 = DSUILocStringForKey(@"DELETE_APP_FAILED_RESTRICTIONS");
    v11 = [v9 stringWithFormat:v10, v4];

    v12 = [a1 alertControllerWithTitle:v8 message:v11 preferredStyle:1];
  }

  else
  {
    NSLog(&cfstr_EncounteredAnU.isa, v4);
    v12 = 0;
  }

  return v12;
}

+ (id)ds_alertControllerWithStopPermissionSharingError:()DigitalSeparation
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 ds_localizedPermissionNames];
  v6 = MEMORY[0x277CCAAF0];
  v7 = [v5 allObjects];
  v8 = [v6 localizedStringByJoiningStrings:v7];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = [v4 underlyingErrors];
  v10 = [v9 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v28;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v12 |= [*(*(&v27 + 1) + 8 * i) code] == 7;
      }

      v11 = [v9 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v11);

    if (v12)
    {
      if ([v5 count] == 1)
      {
        v15 = MEMORY[0x277CCACA8];
        v16 = DSUILocStringForKey(@"RESET_APP_PERMISSIONS_FAILED_RESTRICTIONS_SINGLE_APP");
        v17 = [v15 stringWithFormat:v16, v8];

        v18 = @"RESET_APP_PERMISSIONS_FAILED_TITLE_SINGLE_APP";
        goto LABEL_14;
      }

      if ([v5 count] >= 2)
      {
        v25 = MEMORY[0x277CCACA8];
        v26 = DSUILocStringForKey(@"RESET_APP_PERMISSIONS_FAILED_RESTRICTIONS_MULTIPLE_APPS");
        v17 = [v25 stringWithFormat:v26, v8];

        goto LABEL_13;
      }
    }
  }

  else
  {
  }

  v17 = DSUILocStringForKey(@"RESET_APP_PERMISSIONS_FAILED");
LABEL_13:
  v18 = @"RESET_APP_PERMISSIONS_FAILED_TITLE_MULTIPLE_APPS";
LABEL_14:
  v19 = MEMORY[0x277CCACA8];
  v20 = DSUILocStringForKey(v18);
  v21 = [v19 stringWithFormat:v20, v8];

  v22 = [a1 alertControllerWithTitle:v21 message:v17 preferredStyle:1];

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

+ (id)ds_alertControllerContinuityUnpairError:()DigitalSeparation
{
  v4 = a3;
  v5 = DSUILocStringForKey(@"CONTINUITY_DISCONNECT_ERROR_TITLE");
  v6 = DSUILocStringForKey(@"CONTINUITY_DISCONNECT_ERROR_DETAIL");
  if (os_variant_has_internal_content())
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n\nInternal Only: %@", v6, v4];

    v6 = v7;
  }

  v8 = [a1 alertControllerWithTitle:v5 message:v6 preferredStyle:1];

  return v8;
}

@end