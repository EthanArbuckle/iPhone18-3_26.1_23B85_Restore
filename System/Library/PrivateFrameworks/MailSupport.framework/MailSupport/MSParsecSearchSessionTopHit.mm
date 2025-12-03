@interface MSParsecSearchSessionTopHit
+ (id)topHitWithIdentifier:(id)identifier date:(id)date mailRankingSignals:(id)signals;
- (MSParsecSearchSessionTopHit)initWithIdentifier:(id)identifier date:(id)date mailRankingSignals:(id)signals;
- (id)feedbackResult;
@end

@implementation MSParsecSearchSessionTopHit

+ (id)topHitWithIdentifier:(id)identifier date:(id)date mailRankingSignals:(id)signals
{
  identifierCopy = identifier;
  dateCopy = date;
  signalsCopy = signals;
  v11 = [[self alloc] initWithIdentifier:identifierCopy date:dateCopy mailRankingSignals:signalsCopy];

  return v11;
}

- (MSParsecSearchSessionTopHit)initWithIdentifier:(id)identifier date:(id)date mailRankingSignals:(id)signals
{
  v6.receiver = self;
  v6.super_class = MSParsecSearchSessionTopHit;
  return [(MSParsecSearchSessionMessageResult *)&v6 initResultWithIdentifier:identifier date:date mailRankingSignals:signals];
}

- (id)feedbackResult
{
  v4.receiver = self;
  v4.super_class = MSParsecSearchSessionTopHit;
  feedbackResult = [(MSParsecSearchSessionMessageResult *)&v4 feedbackResult];
  [feedbackResult setTopHit:2];
  [feedbackResult setResultBundleId:@"com.apple.mail.search.tophit"];
  [feedbackResult setSectionBundleIdentifier:@"tophit"];

  return feedbackResult;
}

@end