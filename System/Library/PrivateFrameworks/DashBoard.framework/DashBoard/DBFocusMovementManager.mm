@interface DBFocusMovementManager
+ (BOOL)isMovementAllowedForHeading:(unint64_t)heading direction:(unint64_t)direction isRTL:(BOOL)l isLeftHandDrive:(BOOL)drive statusBarEdge:(unint64_t)edge supportsClimateOverlayFocus:(BOOL)focus;
+ (BOOL)isOEMToiOSHeadingToStatusBar:(unint64_t)bar isLeftHandDrive:(BOOL)drive statusBarEdge:(unint64_t)edge;
+ (CGRect)convertRect:(CGRect)rect fromView:(id)view toScreen:(id)screen;
+ (CGRect)convertRect:(CGRect)rect toView:(id)view fromScreen:(id)screen;
- (DBEnvironmentConfiguration)environmentConfiguration;
- (DBFocusMovementManager)initWithEnvironmentConfiguration:(id)configuration;
- (void)performHapticFeedbackForSenderID:(unint64_t)d;
@end

@implementation DBFocusMovementManager

- (DBFocusMovementManager)initWithEnvironmentConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v8.receiver = self;
  v8.super_class = DBFocusMovementManager;
  v5 = [(DBFocusMovementManager *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_environmentConfiguration, configurationCopy);
  }

  return v6;
}

+ (BOOL)isMovementAllowedForHeading:(unint64_t)heading direction:(unint64_t)direction isRTL:(BOOL)l isLeftHandDrive:(BOOL)drive statusBarEdge:(unint64_t)edge supportsClimateOverlayFocus:(BOOL)focus
{
  v8 = 32;
  if (l)
  {
    v9 = 16;
  }

  else
  {
    v9 = 32;
  }

  if (!l)
  {
    v8 = 16;
  }

  if (direction == 2)
  {
    if (edge <= 2)
    {
      v10 = qword_24839BD58[edge];
      return (v10 & heading) != 0;
    }

    goto LABEL_34;
  }

  if (direction != 1)
  {
    if (!direction)
    {
      if (edge <= 1)
      {
        if (edge)
        {
          v10 = 34;
          if (focus)
          {
            v10 = 50;
          }

          v11 = edge == 1;
          goto LABEL_17;
        }

        goto LABEL_29;
      }

      if (edge == 3)
      {
        v10 = 33;
        return (v10 & heading) != 0;
      }

      if (edge == 2)
      {
LABEL_29:
        v13 = 3;
        if (!focus)
        {
          v13 = 0;
        }

        v14 = v8 | v13 | 8;
        v10 = v9 | v13 | 4;
        if (!drive)
        {
          v10 = v14;
        }

        return (v10 & heading) != 0;
      }
    }

LABEL_34:
    v10 = 0;
    return (v10 & heading) != 0;
  }

  if (edge > 1)
  {
    if (edge == 3)
    {
      v10 = 18;
      return (v10 & heading) != 0;
    }

    if (edge != 2)
    {
      goto LABEL_34;
    }
  }

  else if (edge)
  {
    v11 = edge == 1;
    v10 = 17;
LABEL_17:
    if (!v11)
    {
      v10 = 0;
    }

    return (v10 & heading) != 0;
  }

  v10 = v9 | focus | 4;
  v12 = v8 | focus | 8;
  if (drive)
  {
    v10 = v12;
  }

  return (v10 & heading) != 0;
}

+ (BOOL)isOEMToiOSHeadingToStatusBar:(unint64_t)bar isLeftHandDrive:(BOOL)drive statusBarEdge:(unint64_t)edge
{
  if (bar == 8 && edge == 2 && drive || bar == 4 && edge == 2 && !drive)
  {
    return 1;
  }

  return bar == 1 && edge == 1;
}

+ (CGRect)convertRect:(CGRect)rect fromView:(id)view toScreen:(id)screen
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  screenCopy = screen;
  viewCopy = view;
  [screenCopy scale];
  v13 = v12;
  fixedCoordinateSpace = [screenCopy fixedCoordinateSpace];

  [viewCopy convertRect:fixedCoordinateSpace toCoordinateSpace:{x, y, width, height}];
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

+ (CGRect)convertRect:(CGRect)rect toView:(id)view fromScreen:(id)screen
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  screenCopy = screen;
  viewCopy = view;
  [screenCopy scale];
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
  fixedCoordinateSpace = [screenCopy fixedCoordinateSpace];

  [viewCopy convertRect:fixedCoordinateSpace fromCoordinateSpace:{v13, v14, v15, v16}];
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

- (void)performHapticFeedbackForSenderID:(unint64_t)d
{
  if (d)
  {
    dCopy = d;
    if (self->_currentSenderID != d)
    {
      environmentConfiguration = [(DBFocusMovementManager *)self environmentConfiguration];
      session = [environmentConfiguration session];

      inputDeviceManager = [session inputDeviceManager];
      v8 = [inputDeviceManager touchpadWithSenderID:dCopy];

      if ([v8 feedbackSupported])
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
        dCopy = 0;
      }

      currentTouchpad = self->_currentTouchpad;
      self->_currentTouchpad = v9;

      self->_currentSenderID = dCopy;
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