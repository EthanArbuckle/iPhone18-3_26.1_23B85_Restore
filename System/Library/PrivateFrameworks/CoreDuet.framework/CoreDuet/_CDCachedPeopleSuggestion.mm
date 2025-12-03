@interface _CDCachedPeopleSuggestion
- (BOOL)isValidForContext:(id)context;
- (BOOL)isValidForContext:(id)context settings:(id)settings timeoutSeconds:(double)seconds;
- (BOOL)isValidForSettings:(id)settings;
@end

@implementation _CDCachedPeopleSuggestion

- (BOOL)isValidForContext:(id)context
{
  contextCopy = context;
  locationUUID = [contextCopy locationUUID];
  locationUUID2 = [(_CDPeopleSuggesterContext *)self->_context locationUUID];
  if (locationUUID == locationUUID2 || [locationUUID isEqual:locationUUID2])
  {
    title = [contextCopy title];
    title2 = [(_CDPeopleSuggesterContext *)self->_context title];
    if (title == title2 || [title isEqual:title2])
    {
      seedContactIdentifiers = [contextCopy seedContactIdentifiers];
      seedContactIdentifiers2 = [(_CDPeopleSuggesterContext *)self->_context seedContactIdentifiers];
      if (seedContactIdentifiers == seedContactIdentifiers2 || [seedContactIdentifiers isEqual:seedContactIdentifiers2])
      {
        contactPrefix = [contextCopy contactPrefix];
        v11 = [_CDPeopleSuggester restrictedPrefixForPrefix:?];
        contactPrefix2 = [(_CDPeopleSuggesterContext *)self->_context contactPrefix];
        v12 = [_CDPeopleSuggester restrictedPrefixForPrefix:?];
        if (v11 == v12 || [v11 isEqual:v12])
        {
          v30 = seedContactIdentifiers;
          v31 = v12;
          consumerIdentifier = [contextCopy consumerIdentifier];
          consumerIdentifier2 = [(_CDPeopleSuggesterContext *)self->_context consumerIdentifier];
          v29 = consumerIdentifier;
          if (consumerIdentifier == consumerIdentifier2 || [consumerIdentifier isEqual:consumerIdentifier2])
          {
            v27 = seedContactIdentifiers2;
            v28 = consumerIdentifier2;
            nearbyPeople = [contextCopy nearbyPeople];
            nearbyPeople2 = [(_CDPeopleSuggesterContext *)self->_context nearbyPeople];
            if (nearbyPeople == nearbyPeople2 || [nearbyPeople isEqual:nearbyPeople2])
            {
              v17 = v11;
              v26 = nearbyPeople2;
              activeInteraction = [contextCopy activeInteraction];
              activeInteraction2 = [(_CDPeopleSuggesterContext *)self->_context activeInteraction];
              if (activeInteraction == activeInteraction2 || [activeInteraction isEqual:activeInteraction2])
              {
                contentUTIs = [contextCopy contentUTIs];
                contentUTIs2 = [(_CDPeopleSuggesterContext *)self->_context contentUTIs];
                if (contentUTIs == contentUTIs2)
                {
                  v22 = 1;
                }

                else
                {
                  v22 = [contentUTIs isEqual:contentUTIs2];
                }

                activeInteraction2 = v24;
                v17 = v25;
              }

              else
              {
                v22 = 0;
              }

              nearbyPeople2 = v26;
              v11 = v17;
            }

            else
            {
              v22 = 0;
            }

            seedContactIdentifiers2 = v27;
            consumerIdentifier2 = v28;
          }

          else
          {
            v22 = 0;
          }

          seedContactIdentifiers = v30;
          v12 = v31;
        }

        else
        {
          v22 = 0;
        }
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (BOOL)isValidForSettings:(id)settings
{
  settingsCopy = settings;
  maxNumberOfPeopleSuggested = [settingsCopy maxNumberOfPeopleSuggested];
  if (maxNumberOfPeopleSuggested >= [(_CDPeopleSuggesterSettings *)self->_settings maxNumberOfPeopleSuggested])
  {
    constrainAccounts = [settingsCopy constrainAccounts];
    constrainAccounts2 = [(_CDPeopleSuggesterSettings *)self->_settings constrainAccounts];
    if (constrainAccounts == constrainAccounts2 || [constrainAccounts isEqual:constrainAccounts2])
    {
      constrainBundleIds = [settingsCopy constrainBundleIds];
      constrainBundleIds2 = [(_CDPeopleSuggesterSettings *)self->_settings constrainBundleIds];
      if (constrainBundleIds == constrainBundleIds2 || [constrainBundleIds isEqual:constrainBundleIds2])
      {
        constrainDomainIdentifiers = [settingsCopy constrainDomainIdentifiers];
        constrainDomainIdentifiers2 = [(_CDPeopleSuggesterSettings *)self->_settings constrainDomainIdentifiers];
        if (constrainDomainIdentifiers == constrainDomainIdentifiers2 || [constrainDomainIdentifiers isEqual:constrainDomainIdentifiers2])
        {
          constrainMechanisms = [settingsCopy constrainMechanisms];
          constrainMechanisms2 = [(_CDPeopleSuggesterSettings *)self->_settings constrainMechanisms];
          if (constrainMechanisms == constrainMechanisms2 || [constrainMechanisms isEqual:constrainMechanisms2])
          {
            v37 = constrainDomainIdentifiers;
            v38 = constrainMechanisms2;
            constrainIdentifiers = [settingsCopy constrainIdentifiers];
            constrainIdentifiers2 = [(_CDPeopleSuggesterSettings *)self->_settings constrainIdentifiers];
            if (constrainIdentifiers == constrainIdentifiers2 || [constrainIdentifiers isEqual:constrainIdentifiers2])
            {
              v35 = constrainDomainIdentifiers2;
              v36 = constrainIdentifiers2;
              constrainPersonIds = [settingsCopy constrainPersonIds];
              constrainPersonIds2 = [(_CDPeopleSuggesterSettings *)self->_settings constrainPersonIds];
              if (constrainPersonIds == constrainPersonIds2 || [constrainPersonIds isEqual:constrainPersonIds2])
              {
                v33 = constrainBundleIds;
                v34 = constrainPersonIds2;
                constrainPersonIdType = [settingsCopy constrainPersonIdType];
                constrainPersonIdType2 = [(_CDPeopleSuggesterSettings *)self->_settings constrainPersonIdType];
                if (constrainPersonIdType == constrainPersonIdType2 || [constrainPersonIdType isEqual:constrainPersonIdType2])
                {
                  v31 = constrainPersonIdType2;
                  v32 = constrainMechanisms;
                  useTitleToContrainKeywords = [settingsCopy useTitleToContrainKeywords];
                  if (useTitleToContrainKeywords == [(_CDPeopleSuggesterSettings *)self->_settings useTitleToContrainKeywords])
                  {
                    ignoreContactIdentifiers = [settingsCopy ignoreContactIdentifiers];
                    ignoreContactIdentifiers2 = [(_CDPeopleSuggesterSettings *)self->_settings ignoreContactIdentifiers];
                    if (ignoreContactIdentifiers == ignoreContactIdentifiers2 || [ignoreContactIdentifiers isEqual:ignoreContactIdentifiers2])
                    {
                      v30 = ignoreContactIdentifiers;
                      useFuture = [settingsCopy useFuture];
                      if (useFuture == -[_CDPeopleSuggesterSettings useFuture](self->_settings, "useFuture") && (v25 = [settingsCopy aggregateByIdentifier], v25 == -[_CDPeopleSuggesterSettings aggregateByIdentifier](self->_settings, "aggregateByIdentifier")) && (v26 = objc_msgSend(settingsCopy, "requireOutgoingInteraction"), v26 == -[_CDPeopleSuggesterSettings requireOutgoingInteraction](self->_settings, "requireOutgoingInteraction")) && (v27 = objc_msgSend(settingsCopy, "constrainMaxRecipientCount"), v27 == -[_CDPeopleSuggesterSettings constrainMaxRecipientCount](self->_settings, "constrainMaxRecipientCount")))
                      {
                        inferActiveInteractions = [settingsCopy inferActiveInteractions];
                        v6 = inferActiveInteractions ^ [(_CDPeopleSuggesterSettings *)self->_settings inferActiveInteractions]^ 1;
                      }

                      else
                      {
                        LOBYTE(v6) = 0;
                      }

                      ignoreContactIdentifiers = v30;
                    }

                    else
                    {
                      LOBYTE(v6) = 0;
                    }
                  }

                  else
                  {
                    LOBYTE(v6) = 0;
                  }

                  constrainPersonIdType2 = v31;
                  constrainMechanisms = v32;
                }

                else
                {
                  LOBYTE(v6) = 0;
                }

                constrainBundleIds = v33;
                constrainPersonIds2 = v34;
              }

              else
              {
                LOBYTE(v6) = 0;
              }

              constrainDomainIdentifiers2 = v35;
              constrainIdentifiers2 = v36;
            }

            else
            {
              LOBYTE(v6) = 0;
            }

            constrainDomainIdentifiers = v37;
            constrainMechanisms2 = v38;
          }

          else
          {
            LOBYTE(v6) = 0;
          }
        }

        else
        {
          LOBYTE(v6) = 0;
        }
      }

      else
      {
        LOBYTE(v6) = 0;
      }
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)isValidForContext:(id)context settings:(id)settings timeoutSeconds:(double)seconds
{
  contextCopy = context;
  settingsCopy = settings;
  date = [MEMORY[0x1E695DF00] date];
  date2 = [(_CDCachedPeopleSuggestion *)self date];
  [date timeIntervalSinceDate:date2];
  v13 = fabs(v12);

  if (v13 >= seconds)
  {
    v15 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [_CDCachedPeopleSuggestion isValidForContext:v15 settings:seconds timeoutSeconds:?];
    }

    goto LABEL_7;
  }

  if (![(_CDCachedPeopleSuggestion *)self isValidForContext:contextCopy])
  {
LABEL_7:
    v14 = 0;
    goto LABEL_8;
  }

  v14 = [(_CDCachedPeopleSuggestion *)self isValidForSettings:settingsCopy];
LABEL_8:

  return v14;
}

- (void)isValidForContext:(os_log_t)log settings:(double)a2 timeoutSeconds:.cold.1(os_log_t log, double a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a2;
  _os_log_debug_impl(&dword_191750000, log, OS_LOG_TYPE_DEBUG, "_CDPeopleSuggester: cache timeout. diff > %f sec", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end