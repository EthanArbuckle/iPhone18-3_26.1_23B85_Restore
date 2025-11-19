@interface MSParsecSearchSessionMessageResult
+ (id)resultWithIdentifier:(id)a3;
+ (id)resultWithIdentifier:(id)a3 date:(id)a4;
+ (id)resultWithIdentifier:(id)a3 date:(id)a4 mailRankingSignals:(id)a5;
- (id)feedbackResult;
- (id)initResultWithIdentifier:(id)a3 date:(id)a4;
- (id)initResultWithIdentifier:(id)a3 date:(id)a4 mailRankingSignals:(id)a5;
@end

@implementation MSParsecSearchSessionMessageResult

+ (id)resultWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initResultWithIdentifier:v4 date:0];

  return v5;
}

+ (id)resultWithIdentifier:(id)a3 date:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[a1 alloc] initResultWithIdentifier:v6 date:v7];

  return v8;
}

+ (id)resultWithIdentifier:(id)a3 date:(id)a4 mailRankingSignals:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [[a1 alloc] initResultWithIdentifier:v8 date:v9 mailRankingSignals:v10];

  return v11;
}

- (id)initResultWithIdentifier:(id)a3 date:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MSParsecSearchSessionMessageResult;
  v9 = [(MSParsecSearchSessionMessageResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_resultID, a3);
    v10->_messageAge = [MEMORY[0x277D07198] bucketedMessageAgeSinceDate:v8 leadingDigits:2];
  }

  return v10;
}

- (id)initResultWithIdentifier:(id)a3 date:(id)a4 mailRankingSignals:(id)a5
{
  v9 = a5;
  v10 = [(MSParsecSearchSessionMessageResult *)self initResultWithIdentifier:a3 date:a4];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(v10 + 3, a5);
  }

  return v11;
}

- (id)feedbackResult
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D4C5D0]);
  v4 = [(MSParsecSearchSessionMessageResult *)self resultID];
  [v3 setIdentifier:v4];

  v10 = @"messageAgeInDays";
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[MSParsecSearchSessionMessageResult messageAge](self, "messageAge")}];
  v11[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  [v3 setLocalFeatures:v6];

  [v3 setType:2];
  v7 = [(MSParsecSearchSessionMessageResult *)self mailRankingSignals];
  [v3 setMailRankingSignals:v7];

  v8 = *MEMORY[0x277D85DE8];

  return v3;
}

@end