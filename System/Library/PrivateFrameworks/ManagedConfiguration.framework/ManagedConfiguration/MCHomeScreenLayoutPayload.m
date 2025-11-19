@interface MCHomeScreenLayoutPayload
+ (id)typeStrings;
- (MCHomeScreenLayoutPayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5;
- (id)parseIconsArray:(id)a3 allowFolders:(BOOL)a4 outError:(id *)a5;
- (id)payloadDescriptionKeyValueSections;
- (id)stubDictionary;
@end

@implementation MCHomeScreenLayoutPayload

+ (id)typeStrings
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"com.apple.homescreenlayout";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (MCHomeScreenLayoutPayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5
{
  v70 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v63.receiver = self;
  v63.super_class = MCHomeScreenLayoutPayload;
  v10 = [(MCPayload *)&v63 initWithDictionary:v8 profile:v9 outError:a5];
  if (v10)
  {
    if ([v9 isStub])
    {
      v62 = 0;
      v11 = [v8 MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:@"Layout" isRequired:0 outError:&v62];
      v12 = v62;
      layout = v10->_layout;
      v10->_layout = v11;
    }

    else
    {
      layout = objc_opt_new();
      v61 = 0;
      v14 = [v8 MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:@"Dock" isRequired:0 outError:&v61];
      v15 = v61;
      if (v15)
      {
        v12 = v15;
        v16 = 0;
        v17 = 0;
      }

      else
      {
        v60 = 0;
        v17 = [(MCHomeScreenLayoutPayload *)v10 parseIconsArray:v14 allowFolders:1 outError:&v60];
        v18 = v60;
        if (v18)
        {
          v12 = v18;
          v16 = 0;
        }

        else
        {
          [layout addObject:v17];
          v59 = 0;
          v16 = [v8 MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:@"Pages" isRequired:1 outError:&v59];
          v19 = v59;
          if (v19)
          {
            v12 = v19;
          }

          else
          {
            v45 = v17;
            v57 = 0u;
            v58 = 0u;
            v55 = 0u;
            v56 = 0u;
            obj = v16;
            v49 = [(NSArray *)obj countByEnumeratingWithState:&v55 objects:v69 count:16];
            if (v49)
            {
              v47 = layout;
              v48 = *v56;
              v43 = v14;
              v44 = a5;
              while (2)
              {
                for (i = 0; i != v49; ++i)
                {
                  if (*v56 != v48)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v21 = *(*(&v55 + 1) + 8 * i);
                  v51 = 0u;
                  v52 = 0u;
                  v53 = 0u;
                  v54 = 0u;
                  v22 = v21;
                  v23 = [v22 countByEnumeratingWithState:&v51 objects:v68 count:16];
                  if (v23)
                  {
                    v24 = *v52;
                    while (2)
                    {
                      for (j = 0; j != v23; j = j + 1)
                      {
                        if (*v52 != v24)
                        {
                          objc_enumerationMutation(v22);
                        }

                        v26 = *(*(&v51 + 1) + 8 * j);
                        objc_opt_class();
                        if ((objc_opt_isKindOfClass() & 1) == 0)
                        {
                          v23 = [MCPayload badFieldTypeErrorWithField:@"Pages"];
                          goto LABEL_25;
                        }
                      }

                      v23 = [v22 countByEnumeratingWithState:&v51 objects:v68 count:16];
                      if (v23)
                      {
                        continue;
                      }

                      break;
                    }

LABEL_25:
                    layout = v47;
                  }

                  v50 = v23;
                  v27 = [(MCHomeScreenLayoutPayload *)v10 parseIconsArray:v22 allowFolders:1 outError:&v50];
                  v12 = v50;

                  if (v12)
                  {

                    v16 = obj;
                    v29 = obj;
                    v14 = v43;
                    a5 = v44;
                    goto LABEL_31;
                  }

                  [layout addObject:v27];
                }

                v14 = v43;
                a5 = v44;
                v49 = [(NSArray *)obj countByEnumeratingWithState:&v55 objects:v69 count:16];
                if (v49)
                {
                  continue;
                }

                break;
              }
            }

            v16 = obj;

            v28 = [layout copy];
            v12 = 0;
            v29 = v10->_layout;
            v10->_layout = v28;
LABEL_31:

            v17 = v45;
          }
        }
      }
    }

    if (v12)
    {
      v30 = [(MCPayload *)v10 malformedPayloadErrorWithError:v12];
      v31 = v30;
      if (a5)
      {
        v32 = v30;
        *a5 = v31;
      }

      v33 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
      {
        v34 = v33;
        v35 = objc_opt_class();
        v36 = v35;
        v37 = [v31 MCVerboseDescription];
        *buf = 138543618;
        v65 = v35;
        v66 = 2114;
        v67 = v37;
        _os_log_impl(&dword_1A795B000, v34, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse payload: %{public}@", buf, 0x16u);
      }

      v10 = 0;
    }

    if ([v8 count])
    {
      v38 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
      {
        v39 = v38;
        v40 = [(MCPayload *)v10 friendlyName];
        *buf = 138543618;
        v65 = v40;
        v66 = 2114;
        v67 = v8;
        _os_log_impl(&dword_1A795B000, v39, OS_LOG_TYPE_INFO, "Payload “%{public}@” contains ignored fields. They are: %{public}@", buf, 0x16u);
      }
    }
  }

  v41 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)parseIconsArray:(id)a3 allowFolders:(BOOL)a4 outError:(id *)a5
{
  v100 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_opt_new();
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v85 objects:v99 count:16];
  if (!v9)
  {

    goto LABEL_66;
  }

  v10 = v9;
  v58 = a5;
  v11 = 0;
  v65 = *v86;
  v59 = v8;
  v60 = v7;
  while (2)
  {
    v12 = 0;
    v61 = v10;
    do
    {
      if (*v86 != v65)
      {
        objc_enumerationMutation(v8);
      }

      v66 = v12;
      v13 = [*(*(&v85 + 1) + 8 * v12) mutableCopy];
      v84 = v11;
      v14 = [v13 MCValidateAndRemoveNonZeroLengthStringWithKey:@"Type" isRequired:1 outError:&v84];
      v15 = v84;

      v67 = v14;
      if (v15)
      {
        v11 = v15;
        goto LABEL_62;
      }

      if ([v14 isEqualToString:@"Application"])
      {
        v83 = 0;
        v16 = v13;
        v17 = [v13 MCValidateAndRemoveNonZeroLengthStringWithKey:@"BundleID" isRequired:1 outError:&v83];
        v11 = v83;
        if (!v11)
        {
          v97 = @"displayIdentifier";
          v98 = v17;
          v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v98 forKeys:&v97 count:1];
          [v7 addObject:v18];

          v13 = v16;
          goto LABEL_46;
        }

        v13 = v16;
LABEL_62:

        goto LABEL_63;
      }

      v19 = v14;
      if ([v14 isEqualToString:@"Folder"])
      {
        if (!a4)
        {
          v53 = _MCLogObjects;
          if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_1A795B000, v53, OS_LOG_TYPE_ERROR, "Folder isn't allowed at this level. Ignoring.", buf, 2u);
          }

          v11 = 0;
          goto LABEL_62;
        }

        v82 = 0;
        v64 = [v13 MCValidateAndRemoveNonZeroLengthStringWithKey:@"DisplayName" isRequired:1 outError:&v82];
        v20 = v82;
        if (v20)
        {
          v11 = v20;

          goto LABEL_62;
        }

        v21 = objc_opt_class();
        v81 = 0;
        v63 = v13;
        v22 = [v13 MCValidateAndRemoveArrayOfClass:v21 withKey:@"Pages" isRequired:0 outError:&v81];
        v23 = v81;
        if (v23)
        {
          v11 = v23;

          v13 = v63;
          goto LABEL_62;
        }

        v24 = objc_opt_new();
        v77 = 0u;
        v78 = 0u;
        v79 = 0u;
        v80 = 0u;
        obj = v22;
        v25 = [obj countByEnumeratingWithState:&v77 objects:v96 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v78;
          while (2)
          {
            for (i = 0; i != v26; ++i)
            {
              if (*v78 != v27)
              {
                objc_enumerationMutation(obj);
              }

              v29 = *(*(&v77 + 1) + 8 * i);
              v73 = 0u;
              v74 = 0u;
              v75 = 0u;
              v76 = 0u;
              v30 = v29;
              v31 = [v30 countByEnumeratingWithState:&v73 objects:v95 count:16];
              if (v31)
              {
                v32 = *v74;
                while (2)
                {
                  for (j = 0; j != v31; j = j + 1)
                  {
                    if (*v74 != v32)
                    {
                      objc_enumerationMutation(v30);
                    }

                    v34 = *(*(&v73 + 1) + 8 * j);
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      v31 = [MCPayload badFieldTypeErrorWithField:@"Pages"];
                      goto LABEL_29;
                    }
                  }

                  v31 = [v30 countByEnumeratingWithState:&v73 objects:v95 count:16];
                  if (v31)
                  {
                    continue;
                  }

                  break;
                }
              }

LABEL_29:

              v72 = v31;
              v35 = [(MCHomeScreenLayoutPayload *)self parseIconsArray:v30 allowFolders:0 outError:&v72];
              v11 = v72;

              if (v11)
              {

                goto LABEL_40;
              }

              [v24 addObject:v35];
            }

            v26 = [obj countByEnumeratingWithState:&v77 objects:v96 count:16];
            if (v26)
            {
              continue;
            }

            break;
          }

          v11 = 0;
LABEL_40:
          v8 = v59;
          v7 = v60;
        }

        else
        {
          v11 = 0;
        }

        v93[0] = @"displayName";
        v93[1] = @"iconLists";
        v94[0] = v64;
        v94[1] = v24;
        v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v94 forKeys:v93 count:2];
        [v7 addObject:v48];

        v10 = v61;
        v13 = v63;
      }

      else if ([v14 isEqualToString:@"WebClip"])
      {
        v71 = 0;
        [v13 MCValidateAndRemoveNonZeroLengthStringWithKey:@"URL" isRequired:1 outError:&v71];
        v37 = v36 = v13;
        v38 = v71;
        if (v38)
        {
          v11 = v38;

          v13 = v36;
          goto LABEL_62;
        }

        v70 = 0;
        v39 = v36;
        v40 = [v36 MCValidateAndRemoveNonZeroLengthStringWithKey:@"DisplayName" isRequired:0 outError:&v70];
        v41 = v70;
        if (v41)
        {
          v11 = v41;

          v13 = v36;
          goto LABEL_62;
        }

        v42 = [MEMORY[0x1E695DF90] dictionaryWithObject:v37 forKey:@"webClipURL"];
        v43 = v42;
        if (v40)
        {
          [v42 setObject:v40 forKey:@"displayName"];
        }

        [v7 addObject:v43];

        v11 = 0;
        v13 = v39;
      }

      else
      {
        v44 = _MCLogObjects;
        if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
        {
          v45 = v44;
          [(MCPayload *)self friendlyName];
          v47 = v46 = v13;
          *buf = 138543618;
          v90 = v47;
          v91 = 2114;
          v92 = v19;
          _os_log_impl(&dword_1A795B000, v45, OS_LOG_TYPE_ERROR, "Icon dictionary for payload “%{public}@” is unknown type “%{public}@”. Ignoring.", buf, 0x16u);

          v13 = v46;
        }

        v11 = 0;
      }

LABEL_46:
      if ([v13 count])
      {
        v49 = _MCLogObjects;
        if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
        {
          v50 = v49;
          [(MCPayload *)self friendlyName];
          v52 = v51 = v13;
          *buf = 138543618;
          v90 = v52;
          v91 = 2114;
          v92 = v51;
          _os_log_impl(&dword_1A795B000, v50, OS_LOG_TYPE_INFO, "Icon dictionary for payload “%{public}@” contains ignored fields. They are: %{public}@", buf, 0x16u);

          v13 = v51;
        }
      }

      v12 = v66 + 1;
    }

    while (v66 + 1 != v10);
    v10 = [v8 countByEnumeratingWithState:&v85 objects:v99 count:16];
    if (v10)
    {
      continue;
    }

    break;
  }

LABEL_63:

  a5 = v58;
  if (!v11)
  {
LABEL_66:
    v54 = [v7 copy];
    v11 = 0;
    if (!a5)
    {
      goto LABEL_68;
    }

    goto LABEL_67;
  }

  v54 = 0;
  if (v58)
  {
LABEL_67:
    v55 = v11;
    *a5 = v11;
  }

LABEL_68:

  v56 = *MEMORY[0x1E69E9840];

  return v54;
}

- (id)stubDictionary
{
  v6.receiver = self;
  v6.super_class = MCHomeScreenLayoutPayload;
  v3 = [(MCPayload *)&v6 stubDictionary];
  v4 = [(MCHomeScreenLayoutPayload *)self layout];
  [v3 setObject:v4 forKeyedSubscript:@"Layout"];

  return v3;
}

- (id)payloadDescriptionKeyValueSections
{
  v2 = objc_opt_new();
  if (![v2 count])
  {

    v2 = 0;
  }

  return v2;
}

@end