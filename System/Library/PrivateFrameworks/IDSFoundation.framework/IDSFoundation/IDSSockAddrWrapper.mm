@interface IDSSockAddrWrapper
+ (id)wrapperWithAddressString:(id)string withPortHostOrder:(unsigned __int16)order withInterfaceName:(id)name;
+ (id)wrapperWithSockAddr:(const sockaddr *)addr;
+ (id)wrapperWithWrapper:(id)wrapper andPortHostOrder:(unsigned __int16)order;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToWrapper:(id)wrapper;
- (IDSSockAddrWrapper)initWithSockAddr:(const sockaddr *)addr;
- (id)description;
- (id)ipData;
- (id)ipString;
@end

@implementation IDSSockAddrWrapper

+ (id)wrapperWithSockAddr:(const sockaddr *)addr
{
  v3 = [[IDSSockAddrWrapper alloc] initWithSockAddr:addr];

  return v3;
}

+ (id)wrapperWithAddressString:(id)string withPortHostOrder:(unsigned __int16)order withInterfaceName:(id)name
{
  orderCopy = order;
  v19 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  uTF8String = [string UTF8String];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  if (inet_pton(2, uTF8String, &v11 + 4))
  {
    LOWORD(v11) = 528;
    WORD1(v11) = __rev16(orderCopy);
LABEL_3:
    v9 = [[IDSSockAddrWrapper alloc] initWithSockAddr:&v11];
    goto LABEL_4;
  }

  if (inet_pton(30, uTF8String, &v11 + 8))
  {
    LOWORD(v11) = 7708;
    WORD1(v11) = __rev16(orderCopy);
    if (nameCopy)
    {
      DWORD2(v12) = if_nametoindex([nameCopy UTF8String]);
    }

    goto LABEL_3;
  }

  v9 = 0;
LABEL_4:

  return v9;
}

- (IDSSockAddrWrapper)initWithSockAddr:(const sockaddr *)addr
{
  v8.receiver = self;
  v8.super_class = IDSSockAddrWrapper;
  v4 = [(IDSSockAddrWrapper *)&v8 init];
  v5 = v4;
  if (!v4)
  {
LABEL_7:
    addr = v5;
    goto LABEL_9;
  }

  if (addr)
  {
    if (!addr->sa_len || (sa_family = addr->sa_family, sa_family != 30) && sa_family != 2)
    {
      addr = 0;
      goto LABEL_9;
    }

    memcpy(&v4->_sa, addr, addr->sa_len);
    goto LABEL_7;
  }

LABEL_9:

  return addr;
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

+ (id)wrapperWithWrapper:(id)wrapper andPortHostOrder:(unsigned __int16)order
{
  orderCopy = order;
  wrapperCopy = wrapper;
  v6 = [IDSSockAddrWrapper alloc];
  v7 = [wrapperCopy sa];

  v8 = [(IDSSockAddrWrapper *)v6 initWithSockAddr:v7];
  if ([(IDSSockAddrWrapper *)v8 sa][1] == 2)
  {
    v9 = [(IDSSockAddrWrapper *)v8 sa4];
  }

  else
  {
    v9 = [(IDSSockAddrWrapper *)v8 sa6];
  }

  *(v9 + 2) = __rev16(orderCopy);

  return v8;
}

- (BOOL)isEqualToWrapper:(id)wrapper
{
  if (self == wrapper)
  {
    return 1;
  }

  v5 = [wrapper sa];

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = v5 == objc_opt_class() && [(IDSSockAddrWrapper *)self isEqualToWrapper:equalCopy];

  return v6;
}

@end