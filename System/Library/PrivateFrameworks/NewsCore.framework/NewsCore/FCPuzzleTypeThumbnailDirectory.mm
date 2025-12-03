@interface FCPuzzleTypeThumbnailDirectory
- (FCPuzzleTypeThumbnailDirectory)initWithResourceMapId:(id)id assetManager:(id)manager context:(id)context;
- (id)smallThumbnailForDate:(id)date difficulty:(id)difficulty;
@end

@implementation FCPuzzleTypeThumbnailDirectory

- (FCPuzzleTypeThumbnailDirectory)initWithResourceMapId:(id)id assetManager:(id)manager context:(id)context
{
  idCopy = id;
  managerCopy = manager;
  contextCopy = context;
  v14.receiver = self;
  v14.super_class = FCPuzzleTypeThumbnailDirectory;
  v11 = [(FCPuzzleTypeThumbnailDirectory *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(FCPuzzleTypeThumbnailDirectory *)v11 setAssetManager:managerCopy];
    [(FCPuzzleTypeThumbnailDirectory *)v12 setContext:contextCopy];
    [(FCPuzzleTypeThumbnailDirectory *)v12 setResourceMapId:idCopy];
  }

  return v12;
}

- (id)smallThumbnailForDate:(id)date difficulty:(id)difficulty
{
  dateCopy = date;
  difficultyCopy = difficulty;
  resourceMapId = [(FCPuzzleTypeThumbnailDirectory *)self resourceMapId];

  if (resourceMapId)
  {
    resourceMapId2 = [(FCPuzzleTypeThumbnailDirectory *)self resourceMapId];
    v10 = [FCPuzzleThumbnailURLProtocol URLForResourceMapID:resourceMapId2 publishDate:dateCopy difficulty:difficultyCopy];

    assetManager = [(FCPuzzleTypeThumbnailDirectory *)self assetManager];
    v12 = [assetManager assetHandleForURL:v10 lifetimeHint:0];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end