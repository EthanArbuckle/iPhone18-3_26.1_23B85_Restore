@interface NSData(Compression)
- (id)inflate:()Compression error:;
- (void)inflateGzipWithError:()Compression;
- (void)inflateLZRawWithError:()Compression;
@end

@implementation NSData(Compression)

- (id)inflate:()Compression error:
{
  if (a3 == 1)
  {
    v4 = [a1 inflateGzipWithError:a4];
  }

  else
  {
    if (a3)
    {
      goto LABEL_6;
    }

    v4 = [a1 inflateLZRawWithError:a4];
  }

  a2 = v4;
LABEL_6:

  return a2;
}

- (void)inflateLZRawWithError:()Compression
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB28] dataWithLength:0x4000];
  v6 = compression_decode_buffer([v5 mutableBytes], objc_msgSend(v5, "length"), objc_msgSend(a1, "bytes"), objc_msgSend(a1, "length"), 0, COMPRESSION_LZ4_RAW);
  if (v6)
  {
    a3 = [v5 subdataWithRange:{0, v6}];
  }

  else
  {
    v7 = ABSLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v14 = "[NSData(Compression) inflateLZRawWithError:]";
      _os_log_impl(&dword_242072000, v7, OS_LOG_TYPE_DEFAULT, "%s - Failed to unzip", buf, 0xCu);
    }

    if (a3)
    {
      v11 = *MEMORY[0x277CCA450];
      v12 = @"Failed to decompress data";
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
      *a3 = [BCSError errorWithDomain:@"com.apple.businessservices" code:100 userInfo:v8];

      a3 = 0;
    }
  }

  v9 = *MEMORY[0x277D85DE8];

  return a3;
}

- (void)inflateGzipWithError:()Compression
{
  v37[1] = *MEMORY[0x277D85DE8];
  if (![a1 length])
  {
    a3 = a1;
    goto LABEL_30;
  }

  v5 = [a1 length];
  v6 = [a1 length];
  v7 = [MEMORY[0x277CBEB28] dataWithLength:v5 + (v6 >> 1)];
  v25.avail_in = [a1 length];
  v25.zalloc = 0;
  v25.zfree = 0;
  v25.total_out = 0;
  if (inflateInit2_(&v25, 47, "1.2.12", 112))
  {
    v8 = ABSLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v33 = "[NSData(Compression) inflateGzipWithError:]";
      _os_log_impl(&dword_242072000, v8, OS_LOG_TYPE_DEFAULT, "%s - Failed to inflate (gzip inflateInit2())", buf, 0xCu);
    }

    if (!a3)
    {
      goto LABEL_29;
    }

    v36 = *MEMORY[0x277CCA450];
    v37[0] = @"Failed to decompress data";
    v9 = MEMORY[0x277CBEAC0];
    v10 = v37;
    v11 = &v36;
    goto LABEL_28;
  }

  v12 = v6 >> 1;
  do
  {
    total_out = v25.total_out;
    if (total_out >= [v7 length])
    {
      [v7 increaseLengthBy:v12];
    }

    v14 = [v7 mutableBytes];
    v25.next_out = (v14 + v25.total_out);
    v15 = [v7 length];
    v25.avail_out = v15 - LODWORD(v25.total_out);
    v16 = inflate(&v25, 2);
  }

  while (!v16);
  v17 = v16;
  if (v16 != 1)
  {
    v18 = ABSLogCommon();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v33 = "[NSData(Compression) inflateGzipWithError:]";
      v34 = 1024;
      v35 = v17;
      _os_log_impl(&dword_242072000, v18, OS_LOG_TYPE_DEFAULT, "%s - Failed to inflate (gzip inflate()): %d", buf, 0x12u);
    }

    if (a3)
    {
      v30 = *MEMORY[0x277CCA450];
      v31 = @"Failed to decompress data";
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      *a3 = [BCSError errorWithDomain:@"com.apple.businessservices" code:100 userInfo:v19];
    }

    if (!inflateEnd(&v25))
    {
      v21 = ABSLogCommon();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v33 = "[NSData(Compression) inflateGzipWithError:]";
        _os_log_impl(&dword_242072000, v21, OS_LOG_TYPE_DEFAULT, "%s - Failed to inflate (!done)", buf, 0xCu);
      }

      if (!a3)
      {
        goto LABEL_29;
      }

      v26 = *MEMORY[0x277CCA450];
      v27 = @"Failed to decompress data";
      v9 = MEMORY[0x277CBEAC0];
      v10 = &v27;
      v11 = &v26;
LABEL_28:
      v22 = [v9 dictionaryWithObjects:v10 forKeys:v11 count:1];
      *a3 = [BCSError errorWithDomain:@"com.apple.businessservices" code:100 userInfo:v22];

      a3 = 0;
      goto LABEL_29;
    }

LABEL_20:
    v20 = ABSLogCommon();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v33 = "[NSData(Compression) inflateGzipWithError:]";
      _os_log_impl(&dword_242072000, v20, OS_LOG_TYPE_DEFAULT, "%s - Failed to inflate (gzip inflatedEnd())", buf, 0xCu);
    }

    if (!a3)
    {
      goto LABEL_29;
    }

    v28 = *MEMORY[0x277CCA450];
    v29 = @"Failed to decompress data";
    v9 = MEMORY[0x277CBEAC0];
    v10 = &v29;
    v11 = &v28;
    goto LABEL_28;
  }

  if (inflateEnd(&v25))
  {
    goto LABEL_20;
  }

  [v7 setLength:v25.total_out];
  a3 = [MEMORY[0x277CBEA90] dataWithData:v7];
LABEL_29:

LABEL_30:
  v23 = *MEMORY[0x277D85DE8];

  return a3;
}

@end