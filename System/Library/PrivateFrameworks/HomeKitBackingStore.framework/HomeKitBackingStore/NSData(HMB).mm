@interface NSData(HMB)
- (id)hmbCompress;
- (id)hmbDescription;
- (id)hmbUncompress;
@end

@implementation NSData(HMB)

- (id)hmbDescription
{
  v2 = [self length];
  v3 = MEMORY[0x277CCACA8];
  if (v2 < 0x41)
  {
    v5 = [self base64EncodedStringWithOptions:0];
    v4 = [v3 stringWithFormat:@"[%@]", v5];
  }

  else
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%lu bytes>", objc_msgSend(self, "length")];
  }

  return v4;
}

- (id)hmbUncompress
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:{2 * objc_msgSend(self, "length", 0, 0, 0, 0, 0, 0, 0)}];
  bzero(v23, 0x2000uLL);
  memset(&v18.zalloc, 0, 24);
  v4 = inflateInit2_(&v18, 15, "1.2.12", 112);
  if (v4)
  {
    v5 = v4;
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v20 = v9;
      v21 = 2048;
      v22 = v5;
      _os_log_impl(&dword_22AD27000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to initialize zlib for uncompression: %ld", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    v18.avail_in = [self length];
    while (1)
    {
      v18.avail_out = 0x2000;
      v18.next_out = v23;
      v10 = inflate(&v18, 2);
      if (v10 >= 2)
      {
        break;
      }

      [v3 appendBytes:v23 length:0x2000 - v18.avail_out];
      if (v10 == 1 && v18.avail_out)
      {
        inflateEnd(&v18);
        v11 = [v3 copy];
        goto LABEL_14;
      }
    }

    v12 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v20 = v15;
      v21 = 2048;
      v22 = v10;
      _os_log_impl(&dword_22AD27000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to inflate data: %ld", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    inflateEnd(&v18);
  }

  v11 = 0;
LABEL_14:

  objc_autoreleasePoolPop(v2);
  v16 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)hmbCompress
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  memset(&v17, 0, sizeof(v17));
  bzero(v22, 0x2000uLL);
  v3 = deflateInit2_(&v17, -1, 8, 15, 8, 0, "1.2.12", 112);
  if (v3)
  {
    v4 = v3;
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543618;
      v19 = v8;
      v20 = 2048;
      v21 = v4;
      _os_log_impl(&dword_22AD27000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to initialize zlib for compression: %ld", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:{deflateBound(&v17, objc_msgSend(self, "length", *&v17.next_in, *&v17.total_in, *&v17.avail_out, *&v17.msg))}];
    v17.avail_in = [self length];
    while (1)
    {
      v17.avail_out = 0x2000;
      v17.next_out = v22;
      if (deflate(&v17, 4) == -2)
      {
        break;
      }

      [v9 appendBytes:v22 length:0x2000 - v17.avail_out];
      if (v17.avail_out)
      {
        deflateEnd(&v17);
        v10 = [v9 copy];

        goto LABEL_13;
      }
    }

    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v19 = v14;
      v20 = 2048;
      v21 = -2;
      _os_log_impl(&dword_22AD27000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to deflate data: %ld", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    deflateEnd(&v17);
  }

  v10 = 0;
LABEL_13:
  objc_autoreleasePoolPop(v2);
  v15 = *MEMORY[0x277D85DE8];

  return v10;
}

@end