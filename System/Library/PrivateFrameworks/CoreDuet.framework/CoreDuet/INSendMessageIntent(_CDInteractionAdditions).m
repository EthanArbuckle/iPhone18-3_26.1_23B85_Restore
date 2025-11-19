@interface INSendMessageIntent(_CDInteractionAdditions)
- (id)cd_derivedIntentIdentifier;
- (id)cd_groupName;
@end

@implementation INSendMessageIntent(_CDInteractionAdditions)

- (id)cd_groupName
{
  v1 = [a1 speakableGroupName];
  v2 = [v1 spokenPhrase];

  return v2;
}

- (id)cd_derivedIntentIdentifier
{
  v53 = *MEMORY[0x1E69E9840];
  v2 = [a1 notificationThreadIdentifier];
  if (!v2 || (v3 = v2, [a1 notificationThreadIdentifier], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "length"), v4, v3, !v5))
  {
    v8 = [a1 conversationIdentifier];
    if (v8)
    {
      v9 = v8;
      v10 = [a1 conversationIdentifier];
      v11 = [v10 length];

      if (v11)
      {
        v6 = NSStringFromSelector(sel_conversationIdentifier);
        v7 = [a1 conversationIdentifier];
        goto LABEL_7;
      }
    }

    v14 = [a1 speakableGroupName];
    v15 = [v14 spokenPhrase];
    if (v15)
    {
      v16 = v15;
      v17 = [a1 speakableGroupName];
      v18 = [v17 spokenPhrase];
      v19 = [v18 length];

      if (v19)
      {
        v6 = NSStringFromSelector(sel_speakableGroupName);
        v12 = [a1 speakableGroupName];
        v20 = [v12 spokenPhrase];
        v13 = _CDNormalizeString(v20);
LABEL_40:

        goto LABEL_41;
      }
    }

    else
    {
    }

    v6 = [a1 recipients];
    if (v6)
    {
      v21 = [a1 recipients];
      v13 = [v21 count];

      if (v13)
      {
        v6 = NSStringFromSelector(sel_recipients);
        v12 = [a1 recipients];
        v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v42 = [&unk_1F05EF710 countByEnumeratingWithState:&v47 objects:v52 count:16];
        if (v42)
        {
          v40 = v6;
          v41 = *v48;
LABEL_16:
          v22 = 0;
          while (1)
          {
            if (*v48 != v41)
            {
              objc_enumerationMutation(&unk_1F05EF710);
            }

            v23 = *(*(&v47 + 1) + 8 * v22);
            v43 = 0u;
            v44 = 0u;
            v45 = 0u;
            v46 = 0u;
            v24 = [v12 valueForKey:v23];
            v25 = [v24 countByEnumeratingWithState:&v43 objects:v51 count:16];
            if (v25)
            {
              v26 = v25;
              v27 = *v44;
LABEL_21:
              v28 = 0;
              while (1)
              {
                if (*v44 != v27)
                {
                  objc_enumerationMutation(v24);
                }

                v29 = *(*(&v43 + 1) + 8 * v28);
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0 || ![v29 length])
                {
                  break;
                }

                v30 = _CDNormalizeString(v29);
                [v20 addObject:v30];

                if (v26 == ++v28)
                {
                  v26 = [v24 countByEnumeratingWithState:&v43 objects:v51 count:16];
                  if (v26)
                  {
                    goto LABEL_21;
                  }

                  break;
                }
              }
            }

            v31 = [v20 count];
            if (v31 == [v12 count])
            {
              break;
            }

            [v20 removeAllObjects];
            if (++v22 == v42)
            {
              v42 = [&unk_1F05EF710 countByEnumeratingWithState:&v47 objects:v52 count:16];
              if (v42)
              {
                goto LABEL_16;
              }

              goto LABEL_38;
            }
          }

          v32 = v23;
          if (v32)
          {
            v33 = v32;
            v34 = [v20 sortedArrayUsingSelector:sel_caseInsensitiveCompare_];
            v35 = MEMORY[0x1E696AEC0];
            v36 = [v34 componentsJoinedByString:@"-"];
            v13 = [v35 stringWithFormat:@"%@:%@", v33, v36];

            goto LABEL_39;
          }

LABEL_38:
          v13 = 0;
LABEL_39:
          v6 = v40;
        }

        else
        {
          v13 = 0;
        }

        goto LABEL_40;
      }

      v6 = 0;
    }

    else
    {
      v13 = 0;
    }

    v37 = 0;
    goto LABEL_44;
  }

  v6 = NSStringFromSelector(sel_notificationThreadIdentifier);
  v7 = [a1 notificationThreadIdentifier];
LABEL_7:
  v12 = v7;
  v13 = _CDNormalizeString(v7);
LABEL_41:

  v37 = 0;
  if (v13 && v6)
  {
    v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@(%@)", v6, v13];
  }

LABEL_44:

  v38 = *MEMORY[0x1E69E9840];

  return v37;
}

@end