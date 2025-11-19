@interface MCAirPlayPayload
+ (id)typeStrings;
- (MCAirPlayPayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5;
- (NSArray)titlesAndDescriptions;
- (id)namesOrIdsForAllowedDestinations;
- (id)payloadDescriptionKeyValueSections;
- (id)stubDictionary;
- (id)subtitle1Description;
- (id)subtitle1Label;
- (id)subtitle2Description;
- (id)subtitle2Label;
- (id)verboseDescription;
@end

@implementation MCAirPlayPayload

+ (id)typeStrings
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"com.apple.airplay";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (MCAirPlayPayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5
{
  v129 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v120.receiver = self;
  v120.super_class = MCAirPlayPayload;
  v10 = [(MCPayload *)&v120 initWithDictionary:v8 profile:v9 outError:a5];
  if (!v10)
  {
    goto LABEL_91;
  }

  v119 = 0;
  v11 = [MCProfile removeOptionalObjectInDictionary:v8 key:@"AllowList" type:objc_opt_class() errorDomain:@"MCPayloadErrorDomain" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v119];
  v12 = v119;
  v13 = &_MCLogObjects;
  if (v12 || !v11 && (v118 = 0, [MCProfile removeOptionalObjectInDictionary:v8 key:@"Whitelist" type:objc_opt_class() errorDomain:@"MCPayloadErrorDomain" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v118], v11 = objc_claimAutoreleasedReturnValue(), (v12 = v118) != 0))
  {
    v14 = v12;
    goto LABEL_82;
  }

  v96 = v10;
  v97 = v11;
  v95 = v9;
  if (![v9 isStub])
  {
    v34 = [MEMORY[0x1E69AD420] sharedConfiguration];
    v35 = [v34 isSupervised];

    v36 = 0x1E77CF000;
    if (!v35)
    {
      goto LABEL_39;
    }

    v93 = v8;
    v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v105 = 0u;
    v106 = 0u;
    v107 = 0u;
    v108 = 0u;
    v37 = v97;
    v38 = [v37 countByEnumeratingWithState:&v105 objects:v126 count:16];
    if (!v38)
    {
      goto LABEL_38;
    }

    v39 = v38;
    v40 = *v106;
    v41 = @"DeviceName";
    v91 = a5;
    while (1)
    {
      for (i = 0; i != v39; ++i)
      {
        if (*v106 != v40)
        {
          objc_enumerationMutation(v37);
        }

        v43 = *(*(&v105 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v14 = [MCPayload badFieldTypeErrorWithField:@"Whitelist"];
          goto LABEL_72;
        }

        v44 = [v43 objectForKey:@"DeviceID"];
        v45 = [v43 objectForKey:@"DeviceName"];
        if (v45)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_71;
          }
        }

        if (v44)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v41 = @"DeviceID";
LABEL_71:
            v14 = [MCPayload badFieldValueErrorWithField:v41];

LABEL_72:
            v8 = v93;
            v10 = v96;
            goto LABEL_78;
          }
        }

        if ([v45 length])
        {
          v46 = v13;
          v47 = objc_alloc_init(MCAirPlayDestination);
          [(MCAirPlayDestination *)v47 setDeviceName:v45];
        }

        else
        {
          if (![v44 length])
          {
            goto LABEL_36;
          }

          v46 = v13;
          v47 = objc_alloc_init(MCAirPlayDestination);
          v48 = [v44 uppercaseString];
          [(MCAirPlayDestination *)v47 setDeviceID:v48];
        }

        [v33 addObject:v47];

        v13 = v46;
        v36 = 0x1E77CF000uLL;
        v41 = @"DeviceName";
LABEL_36:
      }

      v39 = [v37 countByEnumeratingWithState:&v105 objects:v126 count:16];
      a5 = v91;
      if (!v39)
      {
LABEL_38:

        [(MCAirPlayPayload *)v96 setAllowListDestinations:v33];
        v8 = v93;
LABEL_39:
        v49 = *(v36 + 1640);
        v104 = 0;
        v33 = [v49 removeOptionalObjectInDictionary:v8 key:@"Passwords" type:objc_opt_class() errorDomain:@"MCPayloadErrorDomain" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v104];
        v50 = v104;
        if (v50)
        {
          v14 = v50;
          v10 = v96;
          goto LABEL_80;
        }

        v37 = [MEMORY[0x1E695DF70] array];
        v100 = 0u;
        v101 = 0u;
        v102 = 0u;
        v103 = 0u;
        v33 = v33;
        v57 = [v33 countByEnumeratingWithState:&v100 objects:v125 count:16];
        if (!v57)
        {
LABEL_68:

          v10 = v96;
          [(MCAirPlayPayload *)v96 setDestinationsWithPasswords:v37];
          v14 = 0;
          v13 = &_MCLogObjects;
          goto LABEL_79;
        }

        v58 = v57;
        v59 = *v101;
        v60 = 0x1E695D000uLL;
        v61 = @"DeviceName";
        v62 = 0x1E696A000uLL;
        v91 = a5;
        v94 = v8;
LABEL_55:
        v63 = 0;
        v99 = v58;
        while (1)
        {
          if (*v101 != v59)
          {
            objc_enumerationMutation(v33);
          }

          v64 = *(*(&v100 + 1) + 8 * v63);
          v65 = *(v60 + 3872);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v14 = [MCPayload badFieldTypeErrorWithField:@"Passwords"];
            goto LABEL_77;
          }

          v66 = [v64 objectForKey:v61];
          if (!v66 || (v67 = *(v62 + 3776), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            v14 = [MCPayload badFieldTypeErrorWithField:@"DeviceName"];
            goto LABEL_75;
          }

          v68 = [v64 objectForKey:@"Password"];
          if (!v68)
          {
            break;
          }

          v69 = *(v62 + 3776);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            break;
          }

          if ([v66 length] && objc_msgSend(v68, "length"))
          {
            v70 = v59;
            v71 = v62;
            v72 = v61;
            v73 = v60;
            v74 = objc_alloc_init(MCAirPlayDestination);
            [(MCAirPlayDestination *)v74 setDeviceName:v66];
            [(MCAirPlayDestination *)v74 setPassword:v68];
            [v37 addObject:v74];

            v60 = v73;
            v61 = v72;
            v62 = v71;
            v59 = v70;
            v58 = v99;
          }

          if (v58 == ++v63)
          {
            v58 = [v33 countByEnumeratingWithState:&v100 objects:v125 count:16];
            a5 = v91;
            v8 = v94;
            if (!v58)
            {
              goto LABEL_68;
            }

            goto LABEL_55;
          }
        }

        v14 = [MCPayload badFieldTypeErrorWithField:@"Password"];

LABEL_75:
LABEL_77:

        v8 = v94;
        v10 = v96;
        v13 = &_MCLogObjects;
LABEL_78:
        a5 = v91;
        goto LABEL_79;
      }
    }
  }

  v90 = a5;
  v92 = v8;
  v15 = [MEMORY[0x1E695DF70] array];
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  v16 = v97;
  v17 = [v16 countByEnumeratingWithState:&v114 objects:v128 count:16];
  if (!v17)
  {
    goto LABEL_18;
  }

  v18 = v17;
  v19 = *v115;
  v20 = @"DeviceID";
  v21 = @"DeviceName";
  do
  {
    v22 = 0;
    v98 = v18;
    do
    {
      if (*v115 != v19)
      {
        objc_enumerationMutation(v16);
      }

      v23 = *(*(&v114 + 1) + 8 * v22);
      v24 = [v23 objectForKey:v20];
      v25 = [v23 objectForKey:v21];
      if (v25)
      {
        v26 = objc_alloc_init(MCAirPlayDestination);
        [(MCAirPlayDestination *)v26 setDeviceName:v25];
      }

      else
      {
        if (!v24)
        {
          goto LABEL_16;
        }

        [v24 uppercaseString];
        v27 = v19;
        v28 = v15;
        v29 = v21;
        v30 = v20;
        v32 = v31 = v16;

        v26 = objc_alloc_init(MCAirPlayDestination);
        [(MCAirPlayDestination *)v26 setDeviceID:v32];
        v24 = v32;
        v16 = v31;
        v20 = v30;
        v21 = v29;
        v15 = v28;
        v19 = v27;
        v18 = v98;
      }

      [v15 addObject:v26];

LABEL_16:
      ++v22;
    }

    while (v18 != v22);
    v18 = [v16 countByEnumeratingWithState:&v114 objects:v128 count:16];
  }

  while (v18);
LABEL_18:

  v10 = v96;
  [(MCAirPlayPayload *)v96 setAllowListDestinations:v15];

  v113 = 0;
  v8 = v92;
  v33 = [MCProfile removeOptionalObjectInDictionary:v92 key:@"Passwords" type:objc_opt_class() errorDomain:@"MCPayloadErrorDomain" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v113];
  v14 = v113;
  if (v14)
  {
    v13 = &_MCLogObjects;
    a5 = v90;
    goto LABEL_80;
  }

  v37 = [MEMORY[0x1E695DF70] array];
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v33 = v33;
  v51 = [v33 countByEnumeratingWithState:&v109 objects:v127 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v110;
    do
    {
      for (j = 0; j != v52; ++j)
      {
        if (*v110 != v53)
        {
          objc_enumerationMutation(v33);
        }

        v55 = [*(*(&v109 + 1) + 8 * j) objectForKey:@"DeviceName"];
        if (v55)
        {
          v56 = objc_alloc_init(MCAirPlayDestination);
          [(MCAirPlayDestination *)v56 setDeviceName:v55];
          [v37 addObject:v56];
        }
      }

      v52 = [v33 countByEnumeratingWithState:&v109 objects:v127 count:16];
    }

    while (v52);
  }

  v10 = v96;
  [(MCAirPlayPayload *)v96 setDestinationsWithPasswords:v37];
  a5 = v90;
  v8 = v92;
  v13 = &_MCLogObjects;
  v14 = 0;
LABEL_79:

LABEL_80:
  if (v14)
  {
    v9 = v95;
    v11 = v97;
LABEL_82:
    v75 = [(MCPayload *)v10 malformedPayloadErrorWithError:v14];
    v76 = v75;
    if (a5)
    {
      v77 = v75;
      *a5 = v76;
    }

    v78 = *v13;
    if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      v79 = v78;
      v80 = objc_opt_class();
      v81 = v80;
      [v76 MCVerboseDescription];
      v82 = v14;
      v84 = v83 = v11;
      *buf = 138543618;
      v122 = v80;
      v123 = 2114;
      v124 = v84;
      _os_log_impl(&dword_1A795B000, v79, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse payload: %{public}@", buf, 0x16u);

      v11 = v83;
      v14 = v82;

      v13 = &_MCLogObjects;
    }

    v10 = 0;
  }

  else
  {
    v9 = v95;
    v11 = v97;
  }

  if ([v8 count])
  {
    v85 = *v13;
    if (os_log_type_enabled(*v13, OS_LOG_TYPE_INFO))
    {
      v86 = v85;
      v87 = [(MCPayload *)v10 friendlyName];
      *buf = 138543618;
      v122 = v87;
      v123 = 2114;
      v124 = v8;
      _os_log_impl(&dword_1A795B000, v86, OS_LOG_TYPE_INFO, "Payload “%{public}@” contains ignored fields. They are: %{public}@", buf, 0x16u);
    }
  }

LABEL_91:
  v88 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)stubDictionary
{
  v48 = *MEMORY[0x1E69E9840];
  v45.receiver = self;
  v45.super_class = MCAirPlayPayload;
  v3 = [(MCPayload *)&v45 stubDictionary];
  v4 = [(MCAirPlayPayload *)self allowListDestinations];

  if (v4)
  {
    v36 = v3;
    v5 = MEMORY[0x1E695DF70];
    v6 = [(MCAirPlayPayload *)self allowListDestinations];
    v7 = [v5 arrayWithCapacity:{objc_msgSend(v6, "count")}];

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v8 = [(MCAirPlayPayload *)self allowListDestinations];
    v9 = [v8 countByEnumeratingWithState:&v41 objects:v47 count:16];
    if (!v9)
    {
      goto LABEL_14;
    }

    v10 = v9;
    v11 = *v42;
    while (1)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v42 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v41 + 1) + 8 * i);
        v14 = [v13 deviceName];

        if (v14)
        {
          v15 = [MEMORY[0x1E695DF90] dictionary];
          v16 = [v13 deviceName];
          v17 = v15;
          v18 = v16;
          v19 = @"DeviceName";
        }

        else
        {
          v20 = [v13 deviceID];

          if (!v20)
          {
            continue;
          }

          v15 = [MEMORY[0x1E695DF90] dictionary];
          v16 = [v13 deviceID];
          v17 = v15;
          v18 = v16;
          v19 = @"DeviceID";
        }

        [v17 setObject:v18 forKey:v19];

        [v7 addObject:v15];
      }

      v10 = [v8 countByEnumeratingWithState:&v41 objects:v47 count:16];
      if (!v10)
      {
LABEL_14:

        v3 = v36;
        [v36 setObject:v7 forKey:@"Whitelist"];

        break;
      }
    }
  }

  v21 = [(MCAirPlayPayload *)self destinationsWithPasswords];

  if (v21)
  {
    v22 = MEMORY[0x1E695DF70];
    v23 = [(MCAirPlayPayload *)self destinationsWithPasswords];
    v24 = [v22 arrayWithCapacity:{objc_msgSend(v23, "count")}];

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v25 = [(MCAirPlayPayload *)self destinationsWithPasswords];
    v26 = [v25 countByEnumeratingWithState:&v37 objects:v46 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v38;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v38 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v37 + 1) + 8 * j);
          v31 = [v30 deviceName];

          if (v31)
          {
            v32 = [MEMORY[0x1E695DF90] dictionary];
            v33 = [v30 deviceName];
            [v32 setObject:v33 forKey:@"DeviceName"];

            [v24 addObject:v32];
          }
        }

        v27 = [v25 countByEnumeratingWithState:&v37 objects:v46 count:16];
      }

      while (v27);
    }

    [v3 setObject:v24 forKey:@"Passwords"];
  }

  v34 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)namesOrIdsForAllowedDestinations
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E695DF70] array];
  [v3 setObject:v4 forKeyedSubscript:@"DeviceNames"];

  v5 = [MEMORY[0x1E695DF70] array];
  [v3 setObject:v5 forKeyedSubscript:@"DeviceIDs"];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [(MCAirPlayPayload *)self allowListDestinations];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v11 deviceName];

        if (v12)
        {
          v13 = [v3 objectForKeyedSubscript:@"DeviceNames"];
          [v11 deviceName];
        }

        else
        {
          v13 = [v3 objectForKeyedSubscript:@"DeviceIDs"];
          [v11 deviceID];
        }
        v14 = ;
        [v13 addObject:v14];
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v15 = *MEMORY[0x1E69E9840];

  return v3;
}

- (NSArray)titlesAndDescriptions
{
  v39[2] = *MEMORY[0x1E69E9840];
  titlesAndDescriptions = self->_titlesAndDescriptions;
  if (!titlesAndDescriptions)
  {
    v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
    v5 = [(MCAirPlayPayload *)self allowListDestinations];
    v6 = [v5 count];

    if (v6)
    {
      v38[0] = @"t";
      v7 = MCLocalizedString(@"AIRPLAY_ALLOW_LIST_TITLE_COLON");
      v38[1] = @"d";
      v39[0] = v7;
      v8 = [(MCAirPlayPayload *)self allowListDestinations];
      v9 = [v8 count];
      v17 = MCLocalizedFormat(@"AIRPLAY_DESTINATION_COUNT", v10, v11, v12, v13, v14, v15, v16, v9);
      v39[1] = v17;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:2];
      [(NSArray *)v4 addObject:v18];
    }

    v19 = [(MCAirPlayPayload *)self destinationsWithPasswords];
    v20 = [v19 count];

    if (v20)
    {
      v36[0] = @"t";
      v21 = MCLocalizedString(@"AIRPLAY_PASSWORD_TITLE_COLON");
      v36[1] = @"d";
      v37[0] = v21;
      v22 = [(MCAirPlayPayload *)self destinationsWithPasswords];
      v23 = [v22 count];
      v31 = MCLocalizedFormat(@"AIRPLAY_DESTINATION_COUNT", v24, v25, v26, v27, v28, v29, v30, v23);
      v37[1] = v31;
      v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:2];
      [(NSArray *)v4 addObject:v32];
    }

    v33 = self->_titlesAndDescriptions;
    self->_titlesAndDescriptions = v4;

    titlesAndDescriptions = self->_titlesAndDescriptions;
  }

  v34 = *MEMORY[0x1E69E9840];

  return titlesAndDescriptions;
}

- (id)subtitle1Label
{
  v3 = [(MCAirPlayPayload *)self titlesAndDescriptions];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(MCAirPlayPayload *)self titlesAndDescriptions];
    v6 = [v5 objectAtIndex:0];
    v7 = [v6 objectForKey:@"t"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)subtitle1Description
{
  v3 = [(MCAirPlayPayload *)self titlesAndDescriptions];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(MCAirPlayPayload *)self titlesAndDescriptions];
    v6 = [v5 objectAtIndex:0];
    v7 = [v6 objectForKey:@"d"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)subtitle2Label
{
  v3 = [(MCAirPlayPayload *)self titlesAndDescriptions];
  v4 = [v3 count];

  if (v4 < 2)
  {
    v7 = 0;
  }

  else
  {
    v5 = [(MCAirPlayPayload *)self titlesAndDescriptions];
    v6 = [v5 objectAtIndex:1];
    v7 = [v6 objectForKey:@"t"];
  }

  return v7;
}

- (id)subtitle2Description
{
  v3 = [(MCAirPlayPayload *)self titlesAndDescriptions];
  v4 = [v3 count];

  if (v4 < 2)
  {
    v7 = 0;
  }

  else
  {
    v5 = [(MCAirPlayPayload *)self titlesAndDescriptions];
    v6 = [v5 objectAtIndex:1];
    v7 = [v6 objectForKey:@"d"];
  }

  return v7;
}

- (id)payloadDescriptionKeyValueSections
{
  v52 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = [(MCAirPlayPayload *)self allowListDestinations];
  v5 = [v4 count];

  v6 = 0x1E77CF000;
  if (v5)
  {
    v7 = MEMORY[0x1E695DF70];
    v8 = [(MCAirPlayPayload *)self allowListDestinations];
    v9 = [v7 arrayWithCapacity:{objc_msgSend(v8, "count")}];

    v10 = MEMORY[0x1E695DF70];
    v11 = [(MCAirPlayPayload *)self allowListDestinations];
    v12 = [v10 arrayWithCapacity:{objc_msgSend(v11, "count")}];

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v13 = [(MCAirPlayPayload *)self allowListDestinations];
    v14 = [v13 countByEnumeratingWithState:&v46 objects:v51 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v47;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v47 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v46 + 1) + 8 * i);
          v19 = [v18 deviceName];

          if (v19)
          {
            v20 = [v18 deviceName];
            v21 = v9;
          }

          else
          {
            v20 = [v18 deviceID];
            v21 = v12;
          }

          [v21 addObject:v20];
        }

        v15 = [v13 countByEnumeratingWithState:&v46 objects:v51 count:16];
      }

      while (v15);
    }

    v6 = 0x1E77CF000uLL;
    if ([v9 count])
    {
      v22 = MCLocalizedString(@"ALLOWED_DEVICE_NAMES");
      v23 = [MCKeyValueSection sectionWithLocalizedArray:v9 title:v22 footer:0];

      [v3 addObject:v23];
    }

    if ([v12 count])
    {
      v24 = MCLocalizedString(@"ALLOWED_DEVICE_IDS");
      v25 = [MCKeyValueSection sectionWithLocalizedArray:v12 title:v24 footer:0];

      [v3 addObject:v25];
    }
  }

  v26 = [(MCAirPlayPayload *)self destinationsWithPasswords];
  v27 = [v26 count];

  if (v27)
  {
    v28 = MEMORY[0x1E695DF70];
    v29 = [(MCAirPlayPayload *)self destinationsWithPasswords];
    v30 = [v28 arrayWithCapacity:{objc_msgSend(v29, "count")}];

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v31 = [(MCAirPlayPayload *)self destinationsWithPasswords];
    v32 = [v31 countByEnumeratingWithState:&v42 objects:v50 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v43;
      do
      {
        for (j = 0; j != v33; ++j)
        {
          if (*v43 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v36 = [*(*(&v42 + 1) + 8 * j) deviceName];
          [v30 addObject:v36];
        }

        v33 = [v31 countByEnumeratingWithState:&v42 objects:v50 count:16];
      }

      while (v33);
    }

    v37 = *(v6 + 1496);
    v38 = MCLocalizedString(@"DESTINATIONS_WITH_PASSWORD");
    v39 = [v37 sectionWithLocalizedArray:v30 title:v38 footer:0];

    [v3 addObject:v39];
  }

  if (![v3 count])
  {

    v3 = 0;
  }

  v40 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)verboseDescription
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AD60];
  v32.receiver = self;
  v32.super_class = MCAirPlayPayload;
  v4 = [(MCPayload *)&v32 verboseDescription];
  v5 = [v3 stringWithString:v4];

  v6 = [(MCAirPlayPayload *)self allowListDestinations];
  [v5 appendFormat:@"Allow List   : %d entries\n", objc_msgSend(v6, "count")];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = [(MCAirPlayPayload *)self allowListDestinations];
  v8 = [v7 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v29;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v28 + 1) + 8 * i);
        v13 = [v12 deviceName];

        if (v13)
        {
          v14 = [v12 deviceName];
          [v5 appendFormat:@"             %@\n", v14];
        }

        else
        {
          v14 = [v12 deviceID];
          [v5 appendFormat:@"              %@\n", v14];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v9);
  }

  v15 = [(MCAirPlayPayload *)self destinationsWithPasswords];
  [v5 appendFormat:@"Passwords   : %d entries\n", objc_msgSend(v15, "count")];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v16 = [(MCAirPlayPayload *)self destinationsWithPasswords];
  v17 = [v16 countByEnumeratingWithState:&v24 objects:v33 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v25;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v25 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v24 + 1) + 8 * j) deviceName];
        [v5 appendFormat:@"              %@\n", v21];
      }

      v18 = [v16 countByEnumeratingWithState:&v24 objects:v33 count:16];
    }

    while (v18);
  }

  v22 = *MEMORY[0x1E69E9840];

  return v5;
}

@end