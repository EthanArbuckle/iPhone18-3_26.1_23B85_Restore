@interface IMSwizzledMethod
- (BOOL)isSwizzled;
- (BOOL)swizzleWithMethod:(id)a3;
- (BOOL)unswizzle;
- (IMSwizzledMethod)initWithClass:(Class)a3 selector:(SEL)a4;
- (id)description;
@end

@implementation IMSwizzledMethod

- (IMSwizzledMethod)initWithClass:(Class)a3 selector:(SEL)a4
{
  v9.receiver = self;
  v9.super_class = IMSwizzledMethod;
  v6 = [(IMSwizzledMethod *)&v9 init];
  if (v6)
  {
    InstanceMethod = class_getInstanceMethod(a3, a4);
    v6->_method = InstanceMethod;
    v6->_implementation = method_getImplementation(InstanceMethod);
    v6->_typeEncoding = method_getTypeEncoding(v6->_method);
    objc_storeStrong(&v6->_swizzledClass, a3);
    v6->_swizzledSelector = a4;
  }

  return v6;
}

- (BOOL)isSwizzled
{
  v2 = [(IMSwizzledMethod *)self swizzledWithMethod];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)swizzleWithMethod:(id)a3
{
  v4 = a3;
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
    if ([v4 isSwizzled])
    {
      v6 = IMLogHandleForCategory("IMSwizzledMethod");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1A88C3A48(v4);
      }
    }

    else
    {
      if (!strcmp(-[IMSwizzledMethod typeEncoding](self, "typeEncoding"), [v4 typeEncoding]))
      {
        method_setImplementation(-[IMSwizzledMethod method](self, "method"), [v4 implementation]);
        [(IMSwizzledMethod *)self setSwizzledWithMethod:v4];
        [v4 setSwizzledWithMethod:self];
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
  v3 = [(IMSwizzledMethod *)self isSwizzled];
  if (v3)
  {
    method_setImplementation([(IMSwizzledMethod *)self method], [(IMSwizzledMethod *)self implementation]);
    v4 = [(IMSwizzledMethod *)self swizzledWithMethod];
    [v4 setSwizzledWithMethod:0];

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

  return v3;
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

  v7 = [(IMSwizzledMethod *)self swizzledWithMethod];
  if (v7)
  {
    v8 = [(IMSwizzledMethod *)self swizzledWithMethod];
    v9 = NSStringFromSelector([v8 swizzledSelector]);
    v10 = [v3 stringWithFormat:@"<IMSwizzledMethod: swizzled class: %@, selector: %@, isSwizzled: %@, swizzled with method: %@>", v4, v5, v6, v9];
  }

  else
  {
    v10 = [v3 stringWithFormat:@"<IMSwizzledMethod: swizzled class: %@, selector: %@, isSwizzled: %@, swizzled with method: %@>", v4, v5, v6, @"NONE"];
  }

  return v10;
}

@end