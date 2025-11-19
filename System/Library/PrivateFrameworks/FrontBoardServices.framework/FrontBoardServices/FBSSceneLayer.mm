@interface FBSSceneLayer
- (BOOL)isEqual:(id)a3;
- (BOOL)isKindOfClass:(Class)a3;
- (FBSSceneLayer)init;
- (FBSSceneLayer)initWithContextID:(unsigned int)a3 renderID:(unint64_t)a4 level:(double)a5;
- (FBSSceneLayer)initWithKeyboardContext:(id)a3;
- (FBSSceneLayer)initWithKeyboardOwner:(id)a3 level:(double)a4;
- (FBSSceneLayer)initWithWindowContext:(id)a3;
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
  v2 = [(FBSSceneLayer *)self stringRepresentation];
  v3 = [v2 hash];

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
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"0x%x (%u)", self->_contextID, contextID];
    v9 = [v3 appendObject:v8 withName:@"contextID"];
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

  v16 = [v3 build];

  return v16;
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
    v13 = self;
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

- (FBSSceneLayer)initWithWindowContext:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    [FBSSceneLayer initWithWindowContext:a2];
  }

  v7 = v6;
  v8 = [(FBSSceneLayer *)self _init];
  v9 = v8;
  if (v8)
  {
    *&v8->_type = xmmword_1A2E69400;
    objc_storeStrong(&v8->_context, a3);
    [v7 level];
    v9->_level = v10;
    v9->_contextID = [v7 contextId];
    v11 = [v7 layer];
    v9->_renderID = soft_CALayerGetRenderId(v11);

    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"0x%x", v9->_contextID];
    stringRepresentation = v9->_stringRepresentation;
    v9->_stringRepresentation = v12;
  }

  return v9;
}

- (FBSSceneLayer)initWithKeyboardContext:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    [FBSSceneLayer initWithKeyboardContext:a2];
  }

  v7 = v6;
  v8 = [(FBSSceneLayer *)self _init];
  v9 = v8;
  if (v8)
  {
    *&v8->_type = xmmword_1A2E69410;
    objc_storeStrong(&v8->_context, a3);
    [v7 level];
    v9->_level = v10;
    stringRepresentation = v9->_stringRepresentation;
    v9->_stringRepresentation = @"FBSKeyboardLayer";
  }

  return v9;
}

- (FBSSceneLayer)initWithContextID:(unsigned int)a3 renderID:(unint64_t)a4 level:(double)a5
{
  if (!a3)
  {
    [FBSSceneLayer initWithContextID:a2 renderID:? level:?];
  }

  v7 = *&a3;
  v8 = [(FBSSceneLayer *)self _init];
  v9 = v8;
  if (v8)
  {
    *&v8->_type = xmmword_1A2E69400;
    v8->_contextID = v7;
    v8->_renderID = a4;
    v8->_level = a5;
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"0x%x", v7];
    stringRepresentation = v9->_stringRepresentation;
    v9->_stringRepresentation = v10;
  }

  return v9;
}

- (FBSSceneLayer)initWithKeyboardOwner:(id)a3 level:(double)a4
{
  v8 = a3;
  if (!v8)
  {
    [FBSSceneLayer initWithKeyboardOwner:a2 level:?];
  }

  v9 = v8;
  v10 = [(FBSSceneLayer *)self _init];
  v11 = v10;
  if (v10)
  {
    *&v10->_type = xmmword_1A2E69410;
    objc_storeStrong(&v10->_keyboardOwner, a3);
    v11->_level = a4;
    v12 = [(FBSSceneIdentityToken *)v11->_keyboardOwner stringRepresentation];
    stringRepresentation = v11->_stringRepresentation;
    v11->_stringRepresentation = v12;
  }

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (self == v4)
      {
        v5 = 1;
        goto LABEL_9;
      }

      if (self->_type == v4->_type && self->_contextID == v4->_contextID && self->_renderID == v4->_renderID)
      {
        BSFloatEqualToFloat();
      }
    }
  }

  v5 = 0;
LABEL_9:

  return v5;
}

- (BOOL)isKindOfClass:(Class)a3
{
  if (objc_opt_class() == a3 && [(FBSSceneLayer *)self isCAContextLayer]|| objc_opt_class() == a3 && [(FBSSceneLayer *)self isKeyboardLayer]|| objc_opt_class() == a3 && [(FBSSceneLayer *)self isKeyboardProxyLayer])
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = FBSSceneLayer;
  return [(FBSSceneLayer *)&v6 isKindOfClass:a3];
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