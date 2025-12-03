@interface MSParsecSearchSessionMessageResult
+ (id)resultWithIdentifier:(id)identifier;
+ (id)resultWithIdentifier:(id)identifier date:(id)date;
+ (id)resultWithIdentifier:(id)identifier date:(id)date mailRankingSignals:(id)signals;
- (id)feedbackResult;
- (id)initResultWithIdentifier:(id)identifier date:(id)date;
- (id)initResultWithIdentifier:(id)identifier date:(id)date mailRankingSignals:(id)signals;
@end

@implementation MSParsecSearchSessionMessageResult

+ (id)resultWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [[self alloc] initResultWithIdentifier:identifierCopy date:0];

  return v5;
}

+ (id)resultWithIdentifier:(id)identifier date:(id)date
{
  identifierCopy = identifier;
  dateCopy = date;
  v8 = [[self alloc] initResultWithIdentifier:identifierCopy date:dateCopy];

  return v8;
}

+ (id)resultWithIdentifier:(id)identifier date:(id)date mailRankingSignals:(id)signals
{
  identifierCopy = identifier;
  dateCopy = date;
  signalsCopy = signals;
  v11 = [[self alloc] initResultWithIdentifier:identifierCopy date:dateCopy mailRankingSignals:signalsCopy];

  return v11;
}

- (id)initResultWithIdentifier:(id)identifier date:(id)date
{
  identifierCopy = identifier;
  dateCopy = date;
  v12.receiver = self;
  v12.super_class = MSParsecSearchSessionMessageResult;
  v9 = [(MSParsecSearchSessionMessageResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_resultID, identifier);
    v10->_messageAge = [MEMORY[0x277D07198] bucketedMessageAgeSinceDate:dateCopy leadingDigits:2];
  }

  return v10;
}

- (id)initResultWithIdentifier:(id)identifier date:(id)date mailRankingSignals:(id)signals
{
  signalsCopy = signals;
  v10 = [(MSParsecSearchSessionMessageResult *)self initResultWithIdentifier:identifier date:date];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(v10 + 3, signals);
  }

  return v11;
}

- (id)feedbackResult
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D4C5D0]);
  resultID = [(MSParsecSearchSessionMessageResult *)self resultID];
  [v3 setIdentifier:resultID];

  v10 = @"messageAgeInDays";
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[MSParsecSearchSessionMessageResult messageAge](self, "messageAge")}];
  v11[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  [v3 setLocalFeatures:v6];

  [v3 setType:2];
  mailRankingSignals = [(MSParsecSearchSessionMessageResult *)self mailRankingSignals];
  [v3 setMailRankingSignals:mailRankingSignals];

  v8 = *MEMORY[0x277D85DE8];

  return v3;
}

@end