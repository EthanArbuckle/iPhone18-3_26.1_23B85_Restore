@interface GEOAPUploadFileWriter
- (void)_arpcDataForType:(int)a3 dataBlock:(id)a4;
- (void)dealloc;
@end

@implementation GEOAPUploadFileWriter

- (void)dealloc
{
  fd = self->_fd;
  if ((fd & 0x80000000) == 0)
  {
    close(fd);
  }

  if (self->_compress)
  {
    compression_stream_destroy(&self->_cstream);
    free(self->_dstBuf);
  }

  v4 = +[NSFileManager defaultManager];
  v5 = [v4 fileExistsAtPath:self->_tempFilePath];

  if (v5)
  {
    v6 = +[NSFileManager defaultManager];
    [v6 removeItemAtPath:self->_tempFilePath error:0];
  }

  v7.receiver = self;
  v7.super_class = GEOAPUploadFileWriter;
  [(GEOAPUploadFileWriter *)&v7 dealloc];
}

- (void)_arpcDataForType:(int)a3 dataBlock:(id)a4
{
  v5 = a4;
  v7 = objc_alloc_init(GEOLogMessageCollectionRequest);
  [v7 requestTypeCode];
  v6 = GEOProtocolBufferRequestHeader();
  v5[2](v5, v6, a3 != 13);
}

@end