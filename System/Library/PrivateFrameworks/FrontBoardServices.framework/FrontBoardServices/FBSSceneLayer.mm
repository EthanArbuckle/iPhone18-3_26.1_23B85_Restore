@interface FBSSceneLayer
- (BOOL)isEqual:(id)equal;
- (BOOL)isKindOfClass:(Class)class;
- (FBSSceneLayer)init;
- (FBSSceneLayer)initWithContextID:(unsigned int)d renderID:(unint64_t)iD level:(double)level;
- (FBSSceneLayer)initWithKeyboardContext:(id)context;
- (FBSSceneLayer)initWithKeyboardOwner:(id)owner level:(double)level;
- (FBSSceneLayer)initWithWindowContext:(id)context;
- (id)_init;
- (id)capture;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation FBSSceneLayer

- (id)_init
{
  v3.receiver = self;
  v3.super_class = FBSSceneLayer;
  return [(FBSSceneLayer *)&v3 init];
}

- (id)capture
{
  v2 = [[_FBSCapturedSceneLayer alloc] _initWithLayer:self];

  return v2;
}

- (unint64_t)hash
{
  stringRepresentation = [(FBSSceneLayer *)self stringRepresentation];
  v3 = [stringRepresentation hash];

  return v3;
}

- (void)dealloc
{
  context = self->_context;
  if (context)
  {
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x3032000000;
    v11[3] = __Block_byref_object_copy__9;
    v11[4] = __Block_byref_object_dispose__9;
    v11[5] = context;
    v4 = self->_context;
    self->_context = 0;

    v6 = MEMORY[0x1E69E9820];
    v7 = 3221225472;
    v8 = __24__FBSSceneLayer_dealloc__block_invoke;
    v9 = &unk_1E76BD7D0;
    v10 = v11;
    BSDispatchMain();
  }

  v5.receiver = self;
  v5.super_class = FBSSceneLayer;
  [(FBSSceneLayer *)&v5 dealloc];
}

void __24__FBSSceneLayer_dealloc__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

- (id)description
{
  v3 = [off_1E76BC9B0 builderWithObject:self];
  v4 = NSStringFromFBSSceneLayerType(self->_type);
  v5 = [v3 appendObject:v4 withName:@"type"];

  v6 = [v3 appendFloat:@"level" withName:0 decimalPrecision:self->_level];
  contextID = self->_contextID;
  if (contextID)
  {
    contextID = [MEMORY[0x1E696AEC0] stringWithFormat:@"0x%x (%u)", self->_contextID, contextID];
    v9 = [v3 appendObject:contextID withName:@"contextID"];
  }

  if (self->_renderID)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"0x%llx", self->_renderID];
    v11 = [v3 appendObject:v10 withName:@"renderID"];
  }

  keyboardOwner = self->_keyboardOwner;
  if (keyboardOwner)
  {
    v13 = [v3 appendObject:keyboardOwner withName:@"owner"];
  }

  alignment = self->_alignment;
  if (alignment)
  {
    v15 = NSStringFromFBSSceneLayerAlignment(alignment);
    [v3 appendString:v15 withName:@"alignment"];
  }

  build = [v3 build];

  return build;
}

- (FBSSceneLayer)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"wrong initializer"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    selfCopy = self;
    v14 = 2114;
    v15 = @"FBSSceneLayer.m";
    v16 = 1024;
    v17 = 44;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
}

- (FBSSceneLayer)initWithWindowContext:(id)context
{
  contextCopy = context;
  if (!contextCopy)
  {
    [FBSSceneLayer initWithWindowContext:a2];
  }

  v7 = contextCopy;
  _init = [(FBSSceneLayer *)self _init];
  v9 = _init;
  if (_init)
  {
    *&_init->_type = xmmword_1A2E69400;
    objc_storeStrong(&_init->_context, context);
    [v7 level];
    v9->_level = v10;
    v9->_contextID = [v7 contextId];
    layer = [v7 layer];
    v9->_renderID = soft_CALayerGetRenderId(layer);

    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"0x%x", v9->_contextID];
    stringRepresentation = v9->_stringRepresentation;
    v9->_stringRepresentation = v12;
  }

  return v9;
}

- (FBSSceneLayer)initWithKeyboardContext:(id)context
{
  contextCopy = context;
  if (!contextCopy)
  {
    [FBSSceneLayer initWithKeyboardContext:a2];
  }

  v7 = contextCopy;
  _init = [(FBSSceneLayer *)self _init];
  v9 = _init;
  if (_init)
  {
    *&_init->_type = xmmword_1A2E69410;
    objc_storeStrong(&_init->_context, context);
    [v7 level];
    v9->_level = v10;
    stringRepresentation = v9->_stringRepresentation;
    v9->_stringRepresentation = @"FBSKeyboardLayer";
  }

  return v9;
}

- (FBSSceneLayer)initWithContextID:(unsigned int)d renderID:(unint64_t)iD level:(double)level
{
  if (!d)
  {
    [FBSSceneLayer initWithContextID:a2 renderID:? level:?];
  }

  v7 = *&d;
  _init = [(FBSSceneLayer *)self _init];
  v9 = _init;
  if (_init)
  {
    *&_init->_type = xmmword_1A2E69400;
    _init->_contextID = v7;
    _init->_renderID = iD;
    _init->_level = level;
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"0x%x", v7];
    stringRepresentation = v9->_stringRepresentation;
    v9->_stringRepresentation = v10;
  }

  return v9;
}

- (FBSSceneLayer)initWithKeyboardOwner:(id)owner level:(double)level
{
  ownerCopy = owner;
  if (!ownerCopy)
  {
    [FBSSceneLayer initWithKeyboardOwner:a2 level:?];
  }

  v9 = ownerCopy;
  _init = [(FBSSceneLayer *)self _init];
  v11 = _init;
  if (_init)
  {
    *&_init->_type = xmmword_1A2E69410;
    objc_storeStrong(&_init->_keyboardOwner, owner);
    v11->_level = level;
    stringRepresentation = [(FBSSceneIdentityToken *)v11->_keyboardOwner stringRepresentation];
    stringRepresentation = v11->_stringRepresentation;
    v11->_stringRepresentation = stringRepresentation;
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (self == equalCopy)
      {
        v5 = 1;
        goto LABEL_9;
      }

      if (self->_type == equalCopy->_type && self->_contextID == equalCopy->_contextID && self->_renderID == equalCopy->_renderID)
      {
        BSFloatEqualToFloat();
      }
    }
  }

  v5 = 0;
LABEL_9:

  return v5;
}

- (BOOL)isKindOfClass:(Class)class
{
  if (objc_opt_class() == class && [(FBSSceneLayer *)self isCAContextLayer]|| objc_opt_class() == class && [(FBSSceneLayer *)self isKeyboardLayer]|| objc_opt_class() == class && [(FBSSceneLayer *)self isKeyboardProxyLayer])
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = FBSSceneLayer;
  return [(FBSSceneLayer *)&v6 isKindOfClass:class];
}

- (void)initWithWindowContext:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"context", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)initWithKeyboardContext:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"context", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)initWithContextID:(char *)a1 renderID:level:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"contextID", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)initWithKeyboardOwner:(char *)a1 level:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"owner", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

@end