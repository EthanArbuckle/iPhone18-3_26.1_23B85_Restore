@interface HKClinicalGatewayEndpointSchema
- (BOOL)isEqual:(id)a3;
- (HKClinicalGatewayEndpointSchema)init;
- (HKClinicalGatewayEndpointSchema)initWithAuth:(id)a3 body:(id)a4 enabled:(BOOL)a5 form:(id)a6 headers:(id)a7 method:(id)a8 minCompatibleAPIVersion:(int64_t)a9 name:(id)a10 query:(id)a11 URL:(id)a12 definition:(id)a13;
- (HKClinicalGatewayEndpointSchema)initWithCoder:(id)a3;
- (id)_queryItemsWithBindings:(id)a3 queryMode:(int64_t)a4 authentication:(id)a5 error:(id *)a6;
- (id)_queryParametersWithAuthentication:(id)a3;
- (id)createURLWithBindings:(id)a3 queryMode:(int64_t)a4 authentication:(id)a5 error:(id *)a6;
- (id)currentScopeStringWithError:(id *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKClinicalGatewayEndpointSchema

- (HKClinicalGatewayEndpointSchema)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKClinicalGatewayEndpointSchema)initWithAuth:(id)a3 body:(id)a4 enabled:(BOOL)a5 form:(id)a6 headers:(id)a7 method:(id)a8 minCompatibleAPIVersion:(int64_t)a9 name:(id)a10 query:(id)a11 URL:(id)a12 definition:(id)a13
{
  v47 = a3;
  v19 = a4;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a10;
  v24 = a11;
  v25 = a12;
  v26 = a13;
  v48.receiver = self;
  v48.super_class = HKClinicalGatewayEndpointSchema;
  v27 = [(HKClinicalGatewayEndpointSchema *)&v48 init];
  if (v27)
  {
    v28 = [v47 copy];
    auth = v27->_auth;
    v27->_auth = v28;

    v30 = [v19 copy];
    body = v27->_body;
    v27->_body = v30;

    v27->_enabled = a5;
    v32 = [v20 copy];
    form = v27->_form;
    v27->_form = v32;

    v34 = [v21 copy];
    headers = v27->_headers;
    v27->_headers = v34;

    v36 = [v22 copy];
    method = v27->_method;
    v27->_method = v36;

    v27->_minCompatibleAPIVersion = a9;
    v38 = [v23 copy];
    name = v27->_name;
    v27->_name = v38;

    v40 = [v24 copy];
    query = v27->_query;
    v27->_query = v40;

    v42 = [v25 copy];
    URL = v27->_URL;
    v27->_URL = v42;

    v44 = [v26 copy];
    definition = v27->_definition;
    v27->_definition = v44;
  }

  return v27;
}

- (id)currentScopeStringWithError:(id *)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = self->_query;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [v9 param];
        v11 = [v10 isEqualToString:@"scope"];

        if (v11)
        {
          v13 = [v9 literal];

          if (v13)
          {
            v12 = [v9 literal];
          }

          else
          {
            [MEMORY[0x277CCA9B8] hk_assignError:a3 code:100 format:{@"Scope parameter item did not have a literal key-value pair %@", v9}];
            v12 = 0;
          }

          goto LABEL_14;
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  [MEMORY[0x277CCA9B8] hk_assignError:a3 code:118 format:@"Unable to find scope query parameter"];
  v12 = 0;
LABEL_14:
  v14 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)createURLWithBindings:(id)a3 queryMode:(int64_t)a4 authentication:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  v12 = [(HKClinicalGatewayEndpointSchema *)self URL];
  if (v12 && (v13 = v12, [MEMORY[0x277CCACE0] componentsWithString:self->_URL], v14 = objc_claimAutoreleasedReturnValue(), v13, v14))
  {
    v15 = [(HKClinicalGatewayEndpointSchema *)self _queryItemsWithBindings:v10 queryMode:a4 authentication:v11 error:a6];
    if (v15)
    {
      [v14 setQueryItems:v15];
      v16 = [v14 URL];
      v17 = v16;
      if (v16)
      {
        v18 = v16;
      }

      else
      {
        [MEMORY[0x277CCA9B8] hk_assignError:a6 code:100 format:{@"Unable to create URL from components: %@", v14}];
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v19 = MEMORY[0x277CCA9B8];
    v14 = [(HKClinicalGatewayEndpointSchema *)self name];
    [v19 hk_assignError:a6 code:100 format:{@"Unable to determine base URL for endpoint %@", v14}];
    v17 = 0;
  }

  return v17;
}

- (id)_queryParametersWithAuthentication:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (-[NSString caseInsensitiveCompare:](self->_name, "caseInsensitiveCompare:", @"authorize") || !HKFHIRServerAuthenticationPKCEAlgorithmIsSupported([v4 PKCEAlgorithm]))
  {
    v19 = self->_query;
  }

  else
  {
    v30 = self;
    v32 = v4;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = self->_query;
    v5 = [(NSArray *)obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v33 = 0;
      v8 = *v36;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v36 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v35 + 1) + 8 * i);
          v11 = [v10 param];
          if (v11 == @"code_challenge" || (v12 = v11, [v10 param], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isEqualToString:", @"code_challenge"), v13, v12, (v14 & 1) != 0))
          {
            v7 = 1;
          }

          else
          {
            v15 = [v10 param];
            if (v15 == @"code_challenge_method")
            {
              v18 = 1;
            }

            else
            {
              v16 = [v10 param];
              v17 = [v16 isEqualToString:@"code_challenge_method"];

              v18 = v17 | v33;
            }

            v33 = v18;
          }
        }

        v6 = [(NSArray *)obj countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v6);
    }

    else
    {
      v7 = 0;
      LOBYTE(v33) = 0;
    }

    v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if ((v7 & 1) == 0)
    {
      v23 = [[HKClinicalGatewayEndpointSchemaParameter alloc] initWithParam:@"code_challenge" literal:0 variable:@"PKCEChallenge" mode:0];
      [v22 addObject:v23];
    }

    v4 = v32;
    if ((v33 & 1) == 0)
    {
      v24 = [HKClinicalGatewayEndpointSchemaParameter alloc];
      v25 = NSStringFromHKFHIRServerAuthenticationPKCEAlgorithm([v32 PKCEAlgorithm]);
      v26 = [(HKClinicalGatewayEndpointSchemaParameter *)v24 initWithParam:@"code_challenge_method" literal:v25 variable:0 mode:0];
      [v22 addObject:v26];
    }

    v27 = [v22 count];
    v28 = *(v31 + 72);
    if (v27)
    {
      v29 = [v28 arrayByAddingObjectsFromArray:v22];
    }

    else
    {
      v29 = v28;
    }

    v19 = v29;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)_queryItemsWithBindings:(id)a3 queryMode:(int64_t)a4 authentication:(id)a5 error:(id *)a6
{
  v37 = *MEMORY[0x277D85DE8];
  v31 = a3;
  v9 = a5;
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v30 = v9;
  v11 = [(HKClinicalGatewayEndpointSchema *)self _queryParametersWithAuthentication:v9];
  v12 = [v11 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v33;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v33 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v32 + 1) + 8 * i);
        if ([v16 useWithQueryMode:a4])
        {
          v17 = [v16 literal];

          if (v17)
          {
            v18 = [v16 literal];
            if (!v18)
            {
              goto LABEL_16;
            }
          }

          else
          {
            v19 = [v16 variable];

            if (!v19 || ([v16 variable], v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v31, "objectForKeyedSubscript:", v20), v18 = objc_claimAutoreleasedReturnValue(), v20, !v18))
            {
LABEL_16:
              v25 = MEMORY[0x277CCA9B8];
              v26 = [v16 param];
              [v25 hk_assignError:a6 code:3 format:{@"Unbound variable: %@", v26}];

              v24 = 0;
              goto LABEL_17;
            }
          }

          v21 = objc_alloc(MEMORY[0x277CCAD18]);
          v22 = [v16 param];
          v23 = [v21 initWithName:v22 value:v18];

          [v10 addObject:v23];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v24 = v10;
LABEL_17:

  v27 = *MEMORY[0x277D85DE8];

  return v24;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  v7 = v6;
  if (self != v6)
  {
    v8 = v6;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v14 = 0;
LABEL_29:

      goto LABEL_30;
    }

    auth = self->_auth;
    v10 = [(HKClinicalGatewayEndpointSchema *)v8 auth];
    if (auth != v10)
    {
      v11 = [(HKClinicalGatewayEndpointSchema *)v8 auth];
      if (!v11)
      {
        v14 = 0;
        goto LABEL_28;
      }

      v3 = v11;
      v12 = self->_auth;
      v13 = [(HKClinicalGatewayEndpointSchema *)v8 auth];
      if (![(NSString *)v12 isEqualToString:v13])
      {
        v14 = 0;
LABEL_27:

        goto LABEL_28;
      }

      v104 = v13;
    }

    body = self->_body;
    v16 = [(HKClinicalGatewayEndpointSchema *)v8 body];
    if (body != v16)
    {
      v17 = [(HKClinicalGatewayEndpointSchema *)v8 body];
      if (!v17)
      {
        goto LABEL_25;
      }

      v4 = v17;
      v18 = self->_body;
      v19 = [(HKClinicalGatewayEndpointSchema *)v8 body];
      v20 = v18;
      v21 = v19;
      if (([(NSDictionary *)v20 isEqual:v19]& 1) == 0)
      {

LABEL_24:
        goto LABEL_25;
      }

      v103 = v21;
    }

    enabled = self->_enabled;
    if (enabled != [(HKClinicalGatewayEndpointSchema *)v8 enabled])
    {
      v14 = 0;
      if (body == v16)
      {
LABEL_22:

        goto LABEL_26;
      }

LABEL_21:

      goto LABEL_22;
    }

    v102 = auth;
    v23 = v16;
    v24 = body;
    v25 = v3;
    v26 = v4;
    form = self->_form;
    v28 = [(HKClinicalGatewayEndpointSchema *)v8 form];
    v101 = form;
    if (form == v28)
    {
      v4 = v26;
      v3 = v25;
      v98 = v24;
      goto LABEL_32;
    }

    v99 = v25;
    v29 = [(HKClinicalGatewayEndpointSchema *)v8 form];
    if (v29)
    {
      v97 = v29;
      v30 = v28;
      v31 = self->_form;
      v32 = [(HKClinicalGatewayEndpointSchema *)v8 form];
      v33 = v31;
      v34 = v32;
      if ([(NSArray *)v33 isEqualToArray:v32])
      {
        v98 = v24;
        v92 = v34;
        v28 = v30;
        v4 = v26;
        v3 = v25;
LABEL_32:
        v16 = v23;
        headers = self->_headers;
        v100 = [(HKClinicalGatewayEndpointSchema *)v8 headers];
        v96 = headers;
        v37 = headers == v100;
        auth = v102;
        if (!v37)
        {
          v38 = [(HKClinicalGatewayEndpointSchema *)v8 headers];
          if (!v38)
          {

            if (v101 != v28)
            {
            }

            v50 = v103;
            if (v98 == v16)
            {
              goto LABEL_25;
            }

            goto LABEL_50;
          }

          v91 = v38;
          v94 = v4;
          v39 = v28;
          v40 = self->_headers;
          v41 = [(HKClinicalGatewayEndpointSchema *)v8 headers];
          v42 = v40;
          v43 = v41;
          if (![(NSArray *)v42 isEqualToArray:v41])
          {

            if (v101 != v39)
            {
            }

            if (v98 != v16)
            {
            }

            goto LABEL_25;
          }

          v90 = v43;
          v28 = v39;
          v4 = v94;
        }

        method = self->_method;
        v95 = [(HKClinicalGatewayEndpointSchema *)v8 method];
        if (method == v95)
        {
          v93 = v28;
          minCompatibleAPIVersion = self->_minCompatibleAPIVersion;
          if (minCompatibleAPIVersion != [(HKClinicalGatewayEndpointSchema *)v8 minCompatibleAPIVersion])
          {
            v14 = 0;
            v58 = v100;
            v59 = v95;
            goto LABEL_114;
          }
        }

        else
        {
          v46 = [(HKClinicalGatewayEndpointSchema *)v8 method];
          if (!v46)
          {

            if (v96 != v100)
            {
            }

            if (v101 != v28)
            {
            }

            if (v98 == v16)
            {
              goto LABEL_25;
            }

            goto LABEL_24;
          }

          v86 = method;
          v89 = v46;
          v93 = v28;
          v47 = self->_method;
          v48 = [(HKClinicalGatewayEndpointSchema *)v8 method];
          if (![(NSString *)v47 isEqualToString:v48])
          {

            if (v96 != v100)
            {
            }

            if (v101 != v93)
            {
            }

            if (v98 != v16)
            {
            }

            goto LABEL_25;
          }

          v84 = v48;
          v49 = self->_minCompatibleAPIVersion;
          if (v49 != [(HKClinicalGatewayEndpointSchema *)v8 minCompatibleAPIVersion])
          {
            v14 = 0;
            v58 = v100;
            v59 = v95;
            v66 = v84;
LABEL_113:

LABEL_114:
            if (v96 != v58)
            {
            }

            if (v101 != v93)
            {
            }

            if (v98 == v16)
            {
              goto LABEL_22;
            }

            goto LABEL_21;
          }

          method = v86;
        }

        name = self->_name;
        v85 = [(HKClinicalGatewayEndpointSchema *)v8 name];
        if (name == v85)
        {
          v83 = name;
LABEL_74:
          query = self->_query;
          v82 = [(HKClinicalGatewayEndpointSchema *)v8 query];
          v80 = query;
          if (query != v82)
          {
            v61 = [(HKClinicalGatewayEndpointSchema *)v8 query];
            if (!v61)
            {
              v88 = method;
              v14 = 0;
              goto LABEL_110;
            }

            v78 = v61;
            v62 = self->_query;
            v63 = [(HKClinicalGatewayEndpointSchema *)v8 query];
            v64 = v62;
            v65 = v63;
            if (![(NSArray *)v64 isEqualToArray:v63])
            {

              v14 = 0;
LABEL_96:
              v73 = v85;
              v67 = v95;
              if (v83 == v85)
              {
                goto LABEL_99;
              }

LABEL_98:
              v73 = v85;
LABEL_99:

              if (method != v67)
              {
              }

              if (v96 != v100)
              {
              }

              if (v101 != v93)
              {
              }

              if (v98 == v16)
              {
                goto LABEL_22;
              }

              goto LABEL_21;
            }

            v75 = v65;
          }

          URL = self->_URL;
          v69 = [(HKClinicalGatewayEndpointSchema *)v8 URL];
          v14 = URL == v69;
          if (v14)
          {
            v88 = method;
          }

          else
          {
            v77 = v69;
            v70 = [(HKClinicalGatewayEndpointSchema *)v8 URL];
            if (v70)
            {
              v71 = self->_URL;
              v87 = v70;
              v72 = [(HKClinicalGatewayEndpointSchema *)v8 URL];
              v14 = [(NSString *)v71 isEqualToString:v72];

              if (v80 != v82)
              {
              }

              goto LABEL_96;
            }

            v88 = method;
          }

          if (v80 == v82)
          {

            v74 = v85;
            v58 = v100;
            v59 = v95;
            if (v83 == v85)
            {
LABEL_112:

              v66 = v84;
              if (v88 == v59)
              {
                goto LABEL_114;
              }

              goto LABEL_113;
            }

LABEL_111:

            v74 = v85;
            goto LABEL_112;
          }

LABEL_110:
          v58 = v100;
          v59 = v95;

          v74 = v85;
          if (v83 == v85)
          {
            goto LABEL_112;
          }

          goto LABEL_111;
        }

        v53 = [(HKClinicalGatewayEndpointSchema *)v8 name];
        if (!v53)
        {
          v14 = 0;
          v67 = v95;
          goto LABEL_98;
        }

        v83 = name;
        v81 = v53;
        v54 = self->_name;
        v55 = [(HKClinicalGatewayEndpointSchema *)v8 name];
        v56 = v54;
        v57 = v55;
        if ([(NSString *)v56 isEqualToString:v55])
        {
          v79 = v57;
          goto LABEL_74;
        }

        if (method != v95)
        {
        }

        if (v96 != v100)
        {
        }

        if (v101 != v93)
        {
        }

        if (v98 != v16)
        {
          v50 = v103;
LABEL_50:

          goto LABEL_24;
        }

LABEL_25:

        v14 = 0;
LABEL_26:
        v13 = v104;
        if (auth != v10)
        {
          goto LABEL_27;
        }

LABEL_28:

        goto LABEL_29;
      }

      v44 = v103;
      if (v24 == v23)
      {
LABEL_45:

        v14 = 0;
        v13 = v104;
        v3 = v99;
        if (v102 == v10)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }
    }

    else
    {

      if (v24 == v23)
      {
        goto LABEL_45;
      }

      v44 = v103;
    }

    goto LABEL_45;
  }

  v14 = 1;
LABEL_30:

  return v14;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_auth hash];
  v4 = [(NSDictionary *)self->_body hash]^ v3;
  enabled = self->_enabled;
  v6 = v4 ^ enabled ^ [(NSArray *)self->_form hash];
  v7 = [(NSArray *)self->_headers hash];
  v8 = v6 ^ v7 ^ [(NSString *)self->_method hash]^ self->_minCompatibleAPIVersion;
  v9 = [(NSString *)self->_name hash];
  v10 = v9 ^ [(NSArray *)self->_query hash];
  return v8 ^ v10 ^ [(NSString *)self->_URL hash];
}

- (void)encodeWithCoder:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  body = self->_body;
  if (body)
  {
    v15 = 0;
    v7 = [MEMORY[0x277CCAAA0] dataWithJSONObject:body options:0 error:&v15];
    v8 = v15;
    if (!v7)
    {
      _HKInitializeLogging();
      v9 = *MEMORY[0x277CCC2C0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
      {
        v11 = v9;
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v14 = NSStringFromSelector(a2);
        *buf = 138543874;
        v17 = v13;
        v18 = 2114;
        v19 = v14;
        v20 = 2114;
        v21 = v8;
        _os_log_error_impl(&dword_2519FE000, v11, OS_LOG_TYPE_ERROR, "%{public}@ %{public}@ failed to encode JSON to data: %{public}@", buf, 0x20u);
      }
    }
  }

  else
  {
    v7 = 0;
  }

  [v5 encodeObject:self->_auth forKey:@"auth"];
  [v5 encodeObject:v7 forKey:@"body"];
  [v5 encodeBool:self->_enabled forKey:@"enabled"];
  [v5 encodeObject:self->_form forKey:@"form"];
  [v5 encodeObject:self->_headers forKey:@"headers"];
  [v5 encodeObject:self->_method forKey:@"method"];
  [v5 encodeInteger:self->_minCompatibleAPIVersion forKey:@"minCompatibleAPIVersion"];
  [v5 encodeObject:self->_name forKey:@"name"];
  [v5 encodeObject:self->_query forKey:@"query"];
  [v5 encodeObject:self->_URL forKey:@"URL"];
  [v5 encodeObject:self->_definition forKey:@"definition"];

  v10 = *MEMORY[0x277D85DE8];
}

- (HKClinicalGatewayEndpointSchema)initWithCoder:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"auth"];
  if (v6)
  {
    v7 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"body"];
    if (v7)
    {
      v39 = 0;
      v8 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v7 options:0 error:&v39];
      v9 = v39;
      if (!v8)
      {
        _HKInitializeLogging();
        v10 = *MEMORY[0x277CCC2C0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
        {
          v27 = v10;
          v28 = objc_opt_class();
          v29 = NSStringFromClass(v28);
          v30 = NSStringFromSelector(a2);
          *buf = 138543874;
          v41 = v29;
          v42 = 2114;
          v43 = v30;
          v44 = 2114;
          v45 = v9;
          _os_log_error_impl(&dword_2519FE000, v27, OS_LOG_TYPE_ERROR, "%{public}@ %{public}@ failed to decode data to JSON: %{public}@", buf, 0x20u);
        }
      }
    }

    else
    {
      v8 = 0;
    }

    if ([v5 containsValueForKey:@"enabled"])
    {
      v12 = [v5 decodeBoolForKey:@"enabled"];
      v13 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"method"];
      if (v13 && ([v5 containsValueForKey:@"minCompatibleAPIVersion"] & 1) != 0)
      {
        v34 = v12;
        v33 = [v5 decodeIntegerForKey:@"minCompatibleAPIVersion"];
        v14 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
        v36 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"URL"];
        v37 = MEMORY[0x277CBEB98];
        v15 = objc_opt_class();
        v16 = objc_opt_class();
        v17 = v14;
        v18 = objc_opt_class();
        v31 = v16;
        v19 = v36;
        v38 = [v37 setWithObjects:{v15, v31, v18, objc_opt_class(), 0}];
        v20 = [v5 decodeObjectOfClasses:? forKey:?];
        v21 = v20;
        if (v17 && v36 && v20)
        {
          [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
          v22 = v35 = v17;
          v32 = [v5 decodeObjectOfClasses:v22 forKey:@"form"];
          v23 = [v5 decodeObjectOfClasses:v22 forKey:@"headers"];
          v24 = [v5 decodeObjectOfClasses:v22 forKey:@"query"];
          self = [(HKClinicalGatewayEndpointSchema *)self initWithAuth:v6 body:v8 enabled:v34 form:v32 headers:v23 method:v13 minCompatibleAPIVersion:v33 name:v35 query:v24 URL:v36 definition:v21];

          v19 = v36;
          v17 = v35;
          v11 = self;
        }

        else
        {
          [v5 hrs_failWithCocoaValueNotFoundError];
          v11 = 0;
        }
      }

      else
      {
        [v5 hrs_failWithCocoaValueNotFoundError];
        v11 = 0;
      }
    }

    else
    {
      [v5 hrs_failWithCocoaValueNotFoundError];
      v11 = 0;
    }
  }

  else
  {
    [v5 hrs_failWithCocoaValueNotFoundError];
    v11 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v11;
}

@end