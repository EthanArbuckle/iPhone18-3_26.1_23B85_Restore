@interface MessageHeaderViewModel
- (BOOL)_viewModelHasChanges:(_BOOL8)changes;
- (MessageHeaderViewModel)initWithBuilder:(id)builder;
- (MessageHeaderViewModel)initWithItemBuilder:(id)builder;
- (id)updatedFlagsModelWithBuilder:(id)builder;
- (id)updatedModelWithBuilder:(id)builder;
- (id)updatedModelWithMessage:(id)message;
- (uint64_t)_flagsChangedInModel:(uint64_t)model;
@end

@implementation MessageHeaderViewModel

- (MessageHeaderViewModel)initWithBuilder:(id)builder
{
  builderCopy = builder;
  if (!builderCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MessageHeaderViewModel.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"builderBlock"}];
  }

  v11.receiver = self;
  v11.super_class = MessageHeaderViewModel;
  v6 = [(MessageHeaderViewModel *)&v11 init];
  if (v6)
  {
    observableObserver = [MEMORY[0x277D07180] observableObserver];
    observableObserver = v6->_observableObserver;
    v6->_observableObserver = observableObserver;

    builderCopy[2](builderCopy, v6);
  }

  return v6;
}

- (MessageHeaderViewModel)initWithItemBuilder:(id)builder
{
  builderCopy = builder;
  [(MessageHeaderViewModel *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MessageHeaderViewModel initWithItemBuilder:]", "MessageHeaderViewModel.m", 47, "0");
}

- (id)updatedModelWithBuilder:(id)builder
{
  builderCopy = builder;
  if (!builderCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MessageHeaderViewModel.m" lineNumber:59 description:{@"Invalid parameter not satisfying: %@", @"builderBlock"}];
  }

  v6 = objc_alloc(objc_opt_class());
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __50__MessageHeaderViewModel_updatedModelWithBuilder___block_invoke;
  v13[3] = &unk_2781818F0;
  v13[4] = self;
  v7 = builderCopy;
  v14 = v7;
  v8 = [v6 initWithBuilder:v13];
  observableObserver = [(MessageHeaderViewModel *)self observableObserver];
  [v8 setObservableObserver:observableObserver];

  if ([(MessageHeaderViewModel *)self _viewModelHasChanges:v8])
  {
    observableObserver2 = [v8 observableObserver];
    [observableObserver2 observerDidReceiveResult:v8];
  }

  return v8;
}

void __50__MessageHeaderViewModel_updatedModelWithBuilder___block_invoke(uint64_t a1, void *a2)
{
  v33 = a2;
  v3 = [*(a1 + 32) itemID];
  [v33 setItemID:v3];

  v4 = [*(a1 + 32) dateSent];
  v5 = [v4 copy];
  [v33 setDateSent:v5];

  v6 = [*(a1 + 32) subject];
  v7 = [v6 copy];
  [v33 setSubject:v7];

  v8 = [*(a1 + 32) senderList];
  v9 = [v8 copy];
  [v33 setSenderList:v9];

  v10 = [*(a1 + 32) replyToList];
  v11 = [v10 copy];
  [v33 setReplyToList:v11];

  v12 = [*(a1 + 32) toList];
  v13 = [v12 copy];
  [v33 setToList:v13];

  v14 = [*(a1 + 32) ccList];
  v15 = [v14 copy];
  [v33 setCcList:v15];

  v16 = [*(a1 + 32) bccList];
  v17 = [v16 copy];
  [v33 setBccList:v17];

  v18 = [*(a1 + 32) atomManager];
  [v33 setAtomManager:v18];

  v19 = [*(a1 + 32) sendLaterDate];
  v20 = [v19 copy];
  [v33 setSendLaterDate:v20];

  [v33 setRead:{objc_msgSend(*(a1 + 32), "isRead")}];
  [v33 setFlagged:{objc_msgSend(*(a1 + 32), "isFlagged")}];
  v21 = [*(a1 + 32) flagColors];
  v22 = [v21 copy];
  [v33 setFlagColors:v22];

  [v33 setReplied:{objc_msgSend(*(a1 + 32), "isReplied")}];
  [v33 setForwarded:{objc_msgSend(*(a1 + 32), "isForwarded")}];
  [v33 setRedirected:{objc_msgSend(*(a1 + 32), "isRedirected")}];
  [v33 setJunk:{objc_msgSend(*(a1 + 32), "isJunk")}];
  [v33 setVIP:{objc_msgSend(*(a1 + 32), "isVIP")}];
  [v33 setNotify:{objc_msgSend(*(a1 + 32), "isNotify")}];
  [v33 setMute:{objc_msgSend(*(a1 + 32), "isMute")}];
  v23 = [*(a1 + 32) readLaterDate];
  v24 = [v23 copy];
  [v33 setReadLaterDate:v24];

  v25 = [*(a1 + 32) sendLaterDate];
  v26 = [v25 copy];
  [v33 setSendLaterDate:v26];

  v27 = [*(a1 + 32) displayDate];
  v28 = [v27 copy];
  [v33 setDisplayDate:v28];

  v29 = [*(a1 + 32) followUp];
  v30 = [v29 copy];
  [v33 setFollowUp:v30];

  [v33 setBlockedSender:{objc_msgSend(*(a1 + 32), "isBlockedSender")}];
  [v33 setUnsubscribeType:{objc_msgSend(*(a1 + 32), "unsubscribeType")}];
  [v33 setHasAttachments:{objc_msgSend(*(a1 + 32), "hasAttachments")}];
  v31 = [*(a1 + 32) date];
  v32 = [v31 copy];
  [v33 setDate:v32];

  (*(*(a1 + 40) + 16))();
}

- (BOOL)_viewModelHasChanges:(_BOOL8)changes
{
  v3 = a2;
  if (changes)
  {
    if (([(MessageHeaderViewModel *)changes _flagsChangedInModel:v3]& 1) != 0)
    {
      changes = 1;
    }

    else
    {
      itemID = [changes itemID];
      itemID2 = [v3 itemID];
      if ([itemID isEqual:itemID2])
      {
        dateSent = [changes dateSent];
        dateSent2 = [v3 dateSent];
        if ([dateSent isEqual:dateSent2])
        {
          subject = [changes subject];
          subject2 = [v3 subject];
          if ([subject isEqual:subject2])
          {
            sendLaterDate = [changes sendLaterDate];
            sendLaterDate2 = [v3 sendLaterDate];
            if ([sendLaterDate isEqual:sendLaterDate2])
            {
              readLaterDate = [changes readLaterDate];
              readLaterDate2 = [v3 readLaterDate];
              if ([readLaterDate isEqual:?])
              {
                sendLaterDate3 = [changes sendLaterDate];
                sendLaterDate4 = [v3 sendLaterDate];
                if ([sendLaterDate3 isEqual:?])
                {
                  displayDate = [changes displayDate];
                  displayDate2 = [v3 displayDate];
                  if ([displayDate isEqual:?])
                  {
                    followUp = [changes followUp];
                    followUp2 = [v3 followUp];
                    if ([followUp isEqual:?])
                    {
                      date = [changes date];
                      date2 = [v3 date];
                      if ([date isEqual:?])
                      {
                        displayDate3 = [changes displayDate];
                        displayDate4 = [v3 displayDate];
                        if ([displayDate3 isEqual:?])
                        {
                          senderList = [changes senderList];
                          senderList2 = [v3 senderList];
                          if ([senderList isEqualToArray:?])
                          {
                            replyToList = [changes replyToList];
                            replyToList2 = [v3 replyToList];
                            if ([replyToList isEqualToArray:replyToList2])
                            {
                              toList = [changes toList];
                              toList2 = [v3 toList];
                              if ([toList isEqualToArray:toList2])
                              {
                                ccList = [changes ccList];
                                ccList2 = [v3 ccList];
                                if ([ccList isEqualToArray:ccList2])
                                {
                                  bccList = [changes bccList];
                                  bccList2 = [v3 bccList];
                                  if ([bccList isEqualToArray:bccList2] && (v14 = objc_msgSend(changes, "hasAttachments"), v14 == objc_msgSend(v3, "hasAttachments")) && (v15 = objc_msgSend(changes, "isBlockedSender"), v15 == objc_msgSend(v3, "isBlockedSender")))
                                  {
                                    unsubscribeType = [changes unsubscribeType];
                                    changes = unsubscribeType != [v3 unsubscribeType];
                                  }

                                  else
                                  {
                                    changes = 1;
                                  }
                                }

                                else
                                {
                                  changes = 1;
                                }
                              }

                              else
                              {
                                changes = 1;
                              }
                            }

                            else
                            {
                              changes = 1;
                            }
                          }

                          else
                          {
                            changes = 1;
                          }
                        }

                        else
                        {
                          changes = 1;
                        }
                      }

                      else
                      {
                        changes = 1;
                      }
                    }

                    else
                    {
                      changes = 1;
                    }
                  }

                  else
                  {
                    changes = 1;
                  }
                }

                else
                {
                  changes = 1;
                }
              }

              else
              {
                changes = 1;
              }
            }

            else
            {
              changes = 1;
            }
          }

          else
          {
            changes = 1;
          }
        }

        else
        {
          changes = 1;
        }
      }

      else
      {
        changes = 1;
      }
    }
  }

  return changes;
}

- (id)updatedFlagsModelWithBuilder:(id)builder
{
  builderCopy = builder;
  if (!builderCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MessageHeaderViewModel.m" lineNumber:105 description:{@"Invalid parameter not satisfying: %@", @"flagsBuilderBlock"}];
  }

  v6 = objc_alloc(objc_opt_class());
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __55__MessageHeaderViewModel_updatedFlagsModelWithBuilder___block_invoke;
  v13[3] = &unk_2781818F0;
  v13[4] = self;
  v7 = builderCopy;
  v14 = v7;
  v8 = [v6 initWithBuilder:v13];
  observableObserver = [(MessageHeaderViewModel *)self observableObserver];
  [v8 setObservableObserver:observableObserver];

  if ([(MessageHeaderViewModel *)self _flagsChangedInModel:v8])
  {
    observableObserver2 = [v8 observableObserver];
    [observableObserver2 observerDidReceiveResult:v8];
  }

  return v8;
}

void __55__MessageHeaderViewModel_updatedFlagsModelWithBuilder___block_invoke(uint64_t a1, void *a2)
{
  v26 = a2;
  v3 = [*(a1 + 32) itemID];
  [v26 setItemID:v3];

  [v26 setBlockedSender:{objc_msgSend(*(a1 + 32), "isBlockedSender")}];
  [v26 setHasAttachments:{objc_msgSend(*(a1 + 32), "hasAttachments")}];
  v4 = [*(a1 + 32) date];
  v5 = [v4 copy];
  [v26 setDate:v5];

  v6 = [*(a1 + 32) dateSent];
  v7 = [v6 copy];
  [v26 setDateSent:v7];

  v8 = [*(a1 + 32) subject];
  v9 = [v8 copy];
  [v26 setSubject:v9];

  v10 = [*(a1 + 32) mailbox];
  v11 = [v10 copy];
  [v26 setMailbox:v11];

  v12 = [*(a1 + 32) senderList];
  v13 = [v12 copy];
  [v26 setSenderList:v13];

  v14 = [*(a1 + 32) replyToList];
  v15 = [v14 copy];
  [v26 setReplyToList:v15];

  v16 = [*(a1 + 32) toList];
  v17 = [v16 copy];
  [v26 setToList:v17];

  v18 = [*(a1 + 32) ccList];
  v19 = [v18 copy];
  [v26 setCcList:v19];

  v20 = [*(a1 + 32) bccList];
  v21 = [v20 copy];
  [v26 setBccList:v21];

  v22 = [*(a1 + 32) atomManager];
  [v26 setAtomManager:v22];

  v23 = [*(a1 + 32) readLaterDate];
  [v26 setReadLaterDate:v23];

  v24 = [*(a1 + 32) followUp];
  [v26 setFollowUp:v24];

  v25 = [*(a1 + 32) sendLaterDate];
  [v26 setSendLaterDate:v25];

  (*(*(a1 + 40) + 16))();
}

- (uint64_t)_flagsChangedInModel:(uint64_t)model
{
  v3 = a2;
  if (model)
  {
    isRead = [model isRead];
    if (isRead == [v3 isRead] && (v5 = objc_msgSend(model, "isFlagged"), v5 == objc_msgSend(v3, "isFlagged")))
    {
      flagColors = [model flagColors];
      flagColors2 = [v3 flagColors];
      if ([flagColors isEqualToIndexSet:flagColors2] && (v8 = objc_msgSend(model, "isReplied"), v8 == objc_msgSend(v3, "isReplied")) && (v9 = objc_msgSend(model, "isForwarded"), v9 == objc_msgSend(v3, "isForwarded")) && (v10 = objc_msgSend(model, "isVIP"), v10 == objc_msgSend(v3, "isVIP")) && (v11 = objc_msgSend(model, "isNotify"), v11 == objc_msgSend(v3, "isNotify")))
      {
        isMute = [model isMute];
        model = isMute ^ [v3 isMute];
      }

      else
      {
        model = 1;
      }
    }

    else
    {
      model = 1;
    }
  }

  return model;
}

- (id)updatedModelWithMessage:(id)message
{
  messageCopy = message;
  if (!messageCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MessageHeaderViewModel.m" lineNumber:145 description:{@"Invalid parameter not satisfying: %@", @"message"}];
  }

  v6 = objc_alloc(objc_opt_class());
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __50__MessageHeaderViewModel_updatedModelWithMessage___block_invoke;
  v13[3] = &unk_278181918;
  v7 = messageCopy;
  v14 = v7;
  selfCopy = self;
  v8 = [v6 initWithBuilder:v13];
  observableObserver = [(MessageHeaderViewModel *)self observableObserver];
  [v8 setObservableObserver:observableObserver];

  if ([(MessageHeaderViewModel *)self _viewModelHasChanges:v8])
  {
    observableObserver2 = [v8 observableObserver];
    [observableObserver2 observerDidReceiveResult:v8];
  }

  return v8;
}

void __50__MessageHeaderViewModel_updatedModelWithMessage___block_invoke(uint64_t a1, void *a2)
{
  v22 = a2;
  v3 = [*(a1 + 32) flags];
  v4 = [*(a1 + 32) itemID];
  [v22 setItemID:v4];

  [v22 setRead:{objc_msgSend(v3, "read")}];
  [v22 setFlagged:{objc_msgSend(v3, "flagged")}];
  v5 = [*(a1 + 32) flagColors];
  [v22 setFlagColors:v5];

  [v22 setReplied:{objc_msgSend(v3, "replied")}];
  [v22 setForwarded:{objc_msgSend(v3, "forwarded")}];
  [v22 setRedirected:{objc_msgSend(v3, "redirected")}];
  [v22 setJunk:{objc_msgSend(v3, "isJunk")}];
  [v22 setVIP:{objc_msgSend(*(a1 + 32), "isVIP")}];
  [v22 setNotify:{objc_msgSend(*(a1 + 32), "conversationNotificationLevel") == 2}];
  [v22 setMute:{objc_msgSend(*(a1 + 32), "conversationNotificationLevel") == 1}];
  [v22 setBlockedSender:{objc_msgSend(*(a1 + 32), "isBlocked")}];
  [v22 setUnsubscribeType:{objc_msgSend(*(a1 + 32), "unsubscribeType")}];
  [v22 setHasAttachments:{objc_msgSend(*(a1 + 32), "hasAttachments")}];
  v6 = [*(a1 + 32) date];
  [v22 setDateSent:v6];

  v7 = [*(a1 + 32) date];
  [v22 setDate:v7];

  v8 = [*(a1 + 32) subject];
  [v22 setSubject:v8];

  v9 = [*(a1 + 32) senderList];
  [v22 setSenderList:v9];

  v10 = [*(a1 + 40) replyToList];
  [v22 setReplyToList:v10];

  v11 = [*(a1 + 32) toList];
  [v22 setToList:v11];

  v12 = [*(a1 + 32) ccList];
  [v22 setCcList:v12];

  v13 = [*(a1 + 32) bccList];
  [v22 setBccList:v13];

  v14 = [*(a1 + 32) readLater];
  v15 = [v14 date];
  [v22 setReadLaterDate:v15];

  v16 = [*(a1 + 32) sendLaterDate];
  [v22 setSendLaterDate:v16];

  v17 = [*(a1 + 32) followUp];
  [v22 setFollowUp:v17];

  v18 = [*(a1 + 32) displayDate];
  [v22 setDisplayDate:v18];

  v19 = [*(a1 + 40) mailbox];
  v20 = [v19 copy];
  [v22 setMailbox:v20];

  v21 = [*(a1 + 40) atomManager];
  [v22 setAtomManager:v21];
}

@end