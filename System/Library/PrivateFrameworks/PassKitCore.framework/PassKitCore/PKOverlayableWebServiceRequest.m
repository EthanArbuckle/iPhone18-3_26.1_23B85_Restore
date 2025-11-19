@interface PKOverlayableWebServiceRequest
- (NSDictionary)overlayParameters;
- (NSDictionary)secureOverlayParameters;
- (PKOverlayableWebServiceRequest)init;
- (PKOverlayableWebServiceRequest)initWithCoder:(id)a3;
- (PKZeroingDataContainer)archivedData;
- (id)overlayValueForKey:(id)a3;
- (id)secureOverlayValueForKey:(id)a3;
- (void)_applyOverlayToDictionary:(id)a3;
- (void)_applySecureOverlayToDictionary:(id)a3;
- (void)_setOverriddenKeys:(id)a3;
- (void)_updateRequestForRedirect:(id)a3 overrides:(id)a4 webService:(id)a5 withCompletion:(id)a6;
- (void)_updateRequestForRetry:(id)a3 retryFields:(id)a4 webService:(id)a5 withCompletion:(id)a6;
- (void)encodeWithCoder:(id)a3;
- (void)setOverlayParameters:(id)a3;
- (void)setOverlayValue:(id)a3 forKey:(id)a4;
- (void)setSecureOverlayParameters:(id)a3;
- (void)setSecureOverlayValue:(id)a3 forKey:(id)a4;
@end

@implementation PKOverlayableWebServiceRequest

- (PKOverlayableWebServiceRequest)init
{
  v8.receiver = self;
  v8.super_class = PKOverlayableWebServiceRequest;
  v2 = [(PKOverlayableWebServiceRequest *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    overlayParameters = v2->_overlayParameters;
    v2->_overlayParameters = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    secureOverlayParameters = v2->_secureOverlayParameters;
    v2->_secureOverlayParameters = v5;
  }

  return v2;
}

- (PKOverlayableWebServiceRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = PKOverlayableWebServiceRequest;
  v5 = [(PKWebServiceRequest *)&v21 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [v6 setWithObjects:{v7, v8, v9, v10, v11, v12, objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"overlayParameters"];
    overlayParameters = v5->_overlayParameters;
    v5->_overlayParameters = v14;

    v16 = [v4 decodeObjectOfClasses:v13 forKey:@"secureOverlayParameters"];
    secureOverlayParameters = v5->_secureOverlayParameters;
    v5->_secureOverlayParameters = v16;

    v18 = [v4 decodeObjectOfClasses:v13 forKey:@"overridenKeys"];
    overridenKeys = v5->_overridenKeys;
    v5->_overridenKeys = v18;

    v5->_requiresConfigurationForRetry = [v4 decodeBoolForKey:@"requiresConfigurationForRetry"];
    v5->_requiresConfigurationForRedirect = [v4 decodeBoolForKey:@"requiresConfigurationForRedirect"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKOverlayableWebServiceRequest;
  v4 = a3;
  [(PKWebServiceRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_overlayParameters forKey:{@"overlayParameters", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_secureOverlayParameters forKey:@"secureOverlayParameters"];
  [v4 encodeObject:self->_overridenKeys forKey:@"overridenKeys"];
  [v4 encodeBool:self->_requiresConfigurationForRetry forKey:@"requiresConfigurationForRetry"];
  [v4 encodeBool:self->_requiresConfigurationForRedirect forKey:@"requiresConfigurationForRedirect"];
}

- (PKZeroingDataContainer)archivedData
{
  v7 = 0;
  v2 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v7];
  v3 = v7;
  v4 = v3;
  if (v3)
  {
    NSLog(&cfstr_CouldNotCreate_0.isa, v3);
    v5 = 0;
  }

  else
  {
    v5 = [[PKZeroingDataContainer alloc] initWithData:v2];
  }

  return v5;
}

- (void)setOverlayValue:(id)a3 forKey:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (v6)
  {
    overlayParameters = self->_overlayParameters;
    if (v8)
    {
      [(NSMutableDictionary *)overlayParameters setObject:v8 forKeyedSubscript:v6];
    }

    else
    {
      [(NSMutableDictionary *)overlayParameters removeObjectForKey:v6];
    }
  }
}

- (id)overlayValueForKey:(id)a3
{
  if (a3)
  {
    v4 = [(NSMutableDictionary *)self->_overlayParameters objectForKeyedSubscript:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDictionary)overlayParameters
{
  v2 = [(NSMutableDictionary *)self->_overlayParameters copy];

  return v2;
}

- (void)setOverlayParameters:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4)
  {
    v5 = [v4 mutableCopy];
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v6 = v5;
  objc_storeStrong(&self->_overlayParameters, v5);
}

- (void)setSecureOverlayValue:(id)a3 forKey:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (v6)
  {
    secureOverlayParameters = self->_secureOverlayParameters;
    if (v8)
    {
      [(NSMutableDictionary *)secureOverlayParameters setObject:v8 forKeyedSubscript:v6];
    }

    else
    {
      [(NSMutableDictionary *)secureOverlayParameters removeObjectForKey:v6];
    }
  }
}

- (id)secureOverlayValueForKey:(id)a3
{
  if (a3)
  {
    v4 = [(NSMutableDictionary *)self->_secureOverlayParameters objectForKeyedSubscript:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDictionary)secureOverlayParameters
{
  v2 = [(NSMutableDictionary *)self->_secureOverlayParameters copy];

  return v2;
}

- (void)setSecureOverlayParameters:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4)
  {
    v5 = [v4 mutableCopy];
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v6 = v5;
  objc_storeStrong(&self->_secureOverlayParameters, v5);
}

- (void)_applyOverlayToDictionary:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_overlayParameters;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_overlayParameters objectForKeyedSubscript:v10, v12];
        [v4 setObject:v11 forKeyedSubscript:v10];
      }

      v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)_applySecureOverlayToDictionary:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_secureOverlayParameters;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_secureOverlayParameters objectForKeyedSubscript:v10, v12];
        [v4 setObject:v11 forKeyedSubscript:v10];
      }

      v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)_setOverriddenKeys:(id)a3
{
  v4 = [a3 copy];
  overridenKeys = self->_overridenKeys;
  self->_overridenKeys = v4;
}

- (void)_updateRequestForRedirect:(id)a3 overrides:(id)a4 webService:(id)a5 withCompletion:(id)a6
{
  v14 = a3;
  v9 = a4;
  v10 = a6;
  v11 = [(NSMutableDictionary *)self->_overlayParameters mutableCopy];
  v12 = v11;
  if (v11)
  {
    [v11 removeObjectsForKeys:self->_overridenKeys];
  }

  if (v9)
  {
    [v12 addEntriesFromDictionary:v9];
  }

  v13 = [objc_opt_class() _HTTPBodyWithDictionary:v12];
  [v14 setHTTPBody:v13];

  if (v10)
  {
    v10[2](v10, v14);
  }
}

- (void)_updateRequestForRetry:(id)a3 retryFields:(id)a4 webService:(id)a5 withCompletion:(id)a6
{
  v10 = a3;
  v8 = a6;
  v9 = [objc_opt_class() _HTTPBodyWithDictionary:self->_overlayParameters];
  [v10 setHTTPBody:v9];

  if (v8)
  {
    v8[2](v8, v10);
  }
}

@end