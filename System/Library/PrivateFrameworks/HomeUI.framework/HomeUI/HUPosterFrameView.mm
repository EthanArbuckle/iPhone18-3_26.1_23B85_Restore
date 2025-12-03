@interface HUPosterFrameView
+ (id)posterFrameViewForWidth:(double)width;
- (HMCameraClip)clip;
- (HUPosterFrameView)initWithFrame:(CGRect)frame;
- (void)didFindPosterFrame:(id)frame atOffset:(double)offset forClip:(id)clip;
- (void)displayImage:(id)image opacity:(double)opacity;
- (void)displayImageForClip:(id)clip atTimeOffset:(double)offset;
- (void)failedToFindPosterFrameAtOffset:(double)offset forClip:(id)clip;
- (void)loadPlaceholderHeroFrameImageForClip:(id)clip;
- (void)loadPosterFrameImageForClip:(id)clip atOffset:(double)offset;
- (void)manager:(id)manager didFindHeroFrame:(id)frame forClip:(id)clip;
- (void)manager:(id)manager didFindImage:(id)image atTimeOffset:(double)offset forClip:(id)clip;
- (void)manager:(id)manager didGenerateImage:(id)image atOffset:(double)offset forClip:(id)clip;
- (void)prepareForReuse;
- (void)setShouldShowLineSeparator:(BOOL)separator;
@end

@implementation HUPosterFrameView

+ (id)posterFrameViewForWidth:(double)width
{
  v3 = [[HUPosterFrameView alloc] initWithFrame:0.0, 0.0, width, 33.0];

  return v3;
}

- (HUPosterFrameView)initWithFrame:(CGRect)frame
{
  v15.receiver = self;
  v15.super_class = HUPosterFrameView;
  v3 = [(HUPosterFrameView *)&v15 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CD9ED0]);
    posterFrameLayer = v3->_posterFrameLayer;
    v3->_posterFrameLayer = v4;

    [(HUPosterFrameView *)v3 bounds];
    [(CALayer *)v3->_posterFrameLayer setFrame:?];
    layer = [(HUPosterFrameView *)v3 layer];
    [layer insertSublayer:v3->_posterFrameLayer atIndex:0];

    [(HUPosterFrameView *)v3 bounds];
    y = v16.origin.y;
    height = v16.size.height;
    v9 = CGRectGetMaxX(v16) + -1.0;
    v10 = objc_alloc_init(MEMORY[0x277CD9ED0]);
    lineSeparator = v3->_lineSeparator;
    v3->_lineSeparator = v10;

    [(CALayer *)v3->_lineSeparator setFrame:v9, y, 1.0, height];
    systemBlackColor = [MEMORY[0x277D75348] systemBlackColor];
    -[CALayer setBackgroundColor:](v3->_lineSeparator, "setBackgroundColor:", [systemBlackColor CGColor]);

    [(CALayer *)v3->_lineSeparator setHidden:1];
    layer2 = [(HUPosterFrameView *)v3 layer];
    [layer2 addSublayer:v3->_lineSeparator];
  }

  return v3;
}

- (void)setShouldShowLineSeparator:(BOOL)separator
{
  if (self->_shouldShowLineSeparator != separator)
  {
    separatorCopy = separator;
    lineSeparator = [(HUPosterFrameView *)self lineSeparator];
    [lineSeparator setHidden:!separatorCopy];

    self->_shouldShowLineSeparator = separatorCopy;
  }
}

- (void)displayImageForClip:(id)clip atTimeOffset:(double)offset
{
  clipCopy = clip;
  [(HUPosterFrameView *)self setClip:?];
  [(HUPosterFrameView *)self setTimeOffset:offset];
  mEMORY[0x277D14498] = [MEMORY[0x277D14498] sharedManager];
  if ([MEMORY[0x277D14CE8] isPressDemoModeEnabled])
  {
    clip = [(HUPosterFrameView *)self clip];
    [mEMORY[0x277D14498] addDemoPosterFrameImageObserver:self forClip:clip atOffset:offset];
  }

  else
  {
    clip = [mEMORY[0x277D14498] cachedPosterFrameImageForClip:clipCopy offset:self requestor:offset];
    if (clip)
    {
      [(HUPosterFrameView *)self displayImage:clip opacity:1.0];
    }

    else
    {
      [(HUPosterFrameView *)self loadPosterFrameImageForClip:clipCopy atOffset:offset];
    }
  }
}

- (void)prepareForReuse
{
  mEMORY[0x277D14498] = [MEMORY[0x277D14498] sharedManager];
  if ([(HUPosterFrameView *)self loadingHeroFrame])
  {
    clip = [(HUPosterFrameView *)self clip];
    [mEMORY[0x277D14498] removeHeroFrameImageObserver:self forClip:clip];
  }

  if ([(HUPosterFrameView *)self loadingPosterFrame])
  {
    clip2 = [(HUPosterFrameView *)self clip];
    [(HUPosterFrameView *)self timeOffset];
    [mEMORY[0x277D14498] removePosterFrameImageObserver:self forClip:clip2 atOffset:?];
  }

  [(HUPosterFrameView *)self setLoadingHeroFrame:0];
  [(HUPosterFrameView *)self setLoadingPosterFrame:0];
  [(HUPosterFrameView *)self setPosterFrameLoadingState:0];
  [(HUPosterFrameView *)self displayImage:0 opacity:1.0];
}

- (void)displayImage:(id)image opacity:(double)opacity
{
  v6 = MEMORY[0x277CD9FF0];
  imageCopy = image;
  [v6 begin];
  [MEMORY[0x277CD9FF0] setValue:*MEMORY[0x277CBED28] forKey:*MEMORY[0x277CDA918]];
  cGImage = [imageCopy CGImage];

  posterFrameLayer = [(HUPosterFrameView *)self posterFrameLayer];
  [posterFrameLayer setContents:cGImage];

  posterFrameLayer2 = [(HUPosterFrameView *)self posterFrameLayer];
  *&opacity = opacity;
  LODWORD(v11) = LODWORD(opacity);
  [posterFrameLayer2 setOpacity:v11];

  v12 = MEMORY[0x277CD9FF0];

  [v12 commit];
}

- (void)loadPlaceholderHeroFrameImageForClip:(id)clip
{
  clipCopy = clip;
  mEMORY[0x277D14498] = [MEMORY[0x277D14498] sharedManager];
  v5 = [mEMORY[0x277D14498] heroFrameImageForClip:clipCopy];
  if (v5)
  {
    [(HUPosterFrameView *)self displayImage:v5 opacity:0.5];
  }

  else
  {
    [(HUPosterFrameView *)self setLoadingHeroFrame:1];
    [mEMORY[0x277D14498] addHeroFrameImageObserver:self forClip:clipCopy];
  }
}

- (void)loadPosterFrameImageForClip:(id)clip atOffset:(double)offset
{
  clipCopy = clip;
  [(HUPosterFrameView *)self setLoadingPosterFrame:1];
  [(HUPosterFrameView *)self setPosterFrameLoadingState:1];
  [(HUPosterFrameView *)self loadPlaceholderHeroFrameImageForClip:clipCopy];
  mEMORY[0x277D14498] = [MEMORY[0x277D14498] sharedManager];
  [mEMORY[0x277D14498] getPosterFrameImage:self forClip:clipCopy atOffset:offset];
}

- (void)didFindPosterFrame:(id)frame atOffset:(double)offset forClip:(id)clip
{
  frameCopy = frame;
  uniqueIdentifier = [clip uniqueIdentifier];
  clip = [(HUPosterFrameView *)self clip];
  uniqueIdentifier2 = [clip uniqueIdentifier];
  v11 = [uniqueIdentifier hmf_isEqualToUUID:uniqueIdentifier2];

  if (v11)
  {
    [(HUPosterFrameView *)self timeOffset];
    if (vabdd_f64(v12, offset) < 0.00000011920929)
    {
      [(HUPosterFrameView *)self setLoadingPosterFrame:0];
      [(HUPosterFrameView *)self setPosterFrameLoadingState:2];
      [(HUPosterFrameView *)self displayImage:frameCopy opacity:1.0];
    }
  }
}

- (void)failedToFindPosterFrameAtOffset:(double)offset forClip:(id)clip
{
  [(HUPosterFrameView *)self setLoadingPosterFrame:0, offset];

  [(HUPosterFrameView *)self setPosterFrameLoadingState:3];
}

- (void)manager:(id)manager didFindImage:(id)image atTimeOffset:(double)offset forClip:(id)clip
{
  imageCopy = image;
  [(HUPosterFrameView *)self setLoadingPosterFrame:0];
  [(HUPosterFrameView *)self displayImage:imageCopy opacity:1.0];
}

- (void)manager:(id)manager didGenerateImage:(id)image atOffset:(double)offset forClip:(id)clip
{
  imageCopy = image;
  [(HUPosterFrameView *)self setLoadingPosterFrame:0];
  [(HUPosterFrameView *)self displayImage:imageCopy opacity:1.0];
}

- (void)manager:(id)manager didFindHeroFrame:(id)frame forClip:(id)clip
{
  frameCopy = frame;
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

    [(HUPosterFrameView *)self displayImage:frameCopy opacity:v8];
  }
}

- (HMCameraClip)clip
{
  WeakRetained = objc_loadWeakRetained(&self->_clip);

  return WeakRetained;
}

@end