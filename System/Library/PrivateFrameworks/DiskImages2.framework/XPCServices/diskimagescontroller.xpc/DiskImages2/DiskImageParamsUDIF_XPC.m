@interface DiskImageParamsUDIF_XPC
- (DiskImageParamsUDIF_XPC)initWithBackendXPC:(id)a3 header:()unique_ptr<udif:(std::default_delete<udif::header>>)a4 :header;
- (DiskImageParamsUDIF_XPC)initWithCoder:(id)a3;
- (id)instanceID;
- (unique_ptr<DiskImage,)createSinkDiskImage;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DiskImageParamsUDIF_XPC

- (DiskImageParamsUDIF_XPC)initWithBackendXPC:(id)a3 header:()unique_ptr<udif:(std::default_delete<udif::header>>)a4 :header
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = DiskImageParamsUDIF_XPC;
  v7 = [(DiskImageParamsXPC *)&v13 initWithBackendXPC:v6];
  v8 = v7;
  if (v7)
  {
    v9 = *a4.__ptr_;
    *a4.__ptr_ = 0;
    ptr = v7->_header.__ptr_;
    v8->_header.__ptr_ = v9;
    if (ptr)
    {
      operator delete();
    }

    if (!*(v9 + 492))
    {
      [(DiskImageParamsUDIF_XPC *)v8 createSinkDiskImage];
      *(v8->_header.__ptr_ + 492) = (*(*v12 + 32))();
      if (v12)
      {
        (*(*v12 + 16))();
      }
    }
  }

  return v8;
}

- (unique_ptr<DiskImage,)createSinkDiskImage
{
  v3 = [(DiskImageParamsXPC *)self backendXPC];
  v4 = v3;
  if (v3)
  {
    [v3 backend];
  }

  else
  {
    v8 = 0uLL;
  }

  if ((*(*v8 + 48))(v8))
  {
    v5 = [(DiskImageParamsXPC *)self backendXPC];
    v6 = [v5 isUnlocked];

    if (v6)
    {
      [(DiskImageParamsUDIF_XPC *)self blockSize];
      sub_1000B11D8();
    }
  }

  ptr = self->_header.__ptr_;
  operator new();
}

- (DiskImageParamsUDIF_XPC)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = DiskImageParamsUDIF_XPC;
  if ([(DiskImageParamsXPC *)&v9 initWithCoder:v4])
  {
    v8 = 0;
    if ([v4 decodeBytesForKey:@"udifHeader" returnedLength:&v8])
    {
      if (v8 == 500)
      {
        operator new();
      }
    }

    exception = __cxa_allocate_exception(0x40uLL);
    sub_100002148(v7);
    sub_1000026BC(v7, "Unexpected UDIF header length (", 31);
    std::ostream::operator<<();
    sub_1000026BC(v7, ")", 1);
    sub_100004290(exception, v7, 0x9Au);
  }

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = DiskImageParamsUDIF_XPC;
  [(DiskImageParamsXPC *)&v5 encodeWithCoder:v4];
  [v4 encodeBytes:self->_header.__ptr_ length:500 forKey:@"udifHeader"];
}

- (id)instanceID
{
  bzero(v10, 0x210uLL);
  v8.receiver = self;
  v8.super_class = DiskImageParamsUDIF_XPC;
  v3 = [(DiskImageParamsXPC *)&v8 instanceID];
  [v3 getUUIDBytes:v10];
  sub_10013FAA8(self->_header.__ptr_, &v11);
  v4 = [NSUUID alloc];
  v9[0] = sub_10019E174(v10, 528);
  v9[1] = v5;
  v6 = [v4 initWithUUIDBytes:v9];

  return v6;
}

@end