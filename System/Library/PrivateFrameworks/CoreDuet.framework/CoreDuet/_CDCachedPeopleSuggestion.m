@interface _CDCachedPeopleSuggestion
- (BOOL)isValidForContext:(id)a3;
- (BOOL)isValidForContext:(id)a3 settings:(id)a4 timeoutSeconds:(double)a5;
- (BOOL)isValidForSettings:(id)a3;
@end

@implementation _CDCachedPeopleSuggestion

- (BOOL)isValidForContext:(id)a3
{
  v4 = a3;
  v5 = [v4 locationUUID];
  v6 = [(_CDPeopleSuggesterContext *)self->_context locationUUID];
  if (v5 == v6 || [v5 isEqual:v6])
  {
    v7 = [v4 title];
    v8 = [(_CDPeopleSuggesterContext *)self->_context title];
    if (v7 == v8 || [v7 isEqual:v8])
    {
      v9 = [v4 seedContactIdentifiers];
      v10 = [(_CDPeopleSuggesterContext *)self->_context seedContactIdentifiers];
      if (v9 == v10 || [v9 isEqual:v10])
      {
        v33 = [v4 contactPrefix];
        v11 = [_CDPeopleSuggester restrictedPrefixForPrefix:?];
        v32 = [(_CDPeopleSuggesterContext *)self->_context contactPrefix];
        v12 = [_CDPeopleSuggester restrictedPrefixForPrefix:?];
        if (v11 == v12 || [v11 isEqual:v12])
        {
          v30 = v9;
          v31 = v12;
          v13 = [v4 consumerIdentifier];
          v14 = [(_CDPeopleSuggesterContext *)self->_context consumerIdentifier];
          v29 = v13;
          if (v13 == v14 || [v13 isEqual:v14])
          {
            v27 = v10;
            v28 = v14;
            v15 = [v4 nearbyPeople];
            v16 = [(_CDPeopleSuggesterContext *)self->_context nearbyPeople];
            if (v15 == v16 || [v15 isEqual:v16])
            {
              v17 = v11;
              v26 = v16;
              v18 = [v4 activeInteraction];
              v19 = [(_CDPeopleSuggesterContext *)self->_context activeInteraction];
              if (v18 == v19 || [v18 isEqual:v19])
              {
                v20 = [v4 contentUTIs];
                v21 = [(_CDPeopleSuggesterContext *)self->_context contentUTIs];
                if (v20 == v21)
                {
                  v22 = 1;
                }

                else
                {
                  v22 = [v20 isEqual:v21];
                }

                v19 = v24;
                v17 = v25;
              }

              else
              {
                v22 = 0;
              }

              v16 = v26;
              v11 = v17;
            }

            else
            {
              v22 = 0;
            }

            v10 = v27;
            v14 = v28;
          }

          else
          {
            v22 = 0;
          }

          v9 = v30;
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

- (BOOL)isValidForSettings:(id)a3
{
  v4 = a3;
  v5 = [v4 maxNumberOfPeopleSuggested];
  if (v5 >= [(_CDPeopleSuggesterSettings *)self->_settings maxNumberOfPeopleSuggested])
  {
    v7 = [v4 constrainAccounts];
    v8 = [(_CDPeopleSuggesterSettings *)self->_settings constrainAccounts];
    if (v7 == v8 || [v7 isEqual:v8])
    {
      v9 = [v4 constrainBundleIds];
      v10 = [(_CDPeopleSuggesterSettings *)self->_settings constrainBundleIds];
      if (v9 == v10 || [v9 isEqual:v10])
      {
        v11 = [v4 constrainDomainIdentifiers];
        v12 = [(_CDPeopleSuggesterSettings *)self->_settings constrainDomainIdentifiers];
        if (v11 == v12 || [v11 isEqual:v12])
        {
          v13 = [v4 constrainMechanisms];
          v14 = [(_CDPeopleSuggesterSettings *)self->_settings constrainMechanisms];
          if (v13 == v14 || [v13 isEqual:v14])
          {
            v37 = v11;
            v38 = v14;
            v15 = [v4 constrainIdentifiers];
            v16 = [(_CDPeopleSuggesterSettings *)self->_settings constrainIdentifiers];
            if (v15 == v16 || [v15 isEqual:v16])
            {
              v35 = v12;
              v36 = v16;
              v17 = [v4 constrainPersonIds];
              v18 = [(_CDPeopleSuggesterSettings *)self->_settings constrainPersonIds];
              if (v17 == v18 || [v17 isEqual:v18])
              {
                v33 = v9;
                v34 = v18;
                v19 = [v4 constrainPersonIdType];
                v20 = [(_CDPeopleSuggesterSettings *)self->_settings constrainPersonIdType];
                if (v19 == v20 || [v19 isEqual:v20])
                {
                  v31 = v20;
                  v32 = v13;
                  v21 = [v4 useTitleToContrainKeywords];
                  if (v21 == [(_CDPeopleSuggesterSettings *)self->_settings useTitleToContrainKeywords])
                  {
                    v22 = [v4 ignoreContactIdentifiers];
                    v23 = [(_CDPeopleSuggesterSettings *)self->_settings ignoreContactIdentifiers];
                    if (v22 == v23 || [v22 isEqual:v23])
                    {
                      v30 = v22;
                      v24 = [v4 useFuture];
                      if (v24 == -[_CDPeopleSuggesterSettings useFuture](self->_settings, "useFuture") && (v25 = [v4 aggregateByIdentifier], v25 == -[_CDPeopleSuggesterSettings aggregateByIdentifier](self->_settings, "aggregateByIdentifier")) && (v26 = objc_msgSend(v4, "requireOutgoingInteraction"), v26 == -[_CDPeopleSuggesterSettings requireOutgoingInteraction](self->_settings, "requireOutgoingInteraction")) && (v27 = objc_msgSend(v4, "constrainMaxRecipientCount"), v27 == -[_CDPeopleSuggesterSettings constrainMaxRecipientCount](self->_settings, "constrainMaxRecipientCount")))
                      {
                        v28 = [v4 inferActiveInteractions];
                        v6 = v28 ^ [(_CDPeopleSuggesterSettings *)self->_settings inferActiveInteractions]^ 1;
                      }

                      else
                      {
                        LOBYTE(v6) = 0;
                      }

                      v22 = v30;
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

                  v20 = v31;
                  v13 = v32;
                }

                else
                {
                  LOBYTE(v6) = 0;
                }

                v9 = v33;
                v18 = v34;
              }

              else
              {
                LOBYTE(v6) = 0;
              }

              v12 = v35;
              v16 = v36;
            }

            else
            {
              LOBYTE(v6) = 0;
            }

            v11 = v37;
            v14 = v38;
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

- (BOOL)isValidForContext:(id)a3 settings:(id)a4 timeoutSeconds:(double)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x1E695DF00] date];
  v11 = [(_CDCachedPeopleSuggestion *)self date];
  [v10 timeIntervalSinceDate:v11];
  v13 = fabs(v12);

  if (v13 >= a5)
  {
    v15 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [_CDCachedPeopleSuggestion isValidForContext:v15 settings:a5 timeoutSeconds:?];
    }

    goto LABEL_7;
  }

  if (![(_CDCachedPeopleSuggestion *)self isValidForContext:v8])
  {
LABEL_7:
    v14 = 0;
    goto LABEL_8;
  }

  v14 = [(_CDCachedPeopleSuggestion *)self isValidForSettings:v9];
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