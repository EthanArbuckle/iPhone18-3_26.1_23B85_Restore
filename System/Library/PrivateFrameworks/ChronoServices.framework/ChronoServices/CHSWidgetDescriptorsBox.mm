@interface CHSWidgetDescriptorsBox
- (CHSWidgetDescriptorsBox)initWithCoder:(id)coder;
- (CHSWidgetDescriptorsBox)initWithDescriptors:(id)descriptors;
- (NSSet)descriptors;
- (void)_performValidation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CHSWidgetDescriptorsBox

- (void)_performValidation
{
  descriptorsByExtensionIdentifier = self->_descriptorsByExtensionIdentifier;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __45__CHSWidgetDescriptorsBox__performValidation__block_invoke;
  v3[3] = &unk_1E7453818;
  v3[4] = self;
  v3[5] = a2;
  [(NSDictionary *)descriptorsByExtensionIdentifier enumerateKeysAndObjectsUsingBlock:v3];
}

void __45__CHSWidgetDescriptorsBox__performValidation__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v63 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v24 = MEMORY[0x1E696AEC0];
    v25 = objc_opt_class();
    v26 = [v5 description];
    v27 = [v24 stringWithFormat:@"Key for CHSWidgetDescriptorsBox was of unexpected type: %@, value: %@", v25, v26];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v28 = NSStringFromSelector(*(a1 + 40));
      v29 = *(a1 + 32);
      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      v32 = *(a1 + 32);
      *buf = 138544642;
      v52 = v28;
      v53 = 2114;
      v54 = v31;
      v55 = 2048;
      v56 = v32;
      v57 = 2114;
      v58 = @"CHSWidgetDescriptorsBox.m";
      v59 = 1024;
      v60 = 36;
      v61 = 2114;
      v62 = v27;
      _os_log_error_impl(&dword_195EB2000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v33 = v27;
    [v27 UTF8String];
    v34 = _bs_set_crash_log_message();
    __45__CHSWidgetDescriptorsBox__performValidation__block_invoke_cold_1(v34);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v35 = MEMORY[0x1E696AEC0];
    v36 = objc_opt_class();
    v37 = [v6 description];
    v38 = [v35 stringWithFormat:@"Array type for CHSWidgetDescriptorsBox at key: %@ was of unexpected type: %@, value: %@", v5, v36, v37];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v39 = NSStringFromSelector(*(a1 + 40));
      v40 = *(a1 + 32);
      v41 = objc_opt_class();
      v42 = NSStringFromClass(v41);
      v43 = *(a1 + 32);
      *buf = 138544642;
      v52 = v39;
      v53 = 2114;
      v54 = v42;
      v55 = 2048;
      v56 = v43;
      v57 = 2114;
      v58 = @"CHSWidgetDescriptorsBox.m";
      v59 = 1024;
      v60 = 37;
      v61 = 2114;
      v62 = v38;
      _os_log_error_impl(&dword_195EB2000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v44 = v38;
    [v38 UTF8String];
    v45 = _bs_set_crash_log_message();
    __45__CHSWidgetDescriptorsBox__performValidation__block_invoke_cold_1(v45);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (v8)
  {
    v9 = *v47;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v47 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v46 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v13 = MEMORY[0x1E696AEC0];
          v14 = objc_opt_class();
          v15 = [v11 description];
          v16 = [v13 stringWithFormat:@"Array value for CHSWidgetDescriptorsBox at key: %@ was of unexpected type: %@, value: %@", v5, v14, v15];

          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v17 = NSStringFromSelector(*(a1 + 40));
            v18 = *(a1 + 32);
            v19 = objc_opt_class();
            v20 = NSStringFromClass(v19);
            v21 = *(a1 + 32);
            *buf = 138544642;
            v52 = v17;
            v53 = 2114;
            v54 = v20;
            v55 = 2048;
            v56 = v21;
            v57 = 2114;
            v58 = @"CHSWidgetDescriptorsBox.m";
            v59 = 1024;
            v60 = 39;
            v61 = 2114;
            v62 = v16;
            _os_log_error_impl(&dword_195EB2000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          v22 = v16;
          [v16 UTF8String];
          v23 = _bs_set_crash_log_message();
          __45__CHSWidgetDescriptorsBox__performValidation__block_invoke_cold_1(v23);
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v46 objects:v50 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (NSSet)descriptors
{
  v2 = MEMORY[0x1E695DFD8];
  allValues = [(NSDictionary *)self->_descriptorsByExtensionIdentifier allValues];
  bs_flatten = [allValues bs_flatten];
  v5 = [v2 setWithArray:bs_flatten];

  return v5;
}

- (CHSWidgetDescriptorsBox)initWithDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  v9.receiver = self;
  v9.super_class = CHSWidgetDescriptorsBox;
  v5 = [(CHSWidgetDescriptorsBox *)&v9 init];
  if (v5)
  {
    v6 = [descriptorsCopy copy];
    descriptorsByExtensionIdentifier = v5->_descriptorsByExtensionIdentifier;
    v5->_descriptorsByExtensionIdentifier = v6;

    [(CHSWidgetDescriptorsBox *)v5 _performValidation];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(CHSWidgetDescriptorsBox *)self _performValidation];
  [coderCopy encodeObject:self->_descriptorsByExtensionIdentifier forKey:@"descriptors"];
}

- (CHSWidgetDescriptorsBox)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v5 setWithObjects:{v6, v7, v8, objc_opt_class(), 0}];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"descriptors"];

  v12 = __41__CHSWidgetDescriptorsBox_initWithCoder___block_invoke(v11, v10);

  if (v12)
  {
    self = [(CHSWidgetDescriptorsBox *)self initWithDescriptors:v12];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

id __41__CHSWidgetDescriptorsBox_initWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v3 = v2;
    v4 = [v3 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v4)
    {
      v5 = *v23;
      v16 = v3;
      v17 = v2;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v23 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = *(*(&v22 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
LABEL_20:

            goto LABEL_21;
          }

          v20 = 0u;
          v21 = 0u;
          v18 = 0u;
          v19 = 0u;
          v8 = [v3 objectForKeyedSubscript:v7];
          v9 = [v8 countByEnumeratingWithState:&v18 objects:v26 count:16];
          if (v9)
          {
            v10 = *v19;
            while (2)
            {
              for (j = 0; j != v9; ++j)
              {
                if (*v19 != v10)
                {
                  objc_enumerationMutation(v8);
                }

                v12 = *(*(&v18 + 1) + 8 * j);
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {

                  v3 = v16;
                  v2 = v17;
                  goto LABEL_20;
                }
              }

              v9 = [v8 countByEnumeratingWithState:&v18 objects:v26 count:16];
              if (v9)
              {
                continue;
              }

              break;
            }
          }

          v3 = v16;
          v2 = v17;
        }

        v4 = [v16 countByEnumeratingWithState:&v22 objects:v27 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

    v13 = v3;
  }

  else
  {
LABEL_21:
    v13 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

@end