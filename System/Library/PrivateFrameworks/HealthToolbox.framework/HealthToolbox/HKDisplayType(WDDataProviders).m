@interface HKDisplayType(WDDataProviders)
- (WDDataListViewController)wd_dataListViewControllerWithProfile:()WDDataProviders unitController:;
- (id)wd_listViewControllerDataProviderWithProfile:()WDDataProviders unitController:;
- (id)wd_listViewControllerDataProviderWithProfile:()WDDataProviders unitController:isHierarchical:;
@end

@implementation HKDisplayType(WDDataProviders)

- (id)wd_listViewControllerDataProviderWithProfile:()WDDataProviders unitController:
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 presentation];
  v9 = [a1 wd_listViewControllerDataProviderWithProfile:v7 unitController:v6 isHierarchical:{objc_msgSend(v8, "showAllDataHierarchically")}];

  return v9;
}

- (id)wd_listViewControllerDataProviderWithProfile:()WDDataProviders unitController:isHierarchical:
{
  v7 = a1;
  v8 = a3;
  v9 = [v7 displayTypeIdentifier];
  if (v9 <= 188)
  {
    if (v9 > 118)
    {
      if (v9 > 143)
      {
        if (v9 <= 146)
        {
          if (v9 == 144 || v9 == 145)
          {
            goto LABEL_89;
          }
        }

        else if (v9 == 147 || v9 == 156 || v9 == 178)
        {
          goto LABEL_89;
        }

        goto LABEL_88;
      }

      if (v9 <= 138)
      {
        if (v9 == 119 || v9 == 125)
        {
          goto LABEL_89;
        }

        goto LABEL_88;
      }

      if (v9 != 139)
      {
        if (v9 == 140)
        {
          goto LABEL_89;
        }

        goto LABEL_88;
      }

      v12 = off_2796E6028;
      if (!a5)
      {
        v12 = off_2796E6020;
      }
    }

    else
    {
      if (v9 > 79)
      {
        if (v9 <= 98)
        {
          if (v9 == 80 || v9 == 97)
          {
            goto LABEL_89;
          }
        }

        else if (v9 == 99 || v9 == 102 || v9 == 107)
        {
          goto LABEL_89;
        }

        goto LABEL_88;
      }

      if (v9 <= 69)
      {
        if (v9 != 14)
        {
          if (v9 == 63)
          {
            goto LABEL_89;
          }

          goto LABEL_88;
        }

        v10 = @"RespiratoryHealthAppPlugin.healthplugin";
LABEL_68:
        v11 = [HBXHealthAppPluginFactory makeDataListDataProviderClassFromPluginName:v10 displayType:v7 hierarchical:a5];
        goto LABEL_90;
      }

      if (v9 != 70)
      {
        if (v9 == 79)
        {
          goto LABEL_89;
        }

        goto LABEL_88;
      }

      v12 = off_2796E5FA0;
      if (!a5)
      {
        v12 = off_2796E5FD0;
      }
    }

    v13 = *v12;
    v11 = objc_opt_class();
    goto LABEL_90;
  }

  if (v9 <= 248)
  {
    if (v9 <= 197)
    {
      if ((v9 - 191) < 3 || v9 == 189)
      {
        goto LABEL_89;
      }
    }

    else if (v9 <= 235)
    {
      if (v9 == 198 || v9 == 199)
      {
        goto LABEL_89;
      }
    }

    else if (v9 == 236 || v9 == 237 || v9 == 248)
    {
      goto LABEL_89;
    }
  }

  else
  {
    if (v9 <= 284)
    {
      if (v9 > 255)
      {
        if (v9 == 256 || v9 == 275 || v9 == 284)
        {
          goto LABEL_89;
        }

        goto LABEL_88;
      }

      if (v9 == 249)
      {
        goto LABEL_89;
      }

      if (v9 != 254)
      {
        goto LABEL_88;
      }

      goto LABEL_64;
    }

    if (v9 <= 287)
    {
      if (v9 != 285)
      {
        if (v9 == 287)
        {
          goto LABEL_89;
        }

        goto LABEL_88;
      }

LABEL_64:
      v10 = @"Heart.healthplugin";
      goto LABEL_68;
    }

    if (v9 == 288 || v9 == 298 || v9 == 304)
    {
      goto LABEL_89;
    }
  }

LABEL_88:
  v14 = [v7 sampleType];
  objc_opt_class();
  objc_opt_isKindOfClass();

LABEL_89:
  v11 = objc_opt_class();
LABEL_90:
  v15 = v11;

  v16 = [[v15 alloc] initWithDisplayType:v7 profile:v8];

  return v16;
}

- (WDDataListViewController)wd_dataListViewControllerWithProfile:()WDDataProviders unitController:
{
  v6 = a3;
  v7 = [a1 wd_listViewControllerDataProviderWithProfile:v6 unitController:a4];
  v8 = [[WDDataListViewController alloc] initWithDisplayType:a1 profile:v6 dataProvider:v7 usingInsetStyling:1];

  return v8;
}

@end