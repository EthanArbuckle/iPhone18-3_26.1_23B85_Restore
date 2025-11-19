@interface FBSDisplayConfigurationBuilder
- (FBSDisplayConfigurationBuilder)init;
- (FBSDisplayConfigurationBuilder)initWithConfiguration:(id)a3;
- (id)_lock_sanitizedModeForMode:(id)a3;
- (id)buildWithError:(id *)a3;
- (void)setCloningSupported:(BOOL)a3;
- (void)setCurrentMode:(id)a3 preferredMode:(id)a4 otherModes:(id)a5;
- (void)setDisplayType:(int64_t)a3;
- (void)setExpectsSecureRendering;
- (void)setOverscanned:(BOOL)a3 compensation:(int64_t)a4 safeRatio:(CGSize)a5;
- (void)setPixelSize:(CGSize)a3 nativeBounds:(CGRect)a4 bounds:(CGRect)a5;
- (void)setUIKitMainLike;
- (void)setUniqueIdentifier:(id)a3;
@end

@implementation FBSDisplayConfigurationBuilder

- (FBSDisplayConfigurationBuilder)init
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(a2);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v4 stringWithFormat:@"%@ is not allowed for %@", v5, v7];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = NSStringFromSelector(a2);
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    *buf = 138544642;
    v13 = v9;
    v14 = 2114;
    v15 = v11;
    v16 = 2048;
    v17 = self;
    v18 = 2114;
    v19 = @"FBSDisplayConfigurationBuilder.m";
    v20 = 1024;
    v21 = 52;
    v22 = 2114;
    v23 = v8;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v8 UTF8String];
  _bs_set_crash_log_message();
}

- (FBSDisplayConfigurationBuilder)initWithConfiguration:(id)a3
{
  v5 = a3;
  NSClassFromString(&cfstr_Fbsdisplayconf_0.isa);
  if (!v5)
  {
    [FBSDisplayConfigurationBuilder initWithConfiguration:a2];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBSDisplayConfigurationBuilder initWithConfiguration:a2];
  }

  v10.receiver = self;
  v10.super_class = FBSDisplayConfigurationBuilder;
  v6 = [(FBSDisplayConfigurationBuilder *)&v10 init];
  if (v6)
  {
    v7 = [v5 copy];
    configuration = v6->_configuration;
    v6->_configuration = v7;

    v6->_lock._os_unfair_lock_opaque = 0;
  }

  return v6;
}

- (id)_lock_sanitizedModeForMode:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [FBSDisplayConfigurationBuilder _lock_sanitizedModeForMode:a2];
  }

  v6 = v5;
  v7 = [(FBSDisplayConfiguration *)self->_configuration availableModes];
  v8 = [v7 containsObject:v6];

  if (v8 || (v10 = [(FBSDisplayConfiguration *)self->_configuration _nativeRotation], v11 = *(v6 + 8), v10 == v11) && v6[72] == 1)
  {
    v9 = v6;
  }

  else
  {
    v12 = ((v10 & 0xFFFFFFFFFFFFFFFDLL) != 1) ^ ((v11 & 0xFFFFFFFFFFFFFFFDLL) == 1);
    v13 = v12 == 0;
    if (v12)
    {
      v14 = &OBJC_IVAR___FBSDisplayMode__height;
    }

    else
    {
      v14 = &OBJC_IVAR___FBSDisplayMode__width;
    }

    v15 = *&v6[*v14];
    if (v13)
    {
      v16 = &OBJC_IVAR___FBSDisplayMode__height;
    }

    else
    {
      v16 = &OBJC_IVAR___FBSDisplayMode__width;
    }

    LOBYTE(v19) = 1;
    v9 = [[FBSDisplayMode alloc] _initWithWidth:*&v6[*v16] height:v15 preferredScale:*(v6 + 3) scaleOverride:*(v6 + 6) refreshRate:*(v6 + 7) gamut:v10 hdr:*(v6 + 4) rotation:*(v6 + 5) virtual:v19 validityCheck:2];
  }

  v17 = v9;

  return v17;
}

- (id)buildWithError:(id *)a3
{
  v91 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v5 = [(FBSDisplayConfiguration *)self->_configuration identity];
  v6 = v5;
  if (self->_lock_secure || self->_lock_mainLike || self->_lock_uniqueIdentifier || self->_lock_displayTypeSet)
  {
    p_lock_displayType = (v5 + 24);
    if (self->_lock_displayTypeSet)
    {
      v8 = 0;
    }

    else
    {
      v8 = *(v5 + 48);
    }

    if (self->_lock_displayTypeSet)
    {
      p_lock_displayType = &self->_lock_displayType;
    }

    v9 = *p_lock_displayType;
    v10 = [FBSDisplayIdentity alloc];
    lock_mainLike = self->_lock_mainLike;
    if ((lock_mainLike & 1) == 0)
    {
      lock_mainLike = *(v6 + 52);
    }

    lock_uniqueIdentifier = self->_lock_uniqueIdentifier;
    if (!lock_uniqueIdentifier)
    {
      lock_uniqueIdentifier = *(v6 + 8);
    }

    lock_secure = self->_lock_secure;
    if ((lock_secure & 1) == 0)
    {
      lock_secure = *(v6 + 54);
    }

    v14 = *(v6 + 16);
    if (!v14)
    {
      v14 = v6;
    }

    LOBYTE(v79) = lock_secure;
    LOBYTE(v78) = *(v6 + 53);
    v15 = [(FBSDisplayIdentity *)v10 _initWithType:v9 UIKitMainLike:lock_mainLike displayID:*(v6 + 40) connectionType:*(v6 + 32) connectionSeed:*(v6 + 44) pid:v8 external:v78 uniqueIdentifier:lock_uniqueIdentifier secure:v79 root:v14];

    v6 = v15;
  }

  v16 = self->_configuration->_currentMode;
  v17 = self->_configuration->_preferredMode;
  v18 = self->_configuration->_otherModes;
  lock_currentMode = self->_lock_currentMode;
  v20 = lock_currentMode != 0;
  v85 = a3;
  if (!lock_currentMode)
  {
    v36 = 0;
    v21 = v16;
    goto LABEL_28;
  }

  v21 = [(FBSDisplayConfigurationBuilder *)self _lock_sanitizedModeForMode:?];

  if (v21 || (__displayBuilderError(1, @"sanitizing currentMode failed : %@ : base=%@", v22, v23, v24, v25, v26, v27, self->_lock_currentMode), (v38 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v84 = v20;
    if (self->_lock_preferredMode)
    {
      v28 = [(FBSDisplayConfigurationBuilder *)self _lock_sanitizedModeForMode:?];

      v17 = v28;
      if (!v28)
      {
        v35 = __displayBuilderError(2, @"sanitizing preferredMode failed : %@ : base=%@", v29, v30, v31, v32, v33, v34, self->_lock_preferredMode);
        if (v35)
        {
          v36 = v35;
          v37 = v18;
          goto LABEL_45;
        }
      }
    }

    else
    {

      v17 = 0;
    }

    v37 = [MEMORY[0x1E695DFA8] setWithCapacity:{-[NSSet count](v18, "count")}];
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v41 = self->_lock_otherModes;
    v36 = [(NSSet *)v41 countByEnumeratingWithState:&v86 objects:v90 count:16];
    if (v36)
    {
      v82 = v17;
      v83 = v21;
      v42 = *v87;
      while (2)
      {
        for (i = 0; i != v36; i = i + 1)
        {
          if (*v87 != v42)
          {
            objc_enumerationMutation(v41);
          }

          v44 = *(*(&v86 + 1) + 8 * i);
          v45 = [(FBSDisplayConfigurationBuilder *)self _lock_sanitizedModeForMode:v44];
          if (!v45)
          {
            v36 = __displayBuilderError(3, @"sanitizing otherMode failed : %@ : base=%@", v46, v47, v48, v49, v50, v51, v44);
            goto LABEL_43;
          }

          v52 = v45;
          [v37 addObject:v45];
        }

        v36 = [(NSSet *)v41 countByEnumeratingWithState:&v86 objects:v90 count:16];
        if (v36)
        {
          continue;
        }

        break;
      }

LABEL_43:
      v17 = v82;
      v21 = v83;
    }

LABEL_45:
    v20 = v84;
    if (v36)
    {
      goto LABEL_29;
    }

    goto LABEL_46;
  }

  v36 = v38;
  v21 = 0;
LABEL_28:
  v37 = v18;
  if (v36)
  {
LABEL_29:
    os_unfair_lock_unlock(&self->_lock);
LABEL_30:
    if (*v85)
    {
      v39 = v36;
      v40 = 0;
      *v85 = v36;
    }

    else
    {
      v40 = 0;
    }

    goto LABEL_71;
  }

LABEL_46:
  configuration = self->_configuration;
  if (self->_lock_geometrySet)
  {
    p_lock_bounds = &self->_lock_bounds;
    p_y = &self->_lock_bounds.origin.y;
    p_size = &self->_lock_bounds.size;
    p_height = &self->_lock_bounds.size.height;
    v20 = 1;
  }

  else
  {
    p_lock_bounds = &configuration->_bounds;
    p_height = &configuration->_bounds.size.height;
    p_size = &configuration->_bounds.size;
    p_y = &configuration->_bounds.origin.y;
  }

  if (self->_lock_cloningSet)
  {
    lock_cloningSupported = self->_lock_cloningSupported;
    v20 = 1;
  }

  else
  {
    lock_cloningSupported = configuration->_cloningSupported;
  }

  if (self->_lock_overscanSet)
  {
    p_lock_overscanCompensation = &self->_lock_overscanCompensation;
    lock_overscanned = self->_lock_overscanned;
    v20 = 1;
  }

  else
  {
    lock_overscanned = configuration->_overscanned;
    p_lock_overscanCompensation = &configuration->_overscanCompensation;
  }

  v61 = *p_height;
  width = p_size->width;
  v63 = *p_y;
  x = p_lock_bounds->origin.x;
  v65 = *p_lock_overscanCompensation;
  if (self->_lock_displayTypeSet)
  {
    v81 = lock_cloningSupported;
    if ([(FBSDisplayConfiguration *)configuration isVirtualized]&& !self->_lock_displayType)
    {
      v36 = __displayBuilderError(4, @"cannot build a virtualized display configuration that's main display type.", v66, v67, v68, v69, v70, v71, v78);
    }

    else
    {
      v36 = 0;
    }

    tags = FBSDisplayTypeToDisplayTag(self->_lock_displayType);
    os_unfair_lock_unlock(&self->_lock);
    if (v36)
    {
      goto LABEL_30;
    }

    v20 = 1;
    lock_cloningSupported = v81;
  }

  else
  {
    tags = configuration->_tags;
    os_unfair_lock_unlock(&self->_lock);
  }

  v73 = [FBSDisplayConfiguration alloc];
  v74 = self->_configuration;
  v75 = !v20 && v74->_noEqual_comparable;
  BYTE1(v80) = lock_overscanned;
  LOBYTE(v80) = lock_cloningSupported;
  v76 = [(FBSDisplayConfiguration *)v73 _initWithIdentity:v6 hardwareIdentifier:v74->_hardwareIdentifier name:v74->_name deviceName:v74->_deviceName seed:v74->_noEqual_seed comparable:v75 tags:tags currentMode:v21 preferredMode:v17 otherModes:v37 cloningSupported:v80 overscanned:v65 overscanCompensation:*&x safeOverscanRatio:v63 pixelSize:*&width nativeBounds:v61 bounds:*&v74->_latency latency:v74 originatingConfiguration:2 validityCheck:?];
  if (!v76)
  {
    FBSDisplayOverscanCompensationDescription(v65);
    objc_claimAutoreleasedReturnValue();
    BSNSStringFromCGSize();
  }

  v40 = v76;
  if (!v20)
  {
    objc_storeStrong((v76 + 176), self->_configuration->_immutableCADisplay);
  }

  objc_storeStrong(v40 + 23, self->_configuration->_caDisplay);
  v36 = 0;
LABEL_71:

  return v40;
}

- (void)setUniqueIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [v4 copy];

  lock_uniqueIdentifier = self->_lock_uniqueIdentifier;
  self->_lock_uniqueIdentifier = v5;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setCurrentMode:(id)a3 preferredMode:(id)a4 otherModes:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v9;
  NSClassFromString(&cfstr_Fbsdisplaymode.isa);
  if (v12)
  {
    if (objc_opt_isKindOfClass())
    {

      v13 = v10;
      NSClassFromString(&cfstr_Fbsdisplaymode.isa);
      if (v13)
      {
        if (objc_opt_isKindOfClass())
        {

          v14 = v11;
          if (!v14 || (NSClassFromString(&cfstr_Nsset.isa), (objc_opt_isKindOfClass() & 1) != 0))
          {

            v26 = 0u;
            v27 = 0u;
            v24 = 0u;
            v25 = 0u;
            v15 = v14;
            v16 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
            if (v16)
            {
              v17 = v16;
              v18 = *v25;
              do
              {
                for (i = 0; i != v17; ++i)
                {
                  if (*v25 != v18)
                  {
                    objc_enumerationMutation(v15);
                  }

                  v20 = *(*(&v24 + 1) + 8 * i);
                  NSClassFromString(&cfstr_Fbsdisplaymode.isa);
                  if (!v20)
                  {
                    [FBSDisplayConfigurationBuilder setCurrentMode:a2 preferredMode:? otherModes:?];
                  }

                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    [FBSDisplayConfigurationBuilder setCurrentMode:a2 preferredMode:? otherModes:?];
                  }
                }

                v17 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
              }

              while (v17);
            }

            os_unfair_lock_lock(&self->_lock);
            v21 = [v15 mutableCopy];
            [v21 removeObject:v12];
            [v21 removeObject:v13];
            v22 = [v12 copy];
            lock_currentMode = self->_lock_currentMode;
            self->_lock_currentMode = v22;

            BSEqualObjects();
          }

          [FBSDisplayConfigurationBuilder setCurrentMode:a2 preferredMode:? otherModes:?];
        }

        [FBSDisplayConfigurationBuilder setCurrentMode:a2 preferredMode:? otherModes:?];
      }

      [FBSDisplayConfigurationBuilder setCurrentMode:a2 preferredMode:? otherModes:?];
    }

    [FBSDisplayConfigurationBuilder setCurrentMode:a2 preferredMode:? otherModes:?];
  }

  [FBSDisplayConfigurationBuilder setCurrentMode:a2 preferredMode:? otherModes:?];
}

- (void)setPixelSize:(CGSize)a3 nativeBounds:(CGRect)a4 bounds:(CGRect)a5
{
  if (a3.width <= 0.0 || a3.width > 100000.0 || a3.height <= 0.0 || a3.height > 100000.0)
  {
    [FBSDisplayConfigurationBuilder setPixelSize:nativeBounds:bounds:];
  }

  x = a4.origin.x;
  y = a4.origin.y;
  height = a4.size.height;
  width = a4.size.width;
  if (CGRectIsEmpty(a4) || (v12.origin.x = x, v12.origin.y = y, v12.size.width = width, v12.size.height = height, CGRectIsInfinite(v12)))
  {
    [FBSDisplayConfigurationBuilder setPixelSize:nativeBounds:bounds:];
  }

  if (CGRectIsEmpty(a5) || CGRectIsInfinite(a5))
  {
    [FBSDisplayConfigurationBuilder setPixelSize:nativeBounds:bounds:];
  }

  os_unfair_lock_lock(&self->_lock);
  self->_lock_geometrySet = 1;
  self->_lock_pixelSize = a3;
  self->_lock_nativeBounds.origin.x = x;
  self->_lock_nativeBounds.origin.y = y;
  self->_lock_nativeBounds.size.width = width;
  self->_lock_nativeBounds.size.height = height;
  self->_lock_bounds = a5;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setExpectsSecureRendering
{
  os_unfair_lock_lock(&self->_lock);
  self->_lock_secure = 1;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setUIKitMainLike
{
  os_unfair_lock_lock(&self->_lock);
  self->_lock_mainLike = 1;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setCloningSupported:(BOOL)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_lock_cloningSet = 1;
  self->_lock_cloningSupported = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setOverscanned:(BOOL)a3 compensation:(int64_t)a4 safeRatio:(CGSize)a5
{
  if (FBSDisplayOverscanCompensationIsValid(a4))
  {
    BSFloatGreaterThanOrEqualToFloat();
  }

  [FBSDisplayConfigurationBuilder setOverscanned:a4 compensation:a2 safeRatio:?];
}

- (void)setDisplayType:(int64_t)a3
{
  if ((FBSDisplayTypeIsValid(a3) & 1) == 0)
  {
    [(FBSDisplayConfigurationBuilder *)a3 setDisplayType:a2];
  }

  if (!a3)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"do not set the display type to main, use mainConfiguration on FBDisplayManager."];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [(FBSDisplayConfigurationBuilder *)a2 setDisplayType:v6];
    }

    [v6 UTF8String];
    _bs_set_crash_log_message();
  }

  if (a3 == 1)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"do not set the display type to airPlay, find that display via FBDisplayManager."];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [(FBSDisplayConfigurationBuilder *)a2 setDisplayType:v7];
    }

    [v7 UTF8String];
    _bs_set_crash_log_message();
  }

  os_unfair_lock_lock(&self->_lock);
  self->_lock_displayTypeSet = 1;
  self->_lock_displayType = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)initWithConfiguration:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:FBSDisplayConfigurationClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)initWithConfiguration:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_lock_sanitizedModeForMode:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"mode", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)setCurrentMode:(char *)a1 preferredMode:otherModes:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:FBSDisplayModeClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)setCurrentMode:(char *)a1 preferredMode:otherModes:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:FBSDisplayModeClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)setCurrentMode:(char *)a1 preferredMode:otherModes:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSSetClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)setCurrentMode:(char *)a1 preferredMode:otherModes:.cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:FBSDisplayModeClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)setCurrentMode:(char *)a1 preferredMode:otherModes:.cold.5(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)setCurrentMode:(uint64_t)a1 preferredMode:(char *)a2 otherModes:.cold.6(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"mode is invalid : %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_12();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, a1, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
}

- (void)setCurrentMode:(char *)a1 preferredMode:otherModes:.cold.7(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)setCurrentMode:(char *)a1 preferredMode:otherModes:.cold.8(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)setOverscanned:(uint64_t)a1 compensation:(char *)a2 safeRatio:.cold.1(uint64_t a1, char *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v12 = FBSDisplayOverscanCompensationDescription(a1);
  v4 = [v3 stringWithFormat:@"invalid compensation : %@"];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v5 = OUTLINED_FUNCTION_5_2();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13, v14);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
}

- (void)setDisplayType:(unint64_t)a1 .cold.1(unint64_t a1, char *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v12 = FBSDisplayTypeDescription(a1);
  v4 = [v3 stringWithFormat:@"invalid display type : %@"];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v5 = OUTLINED_FUNCTION_5_2();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13, v14);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
}

- (void)setDisplayType:(uint64_t)a3 .cold.2(const char *a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = NSStringFromSelector(a1);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  OUTLINED_FUNCTION_0_1();
  v9 = @"FBSDisplayConfigurationBuilder.m";
  v10 = 1024;
  v11 = 392;
  v12 = v7;
  v13 = a3;
  _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, 0x3Au);
}

- (void)setDisplayType:(uint64_t)a3 .cold.3(const char *a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = NSStringFromSelector(a1);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  OUTLINED_FUNCTION_0_1();
  v9 = @"FBSDisplayConfigurationBuilder.m";
  v10 = 1024;
  v11 = 391;
  v12 = v7;
  v13 = a3;
  _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, 0x3Au);
}

@end