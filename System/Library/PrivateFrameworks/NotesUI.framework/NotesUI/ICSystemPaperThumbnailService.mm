@interface ICSystemPaperThumbnailService
+ (ICSystemPaperThumbnailService)sharedService;
- (ICSystemPaperThumbnailService)initWithSystemPaperThumbnailService:(id)service;
- (UITraitCollection)traitCollection;
- (void)cancel;
- (void)invalidate;
- (void)invalidateForNote:(id)note;
- (void)observe;
- (void)setTraitCollection:(id)collection;
- (void)updateIfNeededForNote:(id)note completion:(id)completion;
- (void)updateIfNeededWithCompletion:(id)completion;
@end

@implementation ICSystemPaperThumbnailService

+ (ICSystemPaperThumbnailService)sharedService
{
  v2 = [ICSystemPaperThumbnailService alloc];
  v3 = +[ICSystemPaperThumbnailServiceInternal sharedService];
  v4 = [(ICSystemPaperThumbnailService *)v2 initWithSystemPaperThumbnailService:v3];

  return v4;
}

- (ICSystemPaperThumbnailService)initWithSystemPaperThumbnailService:(id)service
{
  serviceCopy = service;
  v9.receiver = self;
  v9.super_class = ICSystemPaperThumbnailService;
  v6 = [(ICSystemPaperThumbnailService *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_systemPaperThumbnailService, service);
  }

  return v7;
}

- (void)setTraitCollection:(id)collection
{
  collectionCopy = collection;
  systemPaperThumbnailService = [(ICSystemPaperThumbnailService *)self systemPaperThumbnailService];
  [systemPaperThumbnailService setTraitCollection:collectionCopy];
}

- (UITraitCollection)traitCollection
{
  systemPaperThumbnailService = [(ICSystemPaperThumbnailService *)self systemPaperThumbnailService];
  traitCollection = [systemPaperThumbnailService traitCollection];

  return traitCollection;
}

- (void)updateIfNeededForNote:(id)note completion:(id)completion
{
  completionCopy = completion;
  noteCopy = note;
  systemPaperThumbnailService = [(ICSystemPaperThumbnailService *)self systemPaperThumbnailService];
  [systemPaperThumbnailService updateIfNeededForNote:noteCopy completion:completionCopy];
}

- (void)updateIfNeededWithCompletion:(id)completion
{
  completionCopy = completion;
  systemPaperThumbnailService = [(ICSystemPaperThumbnailService *)self systemPaperThumbnailService];
  [systemPaperThumbnailService updateIfNeededWithCompletion:completionCopy];
}

- (void)invalidateForNote:(id)note
{
  noteCopy = note;
  systemPaperThumbnailService = [(ICSystemPaperThumbnailService *)self systemPaperThumbnailService];
  [systemPaperThumbnailService invalidateForNote:noteCopy];
}

- (void)invalidate
{
  systemPaperThumbnailService = [(ICSystemPaperThumbnailService *)self systemPaperThumbnailService];
  [systemPaperThumbnailService invalidate];
}

- (void)observe
{
  systemPaperThumbnailService = [(ICSystemPaperThumbnailService *)self systemPaperThumbnailService];
  [systemPaperThumbnailService observe];
}

- (void)cancel
{
  systemPaperThumbnailService = [(ICSystemPaperThumbnailService *)self systemPaperThumbnailService];
  [systemPaperThumbnailService cancel];
}

@end