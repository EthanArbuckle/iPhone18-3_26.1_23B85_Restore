@interface HUStringInLabelTapGestureRecognizer
- (BOOL)_didTapAttributedTextInLabel:(id)label targetRange:(_NSRange)range event:(id)event;
- (BOOL)shouldReceiveEvent:(id)event;
- (HUStringInLabelTapGestureRecognizer)initWithTarget:(id)target action:(SEL)action hitBoxString:(id)string userInfo:(id)info;
@end

@implementation HUStringInLabelTapGestureRecognizer

- (HUStringInLabelTapGestureRecognizer)initWithTarget:(id)target action:(SEL)action hitBoxString:(id)string userInfo:(id)info
{
  stringCopy = string;
  infoCopy = info;
  v17.receiver = self;
  v17.super_class = HUStringInLabelTapGestureRecognizer;
  v13 = [(HUStringInLabelTapGestureRecognizer *)&v17 initWithTarget:target action:action];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_hitboxString, string);
    if (infoCopy)
    {
      v15 = infoCopy;
    }

    else
    {
      v15 = MEMORY[0x277CBEC10];
    }

    objc_storeStrong(&v14->_userInfo, v15);
  }

  return v14;
}

- (BOOL)shouldReceiveEvent:(id)event
{
  eventCopy = event;
  objc_opt_class();
  view = [(HUStringInLabelTapGestureRecognizer *)self view];
  if (objc_opt_isKindOfClass())
  {
    v6 = view;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    attributedText = [v7 attributedText];
    v9 = attributedText;
    if (attributedText)
    {
      string = [attributedText string];
      hitboxString = [(HUStringInLabelTapGestureRecognizer *)self hitboxString];
      v12 = [string rangeOfString:hitboxString options:4];
      v14 = v13;

      eventCopy = [(HUStringInLabelTapGestureRecognizer *)self _didTapAttributedTextInLabel:v7 targetRange:v12 event:v14, eventCopy];
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
      eventCopy = 0;
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
    eventCopy = 0;
  }

  return eventCopy;
}

- (BOOL)_didTapAttributedTextInLabel:(id)label targetRange:(_NSRange)range event:(id)event
{
  length = range.length;
  location = range.location;
  labelCopy = label;
  eventCopy = event;
  v10 = objc_alloc_init(MEMORY[0x277D74238]);
  v11 = objc_alloc(MEMORY[0x277D74278]);
  v12 = [v11 initWithSize:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
  attributedText = [labelCopy attributedText];
  if (attributedText)
  {
    v14 = [objc_alloc(MEMORY[0x277D742D8]) initWithAttributedString:attributedText];
    [v10 addTextContainer:v12];
    [v14 addLayoutManager:v10];
    [v12 setLineFragmentPadding:0.0];
    [v12 setLineBreakMode:{objc_msgSend(labelCopy, "lineBreakMode")}];
    [v12 setMaximumNumberOfLines:{objc_msgSend(labelCopy, "numberOfLines")}];
    [labelCopy bounds];
    v16 = v15;
    v18 = v17;
    [v12 setSize:{v15, v17}];
    allTouches = [eventCopy allTouches];
    anyObject = [allTouches anyObject];
    [anyObject locationInView:labelCopy];
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