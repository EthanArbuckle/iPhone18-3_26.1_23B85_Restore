@interface CRNFluidSplitViewInteraction
+ (id)newWithSplitViewController:(id)controller;
- (id)composerBlock;
@end

@implementation CRNFluidSplitViewInteraction

+ (id)newWithSplitViewController:(id)controller
{
  controllerCopy = controller;
  v4 = objc_opt_new();
  v5 = v4[1];
  v4[1] = controllerCopy;
  v6 = controllerCopy;

  v7 = [v6 viewControllerForColumn:1];
  v8 = v4[2];
  v4[2] = v7;

  v9 = [v6 viewControllerForColumn:0];
  v10 = v4[3];
  v4[3] = v9;

  return v4;
}

- (id)composerBlock
{
  view = [(UIViewController *)self->_supplementalController view];
  v4 = CRNViewFrameInWindow(view);
  MidpointAlongSide = CRNCGRectGetMidpointAlongSide(1, v4, v5, v6, v7);
  v10 = v9;

  view2 = [(UIViewController *)self->_supplementalController view];
  v12 = CRNViewFrameInWindow(view2);
  v16 = CRNCGRectGetMidpointAlongSide(3, v12, v13, v14, v15);
  v18 = v17;

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __45__CRNFluidSplitViewInteraction_composerBlock__block_invoke;
  v21[3] = &__block_descriptor_64_e34_v16__0___RCPEventStreamComposer__8l;
  *&v21[4] = MidpointAlongSide;
  v21[5] = v10;
  *&v21[6] = v16;
  v21[7] = v18;
  v19 = MEMORY[0x24C1B6890](v21);

  return v19;
}

void __45__CRNFluidSplitViewInteraction_composerBlock__block_invoke(double *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  [v5 touchDown:{v3, v4}];
  [v5 moveToPoint:a1[6] duration:{a1[7], 1.0}];
  [v5 advanceTime:0.2];
  [v5 moveToPoint:a1[4] duration:{a1[5], 1.0}];
  [v5 advanceTime:0.2];
  [v5 moveToPoint:a1[6] duration:{a1[7], 0.6}];
  [v5 moveToPoint:a1[4] duration:{a1[5], 0.6}];
  [v5 moveToPoint:a1[6] duration:{a1[7], 0.3}];
  [v5 moveToPoint:a1[4] duration:{a1[5], 0.3}];
  [v5 liftUp:{a1[4], a1[5]}];
  [v5 advanceTime:0.5];
  [v5 sendFlickWithStartPoint:a1[4] endPoint:a1[5] duration:{a1[6], a1[7], 0.6}];
  [v5 advanceTime:2.0];
  [v5 sendFlickWithStartPoint:a1[6] endPoint:a1[7] duration:{a1[4], a1[5], 0.6}];
}

@end