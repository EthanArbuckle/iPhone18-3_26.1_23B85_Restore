@interface JavaLangStringBuffer
- (JavaLangStringBuffer)initWithJavaLangCharSequence:(id)sequence;
- (NSString)description;
- (id)appendWithBoolean:(BOOL)boolean;
- (id)appendWithChar:(unsigned __int16)char;
- (id)appendWithCharArray:(id)array;
- (id)appendWithCharArray:(id)array withInt:(int)int withInt:(int)withInt;
- (id)appendWithId:(id)id;
- (id)appendWithJavaLangCharSequence:(id)sequence;
- (id)appendWithJavaLangStringBuffer:(id)buffer;
- (id)appendWithNSString:(id)string;
- (id)reverse;
- (int)length;
- (void)trimToSize;
@end

@implementation JavaLangStringBuffer

- (JavaLangStringBuffer)initWithJavaLangCharSequence:(id)sequence
{
  if (!sequence)
  {
    JreThrowNullPointerException();
  }

  JavaLangStringBuffer_initWithNSString_(self, [sequence description]);
  return self;
}

- (id)appendWithBoolean:(BOOL)boolean
{
  if (boolean)
  {
    v3 = @"true";
  }

  else
  {
    v3 = @"false";
  }

  return [(JavaLangStringBuffer *)self appendWithNSString:v3];
}

- (id)appendWithChar:(unsigned __int16)char
{
  objc_sync_enter(self);
  JreStringBuilder_appendChar(&self->super.delegate_, char);
  objc_sync_exit(self);
  return self;
}

- (id)appendWithId:(id)id
{
  objc_sync_enter(self);
  if (id)
  {
    JreStringBuilder_appendString(&self->super.delegate_, [id description]);
  }

  else
  {
    JreStringBuilder_appendNull(&self->super.delegate_);
  }

  objc_sync_exit(self);
  return self;
}

- (id)appendWithNSString:(id)string
{
  objc_sync_enter(self);
  JreStringBuilder_appendString(&self->super.delegate_, string);
  objc_sync_exit(self);
  return self;
}

- (id)appendWithJavaLangStringBuffer:(id)buffer
{
  objc_sync_enter(self);
  if (buffer)
  {
    objc_sync_enter(buffer);
    JreStringBuilder_appendBuffer(&self->super.delegate_, *(buffer + 1), *(buffer + 5));
    objc_sync_exit(buffer);
  }

  else
  {
    JreStringBuilder_appendNull(&self->super.delegate_);
  }

  objc_sync_exit(self);
  return self;
}

- (id)appendWithCharArray:(id)array
{
  objc_sync_enter(self);
  JreStringBuilder_appendCharArray(&self->super.delegate_, array);
  objc_sync_exit(self);
  return self;
}

- (id)appendWithCharArray:(id)array withInt:(int)int withInt:(int)withInt
{
  objc_sync_enter(self);
  JreStringBuilder_appendCharArraySubset(&self->super.delegate_, array, int, withInt);
  objc_sync_exit(self);
  return self;
}

- (id)appendWithJavaLangCharSequence:(id)sequence
{
  objc_sync_enter(self);
  if (sequence)
  {
    JreStringBuilder_appendCharSequence(&self->super.delegate_, sequence, 0, [sequence length]);
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