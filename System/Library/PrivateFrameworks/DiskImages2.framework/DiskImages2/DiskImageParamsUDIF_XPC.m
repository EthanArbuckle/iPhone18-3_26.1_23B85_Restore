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
      MEMORY[0x24C1ED730](ptr, 0x1000C407784F2AFLL);
      v9 = v8->_header.__ptr_;
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
      std::allocate_shared[abi:ne200100]<BufferedWriteBackend,std::allocator<BufferedWriteBackend>,std::shared_ptr<Backend> &,unsigned long,0>();
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
    std::ostringstream::basic_ostringstream[abi:ne200100](v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Unexpected UDIF header length (", 31);
    MEMORY[0x24C1ED3C0](v7, v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ")", 1);
    DiskImagesRuntimeException::DiskImagesRuntimeException(exception, v7, 0x9Au);
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
  v13 = *MEMORY[0x277D85DE8];
  bzero(v11, 0x210uLL);
  v9.receiver = self;
  v9.super_class = DiskImageParamsUDIF_XPC;
  v3 = [(DiskImageParamsXPC *)&v9 instanceID];
  [v3 getUUIDBytes:v11];
  udif::header::write(self->_header.__ptr_, v12);
  v4 = objc_alloc(MEMORY[0x277CCAD78]);
  v10[0] = di_utils::buffer_to_uuid(v11, 528);
  v10[1] = v5;
  v6 = [v4 initWithUUIDBytes:v10];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end