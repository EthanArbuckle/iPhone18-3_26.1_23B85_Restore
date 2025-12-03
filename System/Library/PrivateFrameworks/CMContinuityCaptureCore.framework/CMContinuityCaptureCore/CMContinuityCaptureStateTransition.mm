@interface CMContinuityCaptureStateTransition
- (CMContinuityCaptureStateTransition)initWithAttributes:(id)attributes dstState:(id)state event:(id)event guard:(id)guard action:(id)action;
- (id)transactionFromStateOnEvent:(id)event event:(id)a4;
@end

@implementation CMContinuityCaptureStateTransition

- (id)transactionFromStateOnEvent:(id)event event:(id)a4
{
  eventCopy = event;
  v7 = a4;
  name = [v7 name];
  event = [(CMContinuityCaptureStateTransition *)self event];
  name2 = [event name];
  if ([name isEqualToString:name2])
  {
    srcState = [(CMContinuityCaptureStateTransition *)self srcState];

    if (srcState == eventCopy)
    {
      guard = [(CMContinuityCaptureStateTransition *)self guard];

      if (!guard)
      {
        goto LABEL_5;
      }

      guard2 = [(CMContinuityCaptureStateTransition *)self guard];
      srcState2 = [(CMContinuityCaptureStateTransition *)self srcState];
      dstState = [(CMContinuityCaptureStateTransition *)self dstState];
      v16 = (guard2)[2](guard2, srcState2, dstState, v7);

      if (v16)
      {
LABEL_5:
        dstState2 = [(CMContinuityCaptureStateTransition *)self dstState];
        goto LABEL_8;
      }
    }
  }

  else
  {
  }

  dstState2 = 0;
LABEL_8:

  return dstState2;
}

- (CMContinuityCaptureStateTransition)initWithAttributes:(id)attributes dstState:(id)state event:(id)event guard:(id)guard action:(id)action
{
  attributesCopy = attributes;
  stateCopy = state;
  eventCopy = event;
  guardCopy = guard;
  actionCopy = action;
  v21.receiver = self;
  v21.super_class = CMContinuityCaptureStateTransition;
  v17 = [(CMContinuityCaptureStateTransition *)&v21 init];
  v18 = v17;
  if (v17)
  {
    [(CMContinuityCaptureStateTransition *)v17 setSrcState:attributesCopy];
    [(CMContinuityCaptureStateTransition *)v18 setDstState:stateCopy];
    [(CMContinuityCaptureStateTransition *)v18 setEvent:eventCopy];
    [(CMContinuityCaptureStateTransition *)v18 setGuard:guardCopy];
    [(CMContinuityCaptureStateTransition *)v18 setAction:actionCopy];
    v19 = v18;
  }

  return v18;
}

@end