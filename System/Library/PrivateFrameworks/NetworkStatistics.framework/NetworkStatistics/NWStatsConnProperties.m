@interface NWStatsConnProperties
- (id)description;
- (unsigned)remotePort;
@end

@implementation NWStatsConnProperties

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"NWStatsConnProperties at %p, isTracker %d, nonAppInit %d silent %d domain %@ owner %@ tracker-context %@ attributed %@ addr %@", self, self->_isTracker, self->_isNonAppInitiated, self->_isSilent, self->_domainName, self->_domainOwner, self->_domainTrackerContext, self->_domainAttributedBundleId, self->_remoteAddress];

  return v2;
}

- (unsigned)remotePort
{
  v2 = [(NWStatsConnProperties *)self remoteAddress];
  v3 = v2;
  if (v2 && ((v4 = [v2 bytes], *(v4 + 1) == 2) || (v4 = objc_msgSend(v3, "bytes"), *(v4 + 1) == 30)))
  {
    v5 = bswap32(*(v4 + 2)) >> 16;
  }

  else
  {
    LOWORD(v5) = 0;
  }

  return v5;
}

@end