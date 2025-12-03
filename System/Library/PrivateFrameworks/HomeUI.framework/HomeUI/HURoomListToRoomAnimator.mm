@interface HURoomListToRoomAnimator
- (void)animateTransition:(id)transition;
@end

@implementation HURoomListToRoomAnimator

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  v5 = [transitionCopy viewControllerForKey:*MEMORY[0x277D77230]];
  v6 = [transitionCopy viewControllerForKey:*MEMORY[0x277D77240]];
  view = [v5 view];
  view2 = [v6 view];
  [view frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  if ([(HURoomListToRoomAnimator *)self isPresenting])
  {
    containerView = [transitionCopy containerView];
    [containerView addSubview:view2];

    [view2 setFrame:{v10, v12, v14, v16}];
    [view2 setAlpha:0.0];
    v18 = MEMORY[0x277D75D18];
    [(HURoomListToRoomAnimator *)self transitionDuration:transitionCopy];
    v20 = v19;
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __46__HURoomListToRoomAnimator_animateTransition___block_invoke;
    v37[3] = &unk_277DB8488;
    v21 = &v38;
    v38 = view2;
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __46__HURoomListToRoomAnimator_animateTransition___block_invoke_2;
    v35[3] = &unk_277DB8C28;
    v22 = &v36;
    v36 = transitionCopy;
    v23 = transitionCopy;
    v24 = v37;
    v25 = v35;
  }

  else
  {
    v18 = MEMORY[0x277D75D18];
    [(HURoomListToRoomAnimator *)self transitionDuration:transitionCopy];
    v20 = v26;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __46__HURoomListToRoomAnimator_animateTransition___block_invoke_3;
    v33[3] = &unk_277DB8488;
    v21 = &v34;
    v34 = view;
    v28 = MEMORY[0x277D85DD0];
    v29 = 3221225472;
    v30 = __46__HURoomListToRoomAnimator_animateTransition___block_invoke_4;
    v31 = &unk_277DB8C28;
    v22 = &v32;
    v32 = transitionCopy;
    v27 = transitionCopy;
    v24 = v33;
    v25 = &v28;
  }

  [v18 animateWithDuration:2 delay:v24 options:v25 animations:v20 completion:{0.0, v28, v29, v30, v31}];
}

@end