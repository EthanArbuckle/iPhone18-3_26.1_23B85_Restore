@interface NSData(Compression)
- (id)hmd_compressedData;
- (id)hmd_uncompressedData;
@end

@implementation NSData(Compression)

- (id)hmd_uncompressedData
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:{2 * objc_msgSend(self, "length", 0, 0, 0, 0, 0, 0, 0)}];
  bzero(v19, 0x2000uLL);
  memset(&v14.zalloc, 0, 24);
  v4 = inflateInit2_(&v14, 15, "1.2.12", 112);
  if (v4)
  {
    v5 = v4;
    v6 = objc_autoreleasePoolPush();
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543618;
      v16 = v8;
      v17 = 1024;
      v18 = v5;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize zlib for uncompression, error %d", buf, 0x12u);
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    v14.avail_in = [self length];
    while (1)
    {
      v14.avail_out = 0x2000;
      v14.next_out = v19;
      v9 = inflate(&v14, 2);
      if (v9 >= 2)
      {
        break;
      }

      v10 = v9;
      [v3 appendBytes:v19 length:0x2000 - v14.avail_out];
      if (v10 == 1 && v14.avail_out)
      {
        inflateEnd(&v14);
        v11 = [v3 copy];
        goto LABEL_12;
      }
    }

    inflateEnd(&v14);
  }

  v11 = 0;
LABEL_12:

  objc_autoreleasePoolPop(v2);
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)hmd_compressedData
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  memset(&v15, 0, sizeof(v15));
  bzero(v20, 0x2000uLL);
  v3 = deflateInit2_(&v15, -1, 8, 15, 8, 0, "1.2.12", 112);
  if (v3)
  {
    v4 = v3;
    v5 = objc_autoreleasePoolPush();
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543618;
      v17 = v7;
      v18 = 1024;
      v19 = v4;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize zlib for compression, error %d", buf, 0x12u);
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:{deflateBound(&v15, objc_msgSend(self, "length", *&v15.next_in, *&v15.total_in, *&v15.avail_out, *&v15.msg))}];
    v15.avail_in = [self length];
    while (1)
    {
      v15.avail_out = 0x2000;
      v15.next_out = v20;
      if (deflate(&v15, 4) == -2)
      {
        break;
      }

      [v8 appendBytes:v20 length:0x2000 - v15.avail_out];
      if (v15.avail_out)
      {
        deflateEnd(&v15);
        v9 = [v8 copy];

        goto LABEL_13;
      }
    }

    v10 = objc_autoreleasePoolPush();
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v17 = v12;
      v18 = 1024;
      v19 = -2;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to compress, error %d", buf, 0x12u);
    }

    objc_autoreleasePoolPop(v10);
    deflateEnd(&v15);
  }

  v9 = 0;
LABEL_13:
  objc_autoreleasePoolPop(v2);
  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

@end