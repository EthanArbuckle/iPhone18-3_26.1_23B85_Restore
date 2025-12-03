@interface CRSUICAPackageView
- (BOOL)setState:(id)state animated:(BOOL)animated;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CRSUICAPackageView)initWithPackage:(id)package state:(id)state dynamicStateProvider:(id)provider;
- (double)playbackTime;
- (void)layoutSubviews;
- (void)pause;
- (void)play;
- (void)setPlaybackTime:(double)time;
- (void)stop;
- (void)userInterfaceStyleChanged;
@end

@implementation CRSUICAPackageView

- (CRSUICAPackageView)initWithPackage:(id)package state:(id)state dynamicStateProvider:(id)provider
{
  v33[1] = *MEMORY[0x277D85DE8];
  packageCopy = package;
  stateCopy = state;
  providerCopy = provider;
  rootLayer = [packageCopy rootLayer];
  if (!rootLayer)
  {
    [CRSUICAPackageView initWithPackage:state:dynamicStateProvider:];
  }

  v12 = rootLayer;
  [rootLayer frame];
  v32.receiver = self;
  v32.super_class = CRSUICAPackageView;
  v13 = [(CRSUICAPackageView *)&v32 initWithFrame:?];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_rootLayer, v12);
    v15 = objc_alloc(MEMORY[0x277CD9FB8]);
    rootLayer2 = [packageCopy rootLayer];
    v17 = [v15 initWithLayer:rootLayer2];
    stateController = v14->_stateController;
    v14->_stateController = v17;

    [v12 frame];
    v14->_packageSize.width = v19;
    v14->_packageSize.height = v20;
    v21 = MEMORY[0x245D2CF20](providerCopy);
    dynamicStateProvider = v14->_dynamicStateProvider;
    v14->_dynamicStateProvider = v21;

    [v12 duration];
    v14->_documentDuration = v23;
    [(CALayer *)v14->_rootLayer setDuration:INFINITY];
    [(CALayer *)v14->_rootLayer setSpeed:0.0];
    rootLayer3 = [packageCopy rootLayer];
    [rootLayer3 setGeometryFlipped:{objc_msgSend(packageCopy, "isGeometryFlipped")}];

    layer = [(CRSUICAPackageView *)v14 layer];
    [layer addSublayer:v12];

    if (!stateCopy && providerCopy)
    {
      traitCollection = [(CRSUICAPackageView *)v14 traitCollection];
      stateCopy = providerCopy[2](providerCopy, traitCollection);
    }

    if (stateCopy)
    {
      [(CRSUICAPackageView *)v14 setState:stateCopy animated:0];
    }

    if (providerCopy)
    {
      v27 = objc_opt_self();
      v33[0] = v27;
      v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
      v29 = [(CRSUICAPackageView *)v14 registerForTraitChanges:v28 withAction:sel_userInterfaceStyleChanged];
    }
  }

  v30 = *MEMORY[0x277D85DE8];
  return v14;
}

- (BOOL)setState:(id)state animated:(BOOL)animated
{
  animatedCopy = animated;
  stateCopy = state;
  v7 = [(CALayer *)self->_rootLayer stateWithName:stateCopy];
  if (v7)
  {
    v8 = [stateCopy copy];
    state = self->_state;
    self->_state = v8;

    stateController = self->_stateController;
    rootLayer = self->_rootLayer;
    if (animatedCopy)
    {
      LODWORD(v10) = 1.0;
      [(CAStateController *)stateController setState:v7 ofLayer:rootLayer transitionSpeed:v10];
    }

    else
    {
      [(CAStateController *)stateController setState:v7 ofLayer:rootLayer];
    }
  }

  return v7 != 0;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = self->_packageSize.width;
  height = self->_packageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = CRSUICAPackageView;
  [(CRSUICAPackageView *)&v11 layoutSubviews];
  [(CRSUICAPackageView *)self bounds];
  v4 = v3;
  v6 = v5;
  if ([(CRSUICAPackageView *)self contentMode])
  {
    if ([(CRSUICAPackageView *)self contentMode]== 1)
    {
      if (v4 / self->_packageSize.width >= v6 / self->_packageSize.height)
      {
        v7 = v6 / self->_packageSize.height;
      }

      else
      {
        v7 = v4 / self->_packageSize.width;
      }

LABEL_11:
      v8 = v7;
      goto LABEL_12;
    }

    v7 = 1.0;
    v8 = 1.0;
    if ([(CRSUICAPackageView *)self contentMode]== 2)
    {
      if (v4 / self->_packageSize.width >= v6 / self->_packageSize.height)
      {
        v7 = v4 / self->_packageSize.width;
      }

      else
      {
        v7 = v6 / self->_packageSize.height;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v8 = v4 / self->_packageSize.width;
    v7 = v6 / self->_packageSize.height;
  }

LABEL_12:
  [(CALayer *)self->_rootLayer setPosition:v4 * 0.5, v6 * 0.5];
  rootLayer = self->_rootLayer;
  CATransform3DMakeScale(&v10, v8, v7, 1.0);
  [(CALayer *)rootLayer setTransform:&v10];
}

- (void)userInterfaceStyleChanged
{
  dynamicStateProvider = self->_dynamicStateProvider;
  if (dynamicStateProvider)
  {
    traitCollection = [(CRSUICAPackageView *)self traitCollection];
    v4 = dynamicStateProvider[2](dynamicStateProvider, traitCollection);
    [(CRSUICAPackageView *)self setState:v4 animated:0];
  }
}

- (void)play
{
  if (![(CRSUICAPackageView *)self isPlaying])
  {
    v3 = CACurrentMediaTime();
    [(CRSUICAPackageView *)self playbackTime];
    [(CALayer *)self->_rootLayer setBeginTime:v3 - v4];
    [(CALayer *)self->_rootLayer setTimeOffset:0.0];
    rootLayer = self->_rootLayer;
    LODWORD(v6) = 1.0;

    [(CALayer *)rootLayer setSpeed:v6];
  }
}

- (void)pause
{
  if ([(CRSUICAPackageView *)self isPlaying])
  {
    [(CRSUICAPackageView *)self playbackTime];
    [(CALayer *)self->_rootLayer setTimeOffset:?];
    [(CALayer *)self->_rootLayer setBeginTime:0.0];
    rootLayer = self->_rootLayer;

    [(CALayer *)rootLayer setSpeed:0.0];
  }
}

- (void)stop
{
  if ([(CRSUICAPackageView *)self isPlaying])
  {
    [(CALayer *)self->_rootLayer setTimeOffset:0.0];
    [(CALayer *)self->_rootLayer setBeginTime:0.0];
    rootLayer = self->_rootLayer;

    [(CALayer *)rootLayer setSpeed:0.0];
  }
}

- (double)playbackTime
{
  if ([(CRSUICAPackageView *)self isPlaying])
  {
    v3 = CACurrentMediaTime();
    [(CALayer *)self->_rootLayer beginTime];
    v5 = v3 - v4;
    [(CALayer *)self->_rootLayer speed];
    return v5 * v6;
  }

  else
  {
    rootLayer = self->_rootLayer;

    [(CALayer *)rootLayer timeOffset];
  }

  return result;
}

- (void)setPlaybackTime:(double)time
{
  isPlaying = [(CRSUICAPackageView *)self isPlaying];
  v6 = 0.0;
  if (isPlaying)
  {
    v6 = CACurrentMediaTime() - time;
    time = 0.0;
  }

  [(CALayer *)self->_rootLayer setBeginTime:v6];
  rootLayer = self->_rootLayer;

  [(CALayer *)rootLayer setTimeOffset:time];
}

@end