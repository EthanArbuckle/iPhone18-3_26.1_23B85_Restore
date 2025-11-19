@interface IDSGFTMetricsJoinCycle
- (IDSGFTMetricsJoinCycle)initWithFromType:(id)a3 fromUniqueID:(id)a4 anonymizer:(id)a5 templateDictionary:(id)a6;
- (void)decryptedBlobOverQUIC:(id)a3;
- (void)remoteDidBecomeActive;
@end

@implementation IDSGFTMetricsJoinCycle

- (IDSGFTMetricsJoinCycle)initWithFromType:(id)a3 fromUniqueID:(id)a4 anonymizer:(id)a5 templateDictionary:(id)a6
{
  v7.receiver = self;
  v7.super_class = IDSGFTMetricsJoinCycle;
  result = [(IDSGFTMetricsReferencePoint *)&v7 initWithFromType:a3 fromUniqueID:a4 anonymizer:a5 templateDictionary:a6];
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

- (void)decryptedBlobOverQUIC:(id)a3
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-quic", a3];
  [(IDSGFTMetricsReferencePoint *)self event:v4];
}

@end