@interface CKContextContentProviderComponent
+ (double)_fontSizeOfView:(id)a3 usingExecutor:(id)a4;
+ (id)_UIElementsForWebViewContentString:(id)a3 withSceneIdentifier:(id)a4;
+ (id)_bestVisibleStringForView:(id)a3 usingExecutor:(id)a4;
+ (id)_decendantsRelevantForExtractionFromParentView:(id)a3;
+ (id)_getNotableSuperviewClassNamesForView:(id)a3;
+ (id)_handleWKWebView:(id)a3 withExecutor:(id)a4;
+ (void)_donateContentsOfParentView:(id)a3 usingExecutor:(id)a4 withOptions:(unint64_t)a5;
+ (void)_donateText:(id)a3 withTitle:(id)a4 debugText:(id)a5 debugUrlString:(id)a6 leadImage:(id)a7 snapshot:(id)a8 uiElements:(id)a9 usingContextFromExecutor:(id)a10;
+ (void)_extractContentFromWebView:(id)a3 includingUIBoundingBox:(BOOL)a4 withCompletionHandler:(id)a5;
+ (void)initialize;
- (CKContextContentProviderComponent)init;
- (UIView)view;
- (void)extractUsingExecutor:(id)a3 withOptions:(unint64_t)a4;
@end

@implementation CKContextContentProviderComponent

+ (void)initialize
{
  v12[6] = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == a1)
  {
    v2 = MEMORY[0x1E695DFD8];
    v3 = *MEMORY[0x1E69DE4A0];
    v12[0] = *MEMORY[0x1E69DE480];
    v12[1] = v3;
    v4 = *MEMORY[0x1E69DE528];
    v12[2] = *MEMORY[0x1E69DE588];
    v12[3] = v4;
    v5 = *MEMORY[0x1E69DE518];
    v12[4] = *MEMORY[0x1E69DE500];
    v12[5] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:6];
    v7 = [v2 setWithArray:v6];
    v8 = kSensitiveContentTypes_0;
    kSensitiveContentTypes_0 = v7;

    v9 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F305C868];
    v10 = kNotNotableSuperviewClassNames_0;
    kNotNotableSuperviewClassNames_0 = v9;
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (CKContextContentProviderComponent)init
{
  v14.receiver = self;
  v14.super_class = CKContextContentProviderComponent;
  v2 = [(CKContextContentProviderComponent *)&v14 init];
  if (v2)
  {
    v3 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG);
    if (v3)
    {
      [(CKContextContentProviderComponent *)v3 init:v4];
    }

    v11 = +[CKContextContentProviderManager sharedManager];
    [v11 addProvider:v2];

    v12 = v2;
  }

  return v2;
}

- (void)extractUsingExecutor:(id)a3 withOptions:(unint64_t)a4
{
  v6 = a3;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    WeakRetained = objc_loadWeakRetained(&self->_view);

    if (WeakRetained)
    {
      v8 = objc_opt_class();
      v9 = objc_loadWeakRetained(&self->_view);
      [v8 _donateContentsOfParentView:v9 usingExecutor:v6 withOptions:a4];
    }

    else
    {
      v10 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG);
      if (v10)
      {
        [(CKContextContentProviderComponent *)v10 extractUsingExecutor:v11 withOptions:v12, v13, v14, v15, v16, v17];
      }
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    [CKContextContentProviderComponent extractUsingExecutor:withOptions:];
  }
}

+ (void)_donateContentsOfParentView:(id)a3 usingExecutor:(id)a4 withOptions:(unint64_t)a5
{
  v75 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v60 = [v7 window];
  v9 = [a1 _decendantsRelevantForExtractionFromParentView:v7];
  if ([v9 count])
  {
    v64 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v9, "count")}];
    v59 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v57 = v7;
    v58 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v10 = [v7 window];
    v11 = [v10 windowScene];
    v56 = [v11 _sceneIdentifier];

    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v55 = v9;
    obj = v9;
    v66 = [obj countByEnumeratingWithState:&v69 objects:v74 count:16];
    v12 = 0;
    if (!v66)
    {
      goto LABEL_30;
    }

    v65 = *v70;
    v63 = a1;
    while (1)
    {
      for (i = 0; i != v66; ++i)
      {
        if (*v70 != v65)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v69 + 1) + 8 * i);
        v15 = [a1 _bestVisibleStringForView:v14 usingExecutor:v8];
        if ([v15 length])
        {
          v67 = v12;
          if (([v64 containsObject:v15] & 1) == 0)
          {
            [v64 addObject:v15];
          }

          v16 = objc_opt_class();
          v17 = NSStringFromClass(v16);
          v18 = [a1 _getNotableSuperviewClassNamesForView:v14];
          [a1 _fontSizeOfView:v14 usingExecutor:v8];
          v20 = v19;
          v21 = [v15 length];
          if (v21 >= 0xFA)
          {
            v22 = 250;
          }

          else
          {
            v22 = v21;
          }

          v23 = [v15 substringWithRange:{0, v22}];
          v24 = [[CKContextUIElement alloc] initWithText:v23 className:v17];
          [(CKContextUIElement *)v24 setSuperviewClassNames:v18];
          *&v25 = v20;
          [(CKContextUIElement *)v24 setFontSize:v25];
          v26 = [(CKContextUIElement *)v24 sceneIdentifier];
          v27 = [v26 length];

          if (!v27)
          {
            v28 = [v56 copy];
            [(CKContextUIElement *)v24 setSceneIdentifier:v28];
          }

          if ((a5 & 4) != 0)
          {
            v62 = [CKContextSharedExtractionHelper elementIsOnScreenWithView:v14 window:v60];
            [v14 bounds];
            [v14 convertRect:v60 toView:?];
            v30 = v29;
            v32 = v31;
            [(CKContextUIElement *)v24 setFrameInWindow:?];
            v33 = [v60 screen];
            [v33 coordinateSpace];
            v35 = v34 = v8;
            [v57 convertPoint:v35 toCoordinateSpace:{v30, v32}];
            [(CKContextUIElement *)v24 setAbsoluteOriginOnScreen:?];

            v8 = v34;
            [(CKContextUIElement *)v24 setOnScreen:v62];
          }

          if ([(CKContextUIElement *)v24 isOnScreen])
          {
            v36 = v59;
            if ([v59 count] >= 0xFA)
            {
              goto LABEL_22;
            }

LABEL_21:
            [v36 addObject:v24];
          }

          else
          {
            v36 = v58;
            if ([v58 count] <= 0xF9)
            {
              goto LABEL_21;
            }
          }

LABEL_22:

          a1 = v63;
          v12 = v67;
        }

        if ((a5 & 1) != 0 && !v12)
        {
          v37 = [CKContextSharedExtractionHelper bestImageForView:v14];
          v12 = v37;
          if (v37)
          {
            v38 = v37;
          }
        }
      }

      v66 = [obj countByEnumeratingWithState:&v69 objects:v74 count:16];
      if (!v66)
      {
LABEL_30:

        v39 = 250 - [v59 count];
        v40 = [v58 count];
        if (v39 >= v40)
        {
          v41 = v40;
        }

        else
        {
          v41 = v39;
        }

        v42 = [v58 subarrayWithRange:{0, v41}];
        [v59 addObjectsFromArray:v42];

        v43 = 0;
        if ((a5 & 2) != 0)
        {
          v7 = v57;
          v9 = v55;
          if (!v12)
          {
            [v60 bounds];
            v45 = v44;
            v47 = v46;
            v49 = v48;
            v51 = v50;
            v52 = [v60 isOpaque];
            v76.width = v49;
            v76.height = v51;
            UIGraphicsBeginImageContextWithOptions(v76, v52, 0.0);
            [v60 drawViewHierarchyInRect:1 afterScreenUpdates:{v45, v47, v49, v51}];
            v43 = UIGraphicsGetImageFromCurrentImageContext();
            UIGraphicsEndImageContext();
          }
        }

        else
        {
          v7 = v57;
          v9 = v55;
        }

        v53 = [v64 componentsJoinedByString:@"\n\n"];
        [a1 _donateText:v53 withTitle:0 debugText:0 debugUrlString:0 leadImage:v12 snapshot:v43 uiElements:v59 & ((a5 << 60) >> 63) usingContextFromExecutor:v8];

        goto LABEL_40;
      }
    }
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B842F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "There are no descendants on the view provided for extraction.", buf, 2u);
  }

LABEL_40:

  v54 = *MEMORY[0x1E69E9840];
}

+ (id)_decendantsRelevantForExtractionFromParentView:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v5 = [v3 subviews];
  v6 = [v5 reverseObjectEnumerator];

  v7 = [v6 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (!v7)
  {
    v9 = 0;
    goto LABEL_17;
  }

  v8 = v7;
  v9 = 0;
  v10 = *v41;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v41 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v12 = *(*(&v40 + 1) + 8 * i);
      if (([v12 isHidden] & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_12;
        }

        v13 = [MEMORY[0x1E69DCEB0] mainScreen];
        [v13 bounds];
        v15 = v14;
        v17 = v16;
        v19 = v18;
        v21 = v20;

        [v12 frame];
        v23 = v22;
        v25 = v24;
        v27 = v26;
        v29 = v28;
        v47.origin.x = v15;
        v47.origin.y = v17;
        v47.size.width = v19;
        v47.size.height = v21;
        Width = CGRectGetWidth(v47);
        [v12 frame];
        v31 = CGRectGetWidth(v48);
        if (!v9)
        {
          goto LABEL_11;
        }

        v32 = v31;
        [v9 frame];
        v50.origin.x = v33;
        v50.origin.y = v34;
        v50.size.width = v35;
        v50.size.height = v36;
        v49.origin.x = v23;
        v49.origin.y = v25;
        v49.size.width = v27;
        v49.size.height = v29;
        if (!CGRectEqualToRect(v49, v50) || vabdd_f64(Width, v32) <= 20.0)
        {
LABEL_11:
          v37 = v12;

          v9 = v37;
LABEL_12:
          [CKContextSharedExtractionHelper descendantsRelevantForContentExtractionFromView:v12 intoArray:v4];
          continue;
        }
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v40 objects:v44 count:16];
  }

  while (v8);
LABEL_17:

  v38 = *MEMORY[0x1E69E9840];

  return v4;
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

    if (([kNotNotableSuperviewClassNames_0 containsObject:v8] & 1) == 0)
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

+ (void)_donateText:(id)a3 withTitle:(id)a4 debugText:(id)a5 debugUrlString:(id)a6 leadImage:(id)a7 snapshot:(id)a8 uiElements:(id)a9 usingContextFromExecutor:(id)a10
{
  v16 = MEMORY[0x1E6997208];
  v17 = a10;
  v18 = a9;
  v19 = a8;
  v20 = a7;
  v21 = a6;
  v22 = a5;
  v23 = a4;
  v24 = a3;
  v26 = objc_alloc_init(v16);
  [v26 setText:v24];

  [v26 setTitle:v23];
  [v26 setDebugText:v22];

  [v26 setDebugUrlString:v21];
  [v26 setUiElements:v18];

  [CKContextExtractionUtil renderSnapshot:v19 toDonationItem:v26];
  [CKContextExtractionUtil renderLeadImage:v20 toDonationItem:v26];

  v25 = [v17 context];

  [v25 addItem:v26];
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
  v6 = a3;
  v7 = a4;
  if ([CKContextUIClasses isSFSafariView:v6])
  {
    v8 = [v7 context];
    [v8 setRemoteProcesses:{objc_msgSend(v8, "remoteProcesses") + 1}];
  }

  if ([CKContextUIClasses isWKWebView:v6])
  {
    v9 = [a1 _handleWKWebView:v6 withExecutor:v7];
LABEL_7:
    v10 = v9;
    goto LABEL_8;
  }

  if ([CKContextUIClasses isPDFView:v6])
  {
    v9 = [a1 handlePDFView:v6 withExecutor:v7];
    goto LABEL_7;
  }

  if (objc_opt_respondsToSelector())
  {
    v12 = [v6 textContentType];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([a1 _isSensitiveTextContentType:v12])
    {

LABEL_18:
      v10 = 0;
      goto LABEL_8;
    }
  }

  if (objc_opt_respondsToSelector() & 1) != 0 && ([v6 isSecureTextEntry])
  {
    goto LABEL_18;
  }

  if ([0 length] || (objc_opt_respondsToSelector() & 1) == 0)
  {
    v14 = 0;
  }

  else
  {
    v13 = [v6 attributedText];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v13 string];
    }

    else
    {
      v14 = 0;
    }
  }

  if (![v14 length] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v15 = [v6 performSelector:sel_text];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;

      v14 = v16;
    }
  }

  if (![v14 length] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v17 = [v6 performSelector:sel_accessibilityLabel];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v17 length] >= 0x14)
    {
      v18 = v17;

      v14 = v18;
    }
  }

  if (![v14 length] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v19 = [v6 performSelector:sel_component];
    if (objc_opt_respondsToSelector())
    {
      v20 = [v19 performSelector:sel_text];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = v20;

        v14 = v21;
      }
    }
  }

  if (![v14 length] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v22 = [v6 performSelector:sel_dataDetectorElement];
    if (objc_opt_respondsToSelector())
    {
      v23 = [v22 performSelector:sel_scannerResult];
      if (objc_opt_respondsToSelector())
      {
        v24 = [v23 performSelector:sel_value];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v25 = v24;

          v14 = v25;
        }
      }
    }
  }

  if ([v14 length])
  {
    v26 = v14;
  }

  else
  {
    v26 = 0;
  }

  v10 = v26;

LABEL_8:

  return v10;
}

+ (id)_UIElementsForWebViewContentString:(id)a3 withSceneIdentifier:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v30 = a4;
  if ([v5 length])
  {
    v6 = [CKContextSharedExtractionHelper blocksFromText:v5];
    v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ([v6 count])
    {
      v27 = v6;
      v28 = v5;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v32;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v32 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v31 + 1) + 8 * i);
            if (![CKContextSharedExtractionHelper textBlockLooksLikeAListWithText:v12])
            {
              v13 = [MEMORY[0x1E696AB08] newlineCharacterSet];
              v14 = [v12 componentsSeparatedByCharactersInSet:v13];
              v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"@distinctUnionOfObjects.%@", @"self"];
              v16 = [v14 valueForKeyPath:v15];

              v17 = [v16 componentsJoinedByString:@"\n"];
              v18 = [v16 count];
              v19 = [v17 length];
              if (v19)
              {
                v20 = v18 == 0;
              }

              else
              {
                v20 = 1;
              }

              if (!v20)
              {
                v21 = v19 / v18;
                v22 = [[CKContextUIElement alloc] initWithText:v17 className:@"WKWebView"];
                *&v23 = v21;
                [(CKContextUIElement *)v22 setDensity:v23];
                v24 = [v30 copy];
                [(CKContextUIElement *)v22 setSceneIdentifier:v24];

                [v29 addObject:v22];
              }
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v31 objects:v35 count:16];
        }

        while (v9);
      }

      v6 = v27;
      v5 = v28;
    }
  }

  else
  {
    v29 = 0;
  }

  v25 = *MEMORY[0x1E69E9840];

  return v29;
}

+ (id)_handleWKWebView:(id)a3 withExecutor:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B842F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Extracting from a WKWebView", buf, 2u);
  }

  v8 = [a1 controlCodeForExecutor:v7];
  [CKContextContentProviderManager optionsForControlCode:v8];
  if (v8 != 2 && v8 != 4 && [v6 isLoading])
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v9 = MEMORY[0x1E69E9C10];
      v10 = "The web view is still loading. There should be no attempt to extract content from it without user gesture.";
LABEL_14:
      _os_log_impl(&dword_1B842F000, v9, OS_LOG_TYPE_INFO, v10, buf, 2u);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  v11 = [v6 configuration];
  v12 = [v11 websiteDataStore];
  v13 = [v12 isPersistent];

  if ((v13 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v9 = MEMORY[0x1E69E9C10];
      v10 = "The webview data store is not persistent. We cannot extract from it for privacy reasons without user gesture.";
      goto LABEL_14;
    }

LABEL_15:
    v22 = &stru_1F305A6D8;
    goto LABEL_16;
  }

  v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG);
  if (v14)
  {
    [(CKContextContentProviderComponent *)v14 _handleWKWebView:v15 withExecutor:v16, v17, v18, v19, v20, v21];
  }

  [v7 markIncomplete];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __67__CKContextContentProviderComponent__handleWKWebView_withExecutor___block_invoke;
  v24[3] = &unk_1E7CEE5A8;
  v26 = a1;
  v25 = v6;
  [v7 addWorkItem:v24];

  v22 = 0;
LABEL_16:

  return v22;
}

void __67__CKContextContentProviderComponent__handleWKWebView_withExecutor___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 40) controlCodeForExecutor:v3];
  v5 = v4;
  v6 = [CKContextContentProviderManager optionsForControlCode:v4];
  v7 = (v6 >> 2) & 1;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __67__CKContextContentProviderComponent__handleWKWebView_withExecutor___block_invoke_2;
  v17[3] = &unk_1E7CEE7C8;
  v8 = *(a1 + 32);
  v20 = *(a1 + 40);
  v21 = v5;
  v22 = (v6 & 4) != 0;
  v23 = (v6 & 8) != 0;
  v18 = v8;
  v19 = v3;
  v9 = v3;
  v10 = MEMORY[0x1B8CBE810](v17);
  v13 = a1 + 32;
  v11 = *(a1 + 32);
  v12 = *(v13 + 8);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __67__CKContextContentProviderComponent__handleWKWebView_withExecutor___block_invoke_3;
  v15[3] = &unk_1E7CEE7F0;
  v16 = v10;
  v14 = v10;
  [v12 _extractContentFromWebView:v11 includingUIBoundingBox:v7 withCompletionHandler:v15];
}

void __67__CKContextContentProviderComponent__handleWKWebView_withExecutor___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v32 = a2;
  v30 = a3;
  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  v10 = a4;
  v11 = [v9 window];
  v12 = [v11 windowScene];
  v13 = [v12 _sceneIdentifier];
  v14 = [v8 _UIElementsForWebViewContentString:v32 withSceneIdentifier:v13];

  v15 = [*(a1 + 32) title];
  v31 = [CKContextSharedExtractionHelper bestContentStringForWebViewUIElements:v14 andTitle:v15];

  v16 = [v14 count];
  if (v16 >= 0xFA)
  {
    v17 = 250;
  }

  else
  {
    v17 = v16;
  }

  v18 = [v14 subarrayWithRange:{0, v17}];
  v19 = [v10 count];
  if (v19 >= 0xFA)
  {
    v20 = 250;
  }

  else
  {
    v20 = v19;
  }

  v21 = [v10 subarrayWithRange:{0, v20}];

  v22 = (*(a1 + 56) < 6u) & (0x2Cu >> *(a1 + 56));
  if (*(a1 + 57))
  {
    v23 = v21;
  }

  else
  {
    v23 = v18;
  }

  v24 = v23;
  v25 = *(a1 + 48);
  v26 = [*(a1 + 32) title];
  if (v22 == 1)
  {
    v4 = [*(a1 + 32) URL];
    v27 = [v4 absoluteString];
    v28 = v32;
  }

  else
  {
    v28 = 0;
    v27 = 0;
  }

  if (*(a1 + 58))
  {
    v29 = v24;
  }

  else
  {
    v29 = 0;
  }

  [v25 _donateText:v31 withTitle:v26 debugText:v28 debugUrlString:v27 leadImage:0 snapshot:v30 uiElements:v29 usingContextFromExecutor:*(a1 + 40)];
  if (v22)
  {
  }

  [*(a1 + 40) markReady];
}

+ (void)_extractContentFromWebView:(id)a3 includingUIBoundingBox:(BOOL)a4 withCompletionHandler:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  if (v9)
  {
    v10 = [v8 window];
    if ([v8 _isDisplayingPDF])
    {
      v11 = [v8 _dataForDisplayedPDF];
      v52[0] = MEMORY[0x1E69E9820];
      v52[1] = 3221225472;
      v52[2] = __109__CKContextContentProviderComponent__extractContentFromWebView_includingUIBoundingBox_withCompletionHandler___block_invoke;
      v52[3] = &unk_1E7CEE648;
      v53 = v9;
      [a1 extractContentFromWebViewPDFData:v11 withCompletionHandler:v52];
      v12 = v53;
    }

    else
    {
      v13 = dispatch_group_create();
      v50[0] = 0;
      v50[1] = v50;
      v50[2] = 0x3032000000;
      v50[3] = __Block_byref_object_copy__0;
      v50[4] = __Block_byref_object_dispose__0;
      v51 = 0;
      v48[0] = 0;
      v48[1] = v48;
      v48[2] = 0x3032000000;
      v48[3] = __Block_byref_object_copy__0;
      v48[4] = __Block_byref_object_dispose__0;
      v49 = 0;
      v46[0] = 0;
      v46[1] = v46;
      v46[2] = 0x3032000000;
      v46[3] = __Block_byref_object_copy__0;
      v46[4] = __Block_byref_object_dispose__0;
      v47 = objc_alloc_init(MEMORY[0x1E695DF70]);
      dispatch_group_enter(v13);
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __109__CKContextContentProviderComponent__extractContentFromWebView_includingUIBoundingBox_withCompletionHandler___block_invoke_113;
      v41[3] = &unk_1E7CEE818;
      v44 = v50;
      v45 = 3000;
      v11 = v13;
      v42 = v11;
      v14 = v8;
      v43 = v14;
      [v14 _getContentsAsStringWithCompletionHandler:v41];
      v55 = 0;
      v56 = &v55;
      v57 = 0x2050000000;
      v15 = getWKContentWorldClass_softClass_0;
      v58 = getWKContentWorldClass_softClass_0;
      if (!getWKContentWorldClass_softClass_0)
      {
        v54[0] = MEMORY[0x1E69E9820];
        v54[1] = 3221225472;
        v54[2] = __getWKContentWorldClass_block_invoke_0;
        v54[3] = &unk_1E7CEE4D8;
        v54[4] = &v55;
        __getWKContentWorldClass_block_invoke_0(v54);
        v15 = v56[3];
      }

      v16 = v15;
      _Block_object_dispose(&v55, 8);
      v17 = [v15 worldWithName:@"CKContextExtractionContentWorld"];
      v18 = v17;
      if (v6 && v17)
      {
        v19 = [MEMORY[0x1E695DF00] date];
        v20 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG);
        if (v20)
        {
          [(CKContextContentProviderComponent *)v20 _extractContentFromWebView:v21 includingUIBoundingBox:v22 withCompletionHandler:v23, v24, v25, v26, v27];
        }

        dispatch_group_enter(v11);
        v28 = +[CKContextSharedExtractionHelper webPageNodeExtractionJavaScript];
        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 3221225472;
        v35[2] = __109__CKContextContentProviderComponent__extractContentFromWebView_includingUIBoundingBox_withCompletionHandler___block_invoke_117;
        v35[3] = &unk_1E7CEE840;
        v29 = v19;
        v36 = v29;
        v37 = v11;
        v38 = v14;
        v39 = v10;
        v40 = v46;
        [v38 evaluateJavaScript:v28 inFrame:0 inContentWorld:v18 completionHandler:v35];
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __109__CKContextContentProviderComponent__extractContentFromWebView_includingUIBoundingBox_withCompletionHandler___block_invoke_122;
      block[3] = &unk_1E7CEE868;
      v31 = v9;
      v32 = v50;
      v33 = v48;
      v34 = v46;
      dispatch_group_notify(v11, MEMORY[0x1E69E96A0], block);

      _Block_object_dispose(v46, 8);
      _Block_object_dispose(v48, 8);

      _Block_object_dispose(v50, 8);
      v12 = v51;
    }
  }
}

void __109__CKContextContentProviderComponent__extractContentFromWebView_includingUIBoundingBox_withCompletionHandler___block_invoke_113(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 length] < 0x96)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B842F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Failed to extract enough text from main webpage frame. Trying to get content from all frames", buf, 2u);
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __109__CKContextContentProviderComponent__extractContentFromWebView_includingUIBoundingBox_withCompletionHandler___block_invoke_114;
    v12[3] = &unk_1E7CEE670;
    v10 = *(a1 + 40);
    v11 = *(a1 + 56);
    v14 = *(a1 + 48);
    v15 = v11;
    v13 = *(a1 + 32);
    [v10 _getContentsOfAllFramesAsStringWithCompletionHandler:v12];
  }

  else
  {
    v4 = *(a1 + 56);
    v5 = [v3 length];
    if (v4 >= v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = v4;
    }

    v7 = [v3 substringWithRange:{0, v6}];
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    dispatch_group_leave(*(a1 + 32));
  }
}

void __109__CKContextContentProviderComponent__extractContentFromWebView_includingUIBoundingBox_withCompletionHandler___block_invoke_114(void *a1, void *a2)
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

void __109__CKContextContentProviderComponent__extractContentFromWebView_includingUIBoundingBox_withCompletionHandler___block_invoke_117(uint64_t a1, void *a2, void *a3)
{
  v86 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    __109__CKContextContentProviderComponent__extractContentFromWebView_includingUIBoundingBox_withCompletionHandler___block_invoke_117_cold_1(a1);
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else if (v6)
  {
LABEL_3:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __192__CKContextContentProviderUIScene__extractContentFromWebView_includingSnapshot_includingUIBoundingBox_ignoreViewTextLengthRequirements_ignoreViewCountCap_includeRawHTML_withCompletionHandler___block_invoke_2_cold_1(v6);
    }

    dispatch_group_leave(*(a1 + 40));
    goto LABEL_62;
  }

  v7 = [v5 description];
  if ([v7 length])
  {
    v8 = [v7 dataUsingEncoding:4];
    v84 = 0;
    v9 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v8 options:0 error:&v84];
    v10 = v84;
    if (v10 || (v11 = 0x1E695D000uLL, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        __192__CKContextContentProviderUIScene__extractContentFromWebView_includingSnapshot_includingUIBoundingBox_ignoreViewTextLengthRequirements_ignoreViewCountCap_includeRawHTML_withCompletionHandler___block_invoke_2_cold_2();
      }

      dispatch_group_leave(*(a1 + 40));
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
          v70 = v6;
          v71 = v5;
          v80 = 0u;
          v81 = 0u;
          v82 = 0u;
          v83 = 0u;
          obj = v12;
          v13 = [obj countByEnumeratingWithState:&v80 objects:v85 count:16];
          v66 = v12;
          if (v13)
          {
            v14 = v13;
            v15 = 0x1E695D000uLL;
            v16 = *v81;
            v72 = *v81;
            do
            {
              v17 = 0;
              v73 = v14;
              do
              {
                if (*v81 != v16)
                {
                  objc_enumerationMutation(obj);
                }

                v18 = *(*(&v80 + 1) + 8 * v17);
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
                    v75 = 0;
                  }

                  else
                  {
                    v75 = [v18 objectForKeyedSubscript:@"className"];
                  }

                  v25 = [v18 objectForKeyedSubscript:@"left"];
                  v26 = [*(v15 + 4016) null];
                  if ([v25 isEqual:v26])
                  {
                    v79 = 0;
                  }

                  else
                  {
                    v79 = [v18 objectForKeyedSubscript:@"left"];
                  }

                  v27 = [v18 objectForKeyedSubscript:@"right"];
                  v28 = [*(v15 + 4016) null];
                  if ([v27 isEqual:v28])
                  {
                    v78 = 0;
                  }

                  else
                  {
                    v78 = [v18 objectForKeyedSubscript:@"right"];
                  }

                  v29 = [v18 objectForKeyedSubscript:@"top"];
                  v30 = v15;
                  v31 = [*(v15 + 4016) null];
                  if ([v29 isEqual:v31])
                  {
                    v77 = 0;
                  }

                  else
                  {
                    v77 = [v18 objectForKeyedSubscript:@"top"];
                  }

                  v32 = [v18 objectForKeyedSubscript:@"bottom"];
                  v33 = [*(v30 + 4016) null];
                  v76 = v22;
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
                    v42 = [(CKContextUIElement *)v38 initWithText:v41 className:v75];

                    -[CKContextUIElement setOnScreen:](v42, "setOnScreen:", [v37 BOOLValue]);
                    v43 = [*(a1 + 48) window];
                    v44 = [v43 windowScene];
                    v45 = [v44 _sceneIdentifier];
                    v46 = a1;
                    v47 = [v45 copy];
                    [(CKContextUIElement *)v42 setSceneIdentifier:v47];

                    a1 = v46;
                    if (v79 && v78 && v77 && v34)
                    {
                      v48 = *(v46 + 48);
                      [v79 doubleValue];
                      v50 = v49;
                      [v77 doubleValue];
                      [v48 _convertPointFromContentsToView:{v50, v51}];
                      v53 = v52;
                      v55 = v54;
                      v56 = *(v46 + 48);
                      [v78 doubleValue];
                      v58 = v57;
                      [v34 doubleValue];
                      [v56 _convertPointFromContentsToView:{v58, v59}];
                      [*(v46 + 48) convertRect:0 toView:{v53, v55, v60 - v53, v61 - v55}];
                      [*(v46 + 56) convertRect:0 toView:?];
                      [(CKContextUIElement *)v42 setFrameInWindow:?];
                      v62 = [*(v46 + 56) screen];
                      v63 = [v62 coordinateSpace];

                      if (v63)
                      {
                        v64 = *(v46 + 56);
                        [(CKContextUIElement *)v42 frameInWindow];
                        [v64 convertPoint:v63 toCoordinateSpace:?];
                        [(CKContextUIElement *)v42 setAbsoluteOriginOnScreen:?];
                      }
                    }

                    [*(*(*(v46 + 64) + 8) + 40) addObject:v42];

                    v11 = 0x1E695D000;
                    v22 = v76;
                  }

                  v15 = v30;
                  v16 = v72;
                  v14 = v73;
                }

                ++v17;
              }

              while (v14 != v17);
              v14 = [obj countByEnumeratingWithState:&v80 objects:v85 count:16];
            }

            while (v14);
          }

          v6 = v70;
          v5 = v71;
          v12 = v66;
          v10 = 0;
          v8 = v68;
          v7 = v69;
          v9 = v67;
        }
      }

      dispatch_group_leave(*(a1 + 40));
    }
  }

  else
  {
    dispatch_group_leave(*(a1 + 40));
  }

LABEL_62:
  v65 = *MEMORY[0x1E69E9840];
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

void __109__CKContextContentProviderComponent__extractContentFromWebView_includingUIBoundingBox_withCompletionHandler___block_invoke_117_cold_1(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF00] date];
  [v2 timeIntervalSinceDate:*(a1 + 32)];
  v5 = 134217984;
  v6 = v3;
  _os_log_debug_impl(&dword_1B842F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Evaluated after %f seconds", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

@end