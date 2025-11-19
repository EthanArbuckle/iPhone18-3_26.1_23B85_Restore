@interface DBInstrumentClusterURLHandler
+ (BOOL)_isMapsClusterURL:(id)a3;
+ (BOOL)isURLSupported:(id)a3;
+ (id)_correctedComponentsForURL:(id)a3;
+ (unint64_t)_clusterSettingForURLValue:(id)a3;
+ (unint64_t)_gaugeClusterPresentationForURLValue:(id)a3;
+ (unint64_t)_layoutSettingForURLValue:(id)a3;
+ (unint64_t)_mapsPresentationForURLValue:(id)a3;
+ (void)applySettingsForClusterURL:(id)a3 toSceneSettings:(id)a4;
@end

@implementation DBInstrumentClusterURLHandler

+ (BOOL)isURLSupported:(id)a3
{
  if (a3)
  {

    return [a1 _isMapsClusterURL:?];
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

+ (void)applySettingsForClusterURL:(id)a3 toSceneSettings:(id)a4
{
  v63 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [v7 setItemType:0];
  [v7 setShowsSpeedLimit:2];
  [v7 setShowsCompass:2];
  [v7 setShowsETA:2];
  [v7 setLayoutJustification:0];
  [v7 setHostedAltScreenPresentationType:0];
  if (v6)
  {
    v8 = [a1 _correctedComponentsForURL:v6];
    v9 = [v8 path];
    v10 = [v9 pathComponents];
    v11 = [v10 mutableCopy];

    [v11 db_removeFirstObjectIfMatching:@"/"];
    v12 = [v8 scheme];
    LODWORD(v10) = [v12 isEqualToString:@"maps"];

    if (!v10)
    {
      v15 = [v8 scheme];
      v16 = [v15 isEqualToString:@"nextGenHostedContent"];

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
      v17 = [v8 queryItems];
      v18 = [v17 countByEnumeratingWithState:&v52 objects:v61 count:16];
      if (!v18)
      {
LABEL_55:

LABEL_56:
        if (v7)
        {
LABEL_60:

          goto LABEL_61;
        }

LABEL_57:
        v48 = DBLogForCategory(0xAuLL);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          [DBInstrumentClusterURLHandler applySettingsForClusterURL:v6 toSceneSettings:v48];
        }

        v7 = 0;
        goto LABEL_60;
      }

      v19 = v18;
      v49 = v11;
      v50 = v8;
      v51 = v6;
      v20 = *v53;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v53 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v52 + 1) + 8 * i);
          v23 = [v22 value];
          v24 = [v23 lowercaseString];

          v25 = [v22 name];
          v26 = [v25 isEqualToString:@"showETA"];

          if (v26)
          {
            [v7 setShowsETA:{objc_msgSend(a1, "_clusterSettingForURLValue:", v24)}];
          }

          else
          {
            v27 = [v22 name];
            v28 = [v27 isEqualToString:@"altScreenPresentation"];

            if (v28)
            {
              [v7 setHostedAltScreenPresentationType:{objc_msgSend(a1, "_gaugeClusterPresentationForURLValue:", v24)}];
            }

            else
            {
              v29 = [v22 name];
              v30 = [v29 isEqualToString:@"mapsPresentation"];

              if (v30)
              {
                [v7 setItemType:{objc_msgSend(a1, "_mapsPresentationForURLValue:", v24)}];
              }

              else
              {
                v31 = [v22 name];
                v32 = [v31 isEqualToString:@"maneuverLayout"];

                if (v32)
                {
                  [v7 setLayoutJustification:{objc_msgSend(a1, "_layoutSettingForURLValue:", v24)}];
                }
              }
            }
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v52 objects:v61 count:16];
      }

      while (v19);
LABEL_54:
      v8 = v50;
      v6 = v51;
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
          v17 = [v8 queryItems];
          v33 = [v17 countByEnumeratingWithState:&v56 objects:v62 count:16];
          if (!v33)
          {
            goto LABEL_55;
          }

          v34 = v33;
          v49 = v11;
          v50 = v8;
          v51 = v6;
          v35 = *v57;
          do
          {
            for (j = 0; j != v34; ++j)
            {
              if (*v57 != v35)
              {
                objc_enumerationMutation(v17);
              }

              v37 = *(*(&v56 + 1) + 8 * j);
              v38 = [v37 value];
              v39 = [v38 lowercaseString];

              v40 = [v37 name];
              v41 = [v40 isEqualToString:@"showSpeedLimit"];

              if (v41)
              {
                [v7 setShowsSpeedLimit:{objc_msgSend(a1, "_clusterSettingForURLValue:", v39)}];
              }

              else
              {
                v42 = [v37 name];
                v43 = [v42 isEqualToString:@"showCompass"];

                if (v43)
                {
                  [v7 setShowsCompass:{objc_msgSend(a1, "_clusterSettingForURLValue:", v39)}];
                }

                else
                {
                  v44 = [v37 name];
                  v45 = [v44 isEqualToString:@"showETA"];

                  if (v45)
                  {
                    [v7 setShowsETA:{objc_msgSend(a1, "_clusterSettingForURLValue:", v39)}];
                  }

                  else
                  {
                    v46 = [v37 name];
                    v47 = [v46 isEqualToString:@"maneuverLayout"];

                    if (v47)
                    {
                      [v7 setLayoutJustification:{objc_msgSend(a1, "_layoutSettingForURLValue:", v39)}];
                    }
                  }
                }
              }
            }

            v34 = [v17 countByEnumeratingWithState:&v56 objects:v62 count:16];
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

    [v7 setItemType:v14];
    goto LABEL_37;
  }

  v8 = DBLogForCategory(0xAuLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [DBInstrumentClusterURLHandler isURLSupported:v8];
  }

LABEL_61:
}

+ (id)_correctedComponentsForURL:(id)a3
{
  v3 = MEMORY[0x277CCACE0];
  v4 = a3;
  v5 = [v3 componentsWithURL:v4 resolvingAgainstBaseURL:0];
  v6 = [v4 absoluteString];

  v7 = [v5 scheme];
  v8 = [v7 stringByAppendingString:@"://"];
  if ([v6 hasPrefix:v8])
  {
    v9 = [v7 stringByAppendingString:@":/"];
    v10 = [v6 mutableCopy];
    [v10 replaceOccurrencesOfString:v8 withString:v9 options:8 range:{0, objc_msgSend(v10, "length")}];
    v11 = MEMORY[0x277CCACE0];
    v12 = [MEMORY[0x277CBEBC0] URLWithString:v10];
    v13 = [v11 componentsWithURL:v12 resolvingAgainstBaseURL:0];

    v5 = v13;
  }

  return v5;
}

+ (BOOL)_isMapsClusterURL:(id)a3
{
  v3 = [a3 absoluteString];
  v4 = [v3 lowercaseString];

  if ([v4 hasPrefix:@"maps:/car/instrumentcluster"])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 hasPrefix:@"maps://car/instrumentcluster"];
  }

  return v5;
}

+ (unint64_t)_layoutSettingForURLValue:(id)a3
{
  v3 = [a3 lowercaseString];
  if ([v3 isEqualToString:@"leftaligned"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"rightaligned"])
  {
    v4 = 3;
  }

  else
  {
    v4 = [v3 isEqualToString:@"topaligned"];
  }

  return v4;
}

+ (unint64_t)_clusterSettingForURLValue:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"yes"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"1"))
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"no"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"0"))
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"user"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

+ (unint64_t)_gaugeClusterPresentationForURLValue:(id)a3
{
  v3 = [a3 lowercaseString];
  if ([v3 isEqualToString:@"dcacarousel"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"mapsmediacarousel"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"popover"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"passengerdisplay"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (unint64_t)_mapsPresentationForURLValue:(id)a3
{
  v3 = [a3 lowercaseString];
  if ([v3 isEqualToString:@"anycontent"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"map"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"instructioncard"])
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