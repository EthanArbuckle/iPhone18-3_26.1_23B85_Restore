@interface NUArticleImageActivityItemSource
- (NUArticleImageActivityItemSource)initWithHeadline:(id)a3;
- (id)activityViewController:(id)a3 itemForActivityType:(id)a4;
@end

@implementation NUArticleImageActivityItemSource

- (NUArticleImageActivityItemSource)initWithHeadline:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = NUArticleImageActivityItemSource;
  v5 = [(NUArticleActivityItemSource *)&v13 initWithHeadline:v4];
  if (v5)
  {
    v6 = FCThumbnailForHeadline();
    v7 = MEMORY[0x277D755B8];
    v8 = [v6 thumbnailAssetHandle];
    v9 = [v8 filePath];
    v10 = [v7 imageWithContentsOfFile:v9];
    articleImage = v5->_articleImage;
    v5->_articleImage = v10;
  }

  return v5;
}

- (id)activityViewController:(id)a3 itemForActivityType:(id)a4
{
  if ([a4 isEqualToString:@"com.apple.mobilenotes.SharingExtension"])
  {
    v5 = [(NUArticleImageActivityItemSource *)self articleImage];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end