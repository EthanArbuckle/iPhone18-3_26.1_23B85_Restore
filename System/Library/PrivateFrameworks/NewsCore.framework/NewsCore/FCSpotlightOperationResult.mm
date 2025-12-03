@interface FCSpotlightOperationResult
- (FCSpotlightOperationResult)initWithSpotlightGroupConfig:(id)config headline:(id)headline;
@end

@implementation FCSpotlightOperationResult

- (FCSpotlightOperationResult)initWithSpotlightGroupConfig:(id)config headline:(id)headline
{
  configCopy = config;
  headlineCopy = headline;
  v33.receiver = self;
  v33.super_class = FCSpotlightOperationResult;
  v8 = [(FCSpotlightOperationResult *)&v33 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_headline, headline);
    spotlightEyebrowTitle = [configCopy spotlightEyebrowTitle];
    v11 = [spotlightEyebrowTitle copy];
    eyebrowTitle = v9->_eyebrowTitle;
    v9->_eyebrowTitle = v11;

    groupName = [configCopy groupName];
    v14 = [groupName copy];
    titleText = v9->_titleText;
    v9->_titleText = v14;

    groupSubtitle = [configCopy groupSubtitle];
    v17 = [groupSubtitle copy];
    subTitleText = v9->_subTitleText;
    v9->_subTitleText = v17;

    spotlightCallToActionTitle = [configCopy spotlightCallToActionTitle];
    v20 = [spotlightCallToActionTitle copy];
    ctaText = v9->_ctaText;
    v9->_ctaText = v20;

    publishDate = [configCopy publishDate];
    v23 = [publishDate copy];
    publishDate = v9->_publishDate;
    v9->_publishDate = v23;

    groupTitleColor = [configCopy groupTitleColor];
    v26 = [groupTitleColor copy];
    titleColor = v9->_titleColor;
    v9->_titleColor = v26;

    spotlightItemStyle = [configCopy spotlightItemStyle];
    spotlightItemStyle = v9->_spotlightItemStyle;
    v9->_spotlightItemStyle = spotlightItemStyle;

    spotlightItemDarkStyle = [configCopy spotlightItemDarkStyle];
    spotlightItemDarkStyle = v9->_spotlightItemDarkStyle;
    v9->_spotlightItemDarkStyle = spotlightItemDarkStyle;
  }

  return v9;
}

@end