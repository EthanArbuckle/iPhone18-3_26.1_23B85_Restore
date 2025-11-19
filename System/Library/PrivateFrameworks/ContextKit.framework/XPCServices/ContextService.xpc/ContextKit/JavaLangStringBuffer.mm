@interface JavaLangStringBuffer
- (JavaLangStringBuffer)initWithJavaLangCharSequence:(id)a3;
- (NSString)description;
- (id)appendWithBoolean:(BOOL)a3;
- (id)appendWithChar:(unsigned __int16)a3;
- (id)appendWithCharArray:(id)a3;
- (id)appendWithCharArray:(id)a3 withInt:(int)a4 withInt:(int)a5;
- (id)appendWithId:(id)a3;
- (id)appendWithJavaLangCharSequence:(id)a3;
- (id)appendWithJavaLangStringBuffer:(id)a3;
- (id)appendWithNSString:(id)a3;
- (id)reverse;
- (int)length;
- (void)trimToSize;
@end

@implementation JavaLangStringBuffer

- (JavaLangStringBuffer)initWithJavaLangCharSequence:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  JavaLangStringBuffer_initWithNSString_(self, [a3 description]);
  return self;
}

- (id)appendWithBoolean:(BOOL)a3
{
  if (a3)
  {
    v3 = @"true";
  }

  else
  {
    v3 = @"false";
  }

  return [(JavaLangStringBuffer *)self appendWithNSString:v3];
}

- (id)appendWithChar:(unsigned __int16)a3
{
  objc_sync_enter(self);
  JreStringBuilder_appendChar(&self->super.delegate_, a3);
  objc_sync_exit(self);
  return self;
}

- (id)appendWithId:(id)a3
{
  objc_sync_enter(self);
  if (a3)
  {
    JreStringBuilder_appendString(&self->super.delegate_, [a3 description]);
  }

  else
  {
    JreStringBuilder_appendNull(&self->super.delegate_);
  }

  objc_sync_exit(self);
  return self;
}

- (id)appendWithNSString:(id)a3
{
  objc_sync_enter(self);
  JreStringBuilder_appendString(&self->super.delegate_, a3);
  objc_sync_exit(self);
  return self;
}

- (id)appendWithJavaLangStringBuffer:(id)a3
{
  objc_sync_enter(self);
  if (a3)
  {
    objc_sync_enter(a3);
    JreStringBuilder_appendBuffer(&self->super.delegate_, *(a3 + 1), *(a3 + 5));
    objc_sync_exit(a3);
  }

  else
  {
    JreStringBuilder_appendNull(&self->super.delegate_);
  }

  objc_sync_exit(self);
  return self;
}

- (id)appendWithCharArray:(id)a3
{
  objc_sync_enter(self);
  JreStringBuilder_appendCharArray(&self->super.delegate_, a3);
  objc_sync_exit(self);
  return self;
}

- (id)appendWithCharArray:(id)a3 withInt:(int)a4 withInt:(int)a5
{
  objc_sync_enter(self);
  JreStringBuilder_appendCharArraySubset(&self->super.delegate_, a3, a4, a5);
  objc_sync_exit(self);
  return self;
}

- (id)appendWithJavaLangCharSequence:(id)a3
{
  objc_sync_enter(self);
  if (a3)
  {
    JreStringBuilder_appendCharSequence(&self->super.delegate_, a3, 0, [a3 length]);
  }

  else
  {
    JreStringBuilder_appendNull(&self->super.delegate_);
  }

  objc_sync_exit(self);
  return self;
}

- (int)length
{
  v3.receiver = self;
  v3.super_class = JavaLangStringBuffer;
  return [(JavaLangAbstractStringBuilder *)&v3 length];
}

- (id)reverse
{
  objc_sync_enter(self);
  JreStringBuilder_reverse(&self->super.delegate_);
  objc_sync_exit(self);
  return self;
}

- (NSString)description
{
  objc_sync_enter(self);
  v3 = JreStringBuilder_toString(&self->super.delegate_);
  objc_sync_exit(self);
  return &v3->isa;
}

- (void)trimToSize
{
  objc_sync_enter(self);
  v3.receiver = self;
  v3.super_class = JavaLangStringBuffer;
  [(JavaLangAbstractStringBuilder *)&v3 trimToSize];
  objc_sync_exit(self);
}

@end