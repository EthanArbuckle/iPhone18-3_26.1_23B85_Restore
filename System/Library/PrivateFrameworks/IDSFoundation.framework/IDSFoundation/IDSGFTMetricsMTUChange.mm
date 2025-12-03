@interface IDSGFTMetricsMTUChange
- (unsigned)_roundedMTU:(unsigned __int16)u;
- (void)setChannelDataProtocolStack:(id)stack;
- (void)setIPVersion:(unsigned __int8)version;
- (void)setIsLinkEngineLink:(BOOL)link;
- (void)setIsTLEEnabled:(BOOL)enabled;
- (void)setLinkType:(id)type;
- (void)setLocalRAT:(unsigned int)t;
- (void)setMTU:(unsigned __int16)u previous:(unsigned __int16)previous;
- (void)setRelayProtocolStack:(id)stack;
- (void)setRemoteRAT:(unsigned int)t;
@end

@implementation IDSGFTMetricsMTUChange

- (void)setLinkType:(id)type
{
  typeCopy = type;
  os_unfair_lock_lock(&self->super._lock);
  [(NSMutableDictionary *)self->super._attributes setObject:typeCopy forKeyedSubscript:@"t"];
  os_unfair_lock_unlock(&self->super._lock);
}

- (void)setLocalRAT:(unsigned int)t
{
  os_unfair_lock_lock(&self->super._lock);
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:IDSRadioAccessTechnologyToString(t)];
  [(NSMutableDictionary *)self->super._attributes setObject:v5 forKeyedSubscript:@"lrat"];

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)setRemoteRAT:(unsigned int)t
{
  os_unfair_lock_lock(&self->super._lock);
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:IDSRadioAccessTechnologyToString(t)];
  [(NSMutableDictionary *)self->super._attributes setObject:v5 forKeyedSubscript:@"rrat"];

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)setIPVersion:(unsigned __int8)version
{
  versionCopy = version;
  os_unfair_lock_lock(&self->super._lock);
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:versionCopy];
  [(NSMutableDictionary *)self->super._attributes setObject:v5 forKeyedSubscript:@"ipver"];

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)setRelayProtocolStack:(id)stack
{
  stackCopy = stack;
  os_unfair_lock_lock(&self->super._lock);
  [(NSMutableDictionary *)self->super._attributes setObject:stackCopy forKeyedSubscript:@"rps"];
  os_unfair_lock_unlock(&self->super._lock);
}

- (void)setChannelDataProtocolStack:(id)stack
{
  stackCopy = stack;
  os_unfair_lock_lock(&self->super._lock);
  [(NSMutableDictionary *)self->super._attributes setObject:stackCopy forKeyedSubscript:@"cdps"];
  os_unfair_lock_unlock(&self->super._lock);
}

- (void)setIsTLEEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  os_unfair_lock_lock(&self->super._lock);
  v5 = [MEMORY[0x1E696AD98] numberWithBool:enabledCopy];
  [(NSMutableDictionary *)self->super._attributes setObject:v5 forKeyedSubscript:@"tle"];

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)setIsLinkEngineLink:(BOOL)link
{
  linkCopy = link;
  os_unfair_lock_lock(&self->super._lock);
  v5 = [MEMORY[0x1E696AD98] numberWithBool:linkCopy];
  [(NSMutableDictionary *)self->super._attributes setObject:v5 forKeyedSubscript:@"le"];

  os_unfair_lock_unlock(&self->super._lock);
}

- (unsigned)_roundedMTU:(unsigned __int16)u
{
  if (u > 0x5DCu)
  {
    return 1501;
  }

  if (u == 1500)
  {
    return 1500;
  }

  if (u > 0x5D3u)
  {
    return 1492;
  }

  if (u > 0x5A9u)
  {
    return 1450;
  }

  if (u > 0x595u)
  {
    return 1430;
  }

  if (u > 0x581u)
  {
    return 1410;
  }

  if (u > 0x56Du)
  {
    return 1390;
  }

  if (u > 0x559u)
  {
    return 1370;
  }

  if (u > 0x545u)
  {
    return 1350;
  }

  if (u > 0x513u)
  {
    return 1300;
  }

  if (u <= 0x4FFu)
  {
    return u != 0;
  }

  return 1280;
}

- (void)setMTU:(unsigned __int16)u previous:(unsigned __int16)previous
{
  previousCopy = previous;
  uCopy = u;
  [(IDSGFTMetricsReferencePoint *)self event:@"mtu-change"];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{-[IDSGFTMetricsMTUChange _roundedMTU:](self, "_roundedMTU:", previousCopy)}];
  [(NSMutableDictionary *)self->super._attributes setObject:v7 forKeyedSubscript:@"old-mtu"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{-[IDSGFTMetricsMTUChange _roundedMTU:](self, "_roundedMTU:", uCopy)}];
  [(NSMutableDictionary *)self->super._attributes setObject:v8 forKeyedSubscript:@"mtu"];
}

@end