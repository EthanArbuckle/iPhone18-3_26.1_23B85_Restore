@interface IDSQRH3ChannelConfigResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)to;
@end

@implementation IDSQRH3ChannelConfigResponse

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IDSQRH3ChannelConfigResponse;
  v4 = [(IDSQRH3ChannelConfigResponse *)&v8 description];
  dictionaryRepresentation = [(IDSQRH3ChannelConfigResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_effectiveIdleTimeoutSeconds];
  [dictionary setObject:v4 forKey:@"effective_idle_timeout_seconds"];

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_effectiveConfigCounter];
  [dictionary setObject:v5 forKey:@"effective_config_counter"];

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  PBDataWriterWriteUint32Field();
  PBDataWriterWriteUint32Field();
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(result + 3) = self->_effectiveIdleTimeoutSeconds;
  *(result + 2) = self->_effectiveConfigCounter;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [equalCopy isMemberOfClass:objc_opt_class()] && self->_effectiveIdleTimeoutSeconds == equalCopy[3] && self->_effectiveConfigCounter == equalCopy[2];

  return v5;
}

@end