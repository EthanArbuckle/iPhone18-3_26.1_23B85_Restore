@interface MSPWalletRAPReport
- (BOOL)isAppleCard;
- (NSString)correlationId;
- (NSString)merchantAdamId;
- (NSString)reportersComment;
- (id)initForMerchantIssue:(unint64_t)a3 merchantIndustryCode:(int64_t)a4 mapsIdentifier:(unint64_t)a5 merchantName:(id)a6 merchantRawName:(id)a7 merchantIndustryCategory:(id)a8 merchantURL:(id)a9 merchantFormattedAddress:(id)a10 transactionTime:(double)a11 transactionType:(id)a12 transactionLocation:(id)a13 bankTransactionInformation:(id)a14;
- (unint64_t)lookupTransactionType;
- (void)setCorrelationId:(id)a3;
- (void)setLookupTransactionType:(unint64_t)a3;
- (void)setMerchantAdamId:(id)a3;
- (void)setReportersComment:(id)a3;
@end

@implementation MSPWalletRAPReport

- (id)initForMerchantIssue:(unint64_t)a3 merchantIndustryCode:(int64_t)a4 mapsIdentifier:(unint64_t)a5 merchantName:(id)a6 merchantRawName:(id)a7 merchantIndustryCategory:(id)a8 merchantURL:(id)a9 merchantFormattedAddress:(id)a10 transactionTime:(double)a11 transactionType:(id)a12 transactionLocation:(id)a13 bankTransactionInformation:(id)a14
{
  var1 = a13.var1;
  var0 = a13.var0;
  v46 = a3;
  v21 = a6;
  v22 = a7;
  v23 = a8;
  v24 = a9;
  v25 = a10;
  v26 = a12;
  v27 = a14;
  v47.receiver = self;
  v47.super_class = MSPWalletRAPReport;
  v28 = [(MSPWalletRAPReport *)&v47 init];
  if (v28)
  {
    v29 = [objc_alloc(MEMORY[0x277D0EC10]) initWithMSPWalletBankTransactionInformation:v27 rawMerchantCode:v22 industryCategory:v23];
    v30 = objc_alloc(MEMORY[0x277D0EC88]);
    v42 = v29;
    v43 = v26;
    v31 = a5;
    v45 = v24;
    v32 = [v30 initWithMerchantIndustryCode:a4 mapsIdentifier:v31 merchantName:v21 merchantRawName:v22 merchantIndustryCategory:v23 merchantURL:v24 merchantFormattedAddress:a11 transactionTime:var0 transactionType:var1 transactionLocation:v25 merchantBankTransactionInfo:{v26, v29}];
    requestParameters = v28->_requestParameters;
    v28->_requestParameters = v32;

    v34 = objc_alloc_init(MEMORY[0x277D0EC98]);
    v35 = v34;
    v36 = v21;
    v37 = v22;
    if ((v46 & 2) != 0)
    {
      [v34 setIsMerchantIncorrect:1];
      if ((v46 & 1) == 0)
      {
LABEL_4:
        if ((v46 & 4) == 0)
        {
LABEL_6:
          v38 = [(GEORPFeedbackRequestParameters *)v28->_requestParameters submissionParameters];
          v39 = [v38 details];
          v40 = [v39 merchantLookupFeedback];
          [v40 setCorrections:v35];

          v21 = v36;
          v22 = v37;
          v26 = v43;
          v24 = v45;
          goto LABEL_7;
        }

LABEL_5:
        [v35 setIsOtherIssue:1];
        goto LABEL_6;
      }
    }

    else if ((v46 & 1) == 0)
    {
      goto LABEL_4;
    }

    [v35 setIsCategoryIncorrect:1];
    if ((v46 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_7:

  return v28;
}

- (void)setMerchantAdamId:(id)a3
{
  v8 = [a3 copy];
  v4 = [(GEORPFeedbackRequestParameters *)self->_requestParameters submissionParameters];
  v5 = [v4 details];
  v6 = [v5 merchantLookupFeedback];
  v7 = [v6 context];
  [v7 setMerchantAdamId:v8];
}

- (NSString)merchantAdamId
{
  v2 = [(GEORPFeedbackRequestParameters *)self->_requestParameters submissionParameters];
  v3 = [v2 details];
  v4 = [v3 merchantLookupFeedback];
  v5 = [v4 context];
  v6 = [v5 merchantAdamId];

  return v6;
}

- (void)setReportersComment:(id)a3
{
  v11 = a3;
  v4 = [(GEORPFeedbackRequestParameters *)self->_requestParameters submissionParameters];
  v5 = [v4 commonCorrections];

  if (!v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277D0EC78]);
    v7 = [(GEORPFeedbackRequestParameters *)self->_requestParameters submissionParameters];
    [v7 setCommonCorrections:v6];
  }

  v8 = [v11 copy];
  v9 = [(GEORPFeedbackRequestParameters *)self->_requestParameters submissionParameters];
  v10 = [v9 commonCorrections];
  [v10 setComments:v8];
}

- (NSString)reportersComment
{
  v2 = [(GEORPFeedbackRequestParameters *)self->_requestParameters submissionParameters];
  v3 = [v2 commonCorrections];
  v4 = [v3 comments];

  return v4;
}

- (void)setCorrelationId:(id)a3
{
  v8 = [a3 copy];
  v4 = [(GEORPFeedbackRequestParameters *)self->_requestParameters submissionParameters];
  v5 = [v4 details];
  v6 = [v5 merchantLookupFeedback];
  v7 = [v6 context];
  [v7 setCorrelationId:v8];
}

- (NSString)correlationId
{
  v2 = [(GEORPFeedbackRequestParameters *)self->_requestParameters submissionParameters];
  v3 = [v2 details];
  v4 = [v3 merchantLookupFeedback];
  v5 = [v4 context];
  v6 = [v5 correlationId];

  return v6;
}

- (BOOL)isAppleCard
{
  v2 = [(GEORPFeedbackRequestParameters *)self->_requestParameters submissionParameters];
  v3 = [v2 details];
  v4 = [v3 merchantLookupFeedback];
  v5 = [v4 context];
  v6 = [v5 isAppleCard];

  return v6;
}

- (unint64_t)lookupTransactionType
{
  v2 = [(GEORPFeedbackRequestParameters *)self->_requestParameters submissionParameters];
  v3 = [v2 details];
  v4 = [v3 merchantLookupFeedback];
  v5 = [v4 context];
  v6 = [v5 requestTransactionType];

  return v6;
}

- (void)setLookupTransactionType:(unint64_t)a3
{
  v7 = [(GEORPFeedbackRequestParameters *)self->_requestParameters submissionParameters];
  v4 = [v7 details];
  v5 = [v4 merchantLookupFeedback];
  v6 = [v5 context];
  [v6 setRequestTransactionType:a3];
}

@end