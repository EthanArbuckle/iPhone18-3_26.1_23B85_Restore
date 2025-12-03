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
  v2 = [self accountPropertyForKey:@"MCAccountIsManaged"];
  if ([v2 BOOLValue])
  {
    mCIsManaged = 1;
  }

  else
  {
    parentAccount = [self parentAccount];
    mCIsManaged = [parentAccount MCIsManaged];
  }

  return mCIsManaged;
}

- (id)mcAccountIdentifier
{
  parentAccount = [self parentAccount];

  if (parentAccount)
  {
    parentAccount2 = [self parentAccount];
    mcAccountIdentifier = [parentAccount2 mcAccountIdentifier];
  }

  else
  {
    mcAccountIdentifier = [self accountPropertyForKey:@"MCAccountIdentifer"];
  }

  return mcAccountIdentifier;
}

- (void)setMcAccountIdentifier:()ManagedConfiguration
{
  v6 = a3;
  parentAccount = [self parentAccount];

  if (parentAccount)
  {
    parentAccount2 = [self parentAccount];
    [parentAccount2 setMcAccountIdentifier:v6];
  }

  else
  {
    [self setAccountProperty:v6 forKey:@"MCAccountIdentifer"];
  }
}

- (id)mcConfigurationProfileIdentifier
{
  parentAccount = [self parentAccount];

  if (parentAccount)
  {
    parentAccount2 = [self parentAccount];
    mcConfigurationProfileIdentifier = [parentAccount2 mcConfigurationProfileIdentifier];
  }

  else
  {
    mcConfigurationProfileIdentifier = [self accountPropertyForKey:*MEMORY[0x1E6959728]];
  }

  return mcConfigurationProfileIdentifier;
}

- (void)setMcConfigurationProfileIdentifier:()ManagedConfiguration
{
  v6 = a3;
  parentAccount = [self parentAccount];

  if (parentAccount)
  {
    parentAccount2 = [self parentAccount];
    [parentAccount2 setMcConfigurationProfileIdentifier:v6];
  }

  else
  {
    [self setAccountProperty:v6 forKey:*MEMORY[0x1E6959728]];
  }
}

- (id)mcProfileUUID
{
  parentAccount = [self parentAccount];

  if (parentAccount)
  {
    parentAccount2 = [self parentAccount];
    mcProfileUUID = [parentAccount2 mcProfileUUID];
  }

  else
  {
    mcProfileUUID = [self accountPropertyForKey:@"mcProfileUUID"];
  }

  return mcProfileUUID;
}

- (void)setMcProfileUUID:()ManagedConfiguration
{
  v6 = a3;
  parentAccount = [self parentAccount];

  if (parentAccount)
  {
    parentAccount2 = [self parentAccount];
    [parentAccount2 setMcProfileUUID:v6];
  }

  else
  {
    [self setAccountProperty:v6 forKey:@"mcProfileUUID"];
  }
}

- (id)mcPayloadUUID
{
  parentAccount = [self parentAccount];

  if (parentAccount)
  {
    parentAccount2 = [self parentAccount];
    mcPayloadUUID = [parentAccount2 mcPayloadUUID];
  }

  else
  {
    mcPayloadUUID = [self accountPropertyForKey:@"mcPayloadUUID"];
  }

  return mcPayloadUUID;
}

- (void)setMcPayloadUUID:()ManagedConfiguration
{
  v6 = a3;
  parentAccount = [self parentAccount];

  if (parentAccount)
  {
    parentAccount2 = [self parentAccount];
    [parentAccount2 setMcPayloadUUID:v6];
  }

  else
  {
    [self setAccountProperty:v6 forKey:@"mcPayloadUUID"];
  }
}

- (id)mcEASAccountEnableNotes
{
  parentAccount = [self parentAccount];

  if (parentAccount)
  {
    parentAccount2 = [self parentAccount];
    mcEASAccountEnableNotes = [parentAccount2 mcEASAccountEnableNotes];
  }

  else
  {
    mcEASAccountEnableNotes = [self accountPropertyForKey:@"mcEnableNotes"];
  }

  return mcEASAccountEnableNotes;
}

- (void)setMcEASAccountEnableNotes:()ManagedConfiguration
{
  v6 = a3;
  parentAccount = [self parentAccount];

  if (parentAccount)
  {
    parentAccount2 = [self parentAccount];
    [parentAccount2 setMcEASAccountEnableNotes:v6];
  }

  else
  {
    [self setAccountProperty:v6 forKey:@"mcEnableNotes"];
  }
}

- (id)mcEnableMailUserOverridable
{
  parentAccount = [self parentAccount];

  if (parentAccount)
  {
    parentAccount2 = [self parentAccount];
    mcEnableMailUserOverridable = [parentAccount2 mcEnableMailUserOverridable];
  }

  else
  {
    mcEnableMailUserOverridable = [self accountPropertyForKey:@"mcEnableMailUserOverridable"];
  }

  return mcEnableMailUserOverridable;
}

- (void)setMcEnableMailUserOverridable:()ManagedConfiguration
{
  v6 = a3;
  parentAccount = [self parentAccount];

  if (parentAccount)
  {
    parentAccount2 = [self parentAccount];
    [parentAccount2 setMcEnableMailUserOverridable:v6];
  }

  else
  {
    [self setAccountProperty:v6 forKey:@"mcEnableMailUserOverridable"];
  }
}

- (id)mcEnableContactsUserOverridable
{
  parentAccount = [self parentAccount];

  if (parentAccount)
  {
    parentAccount2 = [self parentAccount];
    mcEnableContactsUserOverridable = [parentAccount2 mcEnableContactsUserOverridable];
  }

  else
  {
    mcEnableContactsUserOverridable = [self accountPropertyForKey:@"mcEnableContactsUserOverridable"];
  }

  return mcEnableContactsUserOverridable;
}

- (void)setMcEnableContactsUserOverridable:()ManagedConfiguration
{
  v6 = a3;
  parentAccount = [self parentAccount];

  if (parentAccount)
  {
    parentAccount2 = [self parentAccount];
    [parentAccount2 setMcEnableContactsUserOverridable:v6];
  }

  else
  {
    [self setAccountProperty:v6 forKey:@"mcEnableContactsUserOverridable"];
  }
}

- (id)mcEnableCalendarsUserOverridable
{
  parentAccount = [self parentAccount];

  if (parentAccount)
  {
    parentAccount2 = [self parentAccount];
    mcEnableCalendarsUserOverridable = [parentAccount2 mcEnableCalendarsUserOverridable];
  }

  else
  {
    mcEnableCalendarsUserOverridable = [self accountPropertyForKey:@"mcEnableCalendarsUserOverridable"];
  }

  return mcEnableCalendarsUserOverridable;
}

- (void)setMcEnableCalendarsUserOverridable:()ManagedConfiguration
{
  v6 = a3;
  parentAccount = [self parentAccount];

  if (parentAccount)
  {
    parentAccount2 = [self parentAccount];
    [parentAccount2 setMcEnableCalendarsUserOverridable:v6];
  }

  else
  {
    [self setAccountProperty:v6 forKey:@"mcEnableCalendarsUserOverridable"];
  }
}

- (id)mcEnableRemindersUserOverridable
{
  parentAccount = [self parentAccount];

  if (parentAccount)
  {
    parentAccount2 = [self parentAccount];
    mcEnableRemindersUserOverridable = [parentAccount2 mcEnableRemindersUserOverridable];
  }

  else
  {
    mcEnableRemindersUserOverridable = [self accountPropertyForKey:@"mcEnableRemindersUserOverridable"];
  }

  return mcEnableRemindersUserOverridable;
}

- (void)setMcEnableRemindersUserOverridable:()ManagedConfiguration
{
  v6 = a3;
  parentAccount = [self parentAccount];

  if (parentAccount)
  {
    parentAccount2 = [self parentAccount];
    [parentAccount2 setMcEnableRemindersUserOverridable:v6];
  }

  else
  {
    [self setAccountProperty:v6 forKey:@"mcEnableRemindersUserOverridable"];
  }
}

- (id)mcEnableNotesUserOverridable
{
  parentAccount = [self parentAccount];

  if (parentAccount)
  {
    parentAccount2 = [self parentAccount];
    mcEnableNotesUserOverridable = [parentAccount2 mcEnableNotesUserOverridable];
  }

  else
  {
    mcEnableNotesUserOverridable = [self accountPropertyForKey:@"mcEnableNotesUserOverridable"];
  }

  return mcEnableNotesUserOverridable;
}

- (void)setMcEnableNotesUserOverridable:()ManagedConfiguration
{
  v6 = a3;
  parentAccount = [self parentAccount];

  if (parentAccount)
  {
    parentAccount2 = [self parentAccount];
    [parentAccount2 setMcEnableNotesUserOverridable:v6];
  }

  else
  {
    [self setAccountProperty:v6 forKey:@"mcEnableNotesUserOverridable"];
  }
}

- (id)mcBackingProfile
{
  v20 = *MEMORY[0x1E69E9840];
  mcProfileUUID = [self mcProfileUUID];
  if (mcProfileUUID)
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
          uUID = [v10 UUID];
          v12 = [uUID isEqualToString:mcProfileUUID];

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
  mcProfileUUID = [self mcProfileUUID];
  mcPayloadUUID = [self mcPayloadUUID];
  v4 = mcPayloadUUID;
  v5 = 0;
  if (mcProfileUUID && mcPayloadUUID)
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
      v30 = mcProfileUUID;
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
          uUID = [v13 UUID];
          v15 = [uUID isEqualToString:mcProfileUUID];

          v8 = v10;
          if (v15)
          {
            context = v12;
            payloads = [v13 payloads];
            v33 = 0u;
            v34 = 0u;
            v35 = 0u;
            v36 = 0u;
            v17 = payloads;
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
                  uUID2 = [v22 UUID];
                  v24 = [uUID2 isEqualToString:v4];

                  if (v24)
                  {
                    v5 = v22;

                    objc_autoreleasePoolPop(context);
                    v6 = v29;
                    mcProfileUUID = v30;
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
            mcProfileUUID = v30;
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