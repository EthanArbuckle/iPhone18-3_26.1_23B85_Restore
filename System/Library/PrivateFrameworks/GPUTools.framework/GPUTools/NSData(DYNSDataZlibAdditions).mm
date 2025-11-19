@interface NSData(DYNSDataZlibAdditions)
+ (BOOL)dy_decompressData:()DYNSDataZlibAdditions inMutableData:error:;
+ (id)dy_dataByCompressingData:()DYNSDataZlibAdditions level:error:;
+ (id)dy_dataByDecompressingData:()DYNSDataZlibAdditions error:;
+ (id)dy_dataWithContentsOfGzipFileAtPath:()DYNSDataZlibAdditions error:;
+ (uint64_t)dy_decompressData:()DYNSDataZlibAdditions inBuffer:bufferSize:error:;
@end

@implementation NSData(DYNSDataZlibAdditions)

+ (id)dy_dataByCompressingData:()DYNSDataZlibAdditions level:error:
{
  memset(&v18, 0, sizeof(v18));
  if ((a4 - 1) >= 3)
  {
    if (a5)
    {
      v8 = -2;
      goto LABEL_7;
    }
  }

  else
  {
    v7 = deflateInit_(&v18, dword_24D65A970[a4 - 1], "1.2.12", 112);
    if (v7)
    {
      if (a5)
      {
        v8 = v7;
LABEL_7:
        v9 = [DYZlibError errorWithDomain:@"ZlibErrorDomain" code:v8 userInfo:0, v18.next_in];
        result = 0;
        *a5 = v9;
        return result;
      }
    }

    else
    {
      v11 = deflateBound(&v18, [a3 length]);
      v12 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:v11];
      v13 = a3;
      v18.avail_in = [a3 length];
      v18.next_out = [v12 mutableBytes];
      for (v18.avail_out = v11; ; v18.avail_out += v15 >> 2)
      {
        v14 = deflate(&v18, 4);
        if (v14)
        {
          break;
        }

        [v12 increaseLengthBy:{objc_msgSend(a3, "length") >> 2}];
        v15 = [a3 length];
      }

      v16 = v14;
      v17 = deflateEnd(&v18);

      if (v16 == 1 && !v17)
      {
        [v12 setLength:v18.total_out];
        return v12;
      }

      if (a5)
      {
        v8 = v16;
        goto LABEL_7;
      }
    }
  }

  return 0;
}

+ (id)dy_dataByDecompressingData:()DYNSDataZlibAdditions error:
{
  v6 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:4096];
  if ([MEMORY[0x277CBEA90] dy_decompressData:a3 inMutableData:v6 error:a4])
  {

    return v6;
  }

  else
  {

    return 0;
  }
}

+ (BOOL)dy_decompressData:()DYNSDataZlibAdditions inMutableData:error:
{
  v20 = *MEMORY[0x277D85DE8];
  memset(&strm.avail_in, 0, 104);
  strm.next_in = [a3 bytes];
  strm.avail_in = [a3 length];
  v8 = inflateInit_(&strm, "1.2.12", 112);
  if (v8)
  {
    if (!a5)
    {
      v10 = 0;
      goto LABEL_22;
    }

    v9 = [DYZlibError errorWithDomain:@"ZlibErrorDomain" code:v8 userInfo:0];
    v10 = 0;
    goto LABEL_20;
  }

  do
  {
    strm.next_out = v19;
    strm.avail_out = 4096;
    v11 = inflate(&strm, 2);
    v12 = v11;
    if (strm.avail_out)
    {
      v13 = v11 == 1;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      [a4 appendBytes:v19 length:4096 - strm.avail_out];
    }
  }

  while (!v12);
  v14 = inflateEnd(&strm);
  objc_opt_self();
  v10 = v12 == 1 && v14 == 0;
  if (a5 && !v10)
  {
    v9 = [DYZlibError errorWithDomain:@"ZlibErrorDomain" code:v12 userInfo:0];
LABEL_20:
    *a5 = v9;
  }

LABEL_22:
  v16 = *MEMORY[0x277D85DE8];
  return v10;
}

+ (uint64_t)dy_decompressData:()DYNSDataZlibAdditions inBuffer:bufferSize:error:
{
  memset(&v15.avail_in, 0, 104);
  v15.avail_in = [a3 length];
  v9 = inflateInit_(&v15, "1.2.12", 112);
  if (v9)
  {
    if (a6)
    {
      v10 = v9;
LABEL_9:
      v14 = [DYZlibError errorWithDomain:@"ZlibErrorDomain" code:v10 userInfo:0];
      result = 0;
      *a6 = v14;
      return result;
    }
  }

  else
  {
    v15.next_out = a4;
    v15.avail_out = a5;
    v11 = inflate(&v15, 4);
    v12 = inflateEnd(&v15);
    if (v11 == 1 && !v12)
    {
      objc_opt_self();
      return 1;
    }

    if (a6)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }

  return 0;
}

+ (id)dy_dataWithContentsOfGzipFileAtPath:()DYNSDataZlibAdditions error:
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = gzopen([a3 fileSystemRepresentation], "rb");
  if (v5)
  {
    v6 = v5;
    v7 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:4096];
    while (!gzeof(v6))
    {
      v8 = gzread(v6, buf, 0x2000u);
      if (v8 == -1)
      {
        errnum = 0;
        gzerror(v6, &errnum);
        if (errnum == -1)
        {
          if (a4)
          {
            v13 = MEMORY[0x277CCA9B8];
            v14 = *MEMORY[0x277CCA5B8];
            v15 = *__error();
            v11 = v13;
            v12 = v14;
LABEL_14:
            *a4 = [__objc2_class errorWithDomain:v11 code:"errorWithDomain:code:userInfo:" userInfo:v12];
          }
        }

        else if (a4)
        {
          v11 = DYZlibError;
          v12 = @"ZlibErrorDomain";
          goto LABEL_14;
        }

        v7 = 0;
        break;
      }

      [v7 appendBytes:buf length:v8];
    }

    gzclose(v6);
    result = v7;
  }

  else if (a4)
  {
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
    result = 0;
    *a4 = v9;
  }

  else
  {
    result = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

@end