@interface MCWebContentFilterPayload
+ (id)pluginFilterKeysAndClasses;
+ (id)typeStrings;
- (BOOL)_BOOLFromDict:(id)dict key:(id)key outError:(id *)error;
- (BOOL)_BOOLFromDictOrDefaultTrue:(id)true key:(id)key outError:(id *)error;
- (MCWebContentFilterPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error;
- (id)_dictsFromDict:(id)dict key:(id)key outError:(id *)error;
- (id)_stringsFromDict:(id)dict key:(id)key outError:(id *)error;
- (id)installationWarnings;
- (id)payloadDescriptionKeyValueSections;
- (id)restrictions;
- (id)stubDictionary;
- (id)subtitle1Description;
- (id)verboseDescription;
@end

@implementation MCWebContentFilterPayload

+ (id)typeStrings
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"com.apple.webcontent-filter";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (id)pluginFilterKeysAndClasses
{
  if (pluginFilterKeysAndClasses_onceToken != -1)
  {
    +[MCWebContentFilterPayload pluginFilterKeysAndClasses];
  }

  v3 = pluginFilterKeysAndClasses_dict;

  return v3;
}

void __55__MCWebContentFilterPayload_pluginFilterKeysAndClasses__block_invoke()
{
  v4[14] = *MEMORY[0x1E69E9840];
  v3[0] = @"UserDefinedName";
  v4[0] = objc_opt_class();
  v3[1] = @"PluginBundleID";
  v4[1] = objc_opt_class();
  v3[2] = @"ServerAddress";
  v4[2] = objc_opt_class();
  v3[3] = @"UserName";
  v4[3] = objc_opt_class();
  v3[4] = @"Password";
  v4[4] = objc_opt_class();
  v3[5] = @"PayloadCertificateUUID";
  v4[5] = objc_opt_class();
  v3[6] = @"Organization";
  v4[6] = objc_opt_class();
  v3[7] = @"VendorConfig";
  v4[7] = objc_opt_class();
  v3[8] = @"FilterBrowsers";
  v4[8] = objc_opt_class();
  v3[9] = @"FilterSockets";
  v4[9] = objc_opt_class();
  v3[10] = @"ApplicationCreated";
  v4[10] = objc_opt_class();
  v3[11] = @"Enabled";
  v4[11] = objc_opt_class();
  v3[12] = @"FilterURLs";
  v4[12] = objc_opt_class();
  v3[13] = @"URLFilterParameters";
  v4[13] = objc_opt_class();
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:14];
  v1 = pluginFilterKeysAndClasses_dict;
  pluginFilterKeysAndClasses_dict = v0;

  v2 = *MEMORY[0x1E69E9840];
}

- (MCWebContentFilterPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error
{
  v132 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  profileCopy = profile;
  v124.receiver = self;
  v124.super_class = MCWebContentFilterPayload;
  v10 = [(MCPayload *)&v124 initWithDictionary:dictionaryCopy profile:profileCopy outError:error];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_13;
  }

  v123 = 0;
  v12 = [(MCWebContentFilterPayload *)v10 _stringFromDict:dictionaryCopy key:@"ContentFilterUUID" outError:&v123];
  v13 = v123;
  contentFilterUUID = v11->_contentFilterUUID;
  v11->_contentFilterUUID = v12;

  if (v13)
  {
    goto LABEL_3;
  }

  v28 = [(MCWebContentFilterPayload *)v11 _stringFromDict:dictionaryCopy key:@"FilterType" outError:0];
  v29 = v28;
  if (v28)
  {
    v30 = v28;
  }

  else
  {
    v30 = @"BuiltIn";
  }

  objc_storeStrong(&v11->_filterType, v30);

  v11->_hideDenyListURLs = [(MCWebContentFilterPayload *)v11 _BOOLFromDict:dictionaryCopy key:@"HideDenyListURLs" outError:0];
  v11->_safariHistoryRetentionEnabled = [(MCWebContentFilterPayload *)v11 _BOOLFromDictOrDefaultTrue:dictionaryCopy key:@"SafariHistoryRetentionEnabled" outError:0];
  isStub = [profileCopy isStub];
  v32 = [(NSString *)v11->_filterType isEqualToString:@"Plugin"];
  if (isStub)
  {
    if (v32)
    {
      v33 = [(MCWebContentFilterPayload *)v11 _stringFromDict:dictionaryCopy key:@"PluginBundleID" outError:0];
      pluginBundleID = v11->_pluginBundleID;
      v11->_pluginBundleID = v33;

      v35 = [(MCWebContentFilterPayload *)v11 _stringFromDict:dictionaryCopy key:@"UserDefinedName" outError:0];
      v13 = 0;
      name = v11->_name;
      v11->_name = v35;
LABEL_8:

      goto LABEL_9;
    }

    v39 = [(MCWebContentFilterPayload *)v11 _BOOLFromDict:dictionaryCopy key:@"AutoFilterEnabled" outError:0];
    v11->_autoFilterEnabled = v39;
    if (v39)
    {
      v40 = [(MCWebContentFilterPayload *)v11 _stringsFromDict:dictionaryCopy key:@"PermittedURLs" outError:0];
      v41 = v40;
      if (v40)
      {
        v42 = v40;
      }

      else
      {
        v42 = MEMORY[0x1E695E0F0];
      }

      objc_storeStrong(&v11->_permittedURLStrings, v42);
    }

    v43 = [(MCWebContentFilterPayload *)v11 _dictsFromDict:dictionaryCopy key:@"AllowListBookmarks" outError:0];
    v44 = v43;
    if (!v43)
    {
      v44 = [(MCWebContentFilterPayload *)v11 _dictsFromDict:dictionaryCopy key:@"WhitelistedBookmarks" outError:0];
    }

    objc_storeStrong(&v11->_allowListBookmarks, v44);
    if (!v43)
    {
    }

    name = [(MCWebContentFilterPayload *)v11 _stringsFromDict:dictionaryCopy key:@"DenyListURLs" outError:0];
    v45 = name;
    if (!name)
    {
      v45 = [(MCWebContentFilterPayload *)v11 _stringsFromDict:dictionaryCopy key:@"BlacklistedURLs" outError:0];
    }

    objc_storeStrong(&v11->_denyListURLStrings, v45);
    if (name)
    {
LABEL_52:
      v13 = 0;
      goto LABEL_8;
    }

LABEL_51:

    goto LABEL_52;
  }

  if (!v32 && ![(NSString *)v11->_filterType isEqualToString:@"BuiltIn"])
  {
    v13 = [MCPayload badFieldTypeErrorWithField:@"FilterType"];
    goto LABEL_41;
  }

  if ([(NSString *)v11->_filterType isEqualToString:@"Plugin"])
  {
    v36 = +[MCWebContentFilterPayload pluginFilterKeysAndClasses];
    v122 = 0;
    v37 = [dictionaryCopy MCMutableDictionaryContainingValidatedKeysAndClasses:v36 removeKeys:1 outError:&v122];
    v13 = v122;
    pluginConfiguration = v11->_pluginConfiguration;
    v11->_pluginConfiguration = v37;

    if (!v13)
    {
      name = [(NSDictionary *)v11->_pluginConfiguration objectForKeyedSubscript:@"PluginBundleID"];
      if (name)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([name length])
          {
            objc_storeStrong(&v11->_pluginBundleID, name);
          }
        }
      }

      v45 = [(NSDictionary *)v11->_pluginConfiguration objectForKeyedSubscript:@"UserDefinedName"];
      if (v45)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v45 length])
          {
            objc_storeStrong(&v11->_name, v45);
          }
        }
      }

      goto LABEL_51;
    }

LABEL_3:
    v15 = [(MCPayload *)v11 malformedPayloadErrorWithError:v13];
    name = v15;
    if (error)
    {
      v17 = v15;
      *error = name;
    }

    v18 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      v19 = v18;
      v20 = objc_opt_class();
      v21 = v20;
      mCVerboseDescription = [name MCVerboseDescription];
      *buf = 138543618;
      v126 = v20;
      v127 = 2114;
      v128 = mCVerboseDescription;
      _os_log_impl(&dword_1A795B000, v19, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse payload: %{public}@", buf, 0x16u);
    }

    v11 = 0;
    goto LABEL_8;
  }

  v121 = 0;
  v46 = [(MCWebContentFilterPayload *)v11 _BOOLFromDict:dictionaryCopy key:@"AutoFilterEnabled" outError:&v121];
  v47 = v121;
  v11->_autoFilterEnabled = v46;
  if (v47)
  {
    v13 = v47;
    goto LABEL_3;
  }

  if (v46)
  {
    v120 = 0;
    v48 = [(MCWebContentFilterPayload *)v11 _stringsFromDict:dictionaryCopy key:@"PermittedURLs" outError:&v120];
    v13 = v120;
    if (v48)
    {
      v49 = v48;
    }

    else
    {
      v49 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong(&v11->_permittedURLStrings, v49);

    if (v13)
    {
      goto LABEL_3;
    }

    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    obj = v11->_permittedURLStrings;
    v50 = [(NSArray *)obj countByEnumeratingWithState:&v116 objects:v131 count:16];
    if (v50)
    {
      v51 = v50;
      v52 = *v117;
      do
      {
        for (i = 0; i != v51; ++i)
        {
          if (*v117 != v52)
          {
            objc_enumerationMutation(obj);
          }

          v54 = *(*(&v116 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v13 = [MCPayload badFieldValueErrorWithField:@"PermittedURLs"];

            goto LABEL_41;
          }
        }

        v51 = [(NSArray *)obj countByEnumeratingWithState:&v116 objects:v131 count:16];
      }

      while (v51);
    }
  }

  v115 = 0;
  v55 = [(MCWebContentFilterPayload *)v11 _stringsFromDict:dictionaryCopy key:@"DenyListURLs" outError:&v115];
  v13 = v115;
  denyListURLStrings = v11->_denyListURLStrings;
  v11->_denyListURLStrings = v55;

  if (v13)
  {
    goto LABEL_41;
  }

  v57 = v11->_denyListURLStrings;
  if (v57)
  {
    v58 = @"DenyListURLs";
  }

  else
  {
    v114 = 0;
    v87 = [(MCWebContentFilterPayload *)v11 _stringsFromDict:dictionaryCopy key:@"BlacklistedURLs" outError:&v114];
    v13 = v114;
    v88 = v11->_denyListURLStrings;
    v11->_denyListURLStrings = v87;

    if (v13)
    {
      goto LABEL_41;
    }

    v57 = v11->_denyListURLStrings;
    v58 = @"BlacklistedURLs";
  }

  v99 = v58;
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  obja = v57;
  v59 = [(NSArray *)obja countByEnumeratingWithState:&v110 objects:v130 count:16];
  if (v59)
  {
    v60 = v59;
    v61 = *v111;
    do
    {
      for (j = 0; j != v60; ++j)
      {
        if (*v111 != v61)
        {
          objc_enumerationMutation(obja);
        }

        v63 = *(*(&v110 + 1) + 8 * j);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v13 = [MCPayload badFieldValueErrorWithField:v99];
          goto LABEL_117;
        }
      }

      v60 = [(NSArray *)obja countByEnumeratingWithState:&v110 objects:v130 count:16];
    }

    while (v60);
  }

  if (![(NSArray *)v11->_denyListURLStrings count])
  {
    v64 = v11->_denyListURLStrings;
    v11->_denyListURLStrings = 0;
  }

  v109 = 0;
  v65 = [(MCWebContentFilterPayload *)v11 _dictsFromDict:dictionaryCopy key:@"AllowListBookmarks" outError:&v109];
  v13 = v109;
  allowListBookmarks = v11->_allowListBookmarks;
  v11->_allowListBookmarks = v65;

  if (!v13)
  {
    v67 = v11->_allowListBookmarks;
    if (!v67)
    {
      v108 = 0;
      v89 = [(MCWebContentFilterPayload *)v11 _dictsFromDict:dictionaryCopy key:@"WhitelistedBookmarks" outError:&v108];
      v13 = v108;
      v90 = v11->_allowListBookmarks;
      v11->_allowListBookmarks = v89;

      if (v13)
      {
        goto LABEL_41;
      }

      v67 = v11->_allowListBookmarks;
    }

    obja = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](v67, "count")}];
    v104 = 0u;
    v105 = 0u;
    v106 = 0u;
    v107 = 0u;
    v92 = v11->_allowListBookmarks;
    v94 = [(NSArray *)v92 countByEnumeratingWithState:&v104 objects:v129 count:16];
    v13 = 0;
    if (!v94)
    {
      goto LABEL_111;
    }

    v95 = *v105;
LABEL_84:
    v68 = 0;
    while (1)
    {
      if (*v105 != v95)
      {
        objc_enumerationMutation(v92);
      }

      v98 = v68;
      v69 = *(*(&v104 + 1) + 8 * v68);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v91 = [MCPayload badFieldValueErrorWithField:@"WhitelistedBookmarks"];
        goto LABEL_126;
      }

      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v70 = [v69 objectForKeyedSubscript:@"URL"];
      if (v70)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v91 = [MCPayload badFieldTypeErrorWithField:@"address"];

          goto LABEL_125;
        }

        [dictionary setObject:v70 forKeyedSubscript:@"address"];
      }

      v97 = v70;
      v71 = [v69 objectForKeyedSubscript:@"BookmarkPath"];
      if (v71)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v91 = [MCPayload badFieldTypeErrorWithField:@"bookmarkPath"];

LABEL_125:
          v13 = dictionary;
LABEL_126:

          v13 = v91;
LABEL_127:

          goto LABEL_117;
        }

        if ([(__CFString *)v71 rangeOfString:@"/" options:8]== 0x7FFFFFFFFFFFFFFFLL)
        {
          v72 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/%@", v71];

          v71 = v72;
        }

        v73 = dictionary;
        v74 = dictionary;
        v75 = v71;
      }

      else
      {
        v73 = dictionary;
        v74 = dictionary;
        v75 = @"/";
      }

      [v74 setObject:v75 forKeyedSubscript:@"bookmarkPath"];
      v76 = [v69 objectForKeyedSubscript:@"Title"];
      v96 = v71;
      if (!v76)
      {
        goto LABEL_100;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v81 = [MCPayload badFieldTypeErrorWithField:@"pageTitle"];

      v80 = 0;
      v13 = v81;
      v82 = dictionary;
LABEL_108:

      if (!v80)
      {
        goto LABEL_127;
      }

      v68 = v98 + 1;
      if (v94 == v98 + 1)
      {
        v94 = [(NSArray *)v92 countByEnumeratingWithState:&v104 objects:v129 count:16];
        if (v94)
        {
          goto LABEL_84;
        }

LABEL_111:

        if ([(NSArray *)obja count])
        {
          v85 = obja;
        }

        else
        {
          v85 = 0;
        }

        v86 = v85;
        v93 = v11->_allowListBookmarks;
        v11->_allowListBookmarks = v86;

LABEL_117:
        goto LABEL_41;
      }
    }

    [v73 setObject:v76 forKeyedSubscript:@"pageTitle"];
LABEL_100:
    v101 = v76;
    [v73 objectForKeyedSubscript:@"address"];
    v78 = v77 = v73;

    if (v78)
    {
      v79 = [v77 objectForKeyedSubscript:@"pageTitle"];

      if (v79)
      {
        [(NSArray *)obja addObject:v77];
        v80 = 1;
LABEL_107:
        v82 = v77;
        v76 = v101;
        goto LABEL_108;
      }

      v83 = @"pageTitle";
    }

    else
    {
      v83 = @"address";
    }

    v84 = [MCPayload missingFieldErrorWithField:v83 underlyingError:0];

    v80 = 0;
    v13 = v84;
    goto LABEL_107;
  }

LABEL_41:
  if (v13)
  {
    goto LABEL_3;
  }

LABEL_9:
  if ([dictionaryCopy count])
  {
    v23 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
    {
      v24 = v23;
      friendlyName = [(MCPayload *)v11 friendlyName];
      *buf = 138543618;
      v126 = friendlyName;
      v127 = 2114;
      v128 = dictionaryCopy;
      _os_log_impl(&dword_1A795B000, v24, OS_LOG_TYPE_INFO, "Payload “%{public}@” contains ignored fields. They are: %{public}@", buf, 0x16u);
    }
  }

LABEL_13:
  v26 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)_BOOLFromDict:(id)dict key:(id)key outError:(id *)error
{
  keyCopy = key;
  dictCopy = dict;
  v9 = [dictCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:keyCopy isRequired:0 outError:error];

  LOBYTE(dictCopy) = [v9 BOOLValue];
  return dictCopy;
}

- (BOOL)_BOOLFromDictOrDefaultTrue:(id)true key:(id)key outError:(id *)error
{
  keyCopy = key;
  trueCopy = true;
  v9 = [trueCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:keyCopy isRequired:0 outError:error];

  if (v9)
  {
    bOOLValue = [v9 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (id)_stringsFromDict:(id)dict key:(id)key outError:(id *)error
{
  keyCopy = key;
  dictCopy = dict;
  v9 = [dictCopy MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:keyCopy isRequired:0 outError:error];

  return v9;
}

- (id)_dictsFromDict:(id)dict key:(id)key outError:(id *)error
{
  keyCopy = key;
  dictCopy = dict;
  v9 = [dictCopy MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:keyCopy isRequired:0 outError:error];

  return v9;
}

- (id)stubDictionary
{
  v24.receiver = self;
  v24.super_class = MCWebContentFilterPayload;
  stubDictionary = [(MCPayload *)&v24 stubDictionary];
  contentFilterUUID = [(MCWebContentFilterPayload *)self contentFilterUUID];

  if (contentFilterUUID)
  {
    contentFilterUUID2 = [(MCWebContentFilterPayload *)self contentFilterUUID];
    [stubDictionary setObject:contentFilterUUID2 forKeyedSubscript:@"ContentFilterUUID"];
  }

  filterType = [(MCWebContentFilterPayload *)self filterType];

  if (filterType)
  {
    filterType2 = [(MCWebContentFilterPayload *)self filterType];
    [stubDictionary setObject:filterType2 forKeyedSubscript:@"FilterType"];
  }

  if ([(MCWebContentFilterPayload *)self hideDenyListURLs])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[MCWebContentFilterPayload hideDenyListURLs](self, "hideDenyListURLs")}];
    [stubDictionary setObject:v8 forKeyedSubscript:@"HideDenyListURLs"];
  }

  filterType3 = [(MCWebContentFilterPayload *)self filterType];
  v10 = [filterType3 isEqualToString:@"Plugin"];

  if (v10)
  {
    pluginBundleID = [(MCWebContentFilterPayload *)self pluginBundleID];

    if (pluginBundleID)
    {
      pluginBundleID2 = [(MCWebContentFilterPayload *)self pluginBundleID];
      [stubDictionary setObject:pluginBundleID2 forKeyedSubscript:@"PluginBundleID"];
    }

    name = [(MCWebContentFilterPayload *)self name];

    if (name)
    {
      name2 = [(MCWebContentFilterPayload *)self name];
      v15 = @"UserDefinedName";
LABEL_20:
      [stubDictionary setObject:name2 forKeyedSubscript:v15];
    }
  }

  else
  {
    v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[MCWebContentFilterPayload autoFilterEnabled](self, "autoFilterEnabled")}];
    [stubDictionary setObject:v16 forKeyedSubscript:@"AutoFilterEnabled"];

    permittedURLStrings = [(MCWebContentFilterPayload *)self permittedURLStrings];

    if (permittedURLStrings)
    {
      permittedURLStrings2 = [(MCWebContentFilterPayload *)self permittedURLStrings];
      [stubDictionary setObject:permittedURLStrings2 forKeyedSubscript:@"PermittedURLs"];
    }

    allowListBookmarks = [(MCWebContentFilterPayload *)self allowListBookmarks];

    if (allowListBookmarks)
    {
      allowListBookmarks2 = [(MCWebContentFilterPayload *)self allowListBookmarks];
      [stubDictionary setObject:allowListBookmarks2 forKeyedSubscript:@"AllowListBookmarks"];
    }

    denyListURLStrings = [(MCWebContentFilterPayload *)self denyListURLStrings];

    if (denyListURLStrings)
    {
      denyListURLStrings2 = [(MCWebContentFilterPayload *)self denyListURLStrings];
      [stubDictionary setObject:denyListURLStrings2 forKeyedSubscript:@"DenyListURLs"];
    }

    if ([(MCWebContentFilterPayload *)self safariHistoryRetentionEnabled])
    {
      name2 = [MEMORY[0x1E696AD98] numberWithBool:{-[MCWebContentFilterPayload safariHistoryRetentionEnabled](self, "safariHistoryRetentionEnabled")}];
      v15 = @"SafariHistoryRetentionEnabled";
      goto LABEL_20;
    }
  }

  return stubDictionary;
}

- (id)restrictions
{
  v51[2] = *MEMORY[0x1E69E9840];
  filterType = [(MCWebContentFilterPayload *)self filterType];
  v4 = [filterType isEqualToString:@"Plugin"];

  if (v4)
  {
    dictionary = 0;
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:dictionary2 forKeyedSubscript:@"restrictedBool"];
    dictionary3 = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:dictionary3 forKeyedSubscript:@"intersection"];
    dictionary4 = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:dictionary4 forKeyedSubscript:@"union"];
    if ([(MCWebContentFilterPayload *)self autoFilterEnabled])
    {
      v50[0] = @"value";
      v50[1] = @"preference";
      v51[0] = MEMORY[0x1E695E118];
      v51[1] = MEMORY[0x1E695E118];
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:v50 count:2];
      [dictionary2 setObject:v9 forKeyedSubscript:@"forceWebContentFilterAuto"];
    }

    permittedURLStrings = [(MCWebContentFilterPayload *)self permittedURLStrings];

    if (permittedURLStrings)
    {
      v48 = @"values";
      permittedURLStrings2 = [(MCWebContentFilterPayload *)self permittedURLStrings];
      v49 = permittedURLStrings2;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
      [dictionary3 setObject:v12 forKeyedSubscript:@"webContentFilterAutoPermittedURLs"];
    }

    allowListBookmarks = [(MCWebContentFilterPayload *)self allowListBookmarks];

    if (allowListBookmarks)
    {
      v34 = dictionary4;
      v14 = MEMORY[0x1E695DF70];
      allowListBookmarks2 = [(MCWebContentFilterPayload *)self allowListBookmarks];
      v16 = [v14 arrayWithCapacity:{objc_msgSend(allowListBookmarks2, "count")}];

      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      allowListBookmarks3 = [(MCWebContentFilterPayload *)self allowListBookmarks];
      v18 = [allowListBookmarks3 countByEnumeratingWithState:&v35 objects:v47 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v36;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v36 != v20)
            {
              objc_enumerationMutation(allowListBookmarks3);
            }

            v22 = [*(*(&v35 + 1) + 8 * i) objectForKeyedSubscript:@"address"];
            [v16 addObject:v22];
          }

          v19 = [allowListBookmarks3 countByEnumeratingWithState:&v35 objects:v47 count:16];
        }

        while (v19);
      }

      v45 = @"values";
      v46 = v16;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
      [dictionary3 setObject:v23 forKeyedSubscript:@"webContentFilterWhitelistedURLs"];

      dictionary4 = v34;
    }

    denyListURLStrings = [(MCWebContentFilterPayload *)self denyListURLStrings];

    if (denyListURLStrings)
    {
      v43 = @"values";
      denyListURLStrings2 = [(MCWebContentFilterPayload *)self denyListURLStrings];
      v44 = denyListURLStrings2;
      v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
      [dictionary4 setObject:v26 forKeyedSubscript:@"webContentFilterBlacklistedURLs"];
    }

    filterType2 = [(MCWebContentFilterPayload *)self filterType];
    v28 = [filterType2 isEqualToString:@"BuiltIn"];

    if (v28 && [(MCWebContentFilterPayload *)self safariHistoryRetentionEnabled])
    {
      v29 = MEMORY[0x1E695E110];
      v41[0] = @"value";
      v41[1] = @"preference";
      v42[0] = MEMORY[0x1E695E110];
      v42[1] = MEMORY[0x1E695E110];
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:2];
      [dictionary2 setObject:v30 forKeyedSubscript:@"allowSafariPrivateBrowsing"];

      v39[0] = @"value";
      v39[1] = @"preference";
      v40[0] = v29;
      v40[1] = v29;
      v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:2];
      [dictionary2 setObject:v31 forKeyedSubscript:@"allowSafariHistoryClearing"];
    }
  }

  v32 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (id)verboseDescription
{
  v18.receiver = self;
  v18.super_class = MCWebContentFilterPayload;
  verboseDescription = [(MCPayload *)&v18 verboseDescription];
  v4 = [verboseDescription mutableCopy];

  filterType = [(MCWebContentFilterPayload *)self filterType];
  [v4 appendFormat:@"Type : %@\n", filterType];

  filterType2 = [(MCWebContentFilterPayload *)self filterType];
  v7 = [filterType2 isEqualToString:@"Plugin"];

  if ((v7 & 1) == 0)
  {
    if ([(MCWebContentFilterPayload *)self autoFilterEnabled])
    {
      v8 = @"Yes";
    }

    else
    {
      v8 = @"No";
    }

    [v4 appendFormat:@"Auto Filter    : %@\n", v8];
    permittedURLStrings = [(MCWebContentFilterPayload *)self permittedURLStrings];

    if (permittedURLStrings)
    {
      permittedURLStrings2 = [(MCWebContentFilterPayload *)self permittedURLStrings];
      [v4 appendFormat:@"Permitted URLs:\n%@\n", permittedURLStrings2];
    }

    allowListBookmarks = [(MCWebContentFilterPayload *)self allowListBookmarks];

    if (allowListBookmarks)
    {
      allowListBookmarks2 = [(MCWebContentFilterPayload *)self allowListBookmarks];
      [v4 appendFormat:@"Allowed bookmarks:\n%@\n", allowListBookmarks2];
    }

    denyListURLStrings = [(MCWebContentFilterPayload *)self denyListURLStrings];

    if (denyListURLStrings)
    {
      denyListURLStrings2 = [(MCWebContentFilterPayload *)self denyListURLStrings];
      [v4 appendFormat:@"Denied URLs:\n%@\n", denyListURLStrings2];
    }

    if ([(MCWebContentFilterPayload *)self safariHistoryRetentionEnabled])
    {
      if ([(MCWebContentFilterPayload *)self safariHistoryRetentionEnabled])
      {
        v15 = @"Yes";
      }

      else
      {
        v15 = @"No";
      }

      [v4 appendFormat:@"Safari history retention:\n%@\n", v15];
    }
  }

  contentFilterUUID = [(MCWebContentFilterPayload *)self contentFilterUUID];
  [v4 appendFormat:@"ContentFilterUUID     : %@\n", contentFilterUUID];

  return v4;
}

- (id)subtitle1Description
{
  array = [MEMORY[0x1E695DF70] array];
  if ([(MCWebContentFilterPayload *)self autoFilterEnabled])
  {
    v11 = MCLocalizedFormat(@"WEB_FILTER_DESC_AUTOFILTER", v4, v5, v6, v7, v8, v9, v10, v45);
    [array addObject:v11];
  }

  allowListBookmarks = [(MCWebContentFilterPayload *)self allowListBookmarks];
  v13 = [allowListBookmarks count];

  if (v13)
  {
    v21 = MCLocalizedFormat(@"WEB_FILTER_DESC_ALLOW_LIST", v14, v15, v16, v17, v18, v19, v20, v45);
    [array addObject:v21];
  }

  denyListURLStrings = [(MCWebContentFilterPayload *)self denyListURLStrings];
  v23 = [denyListURLStrings count];

  if (v23)
  {
    v31 = MCLocalizedFormat(@"WEB_FILTER_DESC_DENY_LIST", v24, v25, v26, v27, v28, v29, v30, v45);
    [array addObject:v31];
  }

  filterType = [(MCWebContentFilterPayload *)self filterType];
  v33 = [filterType isEqualToString:@"Plugin"];

  if (v33)
  {
    v34 = MCLocalizedString(@"WEB_FILTER_DESC_PLUGIN");
    [array addObject:v34];
  }

  if ([array count])
  {
    v42 = MCLocalizedFormat(@"WEB_FILTER_SEPARATOR", v35, v36, v37, v38, v39, v40, v41, v45);
    v43 = [array componentsJoinedByString:v42];
  }

  else
  {
    v43 = MCLocalizedFormat(@"WEB_FILTER_DESC_NONE", v35, v36, v37, v38, v39, v40, v41, v45);
  }

  return v43;
}

- (id)payloadDescriptionKeyValueSections
{
  v57 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = [MCKeyValue alloc];
  v6 = MCLocalizedStringForBool([(MCWebContentFilterPayload *)self autoFilterEnabled]);
  v7 = MCLocalizedString(@"AUTO_FILTER_ENABLED");
  v8 = [(MCKeyValue *)v5 initWithLocalizedString:v6 localizedKey:v7];
  [v4 addObject:v8];

  pluginBundleID = [(MCWebContentFilterPayload *)self pluginBundleID];

  if (pluginBundleID)
  {
    v10 = [MCKeyValue alloc];
    pluginBundleID2 = [(MCWebContentFilterPayload *)self pluginBundleID];
    v12 = MCLocalizedString(@"PLUGIN_BUNDLE_ID");
    v13 = [(MCKeyValue *)v10 initWithLocalizedString:pluginBundleID2 localizedKey:v12];

    [v4 addObject:v13];
  }

  contentFilterUUID = [(MCWebContentFilterPayload *)self contentFilterUUID];

  if (contentFilterUUID)
  {
    v15 = [MCKeyValue alloc];
    contentFilterUUID2 = [(MCWebContentFilterPayload *)self contentFilterUUID];
    v17 = MCLocalizedString(@"WEB_FILTER_CONTENTFILTERUUID");
    v18 = [(MCKeyValue *)v15 initWithLocalizedString:contentFilterUUID2 localizedKey:v17];

    [v4 addObject:v18];
  }

  if ([(MCWebContentFilterPayload *)self safariHistoryRetentionEnabled])
  {
    v19 = [MCKeyValue alloc];
    v20 = MCLocalizedStringForBool([(MCWebContentFilterPayload *)self safariHistoryRetentionEnabled]);
    v21 = MCLocalizedString(@"BROWSING_HISTORY_RETENTION");
    v22 = [(MCKeyValue *)v19 initWithLocalizedString:v20 localizedKey:v21];

    [v4 addObject:v22];
  }

  if ([v4 count])
  {
    v23 = [MCKeyValueSection sectionWithKeyValues:v4];
    [v3 addObject:v23];
  }

  permittedURLStrings = [(MCWebContentFilterPayload *)self permittedURLStrings];
  v25 = [permittedURLStrings count];

  if (v25)
  {
    permittedURLStrings2 = [(MCWebContentFilterPayload *)self permittedURLStrings];
    v27 = MCLocalizedString(@"PERMITTED_URLS");
    v28 = [MCKeyValueSection sectionWithLocalizedArray:permittedURLStrings2 title:v27 footer:0];

    [v3 addObject:v28];
  }

  v51 = v3;
  v29 = objc_opt_new();
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  allowListBookmarks = [(MCWebContentFilterPayload *)self allowListBookmarks];
  v31 = [allowListBookmarks countByEnumeratingWithState:&v52 objects:v56 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v53;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v53 != v33)
        {
          objc_enumerationMutation(allowListBookmarks);
        }

        v35 = *(*(&v52 + 1) + 8 * i);
        v36 = [v35 objectForKeyedSubscript:@"pageTitle"];
        v37 = v36;
        if (!v36 || ![v36 length])
        {
          v38 = [v35 objectForKeyedSubscript:@"address"];

          v37 = v38;
          if (!v38)
          {
            continue;
          }
        }

        [v29 addObject:v37];
      }

      v32 = [allowListBookmarks countByEnumeratingWithState:&v52 objects:v56 count:16];
    }

    while (v32);
  }

  v39 = v51;
  if ([v29 count])
  {
    v40 = MCLocalizedString(@"ALLOWED_BOOKMARKS");
    v41 = [MCKeyValueSection sectionWithLocalizedArray:v29 title:v40 footer:0];

    [v51 addObject:v41];
  }

  denyListURLStrings = [(MCWebContentFilterPayload *)self denyListURLStrings];
  v43 = [denyListURLStrings count];

  if (v43)
  {
    if ([(MCWebContentFilterPayload *)self hideDenyListURLs])
    {
      v44 = @"PROHIBITED_URLS_HIDDEN";
    }

    else
    {
      v44 = @"PROHIBITED_URLS";
    }

    v45 = MCLocalizedString(v44);
    if ([(MCWebContentFilterPayload *)self hideDenyListURLs])
    {
      denyListURLStrings2 = MEMORY[0x1E695E0F0];
    }

    else
    {
      denyListURLStrings2 = [(MCWebContentFilterPayload *)self denyListURLStrings];
    }

    v47 = [MCKeyValueSection sectionWithLocalizedArray:denyListURLStrings2 title:v45 footer:0];
    [v51 addObject:v47];
  }

  if (![v51 count])
  {

    v39 = 0;
  }

  v48 = *MEMORY[0x1E69E9840];

  return v39;
}

- (id)installationWarnings
{
  filterType = [(MCWebContentFilterPayload *)self filterType];
  v3 = [filterType isEqualToString:@"BuiltIn"];

  if (v3)
  {
    v4 = @"INSTALL_WARNING_WEB_CONTENT_FILTER_TITLE";
  }

  else
  {
    v4 = @"INSTALL_WARNING_PLUGIN_CONTENT_FILTER_TITLE";
  }

  if (v3)
  {
    v5 = @"INSTALL_WARNING_WEB_CONTENT_FILTER";
  }

  else
  {
    v5 = @"INSTALL_WARNING_PLUGIN_CONTENT_FILTER";
  }

  v6 = MCLocalizedString(v4);
  v7 = MCLocalizedStringByDevice(v5);
  v8 = [MCProfileWarning warningWithLocalizedTitle:v6 localizedBody:v7 isLongForm:1];

  v9 = [MEMORY[0x1E695DEC8] arrayWithObject:v8];

  return v9;
}

@end