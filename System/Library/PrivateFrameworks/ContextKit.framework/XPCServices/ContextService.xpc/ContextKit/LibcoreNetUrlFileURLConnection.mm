@interface LibcoreNetUrlFileURLConnection
- (id)getContentType;
- (id)getInputStream;
- (id)getPermission;
- (int)getContentLength;
- (int64_t)getContentLengthLong;
- (void)connect;
- (void)dealloc;
@end

@implementation LibcoreNetUrlFileURLConnection

- (void)connect
{
  v3 = new_JavaIoFile_initWithNSString_(self->filename_);
  if ([(JavaIoFile *)v3 isDirectory])
  {
    self->isDir_ = 1;
    v4 = sub_1001A943C(v3);
    JreStrongAssign(&self->is_, v4);
  }

  else
  {
    v5 = new_JavaIoFileInputStream_initWithJavaIoFile_(v3);
    v6 = new_JavaIoBufferedInputStream_initWithJavaIoInputStream_(v5);
    JreStrongAssignAndConsume(&self->is_, v6);
    self->length_ = [(JavaIoFile *)v3 length];
  }

  self->super.connected_ = 1;
}

- (int)getContentLength
{
  v2 = [(LibcoreNetUrlFileURLConnection *)self getContentLengthLong];
  if (v2 >= 0x80000000)
  {
    LODWORD(v2) = -1;
  }

  return v2;
}

- (int64_t)getContentLengthLong
{
  if (!self->super.connected_)
  {
    [(LibcoreNetUrlFileURLConnection *)self connect];
  }

  return self->length_;
}

- (id)getContentType
{
  if (!self->super.connected_)
  {
    [(LibcoreNetUrlFileURLConnection *)self connect];
  }

  if (self->isDir_)
  {
    return @"text/plain";
  }

  url = self->super.url_;
  if (!url)
  {
    JreThrowNullPointerException();
  }

  result = JavaNetURLConnection_guessContentTypeFromNameWithNSString_([(JavaNetURL *)url getFile]);
  if (!result)
  {
    result = JavaNetURLConnection_guessContentTypeFromStreamWithJavaIoInputStream_(self->is_);
    if (!result)
    {
      return @"content/unknown";
    }
  }

  return result;
}

- (id)getInputStream
{
  if (!self->super.connected_)
  {
    [(LibcoreNetUrlFileURLConnection *)self connect];
  }

  return self->is_;
}

- (id)getPermission
{
  result = self->permission_;
  if (!result)
  {
    filename = self->filename_;
    if ((atomic_load_explicit(JavaIoFile__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_10018A8E4();
    }

    if (JavaIoFile_separatorChar_ != 47)
    {
      if (!filename)
      {
        JreThrowNullPointerException();
      }

      if ((atomic_load_explicit(JavaIoFile__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_10018A8E4();
      }

      [(NSString *)filename replace:47 withChar:JavaIoFile_separatorChar_];
    }

    v5 = new_JavaIoFilePermission_initWithNSString_withNSString_();
    JreStrongAssignAndConsume(&self->permission_, v5);
    return self->permission_;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = LibcoreNetUrlFileURLConnection;
  [(JavaNetURLConnection *)&v3 dealloc];
}

@end