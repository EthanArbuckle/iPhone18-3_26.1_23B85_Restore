@interface IDSQRH3ChannelConfigRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)to;
@end

@implementation IDSQRH3ChannelConfigRequest

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IDSQRH3ChannelConfigRequest;
  v4 = [(IDSQRH3ChannelConfigRequest *)&v8 description];
  dictionaryRepresentation = [(IDSQRH3ChannelConfigRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_overrideIdleTimeoutSeconds];
  [dictionary setObject:v4 forKey:@"override_idle_timeout_seconds"];

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_configCounter];
  [dictionary setObject:v5 forKey:@"config_counter"];

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
  *(result + 3) = self->_overrideIdleTimeoutSeconds;
  *(result + 2) = self->_configCounter;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [equalCopy isMemberOfClass:objc_opt_class()] && self->_overrideIdleTimeoutSeconds == equalCopy[3] && self->_configCounter == equalCopy[2];

  return v5;
}

@end