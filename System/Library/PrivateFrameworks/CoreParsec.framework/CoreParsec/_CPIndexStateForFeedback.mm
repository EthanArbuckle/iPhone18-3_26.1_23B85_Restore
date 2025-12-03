@interface _CPIndexStateForFeedback
- (BOOL)isEqual:(id)equal;
- (_CPIndexStateForFeedback)initWithFacade:(id)facade;
- (void)writeTo:(id)to;
@end

@implementation _CPIndexStateForFeedback

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && (percentMessagesIndexed = self->_percentMessagesIndexed, percentMessagesIndexed == objc_msgSend(equalCopy, "percentMessagesIndexed")) && (percentAttachmentsIndexed = self->_percentAttachmentsIndexed, percentAttachmentsIndexed == objc_msgSend(equalCopy, "percentAttachmentsIndexed")) && (searchIndex = self->_searchIndex, searchIndex == objc_msgSend(equalCopy, "searchIndex")) && (totalMessageCount = self->_totalMessageCount, totalMessageCount == objc_msgSend(equalCopy, "totalMessageCount")) && (indexedMessageCount = self->_indexedMessageCount, indexedMessageCount == objc_msgSend(equalCopy, "indexedMessageCount")) && (embeddedMessageCount = self->_embeddedMessageCount, embeddedMessageCount == objc_msgSend(equalCopy, "embeddedMessageCount")))
  {
    embeddedMessagePercentage = self->_embeddedMessagePercentage;
    v12 = embeddedMessagePercentage == [equalCopy embeddedMessagePercentage];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)writeTo:(id)to
{
  to;
  if ([(_CPIndexStateForFeedback *)self percentMessagesIndexed])
  {
    percentMessagesIndexed = self->_percentMessagesIndexed;
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPIndexStateForFeedback *)self percentAttachmentsIndexed])
  {
    percentAttachmentsIndexed = self->_percentAttachmentsIndexed;
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPIndexStateForFeedback *)self searchIndex])
  {
    searchIndex = self->_searchIndex;
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPIndexStateForFeedback *)self totalMessageCount])
  {
    totalMessageCount = self->_totalMessageCount;
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPIndexStateForFeedback *)self indexedMessageCount])
  {
    indexedMessageCount = self->_indexedMessageCount;
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPIndexStateForFeedback *)self embeddedMessageCount])
  {
    embeddedMessageCount = self->_embeddedMessageCount;
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPIndexStateForFeedback *)self embeddedMessagePercentage])
  {
    embeddedMessagePercentage = self->_embeddedMessagePercentage;
    PBDataWriterWriteInt32Field();
  }

  MEMORY[0x1EEE66BE0]();
}

- (_CPIndexStateForFeedback)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v22.receiver = self;
  v22.super_class = _CPIndexStateForFeedback;
  v5 = [(_CPIndexStateForFeedback *)&v22 init];
  if (v5)
  {
    percentMessagesIndexed = [facadeCopy percentMessagesIndexed];

    if (percentMessagesIndexed)
    {
      percentMessagesIndexed2 = [facadeCopy percentMessagesIndexed];
      -[_CPIndexStateForFeedback setPercentMessagesIndexed:](v5, "setPercentMessagesIndexed:", [percentMessagesIndexed2 intValue]);
    }

    percentAttachmentsIndexed = [facadeCopy percentAttachmentsIndexed];

    if (percentAttachmentsIndexed)
    {
      percentAttachmentsIndexed2 = [facadeCopy percentAttachmentsIndexed];
      -[_CPIndexStateForFeedback setPercentAttachmentsIndexed:](v5, "setPercentAttachmentsIndexed:", [percentAttachmentsIndexed2 intValue]);
    }

    searchIndex = [facadeCopy searchIndex];

    if (searchIndex)
    {
      searchIndex2 = [facadeCopy searchIndex];
      -[_CPIndexStateForFeedback setSearchIndex:](v5, "setSearchIndex:", [searchIndex2 intValue]);
    }

    totalMessageCount = [facadeCopy totalMessageCount];

    if (totalMessageCount)
    {
      totalMessageCount2 = [facadeCopy totalMessageCount];
      -[_CPIndexStateForFeedback setTotalMessageCount:](v5, "setTotalMessageCount:", [totalMessageCount2 intValue]);
    }

    indexedMessageCount = [facadeCopy indexedMessageCount];

    if (indexedMessageCount)
    {
      indexedMessageCount2 = [facadeCopy indexedMessageCount];
      -[_CPIndexStateForFeedback setIndexedMessageCount:](v5, "setIndexedMessageCount:", [indexedMessageCount2 intValue]);
    }

    embeddedMessageCount = [facadeCopy embeddedMessageCount];

    if (embeddedMessageCount)
    {
      embeddedMessageCount2 = [facadeCopy embeddedMessageCount];
      -[_CPIndexStateForFeedback setEmbeddedMessageCount:](v5, "setEmbeddedMessageCount:", [embeddedMessageCount2 intValue]);
    }

    embeddedMessagePercentage = [facadeCopy embeddedMessagePercentage];

    if (embeddedMessagePercentage)
    {
      embeddedMessagePercentage2 = [facadeCopy embeddedMessagePercentage];
      -[_CPIndexStateForFeedback setEmbeddedMessagePercentage:](v5, "setEmbeddedMessagePercentage:", [embeddedMessagePercentage2 intValue]);
    }

    v20 = v5;
  }

  return v5;
}

@end