@interface _CPIndexStateForFeedback
- (BOOL)isEqual:(id)a3;
- (_CPIndexStateForFeedback)initWithFacade:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _CPIndexStateForFeedback

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && (percentMessagesIndexed = self->_percentMessagesIndexed, percentMessagesIndexed == objc_msgSend(v4, "percentMessagesIndexed")) && (percentAttachmentsIndexed = self->_percentAttachmentsIndexed, percentAttachmentsIndexed == objc_msgSend(v4, "percentAttachmentsIndexed")) && (searchIndex = self->_searchIndex, searchIndex == objc_msgSend(v4, "searchIndex")) && (totalMessageCount = self->_totalMessageCount, totalMessageCount == objc_msgSend(v4, "totalMessageCount")) && (indexedMessageCount = self->_indexedMessageCount, indexedMessageCount == objc_msgSend(v4, "indexedMessageCount")) && (embeddedMessageCount = self->_embeddedMessageCount, embeddedMessageCount == objc_msgSend(v4, "embeddedMessageCount")))
  {
    embeddedMessagePercentage = self->_embeddedMessagePercentage;
    v12 = embeddedMessagePercentage == [v4 embeddedMessagePercentage];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)writeTo:(id)a3
{
  a3;
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

- (_CPIndexStateForFeedback)initWithFacade:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = _CPIndexStateForFeedback;
  v5 = [(_CPIndexStateForFeedback *)&v22 init];
  if (v5)
  {
    v6 = [v4 percentMessagesIndexed];

    if (v6)
    {
      v7 = [v4 percentMessagesIndexed];
      -[_CPIndexStateForFeedback setPercentMessagesIndexed:](v5, "setPercentMessagesIndexed:", [v7 intValue]);
    }

    v8 = [v4 percentAttachmentsIndexed];

    if (v8)
    {
      v9 = [v4 percentAttachmentsIndexed];
      -[_CPIndexStateForFeedback setPercentAttachmentsIndexed:](v5, "setPercentAttachmentsIndexed:", [v9 intValue]);
    }

    v10 = [v4 searchIndex];

    if (v10)
    {
      v11 = [v4 searchIndex];
      -[_CPIndexStateForFeedback setSearchIndex:](v5, "setSearchIndex:", [v11 intValue]);
    }

    v12 = [v4 totalMessageCount];

    if (v12)
    {
      v13 = [v4 totalMessageCount];
      -[_CPIndexStateForFeedback setTotalMessageCount:](v5, "setTotalMessageCount:", [v13 intValue]);
    }

    v14 = [v4 indexedMessageCount];

    if (v14)
    {
      v15 = [v4 indexedMessageCount];
      -[_CPIndexStateForFeedback setIndexedMessageCount:](v5, "setIndexedMessageCount:", [v15 intValue]);
    }

    v16 = [v4 embeddedMessageCount];

    if (v16)
    {
      v17 = [v4 embeddedMessageCount];
      -[_CPIndexStateForFeedback setEmbeddedMessageCount:](v5, "setEmbeddedMessageCount:", [v17 intValue]);
    }

    v18 = [v4 embeddedMessagePercentage];

    if (v18)
    {
      v19 = [v4 embeddedMessagePercentage];
      -[_CPIndexStateForFeedback setEmbeddedMessagePercentage:](v5, "setEmbeddedMessagePercentage:", [v19 intValue]);
    }

    v20 = v5;
  }

  return v5;
}

@end