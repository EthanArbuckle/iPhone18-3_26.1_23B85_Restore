@interface IDSGFTMetricsLocalJoin
- (void)allocbindResponseForProtocolStack:(id)a3;
- (void)allocbindResponseFromInterface:(id)a3;
- (void)endWithReason:(unsigned int)a3;
- (void)linkConnectedWithH2FallbackEnabled:(BOOL)a3;
- (void)selectedLocalInterface:(id)a3;
- (void)sendMKMToAVC:(id)a3 isGeneratedLocally:(BOOL)a4;
- (void)willSendAllocbindRequestThroughInterface:(id)a3;
@end

@implementation IDSGFTMetricsLocalJoin

- (void)selectedLocalInterface:(id)a3
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"slif-%@", a3];
  [(IDSGFTMetricsReferencePoint *)self event:v4];
}

- (void)willSendAllocbindRequestThroughInterface:(id)a3
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"will-abreq-lif-%@", a3];
  [(IDSGFTMetricsReferencePoint *)self event:v4];
}

- (void)allocbindResponseFromInterface:(id)a3
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"abrsp-lif-%@", a3];
  [(IDSGFTMetricsReferencePoint *)self event:v4];
}

- (void)allocbindResponseForProtocolStack:(id)a3
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"abrsp-%@", a3];
  [(IDSGFTMetricsReferencePoint *)self event:v4];
}

- (void)linkConnectedWithH2FallbackEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = @"cl-h2e";
  }

  else
  {
    v3 = @"cl-h2ne";
  }

  [(IDSGFTMetricsReferencePoint *)self event:v3];
}

- (void)sendMKMToAVC:(id)a3 isGeneratedLocally:(BOOL)a4
{
  if (a4)
  {
    v4 = @"lmkm-avc";
  }

  else
  {
    v4 = @"rmkm-avc";
  }

  [(IDSGFTMetricsReferencePoint *)self event:v4];
}

- (void)endWithReason:(unsigned int)a3
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"end-reason-%u", *&a3];
  [(IDSGFTMetricsReferencePoint *)self event:v4];
}

@end