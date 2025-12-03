@interface _MFDAMessageStoreFetchRequest
- (BOOL)isEqual:(id)equal;
- (BOOL)shouldSend;
- (unint64_t)generationNumber;
- (unint64_t)hash;
@end

@implementation _MFDAMessageStoreFetchRequest

- (unint64_t)generationNumber
{
  generationNumber = [(MFMessage *)self->message generationNumber];
  if (!generationNumber)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MFDAMessageStore.m" lineNumber:1280 description:@"fetchable messages should have non-zero generationNumer"];
  }

  return generationNumber;
}

- (BOOL)shouldSend
{
  part = self->part;
  if (part)
  {
    v4 = [(MFLibraryStore *)self->store dataForMimePart:part inRange:0 isComplete:0x7FFFFFFFFFFFFFFFLL downloadIfNecessary:0 didDownload:0, 0];
LABEL_5:
    v6 = v4;
    goto LABEL_6;
  }

  message = self->message;
  if (message)
  {
    v4 = [(MFLibraryStore *)self->store bodyDataForMessage:message isComplete:0 isPartial:0 downloadIfNecessary:0];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_6:
  v7 = [v6 length];
  if (v7)
  {
    v8 = [[MFDAMessagePayloadFetchResponseImpl alloc] initWithData:v6 streaming:0 streamingDone:0];
    [(MFRequestQueueResponseConsumer *)self->consumer handleResponse:v8 error:0];
  }

  return v7 == 0;
}

- (unint64_t)hash
{
  remoteID = [(MFMessage *)self->message remoteID];
  v3 = [remoteID hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    remoteID = [(MFMessage *)self->message remoteID];
    remoteID2 = [equalCopy[6] remoteID];
    v7 = [remoteID isEqualToString:remoteID2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end