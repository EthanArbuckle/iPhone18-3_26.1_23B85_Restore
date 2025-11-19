@interface IDSStunCandidate
+ (id)candidateWithType:(unint64_t)a3 transport:(int64_t)a4 radioAccessTechnology:(unsigned int)a5 mtu:(unsigned int)a6 index:(int)a7 address:(sockaddr *)a8 external:(sockaddr *)a9;
- (BOOL)hasNATIPv4Address;
- (BOOL)hasNATIPv4External;
- (BOOL)isCellularStunCandidate;
- (BOOL)isCompatibleWithStunCandidate:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isSameNetworkType:(id)a3;
- (IDSStunCandidate)initWithType:(unint64_t)a3 transport:(int64_t)a4 radioAccessTechnology:(unsigned int)a5 mtu:(unsigned int)a6 index:(int)a7 address:(sockaddr *)a8 external:(sockaddr *)a9;
- (NSData)addressData;
- (NSData)externalAddressData;
- (NSString)addressString;
- (NSString)externalAddressString;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unsigned)externalPort;
- (unsigned)port;
- (void)dealloc;
- (void)setAddress:(const sockaddr *)a3 external:(const sockaddr *)a4;
- (void)setExternal:(sockaddr *)a3;
- (void)setExternalAddress:(id)a3;
- (void)setLocalPort:(unsigned __int16)a3;
- (void)setPrefix:(id *)a3;
@end

@implementation IDSStunCandidate

+ (id)candidateWithType:(unint64_t)a3 transport:(int64_t)a4 radioAccessTechnology:(unsigned int)a5 mtu:(unsigned int)a6 index:(int)a7 address:(sockaddr *)a8 external:(sockaddr *)a9
{
  v9 = [[IDSStunCandidate alloc] initWithType:a3 transport:a4 radioAccessTechnology:*&a5 mtu:*&a6 index:*&a7 address:a8 external:a9];

  return v9;
}

- (IDSStunCandidate)initWithType:(unint64_t)a3 transport:(int64_t)a4 radioAccessTechnology:(unsigned int)a5 mtu:(unsigned int)a6 index:(int)a7 address:(sockaddr *)a8 external:(sockaddr *)a9
{
  v19.receiver = self;
  v19.super_class = IDSStunCandidate;
  v15 = [(IDSStunCandidate *)&v19 init];
  v16 = v15;
  if (v15)
  {
    v15->_active = 1;
    v15->_type = a3;
    v15->_transport = a4;
    if (a3 > 3)
    {
      v17 = 0;
    }

    else
    {
      v17 = qword_1A7E40E50[a3];
    }

    v15->_priority = v17;
    v15->_index = a7;
    if (a8 && IsValidSA(a8))
    {
      memcpy(&v16->_address, a8, a8->sa_len);
    }

    if (a9 && IsValidSA(a9))
    {
      memcpy(&v16->_external, a9, a9->sa_len);
    }

    v16->_radioAccessTechnology = a5;
    v16->_mtu = a6;
  }

  return v16;
}

- (void)dealloc
{
  self->_cellularSlicingFlags = 0;
  v2.receiver = self;
  v2.super_class = IDSStunCandidate;
  [(IDSStunCandidate *)&v2 dealloc];
}

- (id)description
{
  v22 = *MEMORY[0x1E69E9840];
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v20 = v3;
  v21 = v3;
  v18 = v3;
  v19 = v3;
  v16 = v3;
  v17 = v3;
  *__str = v3;
  v15 = v3;
  v12 = v3;
  v13 = v3;
  v10 = v3;
  v11 = v3;
  v8 = v3;
  v9 = v3;
  *v6 = v3;
  v7 = v3;
  SAToIPPortString(__str, 0x80uLL, &self->_address);
  SAToIPPortString(v6, 0x80uLL, &self->_external);
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%p/%s/%s/%s/%1d/%s/0x%x/%u]", self, __str, v6, (&_IDSStunCandidateTypeStrings)[self->_type], self->_index, IDSRadioAccessTechnologyToString(self->_radioAccessTechnology), self->_linkFlags, self->_dataSoMask];

  return v4;
}

- (NSString)addressString
{
  v5 = *MEMORY[0x1E69E9840];
  SAToIPPortString(&v4, 0x80uLL, [(IDSStunCandidate *)self address:0xAAAAAAAAAAAAAAAALL]);
  v2 = [MEMORY[0x1E696AEC0] stringWithCString:&v4 encoding:4];

  return v2;
}

- (NSString)externalAddressString
{
  v5 = *MEMORY[0x1E69E9840];
  SAToIPPortString(&v4, 0x80uLL, [(IDSStunCandidate *)self external:0xAAAAAAAAAAAAAAAALL]);
  v2 = [MEMORY[0x1E696AEC0] stringWithCString:&v4 encoding:4];

  return v2;
}

- (void)setExternal:(sockaddr *)a3
{
  if (a3 && IsValidSA(a3))
  {
    sa_len = a3->sa_len;

    memcpy(&self->_external, a3, sa_len);
  }
}

- (void)setAddress:(const sockaddr *)a3 external:(const sockaddr *)a4
{
  v4 = a4;
  v34 = *MEMORY[0x1E69E9840];
  v10 = a4;
  __src = a3;
  if (a3 && IsValidSA(a3))
  {
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v32 = v6;
    v33 = v6;
    v30 = v6;
    v31 = v6;
    v28 = v6;
    v29 = v6;
    *__str = v6;
    v27 = v6;
    v24 = v6;
    v25 = v6;
    v22 = v6;
    v23 = v6;
    v20 = v6;
    v21 = v6;
    *v18 = v6;
    v19 = v6;
    SAToIPPortString(__str, 0x80uLL, &self->_address);
    SAToIPPortString(v18, 0x80uLL, &__src);
    v7 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v13 = __str;
      v14 = 2080;
      v15 = v18;
      v16 = 2112;
      v17 = self;
      _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "update address (%s->%s) for %@.", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"update address (%s->%s) for %@.");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"update address (%s->%s) for %@.");
        }
      }
    }

    memcpy(&self->_address, __src, *__src);
    v4 = v10;
  }

  if (v4 && IsValidSA(v4))
  {
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v32 = v8;
    v33 = v8;
    v30 = v8;
    v31 = v8;
    v28 = v8;
    v29 = v8;
    *__str = v8;
    v27 = v8;
    v24 = v8;
    v25 = v8;
    v22 = v8;
    v23 = v8;
    v20 = v8;
    v21 = v8;
    *v18 = v8;
    v19 = v8;
    SAToIPPortString(__str, 0x80uLL, &self->_external);
    SAToIPPortString(v18, 0x80uLL, &v10);
    v9 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v13 = __str;
      v14 = 2080;
      v15 = v18;
      v16 = 2112;
      v17 = self;
      _os_log_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_DEFAULT, "update external address (%s->%s) for %@.", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"update external address (%s->%s) for %@.");
      if (_IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"update external address (%s->%s) for %@.");
      }
    }

    memcpy(&self->_external, v10, *v10);
  }
}

- (void)setLocalPort:(unsigned __int16)a3
{
  if (a3)
  {
    SASetPort(&self->_address, a3);
  }
}

- (void)setExternalAddress:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v7[6] = v4;
  v7[7] = v4;
  v7[4] = v4;
  v7[5] = v4;
  v7[2] = v4;
  v7[3] = v4;
  v7[0] = v4;
  v7[1] = v4;
  v5 = IPPortStringToSA(a3, v7);
  if (v5)
  {
    v6 = v5;
    if (IsValidSA(v5))
    {
      memcpy(&self->_external, v6, *v6);
    }
  }
}

- (void)setPrefix:(id *)a3
{
  if (a3)
  {
    self->_prefix = *a3;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  type = self->_type;
  v6 = (type == 3) == ([v4 type] == 3) && IsSameSA(&self->_address, objc_msgSend(v4, "address")) && IsSameSA(&self->_external, objc_msgSend(v4, "external"));

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[IDSStunCandidate alloc] initWithType:self->_type transport:self->_transport radioAccessTechnology:self->_radioAccessTechnology mtu:self->_mtu index:self->_index address:&self->_address external:&self->_external];
  [(IDSStunCandidate *)v4 setDataSoMask:self->_dataSoMask];
  [(IDSStunCandidate *)v4 setLinkFlags:self->_linkFlags];
  [(IDSStunCandidate *)v4 setIsCLAT46:self->_isCLAT46];
  [(IDSStunCandidate *)v4 setCellularSlicingFlags:self->_cellularSlicingFlags];
  [(IDSStunCandidate *)v4 setInterfaceName:self->_interfaceName];
  [(IDSStunCandidate *)v4 setDelegatedInterfaceName:self->_delegatedInterfaceName];
  [(IDSStunCandidate *)v4 setDelegatedIndex:self->_delegatedIndex];
  [(IDSStunCandidate *)v4 setIsRealloc:self->_isRealloc];
  return v4;
}

- (BOOL)isCompatibleWithStunCandidate:(id)a3
{
  v4 = a3;
  transport = self->_transport;
  if (transport != [v4 transport])
  {
    goto LABEL_14;
  }

  v6 = *([v4 external] + 1);
  if (v6 != self->_address.ss_family)
  {
    goto LABEL_14;
  }

  if (v6 != 2)
  {
    goto LABEL_13;
  }

  v7 = *&self->_address.__ss_pad1[2];
  v8 = *([v4 external] + 4);
  v9 = [(IDSStunCandidate *)self isCellularStunCandidate];
  if (v9 == [v4 isCellularStunCandidate] || (v10 = bswap32(v7), HIBYTE(v10) != 10) && (v10 & 0xFFF00000) != 0xAC100000 && (v10 & 0xFFFF0000) != 0xC0A80000 || (LOBYTE(v11) = 0, v12 = bswap32(v8), (v12 & 0xFFFF0000) != 0xC0A80000) && (v12 & 0xFF000000) != 0xA000000 && (v12 & 0xFFF00000) != 0xAC100000)
  {
    v13 = *self->_address.__ss_pad1;
    v14 = [v4 external];
    if (v7 != v8 || v13 != *(v14 + 2))
    {
LABEL_13:
      type = self->_type;
      if ((type == 3) == ([v4 type] == 3))
      {
        v17 = [(IDSStunCandidate *)self isLinkLocalStunCandidate];
        v11 = v17 ^ [v4 isLinkLocalStunCandidate] ^ 1;
        goto LABEL_15;
      }
    }

LABEL_14:
    LOBYTE(v11) = 0;
  }

LABEL_15:

  return v11;
}

- (BOOL)isSameNetworkType:(id)a3
{
  v4 = a3;
  if ([v4 isCellularStunCandidate] && -[IDSStunCandidate isCellularStunCandidate](self, "isCellularStunCandidate"))
  {
    v5 = 1;
  }

  else if ([v4 radioAccessTechnology] && objc_msgSend(v4, "radioAccessTechnology") != 9)
  {
    v5 = 0;
  }

  else
  {
    radioAccessTechnology = self->_radioAccessTechnology;
    if (radioAccessTechnology)
    {
      v7 = radioAccessTechnology == 9;
    }

    else
    {
      v7 = 1;
    }

    v5 = v7;
  }

  return v5;
}

- (BOOL)isCellularStunCandidate
{
  radioAccessTechnology = self->_radioAccessTechnology;
  if (radioAccessTechnology)
  {
    v3 = radioAccessTechnology == 9;
  }

  else
  {
    v3 = 1;
  }

  return !v3;
}

- (BOOL)hasNATIPv4Address
{
  if (self->_address.ss_family != 2)
  {
    return 0;
  }

  if (*&self->_address.__ss_pad1[2] == 10)
  {
    return 1;
  }

  v3 = bswap32(*&self->_address.__ss_pad1[2]);
  v4 = v3 >> 20;
  v5 = HIWORD(v3) == 49320;
  return v4 == 2753 || v5;
}

- (BOOL)hasNATIPv4External
{
  if (self->_external.ss_family != 2)
  {
    return 0;
  }

  if (*&self->_external.__ss_pad1[2] == 10)
  {
    return 1;
  }

  v3 = bswap32(*&self->_external.__ss_pad1[2]);
  v4 = v3 >> 20;
  v5 = HIWORD(v3) == 49320;
  return v4 == 2753 || v5;
}

- (NSData)addressData
{
  if (IsValidSA(&self->_address))
  {
    v3 = 56;
    if (self->_address.ss_family == 2)
    {
      v3 = 52;
      v4 = 4;
    }

    else
    {
      v4 = 16;
    }

    v5 = [MEMORY[0x1E695DEF0] dataWithBytes:self + v3 length:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSData)externalAddressData
{
  if (IsValidSA(&self->_external))
  {
    v3 = 184;
    if (self->_external.ss_family == 2)
    {
      v3 = 180;
      v4 = 4;
    }

    else
    {
      v4 = 16;
    }

    v5 = [MEMORY[0x1E695DEF0] dataWithBytes:self + v3 length:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unsigned)port
{
  valid = IsValidSA(&self->_address);
  if (valid)
  {
    return bswap32(*self->_address.__ss_pad1) >> 16;
  }

  return valid;
}

- (unsigned)externalPort
{
  valid = IsValidSA(&self->_external);
  if (valid)
  {
    return bswap32(*self->_external.__ss_pad1) >> 16;
  }

  return valid;
}

@end