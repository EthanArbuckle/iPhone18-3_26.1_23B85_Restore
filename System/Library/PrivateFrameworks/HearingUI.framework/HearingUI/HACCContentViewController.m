@interface HACCContentViewController
- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4;
- (CGRect)collapsedFrame;
- (HACCContentViewController)initWithContentModule:(unint64_t)a3 andDelegate:(id)a4;
- (id)_axIdentifierForModule:(unint64_t)a3;
- (id)contentViewForControlType:(unint64_t)a3 module:(unint64_t)a4 delegate:(id)a5;
- (unint64_t)controlTypeForModule:(unint64_t)a3;
- (void)_contentViewSubscribeListeners;
- (void)_contentViewUnsubscribeListeners;
- (void)_handleTapGestureRecognizer:(id)a3;
- (void)addExpandedView:(id)a3 shouldAlwaysExpand:(BOOL)a4;
- (void)removeExpandedView:(id)a3;
- (void)updateViewConstraints;
- (void)updateWithValue:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation HACCContentViewController

- (HACCContentViewController)initWithContentModule:(unint64_t)a3 andDelegate:(id)a4
{
  v6 = a4;
  v23.receiver = self;
  v23.super_class = HACCContentViewController;
  v7 = [(HACCContentViewController *)&v23 init];
  v8 = v7;
  if (v7)
  {
    v7->_controlType = [(HACCContentViewController *)v7 controlTypeForModule:a3];
    v9 = [(HACCContentViewController *)v8 view];
    v10 = [MEMORY[0x277D75348] clearColor];
    [v9 setBackgroundColor:v10];

    v11 = [(HACCContentViewController *)v8 view];
    [v11 setOpaque:1];

    v12 = [(HACCContentViewController *)v8 contentViewForControlType:v8->_controlType module:a3 delegate:v6];
    contentView = v8->_contentView;
    v8->_contentView = v12;

    v14 = [(HACCContentViewController *)v8 view];
    [v14 setTag:HUICCViewTagForModule(a3)];

    v15 = [(HACCContentViewController *)v8 view];
    [v15 addSubview:v8->_contentView];

    v16 = v8->_contentView;
    v17 = [(HACCContentViewController *)v8 _axIdentifierForModule:a3];
    [(HACCContentModule *)v16 setAccessibilityIdentifier:v17];

    v18 = v8->_contentView;
    v19 = [(HACCContentViewController *)v8 view];
    [v19 bounds];
    [(HACCContentModule *)v18 setFrame:?];

    [(HACCContentModule *)v8->_contentView setDelegate:v6];
    [(HACCContentModule *)v8->_contentView setModule:a3];
    [(HACCContentModule *)v8->_contentView setAutoresizingMask:18];
    [(HACCContentModule *)v8->_contentView updateValue];
    [(HACCContentViewController *)v8 updateViewConstraints];
    v20 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v8 action:sel__handleTapGestureRecognizer_];
    [v20 setDelegate:v8];
    v21 = [(HACCContentViewController *)v8 view];
    [v21 addGestureRecognizer:v20];

    [(HACCContentViewController *)v8 setTapRecognizer:v20];
  }

  return v8;
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = HACCContentViewController;
  [(HACCContentViewController *)&v4 viewWillAppear:a3];
  [(HACCContentViewController *)self _contentViewSubscribeListeners];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = HACCContentViewController;
  [(HACCContentViewController *)&v4 viewDidDisappear:a3];
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

- (void)updateWithValue:(id)a3
{
  v14 = a3;
  if ([(HACCContentModule *)self->_contentView module]== 23 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = *MEMORY[0x277D12DC8];
    v5 = v14;
    v6 = [v5 objectForKey:v4];
    [v6 floatValue];
    v8 = v7;

    v9 = [v5 objectForKey:*MEMORY[0x277D12DC0]];
    [v9 floatValue];
    v11 = v10;

    v12 = [v5 objectForKey:*MEMORY[0x277D12DD0]];

    v13 = [v12 unsignedIntegerValue];
    [(HACCContentModule *)self->_contentView updateViewsWithSlowLeq:v13 fastLeq:v8 andThreshold:v11];
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
  v3 = [(HACCContentViewController *)self view];
  v4 = [(HACCContentViewController *)self view];
  v5 = [v4 constraints];
  [v3 removeConstraints:v5];

  [(HACCContentModule *)self->_contentView setHidden:0];
  [(HACCContentModule *)self->_contentView updateConstraints];
  contentView = self->_contentView;
  v7 = [(HACCContentViewController *)self view];
  [v7 bounds];
  [(HACCContentModule *)contentView setFrame:?];
}

- (unint64_t)controlTypeForModule:(unint64_t)a3
{
  if (a3 > 0x26)
  {
    return 1;
  }

  else
  {
    return qword_2521A95B0[a3];
  }
}

- (id)contentViewForControlType:(unint64_t)a3 module:(unint64_t)a4 delegate:(id)a5
{
  v8 = a5;
  v9 = v8;
  switch(a3)
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
      if ([v8 shouldShowHeadphoneLevelUnavailable])
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
      v11 = [(HUICCMenuCheckmarkView *)v10 initWithFrame:a4 andModule:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
      goto LABEL_21;
    case 9uLL:
      v14 = HACCSSLButton;
      goto LABEL_20;
    case 0xBuLL:
      v12 = HUICCTextView;
LABEL_13:
      v11 = [[v12 alloc] initWithModule:a4 andDelegate:v9];
      goto LABEL_21;
    case 0xCuLL:
      v13 = [[HUICCMenuTextView alloc] initWithModule:a4 andDelegate:v8];
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
      v11 = [[HUICCFooterView alloc] initWithModule:a4];
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

- (void)addExpandedView:(id)a3 shouldAlwaysExpand:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = self->_contentView;
    [(HACCContentModule *)v6 addExpandedView:v7];
    if (v4 && [(HACCContentModule *)v6 supportsExpanding])
    {
      [(HACCContentModule *)v6 setIsExpanded:1];
      [(HACCContentViewController *)self setShouldAlwaysExpand:1];
    }
  }
}

- (void)removeExpandedView:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(HACCContentModule *)self->_contentView removeExpandedView:v4];
  }
}

- (void)_handleTapGestureRecognizer:(id)a3
{
  v5 = a3;
  if ((!v5 || [v5 state] == 3) && !-[HACCContentViewController shouldAlwaysExpand](self, "shouldAlwaysExpand"))
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

- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4
{
  v5 = a3;
  v6 = [a4 view];
  v7 = [v5 view];

  LOBYTE(v5) = [v6 isDescendantOfView:v7];
  return v5;
}

- (id)_axIdentifierForModule:(unint64_t)a3
{
  if (a3 > 0x26)
  {
    return 0;
  }

  else
  {
    return off_2796F7708[a3];
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