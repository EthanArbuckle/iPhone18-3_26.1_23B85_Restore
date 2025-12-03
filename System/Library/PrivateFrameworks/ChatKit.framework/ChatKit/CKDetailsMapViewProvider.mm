@interface CKDetailsMapViewProvider
- (CKDetailsMapViewProvider)initWithConversation:(id)conversation;
- (id)mapViewForParticipantsSharingLocationUsingDisplayName:(id)name;
@end

@implementation CKDetailsMapViewProvider

- (CKDetailsMapViewProvider)initWithConversation:(id)conversation
{
  conversationCopy = conversation;
  v9.receiver = self;
  v9.super_class = CKDetailsMapViewProvider;
  v6 = [(CKDetailsMapViewProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_conversation, conversation);
  }

  return v7;
}

- (id)mapViewForParticipantsSharingLocationUsingDisplayName:(id)name
{
  nameCopy = name;
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
  array = [MEMORY[0x1E695DF70] array];
  conversation = [(CKDetailsMapViewProvider *)self conversation];
  chat = [conversation chat];
  participants = [chat participants];
  v13 = [participants __imArrayByApplyingBlock:&__block_literal_global_154];
  [array addObjectsFromArray:v13];

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
    v18 = nameCopy;
    conversation2 = [(CKDetailsMapViewProvider *)self conversation];
    lastAddressedHandle = [conversation2 lastAddressedHandle];
    [v14 startObservingHandles:array callerHandle:lastAddressedHandle groupName:v18];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_19;
    }

    conversation2 = [(CKDetailsMapViewProvider *)self conversation];
    lastAddressedHandle = [conversation2 lastAddressedHandle];
    [v14 setRemoteParticipantHandles:array localParticipantHandle:lastAddressedHandle];
  }

LABEL_19:

  return v14;
}

@end