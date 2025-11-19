@interface HAP2AccessoryDeviceIPAddress
- (HAP2AccessoryDeviceIPAddress)initWithAddress:(const coap_address_t *)a3;
- (id)description;
@end

@implementation HAP2AccessoryDeviceIPAddress

- (id)description
{
  v6 = *MEMORY[0x277D85DE8];
  coap_print_addr(&self->_address, __dst, 0x36uLL);
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%s>", __dst];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (HAP2AccessoryDeviceIPAddress)initWithAddress:(const coap_address_t *)a3
{
  *(&self->_address.addr.sin6.sin6_addr + 4) = 0u;
  *&self->_address.size = 0u;
  size = a3->size;
  self->_address.size = size;
  sa_family = a3->addr.sa.sa_family;
  if (sa_family == 2)
  {
    self->_address.addr.sa = a3->addr.sa;
  }

  else if (sa_family == 30)
  {
    self->_address.addr.sa.sa_family = 30;
    self->_address.addr.sin6.sin6_addr = a3->addr.sin6.sin6_addr;
    self->_address.addr.sin.sin_port = a3->addr.sin.sin_port;
    self->_address.addr.sin6.sin6_scope_id = a3->addr.sin6.sin6_scope_id;
  }

  else
  {
    memcpy(&self->_address.addr, &a3->addr, size);
  }

  return self;
}

@end