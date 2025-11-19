@interface ACAccount(ManagedConfiguration)
- (id)mcAccountIdentifier;
- (id)mcBackingPayload;
- (id)mcBackingProfile;
- (id)mcConfigurationProfileIdentifier;
- (id)mcEASAccountEnableNotes;
- (id)mcEnableCalendarsUserOverridable;
- (id)mcEnableContactsUserOverridable;
- (id)mcEnableMailUserOverridable;
- (id)mcEnableNotesUserOverridable;
- (id)mcEnableRemindersUserOverridable;
- (id)mcPayloadUUID;
- (id)mcProfileUUID;
- (uint64_t)MCIsManaged;
- (void)setMcAccountIdentifier:()ManagedConfiguration;
- (void)setMcConfigurationProfileIdentifier:()ManagedConfiguration;
- (void)setMcEASAccountEnableNotes:()ManagedConfiguration;
- (void)setMcEnableCalendarsUserOverridable:()ManagedConfiguration;
- (void)setMcEnableContactsUserOverridable:()ManagedConfiguration;
- (void)setMcEnableMailUserOverridable:()ManagedConfiguration;
- (void)setMcEnableNotesUserOverridable:()ManagedConfiguration;
- (void)setMcEnableRemindersUserOverridable:()ManagedConfiguration;
- (void)setMcPayloadUUID:()ManagedConfiguration;
- (void)setMcProfileUUID:()ManagedConfiguration;
@end

@implementation ACAccount(ManagedConfiguration)

- (uint64_t)MCIsManaged
{
  v2 = [a1 accountPropertyForKey:@"MCAccountIsManaged"];
  if ([v2 BOOLValue])
  {
    v3 = 1;
  }

  else
  {
    v4 = [a1 parentAccount];
    v3 = [v4 MCIsManaged];
  }

  return v3;
}

- (id)mcAccountIdentifier
{
  v2 = [a1 parentAccount];

  if (v2)
  {
    v3 = [a1 parentAccount];
    v4 = [v3 mcAccountIdentifier];
  }

  else
  {
    v4 = [a1 accountPropertyForKey:@"MCAccountIdentifer"];
  }

  return v4;
}

- (void)setMcAccountIdentifier:()ManagedConfiguration
{
  v6 = a3;
  v4 = [a1 parentAccount];

  if (v4)
  {
    v5 = [a1 parentAccount];
    [v5 setMcAccountIdentifier:v6];
  }

  else
  {
    [a1 setAccountProperty:v6 forKey:@"MCAccountIdentifer"];
  }
}

- (id)mcConfigurationProfileIdentifier
{
  v2 = [a1 parentAccount];

  if (v2)
  {
    v3 = [a1 parentAccount];
    v4 = [v3 mcConfigurationProfileIdentifier];
  }

  else
  {
    v4 = [a1 accountPropertyForKey:*MEMORY[0x1E6959728]];
  }

  return v4;
}

- (void)setMcConfigurationProfileIdentifier:()ManagedConfiguration
{
  v6 = a3;
  v4 = [a1 parentAccount];

  if (v4)
  {
    v5 = [a1 parentAccount];
    [v5 setMcConfigurationProfileIdentifier:v6];
  }

  else
  {
    [a1 setAccountProperty:v6 forKey:*MEMORY[0x1E6959728]];
  }
}

- (id)mcProfileUUID
{
  v2 = [a1 parentAccount];

  if (v2)
  {
    v3 = [a1 parentAccount];
    v4 = [v3 mcProfileUUID];
  }

  else
  {
    v4 = [a1 accountPropertyForKey:@"mcProfileUUID"];
  }

  return v4;
}

- (void)setMcProfileUUID:()ManagedConfiguration
{
  v6 = a3;
  v4 = [a1 parentAccount];

  if (v4)
  {
    v5 = [a1 parentAccount];
    [v5 setMcProfileUUID:v6];
  }

  else
  {
    [a1 setAccountProperty:v6 forKey:@"mcProfileUUID"];
  }
}

- (id)mcPayloadUUID
{
  v2 = [a1 parentAccount];

  if (v2)
  {
    v3 = [a1 parentAccount];
    v4 = [v3 mcPayloadUUID];
  }

  else
  {
    v4 = [a1 accountPropertyForKey:@"mcPayloadUUID"];
  }

  return v4;
}

- (void)setMcPayloadUUID:()ManagedConfiguration
{
  v6 = a3;
  v4 = [a1 parentAccount];

  if (v4)
  {
    v5 = [a1 parentAccount];
    [v5 setMcPayloadUUID:v6];
  }

  else
  {
    [a1 setAccountProperty:v6 forKey:@"mcPayloadUUID"];
  }
}

- (id)mcEASAccountEnableNotes
{
  v2 = [a1 parentAccount];

  if (v2)
  {
    v3 = [a1 parentAccount];
    v4 = [v3 mcEASAccountEnableNotes];
  }

  else
  {
    v4 = [a1 accountPropertyForKey:@"mcEnableNotes"];
  }

  return v4;
}

- (void)setMcEASAccountEnableNotes:()ManagedConfiguration
{
  v6 = a3;
  v4 = [a1 parentAccount];

  if (v4)
  {
    v5 = [a1 parentAccount];
    [v5 setMcEASAccountEnableNotes:v6];
  }

  else
  {
    [a1 setAccountProperty:v6 forKey:@"mcEnableNotes"];
  }
}

- (id)mcEnableMailUserOverridable
{
  v2 = [a1 parentAccount];

  if (v2)
  {
    v3 = [a1 parentAccount];
    v4 = [v3 mcEnableMailUserOverridable];
  }

  else
  {
    v4 = [a1 accountPropertyForKey:@"mcEnableMailUserOverridable"];
  }

  return v4;
}

- (void)setMcEnableMailUserOverridable:()ManagedConfiguration
{
  v6 = a3;
  v4 = [a1 parentAccount];

  if (v4)
  {
    v5 = [a1 parentAccount];
    [v5 setMcEnableMailUserOverridable:v6];
  }

  else
  {
    [a1 setAccountProperty:v6 forKey:@"mcEnableMailUserOverridable"];
  }
}

- (id)mcEnableContactsUserOverridable
{
  v2 = [a1 parentAccount];

  if (v2)
  {
    v3 = [a1 parentAccount];
    v4 = [v3 mcEnableContactsUserOverridable];
  }

  else
  {
    v4 = [a1 accountPropertyForKey:@"mcEnableContactsUserOverridable"];
  }

  return v4;
}

- (void)setMcEnableContactsUserOverridable:()ManagedConfiguration
{
  v6 = a3;
  v4 = [a1 parentAccount];

  if (v4)
  {
    v5 = [a1 parentAccount];
    [v5 setMcEnableContactsUserOverridable:v6];
  }

  else
  {
    [a1 setAccountProperty:v6 forKey:@"mcEnableContactsUserOverridable"];
  }
}

- (id)mcEnableCalendarsUserOverridable
{
  v2 = [a1 parentAccount];

  if (v2)
  {
    v3 = [a1 parentAccount];
    v4 = [v3 mcEnableCalendarsUserOverridable];
  }

  else
  {
    v4 = [a1 accountPropertyForKey:@"mcEnableCalendarsUserOverridable"];
  }

  return v4;
}

- (void)setMcEnableCalendarsUserOverridable:()ManagedConfiguration
{
  v6 = a3;
  v4 = [a1 parentAccount];

  if (v4)
  {
    v5 = [a1 parentAccount];
    [v5 setMcEnableCalendarsUserOverridable:v6];
  }

  else
  {
    [a1 setAccountProperty:v6 forKey:@"mcEnableCalendarsUserOverridable"];
  }
}

- (id)mcEnableRemindersUserOverridable
{
  v2 = [a1 parentAccount];

  if (v2)
  {
    v3 = [a1 parentAccount];
    v4 = [v3 mcEnableRemindersUserOverridable];
  }

  else
  {
    v4 = [a1 accountPropertyForKey:@"mcEnableRemindersUserOverridable"];
  }

  return v4;
}

- (void)setMcEnableRemindersUserOverridable:()ManagedConfiguration
{
  v6 = a3;
  v4 = [a1 parentAccount];

  if (v4)
  {
    v5 = [a1 parentAccount];
    [v5 setMcEnableRemindersUserOverridable:v6];
  }

  else
  {
    [a1 setAccountProperty:v6 forKey:@"mcEnableRemindersUserOverridable"];
  }
}

- (id)mcEnableNotesUserOverridable
{
  v2 = [a1 parentAccount];

  if (v2)
  {
    v3 = [a1 parentAccount];
    v4 = [v3 mcEnableNotesUserOverridable];
  }

  else
  {
    v4 = [a1 accountPropertyForKey:@"mcEnableNotesUserOverridable"];
  }

  return v4;
}

- (void)setMcEnableNotesUserOverridable:()ManagedConfiguration
{
  v6 = a3;
  v4 = [a1 parentAccount];

  if (v4)
  {
    v5 = [a1 parentAccount];
    [v5 setMcEnableNotesUserOverridable:v6];
  }

  else
  {
    [a1 setAccountProperty:v6 forKey:@"mcEnableNotesUserOverridable"];
  }
}

- (id)mcBackingProfile
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = [a1 mcProfileUUID];
  if (v1)
  {
    v2 = +[MCProfileConnection sharedConnection];
    [v2 installedProfileIdentifiersWithFilterFlags:3];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v3 = v18 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v16;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v16 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v15 + 1) + 8 * i);
          v9 = objc_autoreleasePoolPush();
          v10 = [v2 installedProfileWithIdentifier:{v8, v15}];
          v11 = [v10 UUID];
          v12 = [v11 isEqualToString:v1];

          if (v12)
          {
            objc_autoreleasePoolPop(v9);
            goto LABEL_12;
          }

          objc_autoreleasePoolPop(v9);
        }

        v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    v10 = 0;
LABEL_12:
  }

  else
  {
    v10 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)mcBackingPayload
{
  v43 = *MEMORY[0x1E69E9840];
  v2 = [a1 mcProfileUUID];
  v3 = [a1 mcPayloadUUID];
  v4 = v3;
  v5 = 0;
  if (v2 && v3)
  {
    v6 = +[MCProfileConnection sharedConnection];
    [v6 installedProfileIdentifiersWithFilterFlags:3];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v7 = v40 = 0u;
    v32 = [v7 countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v32)
    {
      v8 = *v38;
      v29 = v6;
      v30 = v2;
      v27 = *v38;
      v28 = v7;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          v10 = v8;
          if (*v38 != v8)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v37 + 1) + 8 * i);
          v12 = objc_autoreleasePoolPush();
          v13 = [v6 installedProfileWithIdentifier:v11];
          v14 = [v13 UUID];
          v15 = [v14 isEqualToString:v2];

          v8 = v10;
          if (v15)
          {
            context = v12;
            v16 = [v13 payloads];
            v33 = 0u;
            v34 = 0u;
            v35 = 0u;
            v36 = 0u;
            v17 = v16;
            v18 = [v17 countByEnumeratingWithState:&v33 objects:v41 count:16];
            if (v18)
            {
              v19 = v18;
              v20 = *v34;
              while (2)
              {
                for (j = 0; j != v19; ++j)
                {
                  if (*v34 != v20)
                  {
                    objc_enumerationMutation(v17);
                  }

                  v22 = *(*(&v33 + 1) + 8 * j);
                  v23 = [v22 UUID];
                  v24 = [v23 isEqualToString:v4];

                  if (v24)
                  {
                    v5 = v22;

                    objc_autoreleasePoolPop(context);
                    v6 = v29;
                    v2 = v30;
                    v7 = v28;
                    goto LABEL_23;
                  }
                }

                v19 = [v17 countByEnumeratingWithState:&v33 objects:v41 count:16];
                if (v19)
                {
                  continue;
                }

                break;
              }
            }

            v6 = v29;
            v2 = v30;
            v8 = v27;
            v7 = v28;
            v12 = context;
          }

          objc_autoreleasePoolPop(v12);
        }

        v5 = 0;
        v32 = [v7 countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v32);
    }

    else
    {
      v5 = 0;
    }

LABEL_23:
  }

  v25 = *MEMORY[0x1E69E9840];

  return v5;
}

@end