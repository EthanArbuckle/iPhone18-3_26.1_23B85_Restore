@interface CMContinuityCaptureState
- (CMContinuityCaptureState)initWithAttributes:(id)attributes entryAction:(id)action exitAction:(id)exitAction;
@end

@implementation CMContinuityCaptureState

- (CMContinuityCaptureState)initWithAttributes:(id)attributes entryAction:(id)action exitAction:(id)exitAction
{
  attributesCopy = attributes;
  actionCopy = action;
  exitActionCopy = exitAction;
  v16.receiver = self;
  v16.super_class = CMContinuityCaptureState;
  v11 = [(CMContinuityCaptureState *)&v16 init];
  v12 = v11;
  if (v11)
  {
    [(CMContinuityCaptureState *)v11 setName:attributesCopy];
    [(CMContinuityCaptureState *)v12 setEntryAction:actionCopy];
    [(CMContinuityCaptureState *)v12 setExitAction:exitActionCopy];
    v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
    [(CMContinuityCaptureState *)v12 setPendingEvents:v13];

    pendingEvents = [(CMContinuityCaptureState *)v12 pendingEvents];

    if (pendingEvents)
    {
      pendingEvents = v12;
    }
  }

  else
  {
    pendingEvents = 0;
  }

  return pendingEvents;
}

@end