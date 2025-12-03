@interface CDMQRResponseCommand
+ (id)convertRewriteHypo2RewriteMsgForInfoDomains:(id)domains;
- (CDMQRResponseCommand)initWithResponse:(id)response;
@end

@implementation CDMQRResponseCommand

- (CDMQRResponseCommand)initWithResponse:(id)response
{
  responseCopy = response;
  v13.receiver = self;
  v13.super_class = CDMQRResponseCommand;
  v5 = [(CDMBaseCommand *)&v13 init];
  if (v5)
  {
    v6 = [responseCopy copy];
    qrResponse = v5->_qrResponse;
    v5->_qrResponse = v6;

    rewriteHypotheses = [(SIRINLUINTERNALQUERYREWRITEQRResponse *)v5->_qrResponse rewriteHypotheses];
    firstObject = [rewriteHypotheses firstObject];

    v10 = [CDMQRResponseCommand convertRewriteHypo2RewriteMsgForInfoDomains:firstObject];
    rewriteMsg = v5->_rewriteMsg;
    v5->_rewriteMsg = v10;
  }

  return v5;
}

+ (id)convertRewriteHypo2RewriteMsgForInfoDomains:(id)domains
{
  domainsCopy = domains;
  if (!domainsCopy)
  {
    v6 = 0;
    goto LABEL_11;
  }

  v4 = objc_opt_new();
  if (![domainsCopy rewriteType])
  {
    utterance = [domainsCopy utterance];
    v8 = [utterance length];

    if (v8)
    {
      v5 = 2;
      goto LABEL_9;
    }
  }

  if ([domainsCopy rewriteType] == 1)
  {
    v5 = 1;
LABEL_9:
    [v4 setRewriteType:v5];
    utterance2 = [domainsCopy utterance];
    [v4 setRewrittenUtterance:utterance2];

    v6 = v4;
    goto LABEL_10;
  }

  v6 = 0;
LABEL_10:

LABEL_11:

  return v6;
}

@end