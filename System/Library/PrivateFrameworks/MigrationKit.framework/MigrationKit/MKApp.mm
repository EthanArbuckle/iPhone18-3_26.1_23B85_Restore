@interface MKApp
- (BOOL)isSupported:(int64_t)supported;
- (MKApp)initWithJSONData:(id)data;
@end

@implementation MKApp

- (MKApp)initWithJSONData:(id)data
{
  v87 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v82.receiver = self;
  v82.super_class = MKApp;
  v5 = [(MKApp *)&v82 init];
  if (!v5)
  {
    goto LABEL_54;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [dataCopy mk_stringForKey:@"id"];
    if (v6)
    {
      v7 = v6;
      v8 = [dataCopy mk_dictionaryForKey:@"attributes"];
      if (v8)
      {
        v9 = v8;
        v10 = [v8 mk_arrayForKey:@"deviceFamilies"];
        if (v10)
        {
          v11 = v10;
          v12 = [MEMORY[0x277CBEB98] setWithArray:v10];
          -[MKApp setIsiPhoneApp:](v5, "setIsiPhoneApp:", [v12 containsObject:@"iphone"]);
          -[MKApp setIsiPadApp:](v5, "setIsiPadApp:", [v12 containsObject:@"ipad"]);
          -[MKApp setIsiPodApp:](v5, "setIsiPodApp:", [v12 containsObject:@"ipod"]);
          v13 = [v9 mk_dictionaryForKey:@"platformAttributes"];
          if (v13)
          {
            v14 = v13;
            v15 = [v13 mk_dictionaryForKey:@"ios"];
            if (v15)
            {
              v16 = v15;
              v17 = [v15 mk_stringForKey:@"bundleId"];
              v18 = [v16 mk_arrayForKey:@"offers"];
              if (v17 && v18)
              {
                v66 = v14;
                v67 = v12;
                v68 = v11;
                v80 = 0u;
                v81 = 0u;
                v78 = 0u;
                v79 = 0u;
                obj = v18;
                v19 = [obj countByEnumeratingWithState:&v78 objects:v86 count:16];
                v71 = v9;
                v72 = v7;
                v69 = v17;
                v70 = v16;
                if (v19)
                {
                  v20 = *v79;
                  while (2)
                  {
                    for (i = 0; i != v19; ++i)
                    {
                      if (*v79 != v20)
                      {
                        objc_enumerationMutation(obj);
                      }

                      v22 = *(*(&v78 + 1) + 8 * i);
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v23 = [v22 mk_stringForKey:@"type"];
                        lowercaseString = [v23 lowercaseString];

                        v25 = [v22 mk_numberForKey:@"price"];
                        if (v25 && ([lowercaseString isEqualToString:@"get"] & 1) != 0)
                        {
                          [v25 floatValue];
                          v19 = v27 == 0.0;

                          goto LABEL_29;
                        }
                      }
                    }

                    v19 = [obj countByEnumeratingWithState:&v78 objects:v86 count:16];
                    if (v19)
                    {
                      continue;
                    }

                    break;
                  }

LABEL_29:
                  v9 = v71;
                  v7 = v72;
                  v17 = v69;
                }

                v28 = [v9 mk_stringForKey:@"name"];
                v29 = [v9 mk_stringForKey:@"artistName"];
                v30 = [v9 mk_stringForKey:@"genreDisplayName"];
                [(MKApp *)v5 setBundleIdentifier:v17];
                [(MKApp *)v5 setAppStoreIdentifier:v7];
                [(MKApp *)v5 setIsFree:v19];
                v65 = v28;
                [(MKApp *)v5 setName:v28];
                v64 = v29;
                [(MKApp *)v5 setDeveloper:v29];
                v62 = v30;
                [(MKApp *)v5 setCategory:v30];
                v63 = [v16 mk_dictionaryForKey:@"artwork"];
                v31 = [v63 mk_stringForKey:@"url"];
                v84[0] = @"{h}";
                v84[1] = @"{c}";
                v85[0] = @"{w}";
                v85[1] = @"bb";
                v84[2] = @"{f}";
                v85[2] = @"png";
                [MEMORY[0x277CBEAC0] dictionaryWithObjects:v85 forKeys:v84 count:3];
                v74 = 0u;
                v75 = 0u;
                v76 = 0u;
                v32 = v77 = 0u;
                v33 = [v32 countByEnumeratingWithState:&v74 objects:v83 count:16];
                if (v33)
                {
                  v34 = v33;
                  v35 = *v75;
                  do
                  {
                    v36 = 0;
                    v37 = v31;
                    do
                    {
                      if (*v75 != v35)
                      {
                        objc_enumerationMutation(v32);
                      }

                      v38 = *(*(&v74 + 1) + 8 * v36);
                      v39 = [v32 objectForKeyedSubscript:v38];
                      v31 = [v37 stringByReplacingOccurrencesOfString:v38 withString:v39];

                      ++v36;
                      v37 = v31;
                    }

                    while (v34 != v36);
                    v34 = [v32 countByEnumeratingWithState:&v74 objects:v83 count:16];
                  }

                  while (v34);
                }

                stringValue = [&unk_286AAC7D0 stringValue];
                v41 = [v31 stringByReplacingOccurrencesOfString:@"{w}" withString:stringValue];
                [(MKApp *)v5 setIconURLForiPhone3x:v41];

                stringValue2 = [&unk_286AAC7E8 stringValue];
                v43 = [v31 stringByReplacingOccurrencesOfString:@"{w}" withString:stringValue2];
                [(MKApp *)v5 setIconURLForiPhone2x:v43];

                stringValue3 = [&unk_286AAC800 stringValue];
                v45 = [v31 stringByReplacingOccurrencesOfString:@"{w}" withString:stringValue3];
                [(MKApp *)v5 setIconURLForiPadPro:v45];

                stringValue4 = [&unk_286AAC818 stringValue];
                v47 = [v31 stringByReplacingOccurrencesOfString:@"{w}" withString:stringValue4];
                [(MKApp *)v5 setIconURLForiPad:v47];

                stringValue5 = [&unk_286AAC830 stringValue];
                v49 = [v31 stringByReplacingOccurrencesOfString:@"{w}" withString:stringValue5];
                [(MKApp *)v5 setIconURLForAppStore:v49];

                v50 = objc_alloc_init(MKDevice);
                iconSize = [(MKDevice *)v50 iconSize];

                if (iconSize <= 166)
                {
                  v53 = v67;
                  v52 = v68;
                  v54 = v66;
                  if (iconSize != 120)
                  {
                    v57 = iconSize == 152;
                    v56 = v71;
                    v55 = v72;
                    v58 = v62;
                    if (!v57)
                    {
                      goto LABEL_53;
                    }

                    v59 = 88;
                    goto LABEL_52;
                  }

                  v59 = 72;
                }

                else
                {
                  v53 = v67;
                  v52 = v68;
                  v54 = v66;
                  if (iconSize != 167)
                  {
                    v56 = v71;
                    v55 = v72;
                    if (iconSize != 180)
                    {
                      v57 = iconSize == 1024;
                      v58 = v62;
                      if (!v57)
                      {
                        goto LABEL_53;
                      }

                      v59 = 96;
LABEL_52:
                      [(MKApp *)v5 setIconURL:*(&v5->super.isa + v59)];
LABEL_53:

LABEL_54:
                      v26 = v5;
                      goto LABEL_55;
                    }

                    v59 = 64;
LABEL_51:
                    v58 = v62;
                    goto LABEL_52;
                  }

                  v59 = 80;
                }

                v56 = v71;
                v55 = v72;
                goto LABEL_51;
              }
            }
          }
        }
      }
    }
  }

  v26 = 0;
LABEL_55:

  v60 = *MEMORY[0x277D85DE8];
  return v26;
}

- (BOOL)isSupported:(int64_t)supported
{
  if (supported == 3)
  {
    if ([(MKApp *)self isiPodApp])
    {
      return 1;
    }
  }

  else
  {
    if (supported != 2)
    {
      return supported == 1 && [(MKApp *)self isiPhoneApp];
    }

    if ([(MKApp *)self isiPadApp])
    {
      return 1;
    }
  }

  return 0;
}

@end