@interface MFMailMessageMEMessageTransformer
- (id)messageForMailMessage:(id)message;
@end

@implementation MFMailMessageMEMessageTransformer

- (id)messageForMailMessage:(id)message
{
  messageCopy = message;
  headers = [messageCopy headers];
  headersDictionary = [headers headersDictionary];

  v23 = headersDictionary;
  messageBodyIfAvailable = [messageCopy messageBodyIfAvailable];
  rawData = [messageBodyIfAvailable rawData];

  v8 = [messageCopy to];
  if ([v8 count])
  {
    v26 = [messageCopy to];
  }

  else
  {
    v26 = &__NSArray0__struct;
  }

  v9 = [messageCopy cc];
  if ([v9 count])
  {
    v25 = [messageCopy cc];
  }

  else
  {
    v25 = &__NSArray0__struct;
  }

  v10 = [messageCopy bcc];
  if ([v10 count])
  {
    v24 = [messageCopy bcc];
  }

  else
  {
    v24 = &__NSArray0__struct;
  }

  v11 = [[MEMessageRecipients alloc] initWithStringsTo:v26 cc:v25 bcc:v24 replyTo:&__NSArray0__struct];
  v12 = [MEEmailAddress alloc];
  from = [messageCopy from];
  firstObject = [from firstObject];
  v15 = [v12 initWithRawString:firstObject];

  v16 = [MEMessage alloc];
  subject = [messageCopy subject];
  subjectString = [subject subjectString];
  dateSent = [messageCopy dateSent];
  dateReceived = [messageCopy dateReceived];
  v21 = [v16 initWithState:0 encryptionState:0 signatureState:0 subject:subjectString recipients:v11 from:v15 dataSent:dateSent dateReceived:dateReceived headers:v23 rawData:rawData senderMetadata:0];

  return v21;
}

@end