@interface FBSceneLayer
+ (id)layerWithFBSSceneLayer:(id)a3;
- (BOOL)isEqual:(id)a3;
- (FBSceneLayer)init;
- (FBSceneLayer)initWithContextID:(unsigned int)a3 renderID:(unint64_t)a4;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)initAsKeyboard;
- (id)initAsKeyboardProxyWithOwner:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (unint64_t)hash;
@end

@implementation FBSceneLayer

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [v3 appendInteger:self->_type];
  v5 = [v3 appendUnsignedInteger:self->_contextID];
  v6 = [v3 appendInt64:self->_renderID];
  v7 = [v3 appendObject:self->_proxiedKeyboardOwner];
  v8 = [v3 appendCGFloat:self->_level];
  v9 = [v3 appendInteger:self->_alignment];
  v10 = [v3 hash];

  return v10;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = FBSceneLayerTypeDescription(self->_type);
  v5 = [v3 appendObject:v4 withName:@"type"];

  contextID = self->_contextID;
  if (contextID)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"0x%x (%u)", self->_contextID, contextID];
    v8 = [v3 appendObject:v7 withName:@"contextID"];
  }

  if (self->_renderID)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"0x%llx", self->_renderID];
    v10 = [v3 appendObject:v9 withName:@"renderID"];
  }

  [(FBSceneLayer *)self alignment];
  v11 = NSStringFromFBSSceneLayerAlignment();
  v12 = [v3 appendObject:v11 withName:@"alignment"];

  return v3;
}

- (id)initAsKeyboard
{
  v3.receiver = self;
  v3.super_class = FBSceneLayer;
  result = [(FBSceneLayer *)&v3 init];
  if (result)
  {
    *(result + 1) = 3;
  }

  return result;
}

+ (id)layerWithFBSSceneLayer:(id)a3
{
  v4 = a3;
  v5 = [v4 type];
  if (v5 == 2)
  {
    v7 = [v4 keyboardOwner];

    v8 = [a1 alloc];
    v9 = v8;
    if (v7)
    {
      v10 = [v4 keyboardOwner];
      v11 = [v9 initAsKeyboardProxyWithOwner:v10];

      goto LABEL_9;
    }

    v6 = [v8 initAsKeyboard];
  }

  else
  {
    if (v5 != 1)
    {
      v11 = 0;
      goto LABEL_9;
    }

    v6 = [[a1 alloc] initWithContextID:objc_msgSend(v4 renderID:{"contextID"), objc_msgSend(v4, "renderID")}];
  }

  v11 = v6;
LABEL_9:
  [v4 level];
  [v11 setLevel:?];
  [v11 setAlignment:{objc_msgSend(v4, "alignment")}];

  return v11;
}

- (FBSceneLayer)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"you should not be instantiating this class"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    v14 = self;
    v15 = 2114;
    v16 = @"FBSceneLayer.m";
    v17 = 1024;
    v18 = 59;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (id)initAsKeyboardProxyWithOwner:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FBSceneLayer;
  v6 = [(FBSceneLayer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = 4;
    objc_storeStrong(&v6->_proxiedKeyboardOwner, a3);
  }

  return v7;
}

- (FBSceneLayer)initWithContextID:(unsigned int)a3 renderID:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = FBSceneLayer;
  result = [(FBSceneLayer *)&v7 init];
  if (result)
  {
    result->_contextID = a3;
    result->_renderID = a4;
    result->_type = 1;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  type = self->_type;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __24__FBSceneLayer_isEqual___block_invoke;
  v38[3] = &unk_1E783CDC0;
  v7 = v4;
  v39 = v7;
  v8 = [v5 appendInteger:type counterpart:v38];
  contextID = self->_contextID;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __24__FBSceneLayer_isEqual___block_invoke_2;
  v36[3] = &unk_1E783CDE8;
  v10 = v7;
  v37 = v10;
  v11 = [v5 appendUnsignedInteger:contextID counterpart:v36];
  renderID = self->_renderID;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __24__FBSceneLayer_isEqual___block_invoke_3;
  v34[3] = &unk_1E783CDC0;
  v13 = v10;
  v35 = v13;
  v14 = [v5 appendInt64:renderID counterpart:v34];
  proxiedKeyboardOwner = self->_proxiedKeyboardOwner;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __24__FBSceneLayer_isEqual___block_invoke_4;
  v32[3] = &unk_1E783CE10;
  v16 = v13;
  v33 = v16;
  v17 = [v5 appendObject:proxiedKeyboardOwner counterpart:v32];
  level = self->_level;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __24__FBSceneLayer_isEqual___block_invoke_5;
  v30[3] = &unk_1E783CE38;
  v19 = v16;
  v31 = v19;
  v20 = [v5 appendCGFloat:v30 counterpart:level];
  alignment = self->_alignment;
  v25 = MEMORY[0x1E69E9820];
  v26 = 3221225472;
  v27 = __24__FBSceneLayer_isEqual___block_invoke_6;
  v28 = &unk_1E783CDC0;
  v29 = v19;
  v22 = v19;
  v23 = [v5 appendInteger:alignment counterpart:&v25];
  LOBYTE(alignment) = [v5 isEqual];

  return alignment;
}

- (id)succinctDescription
{
  v2 = [(FBSceneLayer *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(FBSceneLayer *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

@end