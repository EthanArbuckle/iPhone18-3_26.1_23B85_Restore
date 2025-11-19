@interface CDPUIInheritanceAccessCodeScannerView
- (CDPUIInheritanceAccessCodeScannerView)initWithFrame:(CGRect)a3;
- (CDPUIInheritanceAccessCodeScannerViewDelegate)delegate;
- (CGRect)_bezierRect;
- (CGRect)_circleRectForCenter:(CGPoint)a3;
- (CGSize)lastKnownDimensions;
- (id)_spotOverlayLayerWithBezierRect:(CGRect)a3 CircleRect:(CGRect)a4;
- (void)_setupLivePreview;
- (void)_setupPreviewIfNeeded;
- (void)captureOutput:(id)a3 didOutputMetadataObjects:(id)a4 fromConnection:(id)a5;
- (void)dealloc;
- (void)didMoveToSuperview;
- (void)layoutSubviews;
@end

@implementation CDPUIInheritanceAccessCodeScannerView

- (CDPUIInheritanceAccessCodeScannerView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = CDPUIInheritanceAccessCodeScannerView;
  v3 = [(CDPUIInheritanceAccessCodeScannerView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v3 = a1;
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
  v3 = [(CDPUIInheritanceAccessCodeScannerView *)self previewLayer];

  if (!v3)
  {
    v4 = _CDPLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [CDPUIInheritanceAccessCodeScannerView _setupLivePreview];
    }

    v5 = MEMORY[0x277CE5B68];
    v6 = [(CDPUIInheritanceAccessCodeScannerView *)self captureSession];
    v7 = [v5 layerWithSession:v6];
    [(CDPUIInheritanceAccessCodeScannerView *)self setPreviewLayer:v7];

    v8 = [(CDPUIInheritanceAccessCodeScannerView *)self previewLayer];

    if (v8)
    {
      v9 = *MEMORY[0x277CE5DD8];
      v10 = [(CDPUIInheritanceAccessCodeScannerView *)self previewLayer];
      [v10 setVideoGravity:v9];

      v11 = [(CDPUIInheritanceAccessCodeScannerView *)self layer];
      v12 = [(CDPUIInheritanceAccessCodeScannerView *)self previewLayer];
      [v11 addSublayer:v12];

      v13 = [(CDPUIInheritanceAccessCodeScannerView *)self layer];
      [v13 setCornerRadius:20.0];

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

    v11 = [(CDPUIInheritanceAccessCodeScannerView *)self spotlightLayer];

    if (v11)
    {
      v12 = [(CDPUIInheritanceAccessCodeScannerView *)self spotlightLayer];
      [v12 removeFromSuperlayer];
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

    v23 = [(CDPUIInheritanceAccessCodeScannerView *)self layer];
    v24 = [(CDPUIInheritanceAccessCodeScannerView *)self spotlightLayer];
    v25 = [(CDPUIInheritanceAccessCodeScannerView *)self previewLayer];
    [v23 insertSublayer:v24 above:v25];

    [(CDPUIInheritanceAccessCodeScannerView *)self bounds];
    [(CDPUIInheritanceAccessCodeScannerView *)self setLastKnownDimensions:v26, v27];
  }
}

- (id)_spotOverlayLayerWithBezierRect:(CGRect)a3 CircleRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = [MEMORY[0x277D75208] bezierPathWithRect:{a3.origin.x, a3.origin.y, a3.size.width, a3.size.height}];
  v9 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:x cornerRadius:{y, width, height, 90.0}];
  [v8 appendPath:v9];
  [v8 setUsesEvenOddFillRule:1];
  v10 = [MEMORY[0x277CD9F90] layer];
  [v10 setPath:{objc_msgSend(v8, "CGPath")}];
  [v10 setFillRule:*MEMORY[0x277CDA248]];
  v11 = [MEMORY[0x277D75348] blackColor];
  [v10 setFillColor:{objc_msgSend(v11, "CGColor")}];

  v12 = [MEMORY[0x277D75348] systemBlueColor];
  [v10 setStrokeColor:{objc_msgSend(v12, "CGColor")}];

  [v10 setLineWidth:2.0];
  LODWORD(v13) = *"333?";
  [v10 setOpacity:v13];

  return v10;
}

- (CGRect)_circleRectForCenter:(CGPoint)a3
{
  v3 = a3.x + -90.0;
  v4 = a3.y + -90.0;
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
  v3 = [(CDPUIInheritanceAccessCodeScannerView *)self captureSession];
  [v3 stopRunning];

  [(CDPUIInheritanceAccessCodeScannerView *)self setCaptureSession:0];
  v4.receiver = self;
  v4.super_class = CDPUIInheritanceAccessCodeScannerView;
  [(CDPUIInheritanceAccessCodeScannerView *)&v4 dealloc];
}

- (void)captureOutput:(id)a3 didOutputMetadataObjects:(id)a4 fromConnection:(id)a5
{
  v6 = a4;
  v7 = _CDPLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [CDPUIInheritanceAccessCodeScannerView captureOutput:didOutputMetadataObjects:fromConnection:];
  }

  v8 = [v6 firstObject];

  v9 = [v8 type];
  if (v9 != *MEMORY[0x277CE5A80])
  {
    goto LABEL_4;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_5;
  }

  v9 = v8;
  v11 = [v9 stringValue];
  if (![v11 length])
  {
    goto LABEL_10;
  }

  v12 = [(CDPUIInheritanceAccessCodeScannerView *)self delegate];
  v13 = [v9 stringValue];
  v14 = [v12 accessCodeScanner:self didScanCode:v13];

  if (v14)
  {
    v11 = [(CDPUIInheritanceAccessCodeScannerView *)self captureSession];
    [v11 stopRunning];
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