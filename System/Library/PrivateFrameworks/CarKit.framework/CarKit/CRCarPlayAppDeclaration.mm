@interface CRCarPlayAppDeclaration
+ (id)declarationForAppProxy:(id)proxy;
+ (id)declarationForAppRecord:(id)record;
+ (id)declarationForBundleIdentifier:(id)identifier entitlements:(id)entitlements infoPlist:(id)plist;
+ (id)declarationForBundleIdentifier:(id)identifier infoPropertyList:(id)list entitlementsPropertyList:(id)propertyList bundlePath:(id)path;
@end

@implementation CRCarPlayAppDeclaration

+ (id)declarationForAppProxy:(id)proxy
{
  proxyCopy = proxy;
  bundleIdentifier = [proxyCopy bundleIdentifier];
  requiredInfoKeys = [self requiredInfoKeys];
  v7 = [proxyCopy objectsForInfoDictionaryKeys:requiredInfoKeys];
  requiredEntitlementKeys = [self requiredEntitlementKeys];
  v9 = [proxyCopy entitlementValuesForKeys:requiredEntitlementKeys];
  bundleURL = [proxyCopy bundleURL];

  path = [bundleURL path];
  v12 = [self declarationForBundleIdentifier:bundleIdentifier infoPropertyList:v7 entitlementsPropertyList:v9 bundlePath:path];

  return v12;
}

+ (id)declarationForBundleIdentifier:(id)identifier infoPropertyList:(id)list entitlementsPropertyList:(id)propertyList bundlePath:(id)path
{
  v59 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  listCopy = list;
  propertyListCopy = propertyList;
  pathCopy = path;
  v47 = listCopy;
  if (([propertyListCopy BOOLForKey:@"CARCapableApp"] & 1) != 0 || objc_msgSend(propertyListCopy, "BOOLForKey:", @"SBStarkCapable"))
  {
    v11 = objc_alloc_init(CRCarPlayAppDeclaration);
    [(CRCarPlayAppDeclaration *)v11 setBundleIdentifier:identifierCopy];
    v12 = v11;
    [(CRCarPlayAppDeclaration *)v12 setSystemApp:1];

    v13 = [listCopy objectForKey:@"SBStarkLaunchModes" ofClass:objc_opt_class()];
    if (v13)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v44 = v13;
        v45 = propertyListCopy;
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v14 = v13;
        v15 = [v14 countByEnumeratingWithState:&v53 objects:v58 count:16];
        if (!v15)
        {
          goto LABEL_22;
        }

        v16 = v15;
        v17 = *v54;
        while (1)
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v54 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v53 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              if ([v19 isEqualToString:@"Siri"])
              {
                if (!v12)
                {
                  v12 = objc_alloc_init(CRCarPlayAppDeclaration);
                  [(CRCarPlayAppDeclaration *)v12 setBundleIdentifier:identifierCopy];
                }

                v12 = v12;
                [(CRCarPlayAppDeclaration *)v12 setLaunchUsingSiri:1];
              }

              else
              {
                if (![v19 isEqualToString:@"GeoSupported"])
                {
                  continue;
                }

                if (!v12)
                {
                  v12 = objc_alloc_init(CRCarPlayAppDeclaration);
                  [(CRCarPlayAppDeclaration *)v12 setBundleIdentifier:identifierCopy];
                }

                v12 = v12;
                [(CRCarPlayAppDeclaration *)v12 setRequiresGeoSupport:1];
              }
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v53 objects:v58 count:16];
          if (!v16)
          {
LABEL_22:

            v13 = v44;
            propertyListCopy = v45;
            break;
          }
        }
      }
    }

    if (([propertyListCopy BOOLForKey:@"com.apple.developer.carplay-automaker"] & 1) == 0)
    {
      v20 = 0;
      goto LABEL_30;
    }

    if (v12)
    {
LABEL_29:
      v12 = v12;
      [(CRCarPlayAppDeclaration *)v12 setSupportsAutomakerAppService:1];

      v20 = 32;
LABEL_30:
      if (([propertyListCopy BOOLForKey:@"com.apple.developer.carplay-audio"] & 1) == 0)
      {
        goto LABEL_39;
      }

      v20 |= 0x10uLL;
      if (v12)
      {
LABEL_36:
        v21 = v12;
        [(CRCarPlayAppDeclaration *)v21 setSupportsAudio:1];

        if (!v21)
        {
          v21 = objc_alloc_init(CRCarPlayAppDeclaration);
          [(CRCarPlayAppDeclaration *)v21 setBundleIdentifier:identifierCopy];
        }

        v12 = v21;
        [(CRCarPlayAppDeclaration *)v12 setSupportsTemplates:1];

LABEL_39:
        if (([propertyListCopy BOOLForKey:@"com.apple.developer.carplay-calling"] & 1) == 0)
        {
          goto LABEL_43;
        }

        v20 |= 4uLL;
        if (v12)
        {
LABEL_42:
          v12 = v12;
          [(CRCarPlayAppDeclaration *)v12 setSupportsCalling:1];

LABEL_43:
          if (([propertyListCopy BOOLForKey:@"com.apple.developer.carplay-charging"] & 1) == 0)
          {
            goto LABEL_49;
          }

          v20 |= 0x100uLL;
          if (v12)
          {
LABEL_46:
            v22 = v12;
            [(CRCarPlayAppDeclaration *)v22 setSupportsCharging:1];

            if (!v22)
            {
              v22 = objc_alloc_init(CRCarPlayAppDeclaration);
              [(CRCarPlayAppDeclaration *)v22 setBundleIdentifier:identifierCopy];
            }

            v12 = v22;
            [(CRCarPlayAppDeclaration *)v12 setSupportsTemplates:1];

LABEL_49:
            if (([propertyListCopy BOOLForKey:@"com.apple.developer.carplay-communication"] & 1) == 0)
            {
              goto LABEL_55;
            }

            v20 |= 6uLL;
            if (v12)
            {
LABEL_52:
              v23 = v12;
              [(CRCarPlayAppDeclaration *)v23 setSupportsCommunication:1];

              if (!v23)
              {
                v23 = objc_alloc_init(CRCarPlayAppDeclaration);
                [(CRCarPlayAppDeclaration *)v23 setBundleIdentifier:identifierCopy];
              }

              v12 = v23;
              [(CRCarPlayAppDeclaration *)v12 setSupportsTemplates:1];

LABEL_55:
              if (([propertyListCopy BOOLForKey:@"com.apple.developer.carplay-driving-task"] & 1) == 0)
              {
                goto LABEL_61;
              }

              v20 |= 0x1000uLL;
              if (v12)
              {
LABEL_58:
                v24 = v12;
                [(CRCarPlayAppDeclaration *)v24 setSupportsDrivingTask:1];

                if (!v24)
                {
                  v24 = objc_alloc_init(CRCarPlayAppDeclaration);
                  [(CRCarPlayAppDeclaration *)v24 setBundleIdentifier:identifierCopy];
                }

                v12 = v24;
                [(CRCarPlayAppDeclaration *)v12 setSupportsTemplates:1];

LABEL_61:
                if (([propertyListCopy BOOLForKey:@"com.apple.developer.carplay-fueling"] & 1) == 0)
                {
                  goto LABEL_67;
                }

                v20 |= 0x800uLL;
                if (v12)
                {
LABEL_64:
                  v25 = v12;
                  [(CRCarPlayAppDeclaration *)v25 setSupportsFueling:1];

                  if (!v25)
                  {
                    v25 = objc_alloc_init(CRCarPlayAppDeclaration);
                    [(CRCarPlayAppDeclaration *)v25 setBundleIdentifier:identifierCopy];
                  }

                  v12 = v25;
                  [(CRCarPlayAppDeclaration *)v12 setSupportsTemplates:1];

LABEL_67:
                  if (([propertyListCopy BOOLForKey:@"com.apple.developer.carplay-maps"] & 1) == 0)
                  {
                    goto LABEL_73;
                  }

                  v20 |= 8uLL;
                  if (v12)
                  {
LABEL_70:
                    v26 = v12;
                    [(CRCarPlayAppDeclaration *)v26 setSupportsMaps:1];

                    if (!v26)
                    {
                      v26 = objc_alloc_init(CRCarPlayAppDeclaration);
                      [(CRCarPlayAppDeclaration *)v26 setBundleIdentifier:identifierCopy];
                    }

                    v12 = v26;
                    [(CRCarPlayAppDeclaration *)v12 setSupportsTemplates:1];

LABEL_73:
                    if (([propertyListCopy BOOLForKey:@"com.apple.developer.carplay-messaging"] & 1) == 0)
                    {
                      goto LABEL_77;
                    }

                    v20 |= 2uLL;
                    if (v12)
                    {
LABEL_76:
                      v12 = v12;
                      [(CRCarPlayAppDeclaration *)v12 setSupportsMessaging:1];

LABEL_77:
                      if (([propertyListCopy BOOLForKey:@"com.apple.developer.carplay-parking"] & 1) == 0)
                      {
                        goto LABEL_83;
                      }

                      v20 |= 0x200uLL;
                      if (v12)
                      {
LABEL_80:
                        v27 = v12;
                        [(CRCarPlayAppDeclaration *)v27 setSupportsParking:1];

                        if (!v27)
                        {
                          v27 = objc_alloc_init(CRCarPlayAppDeclaration);
                          [(CRCarPlayAppDeclaration *)v27 setBundleIdentifier:identifierCopy];
                        }

                        v12 = v27;
                        [(CRCarPlayAppDeclaration *)v12 setSupportsTemplates:1];

LABEL_83:
                        if (([propertyListCopy BOOLForKey:@"com.apple.developer.playable-content"] & 1) == 0)
                        {
                          goto LABEL_87;
                        }

                        v20 |= 0x10uLL;
                        if (v12)
                        {
LABEL_86:
                          v12 = v12;
                          [(CRCarPlayAppDeclaration *)v12 setSupportsPlayableContent:1];

LABEL_87:
                          if (([propertyListCopy BOOLForKey:@"com.apple.developer.carplay-public-safety"] & 1) == 0)
                          {
                            goto LABEL_93;
                          }

                          v20 |= 0x2000uLL;
                          if (v12)
                          {
LABEL_90:
                            v28 = v12;
                            [(CRCarPlayAppDeclaration *)v28 setSupportsPublicSafety:1];

                            if (!v28)
                            {
                              v28 = objc_alloc_init(CRCarPlayAppDeclaration);
                              [(CRCarPlayAppDeclaration *)v28 setBundleIdentifier:identifierCopy];
                            }

                            v12 = v28;
                            [(CRCarPlayAppDeclaration *)v12 setSupportsTemplates:1];

LABEL_93:
                            if (([propertyListCopy BOOLForKey:@"com.apple.developer.carplay-quick-ordering"] & 1) == 0)
                            {
                              goto LABEL_99;
                            }

                            v20 |= 0x80uLL;
                            if (v12)
                            {
LABEL_96:
                              v29 = v12;
                              [(CRCarPlayAppDeclaration *)v29 setSupportsQuickOrdering:1];

                              if (!v29)
                              {
                                v29 = objc_alloc_init(CRCarPlayAppDeclaration);
                                [(CRCarPlayAppDeclaration *)v29 setBundleIdentifier:identifierCopy];
                              }

                              v12 = v29;
                              [(CRCarPlayAppDeclaration *)v12 setSupportsTemplates:1];

LABEL_99:
                              if (([propertyListCopy BOOLForKey:@"com.apple.developer.carplay-video"] & 1) == 0)
                              {
                                goto LABEL_105;
                              }

                              v20 |= 0x4000uLL;
                              if (v12)
                              {
                                goto LABEL_102;
                              }

                              goto LABEL_101;
                            }

LABEL_95:
                            v12 = objc_alloc_init(CRCarPlayAppDeclaration);
                            [(CRCarPlayAppDeclaration *)v12 setBundleIdentifier:identifierCopy];
                            goto LABEL_96;
                          }

LABEL_89:
                          v12 = objc_alloc_init(CRCarPlayAppDeclaration);
                          [(CRCarPlayAppDeclaration *)v12 setBundleIdentifier:identifierCopy];
                          goto LABEL_90;
                        }

LABEL_85:
                        v12 = objc_alloc_init(CRCarPlayAppDeclaration);
                        [(CRCarPlayAppDeclaration *)v12 setBundleIdentifier:identifierCopy];
                        goto LABEL_86;
                      }

LABEL_79:
                      v12 = objc_alloc_init(CRCarPlayAppDeclaration);
                      [(CRCarPlayAppDeclaration *)v12 setBundleIdentifier:identifierCopy];
                      goto LABEL_80;
                    }

LABEL_75:
                    v12 = objc_alloc_init(CRCarPlayAppDeclaration);
                    [(CRCarPlayAppDeclaration *)v12 setBundleIdentifier:identifierCopy];
                    goto LABEL_76;
                  }

LABEL_69:
                  v12 = objc_alloc_init(CRCarPlayAppDeclaration);
                  [(CRCarPlayAppDeclaration *)v12 setBundleIdentifier:identifierCopy];
                  goto LABEL_70;
                }

LABEL_63:
                v12 = objc_alloc_init(CRCarPlayAppDeclaration);
                [(CRCarPlayAppDeclaration *)v12 setBundleIdentifier:identifierCopy];
                goto LABEL_64;
              }

LABEL_57:
              v12 = objc_alloc_init(CRCarPlayAppDeclaration);
              [(CRCarPlayAppDeclaration *)v12 setBundleIdentifier:identifierCopy];
              goto LABEL_58;
            }

LABEL_51:
            v12 = objc_alloc_init(CRCarPlayAppDeclaration);
            [(CRCarPlayAppDeclaration *)v12 setBundleIdentifier:identifierCopy];
            goto LABEL_52;
          }

LABEL_45:
          v12 = objc_alloc_init(CRCarPlayAppDeclaration);
          [(CRCarPlayAppDeclaration *)v12 setBundleIdentifier:identifierCopy];
          goto LABEL_46;
        }

LABEL_41:
        v12 = objc_alloc_init(CRCarPlayAppDeclaration);
        [(CRCarPlayAppDeclaration *)v12 setBundleIdentifier:identifierCopy];
        goto LABEL_42;
      }

LABEL_35:
      v12 = objc_alloc_init(CRCarPlayAppDeclaration);
      [(CRCarPlayAppDeclaration *)v12 setBundleIdentifier:identifierCopy];
      goto LABEL_36;
    }

LABEL_28:
    v12 = objc_alloc_init(CRCarPlayAppDeclaration);
    [(CRCarPlayAppDeclaration *)v12 setBundleIdentifier:identifierCopy];
    goto LABEL_29;
  }

  if ([propertyListCopy BOOLForKey:@"com.apple.developer.carplay-automaker"])
  {
    goto LABEL_28;
  }

  if ([propertyListCopy BOOLForKey:@"com.apple.developer.carplay-audio"])
  {
    v20 = 16;
    goto LABEL_35;
  }

  if ([propertyListCopy BOOLForKey:@"com.apple.developer.carplay-calling"])
  {
    v20 = 4;
    goto LABEL_41;
  }

  if ([propertyListCopy BOOLForKey:@"com.apple.developer.carplay-charging"])
  {
    v20 = 256;
    goto LABEL_45;
  }

  if ([propertyListCopy BOOLForKey:@"com.apple.developer.carplay-communication"])
  {
    v20 = 6;
    goto LABEL_51;
  }

  if ([propertyListCopy BOOLForKey:@"com.apple.developer.carplay-driving-task"])
  {
    v20 = 4096;
    goto LABEL_57;
  }

  if ([propertyListCopy BOOLForKey:@"com.apple.developer.carplay-fueling"])
  {
    v20 = 2048;
    goto LABEL_63;
  }

  if ([propertyListCopy BOOLForKey:@"com.apple.developer.carplay-maps"])
  {
    v20 = 8;
    goto LABEL_69;
  }

  if ([propertyListCopy BOOLForKey:@"com.apple.developer.carplay-messaging"])
  {
    v20 = 2;
    goto LABEL_75;
  }

  if ([propertyListCopy BOOLForKey:@"com.apple.developer.carplay-parking"])
  {
    v20 = 512;
    goto LABEL_79;
  }

  if ([propertyListCopy BOOLForKey:@"com.apple.developer.playable-content"])
  {
    v20 = 16;
    goto LABEL_85;
  }

  if ([propertyListCopy BOOLForKey:@"com.apple.developer.carplay-public-safety"])
  {
    v20 = 0x2000;
    goto LABEL_89;
  }

  if ([propertyListCopy BOOLForKey:@"com.apple.developer.carplay-quick-ordering"])
  {
    v20 = 128;
    goto LABEL_95;
  }

  if (([propertyListCopy BOOLForKey:@"com.apple.developer.carplay-video"] & 1) == 0)
  {
    v20 = 0;
    v12 = 0;
    goto LABEL_105;
  }

  v20 = 0x4000;
LABEL_101:
  v12 = objc_alloc_init(CRCarPlayAppDeclaration);
  [(CRCarPlayAppDeclaration *)v12 setBundleIdentifier:identifierCopy];
LABEL_102:
  v30 = v12;
  [(CRCarPlayAppDeclaration *)v30 setSupportsVideo:1];

  if (!v30)
  {
    v30 = objc_alloc_init(CRCarPlayAppDeclaration);
    [(CRCarPlayAppDeclaration *)v30 setBundleIdentifier:identifierCopy];
  }

  v12 = v30;
  [(CRCarPlayAppDeclaration *)v12 setSupportsTemplates:1];

LABEL_105:
  v31 = [propertyListCopy objectForKey:@"com.apple.developer.carplay-protocols" ofClass:objc_opt_class()];
  v32 = v31;
  if (v31)
  {
    v33 = propertyListCopy;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v34 = v31;
    v35 = [v34 countByEnumeratingWithState:&v49 objects:v57 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v50;
      while (2)
      {
        for (j = 0; j != v36; ++j)
        {
          if (*v50 != v37)
          {
            objc_enumerationMutation(v34);
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

            goto LABEL_118;
          }
        }

        v36 = [v34 countByEnumeratingWithState:&v49 objects:v57 count:16];
        if (v36)
        {
          continue;
        }

        break;
      }
    }

    if (!v12)
    {
      v12 = objc_alloc_init(CRCarPlayAppDeclaration);
      [(CRCarPlayAppDeclaration *)v12 setBundleIdentifier:identifierCopy];
    }

    v12 = v12;
    v39 = [MEMORY[0x1E695DFD8] setWithArray:v34];
    [(CRCarPlayAppDeclaration *)v12 setAutoMakerProtocols:v39];

    v20 |= 0x20uLL;
LABEL_118:
    propertyListCopy = v33;
  }

  if ([identifierCopy isEqualToString:@"com.apple.Maps"])
  {
    v40 = v20 | 8;
  }

  else
  {
    v40 = v20;
  }

  if ([identifierCopy isEqualToString:@"com.apple.mobilecal"])
  {
    v40 |= 0x400uLL;
  }

  if (([identifierCopy isEqualToString:@"com.apple.Music"] & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", @"com.apple.iBooks") & 1) != 0 || objc_msgSend(identifierCopy, "isEqualToString:", @"com.apple.podcasts"))
  {
    v40 |= 0x10uLL;
  }

  if ([identifierCopy isEqualToString:@"com.apple.mobilephone"])
  {
    v40 |= 4uLL;
  }

  if ([identifierCopy isEqualToString:@"com.apple.MobileSMS"])
  {
    v41 = v40 | 2;
  }

  else
  {
    v41 = v40;
  }

  if (v41)
  {
    if (!v12)
    {
      v12 = objc_alloc_init(CRCarPlayAppDeclaration);
      [(CRCarPlayAppDeclaration *)v12 setBundleIdentifier:identifierCopy];
    }

    v12 = v12;
    [(CRCarPlayAppDeclaration *)v12 set_applicationCategory:v41];
  }

  if (v12)
  {
    [(CRCarPlayAppDeclaration *)v12 setBundlePath:pathCopy];
  }

  v42 = v12;

  return v12;
}

+ (id)declarationForAppRecord:(id)record
{
  recordCopy = record;
  bundleIdentifier = [recordCopy bundleIdentifier];
  if (bundleIdentifier)
  {
    infoDictionary = [recordCopy infoDictionary];
    entitlements = [recordCopy entitlements];
    v8 = [self declarationForBundleIdentifier:bundleIdentifier infoPropertyList:infoDictionary entitlementsPropertyList:entitlements];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)declarationForBundleIdentifier:(id)identifier entitlements:(id)entitlements infoPlist:(id)plist
{
  v8 = MEMORY[0x1E6963610];
  plistCopy = plist;
  entitlementsCopy = entitlements;
  identifierCopy = identifier;
  v12 = [v8 alloc];
  requiredInfoKeys = [self requiredInfoKeys];
  v14 = [v12 _initWithKeys:requiredInfoKeys forDictionary:plistCopy];

  v15 = objc_alloc(MEMORY[0x1E6963610]);
  requiredEntitlementKeys = [self requiredEntitlementKeys];
  v17 = [v15 _initWithKeys:requiredEntitlementKeys forDictionary:entitlementsCopy];

  v18 = [self declarationForBundleIdentifier:identifierCopy info:v14 entitlements:v17];

  return v18;
}

@end