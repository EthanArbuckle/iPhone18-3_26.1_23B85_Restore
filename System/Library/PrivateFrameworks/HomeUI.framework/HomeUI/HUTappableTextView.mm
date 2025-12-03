@interface HUTappableTextView
- (HUTappableTextView)initWithCoder:(id)coder;
- (HUTappableTextView)initWithFrame:(CGRect)frame;
- (HUTappableTextViewDelegate)tappableTextViewDelegate;
- (void)_handleTap:(id)tap;
- (void)configureTapRecognizer;
- (void)setTappableTextViewDelegate:(id)delegate;
@end

@implementation HUTappableTextView

- (HUTappableTextView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = HUTappableTextView;
  v3 = [(HUTappableTextView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(HUTappableTextView *)v3 configureTapRecognizer];
  }

  return v4;
}

- (HUTappableTextView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = HUTappableTextView;
  v3 = [(HUTappableTextView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(HUTappableTextView *)v3 configureTapRecognizer];
  }

  return v4;
}

- (void)setTappableTextViewDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_tappableTextViewDelegate);
  v5 = [WeakRetained isEqual:obj];

  if ((v5 & 1) == 0)
  {
    objc_storeWeak(&self->_tappableTextViewDelegate, obj);
    [(HUTappableTextView *)self configureTapRecognizer];
  }
}

- (void)configureTapRecognizer
{
  tapRecognizer = [(HUTappableTextView *)self tapRecognizer];

  if (!tapRecognizer)
  {
    v4 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__handleTap_];
    [(HUTappableTextView *)self setTapRecognizer:v4];

    tapRecognizer2 = [(HUTappableTextView *)self tapRecognizer];
    [tapRecognizer2 setDelegate:self];

    tapRecognizer3 = [(HUTappableTextView *)self tapRecognizer];
    [(HUTappableTextView *)self addGestureRecognizer:tapRecognizer3];
  }

  tappableTextViewDelegate = [(HUTappableTextView *)self tappableTextViewDelegate];
  tapRecognizer4 = [(HUTappableTextView *)self tapRecognizer];
  [tapRecognizer4 setEnabled:tappableTextViewDelegate != 0];
}

- (void)_handleTap:(id)tap
{
  v40 = *MEMORY[0x277D85DE8];
  [tap locationInView:self];
  v6 = v5;
  v8 = v7;
  [(HUTappableTextView *)self textContainerInset];
  v10 = v6 - v9;
  [(HUTappableTextView *)self textContainerInset];
  v12 = v8 - v11;
  layoutManager = [(HUTappableTextView *)self layoutManager];
  textContainer = [(HUTappableTextView *)self textContainer];
  v15 = [layoutManager characterIndexForPoint:textContainer inTextContainer:0 fractionOfDistanceBetweenInsertionPoints:{v10, v12}];

  textStorage = [(HUTappableTextView *)self textStorage];
  v17 = [textStorage length];

  if (v15 < v17)
  {
    attributedText = [(HUTappableTextView *)self attributedText];
    v19 = [attributedText attributesAtIndex:v15 effectiveRange:0];
    v20 = v19;
    v21 = MEMORY[0x277CBEC10];
    if (v19)
    {
      v21 = v19;
    }

    v22 = v21;

    v23 = HFLogForCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = NSStringFromSelector(a2);
      attributedText2 = [(HUTappableTextView *)self attributedText];
      string = [attributedText2 string];
      v30 = 138413314;
      selfCopy = self;
      v32 = 2112;
      v33 = v24;
      v34 = 2112;
      v35 = string;
      v36 = 2048;
      v37 = v15;
      v38 = 2112;
      v39 = v22;
      _os_log_impl(&dword_20CEB6000, v23, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped string: %@ at index: %lu with attributes: %@", &v30, 0x34u);
    }

    tappableTextViewDelegate = [(HUTappableTextView *)self tappableTextViewDelegate];
    v28 = objc_opt_respondsToSelector();

    if (v28)
    {
      tappableTextViewDelegate2 = [(HUTappableTextView *)self tappableTextViewDelegate];
      [tappableTextViewDelegate2 tappableTextView:self tappedAtIndex:v15 withAttributes:v22];
    }
  }
}

- (HUTappableTextViewDelegate)tappableTextViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_tappableTextViewDelegate);

  return WeakRetained;
}

@end