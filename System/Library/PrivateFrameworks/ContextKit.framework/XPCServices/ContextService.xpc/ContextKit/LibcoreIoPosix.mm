@interface LibcoreIoPosix
+ (int)throwIfMinusOneWithNSString:(id)string withInt:(int)int;
- (BOOL)accessWithNSString:(id)string withInt:(int)int;
- (BOOL)canAccessWithNSString:(id)string withInt:(int)int;
- (BOOL)isattyWithJavaIoFileDescriptor:(id)descriptor;
- (id)acceptWithJavaIoFileDescriptor:(id)descriptor withJavaNetInetSocketAddress:(id)address;
- (id)dup2WithJavaIoFileDescriptor:(id)descriptor withInt:(int)int;
- (id)dupWithJavaIoFileDescriptor:(id)descriptor;
- (id)fstatWithJavaIoFileDescriptor:(id)descriptor;
- (id)gai_strerrorWithInt:(int)int;
- (id)getaddrinfoWithNSString:(id)string withLibcoreIoStructAddrinfo:(id)addrinfo;
- (id)getnameinfoWithJavaNetInetAddress:(id)address withInt:(int)int;
- (id)getsocknameWithJavaIoFileDescriptor:(id)descriptor;
- (id)getsockoptInAddrWithJavaIoFileDescriptor:(id)descriptor withInt:(int)int withInt:(int)withInt;
- (id)getsockoptLingerWithJavaIoFileDescriptor:(id)descriptor withInt:(int)int withInt:(int)withInt;
- (id)getsockoptTimevalWithJavaIoFileDescriptor:(id)descriptor withInt:(int)int withInt:(int)withInt;
- (id)if_indextonameWithInt:(int)int;
- (id)inet_ptonWithInt:(int)int withNSString:(id)string;
- (id)pipe;
- (id)realpathWithNSString:(id)string;
- (id)socketWithInt:(int)int withInt:(int)withInt withInt:(int)a5;
- (id)statvfsWithNSString:(id)string;
- (id)strerrorWithInt:(int)int;
- (id)uname;
- (int)fcntlFlockWithJavaIoFileDescriptor:(id)descriptor withInt:(int)int withLibcoreIoStructFlock:(id)flock;
- (int)fcntlLongWithJavaIoFileDescriptor:(id)descriptor withInt:(int)int withLong:(int64_t)long;
- (int)fcntlVoidWithJavaIoFileDescriptor:(id)descriptor withInt:(int)int;
- (int)getsockoptByteWithJavaIoFileDescriptor:(id)descriptor withInt:(int)int withInt:(int)withInt;
- (int)getsockoptIntWithJavaIoFileDescriptor:(id)descriptor withInt:(int)int withInt:(int)withInt;
- (int)ioctlIntWithJavaIoFileDescriptor:(id)descriptor withInt:(int)int withLibcoreUtilMutableInt:(id)mutableInt;
- (int)pollWithLibcoreIoStructPollfdArray:(id)array withInt:(int)int;
- (int)preadWithJavaIoFileDescriptor:(id)descriptor withJavaNioByteBuffer:(id)buffer withLong:(int64_t)long;
- (int)pwriteWithJavaIoFileDescriptor:(id)descriptor withJavaNioByteBuffer:(id)buffer withLong:(int64_t)long;
- (int)readWithJavaIoFileDescriptor:(id)descriptor withJavaNioByteBuffer:(id)buffer;
- (int)readvWithJavaIoFileDescriptor:(id)descriptor withNSObjectArray:(id)array withIntArray:(id)intArray withIntArray:(id)withIntArray;
- (int)recvfromWithJavaIoFileDescriptor:(id)descriptor withJavaNioByteBuffer:(id)buffer withInt:(int)int withJavaNetInetSocketAddress:(id)address;
- (int)sendtoWithJavaIoFileDescriptor:(id)descriptor withJavaNioByteBuffer:(id)buffer withInt:(int)int withJavaNetInetAddress:(id)address withInt:(int)withInt;
- (int)writeWithJavaIoFileDescriptor:(id)descriptor withByteArray:(id)array withInt:(int)int withInt:(int)withInt;
- (int)writeWithJavaIoFileDescriptor:(id)descriptor withJavaNioByteBuffer:(id)buffer;
- (int)writevWithJavaIoFileDescriptor:(id)descriptor withNSObjectArray:(id)array withIntArray:(id)intArray withIntArray:(id)withIntArray;
- (int64_t)lseekWithJavaIoFileDescriptor:(id)descriptor withLong:(int64_t)long withInt:(int)int;
- (int64_t)mmapWithLong:(int64_t)long withLong:(int64_t)withLong withInt:(int)int withInt:(int)withInt withJavaIoFileDescriptor:(id)descriptor withLong:(int64_t)a8;
- (int64_t)sendfileWithJavaIoFileDescriptor:(id)descriptor withJavaIoFileDescriptor:(id)fileDescriptor withLibcoreUtilMutableLong:(id)long withLong:(int64_t)withLong;
- (int64_t)sysconfWithInt:(int)int;
- (void)bindWithJavaIoFileDescriptor:(id)descriptor withJavaNetInetAddress:(id)address withInt:(int)int;
- (void)chmodWithNSString:(id)string withInt:(int)int;
- (void)chownWithNSString:(id)string withInt:(int)int withInt:(int)withInt;
- (void)closeWithJavaIoFileDescriptor:(id)descriptor;
- (void)connectWithJavaIoFileDescriptor:(id)descriptor withJavaNetInetAddress:(id)address withInt:(int)int;
- (void)fchmodWithJavaIoFileDescriptor:(id)descriptor withInt:(int)int;
- (void)fchownWithJavaIoFileDescriptor:(id)descriptor withInt:(int)int withInt:(int)withInt;
- (void)fdatasyncWithJavaIoFileDescriptor:(id)descriptor;
- (void)fsyncWithJavaIoFileDescriptor:(id)descriptor;
- (void)ftruncateWithJavaIoFileDescriptor:(id)descriptor withLong:(int64_t)long;
- (void)listenWithJavaIoFileDescriptor:(id)descriptor withInt:(int)int;
- (void)mincoreWithLong:(int64_t)long withLong:(int64_t)withLong withByteArray:(id)array;
- (void)mkdirWithNSString:(id)string withInt:(int)int;
- (void)mlockWithLong:(int64_t)long withLong:(int64_t)withLong;
- (void)msyncWithLong:(int64_t)long withLong:(int64_t)withLong withInt:(int)int;
- (void)munlockWithLong:(int64_t)long withLong:(int64_t)withLong;
- (void)munmapWithLong:(int64_t)long withLong:(int64_t)withLong;
- (void)removeWithNSString:(id)string;
- (void)renameWithNSString:(id)string withNSString:(id)sString;
- (void)setsockoptByteWithJavaIoFileDescriptor:(id)descriptor withInt:(int)int withInt:(int)withInt withInt:(int)a6;
- (void)setsockoptGroupReqWithJavaIoFileDescriptor:(id)descriptor withInt:(int)int withInt:(int)withInt withLibcoreIoStructGroupReq:(id)req;
- (void)setsockoptGroupSourceReqWithJavaIoFileDescriptor:(id)descriptor withInt:(int)int withInt:(int)withInt withLibcoreIoStructGroupSourceReq:(id)req;
- (void)setsockoptIfreqWithJavaIoFileDescriptor:(id)descriptor withInt:(int)int withInt:(int)withInt withNSString:(id)string;
- (void)setsockoptIntWithJavaIoFileDescriptor:(id)descriptor withInt:(int)int withInt:(int)withInt withInt:(int)a6;
- (void)setsockoptIpMreqnWithJavaIoFileDescriptor:(id)descriptor withInt:(int)int withInt:(int)withInt withInt:(int)a6;
- (void)setsockoptLingerWithJavaIoFileDescriptor:(id)descriptor withInt:(int)int withInt:(int)withInt withLibcoreIoStructLinger:(id)linger;
- (void)setsockoptTimevalWithJavaIoFileDescriptor:(id)descriptor withInt:(int)int withInt:(int)withInt withLibcoreIoStructTimeval:(id)timeval;
- (void)shutdownWithJavaIoFileDescriptor:(id)descriptor withInt:(int)int;
- (void)socketpairWithInt:(int)int withInt:(int)withInt withInt:(int)a5 withJavaIoFileDescriptor:(id)descriptor withJavaIoFileDescriptor:(id)fileDescriptor;
- (void)symlinkWithNSString:(id)string withNSString:(id)sString;
- (void)tcdrainWithJavaIoFileDescriptor:(id)descriptor;
@end

@implementation LibcoreIoPosix

+ (int)throwIfMinusOneWithNSString:(id)string withInt:(int)int
{
  if (int == -1)
  {
    v6 = __error();
    sub_1001FB6D0(string, *v6);
  }

  return int;
}

- (id)acceptWithJavaIoFileDescriptor:(id)descriptor withJavaNetInetSocketAddress:(id)address
{
  v17 = 128;
  memset(v18, 0, sizeof(v18));
  if (address)
  {
    v6 = v18;
  }

  else
  {
    v6 = 0;
  }

  if (address)
  {
    v7 = &v17;
  }

  else
  {
    v7 = 0;
  }

  while (1)
  {
    v8 = [descriptor getInt$];
    v9 = v8;
    LibcoreIoAsynchronousCloseMonitor_newAsynchronousSocketCloseMonitorWithInt_(v8);
    v10 = accept(v9, v6, v7);
    v11 = [descriptor getInt$];
    if (v10 != -1)
    {
      break;
    }

    if (v11 == -1)
    {
      v14 = [[JavaNetSocketException alloc] initWithNSString:@"Socket closed"];
LABEL_16:
      objc_exception_throw(v14);
    }

    if (*__error() != 4)
    {
      v12 = [NSString stringWithFormat:@"%s", "accept"];
      v13 = __error();
      v14 = new_LibcoreIoErrnoException_initWithNSString_withInt_(v12, *v13);
      goto LABEL_16;
    }
  }

  if (sub_1001FB898(v11, address, v18))
  {
    v15 = objc_alloc_init(JavaIoFileDescriptor);
    [(JavaIoFileDescriptor *)v15 setInt$WithInt:v10];
  }

  else
  {
    close(v10);
    return 0;
  }

  return v15;
}

- (BOOL)accessWithNSString:(id)string withInt:(int)int
{
  if (!string)
  {
    return 0;
  }

  v5 = absolutePath(string);
  while (1)
  {
    v6 = access(v5, int);
    if (v6 != -1)
    {
      break;
    }

    if (*__error() != 4)
    {
      v7 = __error();
      v8 = new_LibcoreIoErrnoException_initWithNSString_withInt_(@"access", *v7);
      objc_exception_throw(v8);
    }
  }

  return v6 == 0;
}

- (void)bindWithJavaIoFileDescriptor:(id)descriptor withJavaNetInetAddress:(id)address withInt:(int)int
{
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0;
  v14 = 0u;
  v12 = 0;
  sub_1001FB420(address, int, &v13, &v12, 1);
  v6 = v12;
  while (1)
  {
    v7 = [descriptor getInt$];
    v8 = v7;
    LibcoreIoAsynchronousCloseMonitor_newAsynchronousSocketCloseMonitorWithInt_(v7);
    if (bind(v8, &v13, v6) != -1)
    {
      break;
    }

    if ([descriptor getInt$] == -1)
    {
      v11 = [[JavaNetSocketException alloc] initWithNSString:@"Socket closed"];
LABEL_8:
      objc_exception_throw(v11);
    }

    if (*__error() != 4)
    {
      v9 = [NSString stringWithFormat:@"%s", "bind"];
      v10 = __error();
      v11 = new_LibcoreIoErrnoException_initWithNSString_withInt_(v9, *v10);
      goto LABEL_8;
    }
  }
}

- (BOOL)canAccessWithNSString:(id)string withInt:(int)int
{
  if (!string)
  {
    return 0;
  }

  v5 = absolutePath(string);
  do
  {
    v6 = access(v5, int);
  }

  while (v6 == -1 && *__error() == 4);
  return v6 == 0;
}

- (void)chmodWithNSString:(id)string withInt:(int)int
{
  if (string)
  {
    intCopy = int;
    v5 = absolutePath(string);
    while (chmod(v5, intCopy) == -1)
    {
      if (*__error() != 4)
      {
        v6 = __error();
        sub_1001FB6D0(@"chmod", *v6);
      }
    }
  }
}

- (void)chownWithNSString:(id)string withInt:(int)int withInt:(int)withInt
{
  if (string)
  {
    v7 = absolutePath(string);
    while (chown(v7, int, withInt) == -1)
    {
      if (*__error() != 4)
      {
        v8 = __error();
        sub_1001FB6D0(@"chown", *v8);
      }
    }
  }
}

- (void)closeWithJavaIoFileDescriptor:(id)descriptor
{
  v4 = [descriptor getInt$];
  [descriptor setInt$WithInt:0xFFFFFFFFLL];
  if (close(v4) == -1)
  {
    v5 = __error();
    sub_1001FB6D0(@"close", *v5);
  }
}

- (void)connectWithJavaIoFileDescriptor:(id)descriptor withJavaNetInetAddress:(id)address withInt:(int)int
{
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0;
  v14 = 0u;
  v12 = 0;
  sub_1001FB420(address, int, &v13, &v12, 1);
  v6 = v12;
  while (1)
  {
    v7 = [descriptor getInt$];
    v8 = v7;
    LibcoreIoAsynchronousCloseMonitor_newAsynchronousSocketCloseMonitorWithInt_(v7);
    if (connect(v8, &v13, v6) != -1)
    {
      break;
    }

    if ([descriptor getInt$] == -1)
    {
      v11 = [[JavaNetSocketException alloc] initWithNSString:@"Socket closed"];
LABEL_8:
      objc_exception_throw(v11);
    }

    if (*__error() != 4)
    {
      v9 = [NSString stringWithFormat:@"%s", "connect"];
      v10 = __error();
      v11 = new_LibcoreIoErrnoException_initWithNSString_withInt_(v9, *v10);
      goto LABEL_8;
    }
  }
}

- (id)dupWithJavaIoFileDescriptor:(id)descriptor
{
  while (1)
  {
    v4 = dup([descriptor getInt$]);
    if (v4 != -1)
    {
      break;
    }

    if (*__error() != 4)
    {
      v5 = __error();
      sub_1001FB6D0(@"dup", *v5);
    }
  }

  v6 = v4;
  v7 = objc_alloc_init(JavaIoFileDescriptor);
  [(JavaIoFileDescriptor *)v7 setInt$WithInt:v6];
  return v7;
}

- (id)dup2WithJavaIoFileDescriptor:(id)descriptor withInt:(int)int
{
  while (1)
  {
    v6 = dup2([descriptor getInt$], int);
    if (v6 != -1)
    {
      break;
    }

    if (*__error() != 4)
    {
      v7 = __error();
      sub_1001FB6D0(@"dup2", *v7);
    }
  }

  v8 = v6;
  v9 = objc_alloc_init(JavaIoFileDescriptor);
  [(JavaIoFileDescriptor *)v9 setInt$WithInt:v8];
  return v9;
}

- (void)fchmodWithJavaIoFileDescriptor:(id)descriptor withInt:(int)int
{
  intCopy = int;
  while (fchmod([descriptor getInt$], intCopy) == -1)
  {
    if (*__error() != 4)
    {
      v6 = __error();
      sub_1001FB6D0(@"fchmod", *v6);
    }
  }
}

- (void)fchownWithJavaIoFileDescriptor:(id)descriptor withInt:(int)int withInt:(int)withInt
{
  while (fchown([descriptor getInt$], int, withInt) == -1)
  {
    if (*__error() != 4)
    {
      v8 = __error();
      sub_1001FB6D0(@"fchown", *v8);
    }
  }
}

- (int)fcntlFlockWithJavaIoFileDescriptor:(id)descriptor withInt:(int)int withLibcoreIoStructFlock:(id)flock
{
  v16 = *(flock + 4);
  v17 = *(flock + 5);
  v8 = *(flock + 3);
  v13 = *(flock + 2);
  v14 = v8;
  v15 = *(flock + 8);
  while (1)
  {
    result = fcntl([descriptor getInt$], int, &v13);
    if (result != -1)
    {
      break;
    }

    if (*__error() != 4)
    {
      v10 = __error();
      v11 = new_LibcoreIoErrnoException_initWithNSString_withInt_(@"fcntl", *v10);
      objc_exception_throw(v11);
    }
  }

  *(flock + 4) = v16;
  *(flock + 5) = v17;
  v12 = v14;
  *(flock + 2) = v13;
  *(flock + 3) = v12;
  *(flock + 8) = v15;
  return result;
}

- (int)fcntlLongWithJavaIoFileDescriptor:(id)descriptor withInt:(int)int withLong:(int64_t)long
{
  while (1)
  {
    result = fcntl([descriptor getInt$], int, long);
    if (result != -1)
    {
      break;
    }

    if (*__error() != 4)
    {
      v9 = __error();
      sub_1001FB6D0(@"fcntl", *v9);
    }
  }

  return result;
}

- (int)fcntlVoidWithJavaIoFileDescriptor:(id)descriptor withInt:(int)int
{
  while (1)
  {
    result = fcntl([descriptor getInt$], int);
    if (result != -1)
    {
      break;
    }

    if (*__error() != 4)
    {
      v7 = __error();
      sub_1001FB6D0(@"fcntl", *v7);
    }
  }

  return result;
}

- (void)fdatasyncWithJavaIoFileDescriptor:(id)descriptor
{
  while (fsync([descriptor getInt$]) == -1)
  {
    if (*__error() != 4)
    {
      v4 = __error();
      sub_1001FB6D0(@"fdatasync", *v4);
    }
  }
}

- (id)fstatWithJavaIoFileDescriptor:(id)descriptor
{
  memset(&v6, 0, sizeof(v6));
  while (fstat([descriptor getInt$], &v6) == -1)
  {
    if (*__error() != 4)
    {
      v4 = new_LibcoreIoErrnoException_initWithNSString_withInt_(@"fstat", 0xFFFFFFFF);
      objc_exception_throw(v4);
    }
  }

  return sub_1001FC258(&v6.st_dev);
}

- (void)fsyncWithJavaIoFileDescriptor:(id)descriptor
{
  while (fsync([descriptor getInt$]) == -1)
  {
    if (*__error() != 4)
    {
      v4 = __error();
      sub_1001FB6D0(@"fsync", *v4);
    }
  }
}

- (void)ftruncateWithJavaIoFileDescriptor:(id)descriptor withLong:(int64_t)long
{
  while (ftruncate([descriptor getInt$], long) == -1)
  {
    if (*__error() != 4)
    {
      v6 = __error();
      sub_1001FB6D0(@"ftruncate", *v6);
    }
  }
}

- (id)gai_strerrorWithInt:(int)int
{
  v3 = gai_strerror(int);

  return [NSString stringWithUTF8String:v3];
}

- (id)getaddrinfoWithNSString:(id)string withLibcoreIoStructAddrinfo:(id)addrinfo
{
  stringCopy = string;
  if (string)
  {
    v5 = *(addrinfo + 3);
    v6 = *(addrinfo + 4);
    v28.ai_flags = *(addrinfo + 2);
    v28.ai_family = v5;
    v7 = *(addrinfo + 5);
    memset(&v28.ai_addrlen, 0, 32);
    v28.ai_socktype = v6;
    v28.ai_protocol = v7;
    v27 = 0;
    *__error() = 0;
    v8 = getaddrinfo([(IOSObjectArray *)stringCopy UTF8String], 0, &v28, &v27);
    if (v8)
    {
      objc_exception_throw([[LibcoreIoGaiException alloc] initWithNSString:@"getaddrinfo" withInt:v8]);
    }

    v9 = v27;
    if (!v27)
    {
      goto LABEL_24;
    }

    v10 = 0;
    do
    {
      ai_family = v9->ai_family;
      if (ai_family == 30 || ai_family == 2)
      {
        ++v10;
      }

      else
      {
        JavaLangSystem_logEWithNSString_([NSString stringWithFormat:@"getaddrinfo unexpected ai_family %i", v9->ai_family]);
      }

      v9 = v9->ai_next;
    }

    while (v9);
    if (v10)
    {
      stringCopy = [IOSObjectArray arrayWithLength:v10 type:JavaNetInetAddress_class_()];
      v13 = v27;
      if (v27)
      {
        v14 = 0;
        do
        {
          v15 = v13->ai_family;
          if (v15 == 2 || v15 == 30)
          {
            v35 = 0;
            v36 = 0;
            v34 = 0;
            v32 = 0;
            v33 = 0;
            v30 = 0;
            v31 = 0;
            v29 = 0;
            ai_addr = v13->ai_addr;
            v19 = *ai_addr;
            v18 = ai_addr[1];
            v20 = ai_addr[3];
            v31 = ai_addr[2];
            v21 = ai_addr[4];
            v22 = ai_addr[5];
            v23 = ai_addr[7];
            v35 = ai_addr[6];
            v36 = v23;
            v34 = v22;
            v29 = v19;
            v30 = v18;
            v32 = v20;
            v33 = v21;
            v24 = sockaddrToInetAddress(&v29, 0);
            if (!v24)
            {
              goto LABEL_24;
            }

            [(IOSObjectArray *)stringCopy replaceObjectAtIndex:v14++ withObject:v24];
          }

          else
          {
            JavaLangSystem_logEWithNSString_([NSString stringWithFormat:@"getaddrinfo unexpected ai_family %i", v13->ai_family]);
          }

          v13 = v13->ai_next;
        }

        while (v13);
        v25 = v27;
      }

      else
      {
        v25 = 0;
      }

      freeaddrinfo(v25);
    }

    else
    {
LABEL_24:
      freeaddrinfo(v27);
      return 0;
    }
  }

  return stringCopy;
}

- (id)getnameinfoWithJavaNetInetAddress:(id)address withInt:(int)int
{
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0;
  v10 = 0u;
  v7 = 0;
  sub_1001FB420(address, 0, &v9, &v7, 0);
  *__error() = 0;
  v5 = getnameinfo(&v9, v7, v8, 0x401u, 0, 0, int);
  if (v5)
  {
    objc_exception_throw([[LibcoreIoGaiException alloc] initWithNSString:@"getnameinfo" withInt:v5]);
  }

  return [NSString stringWithUTF8String:v8];
}

- (id)getsocknameWithJavaIoFileDescriptor:(id)descriptor
{
  v3 = [descriptor getInt$];
  v8 = 128;
  v10 = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  while (getsockname(v3, &v10, &v8) == -1)
  {
    if (*__error() != 4)
    {
      v4 = new_LibcoreIoErrnoException_initWithNSString_withInt_(@"getsockname", 0xFFFFFFFF);
      objc_exception_throw(v4);
    }
  }

  v9 = 0;
  result = sockaddrToInetAddress(&v10, &v9);
  if (result)
  {
    v6 = result;
    v7 = [JavaNetInetSocketAddress alloc];
    return [(JavaNetInetSocketAddress *)v7 initWithJavaNetInetAddress:v6 withInt:v9];
  }

  return result;
}

- (int)getsockoptByteWithJavaIoFileDescriptor:(id)descriptor withInt:(int)int withInt:(int)withInt
{
  v11 = 0;
  v10 = 1;
  while (getsockopt([descriptor getInt$], int, withInt, &v11, &v10) == -1)
  {
    if (*__error() != 4)
    {
      v8 = new_LibcoreIoErrnoException_initWithNSString_withInt_(@"getsockopt", 0xFFFFFFFF);
      objc_exception_throw(v8);
    }
  }

  return v11;
}

- (id)getsockoptInAddrWithJavaIoFileDescriptor:(id)descriptor withInt:(int)int withInt:(int)withInt
{
  memset(v11, 0, sizeof(v11));
  BYTE1(v11[0]) = 2;
  v10 = 4;
  while (getsockopt([descriptor getInt$], int, withInt, v11 + 4, &v10) == -1)
  {
    if (*__error() != 4)
    {
      v8 = new_LibcoreIoErrnoException_initWithNSString_withInt_(@"getsockopt", 0xFFFFFFFF);
      objc_exception_throw(v8);
    }
  }

  return sockaddrToInetAddress(v11, 0);
}

- (int)getsockoptIntWithJavaIoFileDescriptor:(id)descriptor withInt:(int)int withInt:(int)withInt
{
  v10 = 4;
  v11 = 0;
  while (getsockopt([descriptor getInt$], int, withInt, &v11, &v10) == -1)
  {
    if (*__error() != 4)
    {
      v8 = new_LibcoreIoErrnoException_initWithNSString_withInt_(@"getsockopt", 0xFFFFFFFF);
      objc_exception_throw(v8);
    }
  }

  return v11;
}

- (id)getsockoptLingerWithJavaIoFileDescriptor:(id)descriptor withInt:(int)int withInt:(int)withInt
{
  v11 = 8;
  v12 = 0;
  while (getsockopt([descriptor getInt$], int, withInt, &v12, &v11) == -1)
  {
    if (*__error() != 4)
    {
      v8 = new_LibcoreIoErrnoException_initWithNSString_withInt_(@"getsockopt", 0xFFFFFFFF);
      objc_exception_throw(v8);
    }
  }

  v9 = [LibcoreIoStructLinger alloc];
  return [(LibcoreIoStructLinger *)v9 initWithInt:v12 withInt:HIDWORD(v12)];
}

- (id)getsockoptTimevalWithJavaIoFileDescriptor:(id)descriptor withInt:(int)int withInt:(int)withInt
{
  v11 = 16;
  v12 = 0;
  v13 = 0;
  while (getsockopt([descriptor getInt$], int, withInt, &v12, &v11) == -1)
  {
    if (*__error() != 4)
    {
      v8 = new_LibcoreIoErrnoException_initWithNSString_withInt_(@"getsockopt", 0xFFFFFFFF);
      objc_exception_throw(v8);
    }
  }

  v9 = [LibcoreIoStructTimeval alloc];
  return [(LibcoreIoStructTimeval *)v9 initWithLong:v12 withLong:v13];
}

- (id)if_indextonameWithInt:(int)int
{
  result = if_indextoname(int, v4);
  if (result)
  {
    return [NSString stringWithUTF8String:result];
  }

  return result;
}

- (id)inet_ptonWithInt:(int)int withNSString:(id)string
{
  if (!string)
  {
    return 0;
  }

  intCopy = int;
  if (inet_pton(int, [string UTF8String], &v7) != 1)
  {
    return 0;
  }

  v6[1] = intCopy;
  return sockaddrToInetAddress(v6, 0);
}

- (int)ioctlIntWithJavaIoFileDescriptor:(id)descriptor withInt:(int)int withLibcoreUtilMutableInt:(id)mutableInt
{
  v10 = *(mutableInt + 2);
  intCopy = int;
  while (1)
  {
    result = ioctl([descriptor getInt$], intCopy, &v10);
    if (result != -1)
    {
      break;
    }

    if (*__error() != 4)
    {
      v9 = new_LibcoreIoErrnoException_initWithNSString_withInt_(@"ioctl", 0xFFFFFFFF);
      objc_exception_throw(v9);
    }
  }

  *(mutableInt + 2) = v10;
  return result;
}

- (BOOL)isattyWithJavaIoFileDescriptor:(id)descriptor
{
  do
  {
    v4 = isatty([descriptor getInt$]);
  }

  while (v4 == -1 && *__error() == 4);
  return v4 == 1;
}

- (int64_t)lseekWithJavaIoFileDescriptor:(id)descriptor withLong:(int64_t)long withInt:(int)int
{
  do
  {
    v8 = lseek([descriptor getInt$], long, int);
  }

  while (v8 == -1 && *__error() == 4);
  if (v8 << 32 == 0xFFFFFFFF00000000)
  {
    v10 = __error();
    v11 = new_LibcoreIoErrnoException_initWithNSString_withInt_(@"lseek", *v10);
    objc_exception_throw(v11);
  }

  return v8;
}

- (void)listenWithJavaIoFileDescriptor:(id)descriptor withInt:(int)int
{
  while (listen([descriptor getInt$], int) == -1)
  {
    if (*__error() != 4)
    {
      v6 = __error();
      sub_1001FB6D0(@"listen", *v6);
    }
  }
}

- (void)mincoreWithLong:(int64_t)long withLong:(int64_t)withLong withByteArray:(id)array
{
  while (mincore(long, withLong, array + 12) == -1)
  {
    if (*__error() != 4)
    {
      v8 = __error();
      sub_1001FB6D0(@"mincore", *v8);
    }
  }
}

- (void)mkdirWithNSString:(id)string withInt:(int)int
{
  if (string)
  {
    intCopy = int;
    v5 = absolutePath(string);
    while (mkdir(v5, intCopy) == -1)
    {
      if (*__error() != 4)
      {
        v6 = __error();
        sub_1001FB6D0(@"mkdir", *v6);
      }
    }
  }
}

- (void)mlockWithLong:(int64_t)long withLong:(int64_t)withLong
{
  while (mlock(long, withLong) == -1)
  {
    if (*__error() != 4)
    {
      v6 = __error();
      sub_1001FB6D0(@"mlock", *v6);
    }
  }
}

- (int64_t)mmapWithLong:(int64_t)long withLong:(int64_t)withLong withInt:(int)int withInt:(int)withInt withJavaIoFileDescriptor:(id)descriptor withLong:(int64_t)a8
{
  result = mmap(long, withLong, int, withInt, [descriptor getInt$], a8);
  if (result == -1)
  {
    v9 = __error();
    v10 = new_LibcoreIoErrnoException_initWithNSString_withInt_(@"mmap", *v9);
    objc_exception_throw(v10);
  }

  return result;
}

- (void)msyncWithLong:(int64_t)long withLong:(int64_t)withLong withInt:(int)int
{
  while (msync(long, withLong, int) == -1)
  {
    if (*__error() != 4)
    {
      v8 = __error();
      sub_1001FB6D0(@"msync", *v8);
    }
  }
}

- (void)munlockWithLong:(int64_t)long withLong:(int64_t)withLong
{
  while (munlock(long, withLong) == -1)
  {
    if (*__error() != 4)
    {
      v6 = __error();
      sub_1001FB6D0(@"munlock", *v6);
    }
  }
}

- (void)munmapWithLong:(int64_t)long withLong:(int64_t)withLong
{
  while (munmap(long, withLong) == -1)
  {
    if (*__error() != 4)
    {
      v6 = __error();
      sub_1001FB6D0(@"munmap", *v6);
    }
  }
}

- (id)pipe
{
  while (pipe(v7) == -1)
  {
    if (*__error() != 4)
    {
      v2 = __error();
      sub_1001FB6D0(@"pipe", *v2);
    }
  }

  v3 = [IOSObjectArray arrayWithLength:2 type:JavaIoFileDescriptor_class_()];
  v4 = objc_alloc_init(JavaIoFileDescriptor);
  [(JavaIoFileDescriptor *)v4 setInt$WithInt:v7[0]];
  [(IOSObjectArray *)v3 replaceObjectAtIndex:0 withObject:v4];
  v5 = objc_alloc_init(JavaIoFileDescriptor);
  [(JavaIoFileDescriptor *)v5 setInt$WithInt:v7[1]];
  [(IOSObjectArray *)v3 replaceObjectAtIndex:1 withObject:v5];
  return v3;
}

- (int)pollWithLibcoreIoStructPollfdArray:(id)array withInt:(int)int
{
  v6 = *(array + 2);
  v7 = malloc_type_calloc(v6, 8uLL, 0x100004000313F17uLL);
  v8 = v7;
  if (v6 < 1)
  {
    v14 = poll(v7, v6, int);
    if (v14 != -1)
    {
      goto LABEL_13;
    }

LABEL_14:
    free(v8);
    v19 = new_LibcoreIoErrnoException_initWithNSString_withInt_(@"poll", 0xFFFFFFFF);
    objc_exception_throw(v19);
  }

  v9 = 0;
  p_events = &v7->events;
  do
  {
    v11 = [array objectAtIndex:v9];
    if (v11)
    {
      v12 = v11;
      *(p_events - 1) = [v11[1] getInt$];
      *p_events = *(v12 + 8);
    }

    ++v9;
    p_events += 4;
  }

  while (v6 != v9);
  v13 = poll(v8, v6, int);
  if (v13 == -1)
  {
    goto LABEL_14;
  }

  v14 = v13;
  v15 = 0;
  p_revents = &v8->revents;
  do
  {
    v17 = [array objectAtIndex:v15];
    if (v17)
    {
      v17[9] = *p_revents;
    }

    ++v15;
    p_revents += 4;
  }

  while (v6 != v15);
LABEL_13:
  free(v8);
  return v14;
}

- (int)preadWithJavaIoFileDescriptor:(id)descriptor withJavaNioByteBuffer:(id)buffer withLong:(int64_t)long
{
  if (!buffer)
  {
    JreThrowNullPointerException();
  }

  if ([buffer isDirect])
  {
    position = [buffer position];
    remaining = [buffer remaining];
    descriptorCopy2 = descriptor;
    bufferCopy = buffer;
    v12 = position;
  }

  else
  {
    v13 = JavaNioNioUtils_unsafeArrayWithJavaNioByteBuffer_(buffer);
    v14 = JavaNioNioUtils_unsafeArrayOffsetWithJavaNioByteBuffer_(buffer);
    position2 = [buffer position];
    remaining = [buffer remaining];
    v12 = position2 + v14;
    descriptorCopy2 = descriptor;
    bufferCopy = v13;
  }

  return sub_1001FD7D8(descriptorCopy2, bufferCopy, v12, remaining, long);
}

- (int)pwriteWithJavaIoFileDescriptor:(id)descriptor withJavaNioByteBuffer:(id)buffer withLong:(int64_t)long
{
  if (!buffer)
  {
    JreThrowNullPointerException();
  }

  if ([buffer isDirect])
  {
    position = [buffer position];
    remaining = [buffer remaining];
    descriptorCopy2 = descriptor;
    bufferCopy = buffer;
    v12 = position;
  }

  else
  {
    v13 = JavaNioNioUtils_unsafeArrayWithJavaNioByteBuffer_(buffer);
    v14 = JavaNioNioUtils_unsafeArrayOffsetWithJavaNioByteBuffer_(buffer);
    position2 = [buffer position];
    remaining = [buffer remaining];
    v12 = position2 + v14;
    descriptorCopy2 = descriptor;
    bufferCopy = v13;
  }

  return sub_1001FD9EC(descriptorCopy2, bufferCopy, v12, remaining, long);
}

- (int)readWithJavaIoFileDescriptor:(id)descriptor withJavaNioByteBuffer:(id)buffer
{
  if (!buffer)
  {
    JreThrowNullPointerException();
  }

  if ([buffer isDirect])
  {
    position = [buffer position];
    remaining = [buffer remaining];
    descriptorCopy2 = descriptor;
    bufferCopy = buffer;
    v10 = position;
  }

  else
  {
    v11 = JavaNioNioUtils_unsafeArrayWithJavaNioByteBuffer_(buffer);
    v12 = JavaNioNioUtils_unsafeArrayOffsetWithJavaNioByteBuffer_(buffer);
    position2 = [buffer position];
    remaining = [buffer remaining];
    v10 = position2 + v12;
    descriptorCopy2 = descriptor;
    bufferCopy = v11;
  }

  return sub_1001FDC18(descriptorCopy2, bufferCopy, v10, remaining);
}

- (int)readvWithJavaIoFileDescriptor:(id)descriptor withNSObjectArray:(id)array withIntArray:(id)intArray withIntArray:(id)withIntArray
{
  v9 = *(array + 2);
  v10 = malloc_type_malloc(16 * v9, 0x1080040FC6463CFuLL);
  v11 = v10;
  if (v9 >= 1)
  {
    v12 = 0;
    p_iov_len = &v10->iov_len;
    v14 = &OBJC_IVAR___IOSIntArray_buffer_;
    do
    {
      v15 = v14;
      v16 = [array objectAtIndex:v12];
      if (!v16)
      {
        JreThrowNullPointerException();
      }

      v17 = v16;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = *(v17 + 2);
        v14 = v15;
        if (v18 <= 0)
        {
          IOSArray_throwOutOfBoundsWithMsg(v18, 0);
        }

        v19 = v17 + 12;
        if (!v19)
        {
LABEL_20:
          v22 = -1;
          goto LABEL_21;
        }
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_20;
        }

        v19 = v17[4];
        v14 = v15;
        if (!v19)
        {
          goto LABEL_20;
        }
      }

      v20 = *(intArray + 2);
      if (v12 >= v20)
      {
        IOSArray_throwOutOfBoundsWithMsg(v20, v12);
      }

      *(p_iov_len - 1) = &v19[*(intArray + 4 * v12 + *v14)];
      v21 = *(withIntArray + 2);
      if (v12 >= v21)
      {
        IOSArray_throwOutOfBoundsWithMsg(v21, v12);
      }

      *p_iov_len = *(withIntArray + 4 * v12 + *v14);
      p_iov_len += 2;
      ++v12;
    }

    while (v9 != v12);
  }

  while (1)
  {
    v22 = readv([descriptor getInt$], v11, v9);
    if (v22 != -1)
    {
      break;
    }

    if (*__error() != 4)
    {
      free(v11);
      v24 = __error();
      sub_1001FB6D0(@"readv", *v24);
    }
  }

LABEL_21:
  free(v11);
  return v22;
}

- (id)realpathWithNSString:(id)string
{
  if (!string)
  {
    return 0;
  }

  v4 = +[NSFileManager defaultManager];
  stringByStandardizingPath = [string stringByStandardizingPath];
  if ([(NSFileManager *)v4 fileExistsAtPath:stringByStandardizingPath])
  {
    v6 = realpath_DARWIN_EXTSN([string UTF8String], 0);
    if (!v6)
    {
      v9 = __error();
      v10 = new_LibcoreIoErrnoException_initWithNSString_withInt_(@"realpath", *v9);
      objc_exception_throw(v10);
    }

    v7 = v6;
    stringByStandardizingPath = [+[NSFileManager defaultManager](NSFileManager stringWithFileSystemRepresentation:"stringWithFileSystemRepresentation:length:" length:v7, strlen(v7)];
    free(v7);
  }

  return stringByStandardizingPath;
}

- (int)recvfromWithJavaIoFileDescriptor:(id)descriptor withJavaNioByteBuffer:(id)buffer withInt:(int)int withJavaNetInetSocketAddress:(id)address
{
  if (!buffer)
  {
    JreThrowNullPointerException();
  }

  if ([buffer isDirect])
  {
    position = [buffer position];
    remaining = [buffer remaining];
    descriptorCopy2 = descriptor;
    bufferCopy = buffer;
    v14 = position;
  }

  else
  {
    v15 = JavaNioNioUtils_unsafeArrayWithJavaNioByteBuffer_(buffer);
    v16 = JavaNioNioUtils_unsafeArrayOffsetWithJavaNioByteBuffer_(buffer);
    position2 = [buffer position];
    remaining = [buffer remaining];
    v14 = position2 + v16;
    descriptorCopy2 = descriptor;
    bufferCopy = v15;
  }

  return sub_1001FE100(descriptorCopy2, bufferCopy, v14, remaining, int, address);
}

- (void)removeWithNSString:(id)string
{
  if (string)
  {
    v4 = absolutePath(string);
    while (remove(v4, v3) == -1)
    {
      if (*__error() != 4)
      {
        v5 = __error();
        sub_1001FB6D0(@"remove", *v5);
      }
    }
  }
}

- (void)renameWithNSString:(id)string withNSString:(id)sString
{
  if (string && sString)
  {
    v5 = absolutePath(string);
    v7 = absolutePath(sString);
    while (1)
    {
      rename(v5, v7, v6);
      if (v8 != -1)
      {
        break;
      }

      if (*__error() != 4)
      {
        v9 = __error();
        sub_1001FB6D0(@"rename", *v9);
      }
    }
  }
}

- (int64_t)sendfileWithJavaIoFileDescriptor:(id)descriptor withJavaIoFileDescriptor:(id)fileDescriptor withLibcoreUtilMutableLong:(id)long withLong:(int64_t)withLong
{
  v19 = 0;
  if (long)
  {
    v19 = *(long + 1);
    v10 = &v19;
  }

  else
  {
    v10 = 0;
  }

  while (1)
  {
    v11 = [descriptor getInt$];
    v12 = [fileDescriptor getInt$];
    withLongCopy = withLong;
    if (v10)
    {
      v13 = sendfile(v12, v11, *v10, &withLongCopy, 0, 0);
      v14 = withLongCopy;
      if (v13 != -1 && withLongCopy != 0xFFFFFFFFLL)
      {
        break;
      }
    }

    if (*__error() != 4)
    {
      v14 = -1;
      v16 = 1;
      if (!long)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  v16 = 0;
  if (long)
  {
LABEL_12:
    *(long + 1) = v19;
  }

LABEL_13:
  if (v16)
  {
    v18 = __error();
    sub_1001FB6D0(@"sendfile", *v18);
  }

  return v14;
}

- (int)sendtoWithJavaIoFileDescriptor:(id)descriptor withJavaNioByteBuffer:(id)buffer withInt:(int)int withJavaNetInetAddress:(id)address withInt:(int)withInt
{
  if (!buffer)
  {
    JreThrowNullPointerException();
  }

  if ([buffer isDirect])
  {
    position = [buffer position];
    remaining = [buffer remaining];
    descriptorCopy2 = descriptor;
    bufferCopy = buffer;
    v16 = position;
  }

  else
  {
    v17 = JavaNioNioUtils_unsafeArrayWithJavaNioByteBuffer_(buffer);
    v18 = JavaNioNioUtils_unsafeArrayOffsetWithJavaNioByteBuffer_(buffer);
    position2 = [buffer position];
    remaining = [buffer remaining];
    v16 = position2 + v18;
    descriptorCopy2 = descriptor;
    bufferCopy = v17;
  }

  return sub_1001FE608(descriptorCopy2, bufferCopy, v16, remaining, int, address, withInt);
}

- (void)setsockoptByteWithJavaIoFileDescriptor:(id)descriptor withInt:(int)int withInt:(int)withInt withInt:(int)a6
{
  v10 = a6;
  while (setsockopt([descriptor getInt$], int, withInt, &v10, 1u) == -1)
  {
    if (*__error() != 4)
    {
      v9 = __error();
      sub_1001FB6D0(@"setsockopt", *v9);
    }
  }
}

- (void)setsockoptGroupReqWithJavaIoFileDescriptor:(id)descriptor withInt:(int)int withInt:(int)withInt withLibcoreIoStructGroupReq:(id)req
{
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v20 = *(req + 2);
  sub_1001FB420(*(req + 2), 0, &v21, &v10, 0);
  while (setsockopt([descriptor getInt$], int, withInt, &v20, 0x84u) == -1)
  {
    if (*__error() != 4)
    {
      if (*__error() != 22)
      {
LABEL_8:
        v9 = __error();
        sub_1001FB6D0(@"setsockopt", *v9);
      }

      v11 = v20;
      v16 = v25;
      v17 = v26;
      v18 = v27;
      v19 = v28;
      v12 = v21;
      v13 = v22;
      v14 = v23;
      v15 = v24;
      while (setsockopt([descriptor getInt$], int, withInt, &v11, 0x88u) == -1)
      {
        if (*__error() != 4)
        {
          goto LABEL_8;
        }
      }

      return;
    }
  }
}

- (void)setsockoptGroupSourceReqWithJavaIoFileDescriptor:(id)descriptor withInt:(int)int withInt:(int)withInt withLibcoreIoStructGroupSourceReq:(id)req
{
  v45 = 0u;
  v44 = 0u;
  v43 = 0u;
  v42 = 0u;
  v41 = 0u;
  v40 = 0u;
  v39 = 0u;
  v38 = 0u;
  v37 = 0u;
  v36 = 0u;
  v35 = 0u;
  v34 = 0u;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v29 = *(req + 2);
  sub_1001FB420(*(req + 2), 0, &v30, &v11, 0);
  sub_1001FB420(*(req + 3), 0, &v38, &v11, 0);
  while (setsockopt([descriptor getInt$], int, withInt, &v29, 0x104u) == -1)
  {
    if (*__error() != 4)
    {
      if (*__error() != 22)
      {
LABEL_8:
        v10 = __error();
        sub_1001FB6D0(@"setsockopt", *v10);
      }

      v12 = v29;
      v17 = v34;
      v18 = v35;
      v19 = v36;
      v20 = v37;
      v13 = v30;
      v14 = v31;
      v15 = v32;
      v16 = v33;
      v24 = v41;
      v23 = v40;
      v22 = v39;
      v21 = v38;
      v28 = v45;
      v27 = v44;
      v26 = v43;
      v25 = v42;
      while (setsockopt([descriptor getInt$], int, withInt, &v12, 0x108u) == -1)
      {
        if (*__error() != 4)
        {
          goto LABEL_8;
        }
      }

      return;
    }
  }
}

- (void)setsockoptIfreqWithJavaIoFileDescriptor:(id)descriptor withInt:(int)int withInt:(int)withInt withNSString:(id)string
{
  if (string)
  {
    v11 = 0;
    v12 = 0;
    strncpy(__dst, [string UTF8String], 0x10uLL);
    __dst[15] = 0;
    while (setsockopt([descriptor getInt$], int, withInt, __dst, 0x20u) == -1)
    {
      if (*__error() != 4)
      {
        v9 = __error();
        sub_1001FB6D0(@"setsockopt", *v9);
      }
    }
  }
}

- (void)setsockoptIntWithJavaIoFileDescriptor:(id)descriptor withInt:(int)int withInt:(int)withInt withInt:(int)a6
{
  v10 = a6;
  while (setsockopt([descriptor getInt$], int, withInt, &v10, 4u) == -1)
  {
    if (*__error() != 4)
    {
      v9 = __error();
      sub_1001FB6D0(@"setsockopt", *v9);
    }
  }
}

- (void)setsockoptIpMreqnWithJavaIoFileDescriptor:(id)descriptor withInt:(int)int withInt:(int)withInt withInt:(int)a6
{
  v10 = 0;
  LODWORD(v11) = a6;
  while (setsockopt([descriptor getInt$], int, withInt, &v10, 0xCu) == -1)
  {
    if (*__error() != 4)
    {
      v9 = __error();
      sub_1001FB6D0(@"setsockopt", *v9);
    }
  }
}

- (void)setsockoptLingerWithJavaIoFileDescriptor:(id)descriptor withInt:(int)int withInt:(int)withInt withLibcoreIoStructLinger:(id)linger
{
  v9 = *(linger + 3);
  v11[0] = *(linger + 2);
  v11[1] = v9;
  while (setsockopt([descriptor getInt$], int, withInt, v11, 8u) == -1)
  {
    if (*__error() != 4)
    {
      v10 = __error();
      sub_1001FB6D0(@"setsockopt", *v10);
    }
  }
}

- (void)setsockoptTimevalWithJavaIoFileDescriptor:(id)descriptor withInt:(int)int withInt:(int)withInt withLibcoreIoStructTimeval:(id)timeval
{
  v10 = *(timeval + 1);
  v11 = 0;
  LODWORD(v11) = *(timeval + 2);
  while (setsockopt([descriptor getInt$], int, withInt, &v10, 0x10u) == -1)
  {
    if (*__error() != 4)
    {
      v9 = __error();
      sub_1001FB6D0(@"setsockopt", *v9);
    }
  }
}

- (void)shutdownWithJavaIoFileDescriptor:(id)descriptor withInt:(int)int
{
  while (shutdown([descriptor getInt$], int) == -1)
  {
    if (*__error() != 4)
    {
      v6 = __error();
      sub_1001FB6D0(@"shutdown", *v6);
    }
  }
}

- (id)socketWithInt:(int)int withInt:(int)withInt withInt:(int)a5
{
  while (1)
  {
    v8 = socket(int, withInt, a5);
    if (v8 != -1)
    {
      break;
    }

    if (*__error() != 4)
    {
      v9 = __error();
      sub_1001FB6D0(@"socket", *v9);
    }
  }

  v10 = v8;
  v11 = objc_alloc_init(JavaIoFileDescriptor);
  [(JavaIoFileDescriptor *)v11 setInt$WithInt:v10];
  return v11;
}

- (void)socketpairWithInt:(int)int withInt:(int)withInt withInt:(int)a5 withJavaIoFileDescriptor:(id)descriptor withJavaIoFileDescriptor:(id)fileDescriptor
{
  while (socketpair(int, withInt, a5, v13) == -1)
  {
    if (*__error() != 4)
    {
      v12 = __error();
      sub_1001FB6D0(@"socketpair", *v12);
    }
  }

  [descriptor setInt$WithInt:v13[0]];
  [fileDescriptor setInt$WithInt:v13[1]];
}

- (id)statvfsWithNSString:(id)string
{
  if (!string)
  {
    return 0;
  }

  v3 = absolutePath(string);
  memset(&v9, 0, sizeof(v9));
  while (statvfs(v3, &v9) == -1)
  {
    if (*__error() != 4)
    {
      v4 = __error();
      v5 = new_LibcoreIoErrnoException_initWithNSString_withInt_(@"statvfs", *v4);
      objc_exception_throw(v5);
    }
  }

  v6 = [LibcoreIoStructStatVfs alloc];
  v7 = [(LibcoreIoStructStatVfs *)v6 initWithLong:v9.f_bsize withLong:v9.f_frsize withLong:v9.f_blocks withLong:v9.f_bfree withLong:v9.f_bavail withLong:v9.f_files withLong:v9.f_ffree withLong:v9.f_favail withLong:v9.f_fsid withLong:v9.f_flag withLong:255];

  return v7;
}

- (id)strerrorWithInt:(int)int
{
  if (strerror_r(int, __strerrbuf, 0x400uLL))
  {
    snprintf(__strerrbuf, 0x400uLL, "errno %d", int);
  }

  return [NSString stringWithUTF8String:__strerrbuf];
}

- (int64_t)sysconfWithInt:(int)int
{
  *__error() = 0;
  v4 = sysconf(int);
  if (v4 == -1 && *__error() == 22)
  {
    v6 = __error();
    v7 = new_LibcoreIoErrnoException_initWithNSString_withInt_(@"sysconf", *v6);
    objc_exception_throw(v7);
  }

  return v4;
}

- (void)symlinkWithNSString:(id)string withNSString:(id)sString
{
  if (string && sString)
  {
    uTF8String = [string UTF8String];
    uTF8String2 = [sString UTF8String];
    while (symlink(uTF8String, uTF8String2) == -1)
    {
      if (*__error() != 4)
      {
        v7 = __error();
        sub_1001FB6D0(@"symlink", *v7);
      }
    }
  }
}

- (void)tcdrainWithJavaIoFileDescriptor:(id)descriptor
{
  while (tcdrain([descriptor getInt$]) == -1)
  {
    if (*__error() != 4)
    {
      v4 = __error();
      sub_1001FB6D0(@"fcntl", *v4);
    }
  }
}

- (id)uname
{
  memset(&v4, 0, 512);
  while (uname(&v4) == -1)
  {
    if (*__error() != 4)
    {
      return 0;
    }
  }

  v3 = [NSString stringWithUTF8String:&v4];
  return [[LibcoreIoStructUtsname alloc] initWithNSString:v3 withNSString:[NSString withNSString:"stringWithUTF8String:" withNSString:v4.nodename withNSString:*v4.sysname stringWithUTF8String:*&v4.sysname[32], *&v4.sysname[48], *&v4.sysname[64], *&v4.sysname[80], *&v4.sysname[96], *&v4.sysname[112], *&v4.sysname[128], *&v4.sysname[144], *&v4.sysname[160], *&v4.sysname[176], *&v4.sysname[192], *&v4.sysname[208], *&v4.sysname[224], *&v4.sysname[240]], [NSString stringWithUTF8String:v4.release], [NSString stringWithUTF8String:v4.version], [NSString stringWithUTF8String:v4.machine]];
}

- (int)writeWithJavaIoFileDescriptor:(id)descriptor withJavaNioByteBuffer:(id)buffer
{
  if (!buffer)
  {
    JreThrowNullPointerException();
  }

  if ([buffer isDirect])
  {
    position = [buffer position];
    remaining = [buffer remaining];
    descriptorCopy2 = descriptor;
    bufferCopy = buffer;
    v10 = position;
  }

  else
  {
    v11 = JavaNioNioUtils_unsafeArrayWithJavaNioByteBuffer_(buffer);
    v12 = JavaNioNioUtils_unsafeArrayOffsetWithJavaNioByteBuffer_(buffer);
    position2 = [buffer position];
    remaining = [buffer remaining];
    v10 = position2 + v12;
    descriptorCopy2 = descriptor;
    bufferCopy = v11;
  }

  return sub_1001FF640(descriptorCopy2, bufferCopy, v10, remaining);
}

- (int)writeWithJavaIoFileDescriptor:(id)descriptor withByteArray:(id)array withInt:(int)int withInt:(int)withInt
{
  if (!array)
  {
    return -1;
  }

  if ((withInt | int) < 0 || withInt + int > *(array + 2))
  {
    IOSArray_throwOutOfBounds();
  }

  v8 = array + int;
  while (1)
  {
    result = write([descriptor getInt$], v8 + 12, withInt);
    if (result != -1)
    {
      break;
    }

    if (*__error() != 4)
    {
      v10 = __error();
      sub_1001FB6D0(@"write", *v10);
    }
  }

  return result;
}

- (int)writevWithJavaIoFileDescriptor:(id)descriptor withNSObjectArray:(id)array withIntArray:(id)intArray withIntArray:(id)withIntArray
{
  v9 = *(array + 2);
  v10 = malloc_type_malloc(16 * v9, 0x1080040FC6463CFuLL);
  v11 = v10;
  if (v9 >= 1)
  {
    v12 = 0;
    p_iov_len = &v10->iov_len;
    v14 = &OBJC_IVAR___IOSIntArray_buffer_;
    do
    {
      v15 = v14;
      v16 = [array objectAtIndex:v12];
      if (!v16)
      {
        JreThrowNullPointerException();
      }

      v17 = v16;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = *(v17 + 2);
        v14 = v15;
        if (v18 <= 0)
        {
          IOSArray_throwOutOfBoundsWithMsg(v18, 0);
        }

        v19 = v17 + 12;
        if (!v19)
        {
LABEL_20:
          v22 = -1;
          goto LABEL_21;
        }
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_20;
        }

        v19 = v17[4];
        v14 = v15;
        if (!v19)
        {
          goto LABEL_20;
        }
      }

      v20 = *(intArray + 2);
      if (v12 >= v20)
      {
        IOSArray_throwOutOfBoundsWithMsg(v20, v12);
      }

      *(p_iov_len - 1) = &v19[*(intArray + 4 * v12 + *v14)];
      v21 = *(withIntArray + 2);
      if (v12 >= v21)
      {
        IOSArray_throwOutOfBoundsWithMsg(v21, v12);
      }

      *p_iov_len = *(withIntArray + 4 * v12 + *v14);
      p_iov_len += 2;
      ++v12;
    }

    while (v9 != v12);
  }

  while (1)
  {
    v22 = writev([descriptor getInt$], v11, v9);
    if (v22 != -1)
    {
      break;
    }

    if (*__error() != 4)
    {
      free(v11);
      v24 = __error();
      sub_1001FB6D0(@"writev", *v24);
    }
  }

LABEL_21:
  free(v11);
  return v22;
}

@end