@interface CUWiFiTrafficPeer
- ($4FF8D77539A8BD95DCE0A545902499A9)peerIP;
- (id)peerMACAddressData;
- (void)setPeerIP:(id *)p;
@end

@implementation CUWiFiTrafficPeer

- (void)setPeerIP:(id *)p
{
  var0 = p->var0;
  *(&self->_peerIP.v6.sin6_addr + 4) = *(&p->var2.sin6_addr + 4);
  self->_peerIP.sa = var0;
}

- ($4FF8D77539A8BD95DCE0A545902499A9)peerIP
{
  retstr->var0 = *&self[1].var2.sin6_flowinfo;
  *(&retstr->var2.sin6_addr + 4) = *(&self[1].var2.sin6_addr + 8);
  return self;
}

- (id)peerMACAddressData
{
  if ([(NSData *)self->_peerMACData length]== 6)
  {
    v3 = self->_peerMACData;
    goto LABEL_12;
  }

  if (self->_peerIP.sa.sa_family != 30)
  {
    goto LABEL_11;
  }

  v4 = self->_peerIP.v6.sin6_addr.__u6_addr8[0];
  if (v4 == 254)
  {
    if ((self->_peerIP.sa.sa_data[7] & 0xC0) != 0x80)
    {
      goto LABEL_11;
    }
  }

  else if ((v4 & 0xFE) != 0xFC)
  {
    goto LABEL_11;
  }

  sin6_scope_id = self->_peerIP.v6.sin6_scope_id;
  if (sin6_scope_id && sin6_scope_id == if_nametoindex("awdl0"))
  {
    v7 = self->_peerIP.v6.sin6_addr.__u6_addr8[8] ^ 2;
    v8 = *(&self->_peerIP.v6.sin6_addr.__u6_addr16[4] + 1);
    v9 = self->_peerIP.v6.sin6_addr.__u6_addr8[13];
    v10 = self->_peerIP.v6.sin6_addr.__u6_addr16[7];
    v3 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&v7 length:6];
    goto LABEL_12;
  }

LABEL_11:
  v3 = 0;
LABEL_12:

  return v3;
}

@end