@interface HUTappableTextView
- (HUTappableTextView)initWithCoder:(id)a3;
- (HUTappableTextView)initWithFrame:(CGRect)a3;
- (HUTappableTextViewDelegate)tappableTextViewDelegate;
- (void)_handleTap:(id)a3;
- (void)configureTapRecognizer;
- (void)setTappableTextViewDelegate:(id)a3;
@end

@implementation HUTappableTextView

- (HUTappableTextView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = HUTappableTextView;
  v3 = [(HUTappableTextView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(HUTappableTextView *)v3 configureTapRecognizer];
  }

  return v4;
}

- (HUTappableTextView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = HUTappableTextView;
  v3 = [(HUTappableTextView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(HUTappableTextView *)v3 configureTapRecognizer];
  }

  return v4;
}

- (void)setTappableTextViewDelegate:(id)a3
{
  obj = a3;
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
  v3 = [(HUTappableTextView *)self tapRecognizer];

  if (!v3)
  {
    v4 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__handleTap_];
    [(HUTappableTextView *)self setTapRecognizer:v4];

    v5 = [(HUTappableTextView *)self tapRecognizer];
    [v5 setDelegate:self];

    v6 = [(HUTappableTextView *)self tapRecognizer];
    [(HUTappableTextView *)self addGestureRecognizer:v6];
  }

  v8 = [(HUTappableTextView *)self tappableTextViewDelegate];
  v7 = [(HUTappableTextView *)self tapRecognizer];
  [v7 setEnabled:v8 != 0];
}

- (void)_handleTap:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  [a3 locationInView:self];
  v6 = v5;
  v8 = v7;
  [(HUTappableTextView *)self textContainerInset];
  v10 = v6 - v9;
  [(HUTappableTextView *)self textContainerInset];
  v12 = v8 - v11;
  v13 = [(HUTappableTextView *)self layoutManager];
  v14 = [(HUTappableTextView *)self textContainer];
  v15 = [v13 characterIndexForPoint:v14 inTextContainer:0 fractionOfDistanceBetweenInsertionPoints:{v10, v12}];

  v16 = [(HUTappableTextView *)self textStorage];
  v17 = [v16 length];

  if (v15 < v17)
  {
    v18 = [(HUTappableTextView *)self attributedText];
    v19 = [v18 attributesAtIndex:v15 effectiveRange:0];
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
      v25 = [(HUTappableTextView *)self attributedText];
      v26 = [v25 string];
      v30 = 138413314;
      v31 = self;
      v32 = 2112;
      v33 = v24;
      v34 = 2112;
      v35 = v26;
      v36 = 2048;
      v37 = v15;
      v38 = 2112;
      v39 = v22;
      _os_log_impl(&dword_20CEB6000, v23, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped string: %@ at index: %lu with attributes: %@", &v30, 0x34u);
    }

    v27 = [(HUTappableTextView *)self tappableTextViewDelegate];
    v28 = objc_opt_respondsToSelector();

    if (v28)
    {
      v29 = [(HUTappableTextView *)self tappableTextViewDelegate];
      [v29 tappableTextView:self tappedAtIndex:v15 withAttributes:v22];
    }
  }
}

- (HUTappableTextViewDelegate)tappableTextViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_tappableTextViewDelegate);

  return WeakRetained;
}

@end