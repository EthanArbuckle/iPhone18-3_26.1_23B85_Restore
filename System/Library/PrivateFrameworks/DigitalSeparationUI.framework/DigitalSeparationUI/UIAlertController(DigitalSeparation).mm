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
  ds_underlyingErrorsBySource = [v4 ds_underlyingErrorsBySource];
  v6 = [ds_underlyingErrorsBySource objectForKeyedSubscript:*MEMORY[0x277D05460]];
  domain = [v6 domain];
  v8 = [domain isEqualToString:*MEMORY[0x277D05430]];

  if (v8)
  {
    underlyingErrors = [v6 underlyingErrors];
    firstObject = [underlyingErrors firstObject];

    v6 = firstObject;
  }

  domain2 = [v6 domain];
  if ([domain2 isEqualToString:@"HMDigitalSeparationErrorDomain"])
  {
    code = [v6 code];

    if (code == 1)
    {
      ds_localizedAppNames = DSUILocStringForKey(@"STOP_SHARING_FAILED_WITH_PIN_CODE_ERROR_MESSAGE");
      v14 = DSUILocStringForKey(@"STOP_SHARING_FAILED_WITH_PIN_CODE_ERROR_TITLE");
      v15 = [self alertControllerWithTitle:v14 message:ds_localizedAppNames preferredStyle:1];
      goto LABEL_22;
    }
  }

  else
  {
  }

  ds_localizedAppNames = [v4 ds_localizedAppNames];
  if ([ds_localizedAppNames count] == 1)
  {
    v16 = MEMORY[0x277CCACA8];
    v17 = DSUILocStringForKey(@"STOP_SHARING_FAILED_TITLE_WITH_APP_NAME");
    firstObject2 = [ds_localizedAppNames firstObject];
    v19 = [v16 stringWithFormat:v17, firstObject2];

    underlyingErrors2 = [v4 underlyingErrors];
    if (__79__UIAlertController_DigitalSeparation__ds_alertControllerWithStopSharingError___block_invoke(underlyingErrors2, underlyingErrors2))
    {
      v21 = @"STOP_SHARING_SOURCE_FAILED_RESTRICTIONS_SINGLE_APP";
    }

    else
    {
      v21 = @"STOP_SHARING_FAILED_WITH_APP_NAME";
    }

    v22 = DSUILocStringForKey(v21);

    v23 = MEMORY[0x277CCACA8];
    firstObject3 = [ds_localizedAppNames firstObject];
    [v23 stringWithFormat:v22, firstObject3];
  }

  else
  {
    v25 = [ds_localizedAppNames count];
    v19 = DSUILocStringForKey(@"STOP_SHARING_FAILED_TITLE");
    if (v25 < 2)
    {
      v14 = DSUILocStringForKey(@"STOP_SHARING_FAILED");
      goto LABEL_19;
    }

    v22 = [MEMORY[0x277CCAAF0] localizedStringByJoiningStrings:ds_localizedAppNames];
    underlyingErrors3 = [v4 underlyingErrors];
    if (__79__UIAlertController_DigitalSeparation__ds_alertControllerWithStopSharingError___block_invoke(underlyingErrors3, underlyingErrors3))
    {
      v27 = @"STOP_SHARING_SOURCE_FAILED_RESTRICTIONS_MULTIPLE_APPS";
    }

    else
    {
      v27 = @"STOP_SHARING_FAILED_WITH_MULTIPLE_APPS";
    }

    firstObject3 = DSUILocStringForKey(v27);

    [MEMORY[0x277CCACA8] stringWithFormat:firstObject3, v22];
  }
  v14 = ;

LABEL_19:
  if (os_variant_has_internal_content())
  {
    v28 = MEMORY[0x277CCACA8];
    ds_underlyingErrorsBySource2 = [v4 ds_underlyingErrorsBySource];
    v30 = [v28 stringWithFormat:@"%@\n\nInternal Only: %@", v14, ds_underlyingErrorsBySource2];

    v14 = v30;
  }

  v15 = [self alertControllerWithTitle:v19 message:v14 preferredStyle:1];

LABEL_22:

  return v15;
}

+ (id)ds_alertControllerWithResetErrors:()DigitalSeparation
{
  v4 = a3;
  if (_os_feature_enabled_impl())
  {
    lastObject = [[DSErrorDescriptor alloc] initWithStopSharingErrors:v4];
    localizedTitle = [(DSErrorDescriptor *)lastObject localizedTitle];
    localizedMessage = [(DSErrorDescriptor *)lastObject localizedMessage];
    v8 = [self alertControllerWithTitle:localizedTitle message:localizedMessage preferredStyle:1];
  }

  else
  {
    lastObject = [v4 lastObject];
    v8 = [self ds_alertControllerWithStopSharingError:lastObject];
  }

  return v8;
}

+ (id)ds_alertControllerWithFetchSharingError:()DigitalSeparation
{
  v4 = a3;
  if (_os_feature_enabled_impl())
  {
    ds_localizedAppNames = [[DSErrorDescriptor alloc] initWithFetchSharingError:v4];
    localizedTitle = [(DSErrorDescriptor *)ds_localizedAppNames localizedTitle];
    localizedMessage = [(DSErrorDescriptor *)ds_localizedAppNames localizedMessage];
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      ds_localizedAppNames = [v4 ds_localizedAppNames];
    }

    else
    {
      NSLog(&cfstr_HandlingFetchE.isa, v4);
      ds_localizedAppNames = MEMORY[0x277CBEBF8];
    }

    if ([(DSErrorDescriptor *)ds_localizedAppNames count])
    {
      if ([(DSErrorDescriptor *)ds_localizedAppNames count]== 1)
      {
        v8 = MEMORY[0x277CCACA8];
        v9 = DSUILocStringForKey(@"FETCH_SHARING_FAILED_TITLE_WITH_APP_NAME");
        firstObject = [(DSErrorDescriptor *)ds_localizedAppNames firstObject];
        localizedTitle = [v8 stringWithFormat:v9, firstObject];

        v11 = MEMORY[0x277CCACA8];
        v12 = DSUILocStringForKey(@"FETCH_SHARING_FAILED_WITH_APP_NAME");
        firstObject2 = [(DSErrorDescriptor *)ds_localizedAppNames firstObject];
        [v11 stringWithFormat:v12, firstObject2];
      }

      else
      {
        localizedTitle = DSUILocStringForKey(@"FETCH_SHARING_FAILED_TITLE");
        v12 = [MEMORY[0x277CCAAF0] localizedStringByJoiningStrings:ds_localizedAppNames];
        firstObject2 = DSUILocStringForKey(@"FETCH_SHARING_FAILED_WITH_MULTIPLE_APPS");
        [MEMORY[0x277CCACA8] stringWithFormat:firstObject2, v12];
      }
      localizedMessage = ;
    }

    else
    {
      localizedTitle = DSUILocStringForKey(@"FETCH_SHARING_FAILED_TITLE");
      localizedMessage = DSUILocStringForKey(@"FETCH_SHARING_FAILED");
    }

    if (os_variant_has_internal_content() && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v14 = MEMORY[0x277CCACA8];
      ds_underlyingErrorsBySource = [v4 ds_underlyingErrorsBySource];
      v16 = [v14 stringWithFormat:@"%@\n\nInternal Only: %@", localizedMessage, ds_underlyingErrorsBySource];

      localizedMessage = v16;
    }
  }

  v17 = [self alertControllerWithTitle:localizedTitle message:localizedMessage preferredStyle:1];

  return v17;
}

+ (id)ds_alertControllerWithAppDeletionError:()DigitalSeparation
{
  v4 = a3;
  if ([v4 code] == 8)
  {
    userInfo = [v4 userInfo];

    v4 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D05438]];

    v6 = MEMORY[0x277CCACA8];
    v7 = DSUILocStringForKey(@"DELETE_APP_FAILED_TITLE");
    v8 = [v6 stringWithFormat:v7, v4];

    v9 = MEMORY[0x277CCACA8];
    v10 = DSUILocStringForKey(@"DELETE_APP_FAILED_RESTRICTIONS");
    v11 = [v9 stringWithFormat:v10, v4];

    v12 = [self alertControllerWithTitle:v8 message:v11 preferredStyle:1];
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
  ds_localizedPermissionNames = [v4 ds_localizedPermissionNames];
  v6 = MEMORY[0x277CCAAF0];
  allObjects = [ds_localizedPermissionNames allObjects];
  v8 = [v6 localizedStringByJoiningStrings:allObjects];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  underlyingErrors = [v4 underlyingErrors];
  v10 = [underlyingErrors countByEnumeratingWithState:&v27 objects:v31 count:16];
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
          objc_enumerationMutation(underlyingErrors);
        }

        v12 |= [*(*(&v27 + 1) + 8 * i) code] == 7;
      }

      v11 = [underlyingErrors countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v11);

    if (v12)
    {
      if ([ds_localizedPermissionNames count] == 1)
      {
        v15 = MEMORY[0x277CCACA8];
        v16 = DSUILocStringForKey(@"RESET_APP_PERMISSIONS_FAILED_RESTRICTIONS_SINGLE_APP");
        v17 = [v15 stringWithFormat:v16, v8];

        v18 = @"RESET_APP_PERMISSIONS_FAILED_TITLE_SINGLE_APP";
        goto LABEL_14;
      }

      if ([ds_localizedPermissionNames count] >= 2)
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

  v22 = [self alertControllerWithTitle:v21 message:v17 preferredStyle:1];

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

  v8 = [self alertControllerWithTitle:v5 message:v6 preferredStyle:1];

  return v8;
}

@end