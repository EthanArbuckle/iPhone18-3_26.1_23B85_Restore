@interface MFDAMessageContentConsumer
- (BOOL)shouldBeginStreamingForMailMessage:(id)a3 format:(int)a4;
- (id)dataConsumerForPart:(id)a3;
- (void)consumeData:(char *)a3 length:(int)a4 format:(int)a5 mailMessage:(id)a6;
- (void)didEndStreamingForMailMessage:(id)a3;
@end

@implementation MFDAMessageContentConsumer

- (BOOL)shouldBeginStreamingForMailMessage:(id)a3 format:(int)a4
{
  self->_didBeginStreaming = 1;
  self->_timeOfLastActivity = CFAbsoluteTimeGetCurrent();
  return 1;
}

- (void)consumeData:(char *)a3 length:(int)a4 format:(int)a5 mailMessage:(id)a6
{
  v33 = a6;
  self->_timeOfLastActivity = CFAbsoluteTimeGetCurrent();
  if (a5)
  {
    v10 = 0;
  }

  else
  {
    v10 = self->_requestedFormat == 1;
  }

  v11 = malloc_type_malloc(a4, 0x100004077774924uLL);
  v12 = 0;
  v13 = a3;
  v14 = v11;
  do
  {
    v15 = a3 - v13 + a4;
    v16 = memccpy(v14, v13, 13, v15);
    if (v16)
    {
      v13 += v16 - v14;
      v14 = v16 - 1;
      ++v12;
      v17 = v13 - a3;
    }

    else
    {
      v13 = &a3[a4];
      v14 += v15;
      v17 = a4;
    }
  }

  while (v17 < a4);
  v18 = [objc_alloc(MEMORY[0x1E69AD6B0]) initWithBytesNoCopy:v11 length:v14 - v11];
  if ([v18 length] != a4 - v12)
  {
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"MFDAMessageContentConsumer.m" lineNumber:73 description:@"sanity check \r removal."];

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

    v27 = [(MFDAMessageContentConsumer *)self dataConsumer];
    [v27 appendData:v18];
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
    v19 = [(MFDAMessageContentConsumer *)self consumerFactory];
    v20 = [v19 dataConsumerForPart:@"1.1"];
    [(MFDAMessageContentConsumer *)self setAlternatePartConsumer:v20];

    v21 = [(MFDAMessageContentConsumer *)self alternatePartConsumer];

    if (v21)
    {
      v22 = copyRFC822DataForPlainTextMessage(v33, 0, 1);
      v23 = self->_bodyData;
      self->_bodyData = v22;

      v24 = [(MFDAMessageContentConsumer *)self dataConsumer];
      v25 = [(MFDAMessageContentConsumer *)self bodyData];
      [v24 appendData:v25];
    }

    else
    {
      v26 = [objc_alloc(MEMORY[0x1E69AD730]) initWithCapacity:0];
      v24 = self->_bodyData;
      self->_bodyData = v26;
    }
  }

  v27 = [(MFDAMessageContentConsumer *)self alternatePartConsumer];
  [v27 appendData:v18];
LABEL_22:
}

- (void)didEndStreamingForMailMessage:(id)a3
{
  v4 = a3;
  self->_timeOfLastActivity = CFAbsoluteTimeGetCurrent();
  v5 = [(MFDAMessageContentConsumer *)self alternatePartConsumer];
  [v5 done];

  v6 = [(MFDAMessageContentConsumer *)self dataConsumer];
  [v6 done];

  message = self->_message;
  self->_message = v4;

  self->_succeeded = 1;
}

- (id)dataConsumerForPart:(id)a3
{
  v4 = a3;
  v5 = [(MFDAMessageContentConsumer *)self consumerFactory];
  v6 = [v5 dataConsumerForPart:v4];

  return v6;
}

@end