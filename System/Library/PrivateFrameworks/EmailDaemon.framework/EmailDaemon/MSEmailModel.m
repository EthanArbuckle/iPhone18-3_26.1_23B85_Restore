@interface MSEmailModel
- (void)mf_mailMessageFromModel:(id)a3;
@end

@implementation MSEmailModel

- (void)mf_mailMessageFromModel:(id)a3
{
  v4 = a3;
  if ([(MSEmailModel *)self type]== 1)
  {
    v5 = [[_MFMailCompositionContext alloc] initWithComposeType:0];
  }

  else
  {
    v6 = [(MSEmailModel *)self reference];
    v7 = [v6 mf_messageCriterion];
    v8 = +[MFMailMessageLibrary defaultInstance];
    v9 = [v8 messagesMatchingCriterion:v7 options:7];
    v10 = [v9 firstObject];

    if (v10)
    {
      if ([(MSEmailModel *)self type]== 3)
      {
        v11 = [[_MFMailCompositionContext alloc] initForwardOfMessage:0 legacyMessage:v10];
      }

      else
      {
        v11 = [[_MFMailCompositionContext alloc] initReplyAllToMessage:0 legacyMessage:v10];
      }

      v5 = v11;
    }

    else
    {
      v5 = 0;
    }
  }

  v12 = [(MSEmailModel *)self sender];
  [v5 setPreferredSendingEmailAddress:v12];

  v13 = [(MSEmailModel *)self to];
  [v5 setToRecipients:v13];

  v14 = [(MSEmailModel *)self cc];
  [v5 setCcRecipients:v14];

  v15 = [(MSEmailModel *)self bcc];
  [v5 setBccRecipients:v15];

  v16 = [(MSEmailModel *)self subject];
  [v5 setSubject:v16];

  v17 = [(MSEmailModel *)self body];
  [v5 setMessageBody:v17 isHTML:0];

  v18 = +[MFSignatures sharedInstance];
  v19 = [v5 preferredSendingEmailAddress];
  v20 = [v18 signaturePlainTextForSendingEmailAddress:v19];

  v21 = [(MSEmailModel *)self body];
  v22 = v21;
  v23 = &stru_10015BEC8;
  if (v20)
  {
    v23 = v20;
  }

  v24 = [NSString stringWithFormat:@"%@%@", v21, v23];
  [v5 setMessageBody:v24 isHTML:0];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005E8E4;
  block[3] = &unk_100157668;
  v28 = v5;
  v29 = v4;
  v25 = v4;
  v26 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

@end