@interface DDCallAction
+ (BOOL)isAvailable;
+ (id)callProvider;
- (BOOL)_titleFitsInActionSheet:(_BOOL8)a1;
- (__CFString)notificationTitleTargetString;
- (double)_systemFontSize;
- (id)callProvider;
- (id)defaultAction;
- (id)dialRequest;
- (id)dialRequestWithProvider:(id)a3;
- (id)handle;
- (id)localizedCallStringForName:(int)a3 usingCallRelay:;
- (id)localizedName;
- (id)notificationTitle;
- (id)notificationURL;
- (id)subtitle;
- (void)performFromView:(id)a3;
@end

@implementation DDCallAction

- (id)defaultAction
{
  v3 = [objc_opt_class() actionWithURL:self->super.super._url result:self->super.super._result context:self->super.super._context];
  objc_storeStrong((v3 + 168), self->_handle);
  *(v3 + 176) = self->_defaultAppPolicy;
  *(v3 + 82) = 1;
  v4 = [(DDTelephoneNumberAction *)self bizItem];
  [v3 setBizItem:v4];

  v5 = [(DDAction *)self analyticsReporter];
  [v3 setAnalyticsReporter:v5];

  return v3;
}

- (id)handle
{
  if (self->_handle)
  {
    handle = self->_handle;
  }

  else if (self->super._phoneNumber)
  {
    v5 = [MEMORY[0x277D6EEE8] normalizedHandleWithDestinationID:?];
    v6 = self->_handle;
    self->_handle = v5;

    handle = self->_handle;
  }

  else
  {
    handle = 0;
  }

  return handle;
}

- (id)subtitle
{
  v2 = [(DDTelephoneNumberAction *)self bizItem];
  v3 = [v2 callSubtitle];

  return v3;
}

- (id)localizedName
{
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__5;
  v39 = __Block_byref_object_dispose__5;
  v40 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__5;
  v33 = __Block_byref_object_dispose__5;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__5;
  v27 = __Block_byref_object_dispose__5;
  v28 = 0;
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __29__DDCallAction_localizedName__block_invoke;
  activity_block[3] = &unk_2782917E8;
  activity_block[4] = self;
  activity_block[5] = &v23;
  activity_block[6] = &v35;
  activity_block[7] = &v29;
  _os_activity_initiate(&dword_21AB70000, "searching for name in Contacts to display Call label", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
  v3 = [MEMORY[0x277D6EDE8] supportsPrimaryCalling];
  if ([v36[5] length])
  {
    if ([v24[5] length])
    {
      v4 = MEMORY[0x277CCACA8];
      v5 = DDLocalizedString(@"%@ (%@)");
      v6 = v36[5];
      v7 = [v4 stringWithFormat:v5, v6, v24[5]];

      v8 = [(DDCallAction *)self localizedCallStringForName:v7 usingCallRelay:v3 ^ 1];
      if (v8 && [(DDCallAction *)self _titleFitsInActionSheet:v8])
      {
        v9 = v8;

        goto LABEL_36;
      }
    }

    else
    {
      v8 = 0;
    }

    v10 = [(DDCallAction *)self localizedCallStringForName:v3 ^ 1 usingCallRelay:?];

    if (v10 && [(DDCallAction *)self _titleFitsInActionSheet:v10])
    {
      goto LABEL_34;
    }
  }

  else
  {
    v10 = 0;
  }

  if (![v30[5] length])
  {
LABEL_16:
    if (v3)
    {
LABEL_20:
      if (v10)
      {
        goto LABEL_43;
      }

      if ([(DDCallAction *)self isEmail])
      {
        v15 = self->super._phoneNumber;
      }

      else
      {
        v16 = [(NSURL *)self->super.super._url dd_formattedPhoneNumber];
        phoneNumber = v16;
        if (!v16)
        {
          phoneNumber = self->super._phoneNumber;
        }

        v15 = phoneNumber;
      }

      if (![(NSString *)v15 length])
      {

        v10 = 0;
        if (v3)
        {
LABEL_32:
          if (!v10)
          {
            v10 = DDLocalizedString(@"Call");
          }

          goto LABEL_34;
        }

LABEL_31:
        v20 = [MEMORY[0x277D6EDE0] supplementalDialTelephonyCallString];

        v10 = v20;
        goto LABEL_32;
      }

      v18 = MEMORY[0x277CCACA8];
      v19 = DDLocalizedStringWithDefaultValue(@"CALL_NUMBER", 0, 0, @"Call %@");
      v10 = [v18 stringWithFormat:v19, v15];

      if (v10)
      {
LABEL_43:
        if ([(DDCallAction *)self _titleFitsInActionSheet:v10])
        {
LABEL_34:
          v12 = v10;
          goto LABEL_35;
        }
      }

      if (v3)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }

LABEL_17:
    v13 = self->super._phoneNumber;
    if (v13)
    {
      v14 = [MEMORY[0x277D6EDE0] supplementalDialTelephonyCallStringForDestination:v13 isPhoneNumber:1];

      v10 = v14;
    }

    goto LABEL_20;
  }

  v11 = [(DDCallAction *)self localizedCallStringForName:v3 ^ 1 usingCallRelay:?];

  if (!v11)
  {
    v10 = 0;
    goto LABEL_16;
  }

  if (![(DDCallAction *)self _titleFitsInActionSheet:v11])
  {
    v10 = v11;
    if (v3)
    {
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  v12 = v11;
LABEL_35:
  v9 = v12;
LABEL_36:

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);

  _Block_object_dispose(&v35, 8);

  return v9;
}

void __29__DDCallAction_localizedName__block_invoke(void *a1)
{
  v2 = a1[4];
  if ([v2 treatAsMenu])
  {
    v3 = [v2 contactAndLabelForPhoneNumber:0];
  }

  else
  {
    v4 = *(a1[5] + 8);
    obj = *(v4 + 40);
    v3 = [v2 contactAndLabelForPhoneNumber:&obj];
    objc_storeStrong((v4 + 40), obj);
  }

  v5 = [MEMORY[0x277CBDA78] stringFromContact:v3 style:0];
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = [MEMORY[0x277CBDA78] stringFromContact:v3 style:1000];
  v9 = *(a1[7] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

- (__CFString)notificationTitleTargetString
{
  if (a1)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__5;
    v18 = __Block_byref_object_dispose__5;
    v19 = 0;
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x3032000000;
    v12[3] = __Block_byref_object_copy__5;
    v12[4] = __Block_byref_object_dispose__5;
    v13 = 0;
    activity_block[0] = MEMORY[0x277D85DD0];
    activity_block[1] = 3221225472;
    activity_block[2] = __45__DDCallAction_notificationTitleTargetString__block_invoke;
    activity_block[3] = &unk_278291810;
    activity_block[4] = a1;
    activity_block[5] = v12;
    activity_block[6] = &v14;
    _os_activity_initiate(&dword_21AB70000, "searching for name in Contacts to display Call label", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
    v2 = [a1 isEmail];
    v3 = a1[16];
    if (v2)
    {
      v4 = v3;
    }

    else if (v3)
    {
      v5 = TUFormattedPhoneNumber();
      v6 = v5;
      if (!v5)
      {
        v6 = a1[16];
      }

      v4 = v6;
    }

    else
    {
      v4 = 0;
    }

    if ([v15[5] length])
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n%@", v15[5], v4];
    }

    else
    {
      v8 = &stru_282C1E0A8;
      if (v4)
      {
        v8 = v4;
      }

      v7 = v8;
    }

    v9 = v7;

    _Block_object_dispose(v12, 8);
    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __45__DDCallAction_notificationTitleTargetString__block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[5] + 8);
  obj = *(v3 + 40);
  v4 = [v2 contactAndLabelForPhoneNumber:&obj];
  objc_storeStrong((v3 + 40), obj);
  v5 = [MEMORY[0x277CBDA78] stringFromContact:v4 style:0];
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)notificationTitle
{
  v3 = MEMORY[0x277CCACA8];
  v4 = DDLocalizedString(@"Call %@");
  v5 = [(DDCallAction *)self notificationTitleTargetString];
  v6 = [v3 stringWithFormat:v4, v5];

  return v6;
}

- (id)dialRequest
{
  if (self->super._phoneNumber)
  {
    v3 = [(DDCallAction *)self callProvider];
    v4 = [(DDCallAction *)self dialRequestWithProvider:v3];

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)callProvider
{
  v2 = objc_opt_class();

  return [v2 callProvider];
}

- (id)dialRequestWithProvider:(id)a3
{
  v4 = a3;
  if (v4 && self->super._phoneNumber)
  {
    v5 = [objc_alloc(MEMORY[0x277D6EED0]) initWithProvider:v4];
    v6 = [(DDCallAction *)self handle];
    [v5 setHandle:v6];

    [v5 setPerformDialAssist:1];
    [v5 setTtyType:{-[DDCallAction TTYType](self, "TTYType")}];
    [v5 setShowUIPrompt:self->super.super._isDefaultAction];
    [v5 setVideo:0];
    [v5 setPreferDefaultApp:self->_defaultAppPolicy == 0];
    v7 = [(NSURL *)self->super.super._url scheme];
    v8 = [v7 lowercaseString];

    v9 = self->super.super._result;
    v10 = *MEMORY[0x277D04160];
    if ((DDResultHasType() & 1) != 0 || [MEMORY[0x277CBEBC0] isDefaultCallingAppScheme:v8])
    {
      if (self->super.super._isDefaultAction)
      {
        v11 = 1;
      }

      else
      {
        v12 = [(DDTelephoneNumberAction *)self bizItem];
        if (v12)
        {
          v11 = 1;
        }

        else
        {
          v11 = dd_hostApplicationCanListCallProviders() ^ 1;
        }
      }
    }

    else
    {
      v11 = 0;
    }

    [v5 setAllowProviderFallback:v11];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)performFromView:(id)a3
{
  v4 = a3;
  v5 = [(DDCallAction *)self dialRequest];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [DDCallAction performFromView:];
  }

  v6 = [v5 URL];
  [(DDAction *)self _performFromView:v4 byOpeningURL:v6];
}

- (id)notificationURL
{
  v3 = [(DDCallAction *)self dialRequest];
  v4 = [v3 URL];
  url = v4;
  if (!v4)
  {
    url = self->super.super._url;
  }

  v6 = url;

  return url;
}

+ (id)callProvider
{
  v2 = objc_alloc_init(MEMORY[0x277D6EE28]);
  v3 = [v2 telephonyProvider];

  return v3;
}

+ (BOOL)isAvailable
{
  if (![MEMORY[0x277D6EDE8] supportsTelephonyCalls])
  {
    return 0;
  }

  v3 = [a1 callProvider];
  v4 = v3 != 0;

  return v4;
}

- (double)_systemFontSize
{
  if (!a1)
  {
    return 0.0;
  }

  v1 = [MEMORY[0x277D75128] sharedApplication];
  v2 = [v1 preferredContentSizeCategory];

  v3 = 21.0;
  if (([v2 isEqualToString:*MEMORY[0x277D76830]] & 1) == 0 && (objc_msgSend(v2, "isEqualToString:", *MEMORY[0x277D76858]) & 1) == 0 && (objc_msgSend(v2, "isEqualToString:", *MEMORY[0x277D76840]) & 1) == 0 && (objc_msgSend(v2, "isEqualToString:", *MEMORY[0x277D76838]) & 1) == 0)
  {
    v3 = 22.0;
    if (([v2 isEqualToString:*MEMORY[0x277D76828]] & 1) == 0)
    {
      if ([v2 isEqualToString:*MEMORY[0x277D76820]])
      {
        v3 = 23.0;
      }

      else
      {
        v3 = 24.0;
      }
    }
  }

  return v3;
}

- (BOOL)_titleFitsInActionSheet:(_BOOL8)a1
{
  v2 = a1;
  v12[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v3 = MEMORY[0x277D74300];
    v4 = a2;
    v5 = [v3 systemFontOfSize:-[DDCallAction _systemFontSize](v2)];
    v11 = *MEMORY[0x277D740A8];
    v12[0] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    [v4 sizeWithAttributes:v6];
    v8 = v7;

    v2 = v8 <= 304.0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v2;
}

- (id)localizedCallStringForName:(int)a3 usingCallRelay:
{
  v5 = a2;
  if (a1)
  {
    if (!a3 || ([MEMORY[0x277D6EDE0] supplementalDialTelephonyCallStringForDestination:v5 isPhoneNumber:0], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v7 = MEMORY[0x277CCACA8];
      v8 = DDLocalizedStringWithDefaultValue(@"CALL_PERSON", 0, 0, @"Call %@");
      v6 = [v7 stringWithFormat:v8, v5];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)performFromView:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end