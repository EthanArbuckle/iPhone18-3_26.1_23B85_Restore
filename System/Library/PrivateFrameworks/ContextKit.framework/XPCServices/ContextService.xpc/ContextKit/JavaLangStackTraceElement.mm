@interface JavaLangStackTraceElement
- (BOOL)isEqual:(id)equal;
- (JavaLangStackTraceElement)initWithNSString:(id)string withNSString:(id)sString withNSString:(id)nSString withInt:(int)int;
- (NSString)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)initializeFromAddress;
@end

@implementation JavaLangStackTraceElement

- (void)initializeFromAddress
{
  if (*(self + 40) && !*(self + 16))
  {
    v23 = *(self + 40);
    v2 = backtrace_symbols(&v23, 1);
    v3 = strstr(*v2, "0x");
    v4 = strchr(v3, 32);
    v5 = strndup(v3, v4 - v3);
    *(self + 48) = [[NSString alloc] initWithCString:v5 encoding:4];
    free(v5);
    v6 = v4 + 1;
    v7 = strstr(v4 + 1, " + ");
    if (v7)
    {
      v8 = v7;
      *(self + 56) = [[NSString alloc] initWithCString:v7 + 3 encoding:4];
      *v8 = 0;
    }

    v9 = strchr(v4 + 1, 91);
    v10 = strchr(v4 + 1, 93);
    if (v9)
    {
      v11 = v10 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (v11 || v10 - v9 <= 0)
    {
      v13 = 1;
        ;
      }

      v15 = v13 - 3;
      for (i = &v4[v13 - 2]; ; --i)
      {
        if (i <= v6 || *i == 95)
        {
          if (!v15)
          {
            goto LABEL_28;
          }

          v17 = +[IOSClass classForIosName:](IOSClass, "classForIosName:", [[NSString alloc] initWithBytesNoCopy:v6 length:v15 encoding:4 freeWhenDone:0]);
          if (v17)
          {
            break;
          }
        }

        --v15;
      }

      *(self + 8) = [v17 getName];
      v6 = i + 1;
LABEL_28:
      v20 = v6;
      v21 = 95;
    }

    else
    {
      __stringp = v9 + 1;
      v18 = strsep(&__stringp, "[ ]");
      if (v18 && *v18)
      {
        v19 = [IOSClass classForIosName:[NSString stringWithCString:v18 encoding:4]];
        if (v19)
        {
          *(self + 8) = [v19 getName];
        }
      }

      v20 = strsep(&__stringp, "[ ]");
      if (!v20)
      {
        goto LABEL_30;
      }

      v21 = 58;
    }

    *(self + 16) = sub_1001D4E78(v20, v21);
LABEL_30:
    free(v2);
  }
}

- (JavaLangStackTraceElement)initWithNSString:(id)string withNSString:(id)sString withNSString:(id)nSString withInt:(int)int
{
  JreStrongAssign(&self->declaringClass_, string);
  JreStrongAssign(&self->methodName_, sString);
  JreStrongAssign(&self->fileName_, nSString);
  self->lineNumber_ = int;
  return self;
}

- (NSString)description
{
  [JavaLangStackTraceElement initializeFromAddress]_0(self);
  v3 = new_JavaLangStringBuilder_init();
  [(JavaLangStringBuilder *)v3 appendWithNSString:self->hexAddress_];
  [(JavaLangStringBuilder *)v3 appendWithNSString:@" "];
  if (self->declaringClass_)
  {
    [(JavaLangStringBuilder *)v3 appendWithNSString:?];
    [(JavaLangStringBuilder *)v3 appendWithChar:46];
  }

  if (self->methodName_)
  {
    [(JavaLangStringBuilder *)v3 appendWithNSString:?];
  }

  if (!self->fileName_ && self->lineNumber_ == -1)
  {
    if (self->declaringClass_)
    {
      [(JavaLangStringBuilder *)v3 appendWithNSString:@"()"];
    }
  }

  else
  {
    [(JavaLangStringBuilder *)v3 appendWithChar:40];
    if (self->fileName_)
    {
      [(JavaLangStringBuilder *)v3 appendWithNSString:?];
    }

    if (self->lineNumber_ != -1)
    {
      [(JavaLangStringBuilder *)v3 appendWithChar:58];
      [(JavaLangStringBuilder *)v3 appendWithInt:self->lineNumber_];
    }

    [(JavaLangStringBuilder *)v3 appendWithChar:41];
  }

  if (self->offset_)
  {
    [(JavaLangStringBuilder *)v3 appendWithNSString:@" + "];
    [(JavaLangStringBuilder *)v3 appendWithNSString:self->offset_];
  }

  return [(JavaLangStringBuilder *)v3 description];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v6) = 1;
    return v6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_12;
  }

  objc_opt_class();
  if (!equal)
  {
    goto LABEL_15;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v5 = *(equal + 1);
  if (!v5)
  {
LABEL_15:
    JreThrowNullPointerException();
  }

  v6 = [v5 isEqual:self->declaringClass_];
  if (v6)
  {
    if (*(equal + 8) == self->lineNumber_)
    {
      v6 = JavaUtilObjects_equalsWithId_withId_(self->methodName_, *(equal + 2));
      if (v6)
      {
        fileName = self->fileName_;
        v8 = *(equal + 3);

        LOBYTE(v6) = JavaUtilObjects_equalsWithId_withId_(fileName, v8);
      }

      return v6;
    }

LABEL_12:
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  declaringClass = self->declaringClass_;
  if (!declaringClass || (v4 = [(NSString *)declaringClass hash], (methodName = self->methodName_) == 0))
  {
    JreThrowNullPointerException();
  }

  v6 = [(NSString *)methodName hash]- v4 + 32 * v4;
  v7 = JavaUtilObjects_hashCodeWithId_(self->fileName_);
  return (self->lineNumber_ - (v7 - v6 + 32 * v6) + 32 * (v7 - v6 + 32 * v6));
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaLangStackTraceElement;
  [(JavaLangStackTraceElement *)&v3 dealloc];
}

@end