@interface IOSPrimitiveClass
- (BOOL)__convertRawValue:(id *)value toType:(id)type;
- (BOOL)__unboxValue:(id)value toRawValue:(id *)rawValue;
- (BOOL)isEqual:(id)equal;
- (Class)objcArrayClass;
- (IOSPrimitiveClass)initWithName:(id)name type:(id)type;
- (id)__boxValue:(id *)value;
- (id)getConstructorWithClasses:(id)classes;
- (id)getDeclaredMethod:(id)method;
- (id)getDeclaredMethods;
- (id)getMethod:(id)method;
- (id)wrapperClass;
- (unint64_t)getSizeof;
- (void)__readRawValue:(id *)value fromAddress:(const void *)address;
- (void)__writeRawValue:(id *)value toAddress:(const void *)address;
- (void)dealloc;
@end

@implementation IOSPrimitiveClass

- (IOSPrimitiveClass)initWithName:(id)name type:(id)type
{
  v8.receiver = self;
  v8.super_class = IOSPrimitiveClass;
  v6 = [(IOSPrimitiveClass *)&v8 init];
  if (v6)
  {
    v6->name_ = name;
    v6->type_ = type;
  }

  return v6;
}

- (id)getDeclaredMethods
{
  v2 = JavaLangReflectMethod_class_();

  return [IOSObjectArray arrayWithLength:0 type:v2];
}

- (id)getMethod:(id)method
{
  v3 = objc_alloc_init(JavaLangNoSuchMethodException);
  v4 = v3;
  objc_exception_throw(v3);
}

- (id)getDeclaredMethod:(id)method
{
  v3 = objc_alloc_init(JavaLangNoSuchMethodException);
  v4 = v3;
  objc_exception_throw(v3);
}

- (id)getConstructorWithClasses:(id)classes
{
  v3 = objc_alloc_init(JavaLangNoSuchMethodException);
  v4 = v3;
  objc_exception_throw(v3);
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  name = self->name_;
  v6 = *(equal + 1);

  return [(NSString *)name isEqual:v6];
}

- (Class)objcArrayClass
{
  v2 = [(NSString *)self->type_ characterAtIndex:0];
  if (v2 > 72)
  {
    if (v2 > 82)
    {
      if (v2 == 83)
      {
        v3 = off_1003E8C88;
        goto LABEL_20;
      }

      if (v2 == 90)
      {
        v3 = off_1003E8C50;
        goto LABEL_20;
      }
    }

    else
    {
      if (v2 == 73)
      {
        v3 = off_1003E8C78;
        goto LABEL_20;
      }

      if (v2 == 74)
      {
        v3 = off_1003E8C80;
        goto LABEL_20;
      }
    }

    return 0;
  }

  if (v2 > 67)
  {
    if (v2 == 68)
    {
      v3 = off_1003E8C68;
      goto LABEL_20;
    }

    if (v2 == 70)
    {
      v3 = off_1003E8C70;
      goto LABEL_20;
    }

    return 0;
  }

  if (v2 == 66)
  {
    v3 = off_1003E8C58;
    goto LABEL_20;
  }

  if (v2 != 67)
  {
    return 0;
  }

  v3 = off_1003E8C60;
LABEL_20:
  v4 = *v3;

  return objc_opt_class();
}

- (unint64_t)getSizeof
{
  v2 = [(NSString *)self->type_ characterAtIndex:0];
  result = 1;
  if (v2 <= 72)
  {
    if (v2 <= 67)
    {
      if (v2 == 66)
      {
        return result;
      }

      if (v2 != 67)
      {
        return 0;
      }

      return 2;
    }

    if (v2 != 68)
    {
      if (v2 == 70)
      {
        return 4;
      }

      return 0;
    }

    return 8;
  }

  if (v2 <= 82)
  {
    if (v2 == 73)
    {
      return 4;
    }

    if (v2 != 74)
    {
      return 0;
    }

    return 8;
  }

  if (v2 != 83)
  {
    if (v2 == 90)
    {
      return result;
    }

    return 0;
  }

  return 2;
}

- (id)__boxValue:(id *)value
{
  v4 = [(NSString *)self->type_ characterAtIndex:0];
  if (v4 > 72)
  {
    if (v4 > 82)
    {
      if (v4 == 83)
      {
        var3 = value->var3;

        return JavaLangShort_valueOfWithShort_(var3);
      }

      else
      {
        if (v4 != 90)
        {
          return 0;
        }

        var1 = value->var1;

        return JavaLangBoolean_valueOfWithBoolean_(var1);
      }
    }

    else if (v4 == 73)
    {
      var4 = value->var4;

      return JavaLangInteger_valueOfWithInt_(var4);
    }

    else
    {
      if (v4 != 74)
      {
        return 0;
      }

      var5 = value->var5;

      return JavaLangLong_valueOfWithLong_(var5);
    }
  }

  else if (v4 > 67)
  {
    if (v4 == 68)
    {
      v12 = value->var5;

      return JavaLangDouble_valueOfWithDouble_(*&v12);
    }

    else
    {
      if (v4 != 70)
      {
        return 0;
      }

      v8 = value->var4;

      return JavaLangFloat_valueOfWithFloat_(*&v8);
    }
  }

  else
  {
    if (v4 != 66)
    {
      if (v4 == 67)
      {
        var2 = value->var2;

        return JavaLangCharacter_valueOfWithChar_(var2);
      }

      return 0;
    }

    v10 = value->var1;

    return JavaLangByte_valueOfWithByte_(v10);
  }
}

- (id)wrapperClass
{
  v2 = [(NSString *)self->type_ characterAtIndex:0];
  if (v2 > 72)
  {
    if (v2 > 82)
    {
      if (v2 == 83)
      {

        return JavaLangShort_class_();
      }

      else
      {
        if (v2 != 90)
        {
          return 0;
        }

        return JavaLangBoolean_class_();
      }
    }

    else if (v2 == 73)
    {

      return JavaLangInteger_class_();
    }

    else
    {
      if (v2 != 74)
      {
        return 0;
      }

      return JavaLangLong_class_();
    }
  }

  else if (v2 > 67)
  {
    if (v2 == 68)
    {

      return JavaLangDouble_class_();
    }

    else
    {
      if (v2 != 70)
      {
        return 0;
      }

      return JavaLangFloat_class_();
    }
  }

  else
  {
    if (v2 != 66)
    {
      if (v2 == 67)
      {

        return JavaLangCharacter_class_();
      }

      return 0;
    }

    return JavaLangByte_class_();
  }
}

- (BOOL)__unboxValue:(id)value toRawValue:(id *)rawValue
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    rawValue->var1 = [value charValue];
    v7 = +[IOSClass byteClass];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      rawValue->var2 = [value charValue];
      v7 = +[IOSClass charClass];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [value doubleValue];
        rawValue->var5 = v8;
        v7 = +[IOSClass doubleClass];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [value floatValue];
          rawValue->var4 = v9;
          v7 = +[IOSClass floatClass];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            rawValue->var4 = [value intValue];
            v7 = +[IOSClass intClass];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              rawValue->var5 = [value longValue];
              v7 = +[IOSClass longClass];
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                rawValue->var2 = [value shortValue];
                v7 = +[IOSClass shortClass];
              }

              else
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  return 0;
                }

                rawValue->var1 = [value BOOLeanValue];
                v7 = +[IOSClass BOOLeanClass];
              }
            }
          }
        }
      }
    }
  }

  if (!v7)
  {
    return 0;
  }

  return [v7 __convertRawValue:rawValue toType:self];
}

- (void)__readRawValue:(id *)value fromAddress:(const void *)address
{
  v6 = [(NSString *)self->type_ characterAtIndex:0];
  if (v6 > 72)
  {
    if (v6 > 82)
    {
      if (v6 == 83)
      {
        goto LABEL_16;
      }

      if (v6 != 90)
      {
        return;
      }

      goto LABEL_15;
    }

    if (v6 == 73)
    {
      value->var4 = *address;
    }

    else if (v6 == 74)
    {
      value->var0 = *address;
    }
  }

  else
  {
    if (v6 <= 67)
    {
      if (v6 != 66)
      {
        if (v6 != 67)
        {
          return;
        }

LABEL_16:
        value->var2 = *address;
        return;
      }

LABEL_15:
      value->var1 = *address;
      return;
    }

    if (v6 == 68)
    {
      value->var0 = *address;
    }

    else if (v6 == 70)
    {
      value->var4 = *address;
    }
  }
}

- (void)__writeRawValue:(id *)value toAddress:(const void *)address
{
  v6 = [(NSString *)self->type_ characterAtIndex:0];
  if (v6 > 72)
  {
    if (v6 > 82)
    {
      if (v6 == 83)
      {
        goto LABEL_16;
      }

      if (v6 != 90)
      {
        return;
      }

      goto LABEL_15;
    }

    if (v6 == 73)
    {
      *address = value->var4;
    }

    else if (v6 == 74)
    {
      *address = value->var0;
    }
  }

  else
  {
    if (v6 <= 67)
    {
      if (v6 != 66)
      {
        if (v6 != 67)
        {
          return;
        }

LABEL_16:
        *address = value->var2;
        return;
      }

LABEL_15:
      *address = value->var1;
      return;
    }

    if (v6 == 68)
    {
      *address = value->var0;
    }

    else if (v6 == 70)
    {
      *address = value->var4;
    }
  }
}

- (BOOL)__convertRawValue:(id *)value toType:(id)type
{
  isPrimitive = [type isPrimitive];
  if (!isPrimitive)
  {
    return isPrimitive;
  }

  v8 = [*(type + 2) characterAtIndex:0];
  v9 = [(NSString *)self->type_ characterAtIndex:0];
  LOBYTE(isPrimitive) = 0;
  if (v9 > 72)
  {
    if (v9 <= 82)
    {
      if (v9 == 73)
      {
        if (v8 > 72)
        {
          if (v8 != 73)
          {
            if (v8 == 74)
            {
              var4 = value->var4;
              goto LABEL_73;
            }

            goto LABEL_58;
          }

          goto LABEL_74;
        }

        if (v8 != 68)
        {
          if (v8 != 70)
          {
            goto LABEL_58;
          }

          *&v10 = value->var4;
LABEL_65:
          value->var4 = v10;
          goto LABEL_74;
        }

        var1 = value->var4;
        goto LABEL_70;
      }

      if (v9 != 74)
      {
        return isPrimitive;
      }

      if (v8 == 74)
      {
        goto LABEL_74;
      }

      if (v8 == 70)
      {
        *&v10 = value->var5;
        goto LABEL_65;
      }

      if (v8 != 68)
      {
        goto LABEL_58;
      }

      v12.var7 = value->var5;
LABEL_71:
      value->var0 = v12.var0;
      goto LABEL_74;
    }

    if (v9 == 83)
    {
      if (v8 <= 72)
      {
        if (v8 != 68)
        {
          if (v8 != 70)
          {
            goto LABEL_58;
          }

          var3 = value->var3;
LABEL_54:
          *&v10 = var3;
          goto LABEL_65;
        }

        var1 = value->var3;
LABEL_70:
        v12.var7 = var1;
        goto LABEL_71;
      }

      if (v8 != 73)
      {
        if (v8 == 74)
        {
          var4 = value->var3;
          goto LABEL_73;
        }

        if (v8 != 83)
        {
          goto LABEL_58;
        }

        goto LABEL_74;
      }

      var2 = value->var3;
LABEL_68:
      value->var4 = var2;
      goto LABEL_74;
    }

    if (v9 != 90)
    {
      return isPrimitive;
    }

    v13 = v8 == 90;
LABEL_36:
    LOBYTE(isPrimitive) = v13;
    return isPrimitive;
  }

  if (v9 > 67)
  {
    if (v9 != 68)
    {
      if (v9 != 70)
      {
        return isPrimitive;
      }

      if (v8 == 70)
      {
        goto LABEL_74;
      }

      if (v8 != 68)
      {
        goto LABEL_58;
      }

      v12.var7 = value->var6;
      goto LABEL_71;
    }

    v13 = v8 == 68;
    goto LABEL_36;
  }

  if (v9 == 66)
  {
    if (v8 <= 72)
    {
      if (v8 == 66)
      {
        goto LABEL_74;
      }

      if (v8 != 68)
      {
        if (v8 != 70)
        {
          goto LABEL_58;
        }

        var3 = value->var1;
        goto LABEL_54;
      }

      var1 = value->var1;
      goto LABEL_70;
    }

    if (v8 != 73)
    {
      if (v8 == 74)
      {
        var4 = value->var1;
        goto LABEL_73;
      }

      if (v8 != 83)
      {
        goto LABEL_58;
      }

      value->var2 = value->var1;
      goto LABEL_74;
    }

    var2 = value->var1;
    goto LABEL_68;
  }

  if (v9 == 67)
  {
    if (v8 > 69)
    {
      if (v8 != 70)
      {
        if (v8 != 73)
        {
          if (v8 == 74)
          {
            var4 = value->var2;
LABEL_73:
            value->var5 = var4;
            goto LABEL_74;
          }

          goto LABEL_58;
        }

        var2 = value->var2;
        goto LABEL_68;
      }

      LOWORD(v10) = value->var2;
      *&v10 = v10;
      goto LABEL_65;
    }

    if (v8 != 67)
    {
      if (v8 == 68)
      {
        LOWORD(v10) = value->var2;
        v12.var7 = v10;
        goto LABEL_71;
      }

LABEL_58:
      LOBYTE(isPrimitive) = 0;
      return isPrimitive;
    }

LABEL_74:
    LOBYTE(isPrimitive) = 1;
  }

  return isPrimitive;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = IOSPrimitiveClass;
  [(IOSPrimitiveClass *)&v3 dealloc];
}

@end