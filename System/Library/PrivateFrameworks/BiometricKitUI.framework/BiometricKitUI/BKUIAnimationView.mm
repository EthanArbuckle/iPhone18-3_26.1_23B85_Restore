@interface BKUIAnimationView
- (double)topOffsetPercentage;
- (void)layoutSubviews;
@end

@implementation BKUIAnimationView

- (double)topOffsetPercentage
{
  v2 = +[BKUIDevice sharedInstance];
  isIdiomPad = [v2 isIdiomPad];

  if (isIdiomPad)
  {
    if ([BKUIUtils activeInterfaceOrientationForView:0]== 4 || [BKUIUtils activeInterfaceOrientationForView:0]== 3)
    {
      v4 = +[BKUIDevice sharedInstance];
      isMini = [v4 isMini];

      if (isMini)
      {
        v6 = 0.806399985;
      }

      else
      {
        v6 = 0.778899985;
      }

      v7 = +[BKUIDevice sharedInstance];
      isPad6 = [v7 isPad6];

      if (isPad6)
      {
        v6 = v6 + -0.026;
      }

      v9 = +[BKUIDevice sharedInstance];
      isIPad2 = [v9 isIPad2];

      if (isIPad2)
      {
        v6 = v6 + 0.026;
      }

      v11 = +[BKUIDevice sharedInstance];
      isiPad21 = [v11 isiPad21];

      v13 = 0.01;
    }

    else
    {
      v21 = +[BKUIDevice sharedInstance];
      isMini2 = [v21 isMini];

      if (isMini2)
      {
        v6 = 0.803499985;
      }

      else
      {
        v6 = 0.753499985;
      }

      v23 = +[BKUIDevice sharedInstance];
      isPad7 = [v23 isPad7];

      if (isPad7)
      {
        v6 = v6 + 0.025;
      }

      v25 = +[BKUIDevice sharedInstance];
      isIPad22 = [v25 isIPad2];

      if (isIPad22)
      {
        v6 = v6 + 0.051;
      }

      v27 = +[BKUIDevice sharedInstance];
      isiPad21 = [v27 isiPad21];

      v13 = 0.0324;
    }
  }

  else
  {
    v14 = +[BKUIDevice sharedInstance];
    isZoomEnabled = [v14 isZoomEnabled];

    if (isZoomEnabled)
    {
      v6 = 0.598000009;
    }

    else
    {
      v16 = _BKUILoggingFacility();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *v28 = 0;
        _os_log_impl(&dword_241B0A000, v16, OS_LOG_TYPE_DEFAULT, "Unable to determine displayzoom as DisplayAndBrightnessSettings is not available", v28, 2u);
      }

      v6 = 0.61500001;
    }

    v17 = +[BKUIDevice sharedInstance];
    isN69 = [v17 isN69];

    if (isN69)
    {
      v6 = v6 + -0.0419999994;
    }

    v19 = +[BKUIDevice sharedInstance];
    isiPad21 = [v19 isD10];

    v13 = -0.0199999996;
  }

  result = v6 + v13;
  if (!isiPad21)
  {
    return v6;
  }

  return result;
}

- (void)layoutSubviews
{
  layer = [(BKUIAnimationView *)self layer];
  [layer setMasksToBounds:0];

  layer2 = [(BKUIAnimationView *)self layer];
  sublayers = [layer2 sublayers];
  firstObject = [sublayers firstObject];

  [(BKUIAnimationView *)self bounds];
  v8 = v7 * 0.5;
  [(BKUIAnimationView *)self bounds];
  [firstObject setPosition:{v8, v9 * 0.5}];
  v10 = +[BKUIDevice sharedInstance];
  LODWORD(layer2) = [v10 isIdiomPad];

  if (!layer2)
  {
    v11 = +[BKUIDevice sharedInstance];
    isN69 = [v11 isN69];

    if (isN69)
    {
      v13 = 0.349999994;
      if (firstObject)
      {
LABEL_6:
        [firstObject contentsTransform];
LABEL_12:
        v16 = v13;
        v17 = v13;
        goto LABEL_15;
      }
    }

    else
    {
      v14 = +[BKUIDevice sharedInstance];
      isD10 = [v14 isD10];

      if (isD10)
      {
        v13 = 0.400000006;
      }

      else
      {
        v13 = 0.449999988;
      }

      if (firstObject)
      {
        goto LABEL_6;
      }
    }

    memset(&v18, 0, sizeof(v18));
    goto LABEL_12;
  }

  if (firstObject)
  {
    [firstObject contentsTransform];
  }

  else
  {
    memset(&v18, 0, sizeof(v18));
  }

  v16 = 0.3;
  v17 = 0.3;
LABEL_15:
  CGAffineTransformScale(&v19, &v18, v16, v17);
  [firstObject setAffineTransform:&v19];
}

@end