@interface BUZipInflateReadChannel
+ (void)test_setMaxBufferSize:(unint64_t)a3;
- (BOOL)processData:(id)a3 inflateResult:(int *)a4 CRC:(unsigned int *)a5 isDone:(BOOL)a6 handler:(id)a7;
- (BUZipInflateReadChannel)initWithReadChannel:(id)a3 uncompressedSize:(unint64_t)a4 CRC:(unsigned int)a5 validateCRC:(BOOL)a6;
- (void)close;
- (void)dealloc;
- (void)handleFailureWithHandler:(id)a3 error:(id)a4;
- (void)prepareBuffer;
- (void)readWithHandler:(id)a3;
@end

@implementation BUZipInflateReadChannel

+ (void)test_setMaxBufferSize:(unint64_t)a3
{
  v3 = 0xFFFFFFFFLL;
  if (a3 < 0xFFFFFFFF)
  {
    v3 = a3;
  }

  if (!a3)
  {
    v3 = 0x40000;
  }

  qword_27EC72970 = v3;
}

- (BUZipInflateReadChannel)initWithReadChannel:(id)a3 uncompressedSize:(unint64_t)a4 CRC:(unsigned int)a5 validateCRC:(BOOL)a6
{
  v11 = a3;
  v16.receiver = self;
  v16.super_class = BUZipInflateReadChannel;
  v12 = [(BUZipInflateReadChannel *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_readChannel, a3);
    v13->_stream.next_in = 0;
    v13->_remainingUncompressedSize = a4;
    v13->_CRC = a5;
    v13->_validateCRC = a6;
    v13->_stream.avail_in = 0;
    v13->_stream.avail_out = 0;
    v13->_stream.next_out = 0;
    v13->_stream.zfree = 0;
    v13->_stream.opaque = 0;
    v13->_stream.zalloc = 0;
    if (inflateInit2_(&v13->_stream, -15, "1.2.12", 112))
    {
      v14 = BUZipLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_241DD1A40();
      }

      v13 = 0;
    }
  }

  return v13;
}

- (void)dealloc
{
  objc_msgSend_close(self, a2, v2);
  inflateEnd(&self->_stream);
  free(self->_outBuffer);
  v4.receiver = self;
  v4.super_class = BUZipInflateReadChannel;
  [(BUZipInflateReadChannel *)&v4 dealloc];
}

- (void)prepareBuffer
{
  v4 = objc_msgSend_remainingUncompressedSize(self, a2, v2);
  v7 = qword_27EC72970;
  if (v4)
  {
    v8 = objc_msgSend_remainingUncompressedSize(self, v5, v6);
    if (v7 >= v8)
    {
      v7 = v8;
    }
  }

  self->_outBufferSize = v7;
  v9 = malloc_type_malloc(v7, 0x100004077774924uLL);
  self->_outBuffer = v9;
  self->_stream.avail_out = self->_outBufferSize;
  self->_stream.next_out = v9;
}

- (void)readWithHandler:(id)a3
{
  v4 = a3;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = 1;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 1;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v17 = 0;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v15 = crc32(0, 0, 0);
  readChannel = self->_readChannel;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_241DCD154;
  v8[3] = &unk_278D1DDF8;
  v10 = v20;
  v8[4] = self;
  v6 = v4;
  v9 = v6;
  v11 = v16;
  v12 = v18;
  v13 = v14;
  objc_msgSend_readWithHandler_(readChannel, v7, v8);

  _Block_object_dispose(v14, 8);
  _Block_object_dispose(v16, 8);
  _Block_object_dispose(v18, 8);
  _Block_object_dispose(v20, 8);
}

- (BOOL)processData:(id)a3 inflateResult:(int *)a4 CRC:(unsigned int *)a5 isDone:(BOOL)a6 handler:(id)a7
{
  v8 = a6;
  v12 = a3;
  v13 = a7;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 1;
  applier[0] = MEMORY[0x277D85DD0];
  applier[1] = 3221225472;
  applier[2] = sub_241DCD458;
  applier[3] = &unk_278D1DE20;
  v25 = &v28;
  v26 = a4;
  applier[4] = self;
  v27 = a5;
  v14 = v13;
  v24 = v14;
  dispatch_data_apply(v12, applier);
  v17 = objc_msgSend_validateCRC(self, v15, v16);
  v19 = *(v29 + 24);
  if ((v17 & v19) != 1)
  {
    goto LABEL_9;
  }

  if (v8)
  {
    if (!a5)
    {
LABEL_8:
      LOBYTE(v19) = 1;
LABEL_9:
      if ((v19 & 1) == 0 || !v8 || *a4 == 1)
      {
        if (v19)
        {
          v20 = 1;
          goto LABEL_20;
        }

LABEL_19:
        objc_msgSend_handleFailureWithHandler_error_(self, v18, v14, 0);
        v20 = *(v29 + 24);
        goto LABEL_20;
      }

      v21 = BUZipLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_241DD1AC0();
      }

LABEL_18:

      *(v29 + 24) = 0;
      goto LABEL_19;
    }

LABEL_7:
    if (self->_CRC != *a5)
    {
      v21 = BUZipLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_241DD1A80();
      }

      goto LABEL_18;
    }

    goto LABEL_8;
  }

  v20 = 1;
  if (a5 && *a4 == 1)
  {
    goto LABEL_7;
  }

LABEL_20:

  _Block_object_dispose(&v28, 8);
  return v20 & 1;
}

- (void)handleFailureWithHandler:(id)a3 error:(id)a4
{
  if (a4)
  {
    v5 = *(a3 + 2);
    v9 = a3;
    v5();
  }

  else
  {
    v6 = MEMORY[0x277CCA9B8];
    v7 = a3;
    v9 = objc_msgSend_bu_fileReadUnknownErrorWithUserInfo_(v6, v8, 0);
    (*(a3 + 2))(v7, 1, 0);
  }
}

- (void)close
{
  v4 = objc_msgSend_readChannel(self, a2, v2);
  objc_msgSend_close(v4, v5, v6);

  MEMORY[0x2821F9670](self, sel_setReadChannel_, 0);
}

@end