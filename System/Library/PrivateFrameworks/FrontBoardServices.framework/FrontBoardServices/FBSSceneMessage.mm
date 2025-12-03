@interface FBSSceneMessage
+ (id)message;
- (FBSSceneMessage)initWithXPCDictionary:(id)dictionary;
- (id)_initWithPayload:(id)payload;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
@end

@implementation FBSSceneMessage

+ (id)message
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (id)_initWithPayload:(id)payload
{
  payloadCopy = payload;
  if (payloadCopy)
  {
    NSClassFromString(&cfstr_Bskeyedsetting.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(FBSSceneMessage *)a2 _initWithPayload:?];
    }
  }

  v10.receiver = self;
  v10.super_class = FBSSceneMessage;
  v6 = [(FBSSceneMessage *)&v10 init];
  if (v6)
  {
    if (payloadCopy)
    {
      v7 = [payloadCopy mutableCopy];
    }

    else
    {
      v7 = objc_alloc_init(off_1E76BC9E8);
    }

    payload = v6->_payload;
    v6->_payload = v7;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  payload = [(FBSSceneMessage *)self payload];
  v6 = [v4 _initWithPayload:payload];

  return v6;
}

- (FBSSceneMessage)initWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v6.receiver = self;
  v6.super_class = FBSSceneMessage;
  if ([(FBSSceneMessage *)&v6 init])
  {
    BSCreateDeserializedBSXPCEncodableObjectFromXPCDictionaryWithKey();
  }

  return 0;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(FBSSceneMessage *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(FBSSceneMessage *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(FBSSceneMessage *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__FBSSceneMessage_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E76BCD60;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

  v7 = v6;
  return v6;
}

void __57__FBSSceneMessage_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [*(a1 + 40) payload];
  v2 = [v1 appendObject:v3 withName:@"payload" skipIfNil:0];
}

- (void)_initWithPayload:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:BSKeyedSettingsClass]"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"FBSSceneMessage.m";
    v16 = 1024;
    v17 = 26;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
}

@end