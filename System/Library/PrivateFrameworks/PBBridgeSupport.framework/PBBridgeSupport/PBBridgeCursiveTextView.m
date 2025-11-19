@interface PBBridgeCursiveTextView
- (CGRect)boundingBoxOfTextPath;
- (PBBridgeCursiveTextView)initWithFrame:(CGRect)a3;
- (float)duration;
- (void)configure;
- (void)layoutSubviews;
- (void)loadText:(id)a3 pointSize:(double)a4 options:(id)a5;
- (void)setTime:(double)a3;
@end

@implementation PBBridgeCursiveTextView

- (PBBridgeCursiveTextView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PBBridgeCursiveTextView;
  v3 = [(PBBridgeCursiveTextView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PBBridgeCursiveTextView *)v3 configure];
  }

  return v4;
}

- (void)configure
{
  v3 = objc_alloc_init(MEMORY[0x277CD9F90]);
  textLayer = self->_textLayer;
  self->_textLayer = v3;

  [(PBBridgeCursiveTextView *)self frame];
  [(CAShapeLayer *)self->_textLayer setFrame:?];
  v5 = [MEMORY[0x277D75348] whiteColor];
  -[CAShapeLayer setFillColor:](self->_textLayer, "setFillColor:", [v5 CGColor]);

  v6 = [(PBBridgeCursiveTextView *)self layer];
  [v6 addSublayer:self->_textLayer];
}

- (void)layoutSubviews
{
  [(PBBridgeCursiveTextView *)self frame];
  textLayer = self->_textLayer;

  [(CAShapeLayer *)textLayer setFrame:?];
}

- (void)loadText:(id)a3 pointSize:(double)a4 options:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [[PBBridgeCursiveTextPath alloc] initWithURL:v8 options:v9];
  textPath = self->_textPath;
  self->_textPath = v10;

  v12 = self->_textPath;
  v13 = pbb_setup_log();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (v14)
    {
      *buf = 138412802;
      *&buf[4] = v8;
      *&buf[12] = 2048;
      *&buf[14] = a4;
      *&buf[22] = 2112;
      *&buf[24] = v9;
      _os_log_impl(&dword_25DE64000, v13, OS_LOG_TYPE_DEFAULT, "Loading text from url: %@ at pointSize: %f with options: %@", buf, 0x20u);
    }

    v15 = self->_textPath;
    [(CAShapeLayer *)self->_textLayer bounds];
    if (v15)
    {
      [PBBridgeCursiveTextPath transformForRect:v15 pointSize:"transformForRect:pointSize:flipped:" flipped:1];
    }

    else
    {
      v23 = 0u;
      memset(buf, 0, sizeof(buf));
    }

    v16 = *&buf[16];
    *&self->_textTransform.a = *buf;
    *&self->_textTransform.c = v16;
    *&self->_textTransform.tx = v23;
    v17 = [(PBBridgeCursiveTextView *)self layer];
    [v17 opacity];
    v19 = v18;

    if (v19 < 1.0)
    {
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __54__PBBridgeCursiveTextView_loadText_pointSize_options___block_invoke;
      v21[3] = &unk_2799F4468;
      v21[4] = self;
      [MEMORY[0x277D75D18] animateWithDuration:v21 animations:1.0];
    }
  }

  else
  {
    if (v14)
    {
      *buf = 0;
      _os_log_impl(&dword_25DE64000, v13, OS_LOG_TYPE_DEFAULT, "No text path", buf, 2u);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __54__PBBridgeCursiveTextView_loadText_pointSize_options___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) layer];
  LODWORD(v1) = 1.0;
  [v2 setOpacity:v1];
}

- (float)duration
{
  textPath = self->_textPath;
  if (!textPath)
  {
    return 0.0;
  }

  [(PBBridgeCursiveTextPath *)textPath animationDuration];
  return result;
}

- (void)setTime:(double)a3
{
  *&a3 = a3;
  v4 = [(PBBridgeCursiveTextPath *)self->_textPath pathForTime:a3];
  v5 = MEMORY[0x25F8A5F50](v4, &self->_textTransform);
  [(CAShapeLayer *)self->_textLayer setPath:v5];
  CGPathRelease(v5);

  CGPathRelease(v4);
}

- (CGRect)boundingBoxOfTextPath
{
  [(PBBridgeCursiveTextPath *)self->_textPath boundingBoxOfPath];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end