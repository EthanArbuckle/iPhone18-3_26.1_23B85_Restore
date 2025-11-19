@interface DBFocusMovementManager
+ (BOOL)isMovementAllowedForHeading:(unint64_t)a3 direction:(unint64_t)a4 isRTL:(BOOL)a5 isLeftHandDrive:(BOOL)a6 statusBarEdge:(unint64_t)a7 supportsClimateOverlayFocus:(BOOL)a8;
+ (BOOL)isOEMToiOSHeadingToStatusBar:(unint64_t)a3 isLeftHandDrive:(BOOL)a4 statusBarEdge:(unint64_t)a5;
+ (CGRect)convertRect:(CGRect)a3 fromView:(id)a4 toScreen:(id)a5;
+ (CGRect)convertRect:(CGRect)a3 toView:(id)a4 fromScreen:(id)a5;
- (DBEnvironmentConfiguration)environmentConfiguration;
- (DBFocusMovementManager)initWithEnvironmentConfiguration:(id)a3;
- (void)performHapticFeedbackForSenderID:(unint64_t)a3;
@end

@implementation DBFocusMovementManager

- (DBFocusMovementManager)initWithEnvironmentConfiguration:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = DBFocusMovementManager;
  v5 = [(DBFocusMovementManager *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_environmentConfiguration, v4);
  }

  return v6;
}

+ (BOOL)isMovementAllowedForHeading:(unint64_t)a3 direction:(unint64_t)a4 isRTL:(BOOL)a5 isLeftHandDrive:(BOOL)a6 statusBarEdge:(unint64_t)a7 supportsClimateOverlayFocus:(BOOL)a8
{
  v8 = 32;
  if (a5)
  {
    v9 = 16;
  }

  else
  {
    v9 = 32;
  }

  if (!a5)
  {
    v8 = 16;
  }

  if (a4 == 2)
  {
    if (a7 <= 2)
    {
      v10 = qword_24839BD58[a7];
      return (v10 & a3) != 0;
    }

    goto LABEL_34;
  }

  if (a4 != 1)
  {
    if (!a4)
    {
      if (a7 <= 1)
      {
        if (a7)
        {
          v10 = 34;
          if (a8)
          {
            v10 = 50;
          }

          v11 = a7 == 1;
          goto LABEL_17;
        }

        goto LABEL_29;
      }

      if (a7 == 3)
      {
        v10 = 33;
        return (v10 & a3) != 0;
      }

      if (a7 == 2)
      {
LABEL_29:
        v13 = 3;
        if (!a8)
        {
          v13 = 0;
        }

        v14 = v8 | v13 | 8;
        v10 = v9 | v13 | 4;
        if (!a6)
        {
          v10 = v14;
        }

        return (v10 & a3) != 0;
      }
    }

LABEL_34:
    v10 = 0;
    return (v10 & a3) != 0;
  }

  if (a7 > 1)
  {
    if (a7 == 3)
    {
      v10 = 18;
      return (v10 & a3) != 0;
    }

    if (a7 != 2)
    {
      goto LABEL_34;
    }
  }

  else if (a7)
  {
    v11 = a7 == 1;
    v10 = 17;
LABEL_17:
    if (!v11)
    {
      v10 = 0;
    }

    return (v10 & a3) != 0;
  }

  v10 = v9 | a8 | 4;
  v12 = v8 | a8 | 8;
  if (a6)
  {
    v10 = v12;
  }

  return (v10 & a3) != 0;
}

+ (BOOL)isOEMToiOSHeadingToStatusBar:(unint64_t)a3 isLeftHandDrive:(BOOL)a4 statusBarEdge:(unint64_t)a5
{
  if (a3 == 8 && a5 == 2 && a4 || a3 == 4 && a5 == 2 && !a4)
  {
    return 1;
  }

  return a3 == 1 && a5 == 1;
}

+ (CGRect)convertRect:(CGRect)a3 fromView:(id)a4 toScreen:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a5;
  v11 = a4;
  [v10 scale];
  v13 = v12;
  v14 = [v10 fixedCoordinateSpace];

  [v11 convertRect:v14 toCoordinateSpace:{x, y, width, height}];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  CGAffineTransformMakeScale(&v23, v13, v13);
  v24.origin.x = v16;
  v24.origin.y = v18;
  v24.size.width = v20;
  v24.size.height = v22;
  return CGRectApplyAffineTransform(v24, &v23);
}

+ (CGRect)convertRect:(CGRect)a3 toView:(id)a4 fromScreen:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a5;
  v11 = a4;
  [v10 scale];
  CGAffineTransformMakeScale(&v30, 1.0 / v12, 1.0 / v12);
  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  v32 = CGRectApplyAffineTransform(v31, &v30);
  v13 = v32.origin.x;
  v14 = v32.origin.y;
  v15 = v32.size.width;
  v16 = v32.size.height;
  v17 = [v10 fixedCoordinateSpace];

  [v11 convertRect:v17 fromCoordinateSpace:{v13, v14, v15, v16}];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v26 = v19;
  v27 = v21;
  v28 = v23;
  v29 = v25;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (void)performHapticFeedbackForSenderID:(unint64_t)a3
{
  if (a3)
  {
    v3 = a3;
    if (self->_currentSenderID != a3)
    {
      v5 = [(DBFocusMovementManager *)self environmentConfiguration];
      v6 = [v5 session];

      v7 = [v6 inputDeviceManager];
      v8 = [v7 touchpadWithSenderID:v3];

      if ([v8 feedbackSupported])
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
        v3 = 0;
      }

      currentTouchpad = self->_currentTouchpad;
      self->_currentTouchpad = v9;

      self->_currentSenderID = v3;
    }

    v11 = self->_currentTouchpad;

    [(CARInputDeviceTouchpad *)v11 performFeedbackOfType:1];
  }
}

- (DBEnvironmentConfiguration)environmentConfiguration
{
  WeakRetained = objc_loadWeakRetained(&self->_environmentConfiguration);

  return WeakRetained;
}

@end