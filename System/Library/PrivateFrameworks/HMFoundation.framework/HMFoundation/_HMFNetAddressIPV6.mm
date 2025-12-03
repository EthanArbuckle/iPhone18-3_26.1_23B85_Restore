@interface _HMFNetAddressIPV6
- (BOOL)isEqual:(id)equal;
- (_HMFNetAddressIPV6)init;
- (_HMFNetAddressIPV6)initWithSocketAddress:(const sockaddr *)address;
- (id)addressString;
- (id)dataUsingEncoding:(unint64_t)encoding;
@end

@implementation _HMFNetAddressIPV6

- (_HMFNetAddressIPV6)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (_HMFNetAddressIPV6)initWithSocketAddress:(const sockaddr *)address
{
  v17 = *MEMORY[0x277D85DE8];
  if (address->sa_family == 30)
  {
    v14.receiver = self;
    v14.super_class = _HMFNetAddressIPV6;
    v5 = [(_HMFNetAddressIPV6 *)&v14 init];
    if (v5)
    {
      v6 = *&address->sa_data[10];
      *(v5 + 24) = *address;
      *(v5 + 36) = v6;
    }

    selfCopy = v5;
    v8 = selfCopy;
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier(selfCopy);
      *buf = 138543362;
      v16 = v11;
      _os_log_impl(&dword_22ADEC000, v10, OS_LOG_TYPE_ERROR, "%{public}@Invalid sockaddr, must be AF_INET6", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v8 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    v8 = v6 && (*self->_in6.sin6_addr.__u6_addr8 == *v6->_in6.sin6_addr.__u6_addr8 ? (v7 = *&self->_in6.sin6_addr.__u6_addr32[2] == *&v6->_in6.sin6_addr.__u6_addr32[2]) : (v7 = 0), v7 && self->_in6.sin6_port == v6->_in6.sin6_port) && self->_in6.sin6_scope_id == v6->_in6.sin6_scope_id;
  }

  return v8;
}

- (id)addressString
{
  v25 = *MEMORY[0x277D85DE8];
  p_in6 = &self->_in6;
  if (inet_ntop(30, &self->_in6.sin6_addr, v24, 0x2Eu))
  {
    sin6_scope_id = p_in6->sin6_scope_id;
    if (sin6_scope_id)
    {
      if (if_indextoname(sin6_scope_id, buf))
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"%s%%%s", v24, buf];
      }

      else
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"%s%%%u", v24, sin6_scope_id];
      }
      v13 = ;
    }

    else
    {
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:v24];
    }
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier(0);
      v8 = __error();
      v9 = strerror(*v8);
      v10 = *__error();
      v11 = [(_HMFNetAddressIPV6 *)self dataUsingEncoding:1];
      hmf_hexadecimalRepresentation = [v11 hmf_hexadecimalRepresentation];
      *buf = 138544130;
      v17 = v7;
      v18 = 2080;
      v19 = v9;
      v20 = 1024;
      v21 = v10;
      v22 = 2112;
      v23 = hmf_hexadecimalRepresentation;
      _os_log_impl(&dword_22ADEC000, v6, OS_LOG_TYPE_ERROR, "%{public}@inet_ntop() failed  with '%s' (%d) for sockaddr_in6: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v5);
    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)dataUsingEncoding:(unint64_t)encoding
{
  if (encoding == 1)
  {
    v5 = [MEMORY[0x277CBEA90] dataWithBytes:&self->_in6 length:{28, v3}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end