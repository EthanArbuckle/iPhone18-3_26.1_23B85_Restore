@interface _CPResultEngagementFeedback
- (BOOL)isEqual:(id)equal;
- (_CPResultEngagementFeedback)init;
- (_CPResultEngagementFeedback)initWithFacade:(id)facade;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _CPResultEngagementFeedback

- (unint64_t)hash
{
  v3 = (2654435761 * self->_actionEngaged) ^ (2654435761u * self->_timestamp) ^ (2654435761 * self->_triggerEvent) ^ (2654435761 * self->_destination);
  v4 = 2654435761 * self->_actionTarget;
  v5 = v4 ^ [(_CPSearchResultForFeedback *)self->_result hash];
  return v3 ^ v5 ^ [(NSString *)self->_titleText hash]^ (2654435761 * self->_matchesUnengagedSuggestion);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  timestamp = self->_timestamp;
  if (timestamp != [equalCopy timestamp])
  {
    goto LABEL_17;
  }

  actionEngaged = self->_actionEngaged;
  if (actionEngaged != [equalCopy actionEngaged])
  {
    goto LABEL_17;
  }

  triggerEvent = self->_triggerEvent;
  if (triggerEvent != [equalCopy triggerEvent])
  {
    goto LABEL_17;
  }

  destination = self->_destination;
  if (destination != [equalCopy destination])
  {
    goto LABEL_17;
  }

  actionTarget = self->_actionTarget;
  if (actionTarget != [equalCopy actionTarget])
  {
    goto LABEL_17;
  }

  result = [(_CPResultEngagementFeedback *)self result];
  result2 = [equalCopy result];
  if ((result != 0) == (result2 == 0))
  {
    goto LABEL_16;
  }

  result3 = [(_CPResultEngagementFeedback *)self result];
  if (result3)
  {
    v13 = result3;
    result4 = [(_CPResultEngagementFeedback *)self result];
    result5 = [equalCopy result];
    v16 = [result4 isEqual:result5];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  result = [(_CPResultEngagementFeedback *)self titleText];
  result2 = [equalCopy titleText];
  if ((result != 0) != (result2 == 0))
  {
    titleText = [(_CPResultEngagementFeedback *)self titleText];
    if (!titleText)
    {

LABEL_20:
      matchesUnengagedSuggestion = self->_matchesUnengagedSuggestion;
      v22 = matchesUnengagedSuggestion == [equalCopy matchesUnengagedSuggestion];
      goto LABEL_18;
    }

    v18 = titleText;
    titleText2 = [(_CPResultEngagementFeedback *)self titleText];
    titleText3 = [equalCopy titleText];
    v21 = [titleText2 isEqual:titleText3];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_CPResultEngagementFeedback *)self timestamp])
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if ([(_CPResultEngagementFeedback *)self actionEngaged])
  {
    actionEngaged = self->_actionEngaged;
    PBDataWriterWriteBOOLField();
  }

  if ([(_CPResultEngagementFeedback *)self triggerEvent])
  {
    triggerEvent = self->_triggerEvent;
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPResultEngagementFeedback *)self destination])
  {
    destination = self->_destination;
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPResultEngagementFeedback *)self actionTarget])
  {
    actionTarget = self->_actionTarget;
    PBDataWriterWriteInt32Field();
  }

  result = [(_CPResultEngagementFeedback *)self result];

  if (result)
  {
    result2 = [(_CPResultEngagementFeedback *)self result];
    PBDataWriterWriteSubmessage();
  }

  titleText = [(_CPResultEngagementFeedback *)self titleText];

  if (titleText)
  {
    titleText = self->_titleText;
    PBDataWriterWriteStringField();
  }

  if ([(_CPResultEngagementFeedback *)self matchesUnengagedSuggestion])
  {
    matchesUnengagedSuggestion = self->_matchesUnengagedSuggestion;
    PBDataWriterWriteBOOLField();
  }
}

- (_CPResultEngagementFeedback)init
{
  v5.receiver = self;
  v5.super_class = _CPResultEngagementFeedback;
  v2 = [(_CPResultEngagementFeedback *)&v5 init];
  if (v2)
  {
    [(_CPResultEngagementFeedback *)v2 setTimestamp:mach_absolute_time()];
    v3 = v2;
  }

  return v2;
}

- (_CPResultEngagementFeedback)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v15.receiver = self;
  v15.super_class = _CPResultEngagementFeedback;
  v5 = [(_CPResultEngagementFeedback *)&v15 init];
  if (v5)
  {
    -[_CPResultEngagementFeedback setTimestamp:](v5, "setTimestamp:", [facadeCopy timestamp]);
    -[_CPResultEngagementFeedback setActionEngaged:](v5, "setActionEngaged:", [facadeCopy actionEngaged]);
    -[_CPResultEngagementFeedback setTriggerEvent:](v5, "setTriggerEvent:", [facadeCopy triggerEvent]);
    -[_CPResultEngagementFeedback setDestination:](v5, "setDestination:", [facadeCopy destination]);
    -[_CPResultEngagementFeedback setActionTarget:](v5, "setActionTarget:", [facadeCopy actionTarget]);
    result = [facadeCopy result];

    if (result)
    {
      v7 = [_CPSearchResultForFeedback alloc];
      result2 = [facadeCopy result];
      v9 = [(_CPSearchResultForFeedback *)v7 initWithFacade:result2];
      [(_CPResultEngagementFeedback *)v5 setResult:v9];
    }

    result3 = [facadeCopy result];
    title = [result3 title];
    text = [title text];
    [(_CPResultEngagementFeedback *)v5 setTitleText:text];

    -[_CPResultEngagementFeedback setMatchesUnengagedSuggestion:](v5, "setMatchesUnengagedSuggestion:", [facadeCopy matchesUnengagedSuggestion]);
    v13 = v5;
  }

  return v5;
}

@end