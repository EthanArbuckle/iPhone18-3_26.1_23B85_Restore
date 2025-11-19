@interface ICSystemPaperThumbnailService
+ (ICSystemPaperThumbnailService)sharedService;
- (ICSystemPaperThumbnailService)initWithSystemPaperThumbnailService:(id)a3;
- (UITraitCollection)traitCollection;
- (void)cancel;
- (void)invalidate;
- (void)invalidateForNote:(id)a3;
- (void)observe;
- (void)setTraitCollection:(id)a3;
- (void)updateIfNeededForNote:(id)a3 completion:(id)a4;
- (void)updateIfNeededWithCompletion:(id)a3;
@end

@implementation ICSystemPaperThumbnailService

+ (ICSystemPaperThumbnailService)sharedService
{
  v2 = [ICSystemPaperThumbnailService alloc];
  v3 = +[ICSystemPaperThumbnailServiceInternal sharedService];
  v4 = [(ICSystemPaperThumbnailService *)v2 initWithSystemPaperThumbnailService:v3];

  return v4;
}

- (ICSystemPaperThumbnailService)initWithSystemPaperThumbnailService:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ICSystemPaperThumbnailService;
  v6 = [(ICSystemPaperThumbnailService *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_systemPaperThumbnailService, a3);
  }

  return v7;
}

- (void)setTraitCollection:(id)a3
{
  v4 = a3;
  v5 = [(ICSystemPaperThumbnailService *)self systemPaperThumbnailService];
  [v5 setTraitCollection:v4];
}

- (UITraitCollection)traitCollection
{
  v2 = [(ICSystemPaperThumbnailService *)self systemPaperThumbnailService];
  v3 = [v2 traitCollection];

  return v3;
}

- (void)updateIfNeededForNote:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ICSystemPaperThumbnailService *)self systemPaperThumbnailService];
  [v8 updateIfNeededForNote:v7 completion:v6];
}

- (void)updateIfNeededWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(ICSystemPaperThumbnailService *)self systemPaperThumbnailService];
  [v5 updateIfNeededWithCompletion:v4];
}

- (void)invalidateForNote:(id)a3
{
  v4 = a3;
  v5 = [(ICSystemPaperThumbnailService *)self systemPaperThumbnailService];
  [v5 invalidateForNote:v4];
}

- (void)invalidate
{
  v2 = [(ICSystemPaperThumbnailService *)self systemPaperThumbnailService];
  [v2 invalidate];
}

- (void)observe
{
  v2 = [(ICSystemPaperThumbnailService *)self systemPaperThumbnailService];
  [v2 observe];
}

- (void)cancel
{
  v2 = [(ICSystemPaperThumbnailService *)self systemPaperThumbnailService];
  [v2 cancel];
}

@end