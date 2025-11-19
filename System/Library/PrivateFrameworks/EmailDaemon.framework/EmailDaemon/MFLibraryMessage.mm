@interface MFLibraryMessage
+ (id)nanoMessageIdsForMailMessages:(id)a3;
+ (unint64_t)nnmkMailItemStatusFromMFMessageFlags:(unint64_t)a3 conversationFlags:(unint64_t)a4;
- (id)nanoLocalMessageId;
- (id)nanoMessage;
- (id)nanoMessageId;
- (id)nanoMessageWithHeaders:(id)a3;
- (int64_t)mailDropDeliveryState;
@end

@implementation MFLibraryMessage

- (int64_t)mailDropDeliveryState
{
  v3 = [(MFLibraryMessage *)self headers];
  v4 = H_MAIL_DROP_DELIVERY_STATE;
  v5 = [v3 hasHeaderForKey:H_MAIL_DROP_DELIVERY_STATE];

  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = [(MFLibraryMessage *)self headers];
  v7 = [v6 firstHeaderForKey:v4];

  if ([v7 length])
  {
    v8 = [v7 intValue];
    if (v8 - 9 >= 0xFFFFFFF8)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)nanoMessage
{
  v3 = [(MFLibraryMessage *)self headersIfAvailable];
  v4 = [(MFLibraryMessage *)self nanoMessageWithHeaders:v3];

  return v4;
}

- (id)nanoMessageWithHeaders:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(sub_10006C840());
  v6 = [(MFLibraryMessage *)self nanoMessageId];
  [v5 setMessageId:v6];

  v7 = [(MFLibraryMessage *)self notificationID];
  [v5 setPublisherBulletinId:v7];

  v8 = sub_10006C840();
  v9 = [(MFLibraryMessage *)self mailbox];
  v10 = [v9 name];
  v11 = [(MFLibraryMessage *)self remoteID];
  v12 = [v8 generateNotificationIdWithFolderId:v10 remoteId:v11];
  [v5 setNotificationMessageId:v12];

  v13 = [(MFLibraryMessage *)self mailbox];
  v14 = [v13 store];
  v15 = [v14 account];
  v16 = [v15 nano_account];
  v17 = [v16 accountId];
  [v5 setAccountId:v17];

  v18 = [NSString stringWithFormat:@"%lld", [(MFLibraryMessage *)self conversationID]];
  [v5 setConversationId:v18];

  v19 = [(MFLibraryMessage *)self mailbox];
  v20 = [v19 nano_mailboxId];
  [v5 setMailboxId:v20];

  v21 = [(MFLibraryMessage *)self dateSent];
  [v5 setDateSent:v21];

  v22 = [(MFLibraryMessage *)self dateReceived];
  [v5 setDateReceived:v22];

  if (v4)
  {
    v23 = [v4 firstSenderAddress];
    [v5 setFrom:v23];

    v24 = [v4 copyAddressListForTo];
    [v5 setTo:v24];

    v25 = [v4 copyAddressListForCc];
    [v5 setCc:v25];

    v26 = [v4 copyAddressListForBcc];
    [v5 setBcc:v26];

    v27 = [v4 firstHeaderForKey:ECMessageHeaderKeySubject];
    [v5 setSubject:v27];

    [v4 firstHeaderForKey:ECMessageHeaderKeyMessageID];
  }

  else
  {
    v29 = [(MFLibraryMessage *)self firstSender];
    [v5 setFrom:v29];

    v30 = [(MFLibraryMessage *)self to];
    [v5 setTo:v30];

    v31 = [(MFLibraryMessage *)self cc];
    [v5 setCc:v31];

    v32 = [(MFLibraryMessage *)self bcc];
    [v5 setBcc:v32];

    v33 = [(MFLibraryMessage *)self subject];
    v34 = [v33 subjectString];
    [v5 setSubject:v34];

    [(MFLibraryMessage *)self messageIDHeader];
  }
  v28 = ;
  [v5 setMessageIdHeader:v28];

  [v5 setStatus:{objc_msgSend(objc_opt_class(), "nnmkMailItemStatusFromMFMessageFlags:conversationFlags:", -[MFLibraryMessage messageFlags](self, "messageFlags"), -[MFLibraryMessage conversationFlags](self, "conversationFlags"))}];

  return v5;
}

- (id)nanoMessageId
{
  v3 = [[MFMessageResultsGenerator alloc] initWithKeys:&__NSArray0__struct downloadIfNecessary:0];
  [(MFMessageResultsGenerator *)v3 setMessage:self];
  v4 = [(_MFResultsGenerator *)v3 valueForKey:@"MSResultsKeyLocalMessageReference"];

  return v4;
}

- (id)nanoLocalMessageId
{
  v3 = [(MFLibraryMessage *)self headersIfAvailable];
  if (v3)
  {
    v4 = sub_10006C840();
    v5 = [(MFLibraryMessage *)self nanoMessageWithHeaders:v3];
    v6 = [v4 generateMessageHashForMessage:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (unint64_t)nnmkMailItemStatusFromMFMessageFlags:(unint64_t)a3 conversationFlags:(unint64_t)a4
{
  v4 = ((a3 >> 1) & 8 | a3 & 1 | (a3 >> 6) & 4 | (a3 >> 1) & 2) ^ 1;
  if ((a3 & 0x18000000000) != 0)
  {
    v4 |= 0x20uLL;
  }

  if (a3 >> 10)
  {
    v5 = a3 >> 10 == 63;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v4 |= 0x10uLL;
  }

  return (a3 >> 13) & 0x100 | (a3 >> 18) & 0x40 | (((a3 >> 1) & 1) << 9) & 0xFFFFFFFFFFFFF77FLL | (((a4 >> 2) & 1) << 11) | ((a4 & 1) << 7) | v4;
}

+ (id)nanoMessageIdsForMailMessages:(id)a3
{
  v3 = [a3 ef_map:&stru_100158B60];

  return v3;
}

@end