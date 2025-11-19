@interface DTXBlockCompressorLibCompression
- (BOOL)uncompressBuffer:(const char *)a3 ofLength:(unint64_t)a4 toBuffer:(char *)a5 withKnownUncompressedLength:(unint64_t)a6 usingCompressionType:(int)a7;
- (unint64_t)compressBuffer:(const char *)a3 ofLength:(unint64_t)a4 toBuffer:(char *)a5 ofLength:(unint64_t)a6 usingCompressionType:(int)a7 withFinalCompressionType:(int *)a8;
- (void)dealloc;
@end

@implementation DTXBlockCompressorLibCompression

- (void)dealloc
{
  p_lz4ScratchBuffer = &self->_lz4ScratchBuffer;
  v4 = atomic_load(&self->_lz4ScratchBuffer);
  if (v4)
  {
    free(v4);
    atomic_store(0, p_lz4ScratchBuffer);
  }

  v5 = atomic_load(&self->_lzfseScratchBuffer);
  if (v5)
  {
    free(v5);
    atomic_store(0, &self->_lzfseScratchBuffer);
  }

  v6.receiver = self;
  v6.super_class = DTXBlockCompressorLibCompression;
  [(DTXBlockCompressorLibCompression *)&v6 dealloc];
}

- (unint64_t)compressBuffer:(const char *)a3 ofLength:(unint64_t)a4 toBuffer:(char *)a5 ofLength:(unint64_t)a6 usingCompressionType:(int)a7 withFinalCompressionType:(int *)a8
{
  if (!a4 || !a3 || !a5 || !a6 || !a8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      LOWORD(strm.next_in) = 0;
      _os_log_impl(&dword_247F3D000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "invalid args", &strm, 2u);
    }

    return 0;
  }

  if ((a7 - 5) > 1)
  {
    v19 = a7 - 3;
    if (a7 - 3) <= 7 && ((0xF3u >> v19))
    {
      v21 = dword_247F5C8E0[v19];
      v22 = dword_247F5C8C0[v19];
      v23 = sub_247F3E384(self, v21);
      *a8 = v22;
      total_out_low = compression_encode_buffer(a5, a6, a3, a4, v23, v21);
      sub_247F3E418(self, v21, v23);
      return total_out_low;
    }

    return 0;
  }

  if ((a6 | a4) >> 32)
  {
    return 0;
  }

  *a8 = a7;
  memset(&strm.opaque, 0, 32);
  if (a7 == 5)
  {
    v13 = 1;
  }

  else
  {
    v13 = -1;
  }

  memset(&strm, 0, 80);
  v14 = deflateInit_(&strm, v13, "1.2.12", 112);
  if (v14)
  {
    objc_msgSend_raise_format_(MEMORY[0x277CBEAD8], v15, @"DTXMessageCompressionException", @"defaultInit() failed with error %d", v14);
  }

  strm.avail_in = a4;
  strm.next_in = a3;
  strm.avail_out = a6;
  strm.next_out = a5;
  v16 = deflate(&strm, 4);
  if (v16 == 1)
  {
    total_out_low = LODWORD(strm.total_out);
  }

  else
  {
    objc_msgSend_raise_format_(MEMORY[0x277CBEAD8], v17, @"DTXMessageCompressionException", @"deflate() returned unexpected result %d", v16);
    total_out_low = 0;
  }

  deflateEnd(&strm);
  return total_out_low;
}

- (BOOL)uncompressBuffer:(const char *)a3 ofLength:(unint64_t)a4 toBuffer:(char *)a5 withKnownUncompressedLength:(unint64_t)a6 usingCompressionType:(int)a7
{
  v35 = *MEMORY[0x277D85DE8];
  if (!a6 || !a4 || !a3 || !a5)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    LOWORD(strm.next_in) = 0;
    v16 = MEMORY[0x277D86220];
    v17 = "invalid args";
    v18 = 2;
LABEL_14:
    _os_log_impl(&dword_247F3D000, v16, OS_LOG_TYPE_ERROR, v17, &strm, v18);
    goto LABEL_28;
  }

  if ((a7 - 5) <= 1)
  {
    if (!((a6 | a4) >> 32))
    {
      memset(&strm, 0, sizeof(strm));
      v11 = inflateInit_(&strm, "1.2.12", 112);
      if (v11)
      {
        objc_msgSend_raise_format_(MEMORY[0x277CBEAD8], v12, @"DTXMessageCompressionException", @"inflateInit() failed with error %d", v11);
      }

      strm.avail_in = a4;
      strm.next_in = a3;
      strm.avail_out = a6;
      strm.next_out = a5;
      v13 = inflate(&strm, 4);
      if (v13 == 1)
      {
        total_out = strm.total_out;
        if (strm.total_out == a6)
        {
          v15 = 1;
LABEL_25:
          inflateEnd(&strm);
          goto LABEL_29;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 67109376;
          v31 = a6;
          v32 = 2048;
          v33 = total_out;
          v25 = MEMORY[0x277D86220];
          v26 = "inflate() returned unexpected uncompressed size, expected %u but was %lu";
          v27 = 18;
          goto LABEL_23;
        }
      }

      else
      {
        v24 = v13;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v31 = v24;
          v25 = MEMORY[0x277D86220];
          v26 = "inflate() returned unexpected result %d";
          v27 = 8;
LABEL_23:
          _os_log_impl(&dword_247F3D000, v25, OS_LOG_TYPE_ERROR, v26, buf, v27);
        }
      }

      v15 = 0;
      goto LABEL_25;
    }

LABEL_28:
    v15 = 0;
    goto LABEL_29;
  }

  v19 = a7 - 3;
  if ((a7 - 3) > 7 || ((0xF3u >> v19) & 1) == 0)
  {
    goto LABEL_28;
  }

  v21 = dword_247F5C8E0[v19];
  v22 = sub_247F3E384(self, v21);
  v23 = compression_decode_buffer(a5, a6, a3, a4, v22, v21);
  sub_247F3E418(self, v21, v22);
  if (v23 != a6)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    LODWORD(strm.next_in) = 134218240;
    *(&strm.next_in + 4) = a6;
    *(&strm.avail_in + 2) = 2048;
    *(&strm.avail_in + 6) = v23;
    v16 = MEMORY[0x277D86220];
    v17 = "decompression: expected decompressed size to be %zu bytes in length but was %zu instead, probable data corruption - please file a bug report";
    v18 = 22;
    goto LABEL_14;
  }

  v15 = 1;
LABEL_29:
  v28 = *MEMORY[0x277D85DE8];
  return v15;
}

@end