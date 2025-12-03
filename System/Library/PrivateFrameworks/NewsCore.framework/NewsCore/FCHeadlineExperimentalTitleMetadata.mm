@interface FCHeadlineExperimentalTitleMetadata
- (FCHeadlineExperimentalTitleMetadata)initWithChosenTitle:(id)title isTitleExperimental:(BOOL)experimental arrayIndexUsedforTitle:(int64_t)usedforTitle treatmentState:(int)state;
@end

@implementation FCHeadlineExperimentalTitleMetadata

- (FCHeadlineExperimentalTitleMetadata)initWithChosenTitle:(id)title isTitleExperimental:(BOOL)experimental arrayIndexUsedforTitle:(int64_t)usedforTitle treatmentState:(int)state
{
  titleCopy = title;
  v15.receiver = self;
  v15.super_class = FCHeadlineExperimentalTitleMetadata;
  v12 = [(FCHeadlineExperimentalTitleMetadata *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_chosenTitle, title);
    v13->_isTitleExperimental = experimental;
    v13->_arrayIndexUsedforTitle = usedforTitle;
    v13->_treatmentState = state;
  }

  return v13;
}

@end