@interface CKContextContentProviderUIScene
+ (BOOL)_isRelevantForExtractionWithView:(id)a3;
+ (double)_fontSizeOfView:(id)a3 usingExecutor:(id)a4;
+ (id)_UIElementsForWebViewContentString:(id)a3;
+ (id)_allViewControllersFromUIViews:(id)a3;
+ (id)_bestContentStringForWebViewUIElements:(id)a3 andTitle:(id)a4;
+ (id)_bestVisibleStringForView:(id)a3 usingExecutor:(id)a4;
+ (id)_descendantsRelevantForContentExtractionFromWindow:(id)a3;
+ (id)_extractItemsFromViewControllers:(id)a3;
+ (id)_firstAvailableUIViewControllerForUIView:(id)a3;
+ (id)_getNotableSuperviewClassNamesForView:(id)a3;
+ (id)_handleWKWebView:(id)a3 withExecutor:(id)a4;
+ (void)_descendantsRelevantForContentExtractionFromView:(id)a3 intoArray:(id)a4;
+ (void)_donateContentsOfWindow:(id)a3 usingExecutor:(id)a4 withOptions:(unint64_t)a5;
+ (void)_donateText:(id)a3 withTitle:(id)a4 debugText:(id)a5 debugUrlString:(id)a6 rawHTML:(id)a7 leadImage:(id)a8 snapshot:(id)a9 uiElements:(id)a10 extractionItems:(id)a11 usingContextFromExecutor:(id)a12;
+ (void)_extractContentFromWebView:(id)a3 includingSnapshot:(BOOL)a4 includingUIBoundingBox:(BOOL)a5 ignoreViewTextLengthRequirements:(BOOL)a6 ignoreViewCountCap:(BOOL)a7 includeRawHTML:(BOOL)a8 withCompletionHandler:(id)a9;
+ (void)extractFromScene:(id)a3 usingExecutor:(id)a4 withOptions:(unint64_t)a5;
+ (void)initialize;
- (BOOL)_determineIfDebuggingControlsShouldBeAllowed;
- (BOOL)_shouldInstallAppSwitcherControls;
- (CKContextContentProviderUIScene)initWithScene:(id)a3;
- (UIScene)_scene;
- (id)_containerViewForDebugButtons;
- (id)_descendantsRelevantForDebugControls:(id)a3;
- (void)_didSelectDebugControl:(id)a3;
- (void)_didSelectRecentsControl:(id)a3;
- (void)_installDebuggingButton;
- (void)_installDebuggingControlsIfApplicable;
- (void)_installRecentsButton;
- (void)_sceneWillInvalidate:(id)a3;
- (void)_setUpDebuggingControlsIfPossibleAfterDelay:(double)a3;
- (void)extractUsingExecutor:(id)a3 withOptions:(unint64_t)a4;
@end

@implementation CKContextContentProviderUIScene

+ (void)initialize
{
  v14[6] = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == a1)
  {
    v2 = MEMORY[0x1E695DFD8];
    v3 = *MEMORY[0x1E69DE4A0];
    v14[0] = *MEMORY[0x1E69DE480];
    v14[1] = v3;
    v4 = *MEMORY[0x1E69DE528];
    v14[2] = *MEMORY[0x1E69DE588];
    v14[3] = v4;
    v5 = *MEMORY[0x1E69DE518];
    v14[4] = *MEMORY[0x1E69DE500];
    v14[5] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:6];
    v7 = [v2 setWithArray:v6];
    v8 = kSensitiveContentTypes;
    kSensitiveContentTypes = v7;

    v9 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F305C820];
    v10 = kNotNotableSuperviewClassNames;
    kNotNotableSuperviewClassNames = v9;

    v11 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F305C838];
    v12 = kClassesExcludedFromTextExtraction;
    kClassesExcludedFromTextExtraction = v11;
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (BOOL)_determineIfDebuggingControlsShouldBeAllowed
{
  if (!+[CKContextContentProviderManager isSpringBoard]|| !os_variant_has_internal_content())
  {
    return 0;
  }

  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"CKContextAllowAppSwitcherDebuggingControls"];

  return v3;
}

- (UIScene)_scene
{
  WeakRetained = objc_loadWeakRetained(&self->__scene);

  return WeakRetained;
}

- (CKContextContentProviderUIScene)initWithScene:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CKContextContentProviderUIScene;
  v5 = [(CKContextContentProviderUIScene *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(CKContextContentProviderUIScene *)v5 _setScene:v4];
    v7 = +[CKContextContentProviderManager sharedManager];
    [v7 addProvider:v6];

    if (+[CKContextContentProviderManager isSpringBoard])
    {
      [(CKContextContentProviderUIScene *)v6 _setUpDebuggingControlsIfPossibleAfterDelay:2.0];
    }

    v8 = v6;
  }

  return v6;
}

- (void)_sceneWillInvalidate:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_toolInstallationTimer);
  v5 = [WeakRetained isValid];

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_toolInstallationTimer);
    [v6 invalidate];

    objc_storeWeak(&self->_toolInstallationTimer, 0);
  }

  v7 = +[CKContextContentProviderManager sharedManager];
  [v7 removeProvider:self];

  [(CKContextContentProviderUIScene *)self _setScene:0];
}

- (void)extractUsingExecutor:(id)a3 withOptions:(unint64_t)a4
{
  v7 = a3;
  v6 = [(CKContextContentProviderUIScene *)self _scene];
  if (v6)
  {
    [objc_opt_class() extractFromScene:v6 usingExecutor:v7 withOptions:a4];
  }
}

+ (void)extractFromScene:(id)a3 usingExecutor:(id)a4 withOptions:(unint64_t)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    if (v7 && [v7 activationState] <= 1)
    {
      v9 = [v7 _visibleWindows];
      if ([v9 count])
      {
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v17 = v9;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v20;
          do
          {
            v14 = 0;
            do
            {
              if (*v20 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v19 + 1) + 8 * v14);
              v18[0] = MEMORY[0x1E69E9820];
              v18[1] = 3221225472;
              v18[2] = __78__CKContextContentProviderUIScene_extractFromScene_usingExecutor_withOptions___block_invoke;
              v18[3] = &unk_1E7CEE5A8;
              v18[4] = v15;
              v18[5] = a5;
              [v8 addWorkItem:v18];
              ++v14;
            }

            while (v12 != v14);
            v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
          }

          while (v12);
        }

        v9 = v17;
      }
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    +[CKContextContentProviderUIScene extractFromScene:usingExecutor:withOptions:];
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __78__CKContextContentProviderUIScene_extractFromScene_usingExecutor_withOptions___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = objc_autoreleasePoolPush();
  [CKContextContentProviderUIScene _donateContentsOfWindow:*(a1 + 32) usingExecutor:v4 withOptions:*(a1 + 40)];
  objc_autoreleasePoolPop(v3);
}

+ (BOOL)_isRelevantForExtractionWithView:(id)a3
{
  v3 = a3;
  if ([v3 isHidden])
  {
    goto LABEL_5;
  }

  [v3 alpha];
  if (v4 < 0.05)
  {
    goto LABEL_5;
  }

  [v3 frame];
  x = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  height = v13.size.height;
  if (CGRectGetWidth(v13) < 30.0 || (v14.origin.x = x, v14.origin.y = y, v14.size.width = width, v14.size.height = height, CGRectGetHeight(v14) < 17.0))
  {
LABEL_5:
    LOBYTE(v9) = 0;
  }

  else
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v9 = [kClassesExcludedFromTextExtraction containsObject:v12] ^ 1;
  }

  return v9;
}

+ (void)_descendantsRelevantForContentExtractionFromView:(id)a3 intoArray:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([a1 _isRelevantForExtractionWithView:v6])
  {
    [v7 addObject:v6];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v8 = [v6 subviews];
    v9 = [v8 reverseObjectEnumerator];

    v10 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v29;
      do
      {
        v13 = 0;
        do
        {
          if (*v29 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v28 + 1) + 8 * v13);
          if (![v6 clipsToBounds])
          {
            goto LABEL_9;
          }

          [v6 bounds];
          v16 = v15;
          v18 = v17;
          v20 = v19;
          v22 = v21;
          [v14 frame];
          v35.origin.x = v23;
          v35.origin.y = v24;
          v35.size.width = v25;
          v35.size.height = v26;
          v34.origin.x = v16;
          v34.origin.y = v18;
          v34.size.width = v20;
          v34.size.height = v22;
          if (CGRectIntersectsRect(v34, v35))
          {
LABEL_9:
            [a1 _descendantsRelevantForContentExtractionFromView:v14 intoArray:v7];
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v11);
    }
  }

  v27 = *MEMORY[0x1E69E9840];
}

+ (id)_descendantsRelevantForContentExtractionFromWindow:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v41 = v4;
  v6 = [v4 subviews];
  v7 = [v6 reverseObjectEnumerator];

  v8 = [v7 countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (!v8)
  {
    v10 = 0;
    goto LABEL_17;
  }

  v9 = v8;
  v10 = 0;
  v11 = *v43;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v43 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v13 = *(*(&v42 + 1) + 8 * i);
      if (([v13 isHidden] & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_12;
        }

        v14 = [MEMORY[0x1E69DCEB0] mainScreen];
        [v14 bounds];
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v22 = v21;

        [v13 frame];
        v24 = v23;
        v26 = v25;
        v28 = v27;
        v30 = v29;
        v49.origin.x = v16;
        v49.origin.y = v18;
        v49.size.width = v20;
        v49.size.height = v22;
        Width = CGRectGetWidth(v49);
        [v13 frame];
        v32 = CGRectGetWidth(v50);
        if (!v10)
        {
          goto LABEL_11;
        }

        v33 = v32;
        [v10 frame];
        v52.origin.x = v34;
        v52.origin.y = v35;
        v52.size.width = v36;
        v52.size.height = v37;
        v51.origin.x = v24;
        v51.origin.y = v26;
        v51.size.width = v28;
        v51.size.height = v30;
        if (!CGRectEqualToRect(v51, v52) || vabdd_f64(Width, v33) <= 20.0)
        {
LABEL_11:
          v38 = v13;

          v10 = v38;
LABEL_12:
          [a1 _descendantsRelevantForContentExtractionFromView:v13 intoArray:v5];
          continue;
        }
      }
    }

    v9 = [v7 countByEnumeratingWithState:&v42 objects:v46 count:16];
  }

  while (v9);
LABEL_17:

  v39 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)_allViewControllersFromUIViews:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [a1 _firstAvailableUIViewControllerForUIView:{*(*(&v14 + 1) + 8 * i), v14}];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)_firstAvailableUIViewControllerForUIView:(id)a3
{
  v3 = [a3 nextResponder];
  if (v3)
  {
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v4 = [v3 nextResponder];

      v3 = v4;
    }

    while (v4);
  }

  return v3;
}

+ (void)_donateContentsOfWindow:(id)a3 usingExecutor:(id)a4 withOptions:(unint64_t)a5
{
  v89 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v78 = v8;
  v10 = [a1 _descendantsRelevantForContentExtractionFromWindow:v8];
  if (![v10 count])
  {
    goto LABEL_48;
  }

  v71 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v10, "count")}];
  v70 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v69 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = a5 & 0x20;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v67 = v10;
  obj = v10;
  v75 = v11;
  v76 = a1;
  v80 = a5;
  v81 = [obj countByEnumeratingWithState:&v82 objects:v88 count:16];
  v12 = 0;
  if (!v81)
  {
    goto LABEL_36;
  }

  v13 = *v83;
  v14 = 250;
  if ((a5 & 0x20) != 0)
  {
    v14 = -1;
  }

  v68 = v14;
  v73 = *v83;
  v74 = v9;
  do
  {
    for (i = 0; i != v81; ++i)
    {
      if (*v83 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v82 + 1) + 8 * i);
      v17 = [a1 _bestVisibleStringForView:v16 usingExecutor:v9];
      v18 = [v17 length];
      if (v11 | v18)
      {
        v19 = v18;
        v79 = v12;
        if (v18 && ([v71 containsObject:v17] & 1) == 0)
        {
          [v71 addObject:v17];
        }

        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        v22 = [a1 _getNotableSuperviewClassNamesForView:v16];
        [a1 _fontSizeOfView:v16 usingExecutor:v9];
        v24 = v23;
        if (v19)
        {
          v25 = [v17 length];
          if (v68 >= v25)
          {
            v26 = v25;
          }

          else
          {
            v26 = v68;
          }

          v27 = [v17 substringWithRange:{0, v26}];
        }

        else
        {
          v27 = &stru_1F305A6D8;
        }

        v28 = [[CKContextUIElement alloc] initWithText:v27 className:v21];
        [(CKContextUIElement *)v28 setSuperviewClassNames:v22];
        *&v29 = v24;
        [(CKContextUIElement *)v28 setFontSize:v29];
        a5 = [v78 windowScene];
        v30 = [a5 _sceneIdentifier];
        v31 = [v30 copy];
        [(CKContextUIElement *)v28 setSceneIdentifier:v31];

        LOBYTE(a5) = v80;
        if ((v80 & 4) != 0)
        {
          v72 = [CKContextSharedExtractionHelper elementIsOnScreenWithView:v16 window:v78];
          [v16 bounds];
          [v16 convertRect:v78 toView:?];
          v33 = v32;
          v35 = v34;
          [(CKContextUIElement *)v28 setFrameInWindow:?];
          v36 = [v78 screen];
          v37 = [v36 coordinateSpace];
          LOBYTE(a5) = v80;
          [v78 convertPoint:v37 toCoordinateSpace:{v33, v35}];
          [(CKContextUIElement *)v28 setAbsoluteOriginOnScreen:?];

          [(CKContextUIElement *)v28 setOnScreen:v72];
        }

        if ([(CKContextUIElement *)v28 isOnScreen])
        {
          v38 = v70;
          v9 = v74;
          a1 = v76;
          if ((a5 & 0x10) == 0)
          {
            v39 = [v70 count];
            v38 = v70;
            LOBYTE(a5) = v80;
            if (v39 >= 0xFA)
            {
              goto LABEL_28;
            }
          }
        }

        else
        {
          v38 = v69;
          v9 = v74;
          a1 = v76;
          if ((a5 & 0x10) == 0)
          {
            v40 = [v69 count];
            v38 = v69;
            LOBYTE(a5) = v80;
            if (v40 > 0xF9)
            {
              goto LABEL_28;
            }
          }
        }

        [v38 addObject:v28];
LABEL_28:

        v12 = v79;
        v11 = v75;
        v13 = v73;
      }

      if ((a5 & 1) != 0 && !v12)
      {
        v41 = [CKContextSharedExtractionHelper bestImageForView:v16];
        v12 = v41;
        if (v41)
        {
          v42 = v41;
        }
      }
    }

    v81 = [obj countByEnumeratingWithState:&v82 objects:v88 count:16];
  }

  while (v81);
LABEL_36:

  if ((a5 & 0x10) != 0)
  {
    v45 = v69;
    v47 = [v69 count];
    v43 = v70;
  }

  else
  {
    v43 = v70;
    v44 = 250 - [v70 count];
    v45 = v69;
    v46 = [v69 count];
    if (v44 >= v46)
    {
      v47 = v46;
    }

    else
    {
      v47 = v44;
    }
  }

  v48 = [v45 subarrayWithRange:{0, v47}];
  [v43 addObjectsFromArray:v48];

  v49 = 0;
  if ((v80 & 2) != 0)
  {
    v10 = v67;
    if (!v12)
    {
      [v78 bounds];
      v51 = v50;
      v53 = v52;
      v55 = v54;
      v57 = v56;
      v58 = [v78 isOpaque];
      v90.width = v55;
      v90.height = v57;
      UIGraphicsBeginImageContextWithOptions(v90, v58, 0.0);
      [v78 drawViewHierarchyInRect:1 afterScreenUpdates:{v51, v53, v55, v57}];
      v49 = UIGraphicsGetImageFromCurrentImageContext();
      UIGraphicsEndImageContext();
    }
  }

  else
  {
    v10 = v67;
  }

  v59 = [a1 _allViewControllersFromUIViews:obj];
  v60 = [a1 _extractItemsFromViewControllers:v59];
  v61 = [v71 componentsJoinedByString:@"\n\n"];
  v62 = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v63 = [v61 stringByTrimmingCharactersInSet:v62];
  v64 = [v63 length];

  if ([v60 count] || objc_msgSend(v70, "count") | v75 || v64 > 0x2C)
  {
    v65 = v70;
    [v76 _donateText:v61 withTitle:0 debugText:0 debugUrlString:0 rawHTML:0 leadImage:v12 snapshot:v49 uiElements:v70 & ((v80 << 60) >> 63) extractionItems:v60 usingContextFromExecutor:v9];
  }

  else
  {
    v65 = v70;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v87 = v64;
      _os_log_impl(&dword_1B842F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "The extracted text (length %lu) is too short. Donation from UIKit hierarchy aborted.", buf, 0xCu);
    }
  }

LABEL_48:
  v66 = *MEMORY[0x1E69E9840];
}

+ (id)_getNotableSuperviewClassNamesForView:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = [v3 superview];
  v6 = 20;
  while (1)
  {
    if (!v5)
    {
      v9 = 0;
      goto LABEL_10;
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v5 superview];

    if (([kNotNotableSuperviewClassNames containsObject:v8] & 1) == 0)
    {
      break;
    }

LABEL_6:

    v5 = v9;
    if (!--v6)
    {
      goto LABEL_10;
    }
  }

  if ([v4 count] <= 5)
  {
    [v4 addObject:v8];
    goto LABEL_6;
  }

LABEL_10:

  return v4;
}

+ (void)_donateText:(id)a3 withTitle:(id)a4 debugText:(id)a5 debugUrlString:(id)a6 rawHTML:(id)a7 leadImage:(id)a8 snapshot:(id)a9 uiElements:(id)a10 extractionItems:(id)a11 usingContextFromExecutor:(id)a12
{
  v18 = MEMORY[0x1E6997208];
  v29 = a12;
  v19 = a11;
  v20 = a10;
  v21 = a9;
  v22 = a8;
  v23 = a7;
  v24 = a6;
  v25 = a5;
  v26 = a4;
  v27 = a3;
  v30 = objc_alloc_init(v18);
  [v30 setText:v27];

  [v30 setTitle:v26];
  [v30 setDebugText:v25];

  [v30 setDebugUrlString:v24];
  [v30 setUiElements:v20];

  [v30 setExtractionItems:v19];
  [v30 setRawHTML:v23];

  [CKContextExtractionUtil renderSnapshot:v21 toDonationItem:v30];
  [CKContextExtractionUtil renderLeadImage:v22 toDonationItem:v30];

  v28 = [v29 context];

  [v28 addItem:v30];
}

+ (double)_fontSizeOfView:(id)a3 usingExecutor:(id)a4
{
  v4 = a3;
  objc_opt_class();
  v5 = 0.0;
  if (objc_opt_isKindOfClass() & 1) == 0 && (objc_opt_respondsToSelector())
  {
    v6 = [v4 performSelector:sel_font];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 pointSize];
      v5 = v7;
    }
  }

  return v5;
}

+ (id)_bestVisibleStringForView:(id)a3 usingExecutor:(id)a4
{
  v62 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  if ([CKContextUIClasses isSFSafariView:v6])
  {
    v10 = [v7 context];
    [v10 setRemoteProcesses:{objc_msgSend(v10, "remoteProcesses") + 1}];
  }

  if ([CKContextUIClasses isWKWebView:v6])
  {
    v11 = [a1 _handleWKWebView:v6 withExecutor:v7];
LABEL_7:
    v12 = v11;
    goto LABEL_11;
  }

  if ([CKContextUIClasses isPDFView:v6])
  {
    v11 = [a1 handlePDFView:v6 withExecutor:v7];
    goto LABEL_7;
  }

  if ([a1 controlCodeForExecutor:v7] == 1 || +[CKContextContentProviderManager isSafariContentProvider](CKContextContentProviderManager, "isSafariContentProvider"))
  {
    goto LABEL_10;
  }

  if (objc_opt_respondsToSelector())
  {
    v15 = [v6 textContentType];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([a1 _isSensitiveTextContentType:v15])
    {

LABEL_10:
      v12 = 0;
      goto LABEL_11;
    }
  }

  if (objc_opt_respondsToSelector() & 1) != 0 && ([v6 isSecureTextEntry])
  {
    goto LABEL_10;
  }

  if ([0 length] || (objc_opt_respondsToSelector() & 1) == 0)
  {
    v17 = 0;
  }

  else
  {
    v16 = [v6 attributedText];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 string];
    }

    else
    {
      v17 = 0;
    }
  }

  if (![v17 length] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v18 = [v6 performSelector:sel_text];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;

      v17 = v19;
    }
  }

  if (![v17 length])
  {
    v20 = [MEMORY[0x1E696AAE8] mainBundle];
    v21 = [v20 bundleIdentifier];
    if ([v21 isEqualToString:@"com.apple.mobilecal"])
    {
      v22 = [v9 isEqualToString:@"EKEventDetailAttendeesListView"];

      if (v22)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1B842F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Performing special handling for Calendar", buf, 2u);
        }

        v23 = objc_opt_class();
        InstanceVariable = class_getInstanceVariable(v23, "_inviteeNames");
        if (InstanceVariable)
        {
          v25 = InstanceVariable;
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
          {
            +[CKContextContentProviderUIScene _bestVisibleStringForView:usingExecutor:];
          }

          v26 = object_getIvar(v6, v25);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v27 = v26;
            if ([v27 count])
            {
              v51 = v9;
              v52 = v27;
              v53 = v26;
              v54 = v17;
              v28 = [v27 firstObject];
              v55 = [MEMORY[0x1E695DF70] array];
              v56 = 0u;
              v57 = 0u;
              v58 = 0u;
              v59 = 0u;
              v29 = v28;
              v30 = [v29 countByEnumeratingWithState:&v56 objects:v61 count:16];
              if (v30)
              {
                v31 = v30;
                v32 = *v57;
                do
                {
                  for (i = 0; i != v31; ++i)
                  {
                    if (*v57 != v32)
                    {
                      objc_enumerationMutation(v29);
                    }

                    v34 = *(*(&v56 + 1) + 8 * i);
                    if (objc_opt_respondsToSelector())
                    {
                      v35 = [v34 performSelector:sel_displayString];
                      if (objc_opt_respondsToSelector())
                      {
                        v36 = [v35 performSelector:sel_string];
                        [v55 addObject:v36];
                      }
                    }
                  }

                  v31 = [v29 countByEnumeratingWithState:&v56 objects:v61 count:16];
                }

                while (v31);
              }

              v37 = objc_alloc_init(MEMORY[0x1E696AD08]);
              v17 = [v37 stringFromItems:v55];

              v27 = v52;
              v26 = v53;
              v9 = v51;
            }
          }
        }
      }
    }

    else
    {
    }
  }

  if (![v17 length] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v38 = [v6 performSelector:sel_accessibilityLabel];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v38 length] >= 0x14)
    {
      v39 = v38;

      v17 = v39;
    }
  }

  if (![v17 length] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v40 = [v6 performSelector:sel_component];
    if (objc_opt_respondsToSelector())
    {
      v41 = [v40 performSelector:sel_text];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v42 = v41;

        v17 = v42;
      }
    }
  }

  if (![v17 length] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v43 = [v6 performSelector:sel_delegate];
    if (objc_opt_respondsToSelector())
    {
      v44 = [v43 performSelector:sel_text];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v45 = v44;

        v17 = v45;
      }
    }
  }

  if (![v17 length] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v46 = [v6 performSelector:sel_dataDetectorElement];
    if (objc_opt_respondsToSelector())
    {
      v47 = [v46 performSelector:sel_scannerResult];
      if (objc_opt_respondsToSelector())
      {
        v48 = [v47 performSelector:sel_value];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v49 = v48;

          v17 = v49;
        }
      }
    }
  }

  if ([v17 length])
  {
    v50 = v17;
  }

  else
  {
    v50 = 0;
  }

  v12 = v50;

LABEL_11:
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)_extractItemsFromViewControllers:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E696AAE8] mainBundle];
  v41 = [v4 bundleIdentifier];

  v40 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v6)
  {
    v7 = v6;
    v42 = *v44;
    v38 = v5;
    do
    {
      v8 = 0;
      v39 = v7;
      do
      {
        if (*v44 != v42)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v43 + 1) + 8 * v8);
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        if (([v11 hasPrefix:@"HUDashboardViewController"] & 1) != 0 || objc_msgSend(v11, "hasPrefix:", @"HOHomeViewController"))
        {
          if (objc_opt_respondsToSelector())
          {
            v12 = [v9 performSelector:sel_context];
            if (objc_opt_respondsToSelector())
            {
              v13 = [(CKContextExtractionItem *)v12 performSelector:sel_room];
              if (objc_opt_respondsToSelector())
              {
                v14 = [(CKContextExtractionItem *)v13 performSelector:sel_name];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v15 = v14;
                }

                else
                {
                  v15 = 0;
                }

                v16 = v15;
              }

              else
              {
                v16 = 0;
              }

              if (objc_opt_respondsToSelector())
              {
                v20 = [(CKContextExtractionItem *)v13 performSelector:sel_uniqueIdentifier];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v21 = v20;
                }

                else
                {
                  v21 = 0;
                }

                v19 = v21;

                if (v19 && v16)
                {
                  v13 = [[CKContextExtractionItem alloc] initWithTitle:v16 type:0 bundleIdentifier:v41];
                  v22 = [v19 UUIDString];
                  [(CKContextExtractionItem *)v13 setIdentifier:v22];

                  [(CKContextExtractionItem *)v13 setExtractionSourceClassName:v11];
                  [(CKContextExtractionItem *)v13 setOnScreen:1];
                  [v40 addObject:v13];
                  v19 = v20;
                  goto LABEL_26;
                }
              }

              else
              {
                v19 = 0;
LABEL_26:
              }
            }

            else
            {
              v19 = 0;
              v16 = 0;
            }

            if ((objc_opt_respondsToSelector() & 1) == 0)
            {
              v17 = 0;
              v18 = 0;
              goto LABEL_44;
            }

            v23 = [(CKContextExtractionItem *)v12 performSelector:sel_home];
            if (objc_opt_respondsToSelector())
            {
              v24 = [v23 performSelector:sel_name];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v25 = v24;
              }

              else
              {
                v25 = 0;
              }

              v18 = v25;
            }

            else
            {
              v18 = 0;
            }

            if (objc_opt_respondsToSelector())
            {
              v26 = [v23 performSelector:sel_uniqueIdentifier];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v27 = v26;
              }

              else
              {
                v27 = 0;
              }

              v17 = v27;

              v5 = v38;
            }

            else
            {
              v17 = 0;
            }

            if (v17)
            {
              v7 = v39;
              if (v18)
              {
                v12 = [[CKContextExtractionItem alloc] initWithTitle:v18 type:2 bundleIdentifier:v41];
                v28 = [v17 UUIDString];
                [(CKContextExtractionItem *)v12 setIdentifier:v28];

                v5 = v38;
                [(CKContextExtractionItem *)v12 setExtractionSourceClassName:v11];
                [(CKContextExtractionItem *)v12 setOnScreen:1];
                [v40 addObject:v12];
LABEL_44:
              }
            }

            else
            {
              v7 = v39;
            }
          }

          else
          {
            v17 = 0;
            v18 = 0;
            v19 = 0;
            v16 = 0;
          }
        }

        if ([v11 hasPrefix:@"HomeUI.DashboardAccessoryControlViewController"])
        {
          if (objc_opt_respondsToSelector())
          {
            v29 = [v9 performSelector:sel_description];
            v30 = [v29 componentsSeparatedByString:@" uniqueIdentifier: "];
            if ([v30 count] == 2)
            {
              v31 = [v30 objectAtIndexedSubscript:0];
              v32 = 0;
              v33 = 0;
              if ([v31 hasPrefix:@"accessoryName: "])
              {
                v33 = [v31 substringFromIndex:{objc_msgSend(@"accessoryName: ", "length")}];
                v32 = [v30 objectAtIndexedSubscript:1];
              }
            }

            else
            {
              v32 = 0;
              v33 = 0;
            }

            if (v32 && v33)
            {
              v34 = [[CKContextExtractionItem alloc] initWithTitle:v33 type:1 bundleIdentifier:v41];
              [(CKContextExtractionItem *)v34 setIdentifier:v32];
              [(CKContextExtractionItem *)v34 setExtractionSourceClassName:v11];
              [(CKContextExtractionItem *)v34 setOnScreen:1];
              [v40 addObject:v34];
            }
          }

          else
          {
            v33 = 0;
            v32 = 0;
          }
        }

        ++v8;
      }

      while (v7 != v8);
      v35 = [v5 countByEnumeratingWithState:&v43 objects:v47 count:16];
      v7 = v35;
    }

    while (v35);
  }

  v36 = *MEMORY[0x1E69E9840];

  return v40;
}

+ (id)_UIElementsForWebViewContentString:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 length])
  {
    v4 = [CKContextSharedExtractionHelper blocksFromText:v3];
    v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ([v4 count])
    {
      v24 = v4;
      v25 = v3;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v5 = v4;
      v6 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v28;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v28 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v27 + 1) + 8 * i);
            if (![CKContextSharedExtractionHelper textBlockLooksLikeAListWithText:v10])
            {
              v11 = [MEMORY[0x1E696AB08] newlineCharacterSet];
              v12 = [v10 componentsSeparatedByCharactersInSet:v11];
              v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"@distinctUnionOfObjects.%@", @"self"];
              v14 = [v12 valueForKeyPath:v13];

              v15 = [v14 componentsJoinedByString:@"\n"];
              v16 = [v14 count];
              v17 = [v15 length];
              if (v17)
              {
                v18 = v16 == 0;
              }

              else
              {
                v18 = 1;
              }

              if (!v18)
              {
                v19 = v17 / v16;
                v20 = [[CKContextUIElement alloc] initWithText:v15 className:@"WKWebView"];
                *&v21 = v19;
                [(CKContextUIElement *)v20 setDensity:v21];
                [v26 addObject:v20];
              }
            }
          }

          v7 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v7);
      }

      v4 = v24;
      v3 = v25;
    }
  }

  else
  {
    v26 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];

  return v26;
}

+ (id)_bestContentStringForWebViewUIElements:(id)a3 andTitle:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    v7 = [MEMORY[0x1E695DF70] array];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v21 + 1) + 8 * i);
          [v13 density];
          if (v14 > 43.0)
          {
            v15 = [v13 text];
            [v7 addObject:v15];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v10);
    }

    v16 = [v7 componentsJoinedByString:@"\n\n"];
    if ([v6 length])
    {
      v17 = &stru_1F305A6D8;
      if (v16)
      {
        v17 = v16;
      }

      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", v6, @"\n\n", v17];

      v16 = v18;
    }
  }

  else
  {
    v16 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (id)_handleWKWebView:(id)a3 withExecutor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 controlCodeForExecutor:v7];
  v9 = [CKContextContentProviderManager optionsForControlCode:v8];
  if (v8 != 2 && v8 != 4 && [v6 isLoading])
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      +[CKContextContentProviderUIScene _handleWKWebView:withExecutor:];
    }

LABEL_10:
    v13 = &stru_1F305A6D8;
    goto LABEL_11;
  }

  v10 = [v6 configuration];
  v11 = [v10 websiteDataStore];
  v12 = [v11 isPersistent];

  if ((v12 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B842F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "The webview data store is not persistent. We cannot extract from it for privacy reasons without user gesture.", buf, 2u);
    }

    goto LABEL_10;
  }

  [v7 markIncomplete];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __65__CKContextContentProviderUIScene__handleWKWebView_withExecutor___block_invoke;
  v15[3] = &unk_1E7CEE620;
  v17 = a1;
  v16 = v6;
  v18 = (v9 & 0x10) != 0;
  v19 = (v9 & 0x20) != 0;
  [v7 addWorkItem:v15];

  v13 = 0;
LABEL_11:

  return v13;
}

void __65__CKContextContentProviderUIScene__handleWKWebView_withExecutor___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 40) controlCodeForExecutor:v3];
  v5 = v4;
  v6 = [CKContextContentProviderManager optionsForControlCode:v4];
  v7 = (v6 >> 1) & 1;
  v8 = (v6 >> 2) & 1;
  v9 = (v6 >> 3) & 1;
  v10 = (v6 >> 6) & 1;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __65__CKContextContentProviderUIScene__handleWKWebView_withExecutor___block_invoke_2;
  v21[3] = &unk_1E7CEE5D0;
  v11 = *(a1 + 32);
  v24 = *(a1 + 48);
  v25 = v5;
  v26 = v8;
  v27 = v9;
  v22 = v11;
  v23 = v3;
  v12 = v3;
  v13 = MEMORY[0x1B8CBE810](v21);
  v15 = *(a1 + 32);
  v14 = *(a1 + 40);
  v16 = *(a1 + 49);
  v17 = *(a1 + 48);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __65__CKContextContentProviderUIScene__handleWKWebView_withExecutor___block_invoke_3;
  v19[3] = &unk_1E7CEE5F8;
  v20 = v13;
  v18 = v13;
  [v14 _extractContentFromWebView:v15 includingSnapshot:v7 includingUIBoundingBox:v8 ignoreViewTextLengthRequirements:v16 ignoreViewCountCap:v17 includeRawHTML:v10 withCompletionHandler:v19];
}

void __65__CKContextContentProviderUIScene__handleWKWebView_withExecutor___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v31 = a2;
  v28 = a3;
  v30 = a4;
  v9 = a5;
  v10 = [CKContextContentProviderUIScene _UIElementsForWebViewContentString:v31];
  v11 = [*(a1 + 32) title];
  v29 = [CKContextContentProviderUIScene _bestContentStringForWebViewUIElements:v10 andTitle:v11];

  if (*(a1 + 48) == 1)
  {
    v12 = v10;
  }

  else
  {
    v13 = [v10 count];
    if (v13 >= 0xFA)
    {
      v14 = 250;
    }

    else
    {
      v14 = v13;
    }

    v12 = [v10 subarrayWithRange:{0, v14}];
  }

  v15 = v12;
  v27 = v9;
  if (*(a1 + 48) == 1)
  {
    v16 = v9;
  }

  else
  {
    v17 = [v9 count];
    if (v17 >= 0xFA)
    {
      v18 = 250;
    }

    else
    {
      v18 = v17;
    }

    v16 = [v9 subarrayWithRange:{0, v18}];
  }

  v19 = v16;
  v20 = (*(a1 + 49) < 6u) & (0x2Cu >> *(a1 + 49));
  if (*(a1 + 50))
  {
    v21 = v16;
  }

  else
  {
    v21 = v15;
  }

  v22 = v21;
  v23 = [*(a1 + 32) title];
  if (v20 == 1)
  {
    v11 = [*(a1 + 32) URL];
    v24 = [v11 absoluteString];
    v25 = v31;
  }

  else
  {
    v25 = 0;
    v24 = 0;
  }

  if (*(a1 + 51))
  {
    v26 = v22;
  }

  else
  {
    v26 = 0;
  }

  [CKContextContentProviderUIScene _donateText:v29 withTitle:v23 debugText:v25 debugUrlString:v24 rawHTML:v28 leadImage:0 snapshot:v30 uiElements:v26 extractionItems:0 usingContextFromExecutor:*(a1 + 40)];
  if (v20)
  {
  }

  [*(a1 + 40) markReady];
}

+ (void)_extractContentFromWebView:(id)a3 includingSnapshot:(BOOL)a4 includingUIBoundingBox:(BOOL)a5 ignoreViewTextLengthRequirements:(BOOL)a6 ignoreViewCountCap:(BOOL)a7 includeRawHTML:(BOOL)a8 withCompletionHandler:(id)a9
{
  v9 = a8;
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v14 = a3;
  v15 = a9;
  if (v15)
  {
    v16 = [v14 window];
    if ([v14 _isDisplayingPDF])
    {
      v17 = [v14 _dataForDisplayedPDF];
      v75[0] = MEMORY[0x1E69E9820];
      v75[1] = 3221225472;
      v75[2] = __192__CKContextContentProviderUIScene__extractContentFromWebView_includingSnapshot_includingUIBoundingBox_ignoreViewTextLengthRequirements_ignoreViewCountCap_includeRawHTML_withCompletionHandler___block_invoke;
      v75[3] = &unk_1E7CEE648;
      v76 = v15;
      [a1 extractContentFromWebViewPDFData:v17 withCompletionHandler:v75];
      v18 = v76;
    }

    else
    {
      v19 = dispatch_group_create();
      v73[0] = 0;
      v73[1] = v73;
      v73[2] = 0x3032000000;
      v73[3] = __Block_byref_object_copy_;
      v73[4] = __Block_byref_object_dispose_;
      v74 = 0;
      v71[0] = 0;
      v71[1] = v71;
      v71[2] = 0x3032000000;
      v71[3] = __Block_byref_object_copy_;
      v71[4] = __Block_byref_object_dispose_;
      v72 = 0;
      v69[0] = 0;
      v69[1] = v69;
      v69[2] = 0x3032000000;
      v69[3] = __Block_byref_object_copy_;
      v69[4] = __Block_byref_object_dispose_;
      v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if (v10)
      {
        v21 = -1;
      }

      else
      {
        v21 = 10000;
      }

      v70 = v20;
      dispatch_group_enter(v19);
      v63[0] = MEMORY[0x1E69E9820];
      v63[1] = 3221225472;
      v63[2] = __192__CKContextContentProviderUIScene__extractContentFromWebView_includingSnapshot_includingUIBoundingBox_ignoreViewTextLengthRequirements_ignoreViewCountCap_includeRawHTML_withCompletionHandler___block_invoke_174;
      v63[3] = &unk_1E7CEE698;
      v68 = v10;
      v66 = v73;
      v67 = v21;
      v17 = v19;
      v64 = v17;
      v22 = v14;
      v65 = v22;
      [v22 _getContentsAsStringWithCompletionHandler:v63];
      v77 = 0;
      v78 = &v77;
      v79 = 0x2050000000;
      v23 = getWKContentWorldClass_softClass;
      v80 = getWKContentWorldClass_softClass;
      if (!getWKContentWorldClass_softClass)
      {
        v52 = MEMORY[0x1E69E9820];
        v53 = 3221225472;
        v54 = __getWKContentWorldClass_block_invoke;
        v55 = &unk_1E7CEE4D8;
        v56 = &v77;
        __getWKContentWorldClass_block_invoke(&v52);
        v23 = *(v78 + 24);
      }

      v24 = v23;
      _Block_object_dispose(&v77, 8);
      v25 = [v23 worldWithName:@"CKContextExtractionContentWorld"];
      v26 = v25;
      if (v11 && v25)
      {
        dispatch_group_enter(v17);
        v27 = +[CKContextSharedExtractionHelper webPageNodeExtractionJavaScript];
        v58[0] = MEMORY[0x1E69E9820];
        v58[1] = 3221225472;
        v58[2] = __192__CKContextContentProviderUIScene__extractContentFromWebView_includingSnapshot_includingUIBoundingBox_ignoreViewTextLengthRequirements_ignoreViewCountCap_includeRawHTML_withCompletionHandler___block_invoke_2;
        v58[3] = &unk_1E7CEE6C0;
        v59 = v17;
        v28 = v22;
        v60 = v28;
        v61 = v16;
        v62 = v69;
        [v28 evaluateJavaScript:v27 inFrame:0 inContentWorld:v26 completionHandler:v58];
      }

      v52 = 0;
      v53 = &v52;
      v54 = 0x3032000000;
      v55 = __Block_byref_object_copy_;
      v56 = __Block_byref_object_dispose_;
      v57 = 0;
      if (v12)
      {
        dispatch_group_enter(v17);
        [v16 bounds];
        [v16 convertRect:v22 toView:?];
        v30 = v29;
        v32 = v31;
        v34 = v33;
        v36 = v35;
        v82 = 0;
        v83 = &v82;
        v84 = 0x2050000000;
        v37 = getWKSnapshotConfigurationClass_softClass;
        v85 = getWKSnapshotConfigurationClass_softClass;
        if (!getWKSnapshotConfigurationClass_softClass)
        {
          v77 = MEMORY[0x1E69E9820];
          v78 = 3221225472;
          v79 = __getWKSnapshotConfigurationClass_block_invoke;
          v80 = &unk_1E7CEE4D8;
          v81 = &v82;
          __getWKSnapshotConfigurationClass_block_invoke(&v77);
          v37 = v83[3];
        }

        v38 = v37;
        _Block_object_dispose(&v82, 8);
        v39 = objc_alloc_init(v37);
        [v39 setRect:{v30, v32, v34, v36}];
        v49[0] = MEMORY[0x1E69E9820];
        v49[1] = 3221225472;
        v49[2] = __192__CKContextContentProviderUIScene__extractContentFromWebView_includingSnapshot_includingUIBoundingBox_ignoreViewTextLengthRequirements_ignoreViewCountCap_includeRawHTML_withCompletionHandler___block_invoke_181;
        v49[3] = &unk_1E7CEE6E8;
        v50 = v17;
        v51 = v71;
        [v22 takeSnapshotWithConfiguration:v39 completionHandler:v49];
      }

      if (v9)
      {
        dispatch_group_enter(v17);
        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = __192__CKContextContentProviderUIScene__extractContentFromWebView_includingSnapshot_includingUIBoundingBox_ignoreViewTextLengthRequirements_ignoreViewCountCap_includeRawHTML_withCompletionHandler___block_invoke_2_186;
        v46[3] = &unk_1E7CEE710;
        v47 = v17;
        v48 = &v52;
        [v22 evaluateJavaScript:@"document.documentElement.outerHTML.toString()" completionHandler:v46];
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __192__CKContextContentProviderUIScene__extractContentFromWebView_includingSnapshot_includingUIBoundingBox_ignoreViewTextLengthRequirements_ignoreViewCountCap_includeRawHTML_withCompletionHandler___block_invoke_3;
      block[3] = &unk_1E7CEE738;
      v41 = v15;
      v42 = v73;
      v43 = &v52;
      v44 = v71;
      v45 = v69;
      dispatch_group_notify(v17, MEMORY[0x1E69E96A0], block);

      _Block_object_dispose(&v52, 8);
      _Block_object_dispose(v69, 8);

      _Block_object_dispose(v71, 8);
      _Block_object_dispose(v73, 8);
      v18 = v74;
    }
  }
}

void __192__CKContextContentProviderUIScene__extractContentFromWebView_includingSnapshot_includingUIBoundingBox_ignoreViewTextLengthRequirements_ignoreViewCountCap_includeRawHTML_withCompletionHandler___block_invoke_174(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ((*(a1 + 64) & 1) != 0 || [v5 length] < 0x96)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B842F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Failed to extract enough text from main webpage frame. Trying to get content from all frames", buf, 2u);
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __192__CKContextContentProviderUIScene__extractContentFromWebView_includingSnapshot_includingUIBoundingBox_ignoreViewTextLengthRequirements_ignoreViewCountCap_includeRawHTML_withCompletionHandler___block_invoke_175;
    v15[3] = &unk_1E7CEE670;
    v13 = *(a1 + 40);
    v14 = *(a1 + 56);
    v17 = *(a1 + 48);
    v18 = v14;
    v16 = *(a1 + 32);
    [v13 _getContentsOfAllFramesAsStringWithCompletionHandler:v15];
  }

  else
  {
    v7 = *(a1 + 56);
    v8 = [v5 length];
    if (v7 >= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = v7;
    }

    v10 = [v5 substringWithRange:{0, v9}];
    v11 = *(*(a1 + 48) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    dispatch_group_leave(*(a1 + 32));
  }
}

void __192__CKContextContentProviderUIScene__extractContentFromWebView_includingSnapshot_includingUIBoundingBox_ignoreViewTextLengthRequirements_ignoreViewCountCap_includeRawHTML_withCompletionHandler___block_invoke_175(void *a1, void *a2)
{
  v3 = a1[6];
  v4 = a2;
  v5 = [v4 length];
  if (v3 >= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v3;
  }

  v7 = [v4 substringWithRange:{0, v6}];

  v8 = *(a1[5] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = a1[4];

  dispatch_group_leave(v10);
}

void __192__CKContextContentProviderUIScene__extractContentFromWebView_includingSnapshot_includingUIBoundingBox_ignoreViewTextLengthRequirements_ignoreViewCountCap_includeRawHTML_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v85 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __192__CKContextContentProviderUIScene__extractContentFromWebView_includingSnapshot_includingUIBoundingBox_ignoreViewTextLengthRequirements_ignoreViewCountCap_includeRawHTML_withCompletionHandler___block_invoke_2_cold_1(v6);
    }

    dispatch_group_leave(*(a1 + 32));
  }

  else
  {
    v7 = [v5 description];
    if ([v7 length])
    {
      v8 = [v7 dataUsingEncoding:4];
      v83 = 0;
      v9 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v8 options:0 error:&v83];
      v10 = v83;
      if (v10 || (v11 = 0x1E695D000uLL, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          __192__CKContextContentProviderUIScene__extractContentFromWebView_includingSnapshot_includingUIBoundingBox_ignoreViewTextLengthRequirements_ignoreViewCountCap_includeRawHTML_withCompletionHandler___block_invoke_2_cold_2();
        }

        dispatch_group_leave(*(a1 + 32));
      }

      else
      {
        v12 = [v9 objectForKeyedSubscript:@"nodes"];
        if (v12)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v67 = v9;
            v68 = v8;
            v69 = v7;
            v70 = v5;
            v79 = 0u;
            v80 = 0u;
            v81 = 0u;
            v82 = 0u;
            obj = v12;
            v13 = [obj countByEnumeratingWithState:&v79 objects:v84 count:16];
            v66 = v12;
            if (v13)
            {
              v14 = v13;
              v15 = 0x1E695D000uLL;
              v16 = *v80;
              v71 = *v80;
              do
              {
                v17 = 0;
                v72 = v14;
                do
                {
                  if (*v80 != v16)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v18 = *(*(&v79 + 1) + 8 * v17);
                  v19 = *(v11 + 3872);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v20 = [v18 objectForKeyedSubscript:@"text"];
                    v21 = [*(v15 + 4016) null];
                    if ([v20 isEqual:v21])
                    {
                      v22 = 0;
                    }

                    else
                    {
                      v22 = [v18 objectForKeyedSubscript:@"text"];
                    }

                    v23 = [v18 objectForKeyedSubscript:@"className"];
                    v24 = [*(v15 + 4016) null];
                    if ([v23 isEqual:v24])
                    {
                      v74 = 0;
                    }

                    else
                    {
                      v74 = [v18 objectForKeyedSubscript:@"className"];
                    }

                    v25 = [v18 objectForKeyedSubscript:@"left"];
                    v26 = [*(v15 + 4016) null];
                    if ([v25 isEqual:v26])
                    {
                      v78 = 0;
                    }

                    else
                    {
                      v78 = [v18 objectForKeyedSubscript:@"left"];
                    }

                    v27 = [v18 objectForKeyedSubscript:@"right"];
                    v28 = [*(v15 + 4016) null];
                    if ([v27 isEqual:v28])
                    {
                      v77 = 0;
                    }

                    else
                    {
                      v77 = [v18 objectForKeyedSubscript:@"right"];
                    }

                    v29 = [v18 objectForKeyedSubscript:@"top"];
                    v30 = v15;
                    v31 = [*(v15 + 4016) null];
                    if ([v29 isEqual:v31])
                    {
                      v76 = 0;
                    }

                    else
                    {
                      v76 = [v18 objectForKeyedSubscript:@"top"];
                    }

                    v32 = [v18 objectForKeyedSubscript:@"bottom"];
                    v33 = [*(v30 + 4016) null];
                    v75 = v22;
                    if ([v32 isEqual:v33])
                    {
                      v34 = 0;
                    }

                    else
                    {
                      v34 = [v18 objectForKeyedSubscript:@"bottom"];
                    }

                    v35 = [v18 objectForKeyedSubscript:@"onScreen"];
                    v36 = [*(v30 + 4016) null];
                    if ([v35 isEqual:v36])
                    {
                      v37 = 0;
                    }

                    else
                    {
                      v37 = [v18 objectForKeyedSubscript:@"onScreen"];
                    }

                    if ([v22 length])
                    {
                      v38 = [CKContextUIElement alloc];
                      v39 = [v22 length];
                      if (v39 >= 0xFA)
                      {
                        v40 = 250;
                      }

                      else
                      {
                        v40 = v39;
                      }

                      v41 = [v22 substringWithRange:{0, v40}];
                      v42 = [(CKContextUIElement *)v38 initWithText:v41 className:v74];

                      -[CKContextUIElement setOnScreen:](v42, "setOnScreen:", [v37 BOOLValue]);
                      v43 = [*(a1 + 40) window];
                      v44 = [v43 windowScene];
                      v45 = [v44 _sceneIdentifier];
                      v46 = a1;
                      v47 = [v45 copy];
                      [(CKContextUIElement *)v42 setSceneIdentifier:v47];

                      a1 = v46;
                      if (v78 && v77 && v76 && v34)
                      {
                        v48 = *(v46 + 40);
                        [v78 doubleValue];
                        v50 = v49;
                        [v76 doubleValue];
                        [v48 _convertPointFromContentsToView:{v50, v51}];
                        v53 = v52;
                        v55 = v54;
                        v56 = *(v46 + 40);
                        [v77 doubleValue];
                        v58 = v57;
                        [v34 doubleValue];
                        [v56 _convertPointFromContentsToView:{v58, v59}];
                        [*(v46 + 40) convertRect:0 toView:{v53, v55, v60 - v53, v61 - v55}];
                        [*(v46 + 48) convertRect:0 toView:?];
                        [(CKContextUIElement *)v42 setFrameInWindow:?];
                        v62 = [*(v46 + 48) screen];
                        v63 = [v62 coordinateSpace];

                        if (v63)
                        {
                          v64 = *(v46 + 48);
                          [(CKContextUIElement *)v42 frameInWindow];
                          [v64 convertPoint:v63 toCoordinateSpace:?];
                          [(CKContextUIElement *)v42 setAbsoluteOriginOnScreen:?];
                        }
                      }

                      [*(*(*(v46 + 56) + 8) + 40) addObject:v42];

                      v11 = 0x1E695D000;
                      v22 = v75;
                    }

                    v15 = v30;
                    v16 = v71;
                    v14 = v72;
                  }

                  ++v17;
                }

                while (v14 != v17);
                v14 = [obj countByEnumeratingWithState:&v79 objects:v84 count:16];
              }

              while (v14);
            }

            v6 = 0;
            v5 = v70;
            v12 = v66;
            v10 = 0;
            v8 = v68;
            v7 = v69;
            v9 = v67;
          }
        }

        dispatch_group_leave(*(a1 + 32));
      }
    }

    else
    {
      dispatch_group_leave(*(a1 + 32));
    }
  }

  v65 = *MEMORY[0x1E69E9840];
}

void __192__CKContextContentProviderUIScene__extractContentFromWebView_includingSnapshot_includingUIBoundingBox_ignoreViewTextLengthRequirements_ignoreViewCountCap_includeRawHTML_withCompletionHandler___block_invoke_181(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (v6 && !a3)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __192__CKContextContentProviderUIScene__extractContentFromWebView_includingSnapshot_includingUIBoundingBox_ignoreViewTextLengthRequirements_ignoreViewCountCap_includeRawHTML_withCompletionHandler___block_invoke_2_186(uint64_t a1, void *a2, uint64_t a3)
{
  obj = [a2 description];
  v5 = [obj length];
  if (!a3 && v5)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  }

  dispatch_group_leave(*(a1 + 32));
}

- (BOOL)_shouldInstallAppSwitcherControls
{
  if (!self->_allowAppSwitcherControls)
  {
    return 0;
  }

  v3 = [(UIButton *)self->_debugButton superview];

  if (v3)
  {
    return 0;
  }

  v6 = [(UIButton *)self->_recentsButton superview];
  v4 = v6 == 0;

  return v4;
}

- (void)_installDebuggingControlsIfApplicable
{
  if (self->_allowAppSwitcherControls)
  {
    v7[3] = v2;
    v7[4] = v3;
    objc_initWeak(v7, self);
    v4 = dispatch_time(0, 2000000000);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __72__CKContextContentProviderUIScene__installDebuggingControlsIfApplicable__block_invoke;
    v5[3] = &unk_1E7CEE760;
    objc_copyWeak(&v6, v7);
    dispatch_after(v4, MEMORY[0x1E69E96A0], v5);
    objc_destroyWeak(&v6);
    objc_destroyWeak(v7);
  }
}

uint64_t __72__CKContextContentProviderUIScene__installDebuggingControlsIfApplicable__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    if ([WeakRetained _shouldInstallAppSwitcherControls])
    {
      [v3 _installDebuggingButton];
      [v3 _installRecentsButton];
      [v3 _installDebuggingControlsIfApplicable];
    }
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)_setUpDebuggingControlsIfPossibleAfterDelay:(double)a3
{
  objc_initWeak(&location, self);
  v5 = MEMORY[0x1E695DFF0];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __79__CKContextContentProviderUIScene__setUpDebuggingControlsIfPossibleAfterDelay___block_invoke;
  v7[3] = &unk_1E7CEE788;
  objc_copyWeak(&v8, &location);
  v6 = [v5 scheduledTimerWithTimeInterval:0 repeats:v7 block:a3];
  objc_storeWeak(&self->_toolInstallationTimer, v6);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

uint64_t __79__CKContextContentProviderUIScene__setUpDebuggingControlsIfPossibleAfterDelay___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained _determineIfDebuggingControlsShouldBeAllowed];
    v4[24] = v2;
    if (v2)
    {
      [v4 _installDebuggingControlsIfApplicable];
    }
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)_installRecentsButton
{
  v21[4] = *MEMORY[0x1E69E9840];
  if (self->_allowAppSwitcherControls)
  {
    v3 = [(CKContextContentProviderUIScene *)self _containerViewForDebugButtons];
    if (v3)
    {
      v20 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"clock.fill"];
      v4 = [MEMORY[0x1E69DC738] systemButtonWithImage:v20 target:self action:sel__didSelectRecentsControl_];
      recentsButton = self->_recentsButton;
      self->_recentsButton = v4;

      v6 = [MEMORY[0x1E69DC888] whiteColor];
      [(UIButton *)self->_recentsButton setTintColor:v6];

      [(UIButton *)self->_recentsButton setTranslatesAutoresizingMaskIntoConstraints:0];
      [v3 addSubview:self->_recentsButton];
      v17 = MEMORY[0x1E696ACD8];
      v19 = [(UIButton *)self->_recentsButton topAnchor];
      v18 = [v3 topAnchor];
      v7 = [v19 constraintEqualToAnchor:v18];
      v21[0] = v7;
      v8 = [(UIButton *)self->_recentsButton leadingAnchor];
      v9 = [v3 leadingAnchor];
      v10 = [v8 constraintEqualToAnchor:v9];
      v21[1] = v10;
      v11 = [(UIButton *)self->_recentsButton widthAnchor];
      v12 = [v11 constraintEqualToConstant:70.0];
      v21[2] = v12;
      v13 = [(UIButton *)self->_recentsButton heightAnchor];
      v14 = [v13 constraintEqualToConstant:70.0];
      v21[3] = v14;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:4];
      [v17 activateConstraints:v15];
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_installDebuggingButton
{
  v21[4] = *MEMORY[0x1E69E9840];
  if (self->_allowAppSwitcherControls)
  {
    v3 = [(CKContextContentProviderUIScene *)self _containerViewForDebugButtons];
    if (v3)
    {
      v20 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"square.and.arrow.up.fill"];
      v4 = [MEMORY[0x1E69DC738] systemButtonWithImage:v20 target:self action:sel__didSelectDebugControl_];
      debugButton = self->_debugButton;
      self->_debugButton = v4;

      v6 = [MEMORY[0x1E69DC888] whiteColor];
      [(UIButton *)self->_debugButton setTintColor:v6];

      [(UIButton *)self->_debugButton setTranslatesAutoresizingMaskIntoConstraints:0];
      [v3 addSubview:self->_debugButton];
      v17 = MEMORY[0x1E696ACD8];
      v19 = [(UIButton *)self->_debugButton topAnchor];
      v18 = [v3 topAnchor];
      v7 = [v19 constraintEqualToAnchor:v18];
      v21[0] = v7;
      v8 = [(UIButton *)self->_debugButton trailingAnchor];
      v9 = [v3 trailingAnchor];
      v10 = [v8 constraintEqualToAnchor:v9];
      v21[1] = v10;
      v11 = [(UIButton *)self->_debugButton widthAnchor];
      v12 = [v11 constraintEqualToConstant:70.0];
      v21[2] = v12;
      v13 = [(UIButton *)self->_debugButton heightAnchor];
      v14 = [v13 constraintEqualToConstant:70.0];
      v21[3] = v14;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:4];
      [v17 activateConstraints:v15];
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_didSelectRecentsControl:(id)a3
{
  if (self->_allowAppSwitcherControls)
  {
    dispatch_async(MEMORY[0x1E69E96A0], &__block_literal_global_1);
  }
}

void __60__CKContextContentProviderUIScene__didSelectRecentsControl___block_invoke()
{
  v0 = *MEMORY[0x1E69DDA98];
  v1 = [MEMORY[0x1E695DFF8] URLWithString:@"universal-recents://"];
  [v0 performSelector:sel_openURL_ withObject:v1];
}

- (void)_didSelectDebugControl:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_allowAppSwitcherControls)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__CKContextContentProviderUIScene__didSelectDebugControl___block_invoke;
    block[3] = &unk_1E7CEE308;
    v7 = v4;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __58__CKContextContentProviderUIScene__didSelectDebugControl___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E69CD9F8];
  v2 = *(a1 + 32);
  v5 = [[v1 alloc] initWithActivityItems:&unk_1F305C850 applicationActivities:0];
  v3 = [v2 window];

  v4 = [v3 rootViewController];
  [v4 presentViewController:v5 animated:1 completion:0];
}

- (id)_containerViewForDebugButtons
{
  v33 = *MEMORY[0x1E69E9840];
  if (self->_allowAppSwitcherControls)
  {
    v3 = [(CKContextContentProviderUIScene *)self _scene];
    v4 = [v3 _visibleWindows];

    if ([v4 count])
    {
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v5 = v4;
      v21 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v21)
      {
        v6 = *v28;
        v22 = v5;
        v20 = *v28;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v28 != v6)
            {
              objc_enumerationMutation(v5);
            }

            v8 = [(CKContextContentProviderUIScene *)self _descendantsRelevantForDebugControls:*(*(&v27 + 1) + 8 * i)];
            v23 = 0u;
            v24 = 0u;
            v25 = 0u;
            v26 = 0u;
            v9 = v8;
            v10 = [v9 countByEnumeratingWithState:&v23 objects:v31 count:16];
            if (v10)
            {
              v11 = v10;
              v12 = *v24;
              while (2)
              {
                for (j = 0; j != v11; ++j)
                {
                  if (*v24 != v12)
                  {
                    objc_enumerationMutation(v9);
                  }

                  v14 = *(*(&v23 + 1) + 8 * j);
                  v15 = objc_opt_class();
                  v16 = NSStringFromClass(v15);
                  if ([v16 containsString:@"SBFluidSwitcherContentView"])
                  {
                    v17 = v14;

                    v5 = v22;
                    goto LABEL_23;
                  }
                }

                v11 = [v9 countByEnumeratingWithState:&v23 objects:v31 count:16];
                if (v11)
                {
                  continue;
                }

                break;
              }
            }

            v5 = v22;
            v6 = v20;
          }

          v17 = 0;
          v21 = [v22 countByEnumeratingWithState:&v27 objects:v32 count:16];
        }

        while (v21);
      }

      else
      {
        v17 = 0;
      }

LABEL_23:
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)_descendantsRelevantForDebugControls:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!self->_allowAppSwitcherControls)
  {
    goto LABEL_4;
  }

  [v4 frame];
  x = v26.origin.x;
  y = v26.origin.y;
  width = v26.size.width;
  height = v26.size.height;
  if (CGRectGetWidth(v26) < 150.0)
  {
    goto LABEL_4;
  }

  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  if (CGRectGetHeight(v27) >= 150.0)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [v10 addObject:v5];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v13 = [v5 subviews];
    v14 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v20;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v20 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [(CKContextContentProviderUIScene *)self _descendantsRelevantForDebugControls:*(*(&v19 + 1) + 8 * i)];
          [v10 addObjectsFromArray:v18];
        }

        v15 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v15);
    }
  }

  else
  {
LABEL_4:
    v10 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

void __192__CKContextContentProviderUIScene__extractContentFromWebView_includingSnapshot_includingUIBoundingBox_ignoreViewTextLengthRequirements_ignoreViewCountCap_includeRawHTML_withCompletionHandler___block_invoke_2_cold_1(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B842F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error evaluating JavaScript for node extraction: %@", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void __192__CKContextContentProviderUIScene__extractContentFromWebView_includingSnapshot_includingUIBoundingBox_ignoreViewTextLengthRequirements_ignoreViewCountCap_includeRawHTML_withCompletionHandler___block_invoke_2_cold_2()
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 138412290;
  v2 = 0;
  _os_log_error_impl(&dword_1B842F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error parsing node information to JSON dictionary: %@", &v1, 0xCu);
  v0 = *MEMORY[0x1E69E9840];
}

@end