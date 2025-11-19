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
      operator delete();
    }

    if (v9)
    {
      [(DiskImageParamsXPC *)v8 setBlockSize:*(v9 + 68)];
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

      *&v29 = 0x200000001;
      sub_1000B03A8("header_ignore_fields_t", 2, &v29, 2);
      v13[98] = 2;
      if (v9)
      {
        sub_10000367C(v9);
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

        sub_10019A824(&v25, &v28);
        sub_10004B28C(&v28, &v29);
        if (*(&v28 + 1))
        {
          sub_10000367C(*(&v28 + 1));
        }

        if (v26)
        {
          sub_10000367C(v26);
        }

        v17 = v29;
        if (v29)
        {
          sub_1001593CC(*(v29 + 40));
          atomic_store(*(*(v17 + 40) + 16), (*(v17 + 40) + 64));
        }

        if (*(&v29 + 1))
        {
          sub_10000367C(*(&v29 + 1));
        }

        v18 = [(DiskImageParamsXPC *)self backendXPC];
        v19 = v18;
        if (v18)
        {
          [v18 backend];
          v20 = v29;
        }

        else
        {
          v20 = 0;
          v29 = 0uLL;
        }

        v21 = (*(*v20 + 40))(v20);
        if (*(&v29 + 1))
        {
          sub_10000367C(*(&v29 + 1));
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
            v29 = 0uLL;
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
          v29 = 0uLL;
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
      sub_10000367C(v5);
    }

    sub_10019AD28(lpsrc, &v29);
    v10 = v29;
    v29 = 0uLL;
    v11 = lpsrc[1];
    *lpsrc = v10;
    if (v11)
    {
      sub_10000367C(v11);
      v12 = lpsrc[0];
      if (*(&v29 + 1))
      {
        sub_10000367C(*(&v29 + 1));
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
  v12[0].receiver = self;
  v12[0].super_class = DiskImageParamsASIF_XPC;
  v5 = [(objc_super *)v12 setSizeWithDiskImage:a3 newSize:a4];
  if (!v5)
  {
    v6 = *(a3 + 36);
    v7 = *(a3 + 11);
    v8 = *(a3 + 4);
    v14 = *(a3 + 3);
    v15 = v8;
    *v16 = *(a3 + 5);
    *&v16[14] = *(a3 + 94);
    v12[1] = *(a3 + 104);
    v13 = *(a3 + 15);
    v9 = *(a3 + 34);
    v10 = *(a3 + 16);
    operator new();
  }

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
    sub_100002148(v8);
    sub_1000026BC(v8, "Unexpected ASIF header length (", 31);
    std::ostream::operator<<();
    sub_1000026BC(v8, ")", 1);
    sub_100004290(exception, v8, 0x9Au);
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
  if (self->_header.__ptr_)
  {
    bzero(v11, 0x210uLL);
    v8.receiver = self;
    v8.super_class = DiskImageParamsASIF_XPC;
    v3 = [(DiskImageParamsXPC *)&v8 instanceID];
    [v3 getUUIDBytes:v11];
    v4 = [NSUUID alloc];
    v10[0] = sub_10019E174(v11, 528);
    v10[1] = v5;
    v6 = [v4 initWithUUIDBytes:v10];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = DiskImageParamsASIF_XPC;
    v6 = [(DiskImageParamsXPC *)&v9 instanceID];
  }

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
    if (ptr)
    {
      operator delete();
    }

    v6 = *(v3 + 68);

    [(DiskImageParamsXPC *)self setBlockSize:v6];
  }
}

@end