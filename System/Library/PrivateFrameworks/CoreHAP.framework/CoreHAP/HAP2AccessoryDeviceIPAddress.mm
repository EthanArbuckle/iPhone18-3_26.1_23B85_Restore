@interface HAP2AccessoryDeviceIPAddress
- (HAP2AccessoryDeviceIPAddress)initWithAddress:(const coap_address_t *)address;
- (id)description;
@end

@implementation HAP2AccessoryDeviceIPAddress

- (id)description
{
  v6 = *MEMORY[0x277D85DE8];
  coap_print_addr(&self->_address, __dst, 0x36uLL);
  __dst = [MEMORY[0x277CCACA8] stringWithFormat:@"<%s>", __dst];
  v3 = *MEMORY[0x277D85DE8];

  return __dst;
}

- (HAP2AccessoryDeviceIPAddress)initWithAddress:(const coap_address_t *)address
{
  *(&self->_address.addr.sin6.sin6_addr + 4) = 0u;
  *&self->_address.size = 0u;
  size = address->size;
  self->_address.size = size;
  sa_family = address->addr.sa.sa_family;
  if (sa_family == 2)
  {
    self->_address.addr.sa = address->addr.sa;
  }

  else if (sa_family == 30)
  {
    self->_address.addr.sa.sa_family = 30;
    self->_address.addr.sin6.sin6_addr = address->addr.sin6.sin6_addr;
    self->_address.addr.sin.sin_port = address->addr.sin.sin_port;
    self->_address.addr.sin6.sin6_scope_id = address->addr.sin6.sin6_scope_id;
  }

  else
  {
    memcpy(&self->_address.addr, &address->addr, size);
  }

  return self;
}

@end