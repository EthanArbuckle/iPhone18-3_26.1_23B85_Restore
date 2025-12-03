@interface BSServiceSpecification
- (BOOL)isEqual:(id)equal;
- (BSServiceSpecification)init;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)optionForKey:(id)key;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)_appendBodySectionIfNecessaryToBuilder:(void *)builder withName:(void *)name multilinePrefix:(int)prefix includeDerived:;
- (void)_appendManagerDumpBodyToBuilder:(void *)builder withMultilinePrefix:;
- (void)_initWithIdentifier:(char)identifier hiddenAtLaunch:(char)launch derived:(void *)derived options:;
@end

@implementation BSServiceSpecification

- (BSServiceSpecification)init
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"init is not allowed on BSServiceSpecification"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v10 = 138544642;
    v11 = v5;
    v12 = 2114;
    v13 = v7;
    v14 = 2048;
    selfCopy = self;
    v16 = 2114;
    v17 = @"BSServiceSpecification.m";
    v18 = 1024;
    v19 = 22;
    v20 = 2114;
    v21 = v4;
    _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v10, 0x3Au);
  }

  v8 = v4;
  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (id)optionForKey:(id)key
{
  v3 = [(NSDictionary *)self->_options objectForKey:key];

  return v3;
}

- (void)_initWithIdentifier:(char)identifier hiddenAtLaunch:(char)launch derived:(void *)derived options:
{
  v36 = *MEMORY[0x1E69E9840];
  v9 = a2;
  derivedCopy = derived;
  if (self)
  {
    if (!v9)
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"identifier != ((void *)0)"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v19 = NSStringFromSelector(sel__initWithIdentifier_hiddenAtLaunch_derived_options_);
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        *buf = 138544642;
        v25 = v19;
        v26 = 2114;
        v27 = v21;
        v28 = 2048;
        selfCopy = self;
        v30 = 2114;
        v31 = @"BSServiceSpecification.m";
        v32 = 1024;
        v33 = 39;
        v34 = 2114;
        v35 = v18;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v22 = v18;
      [v18 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A87B768);
    }

    v23.receiver = self;
    v23.super_class = BSServiceSpecification;
    v11 = objc_msgSendSuper2(&v23, sel_init);
    if (v11)
    {
      v12 = [v9 copy];
      v13 = v11[3];
      v11[3] = v12;

      *(v11 + 17) = identifier;
      *(v11 + 16) = launch;
      v14 = [derivedCopy copy];
      v15 = v11[1];
      v11[1] = v14;
    }
  }

  else
  {
    v11 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)_appendManagerDumpBodyToBuilder:(void *)builder withMultilinePrefix:
{
  v6 = a2;
  builderCopy = builder;
  if (self)
  {
    [(BSServiceSpecification *)self _appendBodySectionIfNecessaryToBuilder:v6 withName:@"specification" multilinePrefix:builderCopy includeDerived:1];
  }
}

- (void)_appendBodySectionIfNecessaryToBuilder:(void *)builder withName:(void *)name multilinePrefix:(int)prefix includeDerived:
{
  v9 = a2;
  builderCopy = builder;
  nameCopy = name;
  if (self && (prefix && (*(self + 16) & 1) != 0 || ([self isHiddenAtLaunch] & 1) != 0 || objc_msgSend(*(self + 8), "count")))
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __105__BSServiceSpecification__appendBodySectionIfNecessaryToBuilder_withName_multilinePrefix_includeDerived___block_invoke;
    v12[3] = &unk_1E7520920;
    prefixCopy = prefix;
    v13 = v9;
    selfCopy = self;
    [v13 appendBodySectionWithName:builderCopy multilinePrefix:nameCopy block:v12];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class() && (identifier = self->_identifier, v7 = equalCopy->_identifier, BSEqualStrings()) && self->_hiddenAtLaunch == equalCopy->_hiddenAtLaunch && self->_derived == equalCopy->_derived)
    {
      options = self->_options;
      v9 = equalCopy->_options;
      v10 = BSEqualObjects();
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(BSServiceSpecification *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  derived = self->_derived;
  if (derived)
  {
    identifier = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%@)", self->_identifier];
  }

  else
  {
    identifier = self->_identifier;
  }

  [v3 appendString:identifier withName:0];
  if (derived)
  {
  }

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(BSServiceSpecification *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(BSServiceSpecification *)self succinctDescriptionBuilder];
  [(BSServiceSpecification *)self _appendBodySectionIfNecessaryToBuilder:succinctDescriptionBuilder withName:0 multilinePrefix:prefixCopy includeDerived:0];

  return succinctDescriptionBuilder;
}

uint64_t __105__BSServiceSpecification__appendBodySectionIfNecessaryToBuilder_withName_multilinePrefix_includeDerived___block_invoke(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 16) withName:@"Derived" ifEqualTo:1];
  }

  v3 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:"isHiddenAtLaunch") ifEqualTo:{@"HiddenAtLaunch", 1}];
  v4 = *(a1 + 32);
  v5 = *(*(a1 + 40) + 8);

  return [v4 appendDictionarySection:v5 withName:@"Options" skipIfEmpty:1];
}

@end