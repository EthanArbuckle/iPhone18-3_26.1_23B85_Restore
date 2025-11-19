@interface IDSGFTMetricsMTUChange
- (unsigned)_roundedMTU:(unsigned __int16)a3;
- (void)setChannelDataProtocolStack:(id)a3;
- (void)setIPVersion:(unsigned __int8)a3;
- (void)setIsLinkEngineLink:(BOOL)a3;
- (void)setIsTLEEnabled:(BOOL)a3;
- (void)setLinkType:(id)a3;
- (void)setLocalRAT:(unsigned int)a3;
- (void)setMTU:(unsigned __int16)a3 previous:(unsigned __int16)a4;
- (void)setRelayProtocolStack:(id)a3;
- (void)setRemoteRAT:(unsigned int)a3;
@end

@implementation IDSGFTMetricsMTUChange

- (void)setLinkType:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->super._lock);
  [(NSMutableDictionary *)self->super._attributes setObject:v4 forKeyedSubscript:@"t"];
  os_unfair_lock_unlock(&self->super._lock);
}

- (void)setLocalRAT:(unsigned int)a3
{
  os_unfair_lock_lock(&self->super._lock);
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:IDSRadioAccessTechnologyToString(a3)];
  [(NSMutableDictionary *)self->super._attributes setObject:v5 forKeyedSubscript:@"lrat"];

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)setRemoteRAT:(unsigned int)a3
{
  os_unfair_lock_lock(&self->super._lock);
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:IDSRadioAccessTechnologyToString(a3)];
  [(NSMutableDictionary *)self->super._attributes setObject:v5 forKeyedSubscript:@"rrat"];

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)setIPVersion:(unsigned __int8)a3
{
  v3 = a3;
  os_unfair_lock_lock(&self->super._lock);
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v3];
  [(NSMutableDictionary *)self->super._attributes setObject:v5 forKeyedSubscript:@"ipver"];

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)setRelayProtocolStack:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->super._lock);
  [(NSMutableDictionary *)self->super._attributes setObject:v4 forKeyedSubscript:@"rps"];
  os_unfair_lock_unlock(&self->super._lock);
}

- (void)setChannelDataProtocolStack:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->super._lock);
  [(NSMutableDictionary *)self->super._attributes setObject:v4 forKeyedSubscript:@"cdps"];
  os_unfair_lock_unlock(&self->super._lock);
}

- (void)setIsTLEEnabled:(BOOL)a3
{
  v3 = a3;
  os_unfair_lock_lock(&self->super._lock);
  v5 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  [(NSMutableDictionary *)self->super._attributes setObject:v5 forKeyedSubscript:@"tle"];

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)setIsLinkEngineLink:(BOOL)a3
{
  v3 = a3;
  os_unfair_lock_lock(&self->super._lock);
  v5 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  [(NSMutableDictionary *)self->super._attributes setObject:v5 forKeyedSubscript:@"le"];

  os_unfair_lock_unlock(&self->super._lock);
}

- (unsigned)_roundedMTU:(unsigned __int16)a3
{
  if (a3 > 0x5DCu)
  {
    return 1501;
  }

  if (a3 == 1500)
  {
    return 1500;
  }

  if (a3 > 0x5D3u)
  {
    return 1492;
  }

  if (a3 > 0x5A9u)
  {
    return 1450;
  }

  if (a3 > 0x595u)
  {
    return 1430;
  }

  if (a3 > 0x581u)
  {
    return 1410;
  }

  if (a3 > 0x56Du)
  {
    return 1390;
  }

  if (a3 > 0x559u)
  {
    return 1370;
  }

  if (a3 > 0x545u)
  {
    return 1350;
  }

  if (a3 > 0x513u)
  {
    return 1300;
  }

  if (a3 <= 0x4FFu)
  {
    return a3 != 0;
  }

  return 1280;
}

- (void)setMTU:(unsigned __int16)a3 previous:(unsigned __int16)a4
{
  v4 = a4;
  v5 = a3;
  [(IDSGFTMetricsReferencePoint *)self event:@"mtu-change"];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{-[IDSGFTMetricsMTUChange _roundedMTU:](self, "_roundedMTU:", v4)}];
  [(NSMutableDictionary *)self->super._attributes setObject:v7 forKeyedSubscript:@"old-mtu"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{-[IDSGFTMetricsMTUChange _roundedMTU:](self, "_roundedMTU:", v5)}];
  [(NSMutableDictionary *)self->super._attributes setObject:v8 forKeyedSubscript:@"mtu"];
}

@end