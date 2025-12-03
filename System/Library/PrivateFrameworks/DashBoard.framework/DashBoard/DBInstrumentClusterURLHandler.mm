@interface DBInstrumentClusterURLHandler
+ (BOOL)_isMapsClusterURL:(id)l;
+ (BOOL)isURLSupported:(id)supported;
+ (id)_correctedComponentsForURL:(id)l;
+ (unint64_t)_clusterSettingForURLValue:(id)value;
+ (unint64_t)_gaugeClusterPresentationForURLValue:(id)value;
+ (unint64_t)_layoutSettingForURLValue:(id)value;
+ (unint64_t)_mapsPresentationForURLValue:(id)value;
+ (void)applySettingsForClusterURL:(id)l toSceneSettings:(id)settings;
@end

@implementation DBInstrumentClusterURLHandler

+ (BOOL)isURLSupported:(id)supported
{
  if (supported)
  {

    return [self _isMapsClusterURL:?];
  }

  else
  {
    v5 = DBLogForCategory(0xAuLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [DBInstrumentClusterURLHandler isURLSupported:v5];
    }

    return 0;
  }
}

+ (void)applySettingsForClusterURL:(id)l toSceneSettings:(id)settings
{
  v63 = *MEMORY[0x277D85DE8];
  lCopy = l;
  settingsCopy = settings;
  [settingsCopy setItemType:0];
  [settingsCopy setShowsSpeedLimit:2];
  [settingsCopy setShowsCompass:2];
  [settingsCopy setShowsETA:2];
  [settingsCopy setLayoutJustification:0];
  [settingsCopy setHostedAltScreenPresentationType:0];
  if (lCopy)
  {
    v8 = [self _correctedComponentsForURL:lCopy];
    path = [v8 path];
    pathComponents = [path pathComponents];
    v11 = [pathComponents mutableCopy];

    [v11 db_removeFirstObjectIfMatching:@"/"];
    scheme = [v8 scheme];
    LODWORD(pathComponents) = [scheme isEqualToString:@"maps"];

    if (!pathComponents)
    {
      scheme2 = [v8 scheme];
      v16 = [scheme2 isEqualToString:@"nextGenHostedContent"];

      if (!v16)
      {
        goto LABEL_56;
      }

      [v11 db_removeFirstObjectsIfMatching:&unk_285AA4A30];
      if ([v11 count])
      {
LABEL_38:

        goto LABEL_57;
      }

      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      queryItems = [v8 queryItems];
      v18 = [queryItems countByEnumeratingWithState:&v52 objects:v61 count:16];
      if (!v18)
      {
LABEL_55:

LABEL_56:
        if (settingsCopy)
        {
LABEL_60:

          goto LABEL_61;
        }

LABEL_57:
        v48 = DBLogForCategory(0xAuLL);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          [DBInstrumentClusterURLHandler applySettingsForClusterURL:lCopy toSceneSettings:v48];
        }

        settingsCopy = 0;
        goto LABEL_60;
      }

      v19 = v18;
      v49 = v11;
      v50 = v8;
      v51 = lCopy;
      v20 = *v53;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v53 != v20)
          {
            objc_enumerationMutation(queryItems);
          }

          v22 = *(*(&v52 + 1) + 8 * i);
          value = [v22 value];
          lowercaseString = [value lowercaseString];

          name = [v22 name];
          v26 = [name isEqualToString:@"showETA"];

          if (v26)
          {
            [settingsCopy setShowsETA:{objc_msgSend(self, "_clusterSettingForURLValue:", lowercaseString)}];
          }

          else
          {
            name2 = [v22 name];
            v28 = [name2 isEqualToString:@"altScreenPresentation"];

            if (v28)
            {
              [settingsCopy setHostedAltScreenPresentationType:{objc_msgSend(self, "_gaugeClusterPresentationForURLValue:", lowercaseString)}];
            }

            else
            {
              name3 = [v22 name];
              v30 = [name3 isEqualToString:@"mapsPresentation"];

              if (v30)
              {
                [settingsCopy setItemType:{objc_msgSend(self, "_mapsPresentationForURLValue:", lowercaseString)}];
              }

              else
              {
                name4 = [v22 name];
                v32 = [name4 isEqualToString:@"maneuverLayout"];

                if (v32)
                {
                  [settingsCopy setLayoutJustification:{objc_msgSend(self, "_layoutSettingForURLValue:", lowercaseString)}];
                }
              }
            }
          }
        }

        v19 = [queryItems countByEnumeratingWithState:&v52 objects:v61 count:16];
      }

      while (v19);
LABEL_54:
      v8 = v50;
      lCopy = v51;
      v11 = v49;
      goto LABEL_55;
    }

    if (![v11 db_removeFirstObjectsIfMatching:&unk_285AA4A18])
    {
      goto LABEL_56;
    }

    if ([v11 count])
    {
      if ([v11 db_removeFirstObjectIfMatching:@"instructioncard"])
      {
        v13 = DBLogForCategory(0xAuLL);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v14 = 2;
          _os_log_impl(&dword_248146000, v13, OS_LOG_TYPE_DEFAULT, "Received instrument cluster URL of type instructioncard.", buf, 2u);
        }

        else
        {
          v14 = 2;
        }
      }

      else
      {
        if (![v11 db_removeFirstObjectIfMatching:@"map"])
        {
LABEL_37:
          if ([v11 count])
          {
            goto LABEL_38;
          }

          v58 = 0u;
          v59 = 0u;
          v56 = 0u;
          v57 = 0u;
          queryItems = [v8 queryItems];
          v33 = [queryItems countByEnumeratingWithState:&v56 objects:v62 count:16];
          if (!v33)
          {
            goto LABEL_55;
          }

          v34 = v33;
          v49 = v11;
          v50 = v8;
          v51 = lCopy;
          v35 = *v57;
          do
          {
            for (j = 0; j != v34; ++j)
            {
              if (*v57 != v35)
              {
                objc_enumerationMutation(queryItems);
              }

              v37 = *(*(&v56 + 1) + 8 * j);
              value2 = [v37 value];
              lowercaseString2 = [value2 lowercaseString];

              name5 = [v37 name];
              v41 = [name5 isEqualToString:@"showSpeedLimit"];

              if (v41)
              {
                [settingsCopy setShowsSpeedLimit:{objc_msgSend(self, "_clusterSettingForURLValue:", lowercaseString2)}];
              }

              else
              {
                name6 = [v37 name];
                v43 = [name6 isEqualToString:@"showCompass"];

                if (v43)
                {
                  [settingsCopy setShowsCompass:{objc_msgSend(self, "_clusterSettingForURLValue:", lowercaseString2)}];
                }

                else
                {
                  name7 = [v37 name];
                  v45 = [name7 isEqualToString:@"showETA"];

                  if (v45)
                  {
                    [settingsCopy setShowsETA:{objc_msgSend(self, "_clusterSettingForURLValue:", lowercaseString2)}];
                  }

                  else
                  {
                    name8 = [v37 name];
                    v47 = [name8 isEqualToString:@"maneuverLayout"];

                    if (v47)
                    {
                      [settingsCopy setLayoutJustification:{objc_msgSend(self, "_layoutSettingForURLValue:", lowercaseString2)}];
                    }
                  }
                }
              }
            }

            v34 = [queryItems countByEnumeratingWithState:&v56 objects:v62 count:16];
          }

          while (v34);
          goto LABEL_54;
        }

        v13 = DBLogForCategory(0xAuLL);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_248146000, v13, OS_LOG_TYPE_DEFAULT, "Received instrument cluster URL of type map.", buf, 2u);
        }

        v14 = 1;
      }
    }

    else
    {
      v13 = DBLogForCategory(0xAuLL);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_248146000, v13, OS_LOG_TYPE_DEFAULT, "Received a base instrument cluster URL; using type AnyContent", buf, 2u);
      }

      v14 = 3;
    }

    [settingsCopy setItemType:v14];
    goto LABEL_37;
  }

  v8 = DBLogForCategory(0xAuLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [DBInstrumentClusterURLHandler isURLSupported:v8];
  }

LABEL_61:
}

+ (id)_correctedComponentsForURL:(id)l
{
  v3 = MEMORY[0x277CCACE0];
  lCopy = l;
  v5 = [v3 componentsWithURL:lCopy resolvingAgainstBaseURL:0];
  absoluteString = [lCopy absoluteString];

  scheme = [v5 scheme];
  v8 = [scheme stringByAppendingString:@"://"];
  if ([absoluteString hasPrefix:v8])
  {
    v9 = [scheme stringByAppendingString:@":/"];
    v10 = [absoluteString mutableCopy];
    [v10 replaceOccurrencesOfString:v8 withString:v9 options:8 range:{0, objc_msgSend(v10, "length")}];
    v11 = MEMORY[0x277CCACE0];
    v12 = [MEMORY[0x277CBEBC0] URLWithString:v10];
    v13 = [v11 componentsWithURL:v12 resolvingAgainstBaseURL:0];

    v5 = v13;
  }

  return v5;
}

+ (BOOL)_isMapsClusterURL:(id)l
{
  absoluteString = [l absoluteString];
  lowercaseString = [absoluteString lowercaseString];

  if ([lowercaseString hasPrefix:@"maps:/car/instrumentcluster"])
  {
    v5 = 1;
  }

  else
  {
    v5 = [lowercaseString hasPrefix:@"maps://car/instrumentcluster"];
  }

  return v5;
}

+ (unint64_t)_layoutSettingForURLValue:(id)value
{
  lowercaseString = [value lowercaseString];
  if ([lowercaseString isEqualToString:@"leftaligned"])
  {
    v4 = 2;
  }

  else if ([lowercaseString isEqualToString:@"rightaligned"])
  {
    v4 = 3;
  }

  else
  {
    v4 = [lowercaseString isEqualToString:@"topaligned"];
  }

  return v4;
}

+ (unint64_t)_clusterSettingForURLValue:(id)value
{
  valueCopy = value;
  if ([valueCopy isEqualToString:@"yes"] & 1) != 0 || (objc_msgSend(valueCopy, "isEqualToString:", @"1"))
  {
    v4 = 1;
  }

  else if ([valueCopy isEqualToString:@"no"] & 1) != 0 || (objc_msgSend(valueCopy, "isEqualToString:", @"0"))
  {
    v4 = 2;
  }

  else if ([valueCopy isEqualToString:@"user"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

+ (unint64_t)_gaugeClusterPresentationForURLValue:(id)value
{
  lowercaseString = [value lowercaseString];
  if ([lowercaseString isEqualToString:@"dcacarousel"])
  {
    v4 = 1;
  }

  else if ([lowercaseString isEqualToString:@"mapsmediacarousel"])
  {
    v4 = 2;
  }

  else if ([lowercaseString isEqualToString:@"popover"])
  {
    v4 = 3;
  }

  else if ([lowercaseString isEqualToString:@"passengerdisplay"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (unint64_t)_mapsPresentationForURLValue:(id)value
{
  lowercaseString = [value lowercaseString];
  if ([lowercaseString isEqualToString:@"anycontent"])
  {
    v4 = 3;
  }

  else if ([lowercaseString isEqualToString:@"map"])
  {
    v4 = 1;
  }

  else if ([lowercaseString isEqualToString:@"instructioncard"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 3;
  }

  return v4;
}

+ (void)applySettingsForClusterURL:(uint64_t)a1 toSceneSettings:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_248146000, a2, OS_LOG_TYPE_ERROR, "Received an invalid instrument cluster URL: %{public}@", &v2, 0xCu);
}

@end