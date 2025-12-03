@interface ICInkPaletteController
+ (id)sharedToolPickerForWindow:(id)window;
- (BOOL)isCanvasGenerationToolSelected;
- (BOOL)isHandwritingToolSelected;
- (BOOL)isInkPaletteShowing;
- (BOOL)isToolPickerVisible;
- (CGRect)_colorPickerPopoverPresentationSourceRect:(id)rect;
- (ICInkPaletteController)init;
- (ICInkPaletteController)initWithParentView:(id)view responder:(id)responder delegate:(id)delegate isSystemPaperUI:(BOOL)i;
- (ICInkPaletteControllerDelegate)delegate;
- (ICInkToolPickerResponder)responder;
- (PKTool)colorCorrectedTool;
- (PKTool)selectedTool;
- (UIView)parentView;
- (id)_colorPickerPopoverPresentationSourceView:(id)view;
- (id)_toolPickerUndoManager:(id)manager;
- (int64_t)colorUserInterfaceStyle;
- (void)_toolPicker:(id)picker didChangeColor:(id)color;
- (void)_toolPicker:(id)picker shouldSetVisible:(BOOL)visible;
- (void)_toolPickerDidChangePosition:(id)position;
- (void)_toolPickerVisibilityDidChange:(id)change isAnimationFinished:(BOOL)finished;
- (void)dealloc;
- (void)hideInkPaletteAnimated:(BOOL)animated;
- (void)resetToPencilKitCompatibleInk;
- (void)setColorUserInterfaceStyle:(int64_t)style;
- (void)setSelectedTool:(id)tool;
- (void)setToolPickerVisible:(BOOL)visible;
- (void)showInkPalette:(BOOL)palette animated:(BOOL)animated;
- (void)showInkPaletteAnimated:(BOOL)animated;
- (void)toolPickerIsRulerActiveDidChange:(id)change;
- (void)toolPickerSelectedToolDidChange:(id)change;
- (void)updateUserInterfaceStyle:(int64_t)style;
@end

@implementation ICInkPaletteController

- (ICInkPaletteController)init
{
  [(ICInkPaletteController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ICInkPaletteController)initWithParentView:(id)view responder:(id)responder delegate:(id)delegate isSystemPaperUI:(BOOL)i
{
  viewCopy = view;
  responderCopy = responder;
  delegateCopy = delegate;
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

  objc_storeWeak(&v13->_parentView, viewCopy);
  objc_storeWeak(&v14->_responder, responderCopy);
  objc_storeWeak(&v14->_delegate, delegateCopy);
  if (i)
  {
    traitCollection = [viewCopy traitCollection];
    v14->_isSystemPaperUI = [traitCollection userInterfaceIdiom] == 1;
  }

  else
  {
    v14->_isSystemPaperUI = 0;
  }

  v16 = objc_opt_class();
  parentView = [(ICInkPaletteController *)v14 parentView];
  window = [parentView window];
  v19 = [v16 sharedToolPickerForWindow:window];

  if (v19)
  {
    parentView2 = [(ICInkPaletteController *)v14 parentView];
    window2 = [parentView2 window];
    [(ICInkPaletteController *)v19 _enableTapInteractionForWindow:window2];

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
        isSystemPaperUI = [(ICInkPaletteController *)v14 isSystemPaperUI];
      }

      else
      {
        isSystemPaperUI = 0;
      }

      [(ICInkPaletteController *)v19 _setCloseButtonVisible:isSystemPaperUI];
    }

    if ([MEMORY[0x1E69DC938] ic_isVision])
    {
      [(ICInkPaletteController *)v19 setColorUserInterfaceStyle:1];
    }

    v28 = (_UISolariumEnabled() & 1) == 0 && [(ICInkPaletteController *)v14 isSystemPaperUI];
    [(ICInkPaletteController *)v19 _setWantsClearBackgroundColorInCompactSize:v28];
    [(ICInkPaletteController *)v19 set_delegate:v14];
    [(ICInkPaletteController *)v19 addObserver:v14];
    responder = [(ICInkPaletteController *)v14 responder];
    [(ICInkPaletteController *)v19 setVisible:1 forFirstResponder:responder];

    storedSelectedTool = [(ICInkPaletteController *)v14 storedSelectedTool];

    if (storedSelectedTool)
    {
      storedSelectedTool2 = [(ICInkPaletteController *)v14 storedSelectedTool];
      [(ICInkPaletteController *)v14 setSelectedTool:storedSelectedTool2];

      [(ICInkPaletteController *)v14 setStoredSelectedTool:0];
    }

    if ([(ICInkPaletteController *)v14 storedColorUserInterfaceStyle])
    {
      [(ICInkPaletteController *)v14 setColorUserInterfaceStyle:[(ICInkPaletteController *)v14 storedColorUserInterfaceStyle]];
    }

    _paletteHostView = [(ICInkPaletteController *)v19 _paletteHostView];
    paletteView = [_paletteHostView paletteView];
    -[ICInkPaletteController setPalettePosition:](v14, "setPalettePosition:", [paletteView palettePosition]);

    colorCorrectedTool = [(ICInkPaletteController *)v14 colorCorrectedTool];
    [(ICInkPaletteController *)v19 setSelectedTool:colorCorrectedTool];

    [(ICInkPaletteController *)v14 setToolPicker:v19];
    goto LABEL_39;
  }

LABEL_40:

  return v19;
}

- (void)dealloc
{
  toolPicker = [(ICInkPaletteController *)self toolPicker];
  [toolPicker removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICInkPaletteController;
  [(ICInkPaletteController *)&v4 dealloc];
}

+ (id)sharedToolPickerForWindow:(id)window
{
  v23 = *MEMORY[0x1E69E9840];
  windowCopy = window;
  if (!_UIApplicationIsExtension())
  {
    windowScene = [windowCopy windowScene];
    if (!windowScene)
    {
      v6 = os_log_create("com.apple.notes", "PencilKit");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [(ICInkPaletteController *)windowCopy sharedToolPickerForWindow:v6];
      }

      v4 = 0;
      goto LABEL_22;
    }

    objc_opt_class();
    v6 = ICCheckedDynamicCast();
    toolPickerIdentifier = [v6 toolPickerIdentifier];
    if (toolPickerIdentifier || ([v6 windowIdentifier], (toolPickerIdentifier = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = toolPickerIdentifier;
      v9 = sharedToolPickerForWindow___perCanvasToolPickers;
      if (!sharedToolPickerForWindow___perCanvasToolPickers)
      {
        weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
        v11 = sharedToolPickerForWindow___perCanvasToolPickers;
        sharedToolPickerForWindow___perCanvasToolPickers = weakToStrongObjectsMapTable;

        v9 = sharedToolPickerForWindow___perCanvasToolPickers;
      }

      v12 = [v9 objectForKey:windowScene];
      if (v12)
      {
        v4 = v12;
LABEL_21:

LABEL_22:
        goto LABEL_23;
      }

      v4 = objc_alloc_init(MEMORY[0x1E6978530]);
      [v4 setStateAutosaveName:v8];
      [sharedToolPickerForWindow___perCanvasToolPickers setObject:v4 forKey:windowScene];
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
        v22 = windowScene;
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
  toolPicker = [(ICInkPaletteController *)self toolPicker];
  _isHandwritingToolSelected = [toolPicker _isHandwritingToolSelected];

  return _isHandwritingToolSelected;
}

- (BOOL)isCanvasGenerationToolSelected
{
  toolPicker = [(ICInkPaletteController *)self toolPicker];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  toolPicker2 = [(ICInkPaletteController *)self toolPicker];
  _isCanvasGenerationToolSelected = [toolPicker2 _isCanvasGenerationToolSelected];

  return _isCanvasGenerationToolSelected;
}

- (BOOL)isInkPaletteShowing
{
  toolPicker = [(ICInkPaletteController *)self toolPicker];
  isVisible = [toolPicker isVisible];

  return isVisible;
}

- (void)showInkPalette:(BOOL)palette animated:(BOOL)animated
{
  if (palette)
  {
    [(ICInkPaletteController *)self showInkPaletteAnimated:animated];
  }

  else
  {
    [(ICInkPaletteController *)self hideInkPaletteAnimated:animated];
  }
}

- (void)showInkPaletteAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = os_log_create("com.apple.notes", "PencilKit");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(ICInkPaletteController *)v5 showInkPaletteAnimated:v6, v7, v8, v9, v10, v11, v12];
  }

  responder = [(ICInkPaletteController *)self responder];
  [responder setPreventFirstResponder:0];

  v14 = os_log_create("com.apple.notes", "PencilKit");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [(ICInkPaletteController *)v14 showInkPaletteAnimated:v15, v16, v17, v18, v19, v20, v21];
  }

  delegate = [(ICInkPaletteController *)self delegate];
  v23 = objc_opt_respondsToSelector();

  if (v23)
  {
    delegate2 = [(ICInkPaletteController *)self delegate];
    [delegate2 inkPalette:self willShowAnimated:animatedCopy];
  }

  responder2 = [(ICInkPaletteController *)self responder];
  [responder2 becomeFirstResponder];

  if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
  {
    parentView = [(ICInkPaletteController *)self parentView];
    [parentView layoutIfNeeded];
  }

  delegate3 = [(ICInkPaletteController *)self delegate];
  v28 = objc_opt_respondsToSelector();

  if (v28)
  {
    delegate4 = [(ICInkPaletteController *)self delegate];
    [delegate4 inkPalette:self didShowAnimated:animatedCopy];
  }
}

- (void)hideInkPaletteAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = os_log_create("com.apple.notes", "PencilKit");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(ICInkPaletteController *)v5 hideInkPaletteAnimated:v6, v7, v8, v9, v10, v11, v12];
  }

  delegate = [(ICInkPaletteController *)self delegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    delegate2 = [(ICInkPaletteController *)self delegate];
    [delegate2 inkPalette:self willHideAnimated:animatedCopy];
  }

  responder = [(ICInkPaletteController *)self responder];
  isFirstResponder = [responder isFirstResponder];

  if (isFirstResponder)
  {
    responder2 = [(ICInkPaletteController *)self responder];
    [responder2 resignFirstResponder];
  }

  else
  {
    toolPicker = [(ICInkPaletteController *)self toolPicker];
    isVisible = [toolPicker isVisible];

    if (!isVisible)
    {
      goto LABEL_19;
    }

    responder2 = 0;
    while (1)
    {
      v21 = responder2;
      parentView = [(ICInkPaletteController *)self parentView];
      responder2 = [parentView firstResponder];

      if (!responder2)
      {
        break;
      }

      toolPicker2 = [(ICInkPaletteController *)self toolPicker];
      if (![toolPicker2 isVisible])
      {
        goto LABEL_16;
      }

      delegate3 = [(ICInkPaletteController *)self delegate];
      if (([delegate3 inkPalette:self shouldResignFirstResponder:responder2] & 1) == 0)
      {

LABEL_16:
        break;
      }

      canResignFirstResponder = [responder2 canResignFirstResponder];

      if (!canResignFirstResponder || ([responder2 resignFirstResponder] & 1) == 0)
      {
        goto LABEL_18;
      }
    }
  }

LABEL_18:

LABEL_19:
  if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
  {
    parentView2 = [(ICInkPaletteController *)self parentView];
    [parentView2 layoutIfNeeded];
  }

  delegate4 = [(ICInkPaletteController *)self delegate];
  v28 = objc_opt_respondsToSelector();

  if (v28)
  {
    delegate5 = [(ICInkPaletteController *)self delegate];
    [delegate5 inkPalette:self didHideAnimated:animatedCopy];
  }
}

- (BOOL)isToolPickerVisible
{
  toolPicker = [(ICInkPaletteController *)self toolPicker];
  isVisible = [toolPicker isVisible];

  return isVisible;
}

- (void)setToolPickerVisible:(BOOL)visible
{
  visibleCopy = visible;
  toolPicker = [(ICInkPaletteController *)self toolPicker];
  responder = [(ICInkPaletteController *)self responder];
  [toolPicker setVisible:visibleCopy forFirstResponder:responder];
}

- (void)updateUserInterfaceStyle:(int64_t)style
{
  toolPicker = [(ICInkPaletteController *)self toolPicker];
  [toolPicker _updatePaletteUserInterfaceStyle:style];
}

- (void)setSelectedTool:(id)tool
{
  toolCopy = tool;
  v5 = os_log_create("com.apple.notes", "PencilKit");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(ICInkPaletteController *)toolCopy setSelectedTool:?];
  }

  toolPicker = [(ICInkPaletteController *)self toolPicker];

  if (toolPicker)
  {
    toolPicker2 = [(ICInkPaletteController *)self toolPicker];
    [toolPicker2 setSelectedTool:toolCopy];
  }

  else
  {
    [(ICInkPaletteController *)self setStoredSelectedTool:toolCopy];
  }
}

- (PKTool)selectedTool
{
  toolPicker = [(ICInkPaletteController *)self toolPicker];
  if (toolPicker)
  {
    toolPicker2 = [(ICInkPaletteController *)self toolPicker];
    selectedTool = [toolPicker2 selectedTool];
  }

  else
  {
    selectedTool = [(ICInkPaletteController *)self storedSelectedTool];
  }

  return selectedTool;
}

- (PKTool)colorCorrectedTool
{
  selectedTool = [(ICInkPaletteController *)self selectedTool];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v3 = ICDynamicCast();
    color = [v3 color];
    ic_isWhite = [color ic_isWhite];

    if (ic_isWhite)
    {
      v6 = objc_alloc(MEMORY[0x1E6978460]);
      inkType = [v3 inkType];
      blackColor = [MEMORY[0x1E69DC888] blackColor];
      [v3 width];
      v9 = [v6 initWithInkType:inkType color:blackColor width:?];

      selectedTool = v9;
    }
  }

  return selectedTool;
}

- (void)setColorUserInterfaceStyle:(int64_t)style
{
  v5 = os_log_create("com.apple.notes", "PencilKit");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ICInkPaletteController setColorUserInterfaceStyle:?];
  }

  toolPicker = [(ICInkPaletteController *)self toolPicker];

  if (toolPicker)
  {
    toolPicker2 = [(ICInkPaletteController *)self toolPicker];
    [toolPicker2 setColorUserInterfaceStyle:style];

    style = 0;
  }

  [(ICInkPaletteController *)self setStoredColorUserInterfaceStyle:style];
}

- (int64_t)colorUserInterfaceStyle
{
  toolPicker = [(ICInkPaletteController *)self toolPicker];
  if (toolPicker)
  {
    toolPicker2 = [(ICInkPaletteController *)self toolPicker];
    colorUserInterfaceStyle = [toolPicker2 colorUserInterfaceStyle];
  }

  else
  {
    colorUserInterfaceStyle = [(ICInkPaletteController *)self storedColorUserInterfaceStyle];
  }

  return colorUserInterfaceStyle;
}

- (void)resetToPencilKitCompatibleInk
{
  v23 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  selectedTool = [(ICInkPaletteController *)self selectedTool];
  v4 = ICDynamicCast();

  v5 = [v4 ink];
  inkFormatVersion = [v5 inkFormatVersion];

  if (inkFormatVersion == 1)
  {
    v20 = 0u;
    v21 = 0u;
    v19 = 0u;
    v7 = [(ICInkPaletteController *)self toolPicker:0];
    _tools = [v7 _tools];

    v9 = [_tools countByEnumeratingWithState:&v18 objects:v22 count:16];
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
            objc_enumerationMutation(_tools);
          }

          objc_opt_class();
          v4 = ICDynamicCast();

          v15 = [v4 ink];
          if ([v15 inkFormatVersion])
          {
          }

          else
          {
            inkType = [v4 inkType];

            if (inkType == v12)
            {
              [(ICInkPaletteController *)self setSelectedTool:v4];
              toolPicker = [(ICInkPaletteController *)self toolPicker];
              [toolPicker setSelectedTool:v4];

              goto LABEL_14;
            }
          }

          ++v13;
          v14 = v4;
        }

        while (v10 != v13);
        v10 = [_tools countByEnumeratingWithState:&v18 objects:v22 count:16];
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

- (void)toolPickerSelectedToolDidChange:(id)change
{
  changeCopy = change;
  delegate = [(ICInkPaletteController *)self delegate];
  selectedTool = [changeCopy selectedTool];

  [delegate inkPalette:self didPickTool:selectedTool];
}

- (void)toolPickerIsRulerActiveDidChange:(id)change
{
  changeCopy = change;
  delegate = [(ICInkPaletteController *)self delegate];
  isRulerActive = [changeCopy isRulerActive];

  [delegate inkPaletteDidToggleRuler:self isRulerActive:isRulerActive];
}

- (void)_toolPickerVisibilityDidChange:(id)change isAnimationFinished:(BOOL)finished
{
  if (([change isVisible] & 1) == 0 && -[ICInkPaletteController didTapDoneButton](self, "didTapDoneButton"))
  {
    delegate = [(ICInkPaletteController *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      delegate2 = [(ICInkPaletteController *)self delegate];
      [delegate2 inkPaletteDidHideWithDoneButton:self];
    }

    [(ICInkPaletteController *)self setDidTapDoneButton:0];
  }
}

- (void)_toolPicker:(id)picker didChangeColor:(id)color
{
  colorCopy = color;
  delegate = [(ICInkPaletteController *)self delegate];
  [delegate inkPalette:self didChangeColor:colorCopy];
}

- (void)_toolPickerDidChangePosition:(id)position
{
  _paletteHostView = [position _paletteHostView];
  paletteView = [_paletteHostView paletteView];
  palettePosition = [paletteView palettePosition];

  if (palettePosition && [(ICInkPaletteController *)self palettePosition]!= palettePosition)
  {
    palettePosition2 = [(ICInkPaletteController *)self palettePosition];
    [(ICInkPaletteController *)self setPalettePosition:palettePosition];
    delegate = [(ICInkPaletteController *)self delegate];
    [delegate inkPalette:self didChangePalettePositionStart:palettePosition2 end:palettePosition];
  }
}

- (CGRect)_colorPickerPopoverPresentationSourceRect:(id)rect
{
  delegate = [(ICInkPaletteController *)self delegate];
  v5 = [delegate inkPaletteButtonView:self];

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

- (id)_colorPickerPopoverPresentationSourceView:(id)view
{
  delegate = [(ICInkPaletteController *)self delegate];
  v5 = [delegate inkPaletteButtonView:self];

  superview = [v5 superview];

  return superview;
}

- (void)_toolPicker:(id)picker shouldSetVisible:(BOOL)visible
{
  visibleCopy = visible;
  pickerCopy = picker;
  v7 = os_log_create("com.apple.notes", "PencilKit");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(ICInkPaletteController *)pickerCopy _toolPicker:visibleCopy shouldSetVisible:v7];
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v9 = [standardUserDefaults BOOLForKey:*MEMORY[0x1E69B7B38]];

  if (v9)
  {
    v10 = !visibleCopy;
  }

  else
  {
    v10 = 0;
  }

  if (!v10)
  {
    [(ICInkPaletteController *)self showInkPalette:visibleCopy animated:1];
  }
}

- (id)_toolPickerUndoManager:(id)manager
{
  delegate = [(ICInkPaletteController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(ICInkPaletteController *)self delegate];
    undoManager = [delegate2 inkPaletteUndoManager:self];
  }

  else
  {
    delegate2 = [(ICInkPaletteController *)self responder];
    window = [delegate2 window];
    firstResponder = [window firstResponder];
    undoManager = [firstResponder undoManager];
  }

  return undoManager;
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