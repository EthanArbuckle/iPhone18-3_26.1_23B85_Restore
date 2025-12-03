@interface _CPCommandEngagementFeedback
- (BOOL)isEqual:(id)equal;
- (_CPCommandEngagementFeedback)init;
- (_CPCommandEngagementFeedback)initWithFacade:(id)facade;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _CPCommandEngagementFeedback

- (unint64_t)hash
{
  v3 = 2654435761 * self->_commandType;
  v4 = [(NSString *)self->_commandDetail hash]^ v3;
  v5 = 2654435761u * self->_uniqueButtonId;
  v6 = v4 ^ v5 ^ [(NSString *)self->_cardSectionId hash];
  v7 = [(_CPSearchResultForFeedback *)self->_result hash]^ (2654435761u * self->_timestamp);
  v8 = v6 ^ v7 ^ [(NSString *)self->_resultSectionId hash]^ (2654435761 * self->_triggerEvent) ^ (2654435761 * self->_contactActionType) ^ (2654435761 * self->_didDisplayHandleOptions) ^ (2654435761 * self->_didSelectFromOptionsMenu);
  return v8 ^ [(_CPPhotosAttributes *)self->_photosAttributes hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_34;
  }

  commandType = self->_commandType;
  if (commandType != [equalCopy commandType])
  {
    goto LABEL_34;
  }

  commandDetail = [(_CPCommandEngagementFeedback *)self commandDetail];
  commandDetail2 = [equalCopy commandDetail];
  if ((commandDetail != 0) == (commandDetail2 == 0))
  {
    goto LABEL_33;
  }

  commandDetail3 = [(_CPCommandEngagementFeedback *)self commandDetail];
  if (commandDetail3)
  {
    v9 = commandDetail3;
    commandDetail4 = [(_CPCommandEngagementFeedback *)self commandDetail];
    commandDetail5 = [equalCopy commandDetail];
    v12 = [commandDetail4 isEqual:commandDetail5];

    if (!v12)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  uniqueButtonId = self->_uniqueButtonId;
  if (uniqueButtonId != [equalCopy uniqueButtonId])
  {
    goto LABEL_34;
  }

  commandDetail = [(_CPCommandEngagementFeedback *)self cardSectionId];
  commandDetail2 = [equalCopy cardSectionId];
  if ((commandDetail != 0) == (commandDetail2 == 0))
  {
    goto LABEL_33;
  }

  cardSectionId = [(_CPCommandEngagementFeedback *)self cardSectionId];
  if (cardSectionId)
  {
    v15 = cardSectionId;
    cardSectionId2 = [(_CPCommandEngagementFeedback *)self cardSectionId];
    cardSectionId3 = [equalCopy cardSectionId];
    v18 = [cardSectionId2 isEqual:cardSectionId3];

    if (!v18)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  commandDetail = [(_CPCommandEngagementFeedback *)self result];
  commandDetail2 = [equalCopy result];
  if ((commandDetail != 0) == (commandDetail2 == 0))
  {
    goto LABEL_33;
  }

  result = [(_CPCommandEngagementFeedback *)self result];
  if (result)
  {
    v20 = result;
    result2 = [(_CPCommandEngagementFeedback *)self result];
    result3 = [equalCopy result];
    v23 = [result2 isEqual:result3];

    if (!v23)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  timestamp = self->_timestamp;
  if (timestamp != [equalCopy timestamp])
  {
    goto LABEL_34;
  }

  commandDetail = [(_CPCommandEngagementFeedback *)self resultSectionId];
  commandDetail2 = [equalCopy resultSectionId];
  if ((commandDetail != 0) == (commandDetail2 == 0))
  {
    goto LABEL_33;
  }

  resultSectionId = [(_CPCommandEngagementFeedback *)self resultSectionId];
  if (resultSectionId)
  {
    v26 = resultSectionId;
    resultSectionId2 = [(_CPCommandEngagementFeedback *)self resultSectionId];
    resultSectionId3 = [equalCopy resultSectionId];
    v29 = [resultSectionId2 isEqual:resultSectionId3];

    if (!v29)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  triggerEvent = self->_triggerEvent;
  if (triggerEvent != [equalCopy triggerEvent])
  {
    goto LABEL_34;
  }

  contactActionType = self->_contactActionType;
  if (contactActionType != [equalCopy contactActionType])
  {
    goto LABEL_34;
  }

  didDisplayHandleOptions = self->_didDisplayHandleOptions;
  if (didDisplayHandleOptions != [equalCopy didDisplayHandleOptions])
  {
    goto LABEL_34;
  }

  didSelectFromOptionsMenu = self->_didSelectFromOptionsMenu;
  if (didSelectFromOptionsMenu != [equalCopy didSelectFromOptionsMenu])
  {
    goto LABEL_34;
  }

  commandDetail = [(_CPCommandEngagementFeedback *)self photosAttributes];
  commandDetail2 = [equalCopy photosAttributes];
  if ((commandDetail != 0) == (commandDetail2 == 0))
  {
LABEL_33:

    goto LABEL_34;
  }

  photosAttributes = [(_CPCommandEngagementFeedback *)self photosAttributes];
  if (!photosAttributes)
  {

LABEL_37:
    v39 = 1;
    goto LABEL_35;
  }

  v35 = photosAttributes;
  photosAttributes2 = [(_CPCommandEngagementFeedback *)self photosAttributes];
  photosAttributes3 = [equalCopy photosAttributes];
  v38 = [photosAttributes2 isEqual:photosAttributes3];

  if (v38)
  {
    goto LABEL_37;
  }

LABEL_34:
  v39 = 0;
LABEL_35:

  return v39;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_CPCommandEngagementFeedback *)self commandType])
  {
    commandType = self->_commandType;
    PBDataWriterWriteInt32Field();
  }

  commandDetail = [(_CPCommandEngagementFeedback *)self commandDetail];

  if (commandDetail)
  {
    commandDetail = self->_commandDetail;
    PBDataWriterWriteStringField();
  }

  if ([(_CPCommandEngagementFeedback *)self uniqueButtonId])
  {
    uniqueButtonId = self->_uniqueButtonId;
    PBDataWriterWriteUint64Field();
  }

  cardSectionId = [(_CPCommandEngagementFeedback *)self cardSectionId];

  if (cardSectionId)
  {
    cardSectionId = self->_cardSectionId;
    PBDataWriterWriteStringField();
  }

  result = [(_CPCommandEngagementFeedback *)self result];

  if (result)
  {
    result2 = [(_CPCommandEngagementFeedback *)self result];
    PBDataWriterWriteSubmessage();
  }

  if ([(_CPCommandEngagementFeedback *)self timestamp])
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  resultSectionId = [(_CPCommandEngagementFeedback *)self resultSectionId];

  if (resultSectionId)
  {
    resultSectionId = self->_resultSectionId;
    PBDataWriterWriteStringField();
  }

  if ([(_CPCommandEngagementFeedback *)self triggerEvent])
  {
    triggerEvent = self->_triggerEvent;
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPCommandEngagementFeedback *)self contactActionType])
  {
    contactActionType = self->_contactActionType;
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPCommandEngagementFeedback *)self didDisplayHandleOptions])
  {
    didDisplayHandleOptions = self->_didDisplayHandleOptions;
    PBDataWriterWriteBOOLField();
  }

  if ([(_CPCommandEngagementFeedback *)self didSelectFromOptionsMenu])
  {
    didSelectFromOptionsMenu = self->_didSelectFromOptionsMenu;
    PBDataWriterWriteBOOLField();
  }

  photosAttributes = [(_CPCommandEngagementFeedback *)self photosAttributes];

  v20 = toCopy;
  if (photosAttributes)
  {
    photosAttributes2 = [(_CPCommandEngagementFeedback *)self photosAttributes];
    PBDataWriterWriteSubmessage();

    v20 = toCopy;
  }
}

- (_CPCommandEngagementFeedback)init
{
  v5.receiver = self;
  v5.super_class = _CPCommandEngagementFeedback;
  v2 = [(_CPCommandEngagementFeedback *)&v5 init];
  if (v2)
  {
    [(_CPCommandEngagementFeedback *)v2 setTimestamp:mach_absolute_time()];
    v3 = v2;
  }

  return v2;
}

- (_CPCommandEngagementFeedback)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_CPCommandEngagementFeedback *)self init];
  if (v5)
  {
    command = [facadeCopy command];
    -[_CPCommandEngagementFeedback setTimestamp:](v5, "setTimestamp:", [facadeCopy timestamp]);
    result = [facadeCopy result];

    if (result)
    {
      v8 = [_CPSearchResultForFeedback alloc];
      result2 = [facadeCopy result];
      v10 = [(_CPSearchResultForFeedback *)v8 initWithFacade:result2];
      [(_CPCommandEngagementFeedback *)v5 setResult:v10];
    }

    button = [facadeCopy button];

    if (button)
    {
      button2 = [facadeCopy button];
      -[_CPCommandEngagementFeedback setUniqueButtonId:](v5, "setUniqueButtonId:", [button2 uniqueId]);
    }

    command2 = [facadeCopy command];

    if (command2)
    {
      -[_CPCommandEngagementFeedback setCommandType:](v5, "setCommandType:", [command _cpCommandType]);
      commandDetail = [command commandDetail];
      [(_CPCommandEngagementFeedback *)v5 setCommandDetail:commandDetail];
    }

    cardSection = [facadeCopy cardSection];

    if (cardSection)
    {
      cardSection2 = [facadeCopy cardSection];
      cardSectionId = [cardSection2 cardSectionId];
      [(_CPCommandEngagementFeedback *)v5 setCardSectionId:cardSectionId];
    }

    resultSection = [facadeCopy resultSection];

    if (resultSection)
    {
      resultSection2 = [facadeCopy resultSection];
      identifier = [resultSection2 identifier];
      [(_CPCommandEngagementFeedback *)v5 setResultSectionId:identifier];
    }

    -[_CPCommandEngagementFeedback setTriggerEvent:](v5, "setTriggerEvent:", [facadeCopy triggerEvent]);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = command;
      -[_CPCommandEngagementFeedback setContactActionType:](v5, "setContactActionType:", [v21 contactActionType]);
      -[_CPCommandEngagementFeedback setDidDisplayHandleOptions:](v5, "setDidDisplayHandleOptions:", [v21 didDisplayHandleOptions]);
      didSelectFromOptionsMenu = [v21 didSelectFromOptionsMenu];

      [(_CPCommandEngagementFeedback *)v5 setDidSelectFromOptionsMenu:didSelectFromOptionsMenu];
    }

    v23 = v5;
  }

  return v5;
}

@end