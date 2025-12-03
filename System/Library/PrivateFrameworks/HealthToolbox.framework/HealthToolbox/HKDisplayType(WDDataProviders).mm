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
  presentation = [self presentation];
  v9 = [self wd_listViewControllerDataProviderWithProfile:v7 unitController:v6 isHierarchical:{objc_msgSend(presentation, "showAllDataHierarchically")}];

  return v9;
}

- (id)wd_listViewControllerDataProviderWithProfile:()WDDataProviders unitController:isHierarchical:
{
  selfCopy = self;
  v8 = a3;
  displayTypeIdentifier = [selfCopy displayTypeIdentifier];
  if (displayTypeIdentifier <= 188)
  {
    if (displayTypeIdentifier > 118)
    {
      if (displayTypeIdentifier > 143)
      {
        if (displayTypeIdentifier <= 146)
        {
          if (displayTypeIdentifier == 144 || displayTypeIdentifier == 145)
          {
            goto LABEL_89;
          }
        }

        else if (displayTypeIdentifier == 147 || displayTypeIdentifier == 156 || displayTypeIdentifier == 178)
        {
          goto LABEL_89;
        }

        goto LABEL_88;
      }

      if (displayTypeIdentifier <= 138)
      {
        if (displayTypeIdentifier == 119 || displayTypeIdentifier == 125)
        {
          goto LABEL_89;
        }

        goto LABEL_88;
      }

      if (displayTypeIdentifier != 139)
      {
        if (displayTypeIdentifier == 140)
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
      if (displayTypeIdentifier > 79)
      {
        if (displayTypeIdentifier <= 98)
        {
          if (displayTypeIdentifier == 80 || displayTypeIdentifier == 97)
          {
            goto LABEL_89;
          }
        }

        else if (displayTypeIdentifier == 99 || displayTypeIdentifier == 102 || displayTypeIdentifier == 107)
        {
          goto LABEL_89;
        }

        goto LABEL_88;
      }

      if (displayTypeIdentifier <= 69)
      {
        if (displayTypeIdentifier != 14)
        {
          if (displayTypeIdentifier == 63)
          {
            goto LABEL_89;
          }

          goto LABEL_88;
        }

        v10 = @"RespiratoryHealthAppPlugin.healthplugin";
LABEL_68:
        v11 = [HBXHealthAppPluginFactory makeDataListDataProviderClassFromPluginName:v10 displayType:selfCopy hierarchical:a5];
        goto LABEL_90;
      }

      if (displayTypeIdentifier != 70)
      {
        if (displayTypeIdentifier == 79)
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

  if (displayTypeIdentifier <= 248)
  {
    if (displayTypeIdentifier <= 197)
    {
      if ((displayTypeIdentifier - 191) < 3 || displayTypeIdentifier == 189)
      {
        goto LABEL_89;
      }
    }

    else if (displayTypeIdentifier <= 235)
    {
      if (displayTypeIdentifier == 198 || displayTypeIdentifier == 199)
      {
        goto LABEL_89;
      }
    }

    else if (displayTypeIdentifier == 236 || displayTypeIdentifier == 237 || displayTypeIdentifier == 248)
    {
      goto LABEL_89;
    }
  }

  else
  {
    if (displayTypeIdentifier <= 284)
    {
      if (displayTypeIdentifier > 255)
      {
        if (displayTypeIdentifier == 256 || displayTypeIdentifier == 275 || displayTypeIdentifier == 284)
        {
          goto LABEL_89;
        }

        goto LABEL_88;
      }

      if (displayTypeIdentifier == 249)
      {
        goto LABEL_89;
      }

      if (displayTypeIdentifier != 254)
      {
        goto LABEL_88;
      }

      goto LABEL_64;
    }

    if (displayTypeIdentifier <= 287)
    {
      if (displayTypeIdentifier != 285)
      {
        if (displayTypeIdentifier == 287)
        {
          goto LABEL_89;
        }

        goto LABEL_88;
      }

LABEL_64:
      v10 = @"Heart.healthplugin";
      goto LABEL_68;
    }

    if (displayTypeIdentifier == 288 || displayTypeIdentifier == 298 || displayTypeIdentifier == 304)
    {
      goto LABEL_89;
    }
  }

LABEL_88:
  sampleType = [selfCopy sampleType];
  objc_opt_class();
  objc_opt_isKindOfClass();

LABEL_89:
  v11 = objc_opt_class();
LABEL_90:
  v15 = v11;

  v16 = [[v15 alloc] initWithDisplayType:selfCopy profile:v8];

  return v16;
}

- (WDDataListViewController)wd_dataListViewControllerWithProfile:()WDDataProviders unitController:
{
  v6 = a3;
  v7 = [self wd_listViewControllerDataProviderWithProfile:v6 unitController:a4];
  v8 = [[WDDataListViewController alloc] initWithDisplayType:self profile:v6 dataProvider:v7 usingInsetStyling:1];

  return v8;
}

@end