@interface DVTDataBlockStream
- (id).cxx_construct;
- (id)createNextStream:(id *)a3;
- (id)read:(unint64_t)a3 error:(id *)a4;
@end

@implementation DVTDataBlockStream

- (id)createNextStream:(id *)a3
{
  v3 = objc_alloc_init(DVTDataBlockStream);

  return v3;
}

- (id)read:(unint64_t)a3 error:(id *)a4
{
  v5 = *(self->_records.__end_.__next_ + 2);
  sub_247FD0F40(&self->_records);

  return v5;
}

- (id).cxx_construct
{
  *(self + 1) = self + 8;
  *(self + 2) = self + 8;
  *(self + 3) = 0;
  return self;
}

@end