@interface MFDAMessageContentConsumer
- (BOOL)shouldBeginStreamingForMailMessage:(id)message format:(int)format;
- (id)dataConsumerForPart:(id)part;
- (void)consumeData:(char *)data length:(int)length format:(int)format mailMessage:(id)message;
- (void)didEndStreamingForMailMessage:(id)message;
@end

@implementation MFDAMessageContentConsumer

- (BOOL)shouldBeginStreamingForMailMessage:(id)message format:(int)format
{
  self->_didBeginStreaming = 1;
  self->_timeOfLastActivity = CFAbsoluteTimeGetCurrent();
  return 1;
}

- (void)consumeData:(char *)data length:(int)length format:(int)format mailMessage:(id)message
{
  messageCopy = message;
  self->_timeOfLastActivity = CFAbsoluteTimeGetCurrent();
  if (format)
  {
    v10 = 0;
  }

  else
  {
    v10 = self->_requestedFormat == 1;
  }

  v11 = malloc_type_malloc(length, 0x100004077774924uLL);
  v12 = 0;
  dataCopy = data;
  v14 = v11;
  do
  {
    v15 = data - dataCopy + length;
    v16 = memccpy(v14, dataCopy, 13, v15);
    if (v16)
    {
      dataCopy += v16 - v14;
      v14 = v16 - 1;
      ++v12;
      lengthCopy = dataCopy - data;
    }

    else
    {
      dataCopy = &data[length];
      v14 += v15;
      lengthCopy = length;
    }
  }

  while (lengthCopy < length);
  v18 = [objc_alloc(MEMORY[0x1E69AD6B0]) initWithBytesNoCopy:v11 length:v14 - v11];
  if ([v18 length] != length - v12)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MFDAMessageContentConsumer.m" lineNumber:73 description:@"sanity check \r removal."];

    if (v10)
    {
      goto LABEL_11;
    }

LABEL_18:
    bodyData = self->_bodyData;
    if (bodyData)
    {
      [(NSMutableData *)bodyData appendData:v18];
    }

    else
    {
      v30 = [v18 mutableCopy];
      v31 = self->_bodyData;
      self->_bodyData = v30;
    }

    dataConsumer = [(MFDAMessageContentConsumer *)self dataConsumer];
    [dataConsumer appendData:v18];
    goto LABEL_22;
  }

  if (!v10)
  {
    goto LABEL_18;
  }

LABEL_11:
  if (!self->_triedCreatingAlternatePartConsumer)
  {
    self->_triedCreatingAlternatePartConsumer = 1;
    consumerFactory = [(MFDAMessageContentConsumer *)self consumerFactory];
    v20 = [consumerFactory dataConsumerForPart:@"1.1"];
    [(MFDAMessageContentConsumer *)self setAlternatePartConsumer:v20];

    alternatePartConsumer = [(MFDAMessageContentConsumer *)self alternatePartConsumer];

    if (alternatePartConsumer)
    {
      v22 = copyRFC822DataForPlainTextMessage(messageCopy, 0, 1);
      v23 = self->_bodyData;
      self->_bodyData = v22;

      dataConsumer2 = [(MFDAMessageContentConsumer *)self dataConsumer];
      bodyData = [(MFDAMessageContentConsumer *)self bodyData];
      [dataConsumer2 appendData:bodyData];
    }

    else
    {
      v26 = [objc_alloc(MEMORY[0x1E69AD730]) initWithCapacity:0];
      dataConsumer2 = self->_bodyData;
      self->_bodyData = v26;
    }
  }

  dataConsumer = [(MFDAMessageContentConsumer *)self alternatePartConsumer];
  [dataConsumer appendData:v18];
LABEL_22:
}

- (void)didEndStreamingForMailMessage:(id)message
{
  messageCopy = message;
  self->_timeOfLastActivity = CFAbsoluteTimeGetCurrent();
  alternatePartConsumer = [(MFDAMessageContentConsumer *)self alternatePartConsumer];
  [alternatePartConsumer done];

  dataConsumer = [(MFDAMessageContentConsumer *)self dataConsumer];
  [dataConsumer done];

  message = self->_message;
  self->_message = messageCopy;

  self->_succeeded = 1;
}

- (id)dataConsumerForPart:(id)part
{
  partCopy = part;
  consumerFactory = [(MFDAMessageContentConsumer *)self consumerFactory];
  v6 = [consumerFactory dataConsumerForPart:partCopy];

  return v6;
}

@end