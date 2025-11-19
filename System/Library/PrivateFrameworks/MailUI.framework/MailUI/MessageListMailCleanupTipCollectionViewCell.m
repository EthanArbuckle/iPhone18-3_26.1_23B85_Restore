@interface MessageListMailCleanupTipCollectionViewCell
- (void)configureForTip:(id)a3 onSetupClick:(id)a4 onDismissClick:(id)a5 onAppear:(id)a6;
@end

@implementation MessageListMailCleanupTipCollectionViewCell

- (void)configureForTip:(id)a3 onSetupClick:(id)a4 onDismissClick:(id)a5 onAppear:(id)a6
{
  MEMORY[0x277D82BE0](a3);
  v22 = _Block_copy(a4);
  v19 = _Block_copy(a5);
  v21 = _Block_copy(a6);
  MEMORY[0x277D82BE0](self);
  if (v22)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v22;
    v13 = sub_214B8ACA0;
    v14 = v6;
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  if (v19)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v19;
    v11 = sub_214B8ACA0;
    v12 = v7;
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  if (v21)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v21;
    v9 = sub_214B8ACA0;
    v10 = v8;
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  MessageListMailCleanupTipCollectionViewCell.configure(forTip:onSetupClick:onDismissClick:onAppear:)(a3, v13, v14, v11, v12, v9, v10);
  sub_214A6B584(v9);
  sub_214A6B584(v11);
  sub_214A6B584(v13);
  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](a3);
}

@end