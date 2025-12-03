@interface CHUISWidgetLaunchRequest
- (BOOL)isEqual:(id)equal;
- (BSAction)launchAction;
- (CHUISWidgetLaunchRequest)initWithBSXPCCoder:(id)coder;
- (CHUISWidgetLaunchRequest)initWithLaunchAction:(id)action effectiveContainerBundleIdentifier:(id)identifier isEntitledToOpenSystemProcesses:(BOOL)processes;
- (NSURL)url;
- (NSUserActivity)newUserActivity;
- (id)_stateDumpDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (id)userActivityData;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation CHUISWidgetLaunchRequest

- (CHUISWidgetLaunchRequest)initWithLaunchAction:(id)action effectiveContainerBundleIdentifier:(id)identifier isEntitledToOpenSystemProcesses:(BOOL)processes
{
  actionCopy = action;
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = CHUISWidgetLaunchRequest;
  v11 = [(CHUISWidgetLaunchRequest *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_action, action);
    objc_storeStrong(&v12->_effectiveContainerBundleIdentifier, identifier);
    v12->_isEntitledToOpenSystemProcesses = processes;
  }

  return v12;
}

- (NSURL)url
{
  action = self->_action;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(BSAction *)self->_action url];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)userActivityData
{
  action = self->_action;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    userActivityData = [(BSAction *)self->_action userActivityData];
  }

  else
  {
    userActivityData = 0;
  }

  return userActivityData;
}

- (NSUserActivity)newUserActivity
{
  userActivityData = [(CHUISWidgetLaunchRequest *)self userActivityData];
  if (userActivityData)
  {
    v3 = [objc_alloc(MEMORY[0x1E69636A8]) _initWithUserActivityData:userActivityData];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BSAction)launchAction
{
  action = self->_action;
  if (action)
  {
    v3 = action;
  }

  else
  {
    v3 = objc_alloc_init(MEMORY[0x1E698E5F0]);
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CHUISWidgetLaunchRequest alloc];
  effectiveContainerBundleIdentifier = self->_effectiveContainerBundleIdentifier;
  action = self->_action;
  isEntitledToOpenSystemProcesses = self->_isEntitledToOpenSystemProcesses;

  return [(CHUISWidgetLaunchRequest *)v4 initWithLaunchAction:action effectiveContainerBundleIdentifier:effectiveContainerBundleIdentifier isEntitledToOpenSystemProcesses:isEntitledToOpenSystemProcesses];
}

- (CHUISWidgetLaunchRequest)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeStringForKey:@"effectiveContainerBundleIdentifier"];
  v6 = [coderCopy decodeBoolForKey:@"isEntitledToOpenSystemProcesses"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"launchAction"];
  v8 = [(CHUISWidgetLaunchRequest *)self initWithLaunchAction:v7 effectiveContainerBundleIdentifier:v5 isEntitledToOpenSystemProcesses:v6];

  return v8;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_effectiveContainerBundleIdentifier forKey:@"effectiveContainerBundleIdentifier"];
  [coderCopy encodeObject:self->_action forKey:@"launchAction"];
  [coderCopy encodeBool:self->_isEntitledToOpenSystemProcesses forKey:@"isEntitledToOpenSystemProcesses"];
}

- (id)_stateDumpDescription
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __49__CHUISWidgetLaunchRequest__stateDumpDescription__block_invoke;
  v16[3] = &unk_1E8575520;
  v4 = v3;
  v17 = v4;
  selfCopy = self;
  v5 = [v4 modifyProem:v16];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __49__CHUISWidgetLaunchRequest__stateDumpDescription__block_invoke_2;
  v13 = &unk_1E8575520;
  v6 = v4;
  v14 = v6;
  selfCopy2 = self;
  v7 = [v6 modifyBody:&v10];
  build = [v6 build];

  return build;
}

id __49__CHUISWidgetLaunchRequest__stateDumpDescription__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 24) withName:@"action"];
  [*(a1 + 32) appendString:*(*(a1 + 40) + 16) withName:@"effectiveContainerBundleIdentifier"];
  return [*(a1 + 32) appendBool:*(*(a1 + 40) + 8) withName:@"isEntitledToOpenSystemProcesses"];
}

void __49__CHUISWidgetLaunchRequest__stateDumpDescription__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v8 = [*(a1 + 40) url];
  v3 = [v2 appendObject:? withName:?];

  v4 = *(a1 + 32);
  v9 = [*(a1 + 40) effectiveContainerBundleIdentifier];
  v5 = [v4 appendObject:? withName:?];

  v6 = *(a1 + 32);
  v10 = [*(a1 + 40) newUserActivity];
  v7 = [v6 appendObject:? withName:?];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = equalCopy;
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
    effectiveContainerBundleIdentifier = self->_effectiveContainerBundleIdentifier;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __36__CHUISWidgetLaunchRequest_isEqual___block_invoke;
    v24[3] = &unk_1E8575728;
    v11 = v8;
    v25 = v11;
    v12 = [v9 appendString:effectiveContainerBundleIdentifier counterpart:v24];
    isEntitledToOpenSystemProcesses = self->_isEntitledToOpenSystemProcesses;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __36__CHUISWidgetLaunchRequest_isEqual___block_invoke_2;
    v22[3] = &unk_1E8575670;
    v14 = v11;
    v23 = v14;
    v15 = [v9 appendBool:isEntitledToOpenSystemProcesses counterpart:v22];
    action = self->_action;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __36__CHUISWidgetLaunchRequest_isEqual___block_invoke_3;
    v20[3] = &unk_1E85756F0;
    v21 = v14;
    v17 = [v9 appendObject:action counterpart:v20];
    v18 = [v9 isEqual];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = [builder appendObject:self->_action];
  v5 = [builder appendString:self->_effectiveContainerBundleIdentifier];
  v6 = [builder appendBool:self->_isEntitledToOpenSystemProcesses];
  v7 = [builder hash];

  return v7;
}

@end