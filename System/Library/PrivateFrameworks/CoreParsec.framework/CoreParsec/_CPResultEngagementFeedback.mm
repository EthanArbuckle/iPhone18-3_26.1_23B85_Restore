@interface _CPResultEngagementFeedback
- (BOOL)isEqual:(id)a3;
- (_CPResultEngagementFeedback)init;
- (_CPResultEngagementFeedback)initWithFacade:(id)a3;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation _CPResultEngagementFeedback

- (unint64_t)hash
{
  v3 = (2654435761 * self->_actionEngaged) ^ (2654435761u * self->_timestamp) ^ (2654435761 * self->_triggerEvent) ^ (2654435761 * self->_destination);
  v4 = 2654435761 * self->_actionTarget;
  v5 = v4 ^ [(_CPSearchResultForFeedback *)self->_result hash];
  return v3 ^ v5 ^ [(NSString *)self->_titleText hash]^ (2654435761 * self->_matchesUnengagedSuggestion);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  timestamp = self->_timestamp;
  if (timestamp != [v4 timestamp])
  {
    goto LABEL_17;
  }

  actionEngaged = self->_actionEngaged;
  if (actionEngaged != [v4 actionEngaged])
  {
    goto LABEL_17;
  }

  triggerEvent = self->_triggerEvent;
  if (triggerEvent != [v4 triggerEvent])
  {
    goto LABEL_17;
  }

  destination = self->_destination;
  if (destination != [v4 destination])
  {
    goto LABEL_17;
  }

  actionTarget = self->_actionTarget;
  if (actionTarget != [v4 actionTarget])
  {
    goto LABEL_17;
  }

  v10 = [(_CPResultEngagementFeedback *)self result];
  v11 = [v4 result];
  if ((v10 != 0) == (v11 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(_CPResultEngagementFeedback *)self result];
  if (v12)
  {
    v13 = v12;
    v14 = [(_CPResultEngagementFeedback *)self result];
    v15 = [v4 result];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v10 = [(_CPResultEngagementFeedback *)self titleText];
  v11 = [v4 titleText];
  if ((v10 != 0) != (v11 == 0))
  {
    v17 = [(_CPResultEngagementFeedback *)self titleText];
    if (!v17)
    {

LABEL_20:
      matchesUnengagedSuggestion = self->_matchesUnengagedSuggestion;
      v22 = matchesUnengagedSuggestion == [v4 matchesUnengagedSuggestion];
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(_CPResultEngagementFeedback *)self titleText];
    v20 = [v4 titleText];
    v21 = [v19 isEqual:v20];

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

- (void)writeTo:(id)a3
{
  v14 = a3;
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

  v9 = [(_CPResultEngagementFeedback *)self result];

  if (v9)
  {
    v10 = [(_CPResultEngagementFeedback *)self result];
    PBDataWriterWriteSubmessage();
  }

  v11 = [(_CPResultEngagementFeedback *)self titleText];

  if (v11)
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

- (_CPResultEngagementFeedback)initWithFacade:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = _CPResultEngagementFeedback;
  v5 = [(_CPResultEngagementFeedback *)&v15 init];
  if (v5)
  {
    -[_CPResultEngagementFeedback setTimestamp:](v5, "setTimestamp:", [v4 timestamp]);
    -[_CPResultEngagementFeedback setActionEngaged:](v5, "setActionEngaged:", [v4 actionEngaged]);
    -[_CPResultEngagementFeedback setTriggerEvent:](v5, "setTriggerEvent:", [v4 triggerEvent]);
    -[_CPResultEngagementFeedback setDestination:](v5, "setDestination:", [v4 destination]);
    -[_CPResultEngagementFeedback setActionTarget:](v5, "setActionTarget:", [v4 actionTarget]);
    v6 = [v4 result];

    if (v6)
    {
      v7 = [_CPSearchResultForFeedback alloc];
      v8 = [v4 result];
      v9 = [(_CPSearchResultForFeedback *)v7 initWithFacade:v8];
      [(_CPResultEngagementFeedback *)v5 setResult:v9];
    }

    v10 = [v4 result];
    v11 = [v10 title];
    v12 = [v11 text];
    [(_CPResultEngagementFeedback *)v5 setTitleText:v12];

    -[_CPResultEngagementFeedback setMatchesUnengagedSuggestion:](v5, "setMatchesUnengagedSuggestion:", [v4 matchesUnengagedSuggestion]);
    v13 = v5;
  }

  return v5;
}

@end