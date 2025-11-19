@interface JavaUtilStringTokenizer
- (BOOL)hasMoreTokens;
- (id)nextToken;
- (id)nextTokenWithNSString:(id)a3;
- (int)countTokens;
- (void)dealloc;
@end

@implementation JavaUtilStringTokenizer

- (int)countTokens
{
  string = self->string_;
  if (!string)
  {
LABEL_10:
    JreThrowNullPointerException();
  }

  position = self->position_;
  v5 = [(NSString *)string length];
  if (position >= v5)
  {
    return 0;
  }

  v6 = 0;
  LOBYTE(v7) = 0;
  do
  {
    delimiters = self->delimiters_;
    if (!delimiters)
    {
      goto LABEL_10;
    }

    v9 = [(NSString *)delimiters indexOf:[(NSString *)self->string_ charAtWithInt:position] fromIndex:0];
    if ((v9 & 0x80000000) == 0)
    {
      v6 += (v7 & 1) + self->returnDelimiters_;
    }

    v7 = v9 >> 31;
    position = (position + 1);
  }

  while (v5 != position);
  return v6 + (v9 >> 31);
}

- (BOOL)hasMoreTokens
{
  if (!self->delimiters_)
  {
    v11 = new_JavaLangNullPointerException_initWithNSString_(@"delimiters == null");
    objc_exception_throw(v11);
  }

  string = self->string_;
  if (!string)
  {
    goto LABEL_15;
  }

  v4 = [(NSString *)string length];
  position = self->position_;
  if (position < v4)
  {
    if (self->returnDelimiters_)
    {
      return 1;
    }

    v7 = v4 - 1;
    while (1)
    {
      delimiters = self->delimiters_;
      if (!delimiters)
      {
        break;
      }

      v9 = [(NSString *)delimiters indexOf:[(NSString *)self->string_ charAtWithInt:position] fromIndex:0];
      v10 = v9 == -1;
      result = v9 == -1;
      v10 = v10 || v7 == position;
      position = (position + 1);
      if (v10)
      {
        return result;
      }
    }

LABEL_15:
    JreThrowNullPointerException();
  }

  return 0;
}

- (id)nextToken
{
  if (!self->delimiters_)
  {
    v13 = new_JavaLangNullPointerException_initWithNSString_(@"delimiters == null");
    goto LABEL_15;
  }

  string = self->string_;
  if (!string)
  {
    goto LABEL_29;
  }

  position = self->position_;
  v5 = [(NSString *)string length];
  if (position >= v5)
  {
    goto LABEL_14;
  }

  if (!self->returnDelimiters_)
  {
    while (1)
    {
      delimiters = self->delimiters_;
      if (!delimiters)
      {
        goto LABEL_29;
      }

      v11 = [(NSString *)delimiters indexOf:[(NSString *)self->string_ charAtWithInt:position] fromIndex:0];
      v12 = position + 1;
      if ((v11 & 0x80000000) != 0)
      {
        break;
      }

      position = (position + 1);
      if (v5 == v12)
      {
        self->position_ = v5;
LABEL_14:
        v13 = new_JavaUtilNoSuchElementException_init();
LABEL_15:
        objc_exception_throw(v13);
      }
    }

    while (1)
    {
      self->position_ = v12;
      if (v12 >= v5)
      {
        goto LABEL_23;
      }

      v14 = self->delimiters_;
      if (!v14)
      {
        goto LABEL_29;
      }

      if (([(NSString *)v14 indexOf:[(NSString *)self->string_ charAtWithInt:?] fromIndex:0]& 0x80000000) == 0)
      {
LABEL_26:
        v17 = self->string_;
        v18 = self->position_;

        return [(NSString *)v17 substring:position endIndex:v18];
      }

      v12 = self->position_ + 1;
    }
  }

  v6 = self->delimiters_;
  if (!v6)
  {
LABEL_29:
    JreThrowNullPointerException();
  }

  if (([(NSString *)v6 indexOf:[(NSString *)self->string_ charAtWithInt:self->position_] fromIndex:0]& 0x80000000) == 0)
  {
    v7 = self->string_;
    ++self->position_;
    v8 = [(NSString *)v7 charAtWithInt:?];

    return NSString_valueOfChar_(v8);
  }

  while (1)
  {
    v15 = self->position_ + 1;
    self->position_ = v15;
    if (v15 >= v5)
    {
      break;
    }

    if (([(NSString *)self->delimiters_ indexOf:[(NSString *)self->string_ charAtWithInt:?] fromIndex:0]& 0x80000000) == 0)
    {
      goto LABEL_26;
    }
  }

LABEL_23:
  v16 = self->string_;

  return [(NSString *)v16 substring:position];
}

- (id)nextTokenWithNSString:(id)a3
{
  JreStrongAssign(&self->delimiters_, a3);

  return [(JavaUtilStringTokenizer *)self nextToken];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilStringTokenizer;
  [(JavaUtilStringTokenizer *)&v3 dealloc];
}

@end