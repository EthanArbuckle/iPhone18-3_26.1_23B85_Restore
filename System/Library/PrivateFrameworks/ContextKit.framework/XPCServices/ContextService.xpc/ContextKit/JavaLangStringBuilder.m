@interface JavaLangStringBuilder
- (JavaLangStringBuilder)initWithJavaLangCharSequence:(id)a3;
- (id)appendWithBoolean:(BOOL)a3;
- (id)appendWithId:(id)a3;
- (id)appendWithJavaLangCharSequence:(id)a3;
- (id)appendWithJavaLangStringBuffer:(id)a3;
- (int)length;
- (void)readObjectWithJavaIoObjectInputStream:(id)a3;
- (void)writeObjectWithJavaIoObjectOutputStream:(id)a3;
@end

@implementation JavaLangStringBuilder

- (JavaLangStringBuilder)initWithJavaLangCharSequence:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  JavaLangStringBuilder_initWithNSString_(self, [a3 description]);
  return self;
}

- (id)appendWithBoolean:(BOOL)a3
{
  if (a3)
  {
    v4 = @"true";
  }

  else
  {
    v4 = @"false";
  }

  JreStringBuilder_appendString(&self->super.delegate_, v4);
  return self;
}

- (id)appendWithId:(id)a3
{
  if (a3)
  {
    JreStringBuilder_appendString(&self->super.delegate_, [a3 description]);
  }

  else
  {
    JreStringBuilder_appendNull(&self->super.delegate_);
  }

  return self;
}

- (id)appendWithJavaLangStringBuffer:(id)a3
{
  if (a3)
  {
    JreStringBuilder_appendBuffer(&self->super.delegate_, *(a3 + 1), *(a3 + 5));
  }

  else
  {
    JreStringBuilder_appendNull(&self->super.delegate_);
  }

  return self;
}

- (id)appendWithJavaLangCharSequence:(id)a3
{
  if (a3)
  {
    JreStringBuilder_appendCharSequence(&self->super.delegate_, a3, 0, [a3 length]);
  }

  else
  {
    JreStringBuilder_appendNull(&self->super.delegate_);
  }

  return self;
}

- (int)length
{
  v3.receiver = self;
  v3.super_class = JavaLangStringBuilder;
  return [(JavaLangAbstractStringBuilder *)&v3 length];
}

- (void)readObjectWithJavaIoObjectInputStream:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  [a3 defaultReadObject];
  v5 = [a3 readInt];
  v6 = [a3 readObject];
  objc_opt_class();
  if (v6 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  [(JavaLangAbstractStringBuilder *)self setWithCharArray:v6 withInt:v5];
}

- (void)writeObjectWithJavaIoObjectOutputStream:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  [a3 defaultWriteObject];
  [a3 writeIntWithInt:{-[JavaLangStringBuilder length](self, "length")}];
  v5 = [(JavaLangAbstractStringBuilder *)self getValue];

  [a3 writeObjectWithId:v5];
}

@end