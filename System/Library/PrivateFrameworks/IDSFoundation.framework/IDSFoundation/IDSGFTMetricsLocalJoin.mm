@interface IDSGFTMetricsLocalJoin
- (void)allocbindResponseForProtocolStack:(id)stack;
- (void)allocbindResponseFromInterface:(id)interface;
- (void)endWithReason:(unsigned int)reason;
- (void)linkConnectedWithH2FallbackEnabled:(BOOL)enabled;
- (void)selectedLocalInterface:(id)interface;
- (void)sendMKMToAVC:(id)c isGeneratedLocally:(BOOL)locally;
- (void)willSendAllocbindRequestThroughInterface:(id)interface;
@end

@implementation IDSGFTMetricsLocalJoin

- (void)selectedLocalInterface:(id)interface
{
  interface = [MEMORY[0x1E696AEC0] stringWithFormat:@"slif-%@", interface];
  [(IDSGFTMetricsReferencePoint *)self event:interface];
}

- (void)willSendAllocbindRequestThroughInterface:(id)interface
{
  interface = [MEMORY[0x1E696AEC0] stringWithFormat:@"will-abreq-lif-%@", interface];
  [(IDSGFTMetricsReferencePoint *)self event:interface];
}

- (void)allocbindResponseFromInterface:(id)interface
{
  interface = [MEMORY[0x1E696AEC0] stringWithFormat:@"abrsp-lif-%@", interface];
  [(IDSGFTMetricsReferencePoint *)self event:interface];
}

- (void)allocbindResponseForProtocolStack:(id)stack
{
  stack = [MEMORY[0x1E696AEC0] stringWithFormat:@"abrsp-%@", stack];
  [(IDSGFTMetricsReferencePoint *)self event:stack];
}

- (void)linkConnectedWithH2FallbackEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = @"cl-h2e";
  }

  else
  {
    v3 = @"cl-h2ne";
  }

  [(IDSGFTMetricsReferencePoint *)self event:v3];
}

- (void)sendMKMToAVC:(id)c isGeneratedLocally:(BOOL)locally
{
  if (locally)
  {
    v4 = @"lmkm-avc";
  }

  else
  {
    v4 = @"rmkm-avc";
  }

  [(IDSGFTMetricsReferencePoint *)self event:v4];
}

- (void)endWithReason:(unsigned int)reason
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"end-reason-%u", *&reason];
  [(IDSGFTMetricsReferencePoint *)self event:v4];
}

@end