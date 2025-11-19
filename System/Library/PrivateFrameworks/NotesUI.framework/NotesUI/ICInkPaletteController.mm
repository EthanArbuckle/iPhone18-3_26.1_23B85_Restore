@interface ICInkPaletteController
+ (id)sharedToolPickerForWindow:(id)a3;
- (BOOL)isCanvasGenerationToolSelected;
- (BOOL)isHandwritingToolSelected;
- (BOOL)isInkPaletteShowing;
- (BOOL)isToolPickerVisible;
- (CGRect)_colorPickerPopoverPresentationSourceRect:(id)a3;
- (ICInkPaletteController)init;
- (ICInkPaletteController)initWithParentView:(id)a3 responder:(id)a4 delegate:(id)a5 isSystemPaperUI:(BOOL)a6;
- (ICInkPaletteControllerDelegate)delegate;
- (ICInkToolPickerResponder)responder;
- (PKTool)colorCorrectedTool;
- (PKTool)selectedTool;
- (UIView)parentView;
- (id)_colorPickerPopoverPresentationSourceView:(id)a3;
- (id)_toolPickerUndoManager:(id)a3;
- (int64_t)colorUserInterfaceStyle;
- (void)_toolPicker:(id)a3 didChangeColor:(id)a4;
- (void)_toolPicker:(id)a3 shouldSetVisible:(BOOL)a4;
- (void)_toolPickerDidChangePosition:(id)a3;
- (void)_toolPickerVisibilityDidChange:(id)a3 isAnimationFinished:(BOOL)a4;
- (void)dealloc;
- (void)hideInkPaletteAnimated:(BOOL)a3;
- (void)resetToPencilKitCompatibleInk;
- (void)setColorUserInterfaceStyle:(int64_t)a3;
- (void)setSelectedTool:(id)a3;
- (void)setToolPickerVisible:(BOOL)a3;
- (void)showInkPalette:(BOOL)a3 animated:(BOOL)a4;
- (void)showInkPaletteAnimated:(BOOL)a3;
- (void)toolPickerIsRulerActiveDidChange:(id)a3;
- (void)toolPickerSelectedToolDidChange:(id)a3;
- (void)updateUserInterfaceStyle:(int64_t)a3;
@end

@implementation ICInkPaletteController

- (ICInkPaletteController)init
{
  [(ICInkPaletteController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ICInkPaletteController)initWithParentView:(id)a3 responder:(id)a4 delegate:(id)a5 isSystemPaperUI:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v36.receiver = self;
  v36.super_class = ICInkPaletteController;
  v13 = [(ICInkPaletteController *)&v36 init];
  v14 = v13;
  if (!v13)
  {
LABEL_39:
    v19 = v14;
    goto LABEL_40;
  }

  objc_storeWeak(&v13->_parentView, v10);
  objc_storeWeak(&v14->_responder, v11);
  objc_storeWeak(&v14->_delegate, v12);
  if (a6)
  {
    v15 = [v10 traitCollection];
    v14->_isSystemPaperUI = [v15 userInterfaceIdiom] == 1;
  }

  else
  {
    v14->_isSystemPaperUI = 0;
  }

  v16 = objc_opt_class();
  v17 = [(ICInkPaletteController *)v14 parentView];
  v18 = [v17 window];
  v19 = [v16 sharedToolPickerForWindow:v18];

  if (v19)
  {
    v20 = [(ICInkPaletteController *)v14 parentView];
    v21 = [v20 window];
    [(ICInkPaletteController *)v19 _enableTapInteractionForWindow:v21];

    v22 = 1;
    [(ICInkPaletteController *)v19 _setShowsHandwritingTool:1];
    if ((_UISolariumEnabled() & 1) == 0)
    {
      v22 = [(ICInkPaletteController *)v14 isSystemPaperUI]^ 1;
    }

    [(ICInkPaletteController *)v19 _setShowsRuler:v22];
    if (_UISolariumEnabled())
    {
      v23 = 0;
    }

    else
    {
      v23 = [(ICInkPaletteController *)v14 isSystemPaperUI]^ 1;
    }

    [(ICInkPaletteController *)v19 _setWantsBottomLineDividerVisibleInCompactSize:v23];
    [(ICInkPaletteController *)v19 _setWantsEllipsisButtonVisibleInCompactSize:[(ICInkPaletteController *)v14 isSystemPaperUI]^ 1];
    v24 = (_UISolariumEnabled() & 1) == 0 && [(ICInkPaletteController *)v14 isSystemPaperUI];
    [(ICInkPaletteController *)v19 _setWantsUndoRedoButtonsVisibleInCompactSize:v24];
    v25 = (_UISolariumEnabled() & 1) == 0 && [(ICInkPaletteController *)v14 isSystemPaperUI];
    [(ICInkPaletteController *)v19 _setIgnoresSafeAreaInsetsInCompactSize:v25];
    v26 = (_UISolariumEnabled() & 1) == 0 && [(ICInkPaletteController *)v14 isSystemPaperUI];
    [(ICInkPaletteController *)v19 _setUseEqualSpacingLayoutInCompactSize:v26];
    if ((_UISolariumEnabled() & 1) == 0 && [(ICInkPaletteController *)v14 isSystemPaperUI])
    {
      [(ICInkPaletteController *)v19 _setEdgeInsetsInCompactSize:0.0, 20.0, 0.0, 70.0];
      [(ICInkPaletteController *)v19 _setInterItemUndoRedoButtonsSpacingInCompactSize:20.0];
    }

    if (_UISolariumEnabled() && (objc_opt_respondsToSelector() & 1) != 0)
    {
      if (_UISolariumEnabled())
      {
        v27 = [(ICInkPaletteController *)v14 isSystemPaperUI];
      }

      else
      {
        v27 = 0;
      }

      [(ICInkPaletteController *)v19 _setCloseButtonVisible:v27];
    }

    if ([MEMORY[0x1E69DC938] ic_isVision])
    {
      [(ICInkPaletteController *)v19 setColorUserInterfaceStyle:1];
    }

    v28 = (_UISolariumEnabled() & 1) == 0 && [(ICInkPaletteController *)v14 isSystemPaperUI];
    [(ICInkPaletteController *)v19 _setWantsClearBackgroundColorInCompactSize:v28];
    [(ICInkPaletteController *)v19 set_delegate:v14];
    [(ICInkPaletteController *)v19 addObserver:v14];
    v29 = [(ICInkPaletteController *)v14 responder];
    [(ICInkPaletteController *)v19 setVisible:1 forFirstResponder:v29];

    v30 = [(ICInkPaletteController *)v14 storedSelectedTool];

    if (v30)
    {
      v31 = [(ICInkPaletteController *)v14 storedSelectedTool];
      [(ICInkPaletteController *)v14 setSelectedTool:v31];

      [(ICInkPaletteController *)v14 setStoredSelectedTool:0];
    }

    if ([(ICInkPaletteController *)v14 storedColorUserInterfaceStyle])
    {
      [(ICInkPaletteController *)v14 setColorUserInterfaceStyle:[(ICInkPaletteController *)v14 storedColorUserInterfaceStyle]];
    }

    v32 = [(ICInkPaletteController *)v19 _paletteHostView];
    v33 = [v32 paletteView];
    -[ICInkPaletteController setPalettePosition:](v14, "setPalettePosition:", [v33 palettePosition]);

    v34 = [(ICInkPaletteController *)v14 colorCorrectedTool];
    [(ICInkPaletteController *)v19 setSelectedTool:v34];

    [(ICInkPaletteController *)v14 setToolPicker:v19];
    goto LABEL_39;
  }

LABEL_40:

  return v19;
}

- (void)dealloc
{
  v3 = [(ICInkPaletteController *)self toolPicker];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICInkPaletteController;
  [(ICInkPaletteController *)&v4 dealloc];
}

+ (id)sharedToolPickerForWindow:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (!_UIApplicationIsExtension())
  {
    v5 = [v3 windowScene];
    if (!v5)
    {
      v6 = os_log_create("com.apple.notes", "PencilKit");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [(ICInkPaletteController *)v3 sharedToolPickerForWindow:v6];
      }

      v4 = 0;
      goto LABEL_22;
    }

    objc_opt_class();
    v6 = ICCheckedDynamicCast();
    v7 = [v6 toolPickerIdentifier];
    if (v7 || ([v6 windowIdentifier], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = v7;
      v9 = sharedToolPickerForWindow___perCanvasToolPickers;
      if (!sharedToolPickerForWindow___perCanvasToolPickers)
      {
        v10 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
        v11 = sharedToolPickerForWindow___perCanvasToolPickers;
        sharedToolPickerForWindow___perCanvasToolPickers = v10;

        v9 = sharedToolPickerForWindow___perCanvasToolPickers;
      }

      v12 = [v9 objectForKey:v5];
      if (v12)
      {
        v4 = v12;
LABEL_21:

LABEL_22:
        goto LABEL_23;
      }

      v4 = objc_alloc_init(MEMORY[0x1E6978530]);
      [v4 setStateAutosaveName:v8];
      [sharedToolPickerForWindow___perCanvasToolPickers setObject:v4 forKey:v5];
      v13 = os_log_create("com.apple.notes", "PencilKit");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v15 = 138413058;
        v16 = v4;
        v17 = 2112;
        v18 = v8;
        v19 = 2112;
        v20 = v6;
        v21 = 2112;
        v22 = v5;
        _os_log_debug_impl(&dword_1D4171000, v13, OS_LOG_TYPE_DEBUG, "created toolPicker: %@, with stateAutosaveName: %@, for window: %@, scene: %@", &v15, 0x2Au);
      }
    }

    else
    {
      v13 = os_log_create("com.apple.notes", "PencilKit");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(ICInkPaletteController *)v6 sharedToolPickerForWindow:v13];
      }

      v4 = 0;
      v8 = v13;
    }

    goto LABEL_21;
  }

  if (sharedToolPickerForWindow__onceToken != -1)
  {
    +[ICInkPaletteController sharedToolPickerForWindow:];
  }

  v4 = sharedToolPickerForWindow__toolPicker;
LABEL_23:

  return v4;
}

void __52__ICInkPaletteController_sharedToolPickerForWindow___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E6978530]);
  v1 = sharedToolPickerForWindow__toolPicker;
  sharedToolPickerForWindow__toolPicker = v0;

  v3 = [MEMORY[0x1E696AAE8] mainBundle];
  v2 = [v3 bundleIdentifier];
  [sharedToolPickerForWindow__toolPicker setStateAutosaveName:v2];
}

- (BOOL)isHandwritingToolSelected
{
  v2 = [(ICInkPaletteController *)self toolPicker];
  v3 = [v2 _isHandwritingToolSelected];

  return v3;
}

- (BOOL)isCanvasGenerationToolSelected
{
  v3 = [(ICInkPaletteController *)self toolPicker];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [(ICInkPaletteController *)self toolPicker];
  v6 = [v5 _isCanvasGenerationToolSelected];

  return v6;
}

- (BOOL)isInkPaletteShowing
{
  v2 = [(ICInkPaletteController *)self toolPicker];
  v3 = [v2 isVisible];

  return v3;
}

- (void)showInkPalette:(BOOL)a3 animated:(BOOL)a4
{
  if (a3)
  {
    [(ICInkPaletteController *)self showInkPaletteAnimated:a4];
  }

  else
  {
    [(ICInkPaletteController *)self hideInkPaletteAnimated:a4];
  }
}

- (void)showInkPaletteAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = os_log_create("com.apple.notes", "PencilKit");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(ICInkPaletteController *)v5 showInkPaletteAnimated:v6, v7, v8, v9, v10, v11, v12];
  }

  v13 = [(ICInkPaletteController *)self responder];
  [v13 setPreventFirstResponder:0];

  v14 = os_log_create("com.apple.notes", "PencilKit");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [(ICInkPaletteController *)v14 showInkPaletteAnimated:v15, v16, v17, v18, v19, v20, v21];
  }

  v22 = [(ICInkPaletteController *)self delegate];
  v23 = objc_opt_respondsToSelector();

  if (v23)
  {
    v24 = [(ICInkPaletteController *)self delegate];
    [v24 inkPalette:self willShowAnimated:v3];
  }

  v25 = [(ICInkPaletteController *)self responder];
  [v25 becomeFirstResponder];

  if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
  {
    v26 = [(ICInkPaletteController *)self parentView];
    [v26 layoutIfNeeded];
  }

  v27 = [(ICInkPaletteController *)self delegate];
  v28 = objc_opt_respondsToSelector();

  if (v28)
  {
    v29 = [(ICInkPaletteController *)self delegate];
    [v29 inkPalette:self didShowAnimated:v3];
  }
}

- (void)hideInkPaletteAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = os_log_create("com.apple.notes", "PencilKit");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(ICInkPaletteController *)v5 hideInkPaletteAnimated:v6, v7, v8, v9, v10, v11, v12];
  }

  v13 = [(ICInkPaletteController *)self delegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    v15 = [(ICInkPaletteController *)self delegate];
    [v15 inkPalette:self willHideAnimated:v3];
  }

  v16 = [(ICInkPaletteController *)self responder];
  v17 = [v16 isFirstResponder];

  if (v17)
  {
    v18 = [(ICInkPaletteController *)self responder];
    [v18 resignFirstResponder];
  }

  else
  {
    v19 = [(ICInkPaletteController *)self toolPicker];
    v20 = [v19 isVisible];

    if (!v20)
    {
      goto LABEL_19;
    }

    v18 = 0;
    while (1)
    {
      v21 = v18;
      v22 = [(ICInkPaletteController *)self parentView];
      v18 = [v22 firstResponder];

      if (!v18)
      {
        break;
      }

      v23 = [(ICInkPaletteController *)self toolPicker];
      if (![v23 isVisible])
      {
        goto LABEL_16;
      }

      v24 = [(ICInkPaletteController *)self delegate];
      if (([v24 inkPalette:self shouldResignFirstResponder:v18] & 1) == 0)
      {

LABEL_16:
        break;
      }

      v25 = [v18 canResignFirstResponder];

      if (!v25 || ([v18 resignFirstResponder] & 1) == 0)
      {
        goto LABEL_18;
      }
    }
  }

LABEL_18:

LABEL_19:
  if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
  {
    v26 = [(ICInkPaletteController *)self parentView];
    [v26 layoutIfNeeded];
  }

  v27 = [(ICInkPaletteController *)self delegate];
  v28 = objc_opt_respondsToSelector();

  if (v28)
  {
    v29 = [(ICInkPaletteController *)self delegate];
    [v29 inkPalette:self didHideAnimated:v3];
  }
}

- (BOOL)isToolPickerVisible
{
  v2 = [(ICInkPaletteController *)self toolPicker];
  v3 = [v2 isVisible];

  return v3;
}

- (void)setToolPickerVisible:(BOOL)a3
{
  v3 = a3;
  v6 = [(ICInkPaletteController *)self toolPicker];
  v5 = [(ICInkPaletteController *)self responder];
  [v6 setVisible:v3 forFirstResponder:v5];
}

- (void)updateUserInterfaceStyle:(int64_t)a3
{
  v4 = [(ICInkPaletteController *)self toolPicker];
  [v4 _updatePaletteUserInterfaceStyle:a3];
}

- (void)setSelectedTool:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.notes", "PencilKit");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(ICInkPaletteController *)v4 setSelectedTool:?];
  }

  v6 = [(ICInkPaletteController *)self toolPicker];

  if (v6)
  {
    v7 = [(ICInkPaletteController *)self toolPicker];
    [v7 setSelectedTool:v4];
  }

  else
  {
    [(ICInkPaletteController *)self setStoredSelectedTool:v4];
  }
}

- (PKTool)selectedTool
{
  v3 = [(ICInkPaletteController *)self toolPicker];
  if (v3)
  {
    v4 = [(ICInkPaletteController *)self toolPicker];
    v5 = [v4 selectedTool];
  }

  else
  {
    v5 = [(ICInkPaletteController *)self storedSelectedTool];
  }

  return v5;
}

- (PKTool)colorCorrectedTool
{
  v2 = [(ICInkPaletteController *)self selectedTool];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v3 = ICDynamicCast();
    v4 = [v3 color];
    v5 = [v4 ic_isWhite];

    if (v5)
    {
      v6 = objc_alloc(MEMORY[0x1E6978460]);
      v7 = [v3 inkType];
      v8 = [MEMORY[0x1E69DC888] blackColor];
      [v3 width];
      v9 = [v6 initWithInkType:v7 color:v8 width:?];

      v2 = v9;
    }
  }

  return v2;
}

- (void)setColorUserInterfaceStyle:(int64_t)a3
{
  v5 = os_log_create("com.apple.notes", "PencilKit");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ICInkPaletteController setColorUserInterfaceStyle:?];
  }

  v6 = [(ICInkPaletteController *)self toolPicker];

  if (v6)
  {
    v7 = [(ICInkPaletteController *)self toolPicker];
    [v7 setColorUserInterfaceStyle:a3];

    a3 = 0;
  }

  [(ICInkPaletteController *)self setStoredColorUserInterfaceStyle:a3];
}

- (int64_t)colorUserInterfaceStyle
{
  v3 = [(ICInkPaletteController *)self toolPicker];
  if (v3)
  {
    v4 = [(ICInkPaletteController *)self toolPicker];
    v5 = [v4 colorUserInterfaceStyle];
  }

  else
  {
    v5 = [(ICInkPaletteController *)self storedColorUserInterfaceStyle];
  }

  return v5;
}

- (void)resetToPencilKitCompatibleInk
{
  v23 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  v3 = [(ICInkPaletteController *)self selectedTool];
  v4 = ICDynamicCast();

  v5 = [v4 ink];
  v6 = [v5 inkFormatVersion];

  if (v6 == 1)
  {
    v20 = 0u;
    v21 = 0u;
    v19 = 0u;
    v7 = [(ICInkPaletteController *)self toolPicker:0];
    v8 = [v7 _tools];

    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      v12 = *MEMORY[0x1E69785C8];
      while (2)
      {
        v13 = 0;
        v14 = v4;
        do
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          objc_opt_class();
          v4 = ICDynamicCast();

          v15 = [v4 ink];
          if ([v15 inkFormatVersion])
          {
          }

          else
          {
            v16 = [v4 inkType];

            if (v16 == v12)
            {
              [(ICInkPaletteController *)self setSelectedTool:v4];
              v17 = [(ICInkPaletteController *)self toolPicker];
              [v17 setSelectedTool:v4];

              goto LABEL_14;
            }
          }

          ++v13;
          v14 = v4;
        }

        while (v10 != v13);
        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }
}

- (void)toolPickerSelectedToolDidChange:(id)a3
{
  v4 = a3;
  v6 = [(ICInkPaletteController *)self delegate];
  v5 = [v4 selectedTool];

  [v6 inkPalette:self didPickTool:v5];
}

- (void)toolPickerIsRulerActiveDidChange:(id)a3
{
  v4 = a3;
  v6 = [(ICInkPaletteController *)self delegate];
  v5 = [v4 isRulerActive];

  [v6 inkPaletteDidToggleRuler:self isRulerActive:v5];
}

- (void)_toolPickerVisibilityDidChange:(id)a3 isAnimationFinished:(BOOL)a4
{
  if (([a3 isVisible] & 1) == 0 && -[ICInkPaletteController didTapDoneButton](self, "didTapDoneButton"))
  {
    v5 = [(ICInkPaletteController *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(ICInkPaletteController *)self delegate];
      [v7 inkPaletteDidHideWithDoneButton:self];
    }

    [(ICInkPaletteController *)self setDidTapDoneButton:0];
  }
}

- (void)_toolPicker:(id)a3 didChangeColor:(id)a4
{
  v5 = a4;
  v6 = [(ICInkPaletteController *)self delegate];
  [v6 inkPalette:self didChangeColor:v5];
}

- (void)_toolPickerDidChangePosition:(id)a3
{
  v4 = [a3 _paletteHostView];
  v5 = [v4 paletteView];
  v6 = [v5 palettePosition];

  if (v6 && [(ICInkPaletteController *)self palettePosition]!= v6)
  {
    v7 = [(ICInkPaletteController *)self palettePosition];
    [(ICInkPaletteController *)self setPalettePosition:v6];
    v8 = [(ICInkPaletteController *)self delegate];
    [v8 inkPalette:self didChangePalettePositionStart:v7 end:v6];
  }
}

- (CGRect)_colorPickerPopoverPresentationSourceRect:(id)a3
{
  v4 = [(ICInkPaletteController *)self delegate];
  v5 = [v4 inkPaletteButtonView:self];

  [v5 frame];
  v15 = CGRectOffset(v14, -0.1, 0.0);
  x = v15.origin.x;
  y = v15.origin.y;
  width = v15.size.width;
  height = v15.size.height;

  v10 = x;
  v11 = y;
  v12 = width;
  v13 = height;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (id)_colorPickerPopoverPresentationSourceView:(id)a3
{
  v4 = [(ICInkPaletteController *)self delegate];
  v5 = [v4 inkPaletteButtonView:self];

  v6 = [v5 superview];

  return v6;
}

- (void)_toolPicker:(id)a3 shouldSetVisible:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = os_log_create("com.apple.notes", "PencilKit");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(ICInkPaletteController *)v6 _toolPicker:v4 shouldSetVisible:v7];
  }

  v8 = [MEMORY[0x1E695E000] standardUserDefaults];
  v9 = [v8 BOOLForKey:*MEMORY[0x1E69B7B38]];

  if (v9)
  {
    v10 = !v4;
  }

  else
  {
    v10 = 0;
  }

  if (!v10)
  {
    [(ICInkPaletteController *)self showInkPalette:v4 animated:1];
  }
}

- (id)_toolPickerUndoManager:(id)a3
{
  v4 = [(ICInkPaletteController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(ICInkPaletteController *)self delegate];
    v7 = [v6 inkPaletteUndoManager:self];
  }

  else
  {
    v6 = [(ICInkPaletteController *)self responder];
    v8 = [v6 window];
    v9 = [v8 firstResponder];
    v7 = [v9 undoManager];
  }

  return v7;
}

- (UIView)parentView
{
  WeakRetained = objc_loadWeakRetained(&self->_parentView);

  return WeakRetained;
}

- (ICInkToolPickerResponder)responder
{
  WeakRetained = objc_loadWeakRetained(&self->_responder);

  return WeakRetained;
}

- (ICInkPaletteControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

+ (void)sharedToolPickerForWindow:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = [a1 toolPickerIdentifier];
  v5 = [a1 windowIdentifier];
  OUTLINED_FUNCTION_0_8();
  v9 = v4;
  v10 = v6;
  v11 = v7;
  _os_log_error_impl(&dword_1D4171000, a2, OS_LOG_TYPE_ERROR, "toolPicker can't be created for window: %@, with tool picker identifier: %@, window identifier: %@", v8, 0x20u);
}

+ (void)sharedToolPickerForWindow:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 138412546;
  v3 = a1;
  v4 = 2112;
  v5 = 0;
  _os_log_error_impl(&dword_1D4171000, a2, OS_LOG_TYPE_ERROR, "toolPicker can't be created for window: %@, windowScene: %@", &v2, 0x16u);
}

- (void)setSelectedTool:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v2 = [a2 toolPicker];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_1_2(&dword_1D4171000, v3, v4, "set selected tool: %@, toolPicker: %@", v5, v6, v7, v8, v9);
}

- (void)setColorUserInterfaceStyle:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 toolPicker];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_1_2(&dword_1D4171000, v2, v3, "set color UI style: %ld, toolPicker: %@", v4, v5, v6, v7, v8);
}

- (void)_toolPicker:(os_log_t)log shouldSetVisible:.cold.1(uint64_t a1, char a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 1024;
  v6 = a2 & 1;
  _os_log_debug_impl(&dword_1D4171000, log, OS_LOG_TYPE_DEBUG, "toolPicker: %@, should set visible: %d", &v3, 0x12u);
}

@end