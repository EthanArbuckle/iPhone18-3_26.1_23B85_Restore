@interface TDMTestServer
- (BOOL)validateOutput:(id)output TID:(id)d;
- (TDMTestServer)init;
- (id)evaluate:(id)evaluate error:(id *)error;
@end

@implementation TDMTestServer

- (TDMTestServer)init
{
  v6.receiver = self;
  v6.super_class = TDMTestServer;
  v2 = [(TDMTestServer *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(_TtC16CryptoKitPrivate9TDMServer);
    tdmServer = v2->_tdmServer;
    v2->_tdmServer = v3;
  }

  return v2;
}

- (id)evaluate:(id)evaluate error:(id *)error
{
  v4 = [(TDMServer *)self->_tdmServer evaluateWithBlindedElement:evaluate error:error];
  if (v4)
  {
    v5 = [TDMEvaluation alloc];
    evaluatedElement = [v4 evaluatedElement];
    proof = [v4 proof];
    v8 = [(TDMEvaluation *)v5 initWithEvaluatedElement:evaluatedElement proof:proof];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)validateOutput:(id)output TID:(id)d
{
  tdmServer = self->_tdmServer;
  dCopy = d;
  outputCopy = output;
  v9 = [(TDMTestServer *)self FSR];
  LOBYTE(tdmServer) = [(TDMServer *)tdmServer verifyTokenWithOutput:outputCopy TID:dCopy FSR:v9];

  return tdmServer;
}

@end