@interface IDSGFTMetricsLink
- (void)linkConnectedWithProtocolStack:(id)stack;
- (void)setChannelDataProtocolStack:(id)stack;
- (void)setIPVersion:(unsigned __int8)version;
- (void)setIsLinkEngineLink:(BOOL)link;
- (void)setIsTLEEnabled:(BOOL)enabled;
- (void)setLinkType:(id)type;
- (void)setLocalRAT:(unsigned int)t;
- (void)setRelayProtocolStack:(id)stack;
- (void)setRemoteRAT:(unsigned int)t;
@end

@implementation IDSGFTMetricsLink

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

- (void)linkConnectedWithProtocolStack:(id)stack
{
  stackCopy = stack;
  [(IDSGFTMetricsReferencePoint *)self event:@"lc"];
  stackCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"lc-%@", stackCopy];

  [(IDSGFTMetricsReferencePoint *)self event:stackCopy];
}

@end