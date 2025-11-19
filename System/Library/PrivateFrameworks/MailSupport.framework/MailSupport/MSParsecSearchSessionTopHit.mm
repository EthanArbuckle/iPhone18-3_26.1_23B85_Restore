@interface MSParsecSearchSessionTopHit
+ (id)topHitWithIdentifier:(id)a3 date:(id)a4 mailRankingSignals:(id)a5;
- (MSParsecSearchSessionTopHit)initWithIdentifier:(id)a3 date:(id)a4 mailRankingSignals:(id)a5;
- (id)feedbackResult;
@end

@implementation MSParsecSearchSessionTopHit

+ (id)topHitWithIdentifier:(id)a3 date:(id)a4 mailRankingSignals:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [[a1 alloc] initWithIdentifier:v8 date:v9 mailRankingSignals:v10];

  return v11;
}

- (MSParsecSearchSessionTopHit)initWithIdentifier:(id)a3 date:(id)a4 mailRankingSignals:(id)a5
{
  v6.receiver = self;
  v6.super_class = MSParsecSearchSessionTopHit;
  return [(MSParsecSearchSessionMessageResult *)&v6 initResultWithIdentifier:a3 date:a4 mailRankingSignals:a5];
}

- (id)feedbackResult
{
  v4.receiver = self;
  v4.super_class = MSParsecSearchSessionTopHit;
  v2 = [(MSParsecSearchSessionMessageResult *)&v4 feedbackResult];
  [v2 setTopHit:2];
  [v2 setResultBundleId:@"com.apple.mail.search.tophit"];
  [v2 setSectionBundleIdentifier:@"tophit"];

  return v2;
}

@end