@interface CKDetailsMapViewProvider
- (CKDetailsMapViewProvider)initWithConversation:(id)a3;
- (id)mapViewForParticipantsSharingLocationUsingDisplayName:(id)a3;
@end

@implementation CKDetailsMapViewProvider

- (CKDetailsMapViewProvider)initWithConversation:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CKDetailsMapViewProvider;
  v6 = [(CKDetailsMapViewProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_conversation, a3);
  }

  return v7;
}

- (id)mapViewForParticipantsSharingLocationUsingDisplayName:(id)a3
{
  v4 = a3;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2050000000;
  v5 = getFMUILocationDetailViewControllerClass_softClass_0;
  v30 = getFMUILocationDetailViewControllerClass_softClass_0;
  if (!getFMUILocationDetailViewControllerClass_softClass_0)
  {
    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __getFMUILocationDetailViewControllerClass_block_invoke_0;
    v25 = &unk_1E72EB968;
    v26 = &v27;
    __getFMUILocationDetailViewControllerClass_block_invoke_0(&v22);
    v5 = v28[3];
  }

  v6 = v5;
  _Block_object_dispose(&v27, 8);
  v27 = 0;
  v28 = &v27;
  v29 = 0x2050000000;
  v7 = getFMUILocationDetailViewControllerViewOptionsClass_softClass_0;
  v30 = getFMUILocationDetailViewControllerViewOptionsClass_softClass_0;
  if (!getFMUILocationDetailViewControllerViewOptionsClass_softClass_0)
  {
    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __getFMUILocationDetailViewControllerViewOptionsClass_block_invoke_0;
    v25 = &unk_1E72EB968;
    v26 = &v27;
    __getFMUILocationDetailViewControllerViewOptionsClass_block_invoke_0(&v22);
    v7 = v28[3];
  }

  v8 = v7;
  _Block_object_dispose(&v27, 8);
  v9 = [MEMORY[0x1E695DF70] array];
  v10 = [(CKDetailsMapViewProvider *)self conversation];
  v11 = [v10 chat];
  v12 = [v11 participants];
  v13 = [v12 __imArrayByApplyingBlock:&__block_literal_global_154];
  [v9 addObjectsFromArray:v13];

  v14 = objc_alloc_init(v5);
  if (v7 && (objc_opt_respondsToSelector() & 1) != 0 && (([v7 messagesChatDetails], v15 = objc_claimAutoreleasedReturnValue(), (objc_opt_isKindOfClass() & 1) == 0) ? (v16 = 0) : (v16 = v15), v17 = v16, v15, v17))
  {
    if (objc_opt_respondsToSelector())
    {
      [v14 setViewOptions:v17];
    }
  }

  else
  {
    v15 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v18 = v4;
    v19 = [(CKDetailsMapViewProvider *)self conversation];
    v20 = [v19 lastAddressedHandle];
    [v14 startObservingHandles:v9 callerHandle:v20 groupName:v18];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_19;
    }

    v19 = [(CKDetailsMapViewProvider *)self conversation];
    v20 = [v19 lastAddressedHandle];
    [v14 setRemoteParticipantHandles:v9 localParticipantHandle:v20];
  }

LABEL_19:

  return v14;
}

@end