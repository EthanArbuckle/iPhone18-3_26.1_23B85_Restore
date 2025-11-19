@interface DiskImageParamsASIF_XPC
- (BOOL)setBlockSize:(unint64_t)a3 error:(id *)a4;
- (DiskImageParamsASIF_XPC)initWithBackendXPC:(id)a3 header:()unique_ptr<di_asif:(std::default_delete<di_asif::header>>)a4 :header;
- (DiskImageParamsASIF_XPC)initWithCoder:(id)a3;
- (id)instanceID;
- (int)setSizeWithDiskImage:(void *)a3 newSize:(unint64_t)a4;
- (unique_ptr<DiskImage,)createSinkDiskImage;
- (void)encodeWithCoder:(id)a3;
- (void)setHeader:()unique_ptr<di_asif:(std::default_delete<di_asif::header>>)a3 :header;
@end

@implementation DiskImageParamsASIF_XPC

- (DiskImageParamsASIF_XPC)initWithBackendXPC:(id)a3 header:()unique_ptr<di_asif:(std::default_delete<di_asif::header>>)a4 :header
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = DiskImageParamsASIF_XPC;
  v7 = [(DiskImageParamsXPC *)&v12 initWithBackendXPC:v6];
  v8 = v7;
  if (v7)
  {
    v9 = *a4.__ptr_;
    *a4.__ptr_ = 0;
    ptr = v7->_header.__ptr_;
    v8->_header.__ptr_ = v9;
    if (ptr)
    {
      MEMORY[0x24C1ED730](ptr, 0x1000C40F139FF95);
      v9 = v8->_header.__ptr_;
    }

    if (v9)
    {
      [(DiskImageParamsXPC *)v8 setBlockSize:*(v9 + 34)];
    }
  }

  return v8;
}

- (unique_ptr<DiskImage,)createSinkDiskImage
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = [(DiskImageParamsXPC *)self backendXPC];
  v4 = v3;
  if (v3)
  {
    [v3 backend];
  }

  else
  {
    lpsrc[0] = 0;
    lpsrc[1] = 0;
  }

  v5 = lpsrc[1];
  if (lpsrc[1])
  {
    atomic_fetch_add_explicit(lpsrc[1] + 1, 1uLL, memory_order_relaxed);
  }

  while (1)
  {
    v6 = lpsrc[0];
    if (!lpsrc[0])
    {
      break;
    }

    v7 = **lpsrc[0];
    v9 = lpsrc[1];
    if (v8)
    {
      v13 = v8;
      if (lpsrc[1])
      {
        atomic_fetch_add_explicit(lpsrc[1] + 1, 1uLL, memory_order_relaxed);
      }

      v29[0] = 0x200000001;
      smart_enums::validators::flags<unsigned int>("header_ignore_fields_t", 2, v29, 2);
      v13[98] = 2;
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

LABEL_25:
      if (self->_header.__ptr_)
      {
        v14 = [(DiskImageParamsXPC *)self backendXPC];
        v15 = v14;
        if (v14)
        {
          [v14 backend];
        }

        else
        {
          v25 = 0;
          v26 = 0;
        }

        get_sink_backend(&v25, &v28);
        std::dynamic_pointer_cast[abi:ne200100]<FileLocal,Backend>(&v28, v29);
        if (*(&v28 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v28 + 1));
        }

        if (v26)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v26);
        }

        v17 = v29[0];
        if (v29[0])
        {
          FileDescriptor::update_info(*(v29[0] + 5));
          atomic_store(*(*(v17 + 5) + 16), (*(v17 + 5) + 64));
        }

        if (v29[1])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v29[1]);
        }

        v18 = [(DiskImageParamsXPC *)self backendXPC];
        v19 = v18;
        if (v18)
        {
          [v18 backend];
          v20 = v29[0];
        }

        else
        {
          v20 = 0;
          v29[0] = 0;
          v29[1] = 0;
        }

        v21 = (*(*v20 + 40))(v20);
        if (v29[1])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v29[1]);
        }

        if (v21)
        {
          v22 = [(DiskImageParamsXPC *)self backendXPC];
          if (v22)
          {
            [v22 backend];
          }

          else
          {
            v29[0] = 0;
            v29[1] = 0;
          }

          operator new();
        }

        v23 = [(DiskImageParamsXPC *)self backendXPC];
        if (v23)
        {
          [v23 backend];
        }

        else
        {
          v29[0] = 0;
          v29[1] = 0;
        }

        ptr = self->_header.__ptr_;
        operator new();
      }

      [(DiskImageParamsXPC *)self blockSize];
      [(DiskImageParamsXPC *)self blockSize];
      v16 = [(DiskImageParamsXPC *)self backendXPC];
      if (v16)
      {
        [v16 backend];
      }

      else
      {
        v25 = 0;
        v26 = 0;
      }

      operator new();
    }

    if (lpsrc[1])
    {
      goto LABEL_9;
    }

LABEL_10:
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    get_next_backend_in_graph(lpsrc, v29);
    v10 = *v29;
    v29[0] = 0;
    v29[1] = 0;
    v11 = lpsrc[1];
    *lpsrc = v10;
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      v12 = lpsrc[0];
      if (v29[1])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v29[1]);
      }

      v5 = v9;
      if (v12 == v6)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v5 = v9;
      if (v10 == v6)
      {
        goto LABEL_25;
      }
    }
  }

  v9 = lpsrc[1];
  if (!lpsrc[1])
  {
    goto LABEL_10;
  }

LABEL_9:
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  goto LABEL_10;
}

- (int)setSizeWithDiskImage:(void *)a3 newSize:(unint64_t)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v13[0].receiver = self;
  v13[0].super_class = DiskImageParamsASIF_XPC;
  v5 = [(objc_super *)v13 setSizeWithDiskImage:a3 newSize:a4];
  if (!v5)
  {
    v6 = *(a3 + 36);
    v7 = *(a3 + 11);
    v8 = *(a3 + 4);
    v15 = *(a3 + 3);
    v16 = v8;
    *v17 = *(a3 + 5);
    *&v17[14] = *(a3 + 94);
    v13[1] = *(a3 + 104);
    v14 = *(a3 + 15);
    v9 = *(a3 + 34);
    v10 = *(a3 + 16);
    operator new();
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

- (DiskImageParamsASIF_XPC)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = DiskImageParamsASIF_XPC;
  v5 = [(DiskImageParamsXPC *)&v10 initWithCoder:v4];
  if (v5 && [v4 containsValueForKey:@"sparseHeader"])
  {
    v9 = 0;
    if ([v4 decodeBytesForKey:@"sparseHeader" returnedLength:&v9])
    {
      if (v9 == 108)
      {
        operator new();
      }
    }

    exception = __cxa_allocate_exception(0x40uLL);
    std::ostringstream::basic_ostringstream[abi:ne200100](v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "Unexpected ASIF header length (", 31);
    MEMORY[0x24C1ED3C0](v8, v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ")", 1);
    DiskImagesRuntimeException::DiskImagesRuntimeException(exception, v8, 0x9Au);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = DiskImageParamsASIF_XPC;
  [(DiskImageParamsXPC *)&v6 encodeWithCoder:v4];
  ptr = self->_header.__ptr_;
  if (ptr)
  {
    [v4 encodeBytes:ptr length:108 forKey:@"sparseHeader"];
  }
}

- (id)instanceID
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_header.__ptr_)
  {
    bzero(v12, 0x210uLL);
    v9.receiver = self;
    v9.super_class = DiskImageParamsASIF_XPC;
    v3 = [(DiskImageParamsXPC *)&v9 instanceID];
    [v3 getUUIDBytes:v12];
    v4 = objc_alloc(MEMORY[0x277CCAD78]);
    v11[0] = di_utils::buffer_to_uuid(v12, 528);
    v11[1] = v5;
    v6 = [v4 initWithUUIDBytes:v11];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = DiskImageParamsASIF_XPC;
    v6 = [(DiskImageParamsXPC *)&v10 instanceID];
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (BOOL)setBlockSize:(unint64_t)a3 error:(id *)a4
{
  ptr = self->_header.__ptr_;
  if (ptr && *(ptr + 34) != a3)
  {

    return [DIError failWithPOSIXCode:22 description:@"Invalid block size for image" error:a4];
  }

  else
  {
    [(DiskImageParamsXPC *)self setBlockSize:a3, a4, v4, v5];
    return 1;
  }
}

- (void)setHeader:()unique_ptr<di_asif:(std::default_delete<di_asif::header>>)a3 :header
{
  v3 = *a3.__ptr_;
  if (*a3.__ptr_)
  {
    *a3.__ptr_ = 0;
    ptr = self->_header.__ptr_;
    self->_header.__ptr_ = v3;
    if (!ptr || (MEMORY[0x24C1ED730](ptr, 0x1000C40F139FF95), (v3 = self->_header.__ptr_) != 0))
    {
      v6 = *(v3 + 34);

      [(DiskImageParamsXPC *)self setBlockSize:v6];
    }
  }
}

@end