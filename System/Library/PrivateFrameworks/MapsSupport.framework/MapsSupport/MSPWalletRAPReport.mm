@interface MSPWalletRAPReport
- (BOOL)isAppleCard;
- (NSString)correlationId;
- (NSString)merchantAdamId;
- (NSString)reportersComment;
- (id)initForMerchantIssue:(unint64_t)issue merchantIndustryCode:(int64_t)code mapsIdentifier:(unint64_t)identifier merchantName:(id)name merchantRawName:(id)rawName merchantIndustryCategory:(id)category merchantURL:(id)l merchantFormattedAddress:(id)self0 transactionTime:(double)self1 transactionType:(id)self2 transactionLocation:(id)self3 bankTransactionInformation:(id)self4;
- (unint64_t)lookupTransactionType;
- (void)setCorrelationId:(id)id;
- (void)setLookupTransactionType:(unint64_t)type;
- (void)setMerchantAdamId:(id)id;
- (void)setReportersComment:(id)comment;
@end

@implementation MSPWalletRAPReport

- (id)initForMerchantIssue:(unint64_t)issue merchantIndustryCode:(int64_t)code mapsIdentifier:(unint64_t)identifier merchantName:(id)name merchantRawName:(id)rawName merchantIndustryCategory:(id)category merchantURL:(id)l merchantFormattedAddress:(id)self0 transactionTime:(double)self1 transactionType:(id)self2 transactionLocation:(id)self3 bankTransactionInformation:(id)self4
{
  var1 = location.var1;
  var0 = location.var0;
  issueCopy = issue;
  nameCopy = name;
  rawNameCopy = rawName;
  categoryCopy = category;
  lCopy = l;
  addressCopy = address;
  typeCopy = type;
  informationCopy = information;
  v47.receiver = self;
  v47.super_class = MSPWalletRAPReport;
  v28 = [(MSPWalletRAPReport *)&v47 init];
  if (v28)
  {
    v29 = [objc_alloc(MEMORY[0x277D0EC10]) initWithMSPWalletBankTransactionInformation:informationCopy rawMerchantCode:rawNameCopy industryCategory:categoryCopy];
    v30 = objc_alloc(MEMORY[0x277D0EC88]);
    v42 = v29;
    v43 = typeCopy;
    identifierCopy = identifier;
    v45 = lCopy;
    v32 = [v30 initWithMerchantIndustryCode:code mapsIdentifier:identifierCopy merchantName:nameCopy merchantRawName:rawNameCopy merchantIndustryCategory:categoryCopy merchantURL:lCopy merchantFormattedAddress:time transactionTime:var0 transactionType:var1 transactionLocation:addressCopy merchantBankTransactionInfo:{typeCopy, v29}];
    requestParameters = v28->_requestParameters;
    v28->_requestParameters = v32;

    v34 = objc_alloc_init(MEMORY[0x277D0EC98]);
    v35 = v34;
    v36 = nameCopy;
    v37 = rawNameCopy;
    if ((issueCopy & 2) != 0)
    {
      [v34 setIsMerchantIncorrect:1];
      if ((issueCopy & 1) == 0)
      {
LABEL_4:
        if ((issueCopy & 4) == 0)
        {
LABEL_6:
          submissionParameters = [(GEORPFeedbackRequestParameters *)v28->_requestParameters submissionParameters];
          details = [submissionParameters details];
          merchantLookupFeedback = [details merchantLookupFeedback];
          [merchantLookupFeedback setCorrections:v35];

          nameCopy = v36;
          rawNameCopy = v37;
          typeCopy = v43;
          lCopy = v45;
          goto LABEL_7;
        }

LABEL_5:
        [v35 setIsOtherIssue:1];
        goto LABEL_6;
      }
    }

    else if ((issueCopy & 1) == 0)
    {
      goto LABEL_4;
    }

    [v35 setIsCategoryIncorrect:1];
    if ((issueCopy & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_7:

  return v28;
}

- (void)setMerchantAdamId:(id)id
{
  v8 = [id copy];
  submissionParameters = [(GEORPFeedbackRequestParameters *)self->_requestParameters submissionParameters];
  details = [submissionParameters details];
  merchantLookupFeedback = [details merchantLookupFeedback];
  context = [merchantLookupFeedback context];
  [context setMerchantAdamId:v8];
}

- (NSString)merchantAdamId
{
  submissionParameters = [(GEORPFeedbackRequestParameters *)self->_requestParameters submissionParameters];
  details = [submissionParameters details];
  merchantLookupFeedback = [details merchantLookupFeedback];
  context = [merchantLookupFeedback context];
  merchantAdamId = [context merchantAdamId];

  return merchantAdamId;
}

- (void)setReportersComment:(id)comment
{
  commentCopy = comment;
  submissionParameters = [(GEORPFeedbackRequestParameters *)self->_requestParameters submissionParameters];
  commonCorrections = [submissionParameters commonCorrections];

  if (!commonCorrections)
  {
    v6 = objc_alloc_init(MEMORY[0x277D0EC78]);
    submissionParameters2 = [(GEORPFeedbackRequestParameters *)self->_requestParameters submissionParameters];
    [submissionParameters2 setCommonCorrections:v6];
  }

  v8 = [commentCopy copy];
  submissionParameters3 = [(GEORPFeedbackRequestParameters *)self->_requestParameters submissionParameters];
  commonCorrections2 = [submissionParameters3 commonCorrections];
  [commonCorrections2 setComments:v8];
}

- (NSString)reportersComment
{
  submissionParameters = [(GEORPFeedbackRequestParameters *)self->_requestParameters submissionParameters];
  commonCorrections = [submissionParameters commonCorrections];
  comments = [commonCorrections comments];

  return comments;
}

- (void)setCorrelationId:(id)id
{
  v8 = [id copy];
  submissionParameters = [(GEORPFeedbackRequestParameters *)self->_requestParameters submissionParameters];
  details = [submissionParameters details];
  merchantLookupFeedback = [details merchantLookupFeedback];
  context = [merchantLookupFeedback context];
  [context setCorrelationId:v8];
}

- (NSString)correlationId
{
  submissionParameters = [(GEORPFeedbackRequestParameters *)self->_requestParameters submissionParameters];
  details = [submissionParameters details];
  merchantLookupFeedback = [details merchantLookupFeedback];
  context = [merchantLookupFeedback context];
  correlationId = [context correlationId];

  return correlationId;
}

- (BOOL)isAppleCard
{
  submissionParameters = [(GEORPFeedbackRequestParameters *)self->_requestParameters submissionParameters];
  details = [submissionParameters details];
  merchantLookupFeedback = [details merchantLookupFeedback];
  context = [merchantLookupFeedback context];
  isAppleCard = [context isAppleCard];

  return isAppleCard;
}

- (unint64_t)lookupTransactionType
{
  submissionParameters = [(GEORPFeedbackRequestParameters *)self->_requestParameters submissionParameters];
  details = [submissionParameters details];
  merchantLookupFeedback = [details merchantLookupFeedback];
  context = [merchantLookupFeedback context];
  requestTransactionType = [context requestTransactionType];

  return requestTransactionType;
}

- (void)setLookupTransactionType:(unint64_t)type
{
  submissionParameters = [(GEORPFeedbackRequestParameters *)self->_requestParameters submissionParameters];
  details = [submissionParameters details];
  merchantLookupFeedback = [details merchantLookupFeedback];
  context = [merchantLookupFeedback context];
  [context setRequestTransactionType:type];
}

@end