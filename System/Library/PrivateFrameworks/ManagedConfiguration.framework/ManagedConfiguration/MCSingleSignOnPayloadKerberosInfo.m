@interface MCSingleSignOnPayloadKerberosInfo
- (BOOL)validateAppIdentifierMatch:(id)a3 outError:(id *)a4;
- (BOOL)validateURLPrefixMatch:(id)a3 outNormalizedString:(id *)a4 outError:(id *)a5;
- (MCSingleSignOnPayloadKerberosInfo)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5;
- (id)description;
- (id)stubDictionary;
@end

@implementation MCSingleSignOnPayloadKerberosInfo

- (MCSingleSignOnPayloadKerberosInfo)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5
{
  v83 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v80.receiver = self;
  v80.super_class = MCSingleSignOnPayloadKerberosInfo;
  v10 = [(MCSingleSignOnPayloadKerberosInfo *)&v80 init];
  if (!v10)
  {
    goto LABEL_26;
  }

  v79 = 0;
  v11 = [MCProfile removeOptionalNonZeroLengthStringInDictionary:v8 key:@"PrincipalName" errorDomain:@"MCPayloadErrorDomain" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v79];
  v12 = v79;
  principalName = v10->_principalName;
  v10->_principalName = v11;

  if (!v12)
  {
    v78 = 0;
    v14 = [MCProfile removeRequiredNonZeroLengthStringInDictionary:v8 key:@"Realm" errorDomain:@"MCPayloadErrorDomain" missingDataCode:2002 missingDataErrorString:@"ERROR_PAYLOAD_REQUIRED_FIELD_MISSING_P_FIELD" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v78];
    v12 = v78;
    realm = v10->_realm;
    v10->_realm = v14;
  }

  v77 = v12;
  v16 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:@"PayloadCertificateUUID" isRequired:0 outError:&v77];
  v17 = v77;

  certificateUUID = v10->_certificateUUID;
  v10->_certificateUUID = v16;

  if (!v17)
  {
    v76 = 0;
    v19 = [MCProfile removeOptionalObjectInDictionary:v8 key:@"AppIdentifierMatches" type:objc_opt_class() errorDomain:@"MCPayloadErrorDomain" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v76];
    v17 = v76;
    appIdentifierMatches = v10->_appIdentifierMatches;
    v10->_appIdentifierMatches = v19;

    if (!v17)
    {
      v60 = a5;
      v61 = v9;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v21 = v10->_appIdentifierMatches;
      v22 = [(NSArray *)v21 countByEnumeratingWithState:&v72 objects:v82 count:16];
      if (v22)
      {
        v23 = v22;
        v17 = 0;
        v24 = *v73;
        while (2)
        {
          v25 = 0;
          v26 = v17;
          do
          {
            if (*v73 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v27 = *(*(&v72 + 1) + 8 * v25);
            v71 = v26;
            v28 = [(MCSingleSignOnPayloadKerberosInfo *)v10 validateAppIdentifierMatch:v27 outError:&v71];
            v17 = v71;

            if (!v28)
            {
              v29 = [MCPayload badFieldValueErrorWithField:@"AppIdentifierMatches" underlyingError:v17];

              v17 = v29;
              a5 = v60;
              v9 = v61;
              goto LABEL_16;
            }

            ++v25;
            v26 = v17;
          }

          while (v23 != v25);
          v23 = [(NSArray *)v21 countByEnumeratingWithState:&v72 objects:v82 count:16];
          if (v23)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v17 = 0;
      }

      if ([(NSArray *)v10->_appIdentifierMatches count])
      {
        v30 = [MEMORY[0x1E695DFD8] setWithArray:v10->_appIdentifierMatches];
        v31 = [v30 allObjects];
        v32 = v10->_appIdentifierMatches;
        v10->_appIdentifierMatches = v31;
      }

      else
      {
        v30 = v10->_appIdentifierMatches;
        v10->_appIdentifierMatches = &unk_1F1AA5A28;
      }

      a5 = v60;
      v9 = v61;

      if (!v17)
      {
        v36 = v10->_principalName;
        if (v36 && [(NSString *)v36 rangeOfString:@"@"]!= 0x7FFFFFFFFFFFFFFFLL)
        {
          v55 = @"PrincipalName";
        }

        else
        {
          if ([(NSString *)v10->_realm rangeOfString:@"@"]== 0x7FFFFFFFFFFFFFFFLL)
          {
            v70 = 0;
            v37 = [MCProfile removeOptionalObjectInDictionary:v8 key:@"URLPrefixMatches" type:objc_opt_class() errorDomain:@"MCPayloadErrorDomain" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v70];
            v17 = v70;
            URLPrefixMatches = v10->_URLPrefixMatches;
            v10->_URLPrefixMatches = v37;

            if (![(NSArray *)v10->_URLPrefixMatches count])
            {
              v39 = v10->_URLPrefixMatches;
              v10->_URLPrefixMatches = &unk_1F1AA5A40;
            }

            v40 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](v10->_URLPrefixMatches, "count")}];
            v68 = 0u;
            v69 = 0u;
            v66 = 0u;
            v67 = 0u;
            obj = v10->_URLPrefixMatches;
            v41 = [(NSArray *)obj countByEnumeratingWithState:&v66 objects:v81 count:16];
            if (v41)
            {
              v42 = v41;
              v59 = *v67;
              while (2)
              {
                v43 = 0;
                v44 = v17;
                do
                {
                  if (*v67 != v59)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v45 = *(*(&v66 + 1) + 8 * v43);
                  v64 = v44;
                  v65 = 0;
                  v46 = [(MCSingleSignOnPayloadKerberosInfo *)v10 validateURLPrefixMatch:v45 outNormalizedString:&v65 outError:&v64];
                  v47 = v65;
                  v17 = v64;

                  if (!v46)
                  {
                    v48 = v40;
                    v56 = [MCPayload badFieldValueErrorWithField:@"URLPrefixMatches" underlyingError:v17];

                    v17 = v56;
                    a5 = v60;
                    v9 = v61;

                    goto LABEL_48;
                  }

                  [v40 addObject:v47];

                  ++v43;
                  v44 = v17;
                }

                while (v42 != v43);
                v42 = [(NSArray *)obj countByEnumeratingWithState:&v66 objects:v81 count:16];
                if (v42)
                {
                  continue;
                }

                break;
              }
            }

            v48 = v40;
            v49 = [MEMORY[0x1E695DFD8] setWithArray:v40];
            v50 = [v49 allObjects];
            v51 = v10->_URLPrefixMatches;
            v10->_URLPrefixMatches = v50;

            v9 = v61;
            if ([v61 isStub])
            {
              a5 = v60;
              if (!v17)
              {
                v63 = 0;
                v52 = [MCProfile removeOptionalNonZeroLengthStringInDictionary:v8 key:@"AccountGUID" errorDomain:@"MCPayloadErrorDomain" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v63];
                v17 = v63;
                accountGUID = v10->_accountGUID;
                v10->_accountGUID = v52;

                if (!v17)
                {
                  v62 = 0;
                  v54 = [MCProfile removeOptionalNonZeroLengthStringInDictionary:v8 key:@"AccountTypeGUID" errorDomain:@"MCPayloadErrorDomain" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v62];
                  v17 = v62;
                  obja = v10->_accountTypeGUID;
                  v10->_accountTypeGUID = v54;
                }
              }
            }

            else
            {
              a5 = v60;
            }

LABEL_48:

LABEL_16:
            if (!v17)
            {
              goto LABEL_26;
            }

            goto LABEL_23;
          }

          v55 = @"Realm";
        }

        v17 = [MCPayload badFieldValueErrorWithField:v55];
        goto LABEL_16;
      }
    }
  }

LABEL_23:
  if (a5)
  {
    v33 = v17;
    *a5 = v17;
  }

  v10 = 0;
LABEL_26:

  v34 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)validateAppIdentifierMatch:(id)a3 outError:(id *)a4
{
  v5 = a3;
  if (([v5 isEqualToString:@"*"] & 1) != 0 || (v7 = objc_msgSend(v5, "rangeOfString:options:", @"*", 12), v7 == objc_msgSend(v5, "rangeOfString:", @"*")) && (v7 == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v5, "rangeOfString:options:", @".*", 12) != 0x7FFFFFFFFFFFFFFFLL))
  {
    v6 = 1;
  }

  else
  {
    v15 = MEMORY[0x1E696ABC0];
    v16 = MCErrorArray(@"SSO_BAD_APP_IDENTIFIER_MATCH_P_PATTERN", v8, v9, v10, v11, v12, v13, v14, v5);
    v17 = [v15 MCErrorWithDomain:@"MCOSSErrorDomain" code:34000 descriptionArray:v16 errorType:@"MCFatalError"];

    if (a4)
    {
      v18 = v17;
      *a4 = v17;
    }

    v6 = 0;
  }

  return v6;
}

- (id)description
{
  v20.receiver = self;
  v20.super_class = MCSingleSignOnPayloadKerberosInfo;
  v3 = [(MCSingleSignOnPayloadKerberosInfo *)&v20 description];
  v4 = [v3 mutableCopy];

  v5 = [(MCSingleSignOnPayloadKerberosInfo *)self principalName];

  if (v5)
  {
    v6 = [(MCSingleSignOnPayloadKerberosInfo *)self principalName];
    [v4 appendFormat:@"Principal     : %@\n", v6];
  }

  v7 = [(MCSingleSignOnPayloadKerberosInfo *)self realm];

  if (v7)
  {
    v8 = [(MCSingleSignOnPayloadKerberosInfo *)self realm];
    [v4 appendFormat:@"Realm         : %@\n", v8];
  }

  v9 = [(MCSingleSignOnPayloadKerberosInfo *)self certificateUUID];

  if (v9)
  {
    v10 = [(MCSingleSignOnPayloadKerberosInfo *)self certificateUUID];
    [v4 appendFormat:@"Cert UUID     : %@\n", v10];
  }

  v11 = [(MCSingleSignOnPayloadKerberosInfo *)self URLPrefixMatches];

  if (v11)
  {
    v12 = [(MCSingleSignOnPayloadKerberosInfo *)self URLPrefixMatches];
    [v4 appendFormat:@"URL Prefix Matches:\n%@\n", v12];
  }

  v13 = [(MCSingleSignOnPayloadKerberosInfo *)self accountGUID];

  if (v13)
  {
    v14 = [(MCSingleSignOnPayloadKerberosInfo *)self accountGUID];
    [v4 appendFormat:@"Acct GUID     : %@\n", v14];
  }

  v15 = [(MCSingleSignOnPayloadKerberosInfo *)self accountTypeGUID];

  if (v15)
  {
    v16 = [(MCSingleSignOnPayloadKerberosInfo *)self accountTypeGUID];
    [v4 appendFormat:@"AcctType GUID : %@\n", v16];
  }

  v17 = [(MCSingleSignOnPayloadKerberosInfo *)self appIdentifierMatches];

  if (v17)
  {
    v18 = [(MCSingleSignOnPayloadKerberosInfo *)self appIdentifierMatches];
    [v4 appendFormat:@"App Matches:\n%@\n", v18];
  }

  return v4;
}

- (BOOL)validateURLPrefixMatch:(id)a3 outNormalizedString:(id *)a4 outError:(id *)a5
{
  v7 = a3;
  v8 = [objc_alloc(MEMORY[0x1E696AF20]) initWithString:v7];
  v9 = [v7 mutableCopy];
  v10 = [v8 scheme];
  if ([v10 isEqualToString:@"http"])
  {
  }

  else
  {
    v11 = [v8 scheme];
    v12 = [v11 isEqualToString:@"https"];

    if (!v12)
    {
      goto LABEL_10;
    }
  }

  v13 = [v8 fragment];
  v14 = [v13 length];

  if (!v14)
  {
    v15 = [v8 query];
    v16 = [v15 length];

    if (!v16)
    {
      v17 = [v8 host];
      v18 = [v17 rangeOfString:@"*" options:4];
      if (([v17 isEqualToString:@"*"] & 1) == 0 && (objc_msgSend(v17, "isEqualToString:", @"*.") & 1) == 0 && (objc_msgSend(v17, "isEqualToString:", @".") & 1) == 0 && (!objc_msgSend(v17, "hasPrefix:", @"*") || objc_msgSend(v17, "hasPrefix:", @"*.")) && (v18 == 0x7FFFFFFFFFFFFFFFLL || !v18))
      {
        v33 = [v8 rangeOfHost];
        if ([v17 hasPrefix:@"*."])
        {
          v34 = [v8 string];
          v35 = [v34 substringToIndex:{objc_msgSend(@"*.", "length") + v33}];
          v36 = [v9 hasPrefix:v35];

          if (v36)
          {
            [v9 deleteCharactersInRange:{v33, 1}];
          }
        }

        if ([v9 rangeOfString:@"/" options:12] == 0x7FFFFFFFFFFFFFFFLL)
        {
          [v9 appendString:@"/"];
        }

        v31 = [v9 copy];

        if (a4)
        {
          v37 = v31;
          *a4 = v31;
        }

        v30 = 1;
        goto LABEL_13;
      }
    }
  }

LABEL_10:

  v19 = MEMORY[0x1E696ABC0];
  v27 = MCErrorArray(@"SSO_BAD_URL_MATCH_PATTERN_P_PATTERN", v20, v21, v22, v23, v24, v25, v26, v7);
  v28 = [v19 MCErrorWithDomain:@"MCOSSErrorDomain" code:34001 descriptionArray:v27 errorType:@"MCFatalError"];

  if (a5)
  {
    v29 = v28;
    *a5 = v28;
  }

  v30 = 0;
  v31 = 0;
LABEL_13:

  return v30;
}

- (id)stubDictionary
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(MCSingleSignOnPayloadKerberosInfo *)self principalName];

  if (v4)
  {
    v5 = [(MCSingleSignOnPayloadKerberosInfo *)self principalName];
    [v3 setObject:v5 forKeyedSubscript:@"PrincipalName"];
  }

  v6 = [(MCSingleSignOnPayloadKerberosInfo *)self realm];

  if (v6)
  {
    v7 = [(MCSingleSignOnPayloadKerberosInfo *)self realm];
    [v3 setObject:v7 forKeyedSubscript:@"Realm"];
  }

  v8 = [(MCSingleSignOnPayloadKerberosInfo *)self URLPrefixMatches];

  if (v8)
  {
    v9 = [(MCSingleSignOnPayloadKerberosInfo *)self URLPrefixMatches];
    [v3 setObject:v9 forKeyedSubscript:@"URLPrefixMatches"];
  }

  v10 = [(MCSingleSignOnPayloadKerberosInfo *)self accountTypeGUID];

  if (v10)
  {
    v11 = [(MCSingleSignOnPayloadKerberosInfo *)self accountTypeGUID];
    [v3 setObject:v11 forKeyedSubscript:@"AccountTypeGUID"];
  }

  v12 = [(MCSingleSignOnPayloadKerberosInfo *)self accountGUID];

  if (v12)
  {
    v13 = [(MCSingleSignOnPayloadKerberosInfo *)self accountGUID];
    [v3 setObject:v13 forKeyedSubscript:@"AccountGUID"];
  }

  v14 = [(MCSingleSignOnPayloadKerberosInfo *)self appIdentifierMatches];

  if (v14)
  {
    v15 = [(MCSingleSignOnPayloadKerberosInfo *)self appIdentifierMatches];
    [v3 setObject:v15 forKeyedSubscript:@"AppIdentifierMatches"];
  }

  return v3;
}

@end