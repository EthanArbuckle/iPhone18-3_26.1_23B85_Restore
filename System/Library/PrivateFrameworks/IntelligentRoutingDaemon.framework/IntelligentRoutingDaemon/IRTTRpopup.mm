@interface IRTTRpopup
- (IRTTRpopup)initWithHeader:(id)a3 key:(id)a4 message:(id)a5 defaultButton:(id)a6 otherButton:(id)a7 alternateButton:(id)a8 ttrWillOpen:(BOOL)a9 dismissWillStop:(BOOL)a10;
@end

@implementation IRTTRpopup

- (IRTTRpopup)initWithHeader:(id)a3 key:(id)a4 message:(id)a5 defaultButton:(id)a6 otherButton:(id)a7 alternateButton:(id)a8 ttrWillOpen:(BOOL)a9 dismissWillStop:(BOOL)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v25.receiver = self;
  v25.super_class = IRTTRpopup;
  v22 = [(IRTTRpopup *)&v25 init];
  v23 = v22;
  if (v22)
  {
    [(IRTTRpopup *)v22 setHeader:v16];
    [(IRTTRpopup *)v23 setKey:v17];
    [(IRTTRpopup *)v23 setMessage:v18];
    [(IRTTRpopup *)v23 setDefaultButton:v19];
    [(IRTTRpopup *)v23 setOtherButton:v20];
    [(IRTTRpopup *)v23 setAlternateButton:v21];
    [(IRTTRpopup *)v23 setTtrWillOpen:a9];
    [(IRTTRpopup *)v23 setDismissWillStop:a10];
  }

  return v23;
}

@end