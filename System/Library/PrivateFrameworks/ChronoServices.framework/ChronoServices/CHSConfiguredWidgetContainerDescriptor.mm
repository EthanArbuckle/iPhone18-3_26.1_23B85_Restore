@interface CHSConfiguredWidgetContainerDescriptor
+ (CHSConfiguredWidgetContainerDescriptor)new;
- (BOOL)isEqual:(id)a3;
- (BOOL)isSystemConfigured;
- (CHSConfiguredWidgetContainerDescriptor)init;
- (CHSConfiguredWidgetContainerDescriptor)initWithCoder:(id)a3;
- (CHSConfiguredWidgetContainerDescriptor)initWithUniqueIdentifier:(id)a3 location:(int64_t)a4 canAppearInSecureEnvironment:(BOOL)a5 page:(unint64_t)a6 family:(int64_t)a7 widgets:(id)a8 activeWidget:(id)a9;
- (CHSConfiguredWidgetDescriptor)activeWidget;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CHSConfiguredWidgetContainerDescriptor

+ (CHSConfiguredWidgetContainerDescriptor)new
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"CHSConfiguredWidgetContainerDescriptor.m" lineNumber:29 description:@"use the designated initializer"];

  return 0;
}

- (CHSConfiguredWidgetContainerDescriptor)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"CHSConfiguredWidgetContainerDescriptor.m" lineNumber:34 description:@"use the designated initializer"];

  return 0;
}

- (CHSConfiguredWidgetContainerDescriptor)initWithUniqueIdentifier:(id)a3 location:(int64_t)a4 canAppearInSecureEnvironment:(BOOL)a5 page:(unint64_t)a6 family:(int64_t)a7 widgets:(id)a8 activeWidget:(id)a9
{
  v44 = *MEMORY[0x1E69E9840];
  v37 = a3;
  v12 = a8;
  v13 = a9;
  if ([v12 count])
  {
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_13:
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"CHSConfiguredWidgetContainerDescriptor.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"widgets"}];

    if (v13)
    {
      goto LABEL_4;
    }

LABEL_14:
    v15 = -1;
    goto LABEL_15;
  }

  v20 = [MEMORY[0x1E696AAA8] currentHandler];
  [v20 handleFailureInMethod:a2 object:self file:@"CHSConfiguredWidgetContainerDescriptor.m" lineNumber:55 description:@"Widget count must be > 0."];

  if (!v12)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (!v13)
  {
    goto LABEL_14;
  }

LABEL_4:
  v14 = 0;
  v15 = -1;
  while (v14 < [v12 count])
  {
    v16 = [v12 objectAtIndexedSubscript:v14];
    v17 = [v16 uniqueIdentifier];
    v18 = [v17 isEqualToString:v13];

    if (v18)
    {
      v15 = v14;
    }

    ++v14;
  }

  if ((v15 & 0x8000000000000000) != 0 || v15 >= [v12 count])
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"CHSConfiguredWidgetContainerDescriptor.m" lineNumber:64 description:@"Active widget provided is invalid or not found in the widget list."];
  }

LABEL_15:
  v42.receiver = self;
  v42.super_class = CHSConfiguredWidgetContainerDescriptor;
  v22 = [(CHSConfiguredWidgetContainerDescriptor *)&v42 init];
  if (v22)
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v23 = v12;
    v24 = [v23 countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v24)
    {
      v25 = *v39;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v39 != v25)
          {
            objc_enumerationMutation(v23);
          }

          [*(*(&v38 + 1) + 8 * i) _setContainer:v22];
        }

        v24 = [v23 countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v24);
    }

    v22->_activeWidgetIndex = v15;
    objc_storeStrong(&v22->_activeWidgetUniqueIdentifier, a9);
    v27 = [v37 copy];
    uniqueIdentifier = v22->_uniqueIdentifier;
    v22->_uniqueIdentifier = v27;

    v22->_canAppearInSecureEnvironment = a5;
    v22->_location = a4;
    v22->_page = a6;
    v22->_family = a7;
    v29 = [v23 copy];
    widgets = v22->_widgets;
    v22->_widgets = v29;

    v22->_stack = [v23 count] > 1;
  }

  v31 = *MEMORY[0x1E69E9840];
  return v22;
}

- (BOOL)isSystemConfigured
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_widgets;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if (([*(*(&v9 + 1) + 8 * i) isSystemConfigured] & 1) == 0)
        {
          v6 = 0;
          goto LABEL_11;
        }
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v6 = 1;
LABEL_11:

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (CHSConfiguredWidgetDescriptor)activeWidget
{
  activeWidgetIndex = self->_activeWidgetIndex;
  if ((activeWidgetIndex & 0x8000000000000000) != 0 || activeWidgetIndex >= [(NSArray *)self->_widgets count])
  {
    v4 = 0;
  }

  else
  {
    v4 = [(NSArray *)self->_widgets objectAtIndexedSubscript:self->_activeWidgetIndex];
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v9 = [MEMORY[0x1E698E6A0] builderWithObject:v6 ofExpectedClass:objc_opt_class()];
    uniqueIdentifier = self->_uniqueIdentifier;
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __50__CHSConfiguredWidgetContainerDescriptor_isEqual___block_invoke;
    v44[3] = &unk_1E7452FD8;
    v11 = v8;
    v45 = v11;
    v12 = [v9 appendString:uniqueIdentifier counterpart:v44];
    location = self->_location;
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __50__CHSConfiguredWidgetContainerDescriptor_isEqual___block_invoke_2;
    v42[3] = &unk_1E7453368;
    v14 = v11;
    v43 = v14;
    v15 = [v9 appendInteger:location counterpart:v42];
    canAppearInSecureEnvironment = self->_canAppearInSecureEnvironment;
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __50__CHSConfiguredWidgetContainerDescriptor_isEqual___block_invoke_3;
    v40[3] = &unk_1E7452FB0;
    v17 = v14;
    v41 = v17;
    v18 = [v9 appendBool:canAppearInSecureEnvironment counterpart:v40];
    page = self->_page;
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __50__CHSConfiguredWidgetContainerDescriptor_isEqual___block_invoke_4;
    v38[3] = &unk_1E7453318;
    v20 = v17;
    v39 = v20;
    v21 = [v9 appendUnsignedInteger:page counterpart:v38];
    family = self->_family;
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __50__CHSConfiguredWidgetContainerDescriptor_isEqual___block_invoke_5;
    v36[3] = &unk_1E7453368;
    v23 = v20;
    v37 = v23;
    v24 = [v9 appendInteger:family counterpart:v36];
    widgets = self->_widgets;
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __50__CHSConfiguredWidgetContainerDescriptor_isEqual___block_invoke_6;
    v34[3] = &unk_1E7453028;
    v26 = v23;
    v35 = v26;
    v27 = [v9 appendObject:widgets counterpart:v34];
    activeWidgetUniqueIdentifier = self->_activeWidgetUniqueIdentifier;
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __50__CHSConfiguredWidgetContainerDescriptor_isEqual___block_invoke_7;
    v32[3] = &unk_1E7452FD8;
    v33 = v26;
    v29 = [v9 appendString:activeWidgetUniqueIdentifier counterpart:v32];
    v30 = [v9 isEqual];
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [v3 appendString:self->_uniqueIdentifier];
  v5 = [v3 appendInteger:self->_location];
  v6 = [v3 appendBool:self->_canAppearInSecureEnvironment];
  v7 = [v3 appendUnsignedInteger:self->_page];
  v8 = [v3 appendInteger:self->_family];
  v9 = [v3 appendObject:self->_widgets];
  v10 = [v3 appendString:self->_activeWidgetUniqueIdentifier];
  v11 = [v3 hash];

  return v11;
}

- (id)succinctDescription
{
  v2 = [(CHSConfiguredWidgetContainerDescriptor *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(CHSConfiguredWidgetContainerDescriptor *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(CHSConfiguredWidgetContainerDescriptor *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __80__CHSConfiguredWidgetContainerDescriptor_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E7453000;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];
  v7 = v6;

  return v6;
}

uint64_t __80__CHSConfiguredWidgetContainerDescriptor_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  [*(a1 + 32) appendString:*(*(a1 + 40) + 32) withName:@"uniqueIdentifier"];
  v2 = *(a1 + 32);
  v3 = CHSWidgetLocationDescription(*(*(a1 + 40) + 56));
  [v2 appendString:v3 withName:@"location"];

  v4 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 24) withName:@"canAppearInSecureEnvironment"];
  v5 = [*(a1 + 32) appendUnsignedInteger:*(*(a1 + 40) + 64) withName:@"page"];
  v6 = *(a1 + 32);
  v7 = CHSWidgetFamilyDescription(*(*(a1 + 40) + 48));
  [v6 appendString:v7 withName:@"widgetFamily"];

  [*(a1 + 32) appendArraySection:*(*(a1 + 40) + 40) withName:@"widgets" skipIfEmpty:0];
  v8 = *(a1 + 32);
  v9 = *(*(a1 + 40) + 8);

  return [v8 appendString:v9 withName:@"activeWidget"];
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeObject:self->_uniqueIdentifier forKey:@"uid"];
  [v5 encodeInteger:self->_location forKey:@"location"];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_page];
  [v5 encodeObject:v4 forKey:@"page"];

  [v5 encodeInteger:self->_family forKey:@"family"];
  [v5 encodeObject:self->_widgets forKey:@"widgets"];
  [v5 encodeObject:self->_activeWidgetUniqueIdentifier forKey:@"activeWidget"];
  [v5 encodeBool:self->_canAppearInSecureEnvironment forKey:@"canAppearInSE"];
}

- (CHSConfiguredWidgetContainerDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uid"];
  v5 = [v4 decodeIntegerForKey:@"location"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"page"];
  v7 = [v6 unsignedIntegerValue];

  v8 = [v4 decodeIntegerForKey:@"family"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activeWidget"];
  v22 = v7;
  v23 = v5;
  v10 = [v4 decodeBoolForKey:@"canAppearInSE"];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__CHSConfiguredWidgetContainerDescriptor_initWithCoder___block_invoke;
  aBlock[3] = &unk_1E7454250;
  v11 = v9;
  v25 = v11;
  v12 = v21;
  v26 = v12;
  v13 = _Block_copy(aBlock);
  v14 = MEMORY[0x1E695DFD8];
  v15 = objc_opt_class();
  v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
  v17 = [v4 decodeObjectOfClasses:v16 forKey:@"widgets"];

  v18 = v13[2](v13, v17);

  if (v18 && CHSWidgetFamilyIsValid(v8))
  {
    v19 = [(CHSConfiguredWidgetContainerDescriptor *)self initWithUniqueIdentifier:v12 location:v23 canAppearInSecureEnvironment:v10 page:v22 family:v8 widgets:v18 activeWidget:v11];
    self = v19;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

id __56__CHSConfiguredWidgetContainerDescriptor_initWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v4 = v3;
    v5 = 0;
    v6 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v6)
    {
      v7 = *v23;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v23 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v22 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v16 = CHSLogChronoServices();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              v17 = objc_opt_class();
              v18 = NSStringFromClass(v17);
              __56__CHSConfiguredWidgetContainerDescriptor_initWithCoder___block_invoke_cold_2(v18, buf, v16);
            }

            goto LABEL_23;
          }

          if (*(a1 + 32))
          {
            v10 = [v9 uniqueIdentifier];
            v11 = [v10 isEqualToString:*(a1 + 32)];

            v5 |= v11;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    if ((*(a1 + 32) == 0) | v5 & 1)
    {
      v12 = v4;
      goto LABEL_24;
    }

    v19 = CHSLogChronoServices();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      __56__CHSConfiguredWidgetContainerDescriptor_initWithCoder___block_invoke_cold_3((a1 + 32), a1, v19);
    }
  }

  else
  {
    v13 = CHSLogChronoServices();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      __56__CHSConfiguredWidgetContainerDescriptor_initWithCoder___block_invoke_cold_1(v15, buf, v13);
    }
  }

LABEL_23:
  v12 = 0;
LABEL_24:

  v20 = *MEMORY[0x1E69E9840];

  return v12;
}

void __56__CHSConfiguredWidgetContainerDescriptor_initWithCoder___block_invoke_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_195EB2000, log, OS_LOG_TYPE_ERROR, "Unexpected collection type (%{public}@) deserializing widgets.", buf, 0xCu);
}

void __56__CHSConfiguredWidgetContainerDescriptor_initWithCoder___block_invoke_cold_2(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_195EB2000, log, OS_LOG_TYPE_ERROR, "Unexpected type (%{public}@) deserializing widgets.", buf, 0xCu);
}

void __56__CHSConfiguredWidgetContainerDescriptor_initWithCoder___block_invoke_cold_3(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = *(a2 + 40);
  v6 = 138543618;
  v7 = v3;
  v8 = 2114;
  v9 = v4;
  _os_log_error_impl(&dword_195EB2000, log, OS_LOG_TYPE_ERROR, "Unable to find active widget (%{public}@) matching in widget container %{public}@", &v6, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

@end