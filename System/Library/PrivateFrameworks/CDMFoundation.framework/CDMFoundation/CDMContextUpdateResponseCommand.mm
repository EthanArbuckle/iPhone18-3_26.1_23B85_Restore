@interface CDMContextUpdateResponseCommand
- (CDMContextUpdateResponseCommand)initWithCtxUpdateResponse:(id)response;
@end

@implementation CDMContextUpdateResponseCommand

- (CDMContextUpdateResponseCommand)initWithCtxUpdateResponse:(id)response
{
  responseCopy = response;
  v16.receiver = self;
  v16.super_class = CDMContextUpdateResponseCommand;
  v6 = [(CDMBaseCommand *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_ctxUpdateResponse, response);
    correctionOutcome = v7->_correctionOutcome;
    v7->_correctionOutcome = 0;

    reformedTurnInputBundles = [responseCopy reformedTurnInputBundles];
    firstObject = [reformedTurnInputBundles firstObject];
    firstReformedInput = v7->_firstReformedInput;
    v7->_firstReformedInput = firstObject;

    v12 = v7->_firstReformedInput;
    if (v12)
    {
      if ([(SIRINLUINTERNALCONTEXTUPDATEReformedTurnInputBundle *)v12 type]== 1 || [(SIRINLUINTERNALCONTEXTUPDATEReformedTurnInputBundle *)v7->_firstReformedInput type]== 3)
      {
        v13 = objc_opt_new();
        v14 = v7->_correctionOutcome;
        v7->_correctionOutcome = v13;

        [(SIRINLUEXTERNALCorrectionOutcome *)v7->_correctionOutcome setType:1];
      }
    }
  }

  return v7;
}

@end