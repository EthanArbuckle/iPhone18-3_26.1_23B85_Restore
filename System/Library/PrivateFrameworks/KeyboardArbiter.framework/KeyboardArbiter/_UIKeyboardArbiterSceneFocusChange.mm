@interface _UIKeyboardArbiterSceneFocusChange
+ (id)focusNothingChange;
+ (id)new;
- (BOOL)isEqual:(id)a3;
- (_UIKeyboardArbiterSceneFocusChange)init;
- (_UIKeyboardArbiterSceneFocusChange)initWithSceneIdentity:(id)a3 pid:(int)a4;
- (id)_init;
- (void)appendDescriptionToStream:(id)a3;
@end

@implementation _UIKeyboardArbiterSceneFocusChange

+ (id)focusNothingChange
{
  if (_MergedGlobals_1 != -1)
  {
    dispatch_once(&_MergedGlobals_1, &__block_literal_global);
  }

  v3 = qword_28122B760;

  return v3;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = _UIKeyboardArbiterSceneFocusChange;
  return [(_UIKeyboardArbiterSceneFocusChange *)&v3 init];
}

- (_UIKeyboardArbiterSceneFocusChange)init
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"cannot -init _UIKeyboardArbiterSceneFocusChange"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
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
    v16 = @"_UIKeyboardArbiterSceneFocusChangeRequest.m";
    v17 = 1024;
    v18 = 89;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_2557BA000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

+ (id)new
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"cannot +new _UIKeyboardArbiterSceneFocusChange"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    v14 = a1;
    v15 = 2114;
    v16 = @"_UIKeyboardArbiterSceneFocusChangeRequest.m";
    v17 = 1024;
    v18 = 93;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_2557BA000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (_UIKeyboardArbiterSceneFocusChange)initWithSceneIdentity:(id)a3 pid:(int)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = _UIKeyboardArbiterSceneFocusChange;
  v8 = [(_UIKeyboardArbiterSceneFocusChange *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_sceneIdentity, a3);
    v9->_pid = a4;
  }

  return v9;
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

  if (v8 == self)
  {
    v9 = 1;
  }

  else if (v8->_pid == self->_pid)
  {
    v9 = [(FBSSceneIdentityToken *)v8->_sceneIdentity isEqual:self->_sceneIdentity];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)appendDescriptionToStream:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64___UIKeyboardArbiterSceneFocusChange_appendDescriptionToStream___block_invoke;
  v6[3] = &unk_2797F45E0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [v5 appendProem:0 block:v6];
}

@end