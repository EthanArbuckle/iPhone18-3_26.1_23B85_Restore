@interface IDSGFTMetricsLink
- (void)linkConnectedWithProtocolStack:(id)a3;
- (void)setChannelDataProtocolStack:(id)a3;
- (void)setIPVersion:(unsigned __int8)a3;
- (void)setIsLinkEngineLink:(BOOL)a3;
- (void)setIsTLEEnabled:(BOOL)a3;
- (void)setLinkType:(id)a3;
- (void)setLocalRAT:(unsigned int)a3;
- (void)setRelayProtocolStack:(id)a3;
- (void)setRemoteRAT:(unsigned int)a3;
@end

@implementation IDSGFTMetricsLink

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

- (void)linkConnectedWithProtocolStack:(id)a3
{
  v4 = a3;
  [(IDSGFTMetricsReferencePoint *)self event:@"lc"];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"lc-%@", v4];

  [(IDSGFTMetricsReferencePoint *)self event:v5];
}

@end