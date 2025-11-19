id _MSS_resolvedSpecifiers(void *a1)
{
  v96[9] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = MEMORY[0x277CBEB18];
  v3 = [v1 allSpecifiers];
  v4 = [v2 arrayWithCapacity:{objc_msgSend(v3, "count")}];

  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v5 = [v1 allSpecifiers];
  v57 = [v5 countByEnumeratingWithState:&v86 objects:v95 count:16];
  if (v57)
  {
    v49 = v79;
    v56 = *v87;
    v65 = *MEMORY[0x277D400A0];
    v52 = *MEMORY[0x277D40198];
    v53 = *MEMORY[0x277D40190];
    v50 = v5;
    v51 = v4;
    do
    {
      v6 = 0;
      do
      {
        if (*v87 != v56)
        {
          objc_enumerationMutation(v5);
        }

        v58 = v6;
        v7 = *(*(&v86 + 1) + 8 * v6);
        v8 = [v7 properties];
        hasMusicRequiredCapabilities_specifier = _MSS_hasMusicRequiredCapabilities_specifier(v1, v8, v7);

        if (hasMusicRequiredCapabilities_specifier)
        {
          v10 = [v7 music_copy];
          [v4 addObject:v10];
          v84 = 0u;
          v85 = 0u;
          v82 = 0u;
          v83 = 0u;
          v96[0] = @"musicDynamicFooterText";
          v96[1] = @"musicDynamicIconImage";
          v96[2] = @"musicDynamicLabel";
          v96[3] = @"musicDynamicFooterHyperlinkViewText";
          v96[4] = @"musicDynamicFooterHyperlinkViewLinkAction";
          v96[5] = @"musicDynamicFooterHyperlinkViewLinkText";
          v96[6] = @"musicDynamicEnabled";
          v96[7] = @"musicFooterHyperlinkViewText";
          v96[8] = @"musicFooterHyperlinkViewLinkText";
          v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v96 count:9];
          v12 = [v11 countByEnumeratingWithState:&v82 objects:v94 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v83;
            do
            {
              for (i = 0; i != v13; ++i)
              {
                if (*v83 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v82 + 1) + 8 * i);
                v17 = [v10 objectForKeyedSubscript:v16];
                if (v17)
                {
                  _MSS_setValue_forSpecifier_key(v1, v17, v10, v16);
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v82 objects:v94 count:16];
            }

            while (v13);
          }

          v18 = [v10 propertyForKey:@"musicOverrides"];
          if (v18)
          {
            if (_NSIsNSDictionary())
            {
              v78[0] = MEMORY[0x277D85DD0];
              v78[1] = 3221225472;
              v79[0] = ___MSS_resolvedSpecifiers_block_invoke;
              v79[1] = &unk_279926308;
              v80 = v1;
              v81 = v10;
              [v18 enumerateKeysAndObjectsUsingBlock:v78];

              v19 = v80;
              goto LABEL_44;
            }

            if (_NSIsNSArray())
            {
              v76 = 0u;
              v77 = 0u;
              v74 = 0u;
              v75 = 0u;
              obj = v18;
              v61 = [obj countByEnumeratingWithState:&v74 objects:v93 count:16];
              if (!v61)
              {
                goto LABEL_43;
              }

              v54 = v18;
              v60 = *v75;
              while (1)
              {
                v20 = 0;
                do
                {
                  if (*v75 != v60)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v63 = v20;
                  v21 = *(*(&v74 + 1) + 8 * v20);
                  v22 = [v21 objectForKeyedSubscript:@"property"];
                  v23 = [v21 objectForKeyedSubscript:@"values"];
                  if (!v23)
                  {
                    v92 = v21;
                    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v92 count:1];
                  }

                  v72 = 0u;
                  v73 = 0u;
                  v70 = 0u;
                  v71 = 0u;
                  v24 = v23;
                  v25 = [v24 countByEnumeratingWithState:&v70 objects:v91 count:16];
                  if (v25)
                  {
                    v26 = v25;
                    v27 = *v71;
                    do
                    {
                      for (j = 0; j != v26; ++j)
                      {
                        if (*v71 != v27)
                        {
                          objc_enumerationMutation(v24);
                        }

                        v29 = *(*(&v70 + 1) + 8 * j);
                        v30 = [v29 objectForKeyedSubscript:@"value"];
                        v31 = [v29 objectForKeyedSubscript:@"requirements"];
                        v32 = [v31 objectForKeyedSubscript:v65];
                        v33 = _MSS_hasMusicRequiredCapabilities_specifier(v1, v31, v10);
                        if (!v32)
                        {
                          if (!v33)
                          {
                            goto LABEL_38;
                          }

LABEL_37:
                          _MSS_setValue_forSpecifier_key(v1, v30, v10, v22);
                          goto LABEL_38;
                        }

                        if (v33 && (SystemHasCapabilities() & 1) != 0)
                        {
                          goto LABEL_37;
                        }

LABEL_38:
                      }

                      v26 = [v24 countByEnumeratingWithState:&v70 objects:v91 count:16];
                    }

                    while (v26);
                  }

                  v20 = v63 + 1;
                }

                while (v63 + 1 != v61);
                v61 = [obj countByEnumeratingWithState:&v74 objects:v93 count:16];
                if (!v61)
                {
                  v5 = v50;
                  v4 = v51;
                  v18 = v54;
LABEL_43:
                  v19 = obj;
LABEL_44:

                  break;
                }
              }
            }

            v34 = [v10 propertyForKey:v53];
            v35 = [v10 propertyForKey:v52];
            v36 = v35;
            if (v34 && v35)
            {
              v62 = v35;
              v55 = v18;
              v37 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v34, "count")}];
              v66 = 0u;
              v67 = 0u;
              v68 = 0u;
              v69 = 0u;
              v64 = v34;
              v38 = v34;
              v39 = [v38 countByEnumeratingWithState:&v66 objects:v90 count:16];
              if (v39)
              {
                v40 = v39;
                v41 = *v67;
                do
                {
                  for (k = 0; k != v40; ++k)
                  {
                    if (*v67 != v41)
                    {
                      objc_enumerationMutation(v38);
                    }

                    v43 = *(*(&v66 + 1) + 8 * k);
                    v44 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                    v45 = [v1 stringsTable];
                    v46 = [v44 localizedStringForKey:v43 value:&stru_286C31160 table:v45];
                    [v37 addObject:v46];
                  }

                  v40 = [v38 countByEnumeratingWithState:&v66 objects:v90 count:16];
                }

                while (v40);
              }

              v36 = v62;
              [v10 setValues:v62 titles:v37];

              v5 = v50;
              v4 = v51;
              v18 = v55;
              v34 = v64;
            }
          }
        }

        v6 = v58 + 1;
      }

      while (v58 + 1 != v57);
      v57 = [v5 countByEnumeratingWithState:&v86 objects:v95 count:16];
    }

    while (v57);
  }

  v47 = *MEMORY[0x277D85DE8];

  return v4;
}

uint64_t _MSS_hasMusicRequiredCapabilities_specifier(void *a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v6 objectForKey:@"musicRequiredCapabilities"];
  if (v8)
  {
    hasMusicRequiredCapabilities_specifier = _MSS__hasMusicRequiredCapabilities_specifier(v5, v8, v7);
  }

  else
  {
    hasMusicRequiredCapabilities_specifier = 1;
  }

  v10 = [v6 objectForKey:@"musicRequiredCapabilitiesNot"];
  v11 = (v10 == 0) & hasMusicRequiredCapabilities_specifier;
  if (v10 && hasMusicRequiredCapabilities_specifier)
  {
    v11 = _MSS__hasMusicRequiredCapabilities_specifier(v5, v10, v7) ^ 1;
  }

  v12 = [v6 objectForKey:@"musicRequiredCapabilitiesOr"];
  v13 = v12;
  v30 = v10;
  if (v12)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v14 = [v12 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v14)
    {
      v15 = v14;
      LOBYTE(v16) = 0;
      v17 = *v36;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v36 != v17)
          {
            objc_enumerationMutation(v13);
          }

          if (v16)
          {
            v16 = 1;
          }

          else
          {
            v16 = _MSS__hasMusicRequiredCapabilities_specifier(v5, *(*(&v35 + 1) + 8 * i), v7);
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v15);
    }

    else
    {
      v16 = 0;
    }

    v11 = v11 & v16;
  }

  v19 = [v6 objectForKey:@"musicRequiredCapabilitiesNotOr"];
  v20 = v19;
  if (v19)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v21 = [v19 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v21)
    {
      v22 = v21;
      v29 = v8;
      LOBYTE(v23) = 0;
      v24 = *v32;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v32 != v24)
          {
            objc_enumerationMutation(v20);
          }

          if (v23)
          {
            v23 = 1;
          }

          else
          {
            v23 = _MSS__hasMusicRequiredCapabilities_specifier(v5, *(*(&v31 + 1) + 8 * j), v7);
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v22);
      v26 = v23 ^ 1;
      v8 = v29;
    }

    else
    {
      v26 = 1;
    }

    v11 = v11 & v26;
  }

  v27 = *MEMORY[0x277D85DE8];
  return v11;
}

void _MSS_setValue_forSpecifier_key(void *a1, void *a2, void *a3, void *a4)
{
  v43 = a1;
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if ([v9 isEqualToString:*MEMORY[0x277D40170]])
  {
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v43 stringsTable];
    v12 = [(__CFString *)v10 localizedStringForKey:v7 value:&stru_286C31160 table:v11];
    [v8 setName:v12];
    goto LABEL_3;
  }

  v13 = *MEMORY[0x277D3FF88];
  if ([v9 isEqualToString:*MEMORY[0x277D3FF88]])
  {
    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = [v43 stringsTable];
    v10 = [v14 localizedStringForKey:v7 value:&stru_286C31160 table:v15];

    v16 = v10;
LABEL_7:
    if (![(__CFString *)v16 length])
    {

      v10 = @" ";
    }

    v17 = v8;
    v18 = v10;
    v19 = v13;
    goto LABEL_10;
  }

  v20 = *MEMORY[0x277D3FF38];
  if ([v9 isEqualToString:*MEMORY[0x277D3FF38]])
  {
    v21 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v7, "BOOLValue")}];
    [v8 setObject:v21 forKeyedSubscript:v20];
LABEL_17:

    goto LABEL_12;
  }

  if ([v9 isEqualToString:@"musicDynamicFooterText"])
  {
    v22 = NSSelectorFromString(v7);
    v16 = MusicSettingsPerformSelector2(v22, v43, v8, 0);
    v10 = v16;
    goto LABEL_7;
  }

  if ([v9 isEqualToString:@"musicDynamicIconImage"])
  {
    v23 = NSSelectorFromString(v7);
    v10 = MusicSettingsPerformSelector2(v23, v43, v8, 0);
    v19 = *MEMORY[0x277D3FFC0];
    if (v10)
    {
      v17 = v8;
      v18 = v10;
LABEL_10:
      [v17 setObject:v18 forKeyedSubscript:v19];
      goto LABEL_11;
    }

    goto LABEL_28;
  }

  if ([v9 isEqualToString:@"musicDynamicLabel"])
  {
    v24 = NSSelectorFromString(v7);
    v10 = MusicSettingsPerformSelector2(v24, v43, v8, 0);
    [v8 setName:v10];
    goto LABEL_11;
  }

  if ([v9 isEqualToString:@"musicDynamicFooterHyperlinkViewText"])
  {
    v25 = NSSelectorFromString(v7);
    v10 = MusicSettingsPerformSelector2(v25, v43, v8, 0);
    v19 = *MEMORY[0x277D3FF70];
    if (!v10)
    {
LABEL_28:
      v26 = v8;
LABEL_29:
      v27 = v19;
      goto LABEL_30;
    }

    v26 = v8;
LABEL_33:
    [v26 setProperty:v10 forKey:v19];
    goto LABEL_11;
  }

  if ([v9 isEqualToString:@"musicFooterHyperlinkViewText"])
  {
    v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v29 = [v43 stringsTable];
    v10 = [v28 localizedStringForKey:v7 value:&stru_286C31160 table:v29];

    v19 = *MEMORY[0x277D3FF70];
    v26 = v8;
    if (!v10)
    {
      goto LABEL_29;
    }

    goto LABEL_33;
  }

  if ([v9 isEqualToString:@"musicDynamicFooterHyperlinkViewLinkText"])
  {
    v30 = NSSelectorFromString(v7);
    v10 = MusicSettingsPerformSelector2(v30, v43, v8, 0);
    goto LABEL_38;
  }

  if ([v9 isEqualToString:@"musicFooterHyperlinkViewLinkText"])
  {
    v31 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v32 = [v43 stringsTable];
    v10 = [v31 localizedStringForKey:v7 value:&stru_286C31160 table:v32];

LABEL_38:
    v33 = [v8 objectForKeyedSubscript:*MEMORY[0x277D3FF70]];
    v11 = v33;
    if (!v10 || !v33)
    {
      [v8 removePropertyForKey:*MEMORY[0x277D3FF58]];
      goto LABEL_4;
    }

    v45.location = [v33 rangeOfString:v10];
    v12 = NSStringFromRange(v45);
    [v8 setObject:v12 forKeyedSubscript:*MEMORY[0x277D3FF58]];
LABEL_3:

LABEL_4:
LABEL_11:

    goto LABEL_12;
  }

  if ([v9 isEqualToString:@"musicDynamicFooterHyperlinkViewLinkAction"])
  {
    v34 = NSSelectorFromString(v7);
    v35 = MusicSettingsPerformSelector2(v34, v43, v8, 0);
    v10 = v35;
    if (v35)
    {
      v36 = MEMORY[0x277CCAE60];
      v37 = [(__CFString *)v35 target];
      v38 = [v36 valueWithNonretainedObject:v37];
      [v8 setObject:v38 forKeyedSubscript:*MEMORY[0x277D3FF68]];

      v11 = [(__CFString *)v10 selectorString];
      [v8 setObject:v11 forKeyedSubscript:*MEMORY[0x277D3FF50]];
      goto LABEL_4;
    }

    [v8 removePropertyForKey:*MEMORY[0x277D3FF68]];
    v27 = *MEMORY[0x277D3FF50];
    v26 = v8;
LABEL_30:
    [v26 removePropertyForKey:v27];
    goto LABEL_11;
  }

  if ([v9 isEqualToString:@"musicDynamicEnabled"])
  {
    v39 = NSSelectorFromString(v7);
    v21 = MusicSettingsPerformSelector2(v39, v43, v8, 0);
    v40 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v21, "BOOLValue")}];
    [v8 setObject:v40 forKeyedSubscript:v20];
LABEL_49:

    goto LABEL_17;
  }

  v41 = *MEMORY[0x277D40118];
  if ([v9 isEqualToString:*MEMORY[0x277D40118]])
  {
    v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v40 = [v43 stringsTable];
    v42 = [v21 localizedStringForKey:v7 value:&stru_286C31160 table:v40];
    [v8 setObject:v42 forKeyedSubscript:v41];

    goto LABEL_49;
  }

  [v8 setObject:v7 forKeyedSubscript:v9];
LABEL_12:
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t _MSS__hasMusicRequiredCapabilities_specifier(void *a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v9)
    {
      v10 = *v25;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = v29;
          if (*(v29 + 24) == 1)
          {
            hasMusicRequiredCapabilities_specifier = _MSS__hasMusicRequiredCapabilities_specifier(v5, *(*(&v24 + 1) + 8 * i), v7);
            v12 = v29;
          }

          else
          {
            hasMusicRequiredCapabilities_specifier = 0;
          }

          *(v12 + 24) = hasMusicRequiredCapabilities_specifier;
        }

        v9 = [v8 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v9);
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = ___MSS__hasMusicRequiredCapabilities_specifier_block_invoke;
      v20[3] = &unk_279926398;
      v21 = v5;
      v22 = v7;
      v23 = &v28;
      [v6 enumerateKeysAndObjectsUsingBlock:v20];

      v8 = v21;
    }

    else
    {
      v14 = _MSS_valueForRequirementKey_specifier(v5, v6, v7);
      v8 = v14;
      v15 = v29;
      if (*(v29 + 24) == 1)
      {
        v16 = [v14 isEqual:MEMORY[0x277CBEC38]];
        v15 = v29;
      }

      else
      {
        v16 = 0;
      }

      *(v15 + 24) = v16;
    }
  }

  v17 = *(v29 + 24);
  _Block_object_dispose(&v28, 8);

  v18 = *MEMORY[0x277D85DE8];
  return v17 & 1;
}

id _MSS_valueForRequirementKey_specifier(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v5 valueForMusicCapability:v6];
  if (v8)
  {
    goto LABEL_2;
  }

  v11 = [v5 allSpecifiers];
  v12 = [v11 specifierForID:v6];

  if (!v12 || ([v12 music_getValue], v9 = objc_claimAutoreleasedReturnValue(), v12, !v9))
  {
    v13 = NSSelectorFromString(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = MusicSettingsPerformSelector2(v13, v5, v7, 0);
      if (v8)
      {
LABEL_2:
        v9 = v8;
        goto LABEL_3;
      }
    }

    v14 = [MEMORY[0x277CCA890] currentHandler];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id _MSS_valueForRequirementKey_specifier(__strong id<MusicSettingsSupportController>, NSString *__strong, PSSpecifier *__strong)"}];
    [v14 handleFailureInFunction:v15 file:@"MusicSettingsSupportController.m" lineNumber:291 description:{@"No matching capability: %@", v6}];

    v9 = 0;
  }

LABEL_3:

  return v9;
}

id MusicSettingsPerformSelector2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    v10 = [v7 methodForSelector:a1];
    v11 = [v7 methodSignatureForSelector:a1];
    v12 = *[v11 methodReturnType];

    if (v9)
    {
      if (v12 == 64)
      {
        v13 = v10(v7, a1, v8, v9);
LABEL_14:
        v15 = v13;
LABEL_16:
        if (v12 == 64)
        {
          v16 = v15;
        }

        else
        {
          v16 = 0;
        }

        v14 = v16;

        goto LABEL_20;
      }

      v10(v7, a1, v8, v9);
    }

    else if (v8)
    {
      if (v12 == 64)
      {
        v13 = (v10)(v7, a1, v8);
        goto LABEL_14;
      }

      (v10)(v7, a1, v8);
    }

    else
    {
      if (v12 == 64)
      {
        v13 = (v10)(v7, a1);
        goto LABEL_14;
      }

      (v10)(v7, a1);
    }

    v15 = 0;
    goto LABEL_16;
  }

  v14 = 0;
LABEL_20:

  return v14;
}

void sub_25ADC43A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}