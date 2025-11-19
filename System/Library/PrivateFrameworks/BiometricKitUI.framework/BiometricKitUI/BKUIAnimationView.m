@interface BKUIAnimationView
- (double)topOffsetPercentage;
- (void)layoutSubviews;
@end

@implementation BKUIAnimationView

- (double)topOffsetPercentage
{
  v2 = +[BKUIDevice sharedInstance];
  v3 = [v2 isIdiomPad];

  if (v3)
  {
    if ([BKUIUtils activeInterfaceOrientationForView:0]== 4 || [BKUIUtils activeInterfaceOrientationForView:0]== 3)
    {
      v4 = +[BKUIDevice sharedInstance];
      v5 = [v4 isMini];

      if (v5)
      {
        v6 = 0.806399985;
      }

      else
      {
        v6 = 0.778899985;
      }

      v7 = +[BKUIDevice sharedInstance];
      v8 = [v7 isPad6];

      if (v8)
      {
        v6 = v6 + -0.026;
      }

      v9 = +[BKUIDevice sharedInstance];
      v10 = [v9 isIPad2];

      if (v10)
      {
        v6 = v6 + 0.026;
      }

      v11 = +[BKUIDevice sharedInstance];
      v12 = [v11 isiPad21];

      v13 = 0.01;
    }

    else
    {
      v21 = +[BKUIDevice sharedInstance];
      v22 = [v21 isMini];

      if (v22)
      {
        v6 = 0.803499985;
      }

      else
      {
        v6 = 0.753499985;
      }

      v23 = +[BKUIDevice sharedInstance];
      v24 = [v23 isPad7];

      if (v24)
      {
        v6 = v6 + 0.025;
      }

      v25 = +[BKUIDevice sharedInstance];
      v26 = [v25 isIPad2];

      if (v26)
      {
        v6 = v6 + 0.051;
      }

      v27 = +[BKUIDevice sharedInstance];
      v12 = [v27 isiPad21];

      v13 = 0.0324;
    }
  }

  else
  {
    v14 = +[BKUIDevice sharedInstance];
    v15 = [v14 isZoomEnabled];

    if (v15)
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
    v18 = [v17 isN69];

    if (v18)
    {
      v6 = v6 + -0.0419999994;
    }

    v19 = +[BKUIDevice sharedInstance];
    v12 = [v19 isD10];

    v13 = -0.0199999996;
  }

  result = v6 + v13;
  if (!v12)
  {
    return v6;
  }

  return result;
}

- (void)layoutSubviews
{
  v3 = [(BKUIAnimationView *)self layer];
  [v3 setMasksToBounds:0];

  v4 = [(BKUIAnimationView *)self layer];
  v5 = [v4 sublayers];
  v6 = [v5 firstObject];

  [(BKUIAnimationView *)self bounds];
  v8 = v7 * 0.5;
  [(BKUIAnimationView *)self bounds];
  [v6 setPosition:{v8, v9 * 0.5}];
  v10 = +[BKUIDevice sharedInstance];
  LODWORD(v4) = [v10 isIdiomPad];

  if (!v4)
  {
    v11 = +[BKUIDevice sharedInstance];
    v12 = [v11 isN69];

    if (v12)
    {
      v13 = 0.349999994;
      if (v6)
      {
LABEL_6:
        [v6 contentsTransform];
LABEL_12:
        v16 = v13;
        v17 = v13;
        goto LABEL_15;
      }
    }

    else
    {
      v14 = +[BKUIDevice sharedInstance];
      v15 = [v14 isD10];

      if (v15)
      {
        v13 = 0.400000006;
      }

      else
      {
        v13 = 0.449999988;
      }

      if (v6)
      {
        goto LABEL_6;
      }
    }

    memset(&v18, 0, sizeof(v18));
    goto LABEL_12;
  }

  if (v6)
  {
    [v6 contentsTransform];
  }

  else
  {
    memset(&v18, 0, sizeof(v18));
  }

  v16 = 0.3;
  v17 = 0.3;
LABEL_15:
  CGAffineTransformScale(&v19, &v18, v16, v17);
  [v6 setAffineTransform:&v19];
}

@end