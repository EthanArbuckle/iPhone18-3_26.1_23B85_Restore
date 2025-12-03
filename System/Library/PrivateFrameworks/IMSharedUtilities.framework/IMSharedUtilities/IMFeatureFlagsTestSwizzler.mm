@interface IMFeatureFlagsTestSwizzler
- (IMFeatureFlagsTestSwizzler)initWithFeature:(SEL)feature enabled:(BOOL)enabled;
- (SEL)feature;
- (SEL)testMethod;
- (void)dealloc;
- (void)swizzle;
- (void)unswizzle;
@end

@implementation IMFeatureFlagsTestSwizzler

- (IMFeatureFlagsTestSwizzler)initWithFeature:(SEL)feature enabled:(BOOL)enabled
{
  v34.receiver = self;
  v34.super_class = IMFeatureFlagsTestSwizzler;
  v6 = [(IMFeatureFlagsTestSwizzler *)&v34 init];
  if (!v6)
  {
    return v6;
  }

  if ((IMIsRunningInUnitTesting() & 1) == 0)
  {
    v30 = MEMORY[0x1E695DF30];
    v31 = @"IMFeatureFlagsNotRunningUnitTests";
    v32 = @"Swizzling for testing is not permitted outside of testing.";
    goto LABEL_24;
  }

  v6->_enabled = enabled;
  if (feature)
  {
    featureCopy = feature;
  }

  else
  {
    featureCopy = 0;
  }

  v6->_feature = featureCopy;
  v8 = [[IMSwizzledMethod alloc] initWithClass:objc_opt_class() selector:feature];
  originalMethod = v6->_originalMethod;
  v6->_originalMethod = v8;

  enabled = v6->_enabled;
  p_testMethod = &v6->_testMethod;
  v12 = MEMORY[0x1E696AEC0];
  v13 = NSStringFromSelector(feature);
  v14 = v13;
  if (enabled)
  {
    v15 = [v12 stringWithFormat:@"%@_SwizzledOnForTests", v13];
    v16 = NSSelectorFromString(v15);
    v17 = sub_1A861F8F4;
  }

  else
  {
    v15 = [v12 stringWithFormat:@"%@_SwizzledOffForTests", v13];
    v16 = NSSelectorFromString(v15);
    v17 = sub_1A861F8FC;
  }

  v18 = v17;
  if (v16)
  {
    v19 = v16;
  }

  else
  {
    v19 = 0;
  }

  *p_testMethod = v19;

  v20 = +[IMFeatureFlags sharedFeatureFlags];
  v21 = objc_opt_respondsToSelector();

  if ((v21 & 1) == 0)
  {
    v22 = objc_opt_class();
    v23 = *p_testMethod ? *p_testMethod : 0;
    if (!class_addMethod(v22, v23, v18, [(IMSwizzledMethod *)v6->_originalMethod typeEncoding]))
    {
      v30 = MEMORY[0x1E695DF30];
      v31 = @"IMFeatureFlagsCreatingTestMethodFailed";
      v32 = @"Creating test method failed";
LABEL_24:
      v33 = [v30 exceptionWithName:v31 reason:v32 userInfo:0];
      objc_exception_throw(v33);
    }
  }

  v24 = [IMSwizzledMethod alloc];
  v25 = objc_opt_class();
  if (*p_testMethod)
  {
    v26 = *p_testMethod;
  }

  else
  {
    v26 = 0;
  }

  v27 = [(IMSwizzledMethod *)v24 initWithClass:v25 selector:v26];
  replacementMethod = v6->_replacementMethod;
  v6->_replacementMethod = v27;

  return v6;
}

- (void)swizzle
{
  if ([(IMFeatureFlagsTestSwizzler *)self isSwizzled])
  {
    v3 = MEMORY[0x1E695DF30];
    v4 = @"IMFeatureFlagTestSwizzerSwizzlingFailedAlreadySwizzling";
    v5 = @"Already swizzing a test";
    goto LABEL_8;
  }

  if (![(IMSwizzledMethod *)self->_originalMethod swizzleWithMethod:self->_replacementMethod])
  {
    v3 = MEMORY[0x1E695DF30];
    v4 = @"IMFeatureFlagTestSwizzerFailed";
    v5 = @"Failed to swizzle test method";
LABEL_8:
    v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
    objc_exception_throw(v6);
  }

  v7 = [(IMSwizzledMethod *)self->_originalMethod description];
  NSLog(&cfstr_Imfeatureflags_1.isa, v7);
}

- (void)unswizzle
{
  if (![(IMFeatureFlagsTestSwizzler *)self isSwizzled])
  {
    v3 = MEMORY[0x1E695DF30];
    v4 = @"IMFeatureFlagTestSwizzerUnswizzlingFailedNotSwizzling";
    v5 = @"Not swizzling a test";
    goto LABEL_8;
  }

  if (![(IMSwizzledMethod *)self->_originalMethod unswizzle])
  {
    v3 = MEMORY[0x1E695DF30];
    v4 = @"IMFeatureFlagTestSwizzerFailed";
    v5 = @"Failed to unswizzle test method";
LABEL_8:
    v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
    objc_exception_throw(v6);
  }

  v7 = [(IMSwizzledMethod *)self->_originalMethod description];
  NSLog(&cfstr_Imfeatureflags_2.isa, v7);
}

- (void)dealloc
{
  if ([(IMFeatureFlagsTestSwizzler *)self isSwizzled])
  {
    [(IMFeatureFlagsTestSwizzler *)self unswizzle];
  }

  v3.receiver = self;
  v3.super_class = IMFeatureFlagsTestSwizzler;
  [(IMFeatureFlagsTestSwizzler *)&v3 dealloc];
}

- (SEL)feature
{
  if (self->_feature)
  {
    return self->_feature;
  }

  else
  {
    return 0;
  }
}

- (SEL)testMethod
{
  if (self->_testMethod)
  {
    return self->_testMethod;
  }

  else
  {
    return 0;
  }
}

@end