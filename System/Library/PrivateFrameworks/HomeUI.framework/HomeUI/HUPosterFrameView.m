@interface HUPosterFrameView
+ (id)posterFrameViewForWidth:(double)a3;
- (HMCameraClip)clip;
- (HUPosterFrameView)initWithFrame:(CGRect)a3;
- (void)didFindPosterFrame:(id)a3 atOffset:(double)a4 forClip:(id)a5;
- (void)displayImage:(id)a3 opacity:(double)a4;
- (void)displayImageForClip:(id)a3 atTimeOffset:(double)a4;
- (void)failedToFindPosterFrameAtOffset:(double)a3 forClip:(id)a4;
- (void)loadPlaceholderHeroFrameImageForClip:(id)a3;
- (void)loadPosterFrameImageForClip:(id)a3 atOffset:(double)a4;
- (void)manager:(id)a3 didFindHeroFrame:(id)a4 forClip:(id)a5;
- (void)manager:(id)a3 didFindImage:(id)a4 atTimeOffset:(double)a5 forClip:(id)a6;
- (void)manager:(id)a3 didGenerateImage:(id)a4 atOffset:(double)a5 forClip:(id)a6;
- (void)prepareForReuse;
- (void)setShouldShowLineSeparator:(BOOL)a3;
@end

@implementation HUPosterFrameView

+ (id)posterFrameViewForWidth:(double)a3
{
  v3 = [[HUPosterFrameView alloc] initWithFrame:0.0, 0.0, a3, 33.0];

  return v3;
}

- (HUPosterFrameView)initWithFrame:(CGRect)a3
{
  v15.receiver = self;
  v15.super_class = HUPosterFrameView;
  v3 = [(HUPosterFrameView *)&v15 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CD9ED0]);
    posterFrameLayer = v3->_posterFrameLayer;
    v3->_posterFrameLayer = v4;

    [(HUPosterFrameView *)v3 bounds];
    [(CALayer *)v3->_posterFrameLayer setFrame:?];
    v6 = [(HUPosterFrameView *)v3 layer];
    [v6 insertSublayer:v3->_posterFrameLayer atIndex:0];

    [(HUPosterFrameView *)v3 bounds];
    y = v16.origin.y;
    height = v16.size.height;
    v9 = CGRectGetMaxX(v16) + -1.0;
    v10 = objc_alloc_init(MEMORY[0x277CD9ED0]);
    lineSeparator = v3->_lineSeparator;
    v3->_lineSeparator = v10;

    [(CALayer *)v3->_lineSeparator setFrame:v9, y, 1.0, height];
    v12 = [MEMORY[0x277D75348] systemBlackColor];
    -[CALayer setBackgroundColor:](v3->_lineSeparator, "setBackgroundColor:", [v12 CGColor]);

    [(CALayer *)v3->_lineSeparator setHidden:1];
    v13 = [(HUPosterFrameView *)v3 layer];
    [v13 addSublayer:v3->_lineSeparator];
  }

  return v3;
}

- (void)setShouldShowLineSeparator:(BOOL)a3
{
  if (self->_shouldShowLineSeparator != a3)
  {
    v3 = a3;
    v5 = [(HUPosterFrameView *)self lineSeparator];
    [v5 setHidden:!v3];

    self->_shouldShowLineSeparator = v3;
  }
}

- (void)displayImageForClip:(id)a3 atTimeOffset:(double)a4
{
  v8 = a3;
  [(HUPosterFrameView *)self setClip:?];
  [(HUPosterFrameView *)self setTimeOffset:a4];
  v6 = [MEMORY[0x277D14498] sharedManager];
  if ([MEMORY[0x277D14CE8] isPressDemoModeEnabled])
  {
    v7 = [(HUPosterFrameView *)self clip];
    [v6 addDemoPosterFrameImageObserver:self forClip:v7 atOffset:a4];
  }

  else
  {
    v7 = [v6 cachedPosterFrameImageForClip:v8 offset:self requestor:a4];
    if (v7)
    {
      [(HUPosterFrameView *)self displayImage:v7 opacity:1.0];
    }

    else
    {
      [(HUPosterFrameView *)self loadPosterFrameImageForClip:v8 atOffset:a4];
    }
  }
}

- (void)prepareForReuse
{
  v5 = [MEMORY[0x277D14498] sharedManager];
  if ([(HUPosterFrameView *)self loadingHeroFrame])
  {
    v3 = [(HUPosterFrameView *)self clip];
    [v5 removeHeroFrameImageObserver:self forClip:v3];
  }

  if ([(HUPosterFrameView *)self loadingPosterFrame])
  {
    v4 = [(HUPosterFrameView *)self clip];
    [(HUPosterFrameView *)self timeOffset];
    [v5 removePosterFrameImageObserver:self forClip:v4 atOffset:?];
  }

  [(HUPosterFrameView *)self setLoadingHeroFrame:0];
  [(HUPosterFrameView *)self setLoadingPosterFrame:0];
  [(HUPosterFrameView *)self setPosterFrameLoadingState:0];
  [(HUPosterFrameView *)self displayImage:0 opacity:1.0];
}

- (void)displayImage:(id)a3 opacity:(double)a4
{
  v6 = MEMORY[0x277CD9FF0];
  v7 = a3;
  [v6 begin];
  [MEMORY[0x277CD9FF0] setValue:*MEMORY[0x277CBED28] forKey:*MEMORY[0x277CDA918]];
  v8 = [v7 CGImage];

  v9 = [(HUPosterFrameView *)self posterFrameLayer];
  [v9 setContents:v8];

  v10 = [(HUPosterFrameView *)self posterFrameLayer];
  *&a4 = a4;
  LODWORD(v11) = LODWORD(a4);
  [v10 setOpacity:v11];

  v12 = MEMORY[0x277CD9FF0];

  [v12 commit];
}

- (void)loadPlaceholderHeroFrameImageForClip:(id)a3
{
  v6 = a3;
  v4 = [MEMORY[0x277D14498] sharedManager];
  v5 = [v4 heroFrameImageForClip:v6];
  if (v5)
  {
    [(HUPosterFrameView *)self displayImage:v5 opacity:0.5];
  }

  else
  {
    [(HUPosterFrameView *)self setLoadingHeroFrame:1];
    [v4 addHeroFrameImageObserver:self forClip:v6];
  }
}

- (void)loadPosterFrameImageForClip:(id)a3 atOffset:(double)a4
{
  v6 = a3;
  [(HUPosterFrameView *)self setLoadingPosterFrame:1];
  [(HUPosterFrameView *)self setPosterFrameLoadingState:1];
  [(HUPosterFrameView *)self loadPlaceholderHeroFrameImageForClip:v6];
  v7 = [MEMORY[0x277D14498] sharedManager];
  [v7 getPosterFrameImage:self forClip:v6 atOffset:a4];
}

- (void)didFindPosterFrame:(id)a3 atOffset:(double)a4 forClip:(id)a5
{
  v13 = a3;
  v8 = [a5 uniqueIdentifier];
  v9 = [(HUPosterFrameView *)self clip];
  v10 = [v9 uniqueIdentifier];
  v11 = [v8 hmf_isEqualToUUID:v10];

  if (v11)
  {
    [(HUPosterFrameView *)self timeOffset];
    if (vabdd_f64(v12, a4) < 0.00000011920929)
    {
      [(HUPosterFrameView *)self setLoadingPosterFrame:0];
      [(HUPosterFrameView *)self setPosterFrameLoadingState:2];
      [(HUPosterFrameView *)self displayImage:v13 opacity:1.0];
    }
  }
}

- (void)failedToFindPosterFrameAtOffset:(double)a3 forClip:(id)a4
{
  [(HUPosterFrameView *)self setLoadingPosterFrame:0, a3];

  [(HUPosterFrameView *)self setPosterFrameLoadingState:3];
}

- (void)manager:(id)a3 didFindImage:(id)a4 atTimeOffset:(double)a5 forClip:(id)a6
{
  v7 = a4;
  [(HUPosterFrameView *)self setLoadingPosterFrame:0];
  [(HUPosterFrameView *)self displayImage:v7 opacity:1.0];
}

- (void)manager:(id)a3 didGenerateImage:(id)a4 atOffset:(double)a5 forClip:(id)a6
{
  v7 = a4;
  [(HUPosterFrameView *)self setLoadingPosterFrame:0];
  [(HUPosterFrameView *)self displayImage:v7 opacity:1.0];
}

- (void)manager:(id)a3 didFindHeroFrame:(id)a4 forClip:(id)a5
{
  v9 = a4;
  [(HUPosterFrameView *)self setLoadingHeroFrame:0];
  if ([(HUPosterFrameView *)self posterFrameLoadingState]!= 2)
  {
    [(HUPosterFrameView *)self timeOffset];
    v7 = v6 < 0.00000011920929;
    v8 = 0.5;
    if (v7)
    {
      v8 = 1.0;
    }

    [(HUPosterFrameView *)self displayImage:v9 opacity:v8];
  }
}

- (HMCameraClip)clip
{
  WeakRetained = objc_loadWeakRetained(&self->_clip);

  return WeakRetained;
}

@end