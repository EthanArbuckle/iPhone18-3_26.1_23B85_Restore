@interface HUStringInLabelTapGestureRecognizer
- (BOOL)_didTapAttributedTextInLabel:(id)a3 targetRange:(_NSRange)a4 event:(id)a5;
- (BOOL)shouldReceiveEvent:(id)a3;
- (HUStringInLabelTapGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4 hitBoxString:(id)a5 userInfo:(id)a6;
@end

@implementation HUStringInLabelTapGestureRecognizer

- (HUStringInLabelTapGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4 hitBoxString:(id)a5 userInfo:(id)a6
{
  v11 = a5;
  v12 = a6;
  v17.receiver = self;
  v17.super_class = HUStringInLabelTapGestureRecognizer;
  v13 = [(HUStringInLabelTapGestureRecognizer *)&v17 initWithTarget:a3 action:a4];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_hitboxString, a5);
    if (v12)
    {
      v15 = v12;
    }

    else
    {
      v15 = MEMORY[0x277CBEC10];
    }

    objc_storeStrong(&v14->_userInfo, v15);
  }

  return v14;
}

- (BOOL)shouldReceiveEvent:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [(HUStringInLabelTapGestureRecognizer *)self view];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [v7 attributedText];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 string];
      v11 = [(HUStringInLabelTapGestureRecognizer *)self hitboxString];
      v12 = [v10 rangeOfString:v11 options:4];
      v14 = v13;

      v15 = [(HUStringInLabelTapGestureRecognizer *)self _didTapAttributedTextInLabel:v7 targetRange:v12 event:v14, v4];
    }

    else
    {
      v17 = HFLogForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *v19 = 0;
        _os_log_error_impl(&dword_20CEB6000, v17, OS_LOG_TYPE_ERROR, "This class currently only supports search in label.attributedText, feel free to add label.text support too!", v19, 2u);
      }

      NSLog(&cfstr_ThisClassCurre_0.isa);
      v15 = 0;
    }
  }

  else
  {
    v16 = HFLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_20CEB6000, v16, OS_LOG_TYPE_ERROR, "This class currently only supports UILabel", buf, 2u);
    }

    NSLog(&cfstr_ThisClassCurre.isa);
    v15 = 0;
  }

  return v15;
}

- (BOOL)_didTapAttributedTextInLabel:(id)a3 targetRange:(_NSRange)a4 event:(id)a5
{
  length = a4.length;
  location = a4.location;
  v8 = a3;
  v9 = a5;
  v10 = objc_alloc_init(MEMORY[0x277D74238]);
  v11 = objc_alloc(MEMORY[0x277D74278]);
  v12 = [v11 initWithSize:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
  v13 = [v8 attributedText];
  if (v13)
  {
    v14 = [objc_alloc(MEMORY[0x277D742D8]) initWithAttributedString:v13];
    [v10 addTextContainer:v12];
    [v14 addLayoutManager:v10];
    [v12 setLineFragmentPadding:0.0];
    [v12 setLineBreakMode:{objc_msgSend(v8, "lineBreakMode")}];
    [v12 setMaximumNumberOfLines:{objc_msgSend(v8, "numberOfLines")}];
    [v8 bounds];
    v16 = v15;
    v18 = v17;
    [v12 setSize:{v15, v17}];
    v19 = [v9 allTouches];
    v20 = [v19 anyObject];
    [v20 locationInView:v8];
    v22 = v21;
    v24 = v23;

    [v10 usedRectForTextContainer:v12];
    v29 = [v10 characterIndexForPoint:v12 inTextContainer:0 fractionOfDistanceBetweenInsertionPoints:{v22 - -(v26 - (v16 - v25) * 0.5), v24 - -(v28 - (v18 - v27) * 0.5)}];
    v31 = v29 >= location && v29 - location < length;
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

@end