@interface PKOverlayableWebServiceRequest
- (NSDictionary)overlayParameters;
- (NSDictionary)secureOverlayParameters;
- (PKOverlayableWebServiceRequest)init;
- (PKOverlayableWebServiceRequest)initWithCoder:(id)coder;
- (PKZeroingDataContainer)archivedData;
- (id)overlayValueForKey:(id)key;
- (id)secureOverlayValueForKey:(id)key;
- (void)_applyOverlayToDictionary:(id)dictionary;
- (void)_applySecureOverlayToDictionary:(id)dictionary;
- (void)_setOverriddenKeys:(id)keys;
- (void)_updateRequestForRedirect:(id)redirect overrides:(id)overrides webService:(id)service withCompletion:(id)completion;
- (void)_updateRequestForRetry:(id)retry retryFields:(id)fields webService:(id)service withCompletion:(id)completion;
- (void)encodeWithCoder:(id)coder;
- (void)setOverlayParameters:(id)parameters;
- (void)setOverlayValue:(id)value forKey:(id)key;
- (void)setSecureOverlayParameters:(id)parameters;
- (void)setSecureOverlayValue:(id)value forKey:(id)key;
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

- (PKOverlayableWebServiceRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = PKOverlayableWebServiceRequest;
  v5 = [(PKWebServiceRequest *)&v21 initWithCoder:coderCopy];
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
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"overlayParameters"];
    overlayParameters = v5->_overlayParameters;
    v5->_overlayParameters = v14;

    v16 = [coderCopy decodeObjectOfClasses:v13 forKey:@"secureOverlayParameters"];
    secureOverlayParameters = v5->_secureOverlayParameters;
    v5->_secureOverlayParameters = v16;

    v18 = [coderCopy decodeObjectOfClasses:v13 forKey:@"overridenKeys"];
    overridenKeys = v5->_overridenKeys;
    v5->_overridenKeys = v18;

    v5->_requiresConfigurationForRetry = [coderCopy decodeBoolForKey:@"requiresConfigurationForRetry"];
    v5->_requiresConfigurationForRedirect = [coderCopy decodeBoolForKey:@"requiresConfigurationForRedirect"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKOverlayableWebServiceRequest;
  coderCopy = coder;
  [(PKWebServiceRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_overlayParameters forKey:{@"overlayParameters", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_secureOverlayParameters forKey:@"secureOverlayParameters"];
  [coderCopy encodeObject:self->_overridenKeys forKey:@"overridenKeys"];
  [coderCopy encodeBool:self->_requiresConfigurationForRetry forKey:@"requiresConfigurationForRetry"];
  [coderCopy encodeBool:self->_requiresConfigurationForRedirect forKey:@"requiresConfigurationForRedirect"];
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

- (void)setOverlayValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  if (keyCopy)
  {
    overlayParameters = self->_overlayParameters;
    if (valueCopy)
    {
      [(NSMutableDictionary *)overlayParameters setObject:valueCopy forKeyedSubscript:keyCopy];
    }

    else
    {
      [(NSMutableDictionary *)overlayParameters removeObjectForKey:keyCopy];
    }
  }
}

- (id)overlayValueForKey:(id)key
{
  if (key)
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

- (void)setOverlayParameters:(id)parameters
{
  parametersCopy = parameters;
  v7 = parametersCopy;
  if (parametersCopy)
  {
    v5 = [parametersCopy mutableCopy];
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v6 = v5;
  objc_storeStrong(&self->_overlayParameters, v5);
}

- (void)setSecureOverlayValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  if (keyCopy)
  {
    secureOverlayParameters = self->_secureOverlayParameters;
    if (valueCopy)
    {
      [(NSMutableDictionary *)secureOverlayParameters setObject:valueCopy forKeyedSubscript:keyCopy];
    }

    else
    {
      [(NSMutableDictionary *)secureOverlayParameters removeObjectForKey:keyCopy];
    }
  }
}

- (id)secureOverlayValueForKey:(id)key
{
  if (key)
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

- (void)setSecureOverlayParameters:(id)parameters
{
  parametersCopy = parameters;
  v7 = parametersCopy;
  if (parametersCopy)
  {
    v5 = [parametersCopy mutableCopy];
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v6 = v5;
  objc_storeStrong(&self->_secureOverlayParameters, v5);
}

- (void)_applyOverlayToDictionary:(id)dictionary
{
  v17 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
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
        [dictionaryCopy setObject:v11 forKeyedSubscript:v10];
      }

      v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)_applySecureOverlayToDictionary:(id)dictionary
{
  v17 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
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
        [dictionaryCopy setObject:v11 forKeyedSubscript:v10];
      }

      v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)_setOverriddenKeys:(id)keys
{
  v4 = [keys copy];
  overridenKeys = self->_overridenKeys;
  self->_overridenKeys = v4;
}

- (void)_updateRequestForRedirect:(id)redirect overrides:(id)overrides webService:(id)service withCompletion:(id)completion
{
  redirectCopy = redirect;
  overridesCopy = overrides;
  completionCopy = completion;
  v11 = [(NSMutableDictionary *)self->_overlayParameters mutableCopy];
  v12 = v11;
  if (v11)
  {
    [v11 removeObjectsForKeys:self->_overridenKeys];
  }

  if (overridesCopy)
  {
    [v12 addEntriesFromDictionary:overridesCopy];
  }

  v13 = [objc_opt_class() _HTTPBodyWithDictionary:v12];
  [redirectCopy setHTTPBody:v13];

  if (completionCopy)
  {
    completionCopy[2](completionCopy, redirectCopy);
  }
}

- (void)_updateRequestForRetry:(id)retry retryFields:(id)fields webService:(id)service withCompletion:(id)completion
{
  retryCopy = retry;
  completionCopy = completion;
  v9 = [objc_opt_class() _HTTPBodyWithDictionary:self->_overlayParameters];
  [retryCopy setHTTPBody:v9];

  if (completionCopy)
  {
    completionCopy[2](completionCopy, retryCopy);
  }
}

@end