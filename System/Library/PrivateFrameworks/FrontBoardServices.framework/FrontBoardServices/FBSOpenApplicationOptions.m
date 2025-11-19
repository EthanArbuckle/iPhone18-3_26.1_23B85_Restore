@interface FBSOpenApplicationOptions
+ (id)optionsWithDictionary:(id)a3;
- (FBSOpenApplicationOptions)initWithBSXPCCoder:(id)a3;
- (FBSOpenApplicationOptions)initWithXPCDictionary:(id)a3;
- (NSSet)actions;
- (NSURL)url;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)_sanitizeAndValidatePayload;
- (void)_updateOption:(id)a3 forKey:(id)a4;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithXPCDictionary:(id)a3;
- (void)setDictionary:(id)a3;
@end

@implementation FBSOpenApplicationOptions

- (void)_sanitizeAndValidatePayload
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableDictionary *)self->_payload objectForKey:@"__ActivateForEvent"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKey:@"__BGContentFetching"];

    if (v5)
    {
      [(NSMutableDictionary *)self->_payload setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"__ActivateSuspended"];
    }
  }

  if ((MEMORY[0x1A58E7B00]("[FBSOpenApplicationOptions _sanitizeAndValidatePayload]") & 1) == 0)
  {
    [(NSMutableDictionary *)self->_payload removeObjectForKey:@"__FromLaunchApp"];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(NSMutableDictionary *)self->_payload allKeys];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [(NSMutableDictionary *)self->_payload removeObjectForKey:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (NSSet)actions
{
  v2 = [(NSMutableDictionary *)self->_payload bs_safeObjectForKey:@"__Actions" ofType:objc_opt_class()];
  v3 = [v2 bs_set];

  return v3;
}

- (NSURL)url
{
  payload = self->_payload;
  v3 = objc_opt_class();

  return [(NSMutableDictionary *)payload bs_safeObjectForKey:@"__PayloadURL" ofType:v3];
}

+ (id)optionsWithDictionary:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  [v5 setDictionary:v4];

  return v5;
}

- (void)setDictionary:(id)a3
{
  if (self->_payload != a3)
  {
    v5 = [a3 mutableCopy];
    payload = self->_payload;
    self->_payload = v5;

    [(FBSOpenApplicationOptions *)self _sanitizeAndValidatePayload];
  }
}

- (FBSOpenApplicationOptions)initWithXPCDictionary:(id)a3
{
  v4 = a3;
  if ([(FBSOpenApplicationOptions *)self init])
  {
    [MEMORY[0x1E695DF90] dictionary];
    objc_claimAutoreleasedReturnValue();
    BSDeserializeCFValueFromXPCDictionaryWithKey();
  }

  return 0;
}

- (void)encodeWithXPCDictionary:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_payload mutableCopy];
  v6 = [v5 objectForKey:@"__Actions"];
  [v5 removeObjectForKey:@"__Actions"];
  if ([v6 count])
  {
    [v6 bs_array];
    objc_claimAutoreleasedReturnValue();
    BSSerializeArrayOfBSXPCEncodableObjectsToXPCDictionaryWithKey();
  }

  v7 = [v5 objectForKey:@"__AppLink4LS"];
  [v5 removeObjectForKey:@"__AppLink4LS"];
  if (v7)
  {
    BSSerializeNSSecureEncodableObjectToXPCDictionaryWithKey();
  }

  [v5 objectForKey:@"__ClickAttribution"];
  if (objc_claimAutoreleasedReturnValue())
  {
    [v5 removeObjectForKey:@"__ClickAttribution"];
    [@"__ClickAttribution" UTF8String];
    BSSerializeNSSecureEncodableObjectToXPCDictionaryWithKey();
  }

  [v5 objectForKey:@"__PasteSharingToken"];
  if (objc_claimAutoreleasedReturnValue())
  {
    [v5 removeObjectForKey:@"__PasteSharingToken"];
    [@"__PasteSharingToken" UTF8String];
    BSSerializeNSSecureEncodableObjectToXPCDictionaryWithKey();
  }

  v8 = [v5 objectForKey:@"__DebugOptions"];
  v9 = [v8 mutableCopy];

  [v9 objectForKey:@"__PreferredCPU"];
  if (objc_claimAutoreleasedReturnValue())
  {
    [v9 removeObjectForKey:@"__PreferredCPU"];
    [@"__PreferredCPU" UTF8String];
    BSSerializeNSSecureEncodableObjectToXPCDictionaryWithKey();
  }

  if (v9)
  {
    v10 = [v9 copy];
    [v5 setObject:v10 forKey:@"__DebugOptions"];
  }

  if ([v5 count])
  {
    BSSerializeCFValueToXPCDictionaryWithKey();
  }
}

- (FBSOpenApplicationOptions)initWithBSXPCCoder:(id)a3
{
  v4 = [a3 decodeXPCObjectOfType:MEMORY[0x1E69E9E80] forKey:@"bsxpccoded"];
  v5 = [(FBSOpenApplicationOptions *)self initWithXPCDictionary:v4];

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = xpc_dictionary_create(0, 0, 0);
  [(FBSOpenApplicationOptions *)self encodeWithXPCDictionary:v5];
  [v4 encodeXPCObject:v5 forKey:@"bsxpccoded"];
}

- (id)succinctDescription
{
  v2 = [(FBSOpenApplicationOptions *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(FBSOpenApplicationOptions *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(FBSOpenApplicationOptions *)self succinctDescriptionBuilder];
  if ([(NSMutableDictionary *)self->_payload count])
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __67__FBSOpenApplicationOptions_descriptionBuilderWithMultilinePrefix___block_invoke;
    v7[3] = &unk_1E76BCD60;
    v7[4] = self;
    v8 = v5;
    [v8 appendBodySectionWithName:0 multilinePrefix:v4 block:v7];
  }

  return v5;
}

void __67__FBSOpenApplicationOptions_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __67__FBSOpenApplicationOptions_descriptionBuilderWithMultilinePrefix___block_invoke_2;
  v2[3] = &unk_1E76BDF08;
  v3 = *(a1 + 40);
  [v1 enumerateKeysAndObjectsUsingBlock:v2];
}

void __67__FBSOpenApplicationOptions_descriptionBuilderWithMultilinePrefix___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if ([v5 isNSDictionary])
  {
    v6 = *(a1 + 32);
    v7 = [v6 activeMultilinePrefix];
    [v6 appendDictionarySection:v5 withName:v11 multilinePrefix:v7 skipIfEmpty:0];
LABEL_5:

    goto LABEL_7;
  }

  v8 = [v5 isNSArray];
  v9 = *(a1 + 32);
  if (v8)
  {
    v7 = [v9 activeMultilinePrefix];
    [v9 appendArraySection:v5 withName:v11 multilinePrefix:v7 skipIfEmpty:1];
    goto LABEL_5;
  }

  v10 = [v9 appendObject:v5 withName:v11];
LABEL_7:
}

- (void)_updateOption:(id)a3 forKey:(id)a4
{
  payload = self->_payload;
  if (a3)
  {
    [(NSMutableDictionary *)payload setObject:a3 forKey:a4];
  }

  else
  {
    [(NSMutableDictionary *)payload removeObjectForKey:a4];
  }
}

- (void)encodeWithXPCDictionary:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 allKeys];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&dword_1A2DBB000, a2, OS_LOG_TYPE_ERROR, "Error encoding options dictionary; one or more of these keys failed to encode: %{public}@", &v4, 0xCu);
}

@end