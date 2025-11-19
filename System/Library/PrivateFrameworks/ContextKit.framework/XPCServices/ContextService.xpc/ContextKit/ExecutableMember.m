@interface ExecutableMember
- (BOOL)isEqual:(id)a3;
- (BOOL)isSynthetic;
- (BOOL)isVarArgs;
- (ExecutableMember)initWithMethodSignature:(id)a3 selector:(SEL)a4 class:(id)a5 metadata:(id)a6;
- (const)getBinaryParameterTypes;
- (id)getDeclaredAnnotations;
- (id)getExceptionTypes;
- (id)getGenericExceptionTypes;
- (id)getGenericParameterTypes;
- (id)getParameterAnnotations;
- (id)getParameterTypes;
- (id)getTypeParameters;
- (id)internalName;
- (id)toGenericString;
- (int)getModifiers;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation ExecutableMember

- (ExecutableMember)initWithMethodSignature:(id)a3 selector:(SEL)a4 class:(id)a5 metadata:(id)a6
{
  v13.receiver = self;
  v13.super_class = ExecutableMember;
  v10 = [(JavaLangReflectAccessibleObject *)&v13 init];
  if (v10)
  {
    v10->methodSignature_ = a3;
    if (a4)
    {
      v11 = a4;
    }

    else
    {
      v11 = 0;
    }

    v10->selector_ = v11;
    v10->class_ = a5;
    v10->metadata_ = a6;
  }

  return v10;
}

- (int)getModifiers
{
  metadata = self->metadata_;
  if (metadata)
  {
    return [(JavaMethodMetadata *)metadata modifiers];
  }

  else
  {
    return 1;
  }
}

- (id)getParameterTypes
{
  v3 = [(ExecutableMember *)self getNumParams];
  v4 = [IOSObjectArray arrayWithLength:v3 type:IOSClass_class_()];
  if (self->selector_)
  {
    selector = self->selector_;
  }

  else
  {
    selector = 0;
  }

  v6 = NSStringFromSelector(selector);
  if ([(NSString *)v6 hasPrefix:@"init"])
  {
    v7 = [[(NSString *)v6 substringFromIndex:4] componentsSeparatedByString:@":"];
    if (v3 < 1)
    {
      return v4;
    }

    goto LABEL_12;
  }

  if (v3 > 0)
  {
    v8 = [(NSString *)v6 rangeOfString:@":"];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = [(NSString *)v6 rangeOfString:@"With" options:4 range:0, v8];
      if (v9 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v6 = [(NSString *)v6 substringFromIndex:v9];
      }
    }

    v7 = [(NSString *)v6 componentsSeparatedByString:@":"];
LABEL_12:
    v10 = v7;
    v11 = 0;
    v12 = 0x200000000;
    while (1)
    {
      v13 = [(NSMethodSignature *)self->methodSignature_ getArgumentTypeAtIndex:v12 >> 32];
      v14 = [(NSArray *)v10 objectAtIndex:v11];
      if (([v14 hasPrefix:@"with"] & 1) == 0 && (objc_msgSend(v14, "hasPrefix:", @"With") & 1) == 0)
      {
        break;
      }

      v15 = [v14 substringFromIndex:4];
      v16 = v15;
      if (*v13 == 64)
      {
        if ([v15 hasSuffix:@"Array"])
        {
          v17 = [v16 substringToIndex:{objc_msgSend(v16, "length") - 5}];
          v18 = sub_10027FAF0(v17);
          if (!v18)
          {
            v18 = [IOSClass classForIosName:v17];
            if (!v18)
            {
LABEL_24:
              v20 = NSObject_class_();
              goto LABEL_25;
            }
          }

          v19 = IOSClass_arrayOf(v18);
        }

        else
        {
          v19 = [IOSClass classForIosName:v16];
        }
      }

      else
      {
        v19 = sub_10027FAF0(v15);
      }

      v21 = v19;
      if (!v19)
      {
        goto LABEL_24;
      }

LABEL_26:
      [(IOSObjectArray *)v4 replaceObjectAtIndex:v11++ withObject:v21];
      v12 += &_mh_execute_header;
      if (v3 == v11)
      {
        return v4;
      }
    }

    v20 = decodeTypeEncoding(v13);
LABEL_25:
    v21 = v20;
    goto LABEL_26;
  }

  [(NSString *)v6 componentsSeparatedByString:@":"];
  return v4;
}

- (const)getBinaryParameterTypes
{
  binaryParameterTypes = self->binaryParameterTypes_;
  if (!binaryParameterTypes)
  {
    v4 = [(ExecutableMember *)self getParameterTypes];
    v5 = [v4 length];
    binaryParameterTypes = malloc_type_malloc(v5 + 1, 0x100004077774924uLL);
    v6 = binaryParameterTypes;
    if (v5 >= 1)
    {
      for (i = 0; i != v5; ++i)
      {
        binaryParameterTypes[i] = *[objc_msgSend(objc_msgSend(v4 objectAtIndex:{i), "binaryName"), "UTF8String"}];
      }

      v6 = &binaryParameterTypes[i];
    }

    *v6 = 0;
    self->binaryParameterTypes_ = binaryParameterTypes;
  }

  return binaryParameterTypes;
}

- (id)getTypeParameters
{
  result = *(sub_10027F124(self) + 4);
  if (*(result + 2))
  {

    return [result clone];
  }

  return result;
}

- (id)getGenericParameterTypes
{
  v2 = *(sub_10027F124(self) + 2);

  return LibcoreReflectTypes_getTypeArray_clone_(v2, 0);
}

- (id)getGenericExceptionTypes
{
  v2 = *(sub_10027F124(self) + 1);

  return LibcoreReflectTypes_getTypeArray_clone_(v2, 0);
}

- (BOOL)isSynthetic
{
  metadata = self->metadata_;
  if (metadata)
  {
    LODWORD(metadata) = ([(JavaMethodMetadata *)metadata modifiers]>> 12) & 1;
  }

  return metadata;
}

- (id)getExceptionTypes
{
  result = [(JavaMethodMetadata *)self->metadata_ exceptionTypes];
  if (!result)
  {
    v3 = IOSClass_class_();

    return [IOSObjectArray arrayWithLength:0 type:v3];
  }

  return result;
}

- (id)internalName
{
  selector = self->selector_;
  if (!selector)
  {
    return NSStringFromSelector(0);
  }

  v3 = self->selector_;
  return NSStringFromSelector(selector);
}

- (id)getDeclaredAnnotations
{
  v3 = [(IOSClass *)self->class_ objcClass];
  if (v3 && JreFindClassMethod(v3, -[NSString UTF8String](+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"__annotations_%@", [-[ExecutableMember internalName](self "internalName")]), "UTF8String")))
  {

    method_invoke();
  }

  else
  {
    v5 = JavaLangAnnotationAnnotation_class_();

    return [IOSObjectArray arrayWithLength:0 type:v5];
  }

  return result;
}

- (id)getParameterAnnotations
{
  v3 = [(IOSClass *)self->class_ objcClass];
  if (v3 && JreFindClassMethod(v3, -[NSString UTF8String](+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"__annotations_%@_params", [-[ExecutableMember internalName](self "internalName")]), "UTF8String")))
  {

    method_invoke();
  }

  else
  {
    v5[0] = [(NSMethodSignature *)self->methodSignature_ numberOfArguments]- 2;
    v5[1] = 0;
    return [IOSObjectArray arrayWithDimensions:2 lengths:v5 type:JavaLangAnnotationAnnotation_class_()];
  }

  return result;
}

- (id)toGenericString
{
  v3 = [[JavaLangStringBuilder alloc] initWithInt:80];
  v4 = sub_10027F124(self);
  v5 = [(ExecutableMember *)self getModifiers];
  if (v5)
  {
    [-[JavaLangStringBuilder appendWithNSString:](v3 appendWithNSString:{JavaLangReflectModifier_toStringWithInt_(v5 & 0xFF7F)), "appendWithChar:", 32}];
  }

  if (v4)
  {
    v6 = *(v4 + 4);
    if (v6)
    {
      if (*(v6 + 8) >= 1)
      {
        [(JavaLangStringBuilder *)v3 appendWithChar:60];
        v7 = *(v4 + 4);
        if (*(v7 + 8) >= 1)
        {
          v8 = 0;
          do
          {
            LibcoreReflectTypes_appendGenericType_type_(v3, *(v7 + 24 + 8 * v8));
            v7 = *(v4 + 4);
            v9 = *(v7 + 8);
            if (v8 < v9 - 1)
            {
              [(JavaLangStringBuilder *)v3 appendWithNSString:@", "];
              v7 = *(v4 + 4);
              v9 = *(v7 + 8);
            }

            ++v8;
          }

          while (v8 < v9);
        }

        [(JavaLangStringBuilder *)v3 appendWithNSString:@"> "];
      }
    }
  }

  v10 = [(ExecutableMember *)self getDeclaringClass];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    LibcoreReflectTypes_appendTypeName_class_(v3, v10);
  }

  else
  {
    if (v4)
    {
      Type = LibcoreReflectTypes_getType_(*(v4 + 3));
      LibcoreReflectTypes_appendGenericType_type_(v3, Type);
    }

    [(JavaLangStringBuilder *)v3 appendWithChar:32];
    LibcoreReflectTypes_appendTypeName_class_(v3, v10);
    [-[JavaLangStringBuilder appendWithNSString:](v3 appendWithNSString:{@".", "appendWithNSString:", -[ExecutableMember getName](self, "getName")}];
  }

  [(JavaLangStringBuilder *)v3 appendWithChar:40];
  if (v4)
  {
    LibcoreReflectTypes_appendArrayGenericType_types_(v3, [*(v4 + 2) getResolvedTypes]);
    [(JavaLangStringBuilder *)v3 appendWithChar:41];
    TypeArray_clone = LibcoreReflectTypes_getTypeArray_clone_(*(v4 + 1), 0);
    if (TypeArray_clone[2] >= 1)
    {
      v13 = TypeArray_clone;
      [(JavaLangStringBuilder *)v3 appendWithNSString:@" throws "];
      LibcoreReflectTypes_appendArrayGenericType_types_(v3, v13);
    }
  }

  else
  {
    [(JavaLangStringBuilder *)v3 appendWithChar:41];
  }

  return [(JavaLangStringBuilder *)v3 description];
}

- (BOOL)isVarArgs
{
  metadata = self->metadata_;
  if (metadata)
  {
    LODWORD(metadata) = ([(JavaMethodMetadata *)metadata modifiers]>> 7) & 1;
  }

  return metadata;
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || self->class_ != *(a3 + 2))
  {
    return 0;
  }

  if (self->selector_)
  {
    selector = self->selector_;
  }

  else
  {
    selector = 0;
  }

  if (*(a3 + 3))
  {
    v7 = *(a3 + 3);
  }

  else
  {
    v7 = 0;
  }

  return sel_isEqual(selector, v7);
}

- (unint64_t)hash
{
  v3 = [-[IOSClass getName](self->class_ "getName")];
  if (self->selector_)
  {
    selector = self->selector_;
  }

  else
  {
    selector = 0;
  }

  return [NSStringFromSelector(selector) hash]^ v3;
}

- (void)dealloc
{
  free(self->binaryParameterTypes_);

  v3.receiver = self;
  v3.super_class = ExecutableMember;
  [(ExecutableMember *)&v3 dealloc];
}

@end