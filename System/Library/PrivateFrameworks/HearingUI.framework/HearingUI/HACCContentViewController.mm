@interface HACCContentViewController
- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer;
- (CGRect)collapsedFrame;
- (HACCContentViewController)initWithContentModule:(unint64_t)module andDelegate:(id)delegate;
- (id)_axIdentifierForModule:(unint64_t)module;
- (id)contentViewForControlType:(unint64_t)type module:(unint64_t)module delegate:(id)delegate;
- (unint64_t)controlTypeForModule:(unint64_t)module;
- (void)_contentViewSubscribeListeners;
- (void)_contentViewUnsubscribeListeners;
- (void)_handleTapGestureRecognizer:(id)recognizer;
- (void)addExpandedView:(id)view shouldAlwaysExpand:(BOOL)expand;
- (void)removeExpandedView:(id)view;
- (void)updateViewConstraints;
- (void)updateWithValue:(id)value;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation HACCContentViewController

- (HACCContentViewController)initWithContentModule:(unint64_t)module andDelegate:(id)delegate
{
  delegateCopy = delegate;
  v23.receiver = self;
  v23.super_class = HACCContentViewController;
  v7 = [(HACCContentViewController *)&v23 init];
  v8 = v7;
  if (v7)
  {
    v7->_controlType = [(HACCContentViewController *)v7 controlTypeForModule:module];
    view = [(HACCContentViewController *)v8 view];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [view setBackgroundColor:clearColor];

    view2 = [(HACCContentViewController *)v8 view];
    [view2 setOpaque:1];

    v12 = [(HACCContentViewController *)v8 contentViewForControlType:v8->_controlType module:module delegate:delegateCopy];
    contentView = v8->_contentView;
    v8->_contentView = v12;

    view3 = [(HACCContentViewController *)v8 view];
    [view3 setTag:HUICCViewTagForModule(module)];

    view4 = [(HACCContentViewController *)v8 view];
    [view4 addSubview:v8->_contentView];

    v16 = v8->_contentView;
    v17 = [(HACCContentViewController *)v8 _axIdentifierForModule:module];
    [(HACCContentModule *)v16 setAccessibilityIdentifier:v17];

    v18 = v8->_contentView;
    view5 = [(HACCContentViewController *)v8 view];
    [view5 bounds];
    [(HACCContentModule *)v18 setFrame:?];

    [(HACCContentModule *)v8->_contentView setDelegate:delegateCopy];
    [(HACCContentModule *)v8->_contentView setModule:module];
    [(HACCContentModule *)v8->_contentView setAutoresizingMask:18];
    [(HACCContentModule *)v8->_contentView updateValue];
    [(HACCContentViewController *)v8 updateViewConstraints];
    v20 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v8 action:sel__handleTapGestureRecognizer_];
    [v20 setDelegate:v8];
    view6 = [(HACCContentViewController *)v8 view];
    [view6 addGestureRecognizer:v20];

    [(HACCContentViewController *)v8 setTapRecognizer:v20];
  }

  return v8;
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = HACCContentViewController;
  [(HACCContentViewController *)&v4 viewWillAppear:appear];
  [(HACCContentViewController *)self _contentViewSubscribeListeners];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = HACCContentViewController;
  [(HACCContentViewController *)&v4 viewDidDisappear:disappear];
  [(HACCContentViewController *)self _contentViewUnsubscribeListeners];
}

- (void)_contentViewSubscribeListeners
{
  if (objc_opt_respondsToSelector())
  {
    contentView = self->_contentView;

    [(HACCContentModule *)contentView subscribeListeners];
  }
}

- (void)_contentViewUnsubscribeListeners
{
  if (objc_opt_respondsToSelector())
  {
    contentView = self->_contentView;

    [(HACCContentModule *)contentView unsubscribeListeners];
  }
}

- (void)updateWithValue:(id)value
{
  valueCopy = value;
  if ([(HACCContentModule *)self->_contentView module]== 23 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = *MEMORY[0x277D12DC8];
    v5 = valueCopy;
    v6 = [v5 objectForKey:v4];
    [v6 floatValue];
    v8 = v7;

    v9 = [v5 objectForKey:*MEMORY[0x277D12DC0]];
    [v9 floatValue];
    v11 = v10;

    v12 = [v5 objectForKey:*MEMORY[0x277D12DD0]];

    unsignedIntegerValue = [v12 unsignedIntegerValue];
    [(HACCContentModule *)self->_contentView updateViewsWithSlowLeq:unsignedIntegerValue fastLeq:v8 andThreshold:v11];
  }

  else
  {
    [(HACCContentModule *)self->_contentView updateValue];
  }
}

- (void)updateViewConstraints
{
  v8.receiver = self;
  v8.super_class = HACCContentViewController;
  [(HACCContentViewController *)&v8 updateViewConstraints];
  view = [(HACCContentViewController *)self view];
  view2 = [(HACCContentViewController *)self view];
  constraints = [view2 constraints];
  [view removeConstraints:constraints];

  [(HACCContentModule *)self->_contentView setHidden:0];
  [(HACCContentModule *)self->_contentView updateConstraints];
  contentView = self->_contentView;
  view3 = [(HACCContentViewController *)self view];
  [view3 bounds];
  [(HACCContentModule *)contentView setFrame:?];
}

- (unint64_t)controlTypeForModule:(unint64_t)module
{
  if (module > 0x26)
  {
    return 1;
  }

  else
  {
    return qword_2521A95B0[module];
  }
}

- (id)contentViewForControlType:(unint64_t)type module:(unint64_t)module delegate:(id)delegate
{
  delegateCopy = delegate;
  v9 = delegateCopy;
  switch(type)
  {
    case 0uLL:
      v15 = HACCStatusView;
      goto LABEL_11;
    case 1uLL:
      v12 = HACCSlider;
      goto LABEL_13;
    case 2uLL:
      v15 = HUICCBackgroundSoundsButton;
      goto LABEL_11;
    case 3uLL:
      if ([delegateCopy shouldShowHeadphoneLevelUnavailable])
      {
        v15 = HUIHeadphoneLevelUnavailableView;
LABEL_11:
        v16 = [v15 alloc];
        v11 = [v16 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
      }

      else
      {
        v14 = HUIHeadphoneLevelView;
LABEL_20:
        v11 = objc_alloc_init(v14);
      }

      goto LABEL_21;
    case 4uLL:
      v14 = HACCLiveListenButton;
      goto LABEL_20;
    case 5uLL:
      v14 = HACCLiveListenTranscriptionView;
      goto LABEL_20;
    case 6uLL:
      v14 = HACCPMEToggle;
      goto LABEL_20;
    case 7uLL:
      v14 = HACCPSESettings;
      goto LABEL_20;
    case 8uLL:
    case 0xAuLL:
      v10 = [HUICCMenuCheckmarkView alloc];
      v11 = [(HUICCMenuCheckmarkView *)v10 initWithFrame:module andModule:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
      goto LABEL_21;
    case 9uLL:
      v14 = HACCSSLButton;
      goto LABEL_20;
    case 0xBuLL:
      v12 = HUICCTextView;
LABEL_13:
      v11 = [[v12 alloc] initWithModule:module andDelegate:v9];
      goto LABEL_21;
    case 0xCuLL:
      v13 = [[HUICCMenuTextView alloc] initWithModule:module andDelegate:delegateCopy];
      objc_initWeak(&location, v13);
      objc_initWeak(&from, self);
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __71__HACCContentViewController_contentViewForControlType_module_delegate___block_invoke;
      v18[3] = &unk_2796F76E8;
      objc_copyWeak(&v19, &from);
      objc_copyWeak(&v20, &location);
      [(HUICCMenuTextView *)v13 setPresentVCBlock:v18];
      objc_destroyWeak(&v20);
      objc_destroyWeak(&v19);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
      break;
    case 0xDuLL:
      v11 = [[HUICCFooterView alloc] initWithModule:module];
LABEL_21:
      v13 = v11;
      break;
    default:
      v13 = 0;
      break;
  }

  return v13;
}

void __71__HACCContentViewController_contentViewForControlType_module_delegate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 willTransitionToExpandedContentMode:1];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained presentViewController:v3 animated:1 completion:0];

  [v3 didTransitionToExpandedContentMode:1];
  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = [v5 delegate];
  [v6 updateView];

  v9 = objc_loadWeakRetained((a1 + 40));
  v7 = [v9 delegate];
  v8 = objc_loadWeakRetained((a1 + 32));
  [v7 viewController:v8 didExpand:1];
}

- (void)addExpandedView:(id)view shouldAlwaysExpand:(BOOL)expand
{
  expandCopy = expand;
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = self->_contentView;
    [(HACCContentModule *)v6 addExpandedView:viewCopy];
    if (expandCopy && [(HACCContentModule *)v6 supportsExpanding])
    {
      [(HACCContentModule *)v6 setIsExpanded:1];
      [(HACCContentViewController *)self setShouldAlwaysExpand:1];
    }
  }
}

- (void)removeExpandedView:(id)view
{
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(HACCContentModule *)self->_contentView removeExpandedView:viewCopy];
  }
}

- (void)_handleTapGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  if ((!recognizerCopy || [recognizerCopy state] == 3) && !-[HACCContentViewController shouldAlwaysExpand](self, "shouldAlwaysExpand"))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = self->_contentView;
      if ([(HACCContentModule *)v4 supportsExpanding])
      {
        [(HACCContentModule *)v4 setIsExpanded:[(HACCContentModule *)v4 isExpanded]^ 1];
      }

      else
      {
        [(HACCContentModule *)v4 buttonTapped];
      }
    }
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  view = [gestureRecognizer view];
  view2 = [recognizerCopy view];

  LOBYTE(recognizerCopy) = [view isDescendantOfView:view2];
  return recognizerCopy;
}

- (id)_axIdentifierForModule:(unint64_t)module
{
  if (module > 0x26)
  {
    return 0;
  }

  else
  {
    return off_2796F7708[module];
  }
}

- (CGRect)collapsedFrame
{
  x = self->_collapsedFrame.origin.x;
  y = self->_collapsedFrame.origin.y;
  width = self->_collapsedFrame.size.width;
  height = self->_collapsedFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end