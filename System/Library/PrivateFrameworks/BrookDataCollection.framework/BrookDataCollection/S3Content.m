@interface S3Content
- (NSData)gzipContent;
- (NSString)mimeType;
- (S3Content)initWithContent:(id)a3 filename:(id)a4 bucket:(id)a5 gzip:(BOOL)a6;
- (id)_gzipCompressData:(id)a3;
- (void)setContent:(id)a3;
@end

@implementation S3Content

- (S3Content)initWithContent:(id)a3 filename:(id)a4 bucket:(id)a5 gzip:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = S3Content;
  v14 = [(S3Content *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_content, a3);
    objc_storeStrong(&v15->_filename, a4);
    objc_storeStrong(&v15->_bucket, a5);
    v15->_gzip = a6;
  }

  return v15;
}

- (NSString)mimeType
{
  if (self->_gzip)
  {
    return @"application/zlib";
  }

  else
  {
    return @"text/plain";
  }
}

- (void)setContent:(id)a3
{
  objc_storeStrong(&self->_content, a3);
  v6 = a3;
  gzipContentCache = self->_gzipContentCache;
  self->_gzipContentCache = 0;
}

- (NSData)gzipContent
{
  gzip = self->_gzip;
  gzipContentCache = self->_gzipContentCache;
  if (gzip && gzipContentCache == 0)
  {
    v6 = [(S3Content *)self _gzipCompressData:self->_content];
    v7 = self->_gzipContentCache;
    self->_gzipContentCache = v6;

    gzipContentCache = self->_gzipContentCache;
    if (!gzipContentCache)
    {
      [S3Content gzipContent];
    }
  }

  return gzipContentCache;
}

- (id)_gzipCompressData:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB28]);
  memset(&v10, 0, sizeof(v10));
  if (deflateInit2_(&v10, -1, 8, 31, 8, 0, "1.2.12", 112))
  {
    v5 = 0;
  }

  else
  {
    v10.avail_in = [v3 length];
    v10.next_in = [v3 bytes];
    do
    {
      v10.avail_out = 0x4000;
      v10.next_out = v11;
      v6 = deflate(&v10, 4);
      if (v6 == -2)
      {
        [S3Content _gzipCompressData:];
      }

      v7 = v6;
      [v4 appendBytes:v11 length:{0x4000 - v10.avail_out, v10.next_in}];
    }

    while (!v10.avail_out);
    if (v10.avail_in)
    {
      [S3Content _gzipCompressData:];
    }

    if (v7 != 1)
    {
      [S3Content _gzipCompressData:];
    }

    deflateEnd(&v10);
    v5 = v4;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v5;
}

@end