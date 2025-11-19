@interface FCHeadlineExperimentalTitleMetadata
- (FCHeadlineExperimentalTitleMetadata)initWithChosenTitle:(id)a3 isTitleExperimental:(BOOL)a4 arrayIndexUsedforTitle:(int64_t)a5 treatmentState:(int)a6;
@end

@implementation FCHeadlineExperimentalTitleMetadata

- (FCHeadlineExperimentalTitleMetadata)initWithChosenTitle:(id)a3 isTitleExperimental:(BOOL)a4 arrayIndexUsedforTitle:(int64_t)a5 treatmentState:(int)a6
{
  v11 = a3;
  v15.receiver = self;
  v15.super_class = FCHeadlineExperimentalTitleMetadata;
  v12 = [(FCHeadlineExperimentalTitleMetadata *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_chosenTitle, a3);
    v13->_isTitleExperimental = a4;
    v13->_arrayIndexUsedforTitle = a5;
    v13->_treatmentState = a6;
  }

  return v13;
}

@end