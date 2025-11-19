@interface FCSpotlightOperationResult
- (FCSpotlightOperationResult)initWithSpotlightGroupConfig:(id)a3 headline:(id)a4;
@end

@implementation FCSpotlightOperationResult

- (FCSpotlightOperationResult)initWithSpotlightGroupConfig:(id)a3 headline:(id)a4
{
  v6 = a3;
  v7 = a4;
  v33.receiver = self;
  v33.super_class = FCSpotlightOperationResult;
  v8 = [(FCSpotlightOperationResult *)&v33 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_headline, a4);
    v10 = [v6 spotlightEyebrowTitle];
    v11 = [v10 copy];
    eyebrowTitle = v9->_eyebrowTitle;
    v9->_eyebrowTitle = v11;

    v13 = [v6 groupName];
    v14 = [v13 copy];
    titleText = v9->_titleText;
    v9->_titleText = v14;

    v16 = [v6 groupSubtitle];
    v17 = [v16 copy];
    subTitleText = v9->_subTitleText;
    v9->_subTitleText = v17;

    v19 = [v6 spotlightCallToActionTitle];
    v20 = [v19 copy];
    ctaText = v9->_ctaText;
    v9->_ctaText = v20;

    v22 = [v6 publishDate];
    v23 = [v22 copy];
    publishDate = v9->_publishDate;
    v9->_publishDate = v23;

    v25 = [v6 groupTitleColor];
    v26 = [v25 copy];
    titleColor = v9->_titleColor;
    v9->_titleColor = v26;

    v28 = [v6 spotlightItemStyle];
    spotlightItemStyle = v9->_spotlightItemStyle;
    v9->_spotlightItemStyle = v28;

    v30 = [v6 spotlightItemDarkStyle];
    spotlightItemDarkStyle = v9->_spotlightItemDarkStyle;
    v9->_spotlightItemDarkStyle = v30;
  }

  return v9;
}

@end