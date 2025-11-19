@interface IOSPrimitiveClass
- (BOOL)__convertRawValue:(id *)a3 toType:(id)a4;
- (BOOL)__unboxValue:(id)a3 toRawValue:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (Class)objcArrayClass;
- (IOSPrimitiveClass)initWithName:(id)a3 type:(id)a4;
- (id)__boxValue:(id *)a3;
- (id)getConstructorWithClasses:(id)a3;
- (id)getDeclaredMethod:(id)a3;
- (id)getDeclaredMethods;
- (id)getMethod:(id)a3;
- (id)wrapperClass;
- (unint64_t)getSizeof;
- (void)__readRawValue:(id *)a3 fromAddress:(const void *)a4;
- (void)__writeRawValue:(id *)a3 toAddress:(const void *)a4;
- (void)dealloc;
@end

@implementation IOSPrimitiveClass

- (IOSPrimitiveClass)initWithName:(id)a3 type:(id)a4
{
  v8.receiver = self;
  v8.super_class = IOSPrimitiveClass;
  v6 = [(IOSPrimitiveClass *)&v8 init];
  if (v6)
  {
    v6->name_ = a3;
    v6->type_ = a4;
  }

  return v6;
}

- (id)getDeclaredMethods
{
  v2 = JavaLangReflectMethod_class_();

  return [IOSObjectArray arrayWithLength:0 type:v2];
}

- (id)getMethod:(id)a3
{
  v3 = objc_alloc_init(JavaLangNoSuchMethodException);
  v4 = v3;
  objc_exception_throw(v3);
}

- (id)getDeclaredMethod:(id)a3
{
  v3 = objc_alloc_init(JavaLangNoSuchMethodException);
  v4 = v3;
  objc_exception_throw(v3);
}

- (id)getConstructorWithClasses:(id)a3
{
  v3 = objc_alloc_init(JavaLangNoSuchMethodException);
  v4 = v3;
  objc_exception_throw(v3);
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  name = self->name_;
  v6 = *(a3 + 1);

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

- (id)__boxValue:(id *)a3
{
  v4 = [(NSString *)self->type_ characterAtIndex:0];
  if (v4 > 72)
  {
    if (v4 > 82)
    {
      if (v4 == 83)
      {
        var3 = a3->var3;

        return JavaLangShort_valueOfWithShort_(var3);
      }

      else
      {
        if (v4 != 90)
        {
          return 0;
        }

        var1 = a3->var1;

        return JavaLangBoolean_valueOfWithBoolean_(var1);
      }
    }

    else if (v4 == 73)
    {
      var4 = a3->var4;

      return JavaLangInteger_valueOfWithInt_(var4);
    }

    else
    {
      if (v4 != 74)
      {
        return 0;
      }

      var5 = a3->var5;

      return JavaLangLong_valueOfWithLong_(var5);
    }
  }

  else if (v4 > 67)
  {
    if (v4 == 68)
    {
      v12 = a3->var5;

      return JavaLangDouble_valueOfWithDouble_(*&v12);
    }

    else
    {
      if (v4 != 70)
      {
        return 0;
      }

      v8 = a3->var4;

      return JavaLangFloat_valueOfWithFloat_(*&v8);
    }
  }

  else
  {
    if (v4 != 66)
    {
      if (v4 == 67)
      {
        var2 = a3->var2;

        return JavaLangCharacter_valueOfWithChar_(var2);
      }

      return 0;
    }

    v10 = a3->var1;

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

- (BOOL)__unboxValue:(id)a3 toRawValue:(id *)a4
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    a4->var1 = [a3 charValue];
    v7 = +[IOSClass byteClass];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      a4->var2 = [a3 charValue];
      v7 = +[IOSClass charClass];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [a3 doubleValue];
        a4->var5 = v8;
        v7 = +[IOSClass doubleClass];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [a3 floatValue];
          a4->var4 = v9;
          v7 = +[IOSClass floatClass];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            a4->var4 = [a3 intValue];
            v7 = +[IOSClass intClass];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              a4->var5 = [a3 longValue];
              v7 = +[IOSClass longClass];
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                a4->var2 = [a3 shortValue];
                v7 = +[IOSClass shortClass];
              }

              else
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  return 0;
                }

                a4->var1 = [a3 BOOLeanValue];
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

  return [v7 __convertRawValue:a4 toType:self];
}

- (void)__readRawValue:(id *)a3 fromAddress:(const void *)a4
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
      a3->var4 = *a4;
    }

    else if (v6 == 74)
    {
      a3->var0 = *a4;
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
        a3->var2 = *a4;
        return;
      }

LABEL_15:
      a3->var1 = *a4;
      return;
    }

    if (v6 == 68)
    {
      a3->var0 = *a4;
    }

    else if (v6 == 70)
    {
      a3->var4 = *a4;
    }
  }
}

- (void)__writeRawValue:(id *)a3 toAddress:(const void *)a4
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
      *a4 = a3->var4;
    }

    else if (v6 == 74)
    {
      *a4 = a3->var0;
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
        *a4 = a3->var2;
        return;
      }

LABEL_15:
      *a4 = a3->var1;
      return;
    }

    if (v6 == 68)
    {
      *a4 = a3->var0;
    }

    else if (v6 == 70)
    {
      *a4 = a3->var4;
    }
  }
}

- (BOOL)__convertRawValue:(id *)a3 toType:(id)a4
{
  v7 = [a4 isPrimitive];
  if (!v7)
  {
    return v7;
  }

  v8 = [*(a4 + 2) characterAtIndex:0];
  v9 = [(NSString *)self->type_ characterAtIndex:0];
  LOBYTE(v7) = 0;
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
              var4 = a3->var4;
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

          *&v10 = a3->var4;
LABEL_65:
          a3->var4 = v10;
          goto LABEL_74;
        }

        var1 = a3->var4;
        goto LABEL_70;
      }

      if (v9 != 74)
      {
        return v7;
      }

      if (v8 == 74)
      {
        goto LABEL_74;
      }

      if (v8 == 70)
      {
        *&v10 = a3->var5;
        goto LABEL_65;
      }

      if (v8 != 68)
      {
        goto LABEL_58;
      }

      v12.var7 = a3->var5;
LABEL_71:
      a3->var0 = v12.var0;
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

          var3 = a3->var3;
LABEL_54:
          *&v10 = var3;
          goto LABEL_65;
        }

        var1 = a3->var3;
LABEL_70:
        v12.var7 = var1;
        goto LABEL_71;
      }

      if (v8 != 73)
      {
        if (v8 == 74)
        {
          var4 = a3->var3;
          goto LABEL_73;
        }

        if (v8 != 83)
        {
          goto LABEL_58;
        }

        goto LABEL_74;
      }

      var2 = a3->var3;
LABEL_68:
      a3->var4 = var2;
      goto LABEL_74;
    }

    if (v9 != 90)
    {
      return v7;
    }

    v13 = v8 == 90;
LABEL_36:
    LOBYTE(v7) = v13;
    return v7;
  }

  if (v9 > 67)
  {
    if (v9 != 68)
    {
      if (v9 != 70)
      {
        return v7;
      }

      if (v8 == 70)
      {
        goto LABEL_74;
      }

      if (v8 != 68)
      {
        goto LABEL_58;
      }

      v12.var7 = a3->var6;
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

        var3 = a3->var1;
        goto LABEL_54;
      }

      var1 = a3->var1;
      goto LABEL_70;
    }

    if (v8 != 73)
    {
      if (v8 == 74)
      {
        var4 = a3->var1;
        goto LABEL_73;
      }

      if (v8 != 83)
      {
        goto LABEL_58;
      }

      a3->var2 = a3->var1;
      goto LABEL_74;
    }

    var2 = a3->var1;
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
            var4 = a3->var2;
LABEL_73:
            a3->var5 = var4;
            goto LABEL_74;
          }

          goto LABEL_58;
        }

        var2 = a3->var2;
        goto LABEL_68;
      }

      LOWORD(v10) = a3->var2;
      *&v10 = v10;
      goto LABEL_65;
    }

    if (v8 != 67)
    {
      if (v8 == 68)
      {
        LOWORD(v10) = a3->var2;
        v12.var7 = v10;
        goto LABEL_71;
      }

LABEL_58:
      LOBYTE(v7) = 0;
      return v7;
    }

LABEL_74:
    LOBYTE(v7) = 1;
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = IOSPrimitiveClass;
  [(IOSPrimitiveClass *)&v3 dealloc];
}

@end