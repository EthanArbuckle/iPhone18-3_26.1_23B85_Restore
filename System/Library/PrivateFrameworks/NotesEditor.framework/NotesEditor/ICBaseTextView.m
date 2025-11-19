@interface ICBaseTextView
+ (void)initialize;
+ (void)swizzleLayoutFragmentPointInside;
+ (void)swizzleTextLayoutCanvasViewTextViewportLayoutControllerDidLayoutTextViewportElement;
- (ICBaseTextView)initWithCoder:(id)a3;
- (ICBaseTextView)initWithFrame:(CGRect)a3 textContainer:(id)a4;
- (ICEditingTextViewDelegate)icDelegate;
- (ICEditorContainer)editorContainer;
- (ICLayoutManager)icLayoutManager;
- (ICTK2TextLayoutManager)icTextLayoutManager;
- (ICTTTextContentStorage)textContentStorage;
- (ICTTTextStorage)TTTextStorage;
- (UIResponder)nextResponderOverride;
- (UIView)containerViewForAttachments;
- (id)initForTextKit1WithSize:(CGSize)a3;
- (id)initForTextKit2WithNote:(id)a3 size:(CGSize)a4 insideSystemPaper:(BOOL)a5 insideSiriSnippet:(BOOL)a6;
- (id)textController;
- (void)TTTextStorage;
- (void)commonInit;
- (void)dealloc;
- (void)drawBlockQuoteAndCleanup:(BOOL *)a3 pendingBlockQuoteLevelToDraw:(unint64_t *)a4 pendingBlockQuoteRectToDraw:(CGRect *)a5 ps:(id)a6;
- (void)drawBlockQuoteLayerInRectForTK2:(CGRect)a3 blockQuoteLevel:(int64_t)a4 isMonostyled:(BOOL)a5;
- (void)drawMonostyledLayerInRect:(CGRect)a3;
- (void)setHidden:(BOOL)a3;
- (void)textViewportLayoutControllerDidLayout:(id)a3;
- (void)updateBlockQuoteLayerForParagraphStyle:(id)a3 inRange:(_NSRange)a4 ioPreviousBlockQuoteRect:(CGRect *)a5;
- (void)updateMonostyledLayerForParagraphStyle:(id)a3 inRange:(_NSRange)a4 ioPreviousMonoRect:(CGRect *)a5 ioPreviousBlockQuoteLevel:(unint64_t *)a6;
- (void)updateStyleLayersInRange:(_NSRange)a3;
@end

@implementation ICBaseTextView

+ (void)swizzleTextLayoutCanvasViewTextViewportLayoutControllerDidLayoutTextViewportElement
{
  v2 = NSClassFromString(&cfstr_Uitextlayoutca.isa);
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s%s%s%s", "v", "@", ":", "@", "@"];
  v4 = [v3 UTF8String];

  v5 = imp_implementationWithBlock(&__block_literal_global_32);

  class_addMethod(v2, sel_textViewportLayoutController_didLayoutTextViewportElement_, v5, v4);
}

void __28__ICBaseTextView_initialize__block_invoke_2()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = *MEMORY[0x277D35C58];
  v1 = [MEMORY[0x277CCABB0] numberWithInteger:ic_currentEmphasisColorTypeDefault()];
  v4[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  [v0 registerDefaults:v2];
}

+ (void)swizzleLayoutFragmentPointInside
{
  v2 = NSClassFromString(&cfstr_Uitextlayoutfr.isa);
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s%s%s%s", "B", "@", ":", "{CGPoint=dd}", "@"];
  v4 = [v3 UTF8String];

  v5 = imp_implementationWithBlock(&__block_literal_global_44);

  class_addMethod(v2, sel_pointInside_withEvent_, v5, v4);
}

+ (void)initialize
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__ICBaseTextView_initialize__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (initialize_onceToken != -1)
  {
    dispatch_once(&initialize_onceToken, block);
  }
}

void __28__ICBaseTextView_initialize__block_invoke(uint64_t a1)
{
  [*(a1 + 32) swizzleTextLayoutCanvasViewTextViewportLayoutControllerDidLayoutTextViewportElement];
  [*(a1 + 32) swizzleLayoutFragmentPointInside];
  [MEMORY[0x277D74270] registerTextAttachmentViewProviderClass:objc_opt_class() forFileType:*MEMORY[0x277D365B0]];
  [MEMORY[0x277D74270] registerTextAttachmentViewProviderClass:objc_opt_class() forFileType:*MEMORY[0x277D35D40]];
  [MEMORY[0x277D74270] registerTextAttachmentViewProviderClass:objc_opt_class() forFileType:*MEMORY[0x277D35D58]];
  [MEMORY[0x277D74270] registerTextAttachmentViewProviderClass:objc_opt_class() forFileType:*MEMORY[0x277D35D50]];
  [MEMORY[0x277D74270] registerTextAttachmentViewProviderClass:objc_opt_class() forFileType:*MEMORY[0x277D35D30]];
  [MEMORY[0x277D74270] registerTextAttachmentViewProviderClass:objc_opt_class() forFileType:*MEMORY[0x277D35D28]];
  [MEMORY[0x277D74270] registerTextAttachmentViewProviderClass:objc_opt_class() forFileType:*MEMORY[0x277D35C10]];
  if (ICInternalSettingsIsEmphasisEnabled())
  {
    if (ICTextViewLayoutDidChangeNotification_block_invoke_onceToken != -1)
    {
      __28__ICBaseTextView_initialize__block_invoke_cold_1();
    }
  }
}

- (ICTTTextContentStorage)textContentStorage
{
  WeakRetained = objc_loadWeakRetained(&self->_textContentStorage);

  return WeakRetained;
}

- (void)commonInit
{
  if (ICInternalSettingsIsTextKit2Enabled())
  {
    v3 = objc_alloc_init(ICTextViewRenderingSurfaceView);
    [(ICBaseTextView *)self setRenderingSurfaceView:v3];

    v4 = [(ICBaseTextView *)self textLayoutManager];
    v5 = [v4 textViewportLayoutController];

    objc_initWeak(&location, self);
    v7 = MEMORY[0x277D85DD0];
    v8 = 3221225472;
    v9 = __28__ICBaseTextView_commonInit__block_invoke;
    v10 = &unk_2781ADC80;
    objc_copyWeak(&v11, &location);
    [v5 setRenderingSurfaceUpdater:&v7];
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 addObserver:self selector:sel_textViewportLayoutControllerDidLayout_ name:*MEMORY[0x277D775F8] object:0];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

- (UIView)containerViewForAttachments
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = self;
  if (!containerViewForAttachments_UITextContainerViewClass)
  {
    containerViewForAttachments_UITextContainerViewClass = NSClassFromString(&cfstr_Uitextcontaine.isa);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(ICBaseTextView *)v2 subviews];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;

          v2 = v9;
          goto LABEL_13;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v2;
}

- (ICEditingTextViewDelegate)icDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_icDelegate);

  return WeakRetained;
}

void __101__ICBaseTextView_swizzleTextLayoutCanvasViewTextViewportLayoutControllerDidLayoutTextViewportElement__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a4;
  objc_opt_class();
  v7 = [v5 textContainer];
  v8 = ICDynamicCast();

  if (v8)
  {
    objc_opt_class();
    ICDynamicCast();
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = v21 = 0u;
    v9 = [v17 textLineFragments];
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        v13 = 0;
        do
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v18 + 1) + 8 * v13);
          v15 = [v8 tk2TextView];
          v16 = [v15 renderingAttributesProvider];
          [v14 setRenderingAttributesProvider:v16];

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }
  }
}

void __28__ICBaseTextView_commonInit__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_copyWeak(&to, (a1 + 32));
  v7 = objc_loadWeakRetained(&to);

  if (v7)
  {
    v8 = objc_loadWeakRetained(&to);
    v9 = [v8 renderingSurfaceView];
    [v5 addRenderingSurface:v9 key:@"RenderingSurfaceView" group:1 placement:1];
  }

  objc_destroyWeak(&to);
}

uint64_t __50__ICBaseTextView_swizzleLayoutFragmentPointInside__block_invoke(double a1, double a2, uint64_t a3, void *a4, void *a5)
{
  v8 = a4;
  v9 = a5;
  v10 = [v8 subviews];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __50__ICBaseTextView_swizzleLayoutFragmentPointInside__block_invoke_2;
  v15[3] = &unk_2781ADC58;
  v18 = a1;
  v19 = a2;
  v16 = v8;
  v17 = v9;
  v11 = v9;
  v12 = v8;
  v13 = [v10 ic_containsObjectPassingTest:v15];

  return v13;
}

uint64_t __50__ICBaseTextView_swizzleLayoutFragmentPointInside__block_invoke_2(double *a1, void *a2)
{
  v3 = *(a1 + 4);
  v4 = a1[6];
  v5 = a1[7];
  v6 = a2;
  [v6 convertPoint:v3 fromView:{v4, v5}];
  v7 = [v6 pointInside:*(a1 + 5) withEvent:?];

  return v7;
}

- (ICBaseTextView)initWithFrame:(CGRect)a3 textContainer:(id)a4
{
  v7.receiver = self;
  v7.super_class = ICBaseTextView;
  v4 = [(ICBaseTextView *)&v7 initWithFrame:a4 textContainer:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v5 = v4;
  if (v4)
  {
    [(ICBaseTextView *)v4 commonInit];
  }

  return v5;
}

- (ICBaseTextView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = ICBaseTextView;
  v3 = [(ICBaseTextView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(ICBaseTextView *)v3 commonInit];
  }

  return v4;
}

- (id)initForTextKit1WithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = objc_alloc(MEMORY[0x277D36918]);
  v7 = [MEMORY[0x277CCAD78] UUID];
  v8 = [v6 initWithData:0 replicaID:v7];

  v9 = objc_alloc_init(ICLayoutManager);
  [v8 addLayoutManager:v9];
  v10 = [objc_alloc(MEMORY[0x277D36960]) initWithSize:{width, height}];
  [v10 setWidthTracksTextView:1];
  [(ICLayoutManager *)v9 addTextContainer:v10];
  [(ICBaseLayoutManager *)v9 setTextView:self];
  v14.receiver = self;
  v14.super_class = ICBaseTextView;
  v11 = [(ICBaseTextView *)&v14 initWithFrame:v10 textContainer:0.0, 0.0, width, height];
  v12 = v11;
  if (v11)
  {
    [(ICBaseTextView *)v11 commonInit];
  }

  return v12;
}

- (id)initForTextKit2WithNote:(id)a3 size:(CGSize)a4 insideSystemPaper:(BOOL)a5 insideSiriSnippet:(BOOL)a6
{
  v6 = a6;
  v37 = a5;
  height = a4.height;
  width = a4.width;
  v9 = a3;
  v10 = [v9 textContentStorageCreateIfNeeded];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = objc_alloc_init(MEMORY[0x277D36910]);
  }

  v13 = v12;

  v14 = objc_alloc_init(ICTextContentStorageDelegate);
  [(ICTextContentStorageDelegate *)v14 setInsideSiriSnippet:v6];
  v15 = v14;
  [v13 setDelegate:v14];
  v16 = objc_alloc_init(ICTK2TextLayoutManager);
  v39 = objc_alloc_init(ICTK2TextLayoutManagerDelegate);
  [(ICTK2TextLayoutManager *)v16 setDelegate:?];
  [v13 addTextLayoutManager:v16];
  v17 = [[ICTK2TextContainer alloc] initWithSize:width, height];
  v40 = v16;
  [(ICTK2TextLayoutManager *)v16 setTextContainer:v17];
  objc_opt_class();
  v18 = [v13 textStorage];
  v19 = [v18 styler];
  v20 = ICDynamicCast();
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = objc_alloc_init(MEMORY[0x277D36900]);
  }

  v23 = v22;

  [v23 setNote:v9 firstVisibleLocation:0];
  v24 = [v13 textStorage];
  [v24 setStyler:v23];

  [(ICTK2TextContainer *)v17 setInsideSystemPaper:v37];
  [(ICTK2TextContainer *)v17 setInsideSiriSnippet:v6];
  [v23 setIsForSiri:v6];
  v25 = v15;
  if (ICInternalSettingsIsTextKit2Enabled())
  {
    v26 = [(ICTK2TextContainer *)v17 textLayoutManager];

    v27 = v39;
    if (!v26)
    {
      [MEMORY[0x277D36198] handleFailedAssertWithCondition:"((textContainer.textLayoutManager) != nil)" functionName:"-[ICBaseTextView initForTextKit2WithNote:size:insideSystemPaper:insideSiriSnippet:]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "textContainer.textLayoutManager"}];
    }

    v28 = [(ICTK2TextContainer *)v17 textLayoutManager];
    v29 = [v28 textContentManager];

    if (!v29)
    {
      [MEMORY[0x277D36198] handleFailedAssertWithCondition:"((textContainer.textLayoutManager.textContentManager) != nil)" functionName:"-[ICBaseTextView initForTextKit2WithNote:size:insideSystemPaper:insideSiriSnippet:]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "textContainer.textLayoutManager.textContentManager"}];
    }
  }

  else
  {
    v30 = [(ICTK2TextContainer *)v17 layoutManager];

    v27 = v39;
    if (!v30)
    {
      [MEMORY[0x277D36198] handleFailedAssertWithCondition:"((textContainer.layoutManager) != nil)" functionName:"-[ICBaseTextView initForTextKit2WithNote:size:insideSystemPaper:insideSiriSnippet:]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "textContainer.layoutManager"}];
    }

    v31 = [(ICTK2TextContainer *)v17 layoutManager];
    v32 = [v31 textStorage];

    if (!v32)
    {
      [MEMORY[0x277D36198] handleFailedAssertWithCondition:"((textContainer.layoutManager.textStorage) != nil)" functionName:"-[ICBaseTextView initForTextKit2WithNote:size:insideSystemPaper:insideSiriSnippet:]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "textContainer.layoutManager.textStorage"}];
    }
  }

  v41.receiver = self;
  v41.super_class = ICBaseTextView;
  v33 = [(ICBaseTextView *)&v41 initWithFrame:v17 textContainer:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  p_isa = &v33->super.super.super.super.super.isa;
  if (v33)
  {
    [(ICBaseTextView *)v33 commonInit];
    objc_storeWeak(p_isa + 364, v13);
    objc_storeStrong(p_isa + 372, v27);
    objc_storeStrong(p_isa + 373, v25);
    objc_storeStrong(p_isa + 365, v23);
    objc_storeStrong(p_isa + 366, v17);
    [p_isa setClipsToBounds:0];
    v35 = [p_isa tk2TextContainer];
    [v35 setTk2TextView:p_isa];

    [p_isa setCanCancelContentTouches:1];
    [p_isa setDelaysContentTouches:0];
    [p_isa setKeyboardDismissMode:4];
    [p_isa setAlwaysBounceVertical:1];
    [p_isa setFindInteractionEnabled:1];
  }

  return p_isa;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D775F8] object:0];

  v4.receiver = self;
  v4.super_class = ICBaseTextView;
  [(ICBaseTextView *)&v4 dealloc];
}

- (id)textController
{
  objc_opt_class();
  v3 = [(ICBaseTextView *)self TTTextStorage];
  v4 = [v3 styler];
  v5 = ICCheckedDynamicCast();

  return v5;
}

- (ICTTTextStorage)TTTextStorage
{
  v3 = [(ICBaseTextView *)self textStorage];
  if (v3 && (v4 = v3, [(ICBaseTextView *)self textStorage], v5 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v5, v4, (isKindOfClass & 1) == 0))
  {
    v8 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(ICBaseTextView *)self TTTextStorage];
    }

    v7 = 0;
  }

  else
  {
    v7 = [(ICBaseTextView *)self textStorage];
  }

  return v7;
}

- (ICLayoutManager)icLayoutManager
{
  objc_opt_class();
  v3 = [(ICBaseTextView *)self layoutManager];
  v4 = ICDynamicCast();

  return v4;
}

- (ICTK2TextLayoutManager)icTextLayoutManager
{
  objc_opt_class();
  v3 = [(ICBaseTextView *)self textLayoutManager];
  v4 = ICDynamicCast();

  return v4;
}

- (void)textViewportLayoutControllerDidLayout:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 object];

  v16 = ICDynamicCast();

  v6 = [v16 textLayoutManager];
  v7 = [(ICBaseTextView *)self textLayoutManager];

  if (v6 == v7)
  {
    v8 = [(ICBaseTextView *)self textStorage];
    v9 = [v8 ic_range];
    [(ICBaseTextView *)self updateStyleLayersInRange:v9, v10];
  }

  if ([(ICBaseTextView *)self needsStylingRefreshOnNextLayout])
  {
    objc_opt_class();
    v11 = [(ICBaseTextView *)self TTTextStorage];
    v12 = [v11 styler];
    v13 = ICCheckedDynamicCast();

    v14 = [(ICBaseTextView *)self TTTextStorage];
    [v13 refreshTextStylingForTextStorage:v14 withTextController:v13];

    [(ICBaseTextView *)self setNeedsStylingRefreshOnNextLayout:0];
  }

  v15 = [MEMORY[0x277CCAB98] defaultCenter];
  [v15 postNotificationName:@"ICTextViewLayoutDidChangeNotification" object:self];
}

- (void)setHidden:(BOOL)a3
{
  v3 = a3;
  v10.receiver = self;
  v10.super_class = ICBaseTextView;
  [(ICBaseTextView *)&v10 setHidden:?];
  v5 = [(ICBaseTextView *)self icDelegate];
  if (v5)
  {
    v6 = v5;
    v7 = [(ICBaseTextView *)self icDelegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(ICBaseTextView *)self icDelegate];
      [v9 icBaseTextViewDidSetHidden:v3];
    }
  }
}

- (ICEditorContainer)editorContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_editorContainer);

  return WeakRetained;
}

- (UIResponder)nextResponderOverride
{
  WeakRetained = objc_loadWeakRetained(&self->_nextResponderOverride);

  return WeakRetained;
}

- (void)updateStyleLayersInRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = [(ICBaseTextView *)self layer];
  if (v6)
  {
  }

  else
  {
    v7 = [(ICBaseTextView *)self renderingSurfaceView];
    v8 = [v7 layer];

    if (!v8)
    {
      return;
    }
  }

  v9 = [(ICBaseTextView *)self textStorage];
  v10 = [v9 length];

  if (v10)
  {
    if (!length)
    {
      v11 = [(ICBaseTextView *)self textStorage];
      location = [v11 ic_range];
      length = v12;
    }

    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v40 = 0;
    v13 = [(ICBaseTextView *)self textStorage];
    v14 = *MEMORY[0x277D35DA8];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __59__ICBaseTextView_StyleRendering__updateStyleLayersInRange___block_invoke;
    v36[3] = &unk_2781ABC80;
    v36[4] = &v37;
    [v13 enumerateAttribute:v14 inRange:location options:length usingBlock:{0, v36}];

    if (v38[3])
    {
      [MEMORY[0x277CD9FF0] begin];
      [MEMORY[0x277CD9FF0] setDisableActions:1];
      v15 = [(ICBaseTextView *)self renderingSurfaceView];
      v16 = [v15 layer];
      [v16 setSublayers:0];

      v33[0] = 0;
      v33[1] = v33;
      v33[2] = 0x4010000000;
      v33[3] = &unk_21552D17E;
      v17 = *(MEMORY[0x277CBF398] + 16);
      v34 = *MEMORY[0x277CBF398];
      v35 = v17;
      v30[0] = 0;
      v30[1] = v30;
      v30[2] = 0x4010000000;
      v30[3] = &unk_21552D17E;
      v31 = v34;
      v32 = v17;
      v29[0] = 0;
      v29[1] = v29;
      v29[2] = 0x2020000000;
      v29[3] = 0;
      v27[0] = 0;
      v27[1] = v27;
      v27[2] = 0x2020000000;
      v28 = 0;
      v25[0] = 0;
      v25[1] = v25;
      v25[2] = 0x3010000000;
      v25[3] = &unk_21552D17E;
      v26 = xmmword_2154BBE70;
      v18 = [(ICBaseTextView *)self textStorage];
      v19 = [v18 string];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __59__ICBaseTextView_StyleRendering__updateStyleLayersInRange___block_invoke_2;
      v24[3] = &unk_2781AE5F8;
      v24[4] = self;
      v24[5] = v25;
      v24[6] = v33;
      v24[7] = v29;
      v24[8] = v27;
      v24[9] = v30;
      [v19 ic_enumerateParagraphsInRange:location usingBlock:{length, v24}];

      [MEMORY[0x277CD9FF0] commit];
      _Block_object_dispose(v25, 8);
      _Block_object_dispose(v27, 8);
      _Block_object_dispose(v29, 8);
      _Block_object_dispose(v30, 8);
      _Block_object_dispose(v33, 8);
    }

    else
    {
      v21 = [(ICBaseTextView *)self renderingSurfaceView];
      v22 = [v21 layer];
      [v22 setSublayers:0];
    }

    _Block_object_dispose(&v37, 8);
  }

  else
  {
    v23 = [(ICBaseTextView *)self renderingSurfaceView];
    v20 = [v23 layer];
    [v20 setSublayers:0];
  }
}

void __59__ICBaseTextView_StyleRendering__updateStyleLayersInRange___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = a2;
  objc_opt_class();
  v11 = ICDynamicCast();

  v8 = v11;
  if (v11)
  {
    v9 = [v11 style];
    v8 = v11;
    if (v9 == 4 || (v10 = [v11 blockQuoteLevel], v8 = v11, v10))
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      *a5 = 1;
    }
  }
}

void __59__ICBaseTextView_StyleRendering__updateStyleLayersInRange___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(*(a1 + 40) + 8);
  *(v7 + 32) = a2;
  *(v7 + 40) = a4 - a2;
  v8 = [*(a1 + 32) textStorage];
  v23 = [v8 attribute:*MEMORY[0x277D35DA8] atIndex:a2 effectiveRange:0];

  if (v23 && [v23 style] == 4)
  {
    [*(a1 + 32) updateMonostyledLayerForParagraphStyle:v23 inRange:*(*(*(a1 + 40) + 8) + 32) ioPreviousMonoRect:*(*(*(a1 + 40) + 8) + 40) ioPreviousBlockQuoteLevel:{*(*(a1 + 48) + 8) + 32, *(*(a1 + 56) + 8) + 24}];
  }

  else if (!NSIsEmptyRect(*(*(*(a1 + 48) + 8) + 32)))
  {
    [*(a1 + 32) drawMonostyledLayerInRect:{*(*(*(a1 + 48) + 8) + 32), *(*(*(a1 + 48) + 8) + 40), *(*(*(a1 + 48) + 8) + 48), *(*(*(a1 + 48) + 8) + 56)}];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(MEMORY[0x277CBF398] + 16);
    *(v9 + 32) = *MEMORY[0x277CBF398];
    *(v9 + 48) = v10;
  }

  if (!NSIsEmptyRect(*(*(*(a1 + 48) + 8) + 32)))
  {
    v11 = [*(a1 + 32) textStorage];
    v12 = [v11 ic_range];
    v14 = v12 + v13;

    if (v14 == a3)
    {
      [*(a1 + 32) drawMonostyledLayerInRect:{*(*(*(a1 + 48) + 8) + 32), *(*(*(a1 + 48) + 8) + 40), *(*(*(a1 + 48) + 8) + 48), *(*(*(a1 + 48) + 8) + 56)}];
      v15 = *(*(a1 + 48) + 8);
      v16 = *(MEMORY[0x277CBF398] + 16);
      *(v15 + 32) = *MEMORY[0x277CBF398];
      *(v15 + 48) = v16;
    }
  }

  if (v23 && [v23 blockQuoteLevel])
  {
    *(*(*(a1 + 56) + 8) + 24) = [v23 blockQuoteLevel];
    *(*(*(a1 + 64) + 8) + 24) = [v23 style] == 4;
    [*(a1 + 32) updateBlockQuoteLayerForParagraphStyle:v23 inRange:*(*(*(a1 + 40) + 8) + 32) ioPreviousBlockQuoteRect:{*(*(*(a1 + 40) + 8) + 40), *(*(a1 + 72) + 8) + 32}];
    goto LABEL_18;
  }

  if (!NSIsEmptyRect(*(*(*(a1 + 72) + 8) + 32)))
  {
    v18 = *(*(a1 + 56) + 8);
LABEL_17:
    [*(a1 + 32) drawBlockQuoteAndCleanup:*(*(a1 + 64) + 8) + 24 pendingBlockQuoteLevelToDraw:v18 + 24 pendingBlockQuoteRectToDraw:*(*(a1 + 72) + 8) + 32 ps:v23];
    goto LABEL_18;
  }

  if (v23)
  {
    v17 = [v23 blockQuoteLevel];
    v18 = *(*(a1 + 56) + 8);
    if (v17 != *(v18 + 24))
    {
      goto LABEL_17;
    }
  }

LABEL_18:
  if (!NSIsEmptyRect(*(*(*(a1 + 72) + 8) + 32)))
  {
    v19 = [*(a1 + 32) textStorage];
    v20 = [v19 ic_range];
    v22 = v20 + v21;

    if (v22 == a3)
    {
      [*(a1 + 32) drawBlockQuoteAndCleanup:*(*(a1 + 64) + 8) + 24 pendingBlockQuoteLevelToDraw:*(*(a1 + 56) + 8) + 24 pendingBlockQuoteRectToDraw:*(*(a1 + 72) + 8) + 32 ps:v23];
    }
  }
}

- (void)drawMonostyledLayerInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v15 = objc_alloc_init(MEMORY[0x277CD9ED0]);
  v8 = [MEMORY[0x277D75348] ICMonostyledBackgroundColor];
  [v15 setBackgroundColor:{objc_msgSend(v8, "CGColor")}];

  LODWORD(v9) = 0.25;
  [v15 setOpacity:v9];
  [v15 setCornerRadius:10.0];
  [v15 setBorderWidth:1.0];
  v10 = [MEMORY[0x277D75348] ICMonostyledBorderColor];
  [v15 setBorderColor:{objc_msgSend(v10, "CGColor")}];

  [v15 setCornerCurve:*MEMORY[0x277CDA138]];
  [(ICBaseTextView *)self ic_textContainerOrigin];
  [v15 setFrame:{x + v11, y + v12 - *MEMORY[0x277D369F0], width, height + *MEMORY[0x277D369E0] + 2.0}];
  v13 = [(ICBaseTextView *)self renderingSurfaceView];
  v14 = [v13 layer];
  [v14 addSublayer:v15];
}

- (void)drawBlockQuoteAndCleanup:(BOOL *)a3 pendingBlockQuoteLevelToDraw:(unint64_t *)a4 pendingBlockQuoteRectToDraw:(CGRect *)a5 ps:(id)a6
{
  v10 = *a4;
  v11 = *a3;
  x = a5->origin.x;
  y = a5->origin.y;
  width = a5->size.width;
  height = a5->size.height;
  v16 = a6;
  [(ICBaseTextView *)self drawBlockQuoteLayerInRectForTK2:v10 blockQuoteLevel:v11 isMonostyled:x, y, width, height];
  v17 = *(MEMORY[0x277CBF398] + 16);
  a5->origin = *MEMORY[0x277CBF398];
  a5->size = v17;
  v18 = [v16 blockQuoteLevel];

  *a4 = v18;
  *a3 = 0;
}

- (void)drawBlockQuoteLayerInRectForTK2:(CGRect)a3 blockQuoteLevel:(int64_t)a4 isMonostyled:(BOOL)a5
{
  v5 = a5;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(ICBaseTextView *)self ic_textContainerOrigin];
  v13 = v12;
  v15 = v14;
  v16 = [MEMORY[0x277D74248] ic_isRTL];
  if (a4)
  {
    if (v16)
    {
      v17 = x;
    }

    else
    {
      v17 = 5.0;
    }

    v18 = *MEMORY[0x277CDA138];
    if (v5)
    {
      v19 = y + v15 + -5.0;
    }

    else
    {
      v19 = y + v15;
    }

    if (v5)
    {
      height = height + 10.0;
    }

    v20 = 1;
    do
    {
      v21 = objc_alloc_init(MEMORY[0x277CD9ED0]);
      v22 = [MEMORY[0x277D75348] ICBlockQuoteBackgroundColor];
      [v21 setBackgroundColor:{objc_msgSend(v22, "CGColor")}];

      LODWORD(v23) = 1.0;
      [v21 setOpacity:v23];
      [v21 setCornerRadius:2.0];
      [v21 setCornerCurve:v18];
      [v21 setFrame:{v17 + v13 + ((v20 - 1) * 13.0) + 0.0, v19, width, height}];
      v24 = [(ICBaseTextView *)self renderingSurfaceView];
      v25 = [v24 layer];
      [v25 addSublayer:v21];

      ++v20;
    }

    while (v20 <= a4);
  }
}

- (void)updateMonostyledLayerForParagraphStyle:(id)a3 inRange:(_NSRange)a4 ioPreviousMonoRect:(CGRect *)a5 ioPreviousBlockQuoteLevel:(unint64_t *)a6
{
  length = a4.length;
  location = a4.location;
  v11 = a3;
  if (ICInternalSettingsIsTextKit2Enabled())
  {
    v12 = [(ICBaseTextView *)self editorContainer];
    v13 = [v12 note];
    v14 = [v13 calculateDocumentController];
    [v14 setIsExpressionFormattingEnabled:0];

    v15 = [(ICBaseTextView *)self textLayoutManager];
    v16 = [v15 ic_textRangeForRange:{location, length}];

    v44 = 0;
    v45 = &v44;
    v46 = 0x4010000000;
    v47 = &unk_21552D17E;
    v17 = MEMORY[0x277CBF398];
    v18 = *(MEMORY[0x277CBF398] + 16);
    v48 = *MEMORY[0x277CBF398];
    v49 = v18;
    v19 = [(ICBaseTextView *)self textLayoutManager];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __126__ICBaseTextView_StyleRendering__updateMonostyledLayerForParagraphStyle_inRange_ioPreviousMonoRect_ioPreviousBlockQuoteLevel___block_invoke;
    v43[3] = &unk_2781AE620;
    v43[4] = &v44;
    [v19 enumerateTextSegmentsInRange:v16 type:0 options:12 usingBlock:v43];

    v20 = [(ICBaseTextView *)self editorContainer];
    v21 = [v20 note];
    v22 = [v21 calculateDocumentController];
    [v22 setIsExpressionFormattingEnabled:1];

    v23 = [v11 blockQuoteLevel];
    v25 = v45[4];
    v24 = v45[5];
    v27 = v45[6];
    v26 = v45[7];
    v28 = [v11 blockQuoteLevel];
    v29 = *MEMORY[0x277D369E8] * v23;
    v30 = v29 + v25;
    v31 = v27 - v29;
    if (v28 == *a6)
    {
      if (!CGRectEqualToRect(*v17, *a5))
      {
        v50.origin.x = v30;
        v50.origin.y = v24;
        v50.size.width = v31;
        v50.size.height = v26;
        *a5 = CGRectUnion(*a5, v50);
LABEL_13:
        _Block_object_dispose(&v44, 8);

        goto LABEL_14;
      }
    }

    else
    {
      [(ICBaseTextView *)self drawMonostyledLayerInRect:a5->origin.x, a5->origin.y, a5->size.width, a5->size.height];
    }

    a5->origin.x = v30;
    a5->origin.y = v24;
    a5->size.width = v31;
    a5->size.height = v26;
    goto LABEL_13;
  }

  [(ICBaseTextView *)self ic_rectForRange:location, length];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  if ([v11 isBlockQuote])
  {
    v40 = *MEMORY[0x277D369E8];
  }

  else
  {
    v40 = 0.0;
  }

  v41 = [v11 isBlockQuote];
  v42 = v33 + v40;
  if (!v41)
  {
    v42 = 0.0;
  }

  [(ICBaseTextView *)self drawMonostyledLayerInRect:v42, v35, v37 - v40, v39];
LABEL_14:
}

uint64_t __126__ICBaseTextView_StyleRendering__updateMonostyledLayerForParagraphStyle_inRange_ioPreviousMonoRect_ioPreviousBlockQuoteLevel___block_invoke(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6.size.height = a5;
  v6.size.width = a4;
  v6.origin.y = a3;
  v6.origin.x = a2;
  *(*(*(a1 + 32) + 8) + 32) = CGRectUnion(*(*(*(a1 + 32) + 8) + 32), v6);
  return 1;
}

- (void)updateBlockQuoteLayerForParagraphStyle:(id)a3 inRange:(_NSRange)a4 ioPreviousBlockQuoteRect:(CGRect *)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  if (ICInternalSettingsIsTextKit2Enabled())
  {
    v10 = [(ICBaseTextView *)self editorContainer];
    v11 = [v10 note];
    v12 = [v11 calculateDocumentController];
    [v12 setIsExpressionFormattingEnabled:0];

    v13 = [(ICBaseTextView *)self textLayoutManager];
    v14 = [v13 ic_textRangeForRange:{location, length}];

    v31 = 0;
    v32 = &v31;
    v33 = 0x4010000000;
    v34 = &unk_21552D17E;
    v15 = MEMORY[0x277CBF398];
    v16 = *(MEMORY[0x277CBF398] + 16);
    v35 = *MEMORY[0x277CBF398];
    v36 = v16;
    v17 = [(ICBaseTextView *)self textLayoutManager];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __106__ICBaseTextView_StyleRendering__updateBlockQuoteLayerForParagraphStyle_inRange_ioPreviousBlockQuoteRect___block_invoke;
    v30[3] = &unk_2781AE620;
    v30[4] = &v31;
    [v17 enumerateTextSegmentsInRange:v14 type:0 options:12 usingBlock:v30];

    v18 = [(ICBaseTextView *)self editorContainer];
    v19 = [v18 note];
    v20 = [v19 calculateDocumentController];
    [v20 setIsExpressionFormattingEnabled:1];

    v21 = [v9 isRTL];
    v22 = v32[4];
    if (v21)
    {
      v22 = v22 + v32[6];
    }

    v23 = v32[5];
    v24 = v32[7];
    v25 = CGRectEqualToRect(*v15, *a5);
    v26 = 4.0;
    if (!v25)
    {
      v37.size.width = 4.0;
      v37.origin.x = v22;
      v37.origin.y = v23;
      v37.size.height = v24;
      *(&v26 - 2) = CGRectUnion(*a5, v37);
      v22 = v27;
      v23 = v28;
      v24 = v29;
    }

    a5->origin.x = v22;
    a5->origin.y = v23;
    a5->size.width = v26;
    a5->size.height = v24;
    _Block_object_dispose(&v31, 8);
  }
}

uint64_t __106__ICBaseTextView_StyleRendering__updateBlockQuoteLayerForParagraphStyle_inRange_ioPreviousBlockQuoteRect___block_invoke(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6.size.height = a5;
  v6.size.width = a4;
  v6.origin.y = a3;
  v6.origin.x = a2;
  *(*(*(a1 + 32) + 8) + 32) = CGRectUnion(*(*(*(a1 + 32) + 8) + 32), v6);
  return 1;
}

- (void)TTTextStorage
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = [a1 textStorage];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [a1 textStorage];
  v8 = 138412546;
  v9 = v6;
  v10 = 2048;
  v11 = v7;
  _os_log_error_impl(&dword_2151A1000, a2, OS_LOG_TYPE_ERROR, "Expects textStorage be a ICTTTextStorage %@ %p", &v8, 0x16u);
}

@end