@interface CMContinuityCaptureState
- (CMContinuityCaptureState)initWithAttributes:(id)a3 entryAction:(id)a4 exitAction:(id)a5;
@end

@implementation CMContinuityCaptureState

- (CMContinuityCaptureState)initWithAttributes:(id)a3 entryAction:(id)a4 exitAction:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = CMContinuityCaptureState;
  v11 = [(CMContinuityCaptureState *)&v16 init];
  v12 = v11;
  if (v11)
  {
    [(CMContinuityCaptureState *)v11 setName:v8];
    [(CMContinuityCaptureState *)v12 setEntryAction:v9];
    [(CMContinuityCaptureState *)v12 setExitAction:v10];
    v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
    [(CMContinuityCaptureState *)v12 setPendingEvents:v13];

    v14 = [(CMContinuityCaptureState *)v12 pendingEvents];

    if (v14)
    {
      v14 = v12;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end