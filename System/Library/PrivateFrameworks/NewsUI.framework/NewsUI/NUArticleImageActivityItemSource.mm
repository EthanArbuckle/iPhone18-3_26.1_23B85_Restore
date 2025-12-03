@interface NUArticleImageActivityItemSource
- (NUArticleImageActivityItemSource)initWithHeadline:(id)headline;
- (id)activityViewController:(id)controller itemForActivityType:(id)type;
@end

@implementation NUArticleImageActivityItemSource

- (NUArticleImageActivityItemSource)initWithHeadline:(id)headline
{
  headlineCopy = headline;
  v13.receiver = self;
  v13.super_class = NUArticleImageActivityItemSource;
  v5 = [(NUArticleActivityItemSource *)&v13 initWithHeadline:headlineCopy];
  if (v5)
  {
    v6 = FCThumbnailForHeadline();
    v7 = MEMORY[0x277D755B8];
    thumbnailAssetHandle = [v6 thumbnailAssetHandle];
    filePath = [thumbnailAssetHandle filePath];
    v10 = [v7 imageWithContentsOfFile:filePath];
    articleImage = v5->_articleImage;
    v5->_articleImage = v10;
  }

  return v5;
}

- (id)activityViewController:(id)controller itemForActivityType:(id)type
{
  if ([type isEqualToString:@"com.apple.mobilenotes.SharingExtension"])
  {
    articleImage = [(NUArticleImageActivityItemSource *)self articleImage];
  }

  else
  {
    articleImage = 0;
  }

  return articleImage;
}

@end