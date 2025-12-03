@interface IMSwizzledMethod
- (BOOL)isSwizzled;
- (BOOL)swizzleWithMethod:(id)method;
- (BOOL)unswizzle;
- (IMSwizzledMethod)initWithClass:(Class)class selector:(SEL)selector;
- (id)description;
@end

@implementation IMSwizzledMethod

- (IMSwizzledMethod)initWithClass:(Class)class selector:(SEL)selector
{
  v9.receiver = self;
  v9.super_class = IMSwizzledMethod;
  v6 = [(IMSwizzledMethod *)&v9 init];
  if (v6)
  {
    InstanceMethod = class_getInstanceMethod(class, selector);
    v6->_method = InstanceMethod;
    v6->_implementation = method_getImplementation(InstanceMethod);
    v6->_typeEncoding = method_getTypeEncoding(v6->_method);
    objc_storeStrong(&v6->_swizzledClass, class);
    v6->_swizzledSelector = selector;
  }

  return v6;
}

- (BOOL)isSwizzled
{
  swizzledWithMethod = [(IMSwizzledMethod *)self swizzledWithMethod];
  v3 = swizzledWithMethod != 0;

  return v3;
}

- (BOOL)swizzleWithMethod:(id)method
{
  methodCopy = method;
  if ([(IMSwizzledMethod *)self isSwizzled])
  {
    v5 = IMLogHandleForCategory("IMSwizzledMethod");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C3AD0(self);
    }
  }

  else
  {
    if ([methodCopy isSwizzled])
    {
      v6 = IMLogHandleForCategory("IMSwizzledMethod");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1A88C3A48(methodCopy);
      }
    }

    else
    {
      if (!strcmp(-[IMSwizzledMethod typeEncoding](self, "typeEncoding"), [methodCopy typeEncoding]))
      {
        method_setImplementation(-[IMSwizzledMethod method](self, "method"), [methodCopy implementation]);
        [(IMSwizzledMethod *)self setSwizzledWithMethod:methodCopy];
        [methodCopy setSwizzledWithMethod:self];
        v7 = 1;
        goto LABEL_13;
      }

      v6 = IMLogHandleForCategory("IMSwizzledMethod");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1A88C3A04(v6);
      }
    }
  }

  v7 = 0;
LABEL_13:

  return v7;
}

- (BOOL)unswizzle
{
  isSwizzled = [(IMSwizzledMethod *)self isSwizzled];
  if (isSwizzled)
  {
    method_setImplementation([(IMSwizzledMethod *)self method], [(IMSwizzledMethod *)self implementation]);
    swizzledWithMethod = [(IMSwizzledMethod *)self swizzledWithMethod];
    [swizzledWithMethod setSwizzledWithMethod:0];

    [(IMSwizzledMethod *)self setSwizzledWithMethod:0];
  }

  else
  {
    v5 = IMLogHandleForCategory("IMSwizzledMethod");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C3B58(self);
    }
  }

  return isSwizzled;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = NSStringFromClass([(IMSwizzledMethod *)self swizzledClass]);
  v5 = NSStringFromSelector([(IMSwizzledMethod *)self swizzledSelector]);
  if ([(IMSwizzledMethod *)self isSwizzled])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  swizzledWithMethod = [(IMSwizzledMethod *)self swizzledWithMethod];
  if (swizzledWithMethod)
  {
    swizzledWithMethod2 = [(IMSwizzledMethod *)self swizzledWithMethod];
    v9 = NSStringFromSelector([swizzledWithMethod2 swizzledSelector]);
    v10 = [v3 stringWithFormat:@"<IMSwizzledMethod: swizzled class: %@, selector: %@, isSwizzled: %@, swizzled with method: %@>", v4, v5, v6, v9];
  }

  else
  {
    v10 = [v3 stringWithFormat:@"<IMSwizzledMethod: swizzled class: %@, selector: %@, isSwizzled: %@, swizzled with method: %@>", v4, v5, v6, @"NONE"];
  }

  return v10;
}

@end