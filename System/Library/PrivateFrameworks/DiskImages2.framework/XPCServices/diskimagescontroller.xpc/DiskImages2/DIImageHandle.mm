@interface DIImageHandle
- (DIImageHandle)initWithDiskImage:(void *)a3 lockableResources:(const void *)a4;
- (expected<std::unique_ptr<diskimage_uio::diskimage>,)moveDiskImage;
- (id).cxx_construct;
@end

@implementation DIImageHandle

- (DIImageHandle)initWithDiskImage:(void *)a3 lockableResources:(const void *)a4
{
  v10.receiver = self;
  v10.super_class = DIImageHandle;
  v6 = [(DIImageHandle *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v8 = *a3;
    *a3 = 0;
    sub_1000B289C(v6 + 1, v8);
    if (v7 + 2 != a4)
    {
      sub_1000B28E8(v7 + 2, *a4, *(a4 + 1), (*(a4 + 1) - *a4) >> 4);
    }
  }

  return v7;
}

- (expected<std::unique_ptr<diskimage_uio::diskimage>,)moveDiskImage
{
  begin = self->_lockableResources.__begin_;
  end = self->_lockableResources.__end_;
  p_lockableResources = &self->_lockableResources;
  while (1)
  {
    if (begin == end)
    {
      sub_100071880(p_lockableResources);
      ptr = self->_diskImage.__ptr_;
      self->_diskImage.__ptr_ = 0;
      retstr->var0.var1.__ptr_ = ptr;
      v11 = 1;
      goto LABEL_10;
    }

    v8 = (***begin)(*begin, a3);
    if (v8)
    {
      break;
    }

    begin += 2;
  }

  if (v8 >= 0)
  {
    v12 = v8;
  }

  else
  {
    v12 = -v8;
  }

  result = std::generic_category();
  v11 = 0;
  retstr->var0.var2.var0 = v12;
  retstr->var0.var2.var1 = result;
LABEL_10:
  retstr->var1 = v11;
  return result;
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end