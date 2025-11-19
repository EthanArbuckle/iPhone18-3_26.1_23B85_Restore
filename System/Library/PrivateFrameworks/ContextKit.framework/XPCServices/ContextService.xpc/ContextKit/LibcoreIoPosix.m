@interface LibcoreIoPosix
+ (int)throwIfMinusOneWithNSString:(id)a3 withInt:(int)a4;
- (BOOL)accessWithNSString:(id)a3 withInt:(int)a4;
- (BOOL)canAccessWithNSString:(id)a3 withInt:(int)a4;
- (BOOL)isattyWithJavaIoFileDescriptor:(id)a3;
- (id)acceptWithJavaIoFileDescriptor:(id)a3 withJavaNetInetSocketAddress:(id)a4;
- (id)dup2WithJavaIoFileDescriptor:(id)a3 withInt:(int)a4;
- (id)dupWithJavaIoFileDescriptor:(id)a3;
- (id)fstatWithJavaIoFileDescriptor:(id)a3;
- (id)gai_strerrorWithInt:(int)a3;
- (id)getaddrinfoWithNSString:(id)a3 withLibcoreIoStructAddrinfo:(id)a4;
- (id)getnameinfoWithJavaNetInetAddress:(id)a3 withInt:(int)a4;
- (id)getsocknameWithJavaIoFileDescriptor:(id)a3;
- (id)getsockoptInAddrWithJavaIoFileDescriptor:(id)a3 withInt:(int)a4 withInt:(int)a5;
- (id)getsockoptLingerWithJavaIoFileDescriptor:(id)a3 withInt:(int)a4 withInt:(int)a5;
- (id)getsockoptTimevalWithJavaIoFileDescriptor:(id)a3 withInt:(int)a4 withInt:(int)a5;
- (id)if_indextonameWithInt:(int)a3;
- (id)inet_ptonWithInt:(int)a3 withNSString:(id)a4;
- (id)pipe;
- (id)realpathWithNSString:(id)a3;
- (id)socketWithInt:(int)a3 withInt:(int)a4 withInt:(int)a5;
- (id)statvfsWithNSString:(id)a3;
- (id)strerrorWithInt:(int)a3;
- (id)uname;
- (int)fcntlFlockWithJavaIoFileDescriptor:(id)a3 withInt:(int)a4 withLibcoreIoStructFlock:(id)a5;
- (int)fcntlLongWithJavaIoFileDescriptor:(id)a3 withInt:(int)a4 withLong:(int64_t)a5;
- (int)fcntlVoidWithJavaIoFileDescriptor:(id)a3 withInt:(int)a4;
- (int)getsockoptByteWithJavaIoFileDescriptor:(id)a3 withInt:(int)a4 withInt:(int)a5;
- (int)getsockoptIntWithJavaIoFileDescriptor:(id)a3 withInt:(int)a4 withInt:(int)a5;
- (int)ioctlIntWithJavaIoFileDescriptor:(id)a3 withInt:(int)a4 withLibcoreUtilMutableInt:(id)a5;
- (int)pollWithLibcoreIoStructPollfdArray:(id)a3 withInt:(int)a4;
- (int)preadWithJavaIoFileDescriptor:(id)a3 withJavaNioByteBuffer:(id)a4 withLong:(int64_t)a5;
- (int)pwriteWithJavaIoFileDescriptor:(id)a3 withJavaNioByteBuffer:(id)a4 withLong:(int64_t)a5;
- (int)readWithJavaIoFileDescriptor:(id)a3 withJavaNioByteBuffer:(id)a4;
- (int)readvWithJavaIoFileDescriptor:(id)a3 withNSObjectArray:(id)a4 withIntArray:(id)a5 withIntArray:(id)a6;
- (int)recvfromWithJavaIoFileDescriptor:(id)a3 withJavaNioByteBuffer:(id)a4 withInt:(int)a5 withJavaNetInetSocketAddress:(id)a6;
- (int)sendtoWithJavaIoFileDescriptor:(id)a3 withJavaNioByteBuffer:(id)a4 withInt:(int)a5 withJavaNetInetAddress:(id)a6 withInt:(int)a7;
- (int)writeWithJavaIoFileDescriptor:(id)a3 withByteArray:(id)a4 withInt:(int)a5 withInt:(int)a6;
- (int)writeWithJavaIoFileDescriptor:(id)a3 withJavaNioByteBuffer:(id)a4;
- (int)writevWithJavaIoFileDescriptor:(id)a3 withNSObjectArray:(id)a4 withIntArray:(id)a5 withIntArray:(id)a6;
- (int64_t)lseekWithJavaIoFileDescriptor:(id)a3 withLong:(int64_t)a4 withInt:(int)a5;
- (int64_t)mmapWithLong:(int64_t)a3 withLong:(int64_t)a4 withInt:(int)a5 withInt:(int)a6 withJavaIoFileDescriptor:(id)a7 withLong:(int64_t)a8;
- (int64_t)sendfileWithJavaIoFileDescriptor:(id)a3 withJavaIoFileDescriptor:(id)a4 withLibcoreUtilMutableLong:(id)a5 withLong:(int64_t)a6;
- (int64_t)sysconfWithInt:(int)a3;
- (void)bindWithJavaIoFileDescriptor:(id)a3 withJavaNetInetAddress:(id)a4 withInt:(int)a5;
- (void)chmodWithNSString:(id)a3 withInt:(int)a4;
- (void)chownWithNSString:(id)a3 withInt:(int)a4 withInt:(int)a5;
- (void)closeWithJavaIoFileDescriptor:(id)a3;
- (void)connectWithJavaIoFileDescriptor:(id)a3 withJavaNetInetAddress:(id)a4 withInt:(int)a5;
- (void)fchmodWithJavaIoFileDescriptor:(id)a3 withInt:(int)a4;
- (void)fchownWithJavaIoFileDescriptor:(id)a3 withInt:(int)a4 withInt:(int)a5;
- (void)fdatasyncWithJavaIoFileDescriptor:(id)a3;
- (void)fsyncWithJavaIoFileDescriptor:(id)a3;
- (void)ftruncateWithJavaIoFileDescriptor:(id)a3 withLong:(int64_t)a4;
- (void)listenWithJavaIoFileDescriptor:(id)a3 withInt:(int)a4;
- (void)mincoreWithLong:(int64_t)a3 withLong:(int64_t)a4 withByteArray:(id)a5;
- (void)mkdirWithNSString:(id)a3 withInt:(int)a4;
- (void)mlockWithLong:(int64_t)a3 withLong:(int64_t)a4;
- (void)msyncWithLong:(int64_t)a3 withLong:(int64_t)a4 withInt:(int)a5;
- (void)munlockWithLong:(int64_t)a3 withLong:(int64_t)a4;
- (void)munmapWithLong:(int64_t)a3 withLong:(int64_t)a4;
- (void)removeWithNSString:(id)a3;
- (void)renameWithNSString:(id)a3 withNSString:(id)a4;
- (void)setsockoptByteWithJavaIoFileDescriptor:(id)a3 withInt:(int)a4 withInt:(int)a5 withInt:(int)a6;
- (void)setsockoptGroupReqWithJavaIoFileDescriptor:(id)a3 withInt:(int)a4 withInt:(int)a5 withLibcoreIoStructGroupReq:(id)a6;
- (void)setsockoptGroupSourceReqWithJavaIoFileDescriptor:(id)a3 withInt:(int)a4 withInt:(int)a5 withLibcoreIoStructGroupSourceReq:(id)a6;
- (void)setsockoptIfreqWithJavaIoFileDescriptor:(id)a3 withInt:(int)a4 withInt:(int)a5 withNSString:(id)a6;
- (void)setsockoptIntWithJavaIoFileDescriptor:(id)a3 withInt:(int)a4 withInt:(int)a5 withInt:(int)a6;
- (void)setsockoptIpMreqnWithJavaIoFileDescriptor:(id)a3 withInt:(int)a4 withInt:(int)a5 withInt:(int)a6;
- (void)setsockoptLingerWithJavaIoFileDescriptor:(id)a3 withInt:(int)a4 withInt:(int)a5 withLibcoreIoStructLinger:(id)a6;
- (void)setsockoptTimevalWithJavaIoFileDescriptor:(id)a3 withInt:(int)a4 withInt:(int)a5 withLibcoreIoStructTimeval:(id)a6;
- (void)shutdownWithJavaIoFileDescriptor:(id)a3 withInt:(int)a4;
- (void)socketpairWithInt:(int)a3 withInt:(int)a4 withInt:(int)a5 withJavaIoFileDescriptor:(id)a6 withJavaIoFileDescriptor:(id)a7;
- (void)symlinkWithNSString:(id)a3 withNSString:(id)a4;
- (void)tcdrainWithJavaIoFileDescriptor:(id)a3;
@end

@implementation LibcoreIoPosix

+ (int)throwIfMinusOneWithNSString:(id)a3 withInt:(int)a4
{
  if (a4 == -1)
  {
    v6 = __error();
    sub_1001FB6D0(a3, *v6);
  }

  return a4;
}

- (id)acceptWithJavaIoFileDescriptor:(id)a3 withJavaNetInetSocketAddress:(id)a4
{
  v17 = 128;
  memset(v18, 0, sizeof(v18));
  if (a4)
  {
    v6 = v18;
  }

  else
  {
    v6 = 0;
  }

  if (a4)
  {
    v7 = &v17;
  }

  else
  {
    v7 = 0;
  }

  while (1)
  {
    v8 = [a3 getInt$];
    v9 = v8;
    LibcoreIoAsynchronousCloseMonitor_newAsynchronousSocketCloseMonitorWithInt_(v8);
    v10 = accept(v9, v6, v7);
    v11 = [a3 getInt$];
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

  if (sub_1001FB898(v11, a4, v18))
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

- (BOOL)accessWithNSString:(id)a3 withInt:(int)a4
{
  if (!a3)
  {
    return 0;
  }

  v5 = absolutePath(a3);
  while (1)
  {
    v6 = access(v5, a4);
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

- (void)bindWithJavaIoFileDescriptor:(id)a3 withJavaNetInetAddress:(id)a4 withInt:(int)a5
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
  sub_1001FB420(a4, a5, &v13, &v12, 1);
  v6 = v12;
  while (1)
  {
    v7 = [a3 getInt$];
    v8 = v7;
    LibcoreIoAsynchronousCloseMonitor_newAsynchronousSocketCloseMonitorWithInt_(v7);
    if (bind(v8, &v13, v6) != -1)
    {
      break;
    }

    if ([a3 getInt$] == -1)
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

- (BOOL)canAccessWithNSString:(id)a3 withInt:(int)a4
{
  if (!a3)
  {
    return 0;
  }

  v5 = absolutePath(a3);
  do
  {
    v6 = access(v5, a4);
  }

  while (v6 == -1 && *__error() == 4);
  return v6 == 0;
}

- (void)chmodWithNSString:(id)a3 withInt:(int)a4
{
  if (a3)
  {
    v4 = a4;
    v5 = absolutePath(a3);
    while (chmod(v5, v4) == -1)
    {
      if (*__error() != 4)
      {
        v6 = __error();
        sub_1001FB6D0(@"chmod", *v6);
      }
    }
  }
}

- (void)chownWithNSString:(id)a3 withInt:(int)a4 withInt:(int)a5
{
  if (a3)
  {
    v7 = absolutePath(a3);
    while (chown(v7, a4, a5) == -1)
    {
      if (*__error() != 4)
      {
        v8 = __error();
        sub_1001FB6D0(@"chown", *v8);
      }
    }
  }
}

- (void)closeWithJavaIoFileDescriptor:(id)a3
{
  v4 = [a3 getInt$];
  [a3 setInt$WithInt:0xFFFFFFFFLL];
  if (close(v4) == -1)
  {
    v5 = __error();
    sub_1001FB6D0(@"close", *v5);
  }
}

- (void)connectWithJavaIoFileDescriptor:(id)a3 withJavaNetInetAddress:(id)a4 withInt:(int)a5
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
  sub_1001FB420(a4, a5, &v13, &v12, 1);
  v6 = v12;
  while (1)
  {
    v7 = [a3 getInt$];
    v8 = v7;
    LibcoreIoAsynchronousCloseMonitor_newAsynchronousSocketCloseMonitorWithInt_(v7);
    if (connect(v8, &v13, v6) != -1)
    {
      break;
    }

    if ([a3 getInt$] == -1)
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

- (id)dupWithJavaIoFileDescriptor:(id)a3
{
  while (1)
  {
    v4 = dup([a3 getInt$]);
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

- (id)dup2WithJavaIoFileDescriptor:(id)a3 withInt:(int)a4
{
  while (1)
  {
    v6 = dup2([a3 getInt$], a4);
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

- (void)fchmodWithJavaIoFileDescriptor:(id)a3 withInt:(int)a4
{
  v4 = a4;
  while (fchmod([a3 getInt$], v4) == -1)
  {
    if (*__error() != 4)
    {
      v6 = __error();
      sub_1001FB6D0(@"fchmod", *v6);
    }
  }
}

- (void)fchownWithJavaIoFileDescriptor:(id)a3 withInt:(int)a4 withInt:(int)a5
{
  while (fchown([a3 getInt$], a4, a5) == -1)
  {
    if (*__error() != 4)
    {
      v8 = __error();
      sub_1001FB6D0(@"fchown", *v8);
    }
  }
}

- (int)fcntlFlockWithJavaIoFileDescriptor:(id)a3 withInt:(int)a4 withLibcoreIoStructFlock:(id)a5
{
  v16 = *(a5 + 4);
  v17 = *(a5 + 5);
  v8 = *(a5 + 3);
  v13 = *(a5 + 2);
  v14 = v8;
  v15 = *(a5 + 8);
  while (1)
  {
    result = fcntl([a3 getInt$], a4, &v13);
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

  *(a5 + 4) = v16;
  *(a5 + 5) = v17;
  v12 = v14;
  *(a5 + 2) = v13;
  *(a5 + 3) = v12;
  *(a5 + 8) = v15;
  return result;
}

- (int)fcntlLongWithJavaIoFileDescriptor:(id)a3 withInt:(int)a4 withLong:(int64_t)a5
{
  while (1)
  {
    result = fcntl([a3 getInt$], a4, a5);
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

- (int)fcntlVoidWithJavaIoFileDescriptor:(id)a3 withInt:(int)a4
{
  while (1)
  {
    result = fcntl([a3 getInt$], a4);
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

- (void)fdatasyncWithJavaIoFileDescriptor:(id)a3
{
  while (fsync([a3 getInt$]) == -1)
  {
    if (*__error() != 4)
    {
      v4 = __error();
      sub_1001FB6D0(@"fdatasync", *v4);
    }
  }
}

- (id)fstatWithJavaIoFileDescriptor:(id)a3
{
  memset(&v6, 0, sizeof(v6));
  while (fstat([a3 getInt$], &v6) == -1)
  {
    if (*__error() != 4)
    {
      v4 = new_LibcoreIoErrnoException_initWithNSString_withInt_(@"fstat", 0xFFFFFFFF);
      objc_exception_throw(v4);
    }
  }

  return sub_1001FC258(&v6.st_dev);
}

- (void)fsyncWithJavaIoFileDescriptor:(id)a3
{
  while (fsync([a3 getInt$]) == -1)
  {
    if (*__error() != 4)
    {
      v4 = __error();
      sub_1001FB6D0(@"fsync", *v4);
    }
  }
}

- (void)ftruncateWithJavaIoFileDescriptor:(id)a3 withLong:(int64_t)a4
{
  while (ftruncate([a3 getInt$], a4) == -1)
  {
    if (*__error() != 4)
    {
      v6 = __error();
      sub_1001FB6D0(@"ftruncate", *v6);
    }
  }
}

- (id)gai_strerrorWithInt:(int)a3
{
  v3 = gai_strerror(a3);

  return [NSString stringWithUTF8String:v3];
}

- (id)getaddrinfoWithNSString:(id)a3 withLibcoreIoStructAddrinfo:(id)a4
{
  v4 = a3;
  if (a3)
  {
    v5 = *(a4 + 3);
    v6 = *(a4 + 4);
    v28.ai_flags = *(a4 + 2);
    v28.ai_family = v5;
    v7 = *(a4 + 5);
    memset(&v28.ai_addrlen, 0, 32);
    v28.ai_socktype = v6;
    v28.ai_protocol = v7;
    v27 = 0;
    *__error() = 0;
    v8 = getaddrinfo([(IOSObjectArray *)v4 UTF8String], 0, &v28, &v27);
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
      v4 = [IOSObjectArray arrayWithLength:v10 type:JavaNetInetAddress_class_()];
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

            [(IOSObjectArray *)v4 replaceObjectAtIndex:v14++ withObject:v24];
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

  return v4;
}

- (id)getnameinfoWithJavaNetInetAddress:(id)a3 withInt:(int)a4
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
  sub_1001FB420(a3, 0, &v9, &v7, 0);
  *__error() = 0;
  v5 = getnameinfo(&v9, v7, v8, 0x401u, 0, 0, a4);
  if (v5)
  {
    objc_exception_throw([[LibcoreIoGaiException alloc] initWithNSString:@"getnameinfo" withInt:v5]);
  }

  return [NSString stringWithUTF8String:v8];
}

- (id)getsocknameWithJavaIoFileDescriptor:(id)a3
{
  v3 = [a3 getInt$];
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

- (int)getsockoptByteWithJavaIoFileDescriptor:(id)a3 withInt:(int)a4 withInt:(int)a5
{
  v11 = 0;
  v10 = 1;
  while (getsockopt([a3 getInt$], a4, a5, &v11, &v10) == -1)
  {
    if (*__error() != 4)
    {
      v8 = new_LibcoreIoErrnoException_initWithNSString_withInt_(@"getsockopt", 0xFFFFFFFF);
      objc_exception_throw(v8);
    }
  }

  return v11;
}

- (id)getsockoptInAddrWithJavaIoFileDescriptor:(id)a3 withInt:(int)a4 withInt:(int)a5
{
  memset(v11, 0, sizeof(v11));
  BYTE1(v11[0]) = 2;
  v10 = 4;
  while (getsockopt([a3 getInt$], a4, a5, v11 + 4, &v10) == -1)
  {
    if (*__error() != 4)
    {
      v8 = new_LibcoreIoErrnoException_initWithNSString_withInt_(@"getsockopt", 0xFFFFFFFF);
      objc_exception_throw(v8);
    }
  }

  return sockaddrToInetAddress(v11, 0);
}

- (int)getsockoptIntWithJavaIoFileDescriptor:(id)a3 withInt:(int)a4 withInt:(int)a5
{
  v10 = 4;
  v11 = 0;
  while (getsockopt([a3 getInt$], a4, a5, &v11, &v10) == -1)
  {
    if (*__error() != 4)
    {
      v8 = new_LibcoreIoErrnoException_initWithNSString_withInt_(@"getsockopt", 0xFFFFFFFF);
      objc_exception_throw(v8);
    }
  }

  return v11;
}

- (id)getsockoptLingerWithJavaIoFileDescriptor:(id)a3 withInt:(int)a4 withInt:(int)a5
{
  v11 = 8;
  v12 = 0;
  while (getsockopt([a3 getInt$], a4, a5, &v12, &v11) == -1)
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

- (id)getsockoptTimevalWithJavaIoFileDescriptor:(id)a3 withInt:(int)a4 withInt:(int)a5
{
  v11 = 16;
  v12 = 0;
  v13 = 0;
  while (getsockopt([a3 getInt$], a4, a5, &v12, &v11) == -1)
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

- (id)if_indextonameWithInt:(int)a3
{
  result = if_indextoname(a3, v4);
  if (result)
  {
    return [NSString stringWithUTF8String:result];
  }

  return result;
}

- (id)inet_ptonWithInt:(int)a3 withNSString:(id)a4
{
  if (!a4)
  {
    return 0;
  }

  v4 = a3;
  if (inet_pton(a3, [a4 UTF8String], &v7) != 1)
  {
    return 0;
  }

  v6[1] = v4;
  return sockaddrToInetAddress(v6, 0);
}

- (int)ioctlIntWithJavaIoFileDescriptor:(id)a3 withInt:(int)a4 withLibcoreUtilMutableInt:(id)a5
{
  v10 = *(a5 + 2);
  v7 = a4;
  while (1)
  {
    result = ioctl([a3 getInt$], v7, &v10);
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

  *(a5 + 2) = v10;
  return result;
}

- (BOOL)isattyWithJavaIoFileDescriptor:(id)a3
{
  do
  {
    v4 = isatty([a3 getInt$]);
  }

  while (v4 == -1 && *__error() == 4);
  return v4 == 1;
}

- (int64_t)lseekWithJavaIoFileDescriptor:(id)a3 withLong:(int64_t)a4 withInt:(int)a5
{
  do
  {
    v8 = lseek([a3 getInt$], a4, a5);
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

- (void)listenWithJavaIoFileDescriptor:(id)a3 withInt:(int)a4
{
  while (listen([a3 getInt$], a4) == -1)
  {
    if (*__error() != 4)
    {
      v6 = __error();
      sub_1001FB6D0(@"listen", *v6);
    }
  }
}

- (void)mincoreWithLong:(int64_t)a3 withLong:(int64_t)a4 withByteArray:(id)a5
{
  while (mincore(a3, a4, a5 + 12) == -1)
  {
    if (*__error() != 4)
    {
      v8 = __error();
      sub_1001FB6D0(@"mincore", *v8);
    }
  }
}

- (void)mkdirWithNSString:(id)a3 withInt:(int)a4
{
  if (a3)
  {
    v4 = a4;
    v5 = absolutePath(a3);
    while (mkdir(v5, v4) == -1)
    {
      if (*__error() != 4)
      {
        v6 = __error();
        sub_1001FB6D0(@"mkdir", *v6);
      }
    }
  }
}

- (void)mlockWithLong:(int64_t)a3 withLong:(int64_t)a4
{
  while (mlock(a3, a4) == -1)
  {
    if (*__error() != 4)
    {
      v6 = __error();
      sub_1001FB6D0(@"mlock", *v6);
    }
  }
}

- (int64_t)mmapWithLong:(int64_t)a3 withLong:(int64_t)a4 withInt:(int)a5 withInt:(int)a6 withJavaIoFileDescriptor:(id)a7 withLong:(int64_t)a8
{
  result = mmap(a3, a4, a5, a6, [a7 getInt$], a8);
  if (result == -1)
  {
    v9 = __error();
    v10 = new_LibcoreIoErrnoException_initWithNSString_withInt_(@"mmap", *v9);
    objc_exception_throw(v10);
  }

  return result;
}

- (void)msyncWithLong:(int64_t)a3 withLong:(int64_t)a4 withInt:(int)a5
{
  while (msync(a3, a4, a5) == -1)
  {
    if (*__error() != 4)
    {
      v8 = __error();
      sub_1001FB6D0(@"msync", *v8);
    }
  }
}

- (void)munlockWithLong:(int64_t)a3 withLong:(int64_t)a4
{
  while (munlock(a3, a4) == -1)
  {
    if (*__error() != 4)
    {
      v6 = __error();
      sub_1001FB6D0(@"munlock", *v6);
    }
  }
}

- (void)munmapWithLong:(int64_t)a3 withLong:(int64_t)a4
{
  while (munmap(a3, a4) == -1)
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

- (int)pollWithLibcoreIoStructPollfdArray:(id)a3 withInt:(int)a4
{
  v6 = *(a3 + 2);
  v7 = malloc_type_calloc(v6, 8uLL, 0x100004000313F17uLL);
  v8 = v7;
  if (v6 < 1)
  {
    v14 = poll(v7, v6, a4);
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
    v11 = [a3 objectAtIndex:v9];
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
  v13 = poll(v8, v6, a4);
  if (v13 == -1)
  {
    goto LABEL_14;
  }

  v14 = v13;
  v15 = 0;
  p_revents = &v8->revents;
  do
  {
    v17 = [a3 objectAtIndex:v15];
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

- (int)preadWithJavaIoFileDescriptor:(id)a3 withJavaNioByteBuffer:(id)a4 withLong:(int64_t)a5
{
  if (!a4)
  {
    JreThrowNullPointerException();
  }

  if ([a4 isDirect])
  {
    v8 = [a4 position];
    v9 = [a4 remaining];
    v10 = a3;
    v11 = a4;
    v12 = v8;
  }

  else
  {
    v13 = JavaNioNioUtils_unsafeArrayWithJavaNioByteBuffer_(a4);
    v14 = JavaNioNioUtils_unsafeArrayOffsetWithJavaNioByteBuffer_(a4);
    v15 = [a4 position];
    v9 = [a4 remaining];
    v12 = v15 + v14;
    v10 = a3;
    v11 = v13;
  }

  return sub_1001FD7D8(v10, v11, v12, v9, a5);
}

- (int)pwriteWithJavaIoFileDescriptor:(id)a3 withJavaNioByteBuffer:(id)a4 withLong:(int64_t)a5
{
  if (!a4)
  {
    JreThrowNullPointerException();
  }

  if ([a4 isDirect])
  {
    v8 = [a4 position];
    v9 = [a4 remaining];
    v10 = a3;
    v11 = a4;
    v12 = v8;
  }

  else
  {
    v13 = JavaNioNioUtils_unsafeArrayWithJavaNioByteBuffer_(a4);
    v14 = JavaNioNioUtils_unsafeArrayOffsetWithJavaNioByteBuffer_(a4);
    v15 = [a4 position];
    v9 = [a4 remaining];
    v12 = v15 + v14;
    v10 = a3;
    v11 = v13;
  }

  return sub_1001FD9EC(v10, v11, v12, v9, a5);
}

- (int)readWithJavaIoFileDescriptor:(id)a3 withJavaNioByteBuffer:(id)a4
{
  if (!a4)
  {
    JreThrowNullPointerException();
  }

  if ([a4 isDirect])
  {
    v6 = [a4 position];
    v7 = [a4 remaining];
    v8 = a3;
    v9 = a4;
    v10 = v6;
  }

  else
  {
    v11 = JavaNioNioUtils_unsafeArrayWithJavaNioByteBuffer_(a4);
    v12 = JavaNioNioUtils_unsafeArrayOffsetWithJavaNioByteBuffer_(a4);
    v13 = [a4 position];
    v7 = [a4 remaining];
    v10 = v13 + v12;
    v8 = a3;
    v9 = v11;
  }

  return sub_1001FDC18(v8, v9, v10, v7);
}

- (int)readvWithJavaIoFileDescriptor:(id)a3 withNSObjectArray:(id)a4 withIntArray:(id)a5 withIntArray:(id)a6
{
  v9 = *(a4 + 2);
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
      v16 = [a4 objectAtIndex:v12];
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

      v20 = *(a5 + 2);
      if (v12 >= v20)
      {
        IOSArray_throwOutOfBoundsWithMsg(v20, v12);
      }

      *(p_iov_len - 1) = &v19[*(a5 + 4 * v12 + *v14)];
      v21 = *(a6 + 2);
      if (v12 >= v21)
      {
        IOSArray_throwOutOfBoundsWithMsg(v21, v12);
      }

      *p_iov_len = *(a6 + 4 * v12 + *v14);
      p_iov_len += 2;
      ++v12;
    }

    while (v9 != v12);
  }

  while (1)
  {
    v22 = readv([a3 getInt$], v11, v9);
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

- (id)realpathWithNSString:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = +[NSFileManager defaultManager];
  v5 = [a3 stringByStandardizingPath];
  if ([(NSFileManager *)v4 fileExistsAtPath:v5])
  {
    v6 = realpath_DARWIN_EXTSN([a3 UTF8String], 0);
    if (!v6)
    {
      v9 = __error();
      v10 = new_LibcoreIoErrnoException_initWithNSString_withInt_(@"realpath", *v9);
      objc_exception_throw(v10);
    }

    v7 = v6;
    v5 = [+[NSFileManager defaultManager](NSFileManager stringWithFileSystemRepresentation:"stringWithFileSystemRepresentation:length:" length:v7, strlen(v7)];
    free(v7);
  }

  return v5;
}

- (int)recvfromWithJavaIoFileDescriptor:(id)a3 withJavaNioByteBuffer:(id)a4 withInt:(int)a5 withJavaNetInetSocketAddress:(id)a6
{
  if (!a4)
  {
    JreThrowNullPointerException();
  }

  if ([a4 isDirect])
  {
    v10 = [a4 position];
    v11 = [a4 remaining];
    v12 = a3;
    v13 = a4;
    v14 = v10;
  }

  else
  {
    v15 = JavaNioNioUtils_unsafeArrayWithJavaNioByteBuffer_(a4);
    v16 = JavaNioNioUtils_unsafeArrayOffsetWithJavaNioByteBuffer_(a4);
    v17 = [a4 position];
    v11 = [a4 remaining];
    v14 = v17 + v16;
    v12 = a3;
    v13 = v15;
  }

  return sub_1001FE100(v12, v13, v14, v11, a5, a6);
}

- (void)removeWithNSString:(id)a3
{
  if (a3)
  {
    v4 = absolutePath(a3);
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

- (void)renameWithNSString:(id)a3 withNSString:(id)a4
{
  if (a3 && a4)
  {
    v5 = absolutePath(a3);
    v7 = absolutePath(a4);
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

- (int64_t)sendfileWithJavaIoFileDescriptor:(id)a3 withJavaIoFileDescriptor:(id)a4 withLibcoreUtilMutableLong:(id)a5 withLong:(int64_t)a6
{
  v19 = 0;
  if (a5)
  {
    v19 = *(a5 + 1);
    v10 = &v19;
  }

  else
  {
    v10 = 0;
  }

  while (1)
  {
    v11 = [a3 getInt$];
    v12 = [a4 getInt$];
    v20 = a6;
    if (v10)
    {
      v13 = sendfile(v12, v11, *v10, &v20, 0, 0);
      v14 = v20;
      if (v13 != -1 && v20 != 0xFFFFFFFFLL)
      {
        break;
      }
    }

    if (*__error() != 4)
    {
      v14 = -1;
      v16 = 1;
      if (!a5)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  v16 = 0;
  if (a5)
  {
LABEL_12:
    *(a5 + 1) = v19;
  }

LABEL_13:
  if (v16)
  {
    v18 = __error();
    sub_1001FB6D0(@"sendfile", *v18);
  }

  return v14;
}

- (int)sendtoWithJavaIoFileDescriptor:(id)a3 withJavaNioByteBuffer:(id)a4 withInt:(int)a5 withJavaNetInetAddress:(id)a6 withInt:(int)a7
{
  if (!a4)
  {
    JreThrowNullPointerException();
  }

  if ([a4 isDirect])
  {
    v12 = [a4 position];
    v13 = [a4 remaining];
    v14 = a3;
    v15 = a4;
    v16 = v12;
  }

  else
  {
    v17 = JavaNioNioUtils_unsafeArrayWithJavaNioByteBuffer_(a4);
    v18 = JavaNioNioUtils_unsafeArrayOffsetWithJavaNioByteBuffer_(a4);
    v19 = [a4 position];
    v13 = [a4 remaining];
    v16 = v19 + v18;
    v14 = a3;
    v15 = v17;
  }

  return sub_1001FE608(v14, v15, v16, v13, a5, a6, a7);
}

- (void)setsockoptByteWithJavaIoFileDescriptor:(id)a3 withInt:(int)a4 withInt:(int)a5 withInt:(int)a6
{
  v10 = a6;
  while (setsockopt([a3 getInt$], a4, a5, &v10, 1u) == -1)
  {
    if (*__error() != 4)
    {
      v9 = __error();
      sub_1001FB6D0(@"setsockopt", *v9);
    }
  }
}

- (void)setsockoptGroupReqWithJavaIoFileDescriptor:(id)a3 withInt:(int)a4 withInt:(int)a5 withLibcoreIoStructGroupReq:(id)a6
{
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v20 = *(a6 + 2);
  sub_1001FB420(*(a6 + 2), 0, &v21, &v10, 0);
  while (setsockopt([a3 getInt$], a4, a5, &v20, 0x84u) == -1)
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
      while (setsockopt([a3 getInt$], a4, a5, &v11, 0x88u) == -1)
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

- (void)setsockoptGroupSourceReqWithJavaIoFileDescriptor:(id)a3 withInt:(int)a4 withInt:(int)a5 withLibcoreIoStructGroupSourceReq:(id)a6
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
  v29 = *(a6 + 2);
  sub_1001FB420(*(a6 + 2), 0, &v30, &v11, 0);
  sub_1001FB420(*(a6 + 3), 0, &v38, &v11, 0);
  while (setsockopt([a3 getInt$], a4, a5, &v29, 0x104u) == -1)
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
      while (setsockopt([a3 getInt$], a4, a5, &v12, 0x108u) == -1)
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

- (void)setsockoptIfreqWithJavaIoFileDescriptor:(id)a3 withInt:(int)a4 withInt:(int)a5 withNSString:(id)a6
{
  if (a6)
  {
    v11 = 0;
    v12 = 0;
    strncpy(__dst, [a6 UTF8String], 0x10uLL);
    __dst[15] = 0;
    while (setsockopt([a3 getInt$], a4, a5, __dst, 0x20u) == -1)
    {
      if (*__error() != 4)
      {
        v9 = __error();
        sub_1001FB6D0(@"setsockopt", *v9);
      }
    }
  }
}

- (void)setsockoptIntWithJavaIoFileDescriptor:(id)a3 withInt:(int)a4 withInt:(int)a5 withInt:(int)a6
{
  v10 = a6;
  while (setsockopt([a3 getInt$], a4, a5, &v10, 4u) == -1)
  {
    if (*__error() != 4)
    {
      v9 = __error();
      sub_1001FB6D0(@"setsockopt", *v9);
    }
  }
}

- (void)setsockoptIpMreqnWithJavaIoFileDescriptor:(id)a3 withInt:(int)a4 withInt:(int)a5 withInt:(int)a6
{
  v10 = 0;
  LODWORD(v11) = a6;
  while (setsockopt([a3 getInt$], a4, a5, &v10, 0xCu) == -1)
  {
    if (*__error() != 4)
    {
      v9 = __error();
      sub_1001FB6D0(@"setsockopt", *v9);
    }
  }
}

- (void)setsockoptLingerWithJavaIoFileDescriptor:(id)a3 withInt:(int)a4 withInt:(int)a5 withLibcoreIoStructLinger:(id)a6
{
  v9 = *(a6 + 3);
  v11[0] = *(a6 + 2);
  v11[1] = v9;
  while (setsockopt([a3 getInt$], a4, a5, v11, 8u) == -1)
  {
    if (*__error() != 4)
    {
      v10 = __error();
      sub_1001FB6D0(@"setsockopt", *v10);
    }
  }
}

- (void)setsockoptTimevalWithJavaIoFileDescriptor:(id)a3 withInt:(int)a4 withInt:(int)a5 withLibcoreIoStructTimeval:(id)a6
{
  v10 = *(a6 + 1);
  v11 = 0;
  LODWORD(v11) = *(a6 + 2);
  while (setsockopt([a3 getInt$], a4, a5, &v10, 0x10u) == -1)
  {
    if (*__error() != 4)
    {
      v9 = __error();
      sub_1001FB6D0(@"setsockopt", *v9);
    }
  }
}

- (void)shutdownWithJavaIoFileDescriptor:(id)a3 withInt:(int)a4
{
  while (shutdown([a3 getInt$], a4) == -1)
  {
    if (*__error() != 4)
    {
      v6 = __error();
      sub_1001FB6D0(@"shutdown", *v6);
    }
  }
}

- (id)socketWithInt:(int)a3 withInt:(int)a4 withInt:(int)a5
{
  while (1)
  {
    v8 = socket(a3, a4, a5);
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

- (void)socketpairWithInt:(int)a3 withInt:(int)a4 withInt:(int)a5 withJavaIoFileDescriptor:(id)a6 withJavaIoFileDescriptor:(id)a7
{
  while (socketpair(a3, a4, a5, v13) == -1)
  {
    if (*__error() != 4)
    {
      v12 = __error();
      sub_1001FB6D0(@"socketpair", *v12);
    }
  }

  [a6 setInt$WithInt:v13[0]];
  [a7 setInt$WithInt:v13[1]];
}

- (id)statvfsWithNSString:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = absolutePath(a3);
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

- (id)strerrorWithInt:(int)a3
{
  if (strerror_r(a3, __strerrbuf, 0x400uLL))
  {
    snprintf(__strerrbuf, 0x400uLL, "errno %d", a3);
  }

  return [NSString stringWithUTF8String:__strerrbuf];
}

- (int64_t)sysconfWithInt:(int)a3
{
  *__error() = 0;
  v4 = sysconf(a3);
  if (v4 == -1 && *__error() == 22)
  {
    v6 = __error();
    v7 = new_LibcoreIoErrnoException_initWithNSString_withInt_(@"sysconf", *v6);
    objc_exception_throw(v7);
  }

  return v4;
}

- (void)symlinkWithNSString:(id)a3 withNSString:(id)a4
{
  if (a3 && a4)
  {
    v5 = [a3 UTF8String];
    v6 = [a4 UTF8String];
    while (symlink(v5, v6) == -1)
    {
      if (*__error() != 4)
      {
        v7 = __error();
        sub_1001FB6D0(@"symlink", *v7);
      }
    }
  }
}

- (void)tcdrainWithJavaIoFileDescriptor:(id)a3
{
  while (tcdrain([a3 getInt$]) == -1)
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

- (int)writeWithJavaIoFileDescriptor:(id)a3 withJavaNioByteBuffer:(id)a4
{
  if (!a4)
  {
    JreThrowNullPointerException();
  }

  if ([a4 isDirect])
  {
    v6 = [a4 position];
    v7 = [a4 remaining];
    v8 = a3;
    v9 = a4;
    v10 = v6;
  }

  else
  {
    v11 = JavaNioNioUtils_unsafeArrayWithJavaNioByteBuffer_(a4);
    v12 = JavaNioNioUtils_unsafeArrayOffsetWithJavaNioByteBuffer_(a4);
    v13 = [a4 position];
    v7 = [a4 remaining];
    v10 = v13 + v12;
    v8 = a3;
    v9 = v11;
  }

  return sub_1001FF640(v8, v9, v10, v7);
}

- (int)writeWithJavaIoFileDescriptor:(id)a3 withByteArray:(id)a4 withInt:(int)a5 withInt:(int)a6
{
  if (!a4)
  {
    return -1;
  }

  if ((a6 | a5) < 0 || a6 + a5 > *(a4 + 2))
  {
    IOSArray_throwOutOfBounds();
  }

  v8 = a4 + a5;
  while (1)
  {
    result = write([a3 getInt$], v8 + 12, a6);
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

- (int)writevWithJavaIoFileDescriptor:(id)a3 withNSObjectArray:(id)a4 withIntArray:(id)a5 withIntArray:(id)a6
{
  v9 = *(a4 + 2);
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
      v16 = [a4 objectAtIndex:v12];
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

      v20 = *(a5 + 2);
      if (v12 >= v20)
      {
        IOSArray_throwOutOfBoundsWithMsg(v20, v12);
      }

      *(p_iov_len - 1) = &v19[*(a5 + 4 * v12 + *v14)];
      v21 = *(a6 + 2);
      if (v12 >= v21)
      {
        IOSArray_throwOutOfBoundsWithMsg(v21, v12);
      }

      *p_iov_len = *(a6 + 4 * v12 + *v14);
      p_iov_len += 2;
      ++v12;
    }

    while (v9 != v12);
  }

  while (1)
  {
    v22 = writev([a3 getInt$], v11, v9);
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