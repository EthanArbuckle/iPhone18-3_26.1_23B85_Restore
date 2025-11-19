@interface MFData
- (BOOL)writeToFile:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (BOOL)writeToURL:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (MFData)initWithBytes:(const void *)a3 length:(unint64_t)a4;
- (MFData)initWithContentsOfFile:(id)a3;
- (MFData)initWithContentsOfFile:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (MFData)initWithContentsOfURL:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (id)_initWithData:(id)a3 maybeMutable:(BOOL)a4;
- (id)_initWithFile:(id)a3;
- (id)_initWithRange:(_NSRange)a3 from:(id)a4 retainingParent:(BOOL)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)data;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)subdataWithRange:(_NSRange)a3;
- (void)dealloc;
@end

@implementation MFData

- (id)_initWithFile:(id)a3
{
  v6.receiver = self;
  v6.super_class = MFData;
  v4 = [(MFData *)&v6 init];
  if (v4)
  {
    v4->_path = a3;
    v4->_internal = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:v4->_path options:1 error:0];
  }

  return v4;
}

- (MFData)initWithBytes:(const void *)a3 length:(unint64_t)a4
{
  v13.receiver = self;
  v13.super_class = MFData;
  v6 = [(MFData *)&v13 init];
  if (v6)
  {
    if ((a4 & 0x8000000000000000) != 0)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@: absurd %s: %lu, maximum size: %llu bytes", _NSMethodExceptionProem(), "length", a4, 0x7FFFFFFFFFFFFFFFLL}];
    }

    if (sDefaultThreshold <= a4)
    {
      pthread_once(&sMFDataOnce, _MFDataInit);
      v8 = [MEMORY[0x1E696AC08] defaultManager];
      v9 = [v8 mf_makeUniqueFileInDirectory:sMFDataPath];
      v6->_path = v9;
      v10 = open([(NSString *)v9 fileSystemRepresentation], 1537, 438);
      if (v10 == -1)
      {
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Could not create cache file at %@ (%d).", sMFDataPath, *__error()}];
      }

      else
      {
        v11 = v10;
        MFProtectFileDescriptor(v10, 3);
        if (write(v11, a3, a4) == -1)
        {
          [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Error occured in write: (%d)", *__error()}];
        }

        close(v11);
      }

      v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:v6->_path options:1 error:0];
    }

    else
    {
      v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:a3 length:a4];
    }

    v6->_internal = v7;
    if (!v7)
    {

      return 0;
    }
  }

  return v6;
}

- (MFData)initWithContentsOfURL:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  if ([a3 isFileURL])
  {
    v9 = [a3 path];

    return [(MFData *)self initWithContentsOfFile:v9 options:a4 error:a5];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = MFData;
    v11 = [(MFData *)&v13 init];
    if (v11)
    {
      v12 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:a3 options:a4 error:a5];
      v11->_internal = v12;
      if (!v12)
      {

        return 0;
      }
    }

    return v11;
  }
}

- (MFData)initWithContentsOfFile:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  pthread_once(&sMFDataOnce, _MFDataInit);
  v18.receiver = self;
  v18.super_class = MFData;
  v9 = [(MFData *)&v18 init];
  if (!v9)
  {
    return v9;
  }

  if (a4)
  {
    v13 = objc_alloc(MEMORY[0x1E695DEF0]);
  }

  else
  {
    v10 = [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
    v11 = [objc_msgSend(v10 objectForKey:{*MEMORY[0x1E696A3B8]), "unsignedIntegerValue"}];
    v12 = sDefaultThreshold;
    v13 = objc_alloc(MEMORY[0x1E695DEF0]);
    if (v12 <= v11)
    {
      v14 = a4 | 1;
      v15 = a3;
      goto LABEL_7;
    }
  }

  v15 = a3;
  v14 = a4;
LABEL_7:
  v16 = [v13 initWithContentsOfFile:v15 options:v14 error:a5];
  v9->_internal = v16;
  if (!v16)
  {

    return 0;
  }

  return v9;
}

- (MFData)initWithContentsOfFile:(id)a3
{
  v5 = [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
  v6 = [objc_msgSend(v5 objectForKey:{*MEMORY[0x1E696A3B8]), "unsignedIntegerValue"}];
  if (sDefaultThreshold <= v6)
  {

    return [(MFData *)self initWithContentsOfFile:a3 options:0 error:0];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = MFData;
    v7 = [(MFData *)&v10 init];
    if (v7)
    {
      v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:a3];
      v7->_internal = v8;
      if (!v8)
      {

        return 0;
      }
    }

    return v7;
  }
}

- (id)_initWithData:(id)a3 maybeMutable:(BOOL)a4
{
  v4 = a4;
  v10.receiver = self;
  v10.super_class = MFData;
  v6 = [(MFData *)&v10 init];
  if (v6)
  {
    v7 = [a3 length];
    if (v7 >= sDefaultThreshold)
    {
      if (![a3 mf_immutable] && v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v8 = [objc_alloc(objc_opt_class()) initWithBytes:objc_msgSend(a3 length:{"bytes"), objc_msgSend(a3, "length")}];
      }

      else
      {
        v8 = a3;
      }
    }

    else
    {
      v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithData:a3];
    }

    v6->_internal = v8;
    if (!v8)
    {

      return 0;
    }
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];

  return [v4 initWithData:self];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [MFMutableData allocWithZone:a3];

  return [(MFMutableData *)v4 initWithData:self];
}

- (void)dealloc
{
  if (self->_subdata && !self->_parent)
  {
    v3 = MFLogGeneral();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      os_unfair_lock_lock(&sWaterMarkLock);
      v4 = [(NSData *)self->_internal length];
      _MergedGlobals -= v4;
      os_unfair_lock_unlock(&sWaterMarkLock);
    }
  }

  path = self->_path;
  if (path)
  {
    MFRemoveItemAtPath(path);
  }

  v6.receiver = self;
  v6.super_class = MFData;
  [(MFData *)&v6 dealloc];
}

- (id)subdataWithRange:(_NSRange)a3
{
  v3 = [objc_alloc(objc_opt_class()) _initWithRange:a3.location from:a3.length retainingParent:{self, sDefaultThreshold <= a3.length}];

  return v3;
}

- (id)_initWithRange:(_NSRange)a3 from:(id)a4 retainingParent:(BOOL)a5
{
  v5 = a5;
  length = a3.length;
  location = a3.location;
  v25 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    if (([a4 mf_containsRange:{a3.location, a3.length}] & 1) == 0)
    {
      v10 = MFLogGeneral();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v19 = 134218496;
        v20 = location;
        v21 = 2048;
        v22 = location + length;
        v23 = 2048;
        v24 = [(MFData *)self length];
        _os_log_error_impl(&dword_1D36B2000, v10, OS_LOG_TYPE_ERROR, "requesting out-of-bounds subdata range %lu..<%lu from data of length %lu", &v19, 0x20u);
      }
    }
  }

  v11 = [a4 bytes];
  if (v5)
  {
    v12 = [(MFData *)self initWithBytesNoCopy:v11 + location length:length freeWhenDone:0];
    if (!v12)
    {
      goto LABEL_18;
    }

    v12->_parent = a4;
  }

  else
  {
    v12 = [(MFData *)self initWithBytes:v11 + location length:length];
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  v12->_subdata = 1;
  if (!v12->_parent)
  {
    v13 = MFLogGeneral();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      os_unfair_lock_lock(&sWaterMarkLock);
      Current = CFAbsoluteTimeGetCurrent();
      v15 = [(NSData *)v12->_internal length];
      _MergedGlobals += v15;
      if (_MergedGlobals >= qword_1EC76D460)
      {
        qword_1EC76D460 = _MergedGlobals;
      }

      else if (fabs(Current) < 5.0)
      {
LABEL_17:
        os_unfair_lock_unlock(&sWaterMarkLock);
        goto LABEL_18;
      }

      v16 = MFLogGeneral();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [MFData _initWithRange:[(NSData *)v12->_internal length] from:v16 retainingParent:?];
      }

      goto LABEL_17;
    }
  }

LABEL_18:
  v17 = *MEMORY[0x1E69E9840];
  return v12;
}

- (id)data
{
  v2 = self->_internal;

  return v2;
}

- (BOOL)writeToFile:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  if (self->_path && (v9 = [MEMORY[0x1E696AC08] defaultManager], MFRemoveItemAtPath(a3), objc_msgSend(v9, "moveItemAtPath:toPath:error:", self->_path, a3, 0)))
  {
    v10 = (a4 & 0xF0000000) - 0x10000000;
    if (!(v10 >> 30))
    {
      [v9 mf_protectFileAtPath:a3 withClass:*(&unk_1D36EFE18 + (v10 >> 25)) error:0];
    }

    self->_path = 0;
    return 1;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = MFData;
    return [(MFData *)&v12 writeToFile:a3 options:a4 error:a5];
  }
}

- (BOOL)writeToURL:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  if ([a3 isFileURL])
  {
    v9 = [a3 path];

    return [(MFData *)self writeToFile:v9 options:a4 error:a5];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = MFData;
    return [(MFData *)&v11 writeToURL:a3 options:a4 error:a5];
  }
}

- (void)_initWithRange:(uint8_t *)buf from:(uint64_t)a2 retainingParent:(os_log_t)log .cold.1(uint8_t *buf, uint64_t a2, os_log_t log)
{
  v4 = _MergedGlobals;
  v3 = qword_1EC76D460;
  *buf = 134218496;
  *(buf + 4) = a2;
  *(buf + 6) = 2048;
  *(buf + 14) = v4;
  *(buf + 11) = 2048;
  *(buf + 3) = v3;
  _os_log_debug_impl(&dword_1D36B2000, log, OS_LOG_TYPE_DEBUG, "Small subdata allocation of %lu bytes.  Current watermark is %ld bytes.  High was %lu bytes.", buf, 0x20u);
}

@end