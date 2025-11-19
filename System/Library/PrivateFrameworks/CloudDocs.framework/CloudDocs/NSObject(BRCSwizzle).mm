@interface NSObject(BRCSwizzle)
+ (BOOL)brc_swizzleClassMethod:()BRCSwizzle with:;
+ (BOOL)brc_swizzleClassMethod:()BRCSwizzle with:newSel:;
+ (BOOL)brc_swizzleInstanceMethod:()BRCSwizzle with:;
+ (BOOL)brc_swizzleInstanceMethod:()BRCSwizzle with:newSel:;
+ (uint64_t)brc_swizzleClassMethod:()BRCSwizzle with:newSel:usingBlock:;
+ (uint64_t)brc_swizzleInstanceMethod:()BRCSwizzle with:newSel:usingBlock:;
@end

@implementation NSObject(BRCSwizzle)

+ (BOOL)brc_swizzleInstanceMethod:()BRCSwizzle with:
{
  InstanceMethod = class_getInstanceMethod(a1, name);
  v8 = class_getInstanceMethod(a1, a4);
  if (InstanceMethod && (v9 = v8) != 0)
  {
    Implementation = method_getImplementation(v8);
    TypeEncoding = method_getTypeEncoding(v9);
    if (class_addMethod(a1, name, Implementation, TypeEncoding))
    {
      v12 = method_getImplementation(v9);
      v13 = method_getTypeEncoding(v9);
      class_replaceMethod(a1, name, v12, v13);
    }

    else
    {
      method_exchangeImplementations(v9, InstanceMethod);
    }

    return v9 == class_getInstanceMethod(a1, name);
  }

  else
  {
    v14 = brc_bread_crumbs("+[NSObject(BRCSwizzle) brc_swizzleInstanceMethod:with:]", 22);
    v15 = brc_default_log(0, 0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      +[NSObject(BRCSwizzle) brc_swizzleInstanceMethod:with:];
    }

    return 0;
  }
}

+ (BOOL)brc_swizzleClassMethod:()BRCSwizzle with:
{
  ClassMethod = class_getClassMethod(a1, name);
  v8 = class_getClassMethod(a1, a4);
  Class = object_getClass(a1);
  if (ClassMethod && v8)
  {
    v10 = Class;
    Implementation = method_getImplementation(v8);
    TypeEncoding = method_getTypeEncoding(v8);
    if (class_addMethod(v10, name, Implementation, TypeEncoding))
    {
      v13 = method_getImplementation(v8);
      v14 = method_getTypeEncoding(v8);
      class_replaceMethod(v10, name, v13, v14);
    }

    else
    {
      method_exchangeImplementations(v8, ClassMethod);
    }

    return v8 == class_getClassMethod(v10, name);
  }

  else
  {
    v15 = brc_bread_crumbs("+[NSObject(BRCSwizzle) brc_swizzleClassMethod:with:]", 41);
    v16 = brc_default_log(0, 0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      +[NSObject(BRCSwizzle) brc_swizzleInstanceMethod:with:];
    }

    return 0;
  }
}

+ (BOOL)brc_swizzleInstanceMethod:()BRCSwizzle with:newSel:
{
  InstanceMethod = class_getInstanceMethod(a1, name);
  v10 = class_getInstanceMethod(a4, a5);
  if (InstanceMethod && (v11 = v10) != 0)
  {
    Implementation = method_getImplementation(v10);
    TypeEncoding = method_getTypeEncoding(v11);
    if (class_addMethod(a1, name, Implementation, TypeEncoding))
    {
      v14 = method_getImplementation(v11);
      v15 = method_getTypeEncoding(v11);
      class_replaceMethod(a1, name, v14, v15);
    }

    else
    {
      method_exchangeImplementations(v11, InstanceMethod);
    }

    return v11 == class_getInstanceMethod(a1, name);
  }

  else
  {
    v16 = brc_bread_crumbs("+[NSObject(BRCSwizzle) brc_swizzleInstanceMethod:with:newSel:]", 59);
    v17 = brc_default_log(0, 0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      +[NSObject(BRCSwizzle) brc_swizzleInstanceMethod:with:];
    }

    return 0;
  }
}

+ (BOOL)brc_swizzleClassMethod:()BRCSwizzle with:newSel:
{
  ClassMethod = class_getClassMethod(a1, name);
  v10 = class_getClassMethod(a4, a5);
  Class = object_getClass(a1);
  if (ClassMethod && v10)
  {
    v12 = Class;
    Implementation = method_getImplementation(v10);
    TypeEncoding = method_getTypeEncoding(v10);
    if (class_addMethod(v12, name, Implementation, TypeEncoding))
    {
      v15 = method_getImplementation(v10);
      v16 = method_getTypeEncoding(v10);
      class_replaceMethod(v12, name, v15, v16);
    }

    else
    {
      method_exchangeImplementations(v10, ClassMethod);
    }

    return v10 == class_getClassMethod(v12, name);
  }

  else
  {
    v17 = brc_bread_crumbs("+[NSObject(BRCSwizzle) brc_swizzleClassMethod:with:newSel:]", 78);
    v18 = brc_default_log(0, 0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      +[NSObject(BRCSwizzle) brc_swizzleInstanceMethod:with:];
    }

    return 0;
  }
}

+ (uint64_t)brc_swizzleInstanceMethod:()BRCSwizzle with:newSel:usingBlock:
{
  v10 = a6;
  [a1 brc_swizzleInstanceMethod:a3 with:a4 newSel:a5];
  v10[2](v10);

  return [a1 brc_swizzleInstanceMethod:a5 with:a4 newSel:a3];
}

+ (uint64_t)brc_swizzleClassMethod:()BRCSwizzle with:newSel:usingBlock:
{
  v10 = a6;
  [a1 brc_swizzleClassMethod:a3 with:a4 newSel:a5];
  v10[2](v10);

  return [a1 brc_swizzleClassMethod:a5 with:a4 newSel:a3];
}

+ (void)brc_swizzleInstanceMethod:()BRCSwizzle with:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_1AE2A9000, v0, v1, "[CRIT] API MISUSE: one of the selectors has no implementation%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end