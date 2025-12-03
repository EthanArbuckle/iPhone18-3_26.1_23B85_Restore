@interface IDSGFTMetricsJoinCycle
- (IDSGFTMetricsJoinCycle)initWithFromType:(id)type fromUniqueID:(id)d anonymizer:(id)anonymizer templateDictionary:(id)dictionary;
- (void)decryptedBlobOverQUIC:(id)c;
- (void)remoteDidBecomeActive;
@end

@implementation IDSGFTMetricsJoinCycle

- (IDSGFTMetricsJoinCycle)initWithFromType:(id)type fromUniqueID:(id)d anonymizer:(id)anonymizer templateDictionary:(id)dictionary
{
  v7.receiver = self;
  v7.super_class = IDSGFTMetricsJoinCycle;
  result = [(IDSGFTMetricsReferencePoint *)&v7 initWithFromType:type fromUniqueID:d anonymizer:anonymizer templateDictionary:dictionary];
  if (result)
  {
    result->_remoteActiveTime = -1.0;
  }

  return result;
}

- (void)remoteDidBecomeActive
{
  if (self->_remoteActiveTime < 0.0)
  {
    self->_remoteActiveTime = ids_monotonic_time();

    [(IDSGFTMetricsReferencePoint *)self event:@"ra"];
  }
}

- (void)decryptedBlobOverQUIC:(id)c
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-quic", c];
  [(IDSGFTMetricsReferencePoint *)self event:v4];
}

@end