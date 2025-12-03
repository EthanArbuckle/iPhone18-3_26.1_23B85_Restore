@interface MCDomainsPayload
+ (BOOL)isPatternValid:(id)valid forField:(id)field outError:(id *)error;
+ (id)invalidDomainPatternErrorWithPattern:(id)pattern field:(id)field;
+ (id)tooManyAppsErrorWithMaxCount:(id)count field:(id)field;
+ (id)tooManyDomainsErrorWithMaxCount:(id)count field:(id)field;
+ (id)typeStrings;
- (MCDomainsPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error;
- (id)payloadDescriptionKeyValueSections;
- (id)stubDictionary;
@end

@implementation MCDomainsPayload

+ (id)typeStrings
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"com.apple.domains";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (id)invalidDomainPatternErrorWithPattern:(id)pattern field:(id)field
{
  v5 = MEMORY[0x1E696ABC0];
  fieldCopy = field;
  v14 = MCErrorArray(@"DOMAINS_INVALID_PATTERN_P_PATTERN", v7, v8, v9, v10, v11, v12, v13, pattern);
  v15 = [v5 MCErrorWithDomain:@"MCDomainsErrorDomain" code:38000 descriptionArray:v14 errorType:@"MCFatalError"];
  v16 = [MCPayload badFieldValueErrorWithField:fieldCopy underlyingError:v15];

  return v16;
}

+ (id)tooManyDomainsErrorWithMaxCount:(id)count field:(id)field
{
  v5 = MEMORY[0x1E696ABC0];
  fieldCopy = field;
  v14 = MCErrorArray(@"DOMAINS_TOO_MANY_DOMAIN_ENTRIES_P_MAX", v7, v8, v9, v10, v11, v12, v13, count);
  v15 = [v5 MCErrorWithDomain:@"MCDomainsErrorDomain" code:38001 descriptionArray:v14 errorType:@"MCFatalError"];
  v16 = [MCPayload badFieldValueErrorWithField:fieldCopy underlyingError:v15];

  return v16;
}

+ (id)tooManyAppsErrorWithMaxCount:(id)count field:(id)field
{
  v5 = MEMORY[0x1E696ABC0];
  fieldCopy = field;
  v14 = MCErrorArray(@"DOMAINS_TOO_MANY_APP_ENTRIES_P_MAX", v7, v8, v9, v10, v11, v12, v13, count);
  v15 = [v5 MCErrorWithDomain:@"MCDomainsErrorDomain" code:38001 descriptionArray:v14 errorType:@"MCFatalError"];
  v16 = [MCPayload badFieldValueErrorWithField:fieldCopy underlyingError:v15];

  return v16;
}

+ (BOOL)isPatternValid:(id)valid forField:(id)field outError:(id *)error
{
  v44 = *MEMORY[0x1E69E9840];
  validCopy = valid;
  fieldCopy = field;
  if ([validCopy length])
  {
    whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v10 = [validCopy stringByTrimmingCharactersInSet:whitespaceCharacterSet];
    v11 = [validCopy isEqualToString:v10];

    if (v11)
    {
      if (isPatternValid_forField_outError__onceToken != -1)
      {
        +[MCDomainsPayload isPatternValid:forField:outError:];
      }

      if ([validCopy rangeOfCharacterFromSet:isPatternValid_forField_outError__punctuation] == 0x7FFFFFFFFFFFFFFFLL)
      {
        pathComponents = [validCopy pathComponents];
        if (![pathComponents count] || (objc_msgSend(pathComponents, "objectAtIndexedSubscript:", 0), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isEqualToString:", @"/"), v13, v14))
        {
          v15 = [MCDomainsPayload invalidDomainPatternErrorWithPattern:validCopy field:fieldCopy];
          goto LABEL_29;
        }

        lastObject = [pathComponents lastObject];
        v19 = [lastObject isEqualToString:@"/"];

        if (v19)
        {
          v20 = [pathComponents subarrayWithRange:{0, objc_msgSend(pathComponents, "count") - 1}];

          pathComponents = v20;
        }

        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        pathComponents = pathComponents;
        v21 = [pathComponents countByEnumeratingWithState:&v39 objects:v43 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v40;
          while (2)
          {
            for (i = 0; i != v22; ++i)
            {
              if (*v40 != v23)
              {
                objc_enumerationMutation(pathComponents);
              }

              if (![*(*(&v39 + 1) + 8 * i) length])
              {
                v15 = [MCDomainsPayload invalidDomainPatternErrorWithPattern:validCopy field:fieldCopy];

                goto LABEL_29;
              }
            }

            v22 = [pathComponents countByEnumeratingWithState:&v39 objects:v43 count:16];
            if (v22)
            {
              continue;
            }

            break;
          }
        }

        v25 = [pathComponents objectAtIndexedSubscript:0];
        if (([v25 isEqualToString:@"*"] & 1) != 0 || (objc_msgSend(v25, "isEqualToString:", @"*.") & 1) != 0 || objc_msgSend(v25, "isEqualToString:", @"."))
        {
          goto LABEL_26;
        }

        if ([v25 length] >= 2)
        {
          v28 = [v25 substringWithRange:{0, 1}];
          if ([v28 isEqualToString:@"*"])
          {
            v29 = [v25 substringWithRange:{1, 1}];
            v30 = [v29 isEqualToString:@"."];

            if ((v30 & 1) == 0)
            {
              goto LABEL_26;
            }
          }

          else
          {
          }

          if ([v25 rangeOfString:@":" options:{12, v39}] != 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_26;
          }
        }

        v31 = [v25 rangeOfString:@":" options:{4, v39}];
        if (v31)
        {
          v32 = v31;
          if (v31 == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_40;
          }

          if (v31 != [v25 length] - 1 && objc_msgSend(v25, "rangeOfString:options:range:", @":", 0, 0, v32) == 0x7FFFFFFFFFFFFFFFLL)
          {
            v33 = [v25 substringFromIndex:v32 + 1];
            decimalDigitCharacterSet = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
            invertedSet = [decimalDigitCharacterSet invertedSet];
            v36 = [v33 rangeOfCharacterFromSet:invertedSet];

            if (v36 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v37 = [MCDomainsPayload invalidDomainPatternErrorWithPattern:validCopy field:fieldCopy];
              v38 = v33;
              v15 = v37;

              goto LABEL_27;
            }

LABEL_40:
            v15 = 0;
            goto LABEL_30;
          }
        }

LABEL_26:
        v15 = [MCDomainsPayload invalidDomainPatternErrorWithPattern:validCopy field:fieldCopy, v39];
LABEL_27:

LABEL_29:
        if (!v15)
        {
          goto LABEL_30;
        }

        goto LABEL_10;
      }
    }
  }

  v15 = [MCDomainsPayload invalidDomainPatternErrorWithPattern:validCopy field:fieldCopy];
  if (!v15)
  {
LABEL_30:
    v17 = 1;
    goto LABEL_31;
  }

LABEL_10:
  if (error)
  {
    v16 = v15;
    v17 = 0;
    *error = v15;
  }

  else
  {
    v17 = 0;
  }

LABEL_31:

  v26 = *MEMORY[0x1E69E9840];
  return v17;
}

uint64_t __53__MCDomainsPayload_isPatternValid_forField_outError___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AD48]);
  v1 = isPatternValid_forField_outError__punctuation;
  isPatternValid_forField_outError__punctuation = v0;

  v2 = isPatternValid_forField_outError__punctuation;

  return [v2 addCharactersInString:@"@#?!&"];
}

- (MCDomainsPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error
{
  v110 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v96.receiver = self;
  v96.super_class = MCDomainsPayload;
  v9 = [(MCPayload *)&v96 initWithDictionary:dictionaryCopy profile:profile outError:error];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_25;
  }

  v70 = v9;
  errorCopy = error;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  v95 = 0;
  v67 = dictionaryCopy;
  v11 = [dictionaryCopy MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:@"WebDomains" isRequired:0 outError:&v95];
  v12 = v95;
  v75 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v11, "count")}];
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v91 objects:v109 count:16];
  obj = v13;
  if (v14)
  {
    v15 = v14;
    v16 = *v92;
    while (2)
    {
      v17 = 0;
      v18 = v12;
      do
      {
        if (*v92 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v19 = [MCDomainsCacheEntry normalizedPatternString:*(*(&v91 + 1) + 8 * v17)];
        v90 = v18;
        v20 = [MCDomainsPayload isPatternValid:v19 forField:@"WebDomains" outError:&v90];
        v12 = v90;

        if (!v20)
        {
          v21 = 0;
          v22 = 0;
          v66 = 0;
          v72 = obj;
          v73 = 0;
          dictionaryCopy = v67;
          v24 = dictionary2;
          v25 = dictionary;
          v10 = v70;
          goto LABEL_14;
        }

        [v75 addObject:v19];

        ++v17;
        v18 = v12;
      }

      while (v15 != v17);
      v13 = obj;
      v15 = [obj countByEnumeratingWithState:&v91 objects:v109 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  if (v12)
  {
    v21 = 0;
    v22 = 0;
    v73 = 0;
    v23 = 0;
    dictionaryCopy = v67;
    v24 = dictionary2;
    v25 = dictionary;
    v10 = v70;
    v26 = 0x1E695D000;
    errorCopy2 = errorCopy;
    if (!errorCopy)
    {
      goto LABEL_19;
    }

LABEL_17:
    if (v12)
    {
      v28 = v12;
      *errorCopy2 = v12;
    }

    goto LABEL_19;
  }

  dictionaryCopy = v67;
  v24 = dictionary2;
  v25 = dictionary;
  v10 = v70;
  errorCopy2 = error;
  if (v13)
  {
    v107 = @"values";
    allObjects = [v75 allObjects];
    v108 = allObjects;
    v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v108 forKeys:&v107 count:1];
    [dictionary setObject:v35 forKeyedSubscript:@"managedWebDomains"];
  }

  v89 = 0;
  v23 = [v67 MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:@"EmailDomains" isRequired:0 outError:&v89];
  v36 = v89;
  if (v36)
  {
    v12 = v36;
    v21 = 0;
    v22 = 0;
    v73 = 0;
    v26 = 0x1E695D000;
    if (!errorCopy)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (v23)
  {
    v105 = @"values";
    v106 = v23;
    v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v106 forKeys:&v105 count:1];
    [dictionary2 setObject:v37 forKeyedSubscript:@"managedEmailDomains"];
  }

  profile = [(MCPayload *)v70 profile];
  if ([profile isStub])
  {
  }

  else
  {
    mEMORY[0x1E69AD420] = [MEMORY[0x1E69AD420] sharedConfiguration];
    isSupervised = [mEMORY[0x1E69AD420] isSupervised];

    if (!isSupervised)
    {
      v12 = 0;
      v29 = 0;
      v22 = 0;
      v21 = 0;
      v26 = 0x1E695D000;
      goto LABEL_20;
    }
  }

  v66 = v23;
  v88 = 0;
  v41 = [v67 MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:@"SafariPasswordAutoFillDomains" isRequired:0 outError:&v88];
  v12 = v88;
  v72 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v41, "count")}];
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v42 = v41;
  v43 = [v42 countByEnumeratingWithState:&v84 objects:v104 count:16];
  v73 = v42;
  if (v43)
  {
    v44 = v43;
    v45 = *v85;
    while (2)
    {
      v46 = 0;
      v47 = v12;
      do
      {
        if (*v85 != v45)
        {
          objc_enumerationMutation(v73);
        }

        v48 = [MCDomainsCacheEntry normalizedPatternString:*(*(&v84 + 1) + 8 * v46)];
        v83 = v47;
        v49 = [MCDomainsPayload isPatternValid:v48 forField:@"SafariPasswordAutoFillDomains" outError:&v83];
        v12 = v83;

        if (!v49)
        {
          v21 = 0;
          v22 = 0;
          v19 = v73;
          dictionaryCopy = v67;
          v24 = dictionary2;
          v25 = dictionary;
          v10 = v70;
          goto LABEL_47;
        }

        [v72 addObject:v48];

        ++v46;
        v47 = v12;
      }

      while (v44 != v46);
      v42 = v73;
      v44 = [v73 countByEnumeratingWithState:&v84 objects:v104 count:16];
      if (v44)
      {
        continue;
      }

      break;
    }
  }

  if (v12)
  {
    v21 = 0;
    v22 = 0;
    dictionaryCopy = v67;
    v24 = dictionary2;
    v25 = dictionary;
    v10 = v70;
    goto LABEL_15;
  }

  dictionaryCopy = v67;
  v24 = dictionary2;
  v25 = dictionary;
  errorCopy2 = errorCopy;
  v23 = v66;
  if (v42)
  {
    v102 = @"values";
    allObjects2 = [v72 allObjects];
    v103 = allObjects2;
    v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v103 forKeys:&v102 count:1];
    [dictionary setObject:v51 forKeyedSubscript:@"allowedSafariPasswordAutoFillDomains"];
  }

  v52 = 0x1E696A000uLL;
  v82 = 0;
  v22 = [v67 MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:@"CrossSiteTrackingPreventionRelaxedDomains" isRequired:0 outError:&v82];
  v53 = v82;
  v10 = v70;
  if (!v53)
  {
    if ([v22 count] >= 0xB)
    {
      v54 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:10];
      v12 = [MCDomainsPayload tooManyDomainsErrorWithMaxCount:v54 field:@"CrossSiteTrackingPreventionRelaxedDomains"];

      v52 = 0x1E696A000;
      if (v12)
      {
        goto LABEL_53;
      }
    }

    v19 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v22, "count")}];
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v22 = v22;
    v65 = [v22 countByEnumeratingWithState:&v78 objects:v101 count:16];
    if (v65)
    {
      v12 = 0;
      v64 = *v79;
      while (2)
      {
        v55 = 0;
        v56 = v12;
        do
        {
          if (*v79 != v64)
          {
            objc_enumerationMutation(v22);
          }

          v57 = [MCDomainsCacheEntry normalizedPatternString:*(*(&v78 + 1) + 8 * v55), v64];
          v77 = v56;
          v58 = [MCDomainsPayload isPatternValid:v57 forField:@"CrossSiteTrackingPreventionRelaxedDomains" outError:&v77];
          v12 = v77;

          if (!v58)
          {

            goto LABEL_66;
          }

          [v19 addObject:v57];

          ++v55;
          v56 = v12;
        }

        while (v65 != v55);
        v65 = [v22 countByEnumeratingWithState:&v78 objects:v101 count:16];
        if (v65)
        {
          continue;
        }

        break;
      }

LABEL_66:

      v25 = dictionary;
      v10 = v70;
      v24 = dictionary2;
      v52 = 0x1E696A000;
      if (v12)
      {
        v21 = 0;
LABEL_14:

LABEL_15:
        v26 = 0x1E695D000uLL;
        errorCopy2 = errorCopy;
        v23 = v66;
        goto LABEL_16;
      }
    }

    else
    {
    }

    if (v22)
    {
      v99 = @"values";
      allObjects3 = [v19 allObjects];
      v100 = allObjects3;
      v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v100 forKeys:&v99 count:1];
      [v24 setObject:v60 forKeyedSubscript:@"crossSiteTrackingPreventionRelaxedDomains"];

      v52 = 0x1E696A000uLL;
    }

    v61 = *(v52 + 3776);
    v76 = 0;
    v21 = [v67 MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:@"CrossSiteTrackingPreventionRelaxedApps" isRequired:0 outError:&v76];
    v62 = v76;
    if (v62)
    {
      v12 = v62;
    }

    else if ([v21 count] < 0xB || (objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", 10), v63 = objc_claimAutoreleasedReturnValue(), dictionaryCopy = v67, +[MCDomainsPayload tooManyAppsErrorWithMaxCount:field:](MCDomainsPayload, "tooManyAppsErrorWithMaxCount:field:", v63, @"CrossSiteTrackingPreventionRelaxedApps"), v12 = objc_claimAutoreleasedReturnValue(), v63, !v12))
    {
      if (v21)
      {
        v97 = @"values";
        v98 = v21;
        v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v98 forKeys:&v97 count:1];
        [v24 setObject:v48 forKeyedSubscript:@"crossSiteTrackingPreventionRelaxedApps"];
        v12 = 0;
LABEL_47:
      }

      else
      {
        v12 = 0;
      }
    }

    goto LABEL_14;
  }

  v12 = v53;
LABEL_53:
  v21 = 0;
  v26 = 0x1E695D000;
LABEL_16:

  if (errorCopy2)
  {
    goto LABEL_17;
  }

LABEL_19:
  v29 = v73;
LABEL_20:
  dictionary3 = [*(v26 + 3984) dictionary];
  if ([v24 count])
  {
    [(NSDictionary *)dictionary3 setObject:v24 forKeyedSubscript:@"intersection"];
  }

  if ([v25 count])
  {
    [(NSDictionary *)dictionary3 setObject:v25 forKeyedSubscript:@"union"];
  }

  restrictions = v10->_restrictions;
  v10->_restrictions = dictionary3;

LABEL_25:
  v32 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)stubDictionary
{
  v15.receiver = self;
  v15.super_class = MCDomainsPayload;
  stubDictionary = [(MCPayload *)&v15 stubDictionary];
  restrictions = [(MCDomainsPayload *)self restrictions];
  v5 = [MCRestrictionManager unionValuesForFeature:@"managedWebDomains" withRestrictionsDictionary:restrictions];

  if (v5)
  {
    [stubDictionary setObject:v5 forKeyedSubscript:@"WebDomains"];
  }

  restrictions2 = [(MCDomainsPayload *)self restrictions];
  v7 = [MCRestrictionManager intersectedValuesForFeature:@"managedEmailDomains" withRestrictionsDictionary:restrictions2];

  if (v7)
  {
    [stubDictionary setObject:v7 forKeyedSubscript:@"EmailDomains"];
  }

  restrictions3 = [(MCDomainsPayload *)self restrictions];
  v9 = [MCRestrictionManager unionValuesForFeature:@"allowedSafariPasswordAutoFillDomains" withRestrictionsDictionary:restrictions3];

  if (v9)
  {
    [stubDictionary setObject:v9 forKeyedSubscript:@"SafariPasswordAutoFillDomains"];
  }

  restrictions4 = [(MCDomainsPayload *)self restrictions];
  v11 = [MCRestrictionManager intersectedValuesForFeature:@"crossSiteTrackingPreventionRelaxedDomains" withRestrictionsDictionary:restrictions4];

  if (v11)
  {
    [stubDictionary setObject:v11 forKeyedSubscript:@"CrossSiteTrackingPreventionRelaxedDomains"];
  }

  restrictions5 = [(MCDomainsPayload *)self restrictions];
  v13 = [MCRestrictionManager intersectedValuesForFeature:@"crossSiteTrackingPreventionRelaxedApps" withRestrictionsDictionary:restrictions5];

  if (v13)
  {
    [stubDictionary setObject:v13 forKeyedSubscript:@"CrossSiteTrackingPreventionRelaxedApps"];
  }

  return stubDictionary;
}

- (id)payloadDescriptionKeyValueSections
{
  v3 = objc_opt_new();
  restrictions = [(MCDomainsPayload *)self restrictions];
  v5 = [MCRestrictionManager unionValuesForFeature:@"managedWebDomains" withRestrictionsDictionary:restrictions];

  if ([v5 count])
  {
    v6 = MCLocalizedString(@"MANAGED_SAFARI_WEB_DOMAINS");
    v7 = [MCKeyValueSection sectionWithLocalizedArray:v5 title:v6 footer:0];

    [v3 addObject:v7];
  }

  restrictions2 = [(MCDomainsPayload *)self restrictions];
  v9 = [MCRestrictionManager intersectedValuesForFeature:@"managedEmailDomains" withRestrictionsDictionary:restrictions2];

  if ([v9 count])
  {
    v10 = MCLocalizedString(@"UNMARKED_EMAIL_DOMAINS");
    v11 = [MCKeyValueSection sectionWithLocalizedArray:v9 title:v10 footer:0];

    [v3 addObject:v11];
  }

  restrictions3 = [(MCDomainsPayload *)self restrictions];
  v13 = [MCRestrictionManager unionValuesForFeature:@"allowedSafariPasswordAutoFillDomains" withRestrictionsDictionary:restrictions3];

  if ([v13 count])
  {
    v14 = MCLocalizedString(@"SAFARI_PASSWORD_AUTOFILL_DOMAINS");
    v15 = [MCKeyValueSection sectionWithLocalizedArray:v13 title:v14 footer:0];

    [v3 addObject:v15];
  }

  restrictions4 = [(MCDomainsPayload *)self restrictions];
  v17 = [MCRestrictionManager intersectedValuesForFeature:@"crossSiteTrackingPreventionRelaxedDomains" withRestrictionsDictionary:restrictions4];

  if ([v17 count])
  {
    v18 = MCLocalizedString(@"CROSS_SITE_TRACKING_PREVENTION_RELAXED_DOMAINS");
    v19 = [MCKeyValueSection sectionWithLocalizedArray:v17 title:v18 footer:0];

    [v3 addObject:v19];
  }

  restrictions5 = [(MCDomainsPayload *)self restrictions];
  v21 = [MCRestrictionManager intersectedValuesForFeature:@"crossSiteTrackingPreventionRelaxedApps" withRestrictionsDictionary:restrictions5];

  if ([v21 count])
  {
    v22 = MCLocalizedString(@"CROSS_SITE_TRACKING_PREVENTION_RELAXED_APPS");
    v23 = [MCKeyValueSection sectionWithLocalizedArray:v21 title:v22 footer:0];

    [v3 addObject:v23];
  }

  if (![v3 count])
  {

    v3 = 0;
  }

  return v3;
}

@end