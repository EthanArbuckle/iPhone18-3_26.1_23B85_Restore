@interface DVTDataBlockStream
- (id).cxx_construct;
- (id)createNextStream:(id *)stream;
- (id)read:(unint64_t)read error:(id *)error;
@end

@implementation DVTDataBlockStream

- (id)createNextStream:(id *)stream
{
  v3 = objc_alloc_init(DVTDataBlockStream);

  return v3;
}

- (id)read:(unint64_t)read error:(id *)error
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