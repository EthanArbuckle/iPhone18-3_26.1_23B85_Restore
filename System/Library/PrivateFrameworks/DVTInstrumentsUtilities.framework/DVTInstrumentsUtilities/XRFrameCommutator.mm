@interface XRFrameCommutator
+ (id)sharedCommutator;
- (XRFrameCommutator)initWithMinorFrameCount:(unsigned __int8)count;
- (id)newRing;
- (void)dealloc;
- (void)stop;
@end

@implementation XRFrameCommutator

+ (id)sharedCommutator
{
  if (qword_27EE869E8 != -1)
  {
    sub_2480B3EEC();
  }

  v3 = qword_27EE869E0;

  return v3;
}

- (XRFrameCommutator)initWithMinorFrameCount:(unsigned __int8)count
{
  v4.receiver = self;
  v4.super_class = XRFrameCommutator;
  if ([(XRFrameCommutator *)&v4 init])
  {
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  p_commutatorImpl = &self->_commutatorImpl;
  ptr = self->_commutatorImpl.__ptr_;
  if (ptr)
  {
    sub_2480AB038(ptr);
    sub_2480A21DC(p_commutatorImpl, 0);
  }

  v5.receiver = self;
  v5.super_class = XRFrameCommutator;
  [(XRFrameCommutator *)&v5 dealloc];
}

- (id)newRing
{
  v3 = [XRFrameRing alloc];
  v6 = *(self->_commutatorImpl.__ptr_ + 124);

  return MEMORY[0x2821F9670](v3, sel_initWithMinorFrameCount_, v6, v4, v5);
}

- (void)stop
{
  p_commutatorImpl = &self->_commutatorImpl;
  sub_2480AAF58(self->_commutatorImpl.__ptr_);

  sub_2480A21DC(p_commutatorImpl, 0);
}

@end