@interface JavaNioByteBufferAsFloatBuffer
- (BOOL)isDirect;
- (BOOL)isReadOnly;
- (float)get;
- (float)getWithInt:(int)int;
- (id)asReadOnlyBuffer;
- (id)compact;
- (id)duplicate;
- (id)order;
- (id)putWithFloat:(float)float;
- (id)putWithInt:(int)int withFloat:(float)float;
- (id)slice;
- (void)dealloc;
@end

@implementation JavaNioByteBufferAsFloatBuffer

- (id)asReadOnlyBuffer
{
  byteBuffer = self->byteBuffer_;
  if (!byteBuffer)
  {
    JreThrowNullPointerException();
  }

  asReadOnlyBuffer = [(JavaNioByteBuffer *)byteBuffer asReadOnlyBuffer];
  v5 = [JavaNioByteBufferAsFloatBuffer alloc];
  JavaNioByteBufferAsFloatBuffer_initWithJavaNioByteBuffer_(v5, asReadOnlyBuffer);
  v6 = v5;
  v6->super.super.limit_ = self->super.super.limit_;
  v6->super.super.position_ = self->super.super.position_;
  v6->super.super.mark_ = self->super.super.mark_;
  JreStrongAssign(&v6->byteBuffer_->order_, self->byteBuffer_->order_);
  return v6;
}

- (id)compact
{
  byteBuffer = self->byteBuffer_;
  if (!byteBuffer)
  {
    JreThrowNullPointerException();
  }

  if ([(JavaNioBuffer *)byteBuffer isReadOnly])
  {
    v5 = new_JavaNioReadOnlyBufferException_init();
    objc_exception_throw(v5);
  }

  [(JavaNioBuffer *)self->byteBuffer_ limitWithInt:(4 * self->super.super.limit_)];
  [(JavaNioBuffer *)self->byteBuffer_ positionWithInt:(4 * self->super.super.position_)];
  [(JavaNioByteBuffer *)self->byteBuffer_ compact];
  [(JavaNioBuffer *)self->byteBuffer_ clear];
  self->super.super.position_ = self->super.super.limit_ - self->super.super.position_;
  self->super.super.limit_ = self->super.super.capacity_;
  self->super.super.mark_ = -1;
  return self;
}

- (id)duplicate
{
  byteBuffer = self->byteBuffer_;
  if (!byteBuffer || (v4 = [(JavaNioByteBuffer *)byteBuffer duplicate]) == 0)
  {
    JreThrowNullPointerException();
  }

  v5 = [v4 orderWithJavaNioByteOrder:{-[JavaNioByteBuffer order](self->byteBuffer_, "order")}];
  v6 = [JavaNioByteBufferAsFloatBuffer alloc];
  JavaNioByteBufferAsFloatBuffer_initWithJavaNioByteBuffer_(v6, v5);
  result = v6;
  *(result + 3) = self->super.super.limit_;
  *(result + 5) = self->super.super.position_;
  *(result + 4) = self->super.super.mark_;
  return result;
}

- (float)get
{
  position = self->super.super.position_;
  if (position == self->super.super.limit_)
  {
    v4 = new_JavaNioBufferUnderflowException_init();
    objc_exception_throw(v4);
  }

  byteBuffer = self->byteBuffer_;
  if (!byteBuffer)
  {
    JreThrowNullPointerException();
  }

  self->super.super.position_ = position + 1;

  [(JavaNioByteBuffer *)byteBuffer getFloatWithInt:(4 * position)];
  return result;
}

- (float)getWithInt:(int)int
{
  [(JavaNioBuffer *)self checkIndexWithInt:?];
  byteBuffer = self->byteBuffer_;
  if (!byteBuffer)
  {
    JreThrowNullPointerException();
  }

  [(JavaNioByteBuffer *)byteBuffer getFloatWithInt:(4 * int)];
  return result;
}

- (BOOL)isDirect
{
  byteBuffer = self->byteBuffer_;
  if (!byteBuffer)
  {
    JreThrowNullPointerException();
  }

  return [(JavaNioByteBuffer *)byteBuffer isDirect];
}

- (BOOL)isReadOnly
{
  byteBuffer = self->byteBuffer_;
  if (!byteBuffer)
  {
    JreThrowNullPointerException();
  }

  return [(JavaNioBuffer *)byteBuffer isReadOnly];
}

- (id)order
{
  byteBuffer = self->byteBuffer_;
  if (!byteBuffer)
  {
    JreThrowNullPointerException();
  }

  return [(JavaNioByteBuffer *)byteBuffer order];
}

- (id)putWithFloat:(float)float
{
  position = self->super.super.position_;
  if (position == self->super.super.limit_)
  {
    v7 = new_JavaNioBufferOverflowException_init();
    objc_exception_throw(v7);
  }

  byteBuffer = self->byteBuffer_;
  if (!byteBuffer)
  {
    JreThrowNullPointerException();
  }

  self->super.super.position_ = position + 1;
  [(JavaNioByteBuffer *)byteBuffer putFloatWithInt:(4 * position) withFloat:?];
  return self;
}

- (id)putWithInt:(int)int withFloat:(float)float
{
  [(JavaNioBuffer *)self checkIndexWithInt:?];
  byteBuffer = self->byteBuffer_;
  if (!byteBuffer)
  {
    JreThrowNullPointerException();
  }

  *&v7 = float;
  [(JavaNioByteBuffer *)byteBuffer putFloatWithInt:(4 * int) withFloat:v7];
  return self;
}

- (id)slice
{
  byteBuffer = self->byteBuffer_;
  if (!byteBuffer || ([(JavaNioBuffer *)byteBuffer limitWithInt:(4 * self->super.super.limit_)], [(JavaNioBuffer *)self->byteBuffer_ positionWithInt:(4 * self->super.super.position_)], (v4 = [(JavaNioByteBuffer *)self->byteBuffer_ slice]) == 0))
  {
    JreThrowNullPointerException();
  }

  v5 = [v4 orderWithJavaNioByteOrder:{-[JavaNioByteBuffer order](self->byteBuffer_, "order")}];
  v6 = [JavaNioByteBufferAsFloatBuffer alloc];
  JavaNioByteBufferAsFloatBuffer_initWithJavaNioByteBuffer_(v6, v5);
  v7 = v6;
  [(JavaNioBuffer *)self->byteBuffer_ clear];
  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaNioByteBufferAsFloatBuffer;
  [(JavaNioByteBufferAsFloatBuffer *)&v3 dealloc];
}

@end