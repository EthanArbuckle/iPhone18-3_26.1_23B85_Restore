@interface JavaLangStringBuilder
- (JavaLangStringBuilder)initWithJavaLangCharSequence:(id)sequence;
- (id)appendWithBoolean:(BOOL)boolean;
- (id)appendWithId:(id)id;
- (id)appendWithJavaLangCharSequence:(id)sequence;
- (id)appendWithJavaLangStringBuffer:(id)buffer;
- (int)length;
- (void)readObjectWithJavaIoObjectInputStream:(id)stream;
- (void)writeObjectWithJavaIoObjectOutputStream:(id)stream;
@end

@implementation JavaLangStringBuilder

- (JavaLangStringBuilder)initWithJavaLangCharSequence:(id)sequence
{
  if (!sequence)
  {
    JreThrowNullPointerException();
  }

  JavaLangStringBuilder_initWithNSString_(self, [sequence description]);
  return self;
}

- (id)appendWithBoolean:(BOOL)boolean
{
  if (boolean)
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

- (id)appendWithId:(id)id
{
  if (id)
  {
    JreStringBuilder_appendString(&self->super.delegate_, [id description]);
  }

  else
  {
    JreStringBuilder_appendNull(&self->super.delegate_);
  }

  return self;
}

- (id)appendWithJavaLangStringBuffer:(id)buffer
{
  if (buffer)
  {
    JreStringBuilder_appendBuffer(&self->super.delegate_, *(buffer + 1), *(buffer + 5));
  }

  else
  {
    JreStringBuilder_appendNull(&self->super.delegate_);
  }

  return self;
}

- (id)appendWithJavaLangCharSequence:(id)sequence
{
  if (sequence)
  {
    JreStringBuilder_appendCharSequence(&self->super.delegate_, sequence, 0, [sequence length]);
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

- (void)readObjectWithJavaIoObjectInputStream:(id)stream
{
  if (!stream)
  {
    JreThrowNullPointerException();
  }

  [stream defaultReadObject];
  readInt = [stream readInt];
  readObject = [stream readObject];
  objc_opt_class();
  if (readObject && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  [(JavaLangAbstractStringBuilder *)self setWithCharArray:readObject withInt:readInt];
}

- (void)writeObjectWithJavaIoObjectOutputStream:(id)stream
{
  if (!stream)
  {
    JreThrowNullPointerException();
  }

  [stream defaultWriteObject];
  [stream writeIntWithInt:{-[JavaLangStringBuilder length](self, "length")}];
  getValue = [(JavaLangAbstractStringBuilder *)self getValue];

  [stream writeObjectWithId:getValue];
}

@end