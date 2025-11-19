@interface JavaNioCharSequenceAdapter
- (id)slice;
- (id)subSequenceFrom:(int)a3 to:(int)a4;
- (unsigned)get;
- (void)dealloc;
@end

@implementation JavaNioCharSequenceAdapter

- (unsigned)get
{
  position = self->super.super.position_;
  if (position == self->super.super.limit_)
  {
    v5 = new_JavaNioBufferUnderflowException_init();
    objc_exception_throw(v5);
  }

  sequence = self->sequence_;
  if (!sequence)
  {
    JreThrowNullPointerException();
  }

  self->super.super.position_ = position + 1;

  return [(JavaLangCharSequence *)sequence charAtWithInt:?];
}

- (id)slice
{
  if (!self->sequence_)
  {
    JreThrowNullPointerException();
  }

  v2 = [(JavaLangCharSequence *)self->sequence_ subSequenceFrom:self->super.super.position_ to:self->super.super.limit_];
  v3 = [JavaNioCharSequenceAdapter alloc];
  JavaNioCharSequenceAdapter_initWithJavaLangCharSequence_(v3, v2);

  return v3;
}

- (id)subSequenceFrom:(int)a3 to:(int)a4
{
  [JavaNioBuffer checkStartEndRemainingWithInt:"checkStartEndRemainingWithInt:withInt:" withInt:?];
  result = JavaNioCharSequenceAdapter_copy__WithJavaNioCharSequenceAdapter_(self);
  if (!result)
  {
    JreThrowNullPointerException();
  }

  *(result + 5) = self->super.super.position_ + a3;
  *(result + 3) = self->super.super.position_ + a4;
  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaNioCharSequenceAdapter;
  [(JavaNioCharSequenceAdapter *)&v3 dealloc];
}

@end