@interface MFLibraryMessage
+ (id)nanoMessageIdsForMailMessages:(id)messages;
+ (unint64_t)nnmkMailItemStatusFromMFMessageFlags:(unint64_t)flags conversationFlags:(unint64_t)conversationFlags;
- (id)nanoLocalMessageId;
- (id)nanoMessage;
- (id)nanoMessageId;
- (id)nanoMessageWithHeaders:(id)headers;
- (int64_t)mailDropDeliveryState;
@end

@implementation MFLibraryMessage

- (int64_t)mailDropDeliveryState
{
  headers = [(MFLibraryMessage *)self headers];
  v4 = H_MAIL_DROP_DELIVERY_STATE;
  v5 = [headers hasHeaderForKey:H_MAIL_DROP_DELIVERY_STATE];

  if ((v5 & 1) == 0)
  {
    return 0;
  }

  headers2 = [(MFLibraryMessage *)self headers];
  v7 = [headers2 firstHeaderForKey:v4];

  if ([v7 length])
  {
    intValue = [v7 intValue];
    if (intValue - 9 >= 0xFFFFFFF8)
    {
      v9 = intValue;
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
  headersIfAvailable = [(MFLibraryMessage *)self headersIfAvailable];
  v4 = [(MFLibraryMessage *)self nanoMessageWithHeaders:headersIfAvailable];

  return v4;
}

- (id)nanoMessageWithHeaders:(id)headers
{
  headersCopy = headers;
  v5 = objc_alloc_init(sub_10006C840());
  nanoMessageId = [(MFLibraryMessage *)self nanoMessageId];
  [v5 setMessageId:nanoMessageId];

  notificationID = [(MFLibraryMessage *)self notificationID];
  [v5 setPublisherBulletinId:notificationID];

  v8 = sub_10006C840();
  mailbox = [(MFLibraryMessage *)self mailbox];
  name = [mailbox name];
  remoteID = [(MFLibraryMessage *)self remoteID];
  v12 = [v8 generateNotificationIdWithFolderId:name remoteId:remoteID];
  [v5 setNotificationMessageId:v12];

  mailbox2 = [(MFLibraryMessage *)self mailbox];
  store = [mailbox2 store];
  account = [store account];
  nano_account = [account nano_account];
  accountId = [nano_account accountId];
  [v5 setAccountId:accountId];

  v18 = [NSString stringWithFormat:@"%lld", [(MFLibraryMessage *)self conversationID]];
  [v5 setConversationId:v18];

  mailbox3 = [(MFLibraryMessage *)self mailbox];
  nano_mailboxId = [mailbox3 nano_mailboxId];
  [v5 setMailboxId:nano_mailboxId];

  dateSent = [(MFLibraryMessage *)self dateSent];
  [v5 setDateSent:dateSent];

  dateReceived = [(MFLibraryMessage *)self dateReceived];
  [v5 setDateReceived:dateReceived];

  if (headersCopy)
  {
    firstSenderAddress = [headersCopy firstSenderAddress];
    [v5 setFrom:firstSenderAddress];

    copyAddressListForTo = [headersCopy copyAddressListForTo];
    [v5 setTo:copyAddressListForTo];

    copyAddressListForCc = [headersCopy copyAddressListForCc];
    [v5 setCc:copyAddressListForCc];

    copyAddressListForBcc = [headersCopy copyAddressListForBcc];
    [v5 setBcc:copyAddressListForBcc];

    v27 = [headersCopy firstHeaderForKey:ECMessageHeaderKeySubject];
    [v5 setSubject:v27];

    [headersCopy firstHeaderForKey:ECMessageHeaderKeyMessageID];
  }

  else
  {
    firstSender = [(MFLibraryMessage *)self firstSender];
    [v5 setFrom:firstSender];

    v30 = [(MFLibraryMessage *)self to];
    [v5 setTo:v30];

    v31 = [(MFLibraryMessage *)self cc];
    [v5 setCc:v31];

    v32 = [(MFLibraryMessage *)self bcc];
    [v5 setBcc:v32];

    subject = [(MFLibraryMessage *)self subject];
    subjectString = [subject subjectString];
    [v5 setSubject:subjectString];

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
  headersIfAvailable = [(MFLibraryMessage *)self headersIfAvailable];
  if (headersIfAvailable)
  {
    v4 = sub_10006C840();
    v5 = [(MFLibraryMessage *)self nanoMessageWithHeaders:headersIfAvailable];
    v6 = [v4 generateMessageHashForMessage:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (unint64_t)nnmkMailItemStatusFromMFMessageFlags:(unint64_t)flags conversationFlags:(unint64_t)conversationFlags
{
  v4 = ((flags >> 1) & 8 | flags & 1 | (flags >> 6) & 4 | (flags >> 1) & 2) ^ 1;
  if ((flags & 0x18000000000) != 0)
  {
    v4 |= 0x20uLL;
  }

  if (flags >> 10)
  {
    v5 = flags >> 10 == 63;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v4 |= 0x10uLL;
  }

  return (flags >> 13) & 0x100 | (flags >> 18) & 0x40 | (((flags >> 1) & 1) << 9) & 0xFFFFFFFFFFFFF77FLL | (((conversationFlags >> 2) & 1) << 11) | ((conversationFlags & 1) << 7) | v4;
}

+ (id)nanoMessageIdsForMailMessages:(id)messages
{
  v3 = [messages ef_map:&stru_100158B60];

  return v3;
}

@end