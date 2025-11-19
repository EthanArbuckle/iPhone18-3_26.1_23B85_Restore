@interface IDSQRH3ChannelConfigResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)a3;
@end

@implementation IDSQRH3ChannelConfigResponse

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IDSQRH3ChannelConfigResponse;
  v4 = [(IDSQRH3ChannelConfigResponse *)&v8 description];
  v5 = [(IDSQRH3ChannelConfigResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_effectiveIdleTimeoutSeconds];
  [v3 setObject:v4 forKey:@"effective_idle_timeout_seconds"];

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_effectiveConfigCounter];
  [v3 setObject:v5 forKey:@"effective_config_counter"];

  return v3;
}

- (void)writeTo:(id)a3
{
  v3 = a3;
  PBDataWriterWriteUint32Field();
  PBDataWriterWriteUint32Field();
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(result + 3) = self->_effectiveIdleTimeoutSeconds;
  *(result + 2) = self->_effectiveConfigCounter;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [v4 isMemberOfClass:objc_opt_class()] && self->_effectiveIdleTimeoutSeconds == v4[3] && self->_effectiveConfigCounter == v4[2];

  return v5;
}

@end