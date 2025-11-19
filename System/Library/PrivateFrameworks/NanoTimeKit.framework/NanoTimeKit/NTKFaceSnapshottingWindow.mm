@interface NTKFaceSnapshottingWindow
- (NTKFaceSnapshottingWindow)init;
- (void)updateForDevice:(id)a3;
@end

@implementation NTKFaceSnapshottingWindow

- (NTKFaceSnapshottingWindow)init
{
  v5.receiver = self;
  v5.super_class = NTKFaceSnapshottingWindow;
  v2 = [(NTKFaceSnapshottingWindow *)&v5 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v2)
  {
    v3 = [MEMORY[0x277D75348] blackColor];
    [(NTKFaceSnapshottingWindow *)v2 setBackgroundColor:v3];

    [(NTKFaceSnapshottingWindow *)v2 setOpaque:1];
  }

  return v2;
}

- (void)updateForDevice:(id)a3
{
  v4 = a3;
  [v4 screenBounds];
  [(NTKFaceSnapshottingWindow *)self setFrame:?];
  [v4 screenScale];
  v6 = v5;

  [(NTKFaceSnapshottingWindow *)self setContentScaleFactor:v6];
}

@end