@interface CMContinuityCaptureStateTransition
- (CMContinuityCaptureStateTransition)initWithAttributes:(id)a3 dstState:(id)a4 event:(id)a5 guard:(id)a6 action:(id)a7;
- (id)transactionFromStateOnEvent:(id)a3 event:(id)a4;
@end

@implementation CMContinuityCaptureStateTransition

- (id)transactionFromStateOnEvent:(id)a3 event:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 name];
  v9 = [(CMContinuityCaptureStateTransition *)self event];
  v10 = [v9 name];
  if ([v8 isEqualToString:v10])
  {
    v11 = [(CMContinuityCaptureStateTransition *)self srcState];

    if (v11 == v6)
    {
      v12 = [(CMContinuityCaptureStateTransition *)self guard];

      if (!v12)
      {
        goto LABEL_5;
      }

      v13 = [(CMContinuityCaptureStateTransition *)self guard];
      v14 = [(CMContinuityCaptureStateTransition *)self srcState];
      v15 = [(CMContinuityCaptureStateTransition *)self dstState];
      v16 = (v13)[2](v13, v14, v15, v7);

      if (v16)
      {
LABEL_5:
        v17 = [(CMContinuityCaptureStateTransition *)self dstState];
        goto LABEL_8;
      }
    }
  }

  else
  {
  }

  v17 = 0;
LABEL_8:

  return v17;
}

- (CMContinuityCaptureStateTransition)initWithAttributes:(id)a3 dstState:(id)a4 event:(id)a5 guard:(id)a6 action:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = CMContinuityCaptureStateTransition;
  v17 = [(CMContinuityCaptureStateTransition *)&v21 init];
  v18 = v17;
  if (v17)
  {
    [(CMContinuityCaptureStateTransition *)v17 setSrcState:v12];
    [(CMContinuityCaptureStateTransition *)v18 setDstState:v13];
    [(CMContinuityCaptureStateTransition *)v18 setEvent:v14];
    [(CMContinuityCaptureStateTransition *)v18 setGuard:v15];
    [(CMContinuityCaptureStateTransition *)v18 setAction:v16];
    v19 = v18;
  }

  return v18;
}

@end