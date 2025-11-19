@interface CDMQRResponseCommand
+ (id)convertRewriteHypo2RewriteMsgForInfoDomains:(id)a3;
- (CDMQRResponseCommand)initWithResponse:(id)a3;
@end

@implementation CDMQRResponseCommand

- (CDMQRResponseCommand)initWithResponse:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CDMQRResponseCommand;
  v5 = [(CDMBaseCommand *)&v13 init];
  if (v5)
  {
    v6 = [v4 copy];
    qrResponse = v5->_qrResponse;
    v5->_qrResponse = v6;

    v8 = [(SIRINLUINTERNALQUERYREWRITEQRResponse *)v5->_qrResponse rewriteHypotheses];
    v9 = [v8 firstObject];

    v10 = [CDMQRResponseCommand convertRewriteHypo2RewriteMsgForInfoDomains:v9];
    rewriteMsg = v5->_rewriteMsg;
    v5->_rewriteMsg = v10;
  }

  return v5;
}

+ (id)convertRewriteHypo2RewriteMsgForInfoDomains:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    v6 = 0;
    goto LABEL_11;
  }

  v4 = objc_opt_new();
  if (![v3 rewriteType])
  {
    v7 = [v3 utterance];
    v8 = [v7 length];

    if (v8)
    {
      v5 = 2;
      goto LABEL_9;
    }
  }

  if ([v3 rewriteType] == 1)
  {
    v5 = 1;
LABEL_9:
    [v4 setRewriteType:v5];
    v9 = [v3 utterance];
    [v4 setRewrittenUtterance:v9];

    v6 = v4;
    goto LABEL_10;
  }

  v6 = 0;
LABEL_10:

LABEL_11:

  return v6;
}

@end