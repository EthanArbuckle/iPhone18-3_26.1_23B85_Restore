@interface NSData
- (id)dbg_gzipDeflate;
- (id)dbg_gzipDeflateWithLevel:(int)level windowBits:(int)bits memLevel:(int)memLevel;
- (id)dbg_gzipInflate;
- (id)dbg_gzipInflateIfCompressed;
- (id)dbg_gzipInflateWithWindowBits:(int)bits;
@end

@implementation NSData

- (id)dbg_gzipInflateIfCompressed
{
  if ([(NSData *)self dbg_isGzipped])
  {
    selfCopy = [(NSData *)self dbg_gzipInflate];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)dbg_gzipInflate
{
  v3 = DebugHierarchyGzipOSLog();
  v4 = os_signpost_id_make_with_pointer(v3, self);
  v5 = v3;
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    v9 = 134217984;
    v10 = [(NSData *)self length];
    _os_signpost_emit_with_name_impl(&dword_0, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "Inflate", "Begin with size: %{xcode:size-in-bytes}lu", &v9, 0xCu);
  }

  v7 = [(NSData *)self dbg_gzipInflateWithWindowBits:47];

  return v7;
}

- (id)dbg_gzipInflateWithWindowBits:(int)bits
{
  if (![(NSData *)self length])
  {
    selfCopy = self;
    goto LABEL_26;
  }

  v5 = [(NSData *)self length];
  v6 = [(NSData *)self length];
  v7 = [NSMutableData dataWithLength:v5 + (v6 >> 1)];
  v27.avail_in = [(NSData *)self length:[(NSData *)self bytes]];
  v27.zalloc = 0;
  v27.zfree = 0;
  v27.total_out = 0;
  if (!inflateInit2_(&v27, bits, "1.2.12", 112))
  {
    v13 = v6 >> 1;
    do
    {
      total_out = v27.total_out;
      if (total_out >= [v7 length])
      {
        [v7 increaseLengthBy:v13];
      }

      mutableBytes = [v7 mutableBytes];
      v27.next_out = &mutableBytes[v27.total_out];
      v16 = [v7 length];
      v27.avail_out = v16 - LODWORD(v27.total_out);
      v17 = inflate(&v27, 2);
    }

    while (!v17);
    if (v17 == 1)
    {
      if (!inflateEnd(&v27))
      {
        [v7 setLength:v27.total_out];
        selfCopy = [NSData dataWithData:v7];
        v18 = DebugHierarchyGzipOSLog();
        v19 = os_signpost_id_make_with_pointer(v18, self);
        v20 = v18;
        v11 = v20;
        if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
        {
          v21 = [(NSData *)selfCopy length];
          *buf = 134217984;
          *&buf[4] = v21;
          _os_signpost_emit_with_name_impl(&dword_0, v11, OS_SIGNPOST_INTERVAL_END, v19, "Inflate", "Completed with size: %{xcode:size-in-bytes}lu", buf, 0xCu);
        }

        goto LABEL_25;
      }
    }

    else if (!inflateEnd(&v27))
    {
      v24 = DebugHierarchyGzipOSLog();
      v9 = os_signpost_id_make_with_pointer(v24, self);
      v25 = v24;
      v11 = v25;
      if (v9 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v25))
      {
        goto LABEL_24;
      }

      *buf = 67109120;
      goto LABEL_23;
    }

    v22 = DebugHierarchyGzipOSLog();
    v9 = os_signpost_id_make_with_pointer(v22, self);
    v23 = v22;
    v11 = v23;
    if (v9 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v23))
    {
      goto LABEL_24;
    }

    *buf = 67109120;
    goto LABEL_23;
  }

  v8 = DebugHierarchyGzipOSLog();
  v9 = os_signpost_id_make_with_pointer(v8, self);
  v10 = v8;
  v11 = v10;
  if (v9 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v10))
  {
    goto LABEL_24;
  }

  *buf = 67109120;
LABEL_23:
  _os_signpost_emit_with_name_impl(&dword_0, v11, OS_SIGNPOST_INTERVAL_END, v9, "Inflate", "Completed with size: %{xcode:size-in-bytes}d", buf, 8u);
LABEL_24:
  selfCopy = 0;
LABEL_25:

LABEL_26:

  return selfCopy;
}

- (id)dbg_gzipDeflate
{
  v3 = DebugHierarchyGzipOSLog();
  v4 = os_signpost_id_make_with_pointer(v3, self);
  v5 = v3;
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    v9 = 134217984;
    v10 = [(NSData *)self length];
    _os_signpost_emit_with_name_impl(&dword_0, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "Deflate", "Begin with size: %{xcode:size-in-bytes}lu", &v9, 0xCu);
  }

  v7 = [(NSData *)self dbg_gzipDeflateWithLevel:2 windowBits:31 memLevel:9];

  return v7;
}

- (id)dbg_gzipDeflateWithLevel:(int)level windowBits:(int)bits memLevel:(int)memLevel
{
  if ([(NSData *)self length])
  {
    memset(&strm.avail_in, 0, 104);
    strm.next_in = [(NSData *)self bytes];
    strm.avail_in = [(NSData *)self length];
    if (deflateInit2_(&strm, level, 8, bits, memLevel, 0, "1.2.12", 112))
    {
      v9 = DebugHierarchyGzipOSLog();
      v10 = os_signpost_id_make_with_pointer(v9, self);
      v11 = v9;
      v12 = v11;
      if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
      {
        v26 = 67109120;
        LODWORD(v27) = 0;
        _os_signpost_emit_with_name_impl(&dword_0, v12, OS_SIGNPOST_INTERVAL_END, v10, "Deflate", "Completed with size: %{xcode:size-in-bytes}d", &v26, 8u);
      }

      selfCopy = 0;
      v14 = v12;
    }

    else
    {
      v14 = [NSMutableData dataWithLength:0x4000];
      do
      {
        total_out = strm.total_out;
        if (total_out >= [v14 length])
        {
          [v14 increaseLengthBy:0x4000];
        }

        mutableBytes = [v14 mutableBytes];
        strm.next_out = &mutableBytes[strm.total_out];
        v21 = [v14 length];
        strm.avail_out = v21 - LODWORD(strm.total_out);
        deflate(&strm, 4);
      }

      while (!strm.avail_out);
      deflateEnd(&strm);
      [v14 setLength:strm.total_out];
      selfCopy = [NSData dataWithData:v14];
      v22 = DebugHierarchyGzipOSLog();
      v23 = os_signpost_id_make_with_pointer(v22, self);
      v24 = v22;
      v12 = v24;
      if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
      {
        v26 = 134217984;
        v27 = [(NSData *)selfCopy length];
        _os_signpost_emit_with_name_impl(&dword_0, v12, OS_SIGNPOST_INTERVAL_END, v23, "Deflate", "Completed with size: %{xcode:size-in-bytes}lu", &v26, 0xCu);
      }
    }
  }

  else
  {
    v15 = DebugHierarchyGzipOSLog();
    v16 = os_signpost_id_make_with_pointer(v15, self);
    v17 = v15;
    v18 = v17;
    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      strm.next_in = 67109120;
      _os_signpost_emit_with_name_impl(&dword_0, v18, OS_SIGNPOST_INTERVAL_END, v16, "Deflate", "Completed with size: %{xcode:size-in-bytes}d", &strm, 8u);
    }

    selfCopy = self;
  }

  return selfCopy;
}

@end