@interface CAMZoomSliderUtilities
+ (void)layoutZoomSlider:(CGFloat)slider forLayoutStyle:(CGFloat)style bottomBarAlignmentRect:(CGFloat)rect bottomBarTransparent:(CGFloat)transparent shutterButtonAlignmentRect:(CGFloat)alignmentRect previewViewAlignmentRect:(CGFloat)viewAlignmentRect viewfinderViewAlignmentRect:(uint64_t)viewfinderViewAlignmentRect;
+ (void)layoutZoomSlider:(id)slider forLayoutStyle:(int64_t)style bottomBar:(id)bar previewView:(id)view viewfinderView:(id)viewfinderView;
@end

@implementation CAMZoomSliderUtilities

+ (void)layoutZoomSlider:(id)slider forLayoutStyle:(int64_t)style bottomBar:(id)bar previewView:(id)view viewfinderView:(id)viewfinderView
{
  viewfinderViewCopy = viewfinderView;
  viewCopy = view;
  barCopy = bar;
  sliderCopy = slider;
  superview = [sliderCopy superview];
  v16 = [barCopy backgroundStyle] == 1;
  [barCopy layoutIfNeeded];
  shutterButton = [barCopy shutterButton];
  [shutterButton frame];
  [shutterButton alignmentRectForFrame:?];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  superview2 = [shutterButton superview];
  [superview2 convertRect:superview toView:{v19, v21, v23, v25}];
  v57 = v28;
  v58 = v27;
  v55 = v30;
  v56 = v29;

  [barCopy bounds];
  [barCopy convertRect:superview toView:?];
  v53 = v32;
  v54 = v31;
  v51 = v34;
  v52 = v33;

  [viewCopy bounds];
  [viewCopy convertRect:superview toView:?];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;

  [viewfinderViewCopy bounds];
  [viewfinderViewCopy convertRect:superview toView:?];
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;

  [self layoutZoomSlider:sliderCopy forLayoutStyle:style bottomBarAlignmentRect:v16 bottomBarTransparent:v54 shutterButtonAlignmentRect:v53 previewViewAlignmentRect:v52 viewfinderViewAlignmentRect:{v51, v58, v57, v56, v55, v36, v38, v40, v42, v44, v46, v48, v50}];
}

+ (void)layoutZoomSlider:(CGFloat)slider forLayoutStyle:(CGFloat)style bottomBarAlignmentRect:(CGFloat)rect bottomBarTransparent:(CGFloat)transparent shutterButtonAlignmentRect:(CGFloat)alignmentRect previewViewAlignmentRect:(CGFloat)viewAlignmentRect viewfinderViewAlignmentRect:(uint64_t)viewfinderViewAlignmentRect
{
  v34 = a11;
  v35 = [CAMBottomBar wantsVerticalBarForLayoutStyle:a12];
  v57.origin.x = self;
  v57.origin.y = a2;
  styleCopy = style;
  v57.size.width = slider;
  v57.size.height = style;
  IsEmpty = CGRectIsEmpty(v57);
  v58.origin.x = rect;
  v58.origin.y = transparent;
  v58.size.width = alignmentRect;
  v58.size.height = viewAlignmentRect;
  v37 = CGRectIsEmpty(v58);
  v38 = [v34 minimumTrackImageForState:0];
  [v38 size];
  v40 = *(MEMORY[0x1E695EFD0] + 16);
  *&v56.a = *MEMORY[0x1E695EFD0];
  *&v56.c = v40;
  *&v56.tx = *(MEMORY[0x1E695EFD0] + 32);
  if (!v35)
  {
    v53 = v39;
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    v45 = 1.0 / v50 * 2.0 + 35.0;

    if ((IsEmpty | a13))
    {
      if (v37)
      {
        v61.size.width = a16;
        v61.size.height = a17;
        v61.origin.x = a14;
        v61.origin.y = a15;
        MaxY = CGRectGetMaxY(v61);
        v44 = 20.0;
        v45 = 10.0;
LABEL_9:
        v48 = 30.0;
        v64.origin.x = a18;
        v64.origin.y = a19;
        v64.size.width = a20;
        v64.size.height = a21;
        MinX = CGRectGetMinX(v64);
        v65.origin.y = a19;
        v41 = MinX;
        v65.origin.x = a18;
        v65.size.width = a20;
        v65.size.height = a21;
        Width = CGRectGetWidth(v65);
        v47 = v45 + v53 + 30.0;
        v43 = MaxY - v47;
        goto LABEL_10;
      }

      v63.origin.x = rect;
      v63.origin.y = transparent;
      v63.size.width = alignmentRect;
      v63.size.height = viewAlignmentRect;
      MaxY = CGRectGetMinY(v63);
    }

    else
    {
      v62.origin.x = self;
      v62.origin.y = a2;
      v62.size.width = slider;
      v62.size.height = styleCopy;
      MaxY = CGRectGetMinY(v62) + 10.0;
      v45 = v45 + 10.0;
    }

    v44 = 20.0;
    goto LABEL_9;
  }

  CGAffineTransformMakeRotation(&v55, -1.57079633);
  UIIntegralTransform();
  v59.origin.x = a18;
  v59.origin.y = a19;
  v59.size.width = a20;
  v59.size.height = a21;
  v41 = CGRectGetMinX(v59);
  v60.origin.x = a18;
  v60.origin.y = a19;
  v60.size.width = a20;
  v60.size.height = a21;
  CGRectGetHeight(v60);
  UIRoundToViewScale();
  v43 = v42;
  v44 = 25.0;
  v45 = 0.0;
  Width = 64.0;
  v47 = 320.0;
  v48 = 0.0;
LABEL_10:
  [v34 setAlignmentRectInsets:{v48, v44, v45, v44}];
  v55 = v56;
  [v34 setTransform:&v55];
  [v34 setFrame:{v41, v43, Width, v47}];
}

@end