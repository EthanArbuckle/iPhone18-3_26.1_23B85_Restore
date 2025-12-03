@interface HKClinicalGatewayEndpointSchema
- (BOOL)isEqual:(id)equal;
- (HKClinicalGatewayEndpointSchema)init;
- (HKClinicalGatewayEndpointSchema)initWithAuth:(id)auth body:(id)body enabled:(BOOL)enabled form:(id)form headers:(id)headers method:(id)method minCompatibleAPIVersion:(int64_t)version name:(id)self0 query:(id)self1 URL:(id)self2 definition:(id)self3;
- (HKClinicalGatewayEndpointSchema)initWithCoder:(id)coder;
- (id)_queryItemsWithBindings:(id)bindings queryMode:(int64_t)mode authentication:(id)authentication error:(id *)error;
- (id)_queryParametersWithAuthentication:(id)authentication;
- (id)createURLWithBindings:(id)bindings queryMode:(int64_t)mode authentication:(id)authentication error:(id *)error;
- (id)currentScopeStringWithError:(id *)error;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

- (HKClinicalGatewayEndpointSchema)initWithAuth:(id)auth body:(id)body enabled:(BOOL)enabled form:(id)form headers:(id)headers method:(id)method minCompatibleAPIVersion:(int64_t)version name:(id)self0 query:(id)self1 URL:(id)self2 definition:(id)self3
{
  authCopy = auth;
  bodyCopy = body;
  formCopy = form;
  headersCopy = headers;
  methodCopy = method;
  nameCopy = name;
  queryCopy = query;
  lCopy = l;
  definitionCopy = definition;
  v48.receiver = self;
  v48.super_class = HKClinicalGatewayEndpointSchema;
  v27 = [(HKClinicalGatewayEndpointSchema *)&v48 init];
  if (v27)
  {
    v28 = [authCopy copy];
    auth = v27->_auth;
    v27->_auth = v28;

    v30 = [bodyCopy copy];
    body = v27->_body;
    v27->_body = v30;

    v27->_enabled = enabled;
    v32 = [formCopy copy];
    form = v27->_form;
    v27->_form = v32;

    v34 = [headersCopy copy];
    headers = v27->_headers;
    v27->_headers = v34;

    v36 = [methodCopy copy];
    method = v27->_method;
    v27->_method = v36;

    v27->_minCompatibleAPIVersion = version;
    v38 = [nameCopy copy];
    name = v27->_name;
    v27->_name = v38;

    v40 = [queryCopy copy];
    query = v27->_query;
    v27->_query = v40;

    v42 = [lCopy copy];
    URL = v27->_URL;
    v27->_URL = v42;

    v44 = [definitionCopy copy];
    definition = v27->_definition;
    v27->_definition = v44;
  }

  return v27;
}

- (id)currentScopeStringWithError:(id *)error
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
        param = [v9 param];
        v11 = [param isEqualToString:@"scope"];

        if (v11)
        {
          literal = [v9 literal];

          if (literal)
          {
            literal2 = [v9 literal];
          }

          else
          {
            [MEMORY[0x277CCA9B8] hk_assignError:error code:100 format:{@"Scope parameter item did not have a literal key-value pair %@", v9}];
            literal2 = 0;
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

  [MEMORY[0x277CCA9B8] hk_assignError:error code:118 format:@"Unable to find scope query parameter"];
  literal2 = 0;
LABEL_14:
  v14 = *MEMORY[0x277D85DE8];

  return literal2;
}

- (id)createURLWithBindings:(id)bindings queryMode:(int64_t)mode authentication:(id)authentication error:(id *)error
{
  bindingsCopy = bindings;
  authenticationCopy = authentication;
  v12 = [(HKClinicalGatewayEndpointSchema *)self URL];
  if (v12 && (v13 = v12, [MEMORY[0x277CCACE0] componentsWithString:self->_URL], name = objc_claimAutoreleasedReturnValue(), v13, name))
  {
    v15 = [(HKClinicalGatewayEndpointSchema *)self _queryItemsWithBindings:bindingsCopy queryMode:mode authentication:authenticationCopy error:error];
    if (v15)
    {
      [name setQueryItems:v15];
      v16 = [name URL];
      v17 = v16;
      if (v16)
      {
        v18 = v16;
      }

      else
      {
        [MEMORY[0x277CCA9B8] hk_assignError:error code:100 format:{@"Unable to create URL from components: %@", name}];
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
    name = [(HKClinicalGatewayEndpointSchema *)self name];
    [v19 hk_assignError:error code:100 format:{@"Unable to determine base URL for endpoint %@", name}];
    v17 = 0;
  }

  return v17;
}

- (id)_queryParametersWithAuthentication:(id)authentication
{
  v40 = *MEMORY[0x277D85DE8];
  authenticationCopy = authentication;
  if (-[NSString caseInsensitiveCompare:](self->_name, "caseInsensitiveCompare:", @"authorize") || !HKFHIRServerAuthenticationPKCEAlgorithmIsSupported([authenticationCopy PKCEAlgorithm]))
  {
    v19 = self->_query;
  }

  else
  {
    selfCopy = self;
    v32 = authenticationCopy;
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
          param = [v10 param];
          if (param == @"code_challenge" || (v12 = param, [v10 param], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isEqualToString:", @"code_challenge"), v13, v12, (v14 & 1) != 0))
          {
            v7 = 1;
          }

          else
          {
            param2 = [v10 param];
            if (param2 == @"code_challenge_method")
            {
              v18 = 1;
            }

            else
            {
              param3 = [v10 param];
              v17 = [param3 isEqualToString:@"code_challenge_method"];

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

    authenticationCopy = v32;
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

- (id)_queryItemsWithBindings:(id)bindings queryMode:(int64_t)mode authentication:(id)authentication error:(id *)error
{
  v37 = *MEMORY[0x277D85DE8];
  bindingsCopy = bindings;
  authenticationCopy = authentication;
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v30 = authenticationCopy;
  v11 = [(HKClinicalGatewayEndpointSchema *)self _queryParametersWithAuthentication:authenticationCopy];
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
        if ([v16 useWithQueryMode:mode])
        {
          literal = [v16 literal];

          if (literal)
          {
            literal2 = [v16 literal];
            if (!literal2)
            {
              goto LABEL_16;
            }
          }

          else
          {
            variable = [v16 variable];

            if (!variable || ([v16 variable], v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(bindingsCopy, "objectForKeyedSubscript:", v20), literal2 = objc_claimAutoreleasedReturnValue(), v20, !literal2))
            {
LABEL_16:
              v25 = MEMORY[0x277CCA9B8];
              param = [v16 param];
              [v25 hk_assignError:error code:3 format:{@"Unbound variable: %@", param}];

              v24 = 0;
              goto LABEL_17;
            }
          }

          v21 = objc_alloc(MEMORY[0x277CCAD18]);
          param2 = [v16 param];
          v23 = [v21 initWithName:param2 value:literal2];

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7 = equalCopy;
  if (self != equalCopy)
  {
    v8 = equalCopy;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v14 = 0;
LABEL_29:

      goto LABEL_30;
    }

    auth = self->_auth;
    auth = [(HKClinicalGatewayEndpointSchema *)v8 auth];
    if (auth != auth)
    {
      auth2 = [(HKClinicalGatewayEndpointSchema *)v8 auth];
      if (!auth2)
      {
        v14 = 0;
        goto LABEL_28;
      }

      v3 = auth2;
      v12 = self->_auth;
      auth3 = [(HKClinicalGatewayEndpointSchema *)v8 auth];
      if (![(NSString *)v12 isEqualToString:auth3])
      {
        v14 = 0;
LABEL_27:

        goto LABEL_28;
      }

      v104 = auth3;
    }

    body = self->_body;
    body = [(HKClinicalGatewayEndpointSchema *)v8 body];
    if (body != body)
    {
      body2 = [(HKClinicalGatewayEndpointSchema *)v8 body];
      if (!body2)
      {
        goto LABEL_25;
      }

      v4 = body2;
      v18 = self->_body;
      body3 = [(HKClinicalGatewayEndpointSchema *)v8 body];
      v20 = v18;
      v21 = body3;
      if (([(NSDictionary *)v20 isEqual:body3]& 1) == 0)
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
      if (body == body)
      {
LABEL_22:

        goto LABEL_26;
      }

LABEL_21:

      goto LABEL_22;
    }

    v102 = auth;
    v23 = body;
    v24 = body;
    v25 = v3;
    v26 = v4;
    form = self->_form;
    form = [(HKClinicalGatewayEndpointSchema *)v8 form];
    v101 = form;
    if (form == form)
    {
      v4 = v26;
      v3 = v25;
      v98 = v24;
      goto LABEL_32;
    }

    v99 = v25;
    form2 = [(HKClinicalGatewayEndpointSchema *)v8 form];
    if (form2)
    {
      v97 = form2;
      v30 = form;
      v31 = self->_form;
      form3 = [(HKClinicalGatewayEndpointSchema *)v8 form];
      v33 = v31;
      v34 = form3;
      if ([(NSArray *)v33 isEqualToArray:form3])
      {
        v98 = v24;
        v92 = v34;
        form = v30;
        v4 = v26;
        v3 = v25;
LABEL_32:
        body = v23;
        headers = self->_headers;
        headers = [(HKClinicalGatewayEndpointSchema *)v8 headers];
        v96 = headers;
        v37 = headers == headers;
        auth = v102;
        if (!v37)
        {
          headers2 = [(HKClinicalGatewayEndpointSchema *)v8 headers];
          if (!headers2)
          {

            if (v101 != form)
            {
            }

            v50 = v103;
            if (v98 == body)
            {
              goto LABEL_25;
            }

            goto LABEL_50;
          }

          v91 = headers2;
          v94 = v4;
          v39 = form;
          v40 = self->_headers;
          headers3 = [(HKClinicalGatewayEndpointSchema *)v8 headers];
          v42 = v40;
          v43 = headers3;
          if (![(NSArray *)v42 isEqualToArray:headers3])
          {

            if (v101 != v39)
            {
            }

            if (v98 != body)
            {
            }

            goto LABEL_25;
          }

          v90 = v43;
          form = v39;
          v4 = v94;
        }

        method = self->_method;
        method = [(HKClinicalGatewayEndpointSchema *)v8 method];
        if (method == method)
        {
          v93 = form;
          minCompatibleAPIVersion = self->_minCompatibleAPIVersion;
          if (minCompatibleAPIVersion != [(HKClinicalGatewayEndpointSchema *)v8 minCompatibleAPIVersion])
          {
            v14 = 0;
            v58 = headers;
            v59 = method;
            goto LABEL_114;
          }
        }

        else
        {
          method2 = [(HKClinicalGatewayEndpointSchema *)v8 method];
          if (!method2)
          {

            if (v96 != headers)
            {
            }

            if (v101 != form)
            {
            }

            if (v98 == body)
            {
              goto LABEL_25;
            }

            goto LABEL_24;
          }

          v86 = method;
          v89 = method2;
          v93 = form;
          v47 = self->_method;
          method3 = [(HKClinicalGatewayEndpointSchema *)v8 method];
          if (![(NSString *)v47 isEqualToString:method3])
          {

            if (v96 != headers)
            {
            }

            if (v101 != v93)
            {
            }

            if (v98 != body)
            {
            }

            goto LABEL_25;
          }

          v84 = method3;
          v49 = self->_minCompatibleAPIVersion;
          if (v49 != [(HKClinicalGatewayEndpointSchema *)v8 minCompatibleAPIVersion])
          {
            v14 = 0;
            v58 = headers;
            v59 = method;
            v66 = v84;
LABEL_113:

LABEL_114:
            if (v96 != v58)
            {
            }

            if (v101 != v93)
            {
            }

            if (v98 == body)
            {
              goto LABEL_22;
            }

            goto LABEL_21;
          }

          method = v86;
        }

        name = self->_name;
        name = [(HKClinicalGatewayEndpointSchema *)v8 name];
        if (name == name)
        {
          v83 = name;
LABEL_74:
          query = self->_query;
          query = [(HKClinicalGatewayEndpointSchema *)v8 query];
          v80 = query;
          if (query != query)
          {
            query2 = [(HKClinicalGatewayEndpointSchema *)v8 query];
            if (!query2)
            {
              v88 = method;
              v14 = 0;
              goto LABEL_110;
            }

            v78 = query2;
            v62 = self->_query;
            query3 = [(HKClinicalGatewayEndpointSchema *)v8 query];
            v64 = v62;
            v65 = query3;
            if (![(NSArray *)v64 isEqualToArray:query3])
            {

              v14 = 0;
LABEL_96:
              v73 = name;
              v67 = method;
              if (v83 == name)
              {
                goto LABEL_99;
              }

LABEL_98:
              v73 = name;
LABEL_99:

              if (method != v67)
              {
              }

              if (v96 != headers)
              {
              }

              if (v101 != v93)
              {
              }

              if (v98 == body)
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

              if (v80 != query)
              {
              }

              goto LABEL_96;
            }

            v88 = method;
          }

          if (v80 == query)
          {

            v74 = name;
            v58 = headers;
            v59 = method;
            if (v83 == name)
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

            v74 = name;
            goto LABEL_112;
          }

LABEL_110:
          v58 = headers;
          v59 = method;

          v74 = name;
          if (v83 == name)
          {
            goto LABEL_112;
          }

          goto LABEL_111;
        }

        name2 = [(HKClinicalGatewayEndpointSchema *)v8 name];
        if (!name2)
        {
          v14 = 0;
          v67 = method;
          goto LABEL_98;
        }

        v83 = name;
        v81 = name2;
        v54 = self->_name;
        name3 = [(HKClinicalGatewayEndpointSchema *)v8 name];
        v56 = v54;
        v57 = name3;
        if ([(NSString *)v56 isEqualToString:name3])
        {
          v79 = v57;
          goto LABEL_74;
        }

        if (method != method)
        {
        }

        if (v96 != headers)
        {
        }

        if (v101 != v93)
        {
        }

        if (v98 != body)
        {
          v50 = v103;
LABEL_50:

          goto LABEL_24;
        }

LABEL_25:

        v14 = 0;
LABEL_26:
        auth3 = v104;
        if (auth != auth)
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
        auth3 = v104;
        v3 = v99;
        if (v102 == auth)
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

- (void)encodeWithCoder:(id)coder
{
  v22 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
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

  [coderCopy encodeObject:self->_auth forKey:@"auth"];
  [coderCopy encodeObject:v7 forKey:@"body"];
  [coderCopy encodeBool:self->_enabled forKey:@"enabled"];
  [coderCopy encodeObject:self->_form forKey:@"form"];
  [coderCopy encodeObject:self->_headers forKey:@"headers"];
  [coderCopy encodeObject:self->_method forKey:@"method"];
  [coderCopy encodeInteger:self->_minCompatibleAPIVersion forKey:@"minCompatibleAPIVersion"];
  [coderCopy encodeObject:self->_name forKey:@"name"];
  [coderCopy encodeObject:self->_query forKey:@"query"];
  [coderCopy encodeObject:self->_URL forKey:@"URL"];
  [coderCopy encodeObject:self->_definition forKey:@"definition"];

  v10 = *MEMORY[0x277D85DE8];
}

- (HKClinicalGatewayEndpointSchema)initWithCoder:(id)coder
{
  v46 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"auth"];
  if (v6)
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"body"];
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

    if ([coderCopy containsValueForKey:@"enabled"])
    {
      v12 = [coderCopy decodeBoolForKey:@"enabled"];
      v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"method"];
      if (v13 && ([coderCopy containsValueForKey:@"minCompatibleAPIVersion"] & 1) != 0)
      {
        v34 = v12;
        v33 = [coderCopy decodeIntegerForKey:@"minCompatibleAPIVersion"];
        v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
        v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"URL"];
        v37 = MEMORY[0x277CBEB98];
        v15 = objc_opt_class();
        v16 = objc_opt_class();
        v17 = v14;
        v18 = objc_opt_class();
        v31 = v16;
        v19 = v36;
        v38 = [v37 setWithObjects:{v15, v31, v18, objc_opt_class(), 0}];
        v20 = [coderCopy decodeObjectOfClasses:? forKey:?];
        v21 = v20;
        if (v17 && v36 && v20)
        {
          [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
          v22 = v35 = v17;
          v32 = [coderCopy decodeObjectOfClasses:v22 forKey:@"form"];
          v23 = [coderCopy decodeObjectOfClasses:v22 forKey:@"headers"];
          v24 = [coderCopy decodeObjectOfClasses:v22 forKey:@"query"];
          self = [(HKClinicalGatewayEndpointSchema *)self initWithAuth:v6 body:v8 enabled:v34 form:v32 headers:v23 method:v13 minCompatibleAPIVersion:v33 name:v35 query:v24 URL:v36 definition:v21];

          v19 = v36;
          v17 = v35;
          selfCopy = self;
        }

        else
        {
          [coderCopy hrs_failWithCocoaValueNotFoundError];
          selfCopy = 0;
        }
      }

      else
      {
        [coderCopy hrs_failWithCocoaValueNotFoundError];
        selfCopy = 0;
      }
    }

    else
    {
      [coderCopy hrs_failWithCocoaValueNotFoundError];
      selfCopy = 0;
    }
  }

  else
  {
    [coderCopy hrs_failWithCocoaValueNotFoundError];
    selfCopy = 0;
  }

  v25 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

@end