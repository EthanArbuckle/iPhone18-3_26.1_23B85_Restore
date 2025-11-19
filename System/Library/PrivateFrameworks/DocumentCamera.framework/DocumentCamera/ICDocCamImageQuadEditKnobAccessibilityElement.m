@interface ICDocCamImageQuadEditKnobAccessibilityElement
- (CALayer)knobLayer;
- (CGRect)accessibilityFrame;
- (ICDocCamImageQuadEditKnobAccessibilityElement)initWithKnobLayer:(id)a3 overlayView:(id)a4;
- (ICDocCamImageQuadEditOverlay)overlayView;
- (id)accessibilityLabel;
@end

@implementation ICDocCamImageQuadEditKnobAccessibilityElement

- (ICDocCamImageQuadEditKnobAccessibilityElement)initWithKnobLayer:(id)a3 overlayView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = ICDocCamImageQuadEditKnobAccessibilityElement;
  v8 = [(ICDocCamImageQuadEditKnobAccessibilityElement *)&v11 initWithAccessibilityContainer:v7];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_knobLayer, v6);
    objc_storeWeak(&v9->_overlayView, v7);
  }

  return v9;
}

- (id)accessibilityLabel
{
  v3 = [(ICDocCamImageQuadEditKnobAccessibilityElement *)self overlayView];
  v4 = [v3 accessibilityElements];

  if (![v4 count])
  {
    goto LABEL_11;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  do
  {
    v8 = [v4 objectAtIndexedSubscript:v7];

    if (v8 != self)
    {
      [(ICDocCamImageQuadEditKnobAccessibilityElement *)self accessibilityFrame];
      v10 = v9;
      v11 = [v4 objectAtIndexedSubscript:v7];
      [v11 accessibilityFrame];
      v13 = v12;

      if (v10 > v13)
      {
        ++v5;
      }

      [(ICDocCamImageQuadEditKnobAccessibilityElement *)self accessibilityFrame];
      v15 = v14;
      v16 = [v4 objectAtIndexedSubscript:v7];
      [v16 accessibilityFrame];
      v18 = v17;

      if (v15 > v18)
      {
        ++v6;
      }
    }

    ++v7;
  }

  while (v7 < [v4 count]);
  if (v5 >= 2)
  {
    if (v6 > 1)
    {
      v19 = @"bottom-right crop handle";
    }

    else
    {
      v19 = @"top-right crop handle";
    }
  }

  else
  {
    if (v6 <= 1)
    {
LABEL_11:
      v19 = @"top-left crop handle";
      goto LABEL_16;
    }

    v19 = @"bottom-left crop handle";
  }

LABEL_16:
  v20 = [DCLocalization localizedStringForKey:v19 value:v19 table:@"Localizable"];

  return v20;
}

- (CGRect)accessibilityFrame
{
  v2 = [(ICDocCamImageQuadEditKnobAccessibilityElement *)self knobLayer];
  [v2 accessibilityFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v18.origin.x = v4;
  v18.origin.y = v6;
  v18.size.width = v8;
  v18.size.height = v10;
  v11 = -CGRectGetWidth(v18);
  v19.origin.x = v4;
  v19.origin.y = v6;
  v19.size.width = v8;
  v19.size.height = v10;
  v12 = -CGRectGetHeight(v19);
  v13 = v4;
  v14 = v6;
  v15 = v8;
  v16 = v10;

  return CGRectInset(*&v13, v11, v12);
}

- (CALayer)knobLayer
{
  WeakRetained = objc_loadWeakRetained(&self->_knobLayer);

  return WeakRetained;
}

- (ICDocCamImageQuadEditOverlay)overlayView
{
  WeakRetained = objc_loadWeakRetained(&self->_overlayView);

  return WeakRetained;
}

@end