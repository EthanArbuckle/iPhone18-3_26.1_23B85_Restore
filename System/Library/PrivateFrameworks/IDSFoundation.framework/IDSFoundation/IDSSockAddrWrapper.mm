@interface IDSSockAddrWrapper
+ (id)wrapperWithAddressString:(id)a3 withPortHostOrder:(unsigned __int16)a4 withInterfaceName:(id)a5;
+ (id)wrapperWithSockAddr:(const sockaddr *)a3;
+ (id)wrapperWithWrapper:(id)a3 andPortHostOrder:(unsigned __int16)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToWrapper:(id)a3;
- (IDSSockAddrWrapper)initWithSockAddr:(const sockaddr *)a3;
- (id)description;
- (id)ipData;
- (id)ipString;
@end

@implementation IDSSockAddrWrapper

+ (id)wrapperWithSockAddr:(const sockaddr *)a3
{
  v3 = [[IDSSockAddrWrapper alloc] initWithSockAddr:a3];

  return v3;
}

+ (id)wrapperWithAddressString:(id)a3 withPortHostOrder:(unsigned __int16)a4 withInterfaceName:(id)a5
{
  v5 = a4;
  v19 = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = [a3 UTF8String];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  if (inet_pton(2, v8, &v11 + 4))
  {
    LOWORD(v11) = 528;
    WORD1(v11) = __rev16(v5);
LABEL_3:
    v9 = [[IDSSockAddrWrapper alloc] initWithSockAddr:&v11];
    goto LABEL_4;
  }

  if (inet_pton(30, v8, &v11 + 8))
  {
    LOWORD(v11) = 7708;
    WORD1(v11) = __rev16(v5);
    if (v7)
    {
      DWORD2(v12) = if_nametoindex([v7 UTF8String]);
    }

    goto LABEL_3;
  }

  v9 = 0;
LABEL_4:

  return v9;
}

- (IDSSockAddrWrapper)initWithSockAddr:(const sockaddr *)a3
{
  v8.receiver = self;
  v8.super_class = IDSSockAddrWrapper;
  v4 = [(IDSSockAddrWrapper *)&v8 init];
  v5 = v4;
  if (!v4)
  {
LABEL_7:
    a3 = v5;
    goto LABEL_9;
  }

  if (a3)
  {
    if (!a3->sa_len || (sa_family = a3->sa_family, sa_family != 30) && sa_family != 2)
    {
      a3 = 0;
      goto LABEL_9;
    }

    memcpy(&v4->_sa, a3, a3->sa_len);
    goto LABEL_7;
  }

LABEL_9:

  return a3;
}

- (id)description
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = -21846;
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v12 = v2;
  v13 = v2;
  *__s = v2;
  *&__s[16] = v2;
  v3 = MEMORY[0x1E696AEC0];
  ss_family = self->_sa.ss_family;
  if (ss_family != 30)
  {
    if (ss_family != 2)
    {
      strcpy(__s, "<unsupported address>");
      goto LABEL_12;
    }

    if (inet_ntop(2, &self->_sa.__ss_pad1[2], __s, 0x42u))
    {
      v5 = strlen(__s);
      snprintf(&__s[v5], 66 - v5, ":%u");
      goto LABEL_12;
    }

    v7 = " *** JT *** can't convert v4 address to string (%d)\n";
    goto LABEL_11;
  }

  __s[0] = 91;
  if (!inet_ntop(30, &self->_sa.__ss_align, &__s[1], 0x41u))
  {
    v7 = " *** JT *** can't convert v6 address to string (%d)\n";
LABEL_11:
    v8 = __error();
    printf(v7, *v8);
    strcpy(__s, "<invalid address>");
    goto LABEL_12;
  }

  v6 = strlen(__s);
  snprintf(&__s[v6], 66 - v6, "%%%u]:%u");
LABEL_12:
  v9 = [v3 stringWithUTF8String:__s];

  return v9;
}

+ (id)wrapperWithWrapper:(id)a3 andPortHostOrder:(unsigned __int16)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [IDSSockAddrWrapper alloc];
  v7 = [v5 sa];

  v8 = [(IDSSockAddrWrapper *)v6 initWithSockAddr:v7];
  if ([(IDSSockAddrWrapper *)v8 sa][1] == 2)
  {
    v9 = [(IDSSockAddrWrapper *)v8 sa4];
  }

  else
  {
    v9 = [(IDSSockAddrWrapper *)v8 sa6];
  }

  *(v9 + 2) = __rev16(v4);

  return v8;
}

- (BOOL)isEqualToWrapper:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  v5 = [a3 sa];

  return sub_1A7C11AEC(&self->_sa, v5);
}

- (id)ipData
{
  v2 = MEMORY[0x1E695DEF0];
  if (self->_sa.ss_family == 2)
  {
    v3 = [(IDSSockAddrWrapper *)self sa4]+ 4;
    v4 = v2;
    v5 = 4;
  }

  else
  {
    v3 = ([(IDSSockAddrWrapper *)self sa6]+ 8);
    v4 = v2;
    v5 = 16;
  }

  v6 = [v4 dataWithBytes:v3 length:v5];

  return v6;
}

- (id)ipString
{
  v8 = *MEMORY[0x1E69E9840];
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v7[14] = v2;
  *v6 = v2;
  *v7 = v2;
  ss_family = self->_sa.ss_family;
  if (ss_family == 30)
  {
    if (!inet_ntop(30, [(IDSSockAddrWrapper *)self sa6]+ 8, v6, 0x2Eu))
    {
      __error();
      printf(" *** JT *** can't convert v6 address to string (%d)\n");
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (ss_family == 2)
  {
    if (!inet_ntop(2, [(IDSSockAddrWrapper *)self sa4]+ 4, v6, 0x2Eu))
    {
      __error();
      printf(" *** JT *** can't convert v4 address to string (%d)\n");
      goto LABEL_8;
    }

LABEL_6:
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v6];
    goto LABEL_9;
  }

LABEL_8:
  v4 = 0;
LABEL_9:

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = v5 == objc_opt_class() && [(IDSSockAddrWrapper *)self isEqualToWrapper:v4];

  return v6;
}

@end