@interface OSAStreamDeflater
- (OSAStreamDeflater)init;
- (id)copyDeflatedDataFromStream:(__sFILE *)stream withCap:(unsigned int)cap;
- (void)dealloc;
@end

@implementation OSAStreamDeflater

- (OSAStreamDeflater)init
{
  v13 = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = OSAStreamDeflater;
  v2 = [(OSAStreamDeflater *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v2->_strm.zalloc = 0;
    v2->_strm.zfree = 0;
    v2->_strm.opaque = 0;
    v4 = deflateInit_(&v2->_strm, -1, "1.2.12", 112);
    if (v4)
    {
      v5 = v4;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v12 = v5;
        _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "OTALogArchive unable to initialize zlib (ret %d)", buf, 8u);
      }
    }

    else
    {
      v3->_in = malloc_type_malloc(0x10000uLL, 0x5139AC8DuLL);
      v3->_out = malloc_type_malloc(0x10000uLL, 0x6020C90uLL);
    }

    in = v3->_in;
    if (in)
    {
      if (v3->_out)
      {
        in = v3;
      }

      else
      {
        in = 0;
      }
    }
  }

  else
  {
    in = 0;
  }

  v7 = in;

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)dealloc
{
  out = self->_out;
  if (out)
  {
    free(out);
  }

  in = self->_in;
  if (in)
  {
    free(in);
  }

  deflateEnd(&self->_strm);
  v5.receiver = self;
  v5.super_class = OSAStreamDeflater;
  [(OSAStreamDeflater *)&v5 dealloc];
}

- (id)copyDeflatedDataFromStream:(__sFILE *)stream withCap:(unsigned int)cap
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = objc_alloc_init(MEMORY[0x277CBEB28]);
  self->_capViolation = 0;
  while (1)
  {
    self->_strm.avail_in = fread(self->_in, 1uLL, 0x10000uLL, stream);
    if (ferror(stream))
    {
      break;
    }

    v8 = feof(stream);
    v9 = v8 == 0;
    self->_strm.next_in = self->_in;
    do
    {
      self->_strm.avail_out = 0x10000;
      self->_strm.next_out = self->_out;
      deflate(&self->_strm, 4 * (v8 != 0));
      avail_out = self->_strm.avail_out;
      if (WORD1(avail_out))
      {
        break;
      }

      [v7 appendBytes:self->_out length:0x10000 - avail_out];
    }

    while (!self->_strm.avail_out);
    if ([v7 length] >= cap)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v16 = 67109120;
        capCopy = cap;
        _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "deflateStream abort at cap limit %u", &v16, 8u);
      }

      v7 = 0;
      self->_capViolation = 1;
      goto LABEL_15;
    }

    if (v8)
    {
      v9 = 0;
      goto LABEL_15;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v11 = *__error();
    v16 = 67109120;
    capCopy = v11;
    _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "deflateStream error reading (errno %d)", &v16, 8u);
  }

  v7 = 0;
  v9 = 1;
LABEL_15:
  deflateReset(&self->_strm);
  if (![v7 length])
  {

    v7 = 0;
  }

  if (v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = v7;
  }

  v13 = v12;

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

@end