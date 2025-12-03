@interface CKMapBalloonView
- (CKMapBalloonView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation CKMapBalloonView

- (CKMapBalloonView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = CKMapBalloonView;
  v3 = [(CKTitledImageBalloonView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = MEMORY[0x193AF5EC0](@"MKMarkerAnnotationView", @"MapKit");
    if (v4)
    {
      v5 = [[v4 alloc] initWithAnnotation:0 reuseIdentifier:@"TranscriptReuse"];
      [(CKMapBalloonView *)v3 addSubview:v5];
      [(CKMapBalloonView *)v3 setAnnotationView:v5];
    }
  }

  return v3;
}

- (void)layoutSubviews
{
  v22.receiver = self;
  v22.super_class = CKMapBalloonView;
  [(CKTitledImageBalloonView *)&v22 layoutSubviews];
  [(CKMapBalloonView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  annotationView = [(CKMapBalloonView *)self annotationView];
  [(CKMapBalloonView *)self bringSubviewToFront:annotationView];
  [annotationView sizeToFit];
  [annotationView frame];
  v13 = v12;
  v15 = v14;
  if (CKMainScreenScale_once_71 != -1)
  {
    [CKMapBalloonView layoutSubviews];
  }

  v16 = *&CKMainScreenScale_sMainScreenScale_71;
  if (*&CKMainScreenScale_sMainScreenScale_71 == 0.0)
  {
    v16 = 1.0;
  }

  v17 = floor((v4 + (v8 - v13) * 0.5) * v16) / v16;
  v18 = floor((v6 + (v10 - v15) * 0.5) * v16) / v16;
  v23.origin.x = v17;
  v23.origin.y = v18;
  v23.size.width = v13;
  v23.size.height = v15;
  MaxY = CGRectGetMaxY(v23);
  v24.origin.x = v17;
  v24.origin.y = v18;
  v24.size.width = v13;
  v24.size.height = v15;
  CGRectGetMidX(v24);
  v25.origin.x = v17;
  v25.origin.y = v18;
  v25.size.width = v13;
  v25.size.height = v15;
  v20 = v18 - (MaxY - CGRectGetMidY(v25));
  annotationView2 = [(CKMapBalloonView *)self annotationView];
  [annotationView2 setFrame:{v17, v20, v13, v15}];
}

@end