@interface DBDashboardLayoutEngine
+ (UIEdgeInsets)insetsForViewArea:(CGRect)a3 statusBarEdge:(unint64_t)a4 environmentConfiguration:(id)a5;
+ (double)dockShortAxisMarginForSafeAreaSize:(CGSize)a3 statusBarEdge:(unint64_t)a4;
- (BOOL)hasEmbeddedSecondaryContentArea;
- (CGRect)_secondaryDockFrameForRightHandDrive:(BOOL)a3 safeAreaFrame:(CGRect)a4;
- (CGRect)areaOfInterestFrameForApplication:(id)a3;
- (CGRect)cameraWindowFrame;
- (CGRect)climateWindowFrame;
- (CGRect)cornerRadiusWindowFrame;
- (CGRect)dockHostSceneFrame;
- (CGRect)dockHostWindowFrame;
- (CGRect)mainWindowFrame;
- (CGRect)notificationWindowFrame;
- (CGRect)primaryDockWindowFrame;
- (CGRect)resizeAnimationWindowFrame;
- (CGRect)sceneFrameForApplication:(id)a3;
- (CGRect)secondaryDockWindowFrame;
- (CGRect)wallpaperHostSceneFrame;
- (CGRect)wallpaperHostWindowFrame;
- (CGRect)wallpaperWindowFrame;
- (DBDashboardLayoutEngine)initWithEnvironmentConfiguration:(id)a3;
- (UIEdgeInsets)_UISafeAreaInsetsWithSafeAreaFrame:(CGRect)a3 secondaryContentFrame:(CGRect)a4;
- (UIEdgeInsets)_adjustedPrimaryDockMargins:(UIEdgeInsets)a3;
- (UIEdgeInsets)_adjustedSecondaryDockMargins:(UIEdgeInsets)a3;
- (UIEdgeInsets)_baseTodayViewInsets;
- (UIEdgeInsets)_dualStatusBarInsets;
- (UIEdgeInsets)_dualStatusBarTodayViewAdjustment:(UIEdgeInsets)a3;
- (UIEdgeInsets)dockMarginsForVariant:(unint64_t)a3;
- (UIEdgeInsets)folderViewAdditionalInsets;
- (UIEdgeInsets)homeViewControllerInsets;
- (UIEdgeInsets)homeViewControllerInsetsWithContentUnderDock:(BOOL)a3;
- (UIEdgeInsets)primaryDockMargins;
- (UIEdgeInsets)rootViewControllerContentInsets;
- (UIEdgeInsets)safeAreaInsetsForApplication:(id)a3;
- (UIEdgeInsets)secondaryDockMargins;
- (UIEdgeInsets)statusBarInsets;
- (UIEdgeInsets)todayViewAdditionalInsets;
- (double)dockLongAxisMargin;
- (double)dockShortAxisLength;
- (double)dockShortAxisMargin;
- (double)dualStatusBarTotalHorizontalWidth;
- (double)secondaryDockShortAxisLength;
- (unint64_t)dockEdges;
- (unint64_t)dockOrientation;
- (unint64_t)primaryDockVariant;
- (unint64_t)secondaryDockVariant;
@end

@implementation DBDashboardLayoutEngine

- (unint64_t)primaryDockVariant
{
  v3 = objc_opt_class();
  v4 = [(DBDashboardLayoutEngine *)self environmentConfiguration];
  [v4 currentSafeViewAreaFrame];
  v6 = v5;
  v8 = v7;
  v9 = [(DBDashboardLayoutEngine *)self environmentConfiguration];
  v10 = [v3 dockVariantForSafeAreaSize:objc_msgSend(v9 statusBarEdge:{"currentStatusBarEdge"), v6, v8}];

  return v10;
}

- (double)dockShortAxisLength
{
  v3 = objc_opt_class();
  v4 = [(DBDashboardLayoutEngine *)self environmentConfiguration];
  [v4 currentSafeViewAreaFrame];
  v6 = v5;
  v8 = v7;
  v9 = [(DBDashboardLayoutEngine *)self environmentConfiguration];
  [v3 dockShortAxisLengthForSafeAreaSize:objc_msgSend(v9 statusBarEdge:{"currentStatusBarEdge"), v6, v8}];
  v11 = v10;

  return v11;
}

- (UIEdgeInsets)homeViewControllerInsets
{
  v3 = [(DBDashboardLayoutEngine *)self allowsHomeContentUnderDock];

  [(DBDashboardLayoutEngine *)self homeViewControllerInsetsWithContentUnderDock:v3];
  result.right = v7;
  result.bottom = v6;
  result.left = v5;
  result.top = v4;
  return result;
}

- (BOOL)hasEmbeddedSecondaryContentArea
{
  v3 = [(DBDashboardLayoutEngine *)self environmentConfiguration];
  v4 = [v3 systemUILayout];

  if (!v4)
  {
    return 0;
  }

  v5 = [(DBDashboardLayoutEngine *)self environmentConfiguration];
  v6 = [v5 systemUILayout];

  [v6 secondaryContentFrame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [(DBDashboardLayoutEngine *)self environmentConfiguration];
  [v15 currentSafeViewAreaFrame];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  [v6 secondaryContentFrame];
  if (CGRectEqualToRect(v26, *MEMORY[0x277CBF3A0]))
  {
    v24 = 0;
  }

  else
  {
    v27.origin.x = v17;
    v27.origin.y = v19;
    v27.size.width = v21;
    v27.size.height = v23;
    v28.origin.x = v8;
    v28.origin.y = v10;
    v28.size.width = v12;
    v28.size.height = v14;
    v24 = CGRectContainsRect(v27, v28);
  }

  return v24;
}

- (unint64_t)dockOrientation
{
  if (([(DBDashboardLayoutEngine *)self dockEdges]& 0xA) != 0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (unint64_t)dockEdges
{
  v3 = [(DBDashboardLayoutEngine *)self environmentConfiguration];
  v4 = [v3 currentStatusBarEdge];

  v5 = [(DBDashboardLayoutEngine *)self environmentConfiguration];
  v6 = [v5 isRightHandDrive];

  v7 = [(DBDashboardLayoutEngine *)self environmentConfiguration];
  v8 = [v7 hasDualStatusBar];

  v9 = 2;
  v10 = 2;
  if (!(v8 & 1 | ((v6 & 1) == 0)))
  {
    v10 = 0;
  }

  if (v4 != 2)
  {
    v10 = 0;
  }

  if (v4)
  {
    v9 = v10;
  }

  if (v4 == 3)
  {
    v11 = 1;
  }

  else
  {
    v11 = v8 & (v4 == 1);
  }

  v12 = (v4 == 3) & v8;
  if (v4 == 1)
  {
    v12 = 1;
  }

  v13 = 8;
  if (((v4 == 2) & (v6 | v8)) == 0)
  {
    v13 = 0;
  }

  v14 = v12 == 0;
  v15 = 4;
  if (v14)
  {
    v15 = 0;
  }

  return v13 | v11 | v15 | v9;
}

- (CGRect)primaryDockWindowFrame
{
  v3 = [(DBDashboardLayoutEngine *)self environmentConfiguration];
  [v3 currentSafeViewAreaFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(DBDashboardLayoutEngine *)self dockShortAxisLength];
  v13 = v12;
  v14 = [(DBDashboardLayoutEngine *)self environmentConfiguration];
  v15 = [v14 currentStatusBarEdge];

  if (v15 == 1)
  {
    v31.origin.x = v5;
    v31.origin.y = v7;
    v31.size.width = v9;
    v31.size.height = v11;
    v16 = CGRectGetHeight(v31) - v13;
    v32.origin.x = v5;
    v32.origin.y = v7;
    v32.size.width = v9;
    v32.size.height = v11;
    Width = CGRectGetWidth(v32);
    v18 = 0.0;
  }

  else
  {
    v19 = [(DBDashboardLayoutEngine *)self environmentConfiguration];
    v20 = [v19 currentStatusBarEdge];

    if (v20 == 3)
    {
      v33.origin.x = v5;
      v33.origin.y = v7;
      v33.size.width = v9;
      v33.size.height = v11;
      Width = CGRectGetWidth(v33);
      v18 = 0.0;
      v16 = 0.0;
    }

    else
    {
      v21 = [(DBDashboardLayoutEngine *)self environmentConfiguration];
      v22 = [v21 isRightHandDrive];

      v23 = v5;
      v24 = v7;
      v25 = v9;
      v26 = v11;
      if (v22)
      {
        v18 = CGRectGetWidth(*&v23) - v13;
        v34.origin.x = v5;
        v34.origin.y = v7;
        v34.size.width = v9;
        v34.size.height = v11;
        Height = CGRectGetHeight(v34);
        Width = v13;
      }

      else
      {
        Height = CGRectGetHeight(*&v23);
        Width = v13;
        v18 = 0.0;
      }

      v16 = 0.0;
      v13 = Height;
    }
  }

  v28 = v18;
  v29 = v16;
  v30 = v13;
  result.size.height = v30;
  result.size.width = Width;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

- (UIEdgeInsets)primaryDockMargins
{
  [(DBDashboardLayoutEngine *)self dockMarginsForVariant:[(DBDashboardLayoutEngine *)self primaryDockVariant]];

  [(DBDashboardLayoutEngine *)self _adjustedPrimaryDockMargins:?];
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (CGRect)secondaryDockWindowFrame
{
  v3 = [(DBDashboardLayoutEngine *)self environmentConfiguration];
  [v3 currentSafeViewAreaFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(DBDashboardLayoutEngine *)self environmentConfiguration];
  v13 = [v12 hasDualStatusBar];

  v14 = [(DBDashboardLayoutEngine *)self environmentConfiguration];
  v15 = v14;
  if (v13)
  {
    -[DBDashboardLayoutEngine _secondaryDockFrameForRightHandDrive:safeAreaFrame:](self, "_secondaryDockFrameForRightHandDrive:safeAreaFrame:", [v14 isRightHandDrive], v5, v7, v9, v11);
    v17 = v16;
    v19 = v18;
    Width = v20;
    v23 = v22;
  }

  else
  {
    v24 = [v14 hasTopStatusBar];

    if (v24)
    {
      v29.origin.x = v5;
      v29.origin.y = v7;
      v29.size.width = v9;
      v29.size.height = v11;
      Width = CGRectGetWidth(v29);
      v23 = *MEMORY[0x277D6C020];
      v19 = 0.0;
      v17 = 0.0;
    }

    else
    {
      v17 = *MEMORY[0x277CBF3A0];
      v19 = *(MEMORY[0x277CBF3A0] + 8);
      Width = *(MEMORY[0x277CBF3A0] + 16);
      v23 = *(MEMORY[0x277CBF3A0] + 24);
    }
  }

  v25 = v17;
  v26 = v19;
  v27 = Width;
  v28 = v23;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (UIEdgeInsets)secondaryDockMargins
{
  [(DBDashboardLayoutEngine *)self secondaryDockWindowFrame];
  if (CGRectEqualToRect(v7, *MEMORY[0x277CBF3A0]))
  {
    v3 = *MEMORY[0x277D768C8];
    v4 = *(MEMORY[0x277D768C8] + 8);
    v5 = *(MEMORY[0x277D768C8] + 16);
    v6 = *(MEMORY[0x277D768C8] + 24);
  }

  else
  {
    [(DBDashboardLayoutEngine *)self dockMarginsForVariant:[(DBDashboardLayoutEngine *)self secondaryDockVariant]];
    [(DBDashboardLayoutEngine *)self _adjustedSecondaryDockMargins:?];
  }

  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (UIEdgeInsets)statusBarInsets
{
  v3 = [(DBDashboardLayoutEngine *)self environmentConfiguration];
  v4 = [v3 hasDualStatusBar];

  if (v4)
  {
    [(DBDashboardLayoutEngine *)self _dualStatusBarInsets];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v13 = [(DBDashboardLayoutEngine *)self environmentConfiguration];
    v14 = [v13 hasTopStatusBar];

    if (v14)
    {
      v15 = DBLogForCategory(0);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *v30 = 0;
        _os_log_impl(&dword_248146000, v15, OS_LOG_TYPE_DEFAULT, "[SplitStatusBar] status bar insets for SafeAreaStatusBar", v30, 2u);
      }

      v6 = 35.0;
      [(DBDashboardLayoutEngine *)self dockShortAxisLength];
      v10 = v16;
      v12 = 0.0;
      v8 = 0.0;
    }

    else
    {
      v6 = *MEMORY[0x277D768C8];
      v8 = *(MEMORY[0x277D768C8] + 8);
      v10 = *(MEMORY[0x277D768C8] + 16);
      v12 = *(MEMORY[0x277D768C8] + 24);
      v17 = [(DBDashboardLayoutEngine *)self environmentConfiguration];
      v18 = [v17 currentStatusBarEdge];

      if (v18 == 1)
      {
        [(DBDashboardLayoutEngine *)self dockShortAxisLength];
        v10 = v10 + v19;
      }

      else
      {
        v20 = [(DBDashboardLayoutEngine *)self environmentConfiguration];
        v21 = [v20 currentStatusBarEdge];

        if (v21 == 3)
        {
          [(DBDashboardLayoutEngine *)self dockShortAxisLength];
          v6 = v6 + v22;
        }

        else
        {
          v23 = [(DBDashboardLayoutEngine *)self environmentConfiguration];
          v24 = [v23 isRightHandDrive];

          [(DBDashboardLayoutEngine *)self dockShortAxisLength];
          if (v24)
          {
            v12 = v12 + v25;
          }

          else
          {
            v8 = v8 + v25;
          }
        }
      }
    }
  }

  v26 = v6;
  v27 = v8;
  v28 = v10;
  v29 = v12;
  result.right = v29;
  result.bottom = v28;
  result.left = v27;
  result.top = v26;
  return result;
}

- (DBDashboardLayoutEngine)initWithEnvironmentConfiguration:(id)a3
{
  v5 = a3;
  v18.receiver = self;
  v18.super_class = DBDashboardLayoutEngine;
  v6 = [(DBDashboardLayoutEngine *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_environmentConfiguration, a3);
    v8 = [v5 displayConfiguration];
    [v8 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    v7->_mainWindowFrame.origin.x = v10;
    v7->_mainWindowFrame.origin.y = v12;
    v7->_mainWindowFrame.size.width = v14;
    v7->_mainWindowFrame.size.height = v16;
    v7->_dockHostWindowFrame.origin.x = v10;
    v7->_dockHostWindowFrame.origin.y = v12;
    v7->_dockHostWindowFrame.size.width = v14;
    v7->_dockHostWindowFrame.size.height = v16;
    v7->_resizeAnimationWindowFrame.origin.x = v10;
    v7->_resizeAnimationWindowFrame.origin.y = v12;
    v7->_resizeAnimationWindowFrame.size.width = v14;
    v7->_resizeAnimationWindowFrame.size.height = v16;
    v7->_wallpaperHostWindowFrame.origin.x = v10;
    v7->_wallpaperHostWindowFrame.origin.y = v12;
    v7->_wallpaperHostWindowFrame.size.width = v14;
    v7->_wallpaperHostWindowFrame.size.height = v16;
  }

  return v7;
}

- (UIEdgeInsets)rootViewControllerContentInsets
{
  v3 = [(DBDashboardLayoutEngine *)self environmentConfiguration];
  [v3 currentSafeViewAreaFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(DBDashboardLayoutEngine *)self mainWindowFrame];
  v13 = v12;
  rect = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v30.origin.x = v5;
  v30.origin.y = v7;
  v30.size.width = v9;
  v30.size.height = v11;
  rect_16 = CGRectGetMinY(v30);
  v31.origin.x = v5;
  v31.origin.y = v7;
  v31.size.width = v9;
  v31.size.height = v11;
  rect_8 = CGRectGetMinX(v31);
  v32.origin.x = v13;
  v32.origin.y = v15;
  v32.size.width = v17;
  v32.size.height = v19;
  MaxY = CGRectGetMaxY(v32);
  v33.origin.x = v5;
  v33.origin.y = v7;
  v33.size.width = v9;
  v33.size.height = v11;
  v21 = MaxY - CGRectGetMaxY(v33);
  v34.origin.x = rect;
  v34.origin.y = v15;
  v34.size.width = v17;
  v34.size.height = v19;
  MaxX = CGRectGetMaxX(v34);
  v35.origin.x = v5;
  v35.origin.y = v7;
  v35.size.width = v9;
  v35.size.height = v11;
  v23 = MaxX - CGRectGetMaxX(v35);
  v25 = rect_8;
  v24 = rect_16;
  v26 = v21;
  result.right = v23;
  result.bottom = v26;
  result.left = v25;
  result.top = v24;
  return result;
}

- (UIEdgeInsets)homeViewControllerInsetsWithContentUnderDock:(BOOL)a3
{
  v3 = a3;
  v5 = [(DBDashboardLayoutEngine *)self environmentConfiguration];
  v6 = [v5 hasDualStatusBar];

  if (v6)
  {
    goto LABEL_2;
  }

  if (![(DBDashboardLayoutEngine *)self hasEmbeddedSecondaryContentArea])
  {
    if (v3)
    {
      goto LABEL_2;
    }

    v35 = [(DBDashboardLayoutEngine *)self environmentConfiguration];
    v36 = [v35 hasTopStatusBar];

    if (v36)
    {
      v8 = 35.0;
      [(DBDashboardLayoutEngine *)self dockShortAxisLength];
      v9 = v37;
      v10 = 0.0;
LABEL_10:
      v7 = 0.0;
      goto LABEL_24;
    }

    v38 = [(DBDashboardLayoutEngine *)self environmentConfiguration];
    v39 = [v38 currentStatusBarEdge];

    if (v39 > 1)
    {
      if (v39 == 3)
      {
        [(DBDashboardLayoutEngine *)self dockShortAxisLength];
        v8 = v48;
        v10 = 0.0;
        v9 = 0.0;
        goto LABEL_10;
      }

      if (v39 != 2)
      {
        goto LABEL_2;
      }
    }

    else if (v39)
    {
      if (v39 == 1)
      {
        [(DBDashboardLayoutEngine *)self dockShortAxisLength];
        v9 = v40;
        v10 = 0.0;
        v7 = 0.0;
LABEL_23:
        v8 = 0.0;
        goto LABEL_24;
      }

LABEL_2:
      v8 = *MEMORY[0x277D768C8];
      v7 = *(MEMORY[0x277D768C8] + 8);
      v9 = *(MEMORY[0x277D768C8] + 16);
      v10 = *(MEMORY[0x277D768C8] + 24);
      goto LABEL_24;
    }

    v41 = [(DBDashboardLayoutEngine *)self environmentConfiguration];
    v42 = [v41 isRightHandDrive];

    [(DBDashboardLayoutEngine *)self dockShortAxisLength];
    v9 = 0.0;
    if (v42)
    {
      v10 = v43;
    }

    else
    {
      v10 = 0.0;
    }

    if (v42)
    {
      v7 = 0.0;
    }

    else
    {
      v7 = v43;
    }

    goto LABEL_23;
  }

  v11 = [(DBDashboardLayoutEngine *)self environmentConfiguration];
  v12 = [v11 systemUILayout];

  [v12 secondaryContentFrame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [(DBDashboardLayoutEngine *)self environmentConfiguration];
  [v21 currentSafeViewAreaFrame];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  [(DBDashboardLayoutEngine *)self _UISafeAreaInsetsWithSafeAreaFrame:v23 secondaryContentFrame:v25, v27, v29, v14, v16, v18, v20];
  v8 = v30;
  v7 = v31;
  v9 = v32;
  v10 = v33;
  v34 = [(DBDashboardLayoutEngine *)self environmentConfiguration];
  LODWORD(v21) = [v34 hasTopStatusBar];

  if (v21)
  {
    v8 = v8 + 35.0;
  }

LABEL_24:
  v44 = v8;
  v45 = v7;
  v46 = v9;
  v47 = v10;
  result.right = v47;
  result.bottom = v46;
  result.left = v45;
  result.top = v44;
  return result;
}

- (CGRect)sceneFrameForApplication:(id)a3
{
  v4 = [a3 presentsFullScreen];
  v5 = [(DBDashboardLayoutEngine *)self environmentConfiguration];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 displayConfiguration];
    [v7 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
  }

  else
  {
    [v5 currentSafeViewAreaFrame];
    v9 = v16;
    v11 = v17;
    v13 = v18;
    v15 = v19;
  }

  v20 = v9;
  v21 = v11;
  v22 = v13;
  v23 = v15;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (UIEdgeInsets)safeAreaInsetsForApplication:(id)a3
{
  if ([(DBDashboardLayoutEngine *)self hasEmbeddedSecondaryContentArea])
  {
    v4 = [(DBDashboardLayoutEngine *)self environmentConfiguration];
    v5 = [v4 systemUILayout];

    [v5 secondaryContentFrame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [(DBDashboardLayoutEngine *)self environmentConfiguration];
    [v14 currentSafeViewAreaFrame];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    [(DBDashboardLayoutEngine *)self _UISafeAreaInsetsWithSafeAreaFrame:v16 secondaryContentFrame:v18, v20, v22, v7, v9, v11, v13];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v31 = [(DBDashboardLayoutEngine *)self environmentConfiguration];
    LODWORD(v14) = [v31 hasTopStatusBar];

    if (v14)
    {
      v24 = v24 + 35.0;
    }
  }

  else
  {
    [(DBDashboardLayoutEngine *)self statusBarInsets];
    v24 = v32;
    v26 = v33;
    v28 = v34;
    v30 = v35;
  }

  v36 = v24;
  v37 = v26;
  v38 = v28;
  v39 = v30;
  result.right = v39;
  result.bottom = v38;
  result.left = v37;
  result.top = v36;
  return result;
}

- (CGRect)areaOfInterestFrameForApplication:(id)a3
{
  v4 = [a3 presentsFullScreen];
  v5 = [(DBDashboardLayoutEngine *)self environmentConfiguration];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 displayConfiguration];
    [v7 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
  }

  else
  {
    [v5 currentViewAreaFrame];
    v9 = v16;
    v11 = v17;
    v13 = v18;
    v15 = v19;
  }

  v20 = v9;
  v21 = v11;
  v22 = v13;
  v23 = v15;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (double)dualStatusBarTotalHorizontalWidth
{
  v3 = [(DBDashboardLayoutEngine *)self environmentConfiguration];
  v4 = [v3 hasDualStatusBar];

  result = 0.0;
  if (v4)
  {
    [(DBDashboardLayoutEngine *)self dockShortAxisLength];
    return v6 + v6;
  }

  return result;
}

- (CGRect)climateWindowFrame
{
  v3 = [(DBDashboardLayoutEngine *)self environmentConfiguration];
  v4 = [v3 hasPhysicalControlBars];

  v5 = [(DBDashboardLayoutEngine *)self environmentConfiguration];
  v6 = v5;
  if (v4)
  {
    [v5 currentViewAreaFrame];
  }

  else
  {
    [v5 currentSafeViewAreaFrame];
  }

  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = v10;

  v15 = v11;
  v16 = v12;
  v17 = v13;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)cameraWindowFrame
{
  v2 = [(DBDashboardLayoutEngine *)self environmentConfiguration];
  [v2 currentSafeViewAreaFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGRect)cornerRadiusWindowFrame
{
  v2 = [(DBDashboardLayoutEngine *)self environmentConfiguration];
  [v2 currentSafeViewAreaFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

+ (double)dockShortAxisMarginForSafeAreaSize:(CGSize)a3 statusBarEdge:(unint64_t)a4
{
  v5 = [a1 dockVariantForSafeAreaSize:a3.width statusBarEdge:a3.height];
  result = 0.0;
  if (v5)
  {
    if (a4 > 1)
    {
      if (a4 == 3)
      {
LABEL_11:
        result = 4.0;
        if (v5 != 1)
        {
          return 0.0;
        }

        return result;
      }

      if (a4 != 2)
      {
        return result;
      }
    }

    else if (a4)
    {
      if (a4 != 1)
      {
        return result;
      }

      goto LABEL_11;
    }

    v7 = &kDBTranslucentStatusBarDockMargin;
    if (v5 != 1)
    {
      v7 = &kDBTransparentStatusBarDockMargin;
    }

    return *v7;
  }

  return result;
}

+ (UIEdgeInsets)insetsForViewArea:(CGRect)a3 statusBarEdge:(unint64_t)a4 environmentConfiguration:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  v9 = a5;
  [a1 dockShortAxisLengthForSafeAreaSize:a4 statusBarEdge:{width, height}];
  v11 = v10;
  v12 = 0.0;
  if ([v9 hasDualStatusBar])
  {
    v13 = v11;
    v14 = v11;
    v15 = 0.0;
  }

  else if ([v9 hasTopStatusBar])
  {
    v15 = 35.0;
    v13 = 0.0;
    v12 = v11;
    v14 = 0.0;
  }

  else
  {
    v15 = *MEMORY[0x277D768C8];
    v14 = *(MEMORY[0x277D768C8] + 8);
    v12 = *(MEMORY[0x277D768C8] + 16);
    v13 = *(MEMORY[0x277D768C8] + 24);
    if (a4 == 3)
    {
      v15 = v11 + v15;
    }

    else if (a4 == 1)
    {
      v12 = v11 + v12;
    }

    else if ([v9 isRightHandDrive])
    {
      v13 = v11 + v13;
    }

    else
    {
      v14 = v11 + v14;
    }
  }

  v16 = v15;
  v17 = v14;
  v18 = v12;
  v19 = v13;
  result.right = v19;
  result.bottom = v18;
  result.left = v17;
  result.top = v16;
  return result;
}

- (double)dockShortAxisMargin
{
  v3 = objc_opt_class();
  v4 = [(DBDashboardLayoutEngine *)self environmentConfiguration];
  [v4 currentSafeViewAreaFrame];
  v6 = v5;
  v8 = v7;
  v9 = [(DBDashboardLayoutEngine *)self environmentConfiguration];
  [v3 dockShortAxisMarginForSafeAreaSize:objc_msgSend(v9 statusBarEdge:{"currentStatusBarEdge"), v6, v8}];
  v11 = v10;

  return v11;
}

- (unint64_t)secondaryDockVariant
{
  v3 = [(DBDashboardLayoutEngine *)self environmentConfiguration];
  v4 = [v3 hasDualStatusBar];

  if (!v4)
  {
    return 0;
  }

  v5 = [(DBDashboardLayoutEngine *)self environmentConfiguration];
  v6 = [v5 systemUILayout];
  v7 = [v6 dualStatusBarSecondaryMaterial];

  return v7;
}

- (double)dockLongAxisMargin
{
  v2 = [(DBDashboardLayoutEngine *)self primaryDockVariant];
  result = 4.0;
  if (v2 != 1)
  {
    return 0.0;
  }

  return result;
}

- (UIEdgeInsets)dockMarginsForVariant:(unint64_t)a3
{
  if (a3)
  {
    v4 = [(DBDashboardLayoutEngine *)self dockEdges];
    v5 = v4;
    if ((v4 & 0xA) != 0)
    {
      v6 = 0.0;
      v7 = 0.0;
      if ((v4 & 2) != 0)
      {
        [(DBDashboardLayoutEngine *)self dockShortAxisMargin];
        v7 = v8;
      }

      if ((v5 & 8) != 0)
      {
        [(DBDashboardLayoutEngine *)self dockShortAxisMargin];
        v6 = v9;
      }

      [(DBDashboardLayoutEngine *)self dockLongAxisMargin];
      v11 = v10;
      [(DBDashboardLayoutEngine *)self dockLongAxisMargin];
      goto LABEL_13;
    }

    [(DBDashboardLayoutEngine *)self dockLongAxisMargin];
    v7 = v14;
    [(DBDashboardLayoutEngine *)self dockLongAxisMargin];
    v6 = v15;
    v13 = 0.0;
    v11 = 0.0;
    if (v5)
    {
      [(DBDashboardLayoutEngine *)self dockShortAxisMargin];
      v11 = v16;
    }

    if ((v5 & 4) != 0)
    {
      [(DBDashboardLayoutEngine *)self dockShortAxisMargin];
LABEL_13:
      v13 = v12;
    }
  }

  else
  {
    v11 = *MEMORY[0x277D768C8];
    v7 = *(MEMORY[0x277D768C8] + 8);
    v13 = *(MEMORY[0x277D768C8] + 16);
    v6 = *(MEMORY[0x277D768C8] + 24);
  }

  v17 = v11;
  v18 = v7;
  v19 = v13;
  v20 = v6;
  result.right = v20;
  result.bottom = v19;
  result.left = v18;
  result.top = v17;
  return result;
}

- (CGRect)dockHostSceneFrame
{
  v2 = [(DBDashboardLayoutEngine *)self environmentConfiguration];
  [v2 currentSafeViewAreaFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGRect)notificationWindowFrame
{
  v2 = [(DBDashboardLayoutEngine *)self environmentConfiguration];
  [v2 currentSafeViewAreaFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGRect)wallpaperHostSceneFrame
{
  v3 = [(DBDashboardLayoutEngine *)self environmentConfiguration];
  v4 = [v3 currentViewAreaSupportsUIOutsideSafeArea];

  v5 = [(DBDashboardLayoutEngine *)self environmentConfiguration];
  v6 = v5;
  if (v4)
  {
    [v5 currentViewAreaFrame];
  }

  else
  {
    [v5 currentSafeViewAreaFrame];
  }

  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = v10;

  v15 = v11;
  v16 = v12;
  v17 = v13;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)wallpaperWindowFrame
{
  v2 = *MEMORY[0x277CBF348];
  v3 = *(MEMORY[0x277CBF348] + 8);
  [(DBDashboardLayoutEngine *)self wallpaperHostSceneFrame];
  v6 = v2;
  v7 = v3;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (UIEdgeInsets)todayViewAdditionalInsets
{
  if ([(DBDashboardLayoutEngine *)self allowsHomeContentUnderDock])
  {
    [(DBDashboardLayoutEngine *)self _baseTodayViewInsets];
    [(DBDashboardLayoutEngine *)self _dualStatusBarTodayViewAdjustment:?];
  }

  else
  {
    v3 = *MEMORY[0x277D768C8];
    v4 = *(MEMORY[0x277D768C8] + 8);
    v5 = *(MEMORY[0x277D768C8] + 16);
    v6 = *(MEMORY[0x277D768C8] + 24);
  }

  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (UIEdgeInsets)folderViewAdditionalInsets
{
  if ([(DBDashboardLayoutEngine *)self allowsHomeContentUnderDock])
  {
    v3 = [(DBDashboardLayoutEngine *)self dockEdges];
    v4 = 0.0;
    v5 = 0.0;
    if ((v3 & 2) != 0)
    {
      [(DBDashboardLayoutEngine *)self dockShortAxisLength];
      v5 = v6;
    }

    if ((v3 & 8) != 0)
    {
      [(DBDashboardLayoutEngine *)self dockShortAxisLength];
      v8 = v9;
      v7 = 0.0;
    }

    else
    {
      v7 = 0.0;
      v8 = 0.0;
    }
  }

  else
  {
    v4 = *MEMORY[0x277D768C8];
    v5 = *(MEMORY[0x277D768C8] + 8);
    v7 = *(MEMORY[0x277D768C8] + 16);
    v8 = *(MEMORY[0x277D768C8] + 24);
  }

  v10 = v4;
  v11 = v5;
  result.right = v8;
  result.bottom = v7;
  result.left = v11;
  result.top = v10;
  return result;
}

- (UIEdgeInsets)_dualStatusBarInsets
{
  v3 = [(DBDashboardLayoutEngine *)self environmentConfiguration];
  v4 = [v3 isRightHandDrive];

  if (v4)
  {
    [(DBDashboardLayoutEngine *)self secondaryDockShortAxisLength];
    v6 = v5;
    [(DBDashboardLayoutEngine *)self dockShortAxisLength];
  }

  else
  {
    [(DBDashboardLayoutEngine *)self dockShortAxisLength];
    v6 = v8;
    [(DBDashboardLayoutEngine *)self secondaryDockShortAxisLength];
  }

  v9 = v7;
  v10 = 0.0;
  v11 = 0.0;
  v12 = v6;
  result.right = v9;
  result.bottom = v11;
  result.left = v12;
  result.top = v10;
  return result;
}

- (UIEdgeInsets)_adjustedPrimaryDockMargins:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v8 = [(DBDashboardLayoutEngine *)self environmentConfiguration];
  v9 = [v8 hasDualStatusBar];

  if (v9)
  {
    v10 = [(DBDashboardLayoutEngine *)self primaryDockVariant];
    v11 = &kDBTranslucentStatusBarDockMargin;
    if (v10 != 1)
    {
      v11 = &kDBTransparentStatusBarDockMargin;
    }

    v12 = *v11;
    v13 = [(DBDashboardLayoutEngine *)self environmentConfiguration];
    v14 = [v13 isRightHandDrive];

    if (v14)
    {
      left = left - v12;
    }

    else
    {
      right = right - v12;
    }
  }

  v15 = top;
  v16 = left;
  v17 = bottom;
  v18 = right;
  result.right = v18;
  result.bottom = v17;
  result.left = v16;
  result.top = v15;
  return result;
}

- (UIEdgeInsets)_adjustedSecondaryDockMargins:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v8 = [(DBDashboardLayoutEngine *)self environmentConfiguration];
  if ([v8 hasDualStatusBar])
  {
    v9 = [(DBDashboardLayoutEngine *)self secondaryDockVariant];

    if (v9 == 1)
    {
      v10 = [(DBDashboardLayoutEngine *)self environmentConfiguration];
      v11 = [v10 isRightHandDrive];

      if (v11)
      {
        right = right - 4.0;
      }

      else
      {
        left = left - 4.0;
      }
    }
  }

  else
  {
  }

  v12 = top;
  v13 = left;
  v14 = bottom;
  v15 = right;
  result.right = v15;
  result.bottom = v14;
  result.left = v13;
  result.top = v12;
  return result;
}

- (double)secondaryDockShortAxisLength
{
  if ([(DBDashboardLayoutEngine *)self secondaryDockVariant]!= 1)
  {
    return 45.0;
  }

  [(DBDashboardLayoutEngine *)self dockShortAxisLength];
  return result;
}

- (UIEdgeInsets)_baseTodayViewInsets
{
  v3 = [(DBDashboardLayoutEngine *)self dockEdges];
  v4 = 0.0;
  v5 = 0.0;
  if ((v3 & 2) != 0)
  {
    [(DBDashboardLayoutEngine *)self dockShortAxisLength];
    v5 = v6;
  }

  if ((v3 & 8) != 0)
  {
    [(DBDashboardLayoutEngine *)self dockShortAxisLength];
    v4 = v7;
  }

  v8 = 0.0;
  v9 = 0.0;
  v10 = v5;
  v11 = v4;
  result.right = v11;
  result.bottom = v9;
  result.left = v10;
  result.top = v8;
  return result;
}

- (UIEdgeInsets)_dualStatusBarTodayViewAdjustment:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v8 = [(DBDashboardLayoutEngine *)self environmentConfiguration];
  v9 = [v8 hasDualStatusBar];

  if (v9)
  {
    v10 = [(DBDashboardLayoutEngine *)self environmentConfiguration];
    v11 = [v10 isRightHandDrive];

    [(DBDashboardLayoutEngine *)self primaryDockMargins];
    v13 = v12;
    v15 = v14;
    [(DBDashboardLayoutEngine *)self secondaryDockMargins];
    if (v11)
    {
      v18 = v16;
    }

    else
    {
      v18 = v13;
    }

    if (v11)
    {
      v19 = v15;
    }

    else
    {
      v19 = v17;
    }

    right = right + v19;
    left = left + v18;
  }

  v20 = top;
  v21 = left;
  v22 = bottom;
  v23 = right;
  result.right = v23;
  result.bottom = v22;
  result.left = v21;
  result.top = v20;
  return result;
}

- (CGRect)_secondaryDockFrameForRightHandDrive:(BOOL)a3 safeAreaFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3;
  [(DBDashboardLayoutEngine *)self secondaryDockShortAxisLength];
  v10 = v9;
  v11 = x;
  v12 = y;
  v13 = width;
  v14 = height;
  if (v8)
  {
    v15 = CGRectGetHeight(*&v11);
    v16 = 0.0;
  }

  else
  {
    v16 = CGRectGetWidth(*&v11) - v10;
    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    v15 = CGRectGetHeight(v20);
  }

  v17 = 0.0;
  v18 = v16;
  v19 = v10;
  result.size.height = v15;
  result.size.width = v19;
  result.origin.y = v17;
  result.origin.x = v18;
  return result;
}

- (UIEdgeInsets)_UISafeAreaInsetsWithSafeAreaFrame:(CGRect)a3 secondaryContentFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3.size.height;
  v9 = a3.size.width;
  v10 = a3.origin.y;
  v11 = a3.origin.x;
  if (CGRectContainsRect(a3, a4))
  {
    v32.origin.x = x;
    v32.origin.y = y;
    v32.size.width = width;
    v32.size.height = height;
    MinX = CGRectGetMinX(v32);
    v33.origin.x = v11;
    v33.origin.y = v10;
    v33.size.width = v9;
    v33.size.height = v8;
    v27 = MinX - CGRectGetMinX(v33);
    v34.origin.x = v11;
    v34.origin.y = v10;
    v34.size.width = v9;
    v34.size.height = v8;
    MaxX = CGRectGetMaxX(v34);
    v35.origin.x = x;
    v35.origin.y = y;
    v35.size.width = width;
    v35.size.height = height;
    v26 = MaxX - CGRectGetMaxX(v35);
    v36.origin.x = x;
    v36.origin.y = y;
    v36.size.width = width;
    v36.size.height = height;
    MinY = CGRectGetMinY(v36);
    v37.origin.x = v11;
    v37.origin.y = v10;
    v37.size.width = v9;
    v37.size.height = v8;
    v12 = CGRectGetMinY(v37);
    v38.size.height = v8;
    v13 = MinY - v12;
    v38.origin.x = v11;
    v38.origin.y = v10;
    v38.size.width = v9;
    rect = v38.size.height;
    MaxY = CGRectGetMaxY(v38);
    v39.origin.x = x;
    v39.origin.y = y;
    v39.size.width = width;
    v31 = height;
    v39.size.height = height;
    v14 = MaxY - CGRectGetMaxY(v39);
    v15 = fmax(v27, fmax(v26, fmax(v13, v14)));
    if (v15 <= v13)
    {
      v42.origin.x = v11;
      v42.origin.y = v10;
      v42.size.width = v9;
      v42.size.height = rect;
      v21 = CGRectGetMaxY(v42);
      v43.origin.x = x;
      v43.origin.y = y;
      v43.size.width = width;
      v43.size.height = v31;
      v19 = v21 - CGRectGetMinY(v43);
      v18 = 0.0;
      v17 = 0.0;
    }

    else
    {
      if (v15 <= v14)
      {
        v44.origin.x = x;
        v44.origin.y = y;
        v44.size.width = width;
        v44.size.height = height;
        v22 = CGRectGetMaxY(v44);
        v45.origin.x = v11;
        v45.origin.y = v10;
        v45.size.width = v9;
        v45.size.height = rect;
        v18 = v22 - CGRectGetMinY(v45);
        v17 = 0.0;
      }

      else
      {
        if (v15 <= v27)
        {
          v46.origin.x = v11;
          v46.origin.y = v10;
          v46.size.width = v9;
          v46.size.height = rect;
          v23 = CGRectGetMaxX(v46);
          v47.origin.x = x;
          v47.origin.y = y;
          v47.size.width = width;
          v47.size.height = v31;
          v20 = v23 - CGRectGetMinX(v47);
          v18 = 0.0;
          v17 = 0.0;
          v19 = 0.0;
          goto LABEL_12;
        }

        v40.origin.x = x;
        v40.origin.y = y;
        v40.size.width = width;
        v40.size.height = height;
        v16 = CGRectGetMaxX(v40);
        v41.origin.x = v11;
        v41.origin.y = v10;
        v41.size.width = v9;
        v41.size.height = rect;
        v17 = v16 - CGRectGetMinX(v41);
        v18 = 0.0;
      }

      v19 = 0.0;
    }

    v20 = 0.0;
  }

  else
  {
    v18 = *MEMORY[0x277D768C8];
    v17 = *(MEMORY[0x277D768C8] + 8);
    v19 = *(MEMORY[0x277D768C8] + 16);
    v20 = *(MEMORY[0x277D768C8] + 24);
  }

LABEL_12:
  result.right = v20;
  result.bottom = v19;
  result.left = v17;
  result.top = v18;
  return result;
}

- (CGRect)mainWindowFrame
{
  x = self->_mainWindowFrame.origin.x;
  y = self->_mainWindowFrame.origin.y;
  width = self->_mainWindowFrame.size.width;
  height = self->_mainWindowFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)dockHostWindowFrame
{
  x = self->_dockHostWindowFrame.origin.x;
  y = self->_dockHostWindowFrame.origin.y;
  width = self->_dockHostWindowFrame.size.width;
  height = self->_dockHostWindowFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)resizeAnimationWindowFrame
{
  x = self->_resizeAnimationWindowFrame.origin.x;
  y = self->_resizeAnimationWindowFrame.origin.y;
  width = self->_resizeAnimationWindowFrame.size.width;
  height = self->_resizeAnimationWindowFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)wallpaperHostWindowFrame
{
  x = self->_wallpaperHostWindowFrame.origin.x;
  y = self->_wallpaperHostWindowFrame.origin.y;
  width = self->_wallpaperHostWindowFrame.size.width;
  height = self->_wallpaperHostWindowFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end