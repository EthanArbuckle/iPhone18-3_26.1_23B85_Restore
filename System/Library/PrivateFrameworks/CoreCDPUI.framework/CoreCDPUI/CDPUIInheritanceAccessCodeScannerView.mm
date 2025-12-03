@interface CDPUIInheritanceAccessCodeScannerView
- (CDPUIInheritanceAccessCodeScannerView)initWithFrame:(CGRect)frame;
- (CDPUIInheritanceAccessCodeScannerViewDelegate)delegate;
- (CGRect)_bezierRect;
- (CGRect)_circleRectForCenter:(CGPoint)center;
- (CGSize)lastKnownDimensions;
- (id)_spotOverlayLayerWithBezierRect:(CGRect)rect CircleRect:(CGRect)circleRect;
- (void)_setupLivePreview;
- (void)_setupPreviewIfNeeded;
- (void)captureOutput:(id)output didOutputMetadataObjects:(id)objects fromConnection:(id)connection;
- (void)dealloc;
- (void)didMoveToSuperview;
- (void)layoutSubviews;
@end

@implementation CDPUIInheritanceAccessCodeScannerView

- (CDPUIInheritanceAccessCodeScannerView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = CDPUIInheritanceAccessCodeScannerView;
  v3 = [(CDPUIInheritanceAccessCodeScannerView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CDPUIInheritanceAccessCodeScannerView *)v3 setClipsToBounds:1];
  }

  return v4;
}

- (void)didMoveToSuperview
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_2451DB000, a2, OS_LOG_TYPE_ERROR, "Error creating capture input: %@", &v2, 0xCu);
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = CDPUIInheritanceAccessCodeScannerView;
  [(CDPUIInheritanceAccessCodeScannerView *)&v3 layoutSubviews];
  [(CDPUIInheritanceAccessCodeScannerView *)self _setupLivePreview];
}

- (void)_setupLivePreview
{
  previewLayer = [(CDPUIInheritanceAccessCodeScannerView *)self previewLayer];

  if (!previewLayer)
  {
    v4 = _CDPLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [CDPUIInheritanceAccessCodeScannerView _setupLivePreview];
    }

    v5 = MEMORY[0x277CE5B68];
    captureSession = [(CDPUIInheritanceAccessCodeScannerView *)self captureSession];
    v7 = [v5 layerWithSession:captureSession];
    [(CDPUIInheritanceAccessCodeScannerView *)self setPreviewLayer:v7];

    previewLayer2 = [(CDPUIInheritanceAccessCodeScannerView *)self previewLayer];

    if (previewLayer2)
    {
      v9 = *MEMORY[0x277CE5DD8];
      previewLayer3 = [(CDPUIInheritanceAccessCodeScannerView *)self previewLayer];
      [previewLayer3 setVideoGravity:v9];

      layer = [(CDPUIInheritanceAccessCodeScannerView *)self layer];
      previewLayer4 = [(CDPUIInheritanceAccessCodeScannerView *)self previewLayer];
      [layer addSublayer:previewLayer4];

      layer2 = [(CDPUIInheritanceAccessCodeScannerView *)self layer];
      [layer2 setCornerRadius:20.0];

      objc_initWeak(&location, self);
      v14 = dispatch_get_global_queue(0, 0);
      v15 = MEMORY[0x277D85DD0];
      v16 = 3221225472;
      v17 = __58__CDPUIInheritanceAccessCodeScannerView__setupLivePreview__block_invoke;
      v18 = &unk_278E2B4B0;
      objc_copyWeak(&v19, &location);
      dispatch_async(v14, &v15);

      objc_destroyWeak(&v19);
      objc_destroyWeak(&location);
    }
  }

  [(CDPUIInheritanceAccessCodeScannerView *)self _setupPreviewIfNeeded:v15];
}

void __58__CDPUIInheritanceAccessCodeScannerView__setupLivePreview__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained captureSession];
    [v3 startRunning];

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__CDPUIInheritanceAccessCodeScannerView__setupLivePreview__block_invoke_2;
    block[3] = &unk_278E2AF90;
    v5 = v2;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __58__CDPUIInheritanceAccessCodeScannerView__setupLivePreview__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [*(a1 + 32) previewLayer];
  [v10 setFrame:{v3, v5, v7, v9}];
}

- (void)_setupPreviewIfNeeded
{
  [(CDPUIInheritanceAccessCodeScannerView *)self lastKnownDimensions];
  v4 = v3;
  v6 = v5;
  [(CDPUIInheritanceAccessCodeScannerView *)self bounds];
  if (v4 != v8 || v6 != v7)
  {
    v10 = _CDPLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [CDPUIInheritanceAccessCodeScannerView _setupPreviewIfNeeded];
    }

    spotlightLayer = [(CDPUIInheritanceAccessCodeScannerView *)self spotlightLayer];

    if (spotlightLayer)
    {
      spotlightLayer2 = [(CDPUIInheritanceAccessCodeScannerView *)self spotlightLayer];
      [spotlightLayer2 removeFromSuperlayer];
    }

    [(CDPUIInheritanceAccessCodeScannerView *)self _bezierRect];
    x = v28.origin.x;
    y = v28.origin.y;
    width = v28.size.width;
    height = v28.size.height;
    MidX = CGRectGetMidX(v28);
    v29.origin.x = x;
    v29.origin.y = y;
    v29.size.width = width;
    v29.size.height = height;
    [(CDPUIInheritanceAccessCodeScannerView *)self _circleRectForCenter:MidX, CGRectGetMidY(v29)];
    v22 = [(CDPUIInheritanceAccessCodeScannerView *)self _spotOverlayLayerWithBezierRect:x CircleRect:y, width, height, v18, v19, v20, v21];
    [(CDPUIInheritanceAccessCodeScannerView *)self setSpotlightLayer:v22];

    layer = [(CDPUIInheritanceAccessCodeScannerView *)self layer];
    spotlightLayer3 = [(CDPUIInheritanceAccessCodeScannerView *)self spotlightLayer];
    previewLayer = [(CDPUIInheritanceAccessCodeScannerView *)self previewLayer];
    [layer insertSublayer:spotlightLayer3 above:previewLayer];

    [(CDPUIInheritanceAccessCodeScannerView *)self bounds];
    [(CDPUIInheritanceAccessCodeScannerView *)self setLastKnownDimensions:v26, v27];
  }
}

- (id)_spotOverlayLayerWithBezierRect:(CGRect)rect CircleRect:(CGRect)circleRect
{
  height = circleRect.size.height;
  width = circleRect.size.width;
  y = circleRect.origin.y;
  x = circleRect.origin.x;
  v8 = [MEMORY[0x277D75208] bezierPathWithRect:{rect.origin.x, rect.origin.y, rect.size.width, rect.size.height}];
  v9 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:x cornerRadius:{y, width, height, 90.0}];
  [v8 appendPath:v9];
  [v8 setUsesEvenOddFillRule:1];
  layer = [MEMORY[0x277CD9F90] layer];
  [layer setPath:{objc_msgSend(v8, "CGPath")}];
  [layer setFillRule:*MEMORY[0x277CDA248]];
  blackColor = [MEMORY[0x277D75348] blackColor];
  [layer setFillColor:{objc_msgSend(blackColor, "CGColor")}];

  systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  [layer setStrokeColor:{objc_msgSend(systemBlueColor, "CGColor")}];

  [layer setLineWidth:2.0];
  LODWORD(v13) = *"333?";
  [layer setOpacity:v13];

  return layer;
}

- (CGRect)_circleRectForCenter:(CGPoint)center
{
  v3 = center.x + -90.0;
  v4 = center.y + -90.0;
  v5 = 180.0;
  v6 = 180.0;
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)_bezierRect
{
  [(CDPUIInheritanceAccessCodeScannerView *)self bounds];
  v4 = v3 + 2.0;
  [(CDPUIInheritanceAccessCodeScannerView *)self bounds];
  v6 = v5 + 2.0;
  v7 = -1.0;
  v8 = -1.0;
  v9 = v4;
  result.size.height = v6;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (void)dealloc
{
  captureSession = [(CDPUIInheritanceAccessCodeScannerView *)self captureSession];
  [captureSession stopRunning];

  [(CDPUIInheritanceAccessCodeScannerView *)self setCaptureSession:0];
  v4.receiver = self;
  v4.super_class = CDPUIInheritanceAccessCodeScannerView;
  [(CDPUIInheritanceAccessCodeScannerView *)&v4 dealloc];
}

- (void)captureOutput:(id)output didOutputMetadataObjects:(id)objects fromConnection:(id)connection
{
  objectsCopy = objects;
  v7 = _CDPLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [CDPUIInheritanceAccessCodeScannerView captureOutput:didOutputMetadataObjects:fromConnection:];
  }

  firstObject = [objectsCopy firstObject];

  type = [firstObject type];
  if (type != *MEMORY[0x277CE5A80])
  {
    goto LABEL_4;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_5;
  }

  type = firstObject;
  stringValue = [type stringValue];
  if (![stringValue length])
  {
    goto LABEL_10;
  }

  delegate = [(CDPUIInheritanceAccessCodeScannerView *)self delegate];
  stringValue2 = [type stringValue];
  v14 = [delegate accessCodeScanner:self didScanCode:stringValue2];

  if (v14)
  {
    stringValue = [(CDPUIInheritanceAccessCodeScannerView *)self captureSession];
    [stringValue stopRunning];
LABEL_10:
  }

LABEL_4:

LABEL_5:
}

- (CDPUIInheritanceAccessCodeScannerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)lastKnownDimensions
{
  width = self->_lastKnownDimensions.width;
  height = self->_lastKnownDimensions.height;
  result.height = height;
  result.width = width;
  return result;
}

@end