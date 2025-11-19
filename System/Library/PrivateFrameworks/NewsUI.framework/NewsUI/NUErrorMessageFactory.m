@interface NUErrorMessageFactory
+ (id)errorMessageForArticleViewWithOfflineReason:(int64_t)a3;
+ (id)errorMessageForTitle:(id)a3 subtitle:(id)a4;
- (NUErrorMessageFactory)initWithNetworkReachability:(id)a3;
- (id)errorMessageForArticleView;
@end

@implementation NUErrorMessageFactory

- (NUErrorMessageFactory)initWithNetworkReachability:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NUErrorMessageFactory;
  v6 = [(NUErrorMessageFactory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_networkReachability, a3);
  }

  return v7;
}

- (id)errorMessageForArticleView
{
  v3 = [(NUErrorMessageFactory *)self networkReachability];
  v4 = -[NUErrorMessageFactory errorMessageForArticleViewWithOfflineReason:](self, "errorMessageForArticleViewWithOfflineReason:", [v3 offlineReason]);

  return v4;
}

+ (id)errorMessageForArticleViewWithOfflineReason:(int64_t)a3
{
  if ((a3 - 1) > 5)
  {
    v5 = 0;
    v7 = 0;
  }

  else
  {
    v3 = off_2799A36F8[a3 - 1];
    v4 = NUBundle();
    v5 = [v4 localizedStringForKey:@"NUStoryUnavailableAlertTitle" value:&stru_286E03B58 table:0];

    v6 = NUBundle();
    v7 = [v6 localizedStringForKey:v3 value:&stru_286E03B58 table:0];
  }

  v8 = [NUErrorMessageFactory errorMessageForTitle:v5 subtitle:v7];

  return v8;
}

+ (id)errorMessageForTitle:(id)a3 subtitle:(id)a4
{
  v4 = 0;
  if (a3 && a4)
  {
    v6 = a4;
    v7 = a3;
    v4 = [[NUErrorMessage alloc] initWithTitle:v7 subtitle:v6];
  }

  return v4;
}

@end