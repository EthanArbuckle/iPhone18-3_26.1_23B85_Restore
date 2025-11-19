@interface FBSSceneComponent
- (FBSSceneComponent)initWithScene:(id)a3;
- (id)clientScene;
- (id)hostScene;
- (void)invalidate;
- (void)setScene:(id)a3;
@end

@implementation FBSSceneComponent

- (id)clientScene
{
  scene = self->_scene;
  v3 = objc_opt_class();
  v4 = scene;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v3 = v4;
    }

    else
    {
      v3 = 0;
    }
  }

  v5 = v3;

  return v3;
}

- (id)hostScene
{
  scene = self->_scene;
  v3 = NSClassFromString(&cfstr_Fbscene.isa);
  v4 = scene;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v3 = v4;
    }

    else
    {
      v3 = 0;
    }
  }

  v5 = v3;

  return v3;
}

- (void)invalidate
{
  scene = self->_scene;
  self->_scene = 0;

  self->_invalid = 1;
}

- (FBSSceneComponent)initWithScene:(id)a3
{
  v5 = a3;
  v6 = [(FBSSceneComponent *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_scene, a3);
  }

  return v7;
}

- (void)setScene:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(FBSSceneComponent *)a2 setScene:?];
  }

  self->_scene = v5;

  MEMORY[0x1EEE66BB8]();
}

- (void)setScene:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"scene != ((void *)0)"];
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
    v15 = @"FBSSceneComponent.m";
    v16 = 1024;
    v17 = 35;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
}

@end