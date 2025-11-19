@interface FCPuzzleTypeThumbnailDirectory
- (FCPuzzleTypeThumbnailDirectory)initWithResourceMapId:(id)a3 assetManager:(id)a4 context:(id)a5;
- (id)smallThumbnailForDate:(id)a3 difficulty:(id)a4;
@end

@implementation FCPuzzleTypeThumbnailDirectory

- (FCPuzzleTypeThumbnailDirectory)initWithResourceMapId:(id)a3 assetManager:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = FCPuzzleTypeThumbnailDirectory;
  v11 = [(FCPuzzleTypeThumbnailDirectory *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(FCPuzzleTypeThumbnailDirectory *)v11 setAssetManager:v9];
    [(FCPuzzleTypeThumbnailDirectory *)v12 setContext:v10];
    [(FCPuzzleTypeThumbnailDirectory *)v12 setResourceMapId:v8];
  }

  return v12;
}

- (id)smallThumbnailForDate:(id)a3 difficulty:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(FCPuzzleTypeThumbnailDirectory *)self resourceMapId];

  if (v8)
  {
    v9 = [(FCPuzzleTypeThumbnailDirectory *)self resourceMapId];
    v10 = [FCPuzzleThumbnailURLProtocol URLForResourceMapID:v9 publishDate:v6 difficulty:v7];

    v11 = [(FCPuzzleTypeThumbnailDirectory *)self assetManager];
    v12 = [v11 assetHandleForURL:v10 lifetimeHint:0];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end