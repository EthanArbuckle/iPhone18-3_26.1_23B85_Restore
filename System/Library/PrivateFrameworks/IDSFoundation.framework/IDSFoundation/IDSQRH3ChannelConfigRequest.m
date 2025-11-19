@interface IDSQRH3ChannelConfigRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)a3;
@end

@implementation IDSQRH3ChannelConfigRequest

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IDSQRH3ChannelConfigRequest;
  v4 = [(IDSQRH3ChannelConfigRequest *)&v8 description];
  v5 = [(IDSQRH3ChannelConfigRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_overrideIdleTimeoutSeconds];
  [v3 setObject:v4 forKey:@"override_idle_timeout_seconds"];

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_configCounter];
  [v3 setObject:v5 forKey:@"config_counter"];

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
  *(result + 3) = self->_overrideIdleTimeoutSeconds;
  *(result + 2) = self->_configCounter;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [v4 isMemberOfClass:objc_opt_class()] && self->_overrideIdleTimeoutSeconds == v4[3] && self->_configCounter == v4[2];

  return v5;
}

@end