@interface MSEmailModel
- (void)mf_mailMessageFromModel:(id)model;
@end

@implementation MSEmailModel

- (void)mf_mailMessageFromModel:(id)model
{
  modelCopy = model;
  if ([(MSEmailModel *)self type]== 1)
  {
    v5 = [[_MFMailCompositionContext alloc] initWithComposeType:0];
  }

  else
  {
    reference = [(MSEmailModel *)self reference];
    mf_messageCriterion = [reference mf_messageCriterion];
    v8 = +[MFMailMessageLibrary defaultInstance];
    v9 = [v8 messagesMatchingCriterion:mf_messageCriterion options:7];
    firstObject = [v9 firstObject];

    if (firstObject)
    {
      if ([(MSEmailModel *)self type]== 3)
      {
        v11 = [[_MFMailCompositionContext alloc] initForwardOfMessage:0 legacyMessage:firstObject];
      }

      else
      {
        v11 = [[_MFMailCompositionContext alloc] initReplyAllToMessage:0 legacyMessage:firstObject];
      }

      v5 = v11;
    }

    else
    {
      v5 = 0;
    }
  }

  sender = [(MSEmailModel *)self sender];
  [v5 setPreferredSendingEmailAddress:sender];

  v13 = [(MSEmailModel *)self to];
  [v5 setToRecipients:v13];

  v14 = [(MSEmailModel *)self cc];
  [v5 setCcRecipients:v14];

  v15 = [(MSEmailModel *)self bcc];
  [v5 setBccRecipients:v15];

  subject = [(MSEmailModel *)self subject];
  [v5 setSubject:subject];

  body = [(MSEmailModel *)self body];
  [v5 setMessageBody:body isHTML:0];

  v18 = +[MFSignatures sharedInstance];
  preferredSendingEmailAddress = [v5 preferredSendingEmailAddress];
  v20 = [v18 signaturePlainTextForSendingEmailAddress:preferredSendingEmailAddress];

  body2 = [(MSEmailModel *)self body];
  v22 = body2;
  v23 = &stru_10015BEC8;
  if (v20)
  {
    v23 = v20;
  }

  v24 = [NSString stringWithFormat:@"%@%@", body2, v23];
  [v5 setMessageBody:v24 isHTML:0];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005E8E4;
  block[3] = &unk_100157668;
  v28 = v5;
  v29 = modelCopy;
  v25 = modelCopy;
  v26 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

@end