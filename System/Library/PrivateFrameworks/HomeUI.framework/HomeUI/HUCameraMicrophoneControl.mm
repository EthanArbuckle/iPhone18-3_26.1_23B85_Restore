@interface HUCameraMicrophoneControl
- (CGSize)intrinsicContentSize;
- (HUCameraMicrophoneControl)initWithFrame:(CGRect)frame;
- (UIButton)doneButton;
- (UIButton)talkButton;
- (void)setTalking:(BOOL)talking;
@end

@implementation HUCameraMicrophoneControl

- (HUCameraMicrophoneControl)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = HUCameraMicrophoneControl;
  v3 = [(HUCameraMicrophoneControl *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(HUCameraMicrophoneControl *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    talkButton = [(HUCameraMicrophoneControl *)v4 talkButton];
    [(HUCameraMicrophoneControl *)v4 addSubview:talkButton];

    doneButton = [(HUCameraMicrophoneControl *)v4 doneButton];
    [(HUCameraMicrophoneControl *)v4 addSubview:doneButton];
  }

  return v4;
}

- (UIButton)talkButton
{
  talkButton = self->_talkButton;
  if (!talkButton)
  {
    v4 = [MEMORY[0x277D75220] buttonWithType:1];
    [MEMORY[0x277D75220] hu_talkStateForButton:v4 usingStandardSymbolConfiguration:1];
    heightAnchor = [(UIButton *)v4 heightAnchor];
    v6 = [heightAnchor constraintEqualToConstant:44.0];
    [v6 setActive:1];

    [(UIButton *)v4 setUserInteractionEnabled:0];
    [(UIButton *)v4 sizeToFit];
    v7 = self->_talkButton;
    self->_talkButton = v4;

    talkButton = self->_talkButton;
  }

  return talkButton;
}

- (UIButton)doneButton
{
  doneButton = self->_doneButton;
  if (!doneButton)
  {
    v4 = [MEMORY[0x277D75220] buttonWithType:1];
    [MEMORY[0x277D75220] hu_doneStateForButton:v4 usingStandardSymbolConfiguration:1];
    heightAnchor = [(UIButton *)v4 heightAnchor];
    v6 = [heightAnchor constraintEqualToConstant:44.0];
    [v6 setActive:1];

    [(UIButton *)v4 setHidden:1];
    [(UIButton *)v4 setUserInteractionEnabled:0];
    v7 = objc_alloc_init(MEMORY[0x277D180D0]);
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = objc_alloc(MEMORY[0x277D14440]);
    v9 = [v8 initWithPackageIdentifier:*MEMORY[0x277D136F8]];
    [v7 updateWithIconDescriptor:v9 displayStyle:1 animated:1];
    [(UIButton *)v4 addSubview:v7];
    topAnchor = [v7 topAnchor];
    topAnchor2 = [(UIButton *)v4 topAnchor];
    v12 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:13.0];
    [v12 setActive:1];

    leadingAnchor = [v7 leadingAnchor];
    leadingAnchor2 = [(UIButton *)v4 leadingAnchor];
    v15 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:10.0];
    [v15 setActive:1];

    widthAnchor = [v7 widthAnchor];
    v17 = [widthAnchor constraintEqualToConstant:18.0];
    [v17 setActive:1];

    heightAnchor2 = [v7 heightAnchor];
    v19 = [heightAnchor2 constraintEqualToConstant:18.0];
    [v19 setActive:1];

    doneButtonIconView = self->_doneButtonIconView;
    self->_doneButtonIconView = v7;
    v21 = v7;

    v22 = self->_doneButton;
    self->_doneButton = v4;

    doneButton = self->_doneButton;
  }

  return doneButton;
}

- (void)setTalking:(BOOL)talking
{
  if (self->_talking != talking)
  {
    talkingCopy = talking;
    talkButton = [(HUCameraMicrophoneControl *)self talkButton];
    [talkButton setHidden:talkingCopy];

    doneButton = [(HUCameraMicrophoneControl *)self doneButton];
    [doneButton setHidden:talkingCopy ^ 1];

    self->_talking = talkingCopy;

    [(HUCameraMicrophoneControl *)self invalidateIntrinsicContentSize];
  }
}

- (CGSize)intrinsicContentSize
{
  if ([(HUCameraMicrophoneControl *)self isTalking])
  {
    [(HUCameraMicrophoneControl *)self doneButton];
  }

  else
  {
    [(HUCameraMicrophoneControl *)self talkButton];
  }
  v3 = ;
  [v3 bounds];
  v5 = v4;

  v6 = 44.0;
  v7 = v5;
  result.height = v6;
  result.width = v7;
  return result;
}

@end