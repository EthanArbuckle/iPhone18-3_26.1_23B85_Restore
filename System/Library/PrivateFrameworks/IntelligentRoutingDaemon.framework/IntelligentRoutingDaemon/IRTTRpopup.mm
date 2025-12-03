@interface IRTTRpopup
- (IRTTRpopup)initWithHeader:(id)header key:(id)key message:(id)message defaultButton:(id)button otherButton:(id)otherButton alternateButton:(id)alternateButton ttrWillOpen:(BOOL)open dismissWillStop:(BOOL)self0;
@end

@implementation IRTTRpopup

- (IRTTRpopup)initWithHeader:(id)header key:(id)key message:(id)message defaultButton:(id)button otherButton:(id)otherButton alternateButton:(id)alternateButton ttrWillOpen:(BOOL)open dismissWillStop:(BOOL)self0
{
  headerCopy = header;
  keyCopy = key;
  messageCopy = message;
  buttonCopy = button;
  otherButtonCopy = otherButton;
  alternateButtonCopy = alternateButton;
  v25.receiver = self;
  v25.super_class = IRTTRpopup;
  v22 = [(IRTTRpopup *)&v25 init];
  v23 = v22;
  if (v22)
  {
    [(IRTTRpopup *)v22 setHeader:headerCopy];
    [(IRTTRpopup *)v23 setKey:keyCopy];
    [(IRTTRpopup *)v23 setMessage:messageCopy];
    [(IRTTRpopup *)v23 setDefaultButton:buttonCopy];
    [(IRTTRpopup *)v23 setOtherButton:otherButtonCopy];
    [(IRTTRpopup *)v23 setAlternateButton:alternateButtonCopy];
    [(IRTTRpopup *)v23 setTtrWillOpen:open];
    [(IRTTRpopup *)v23 setDismissWillStop:stop];
  }

  return v23;
}

@end