@interface NUErrorMessageFactory
+ (id)errorMessageForArticleViewWithOfflineReason:(int64_t)reason;
+ (id)errorMessageForTitle:(id)title subtitle:(id)subtitle;
- (NUErrorMessageFactory)initWithNetworkReachability:(id)reachability;
- (id)errorMessageForArticleView;
@end

@implementation NUErrorMessageFactory

- (NUErrorMessageFactory)initWithNetworkReachability:(id)reachability
{
  reachabilityCopy = reachability;
  v9.receiver = self;
  v9.super_class = NUErrorMessageFactory;
  v6 = [(NUErrorMessageFactory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_networkReachability, reachability);
  }

  return v7;
}

- (id)errorMessageForArticleView
{
  networkReachability = [(NUErrorMessageFactory *)self networkReachability];
  v4 = -[NUErrorMessageFactory errorMessageForArticleViewWithOfflineReason:](self, "errorMessageForArticleViewWithOfflineReason:", [networkReachability offlineReason]);

  return v4;
}

+ (id)errorMessageForArticleViewWithOfflineReason:(int64_t)reason
{
  if ((reason - 1) > 5)
  {
    v5 = 0;
    v7 = 0;
  }

  else
  {
    v3 = off_2799A36F8[reason - 1];
    v4 = NUBundle();
    v5 = [v4 localizedStringForKey:@"NUStoryUnavailableAlertTitle" value:&stru_286E03B58 table:0];

    v6 = NUBundle();
    v7 = [v6 localizedStringForKey:v3 value:&stru_286E03B58 table:0];
  }

  v8 = [NUErrorMessageFactory errorMessageForTitle:v5 subtitle:v7];

  return v8;
}

+ (id)errorMessageForTitle:(id)title subtitle:(id)subtitle
{
  v4 = 0;
  if (title && subtitle)
  {
    subtitleCopy = subtitle;
    titleCopy = title;
    v4 = [[NUErrorMessage alloc] initWithTitle:titleCopy subtitle:subtitleCopy];
  }

  return v4;
}

@end