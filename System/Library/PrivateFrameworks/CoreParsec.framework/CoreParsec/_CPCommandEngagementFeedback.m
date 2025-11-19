@interface _CPCommandEngagementFeedback
- (BOOL)isEqual:(id)a3;
- (_CPCommandEngagementFeedback)init;
- (_CPCommandEngagementFeedback)initWithFacade:(id)a3;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_34;
  }

  commandType = self->_commandType;
  if (commandType != [v4 commandType])
  {
    goto LABEL_34;
  }

  v6 = [(_CPCommandEngagementFeedback *)self commandDetail];
  v7 = [v4 commandDetail];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_33;
  }

  v8 = [(_CPCommandEngagementFeedback *)self commandDetail];
  if (v8)
  {
    v9 = v8;
    v10 = [(_CPCommandEngagementFeedback *)self commandDetail];
    v11 = [v4 commandDetail];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  uniqueButtonId = self->_uniqueButtonId;
  if (uniqueButtonId != [v4 uniqueButtonId])
  {
    goto LABEL_34;
  }

  v6 = [(_CPCommandEngagementFeedback *)self cardSectionId];
  v7 = [v4 cardSectionId];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_33;
  }

  v14 = [(_CPCommandEngagementFeedback *)self cardSectionId];
  if (v14)
  {
    v15 = v14;
    v16 = [(_CPCommandEngagementFeedback *)self cardSectionId];
    v17 = [v4 cardSectionId];
    v18 = [v16 isEqual:v17];

    if (!v18)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  v6 = [(_CPCommandEngagementFeedback *)self result];
  v7 = [v4 result];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_33;
  }

  v19 = [(_CPCommandEngagementFeedback *)self result];
  if (v19)
  {
    v20 = v19;
    v21 = [(_CPCommandEngagementFeedback *)self result];
    v22 = [v4 result];
    v23 = [v21 isEqual:v22];

    if (!v23)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  timestamp = self->_timestamp;
  if (timestamp != [v4 timestamp])
  {
    goto LABEL_34;
  }

  v6 = [(_CPCommandEngagementFeedback *)self resultSectionId];
  v7 = [v4 resultSectionId];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_33;
  }

  v25 = [(_CPCommandEngagementFeedback *)self resultSectionId];
  if (v25)
  {
    v26 = v25;
    v27 = [(_CPCommandEngagementFeedback *)self resultSectionId];
    v28 = [v4 resultSectionId];
    v29 = [v27 isEqual:v28];

    if (!v29)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  triggerEvent = self->_triggerEvent;
  if (triggerEvent != [v4 triggerEvent])
  {
    goto LABEL_34;
  }

  contactActionType = self->_contactActionType;
  if (contactActionType != [v4 contactActionType])
  {
    goto LABEL_34;
  }

  didDisplayHandleOptions = self->_didDisplayHandleOptions;
  if (didDisplayHandleOptions != [v4 didDisplayHandleOptions])
  {
    goto LABEL_34;
  }

  didSelectFromOptionsMenu = self->_didSelectFromOptionsMenu;
  if (didSelectFromOptionsMenu != [v4 didSelectFromOptionsMenu])
  {
    goto LABEL_34;
  }

  v6 = [(_CPCommandEngagementFeedback *)self photosAttributes];
  v7 = [v4 photosAttributes];
  if ((v6 != 0) == (v7 == 0))
  {
LABEL_33:

    goto LABEL_34;
  }

  v34 = [(_CPCommandEngagementFeedback *)self photosAttributes];
  if (!v34)
  {

LABEL_37:
    v39 = 1;
    goto LABEL_35;
  }

  v35 = v34;
  v36 = [(_CPCommandEngagementFeedback *)self photosAttributes];
  v37 = [v4 photosAttributes];
  v38 = [v36 isEqual:v37];

  if (v38)
  {
    goto LABEL_37;
  }

LABEL_34:
  v39 = 0;
LABEL_35:

  return v39;
}

- (void)writeTo:(id)a3
{
  v22 = a3;
  if ([(_CPCommandEngagementFeedback *)self commandType])
  {
    commandType = self->_commandType;
    PBDataWriterWriteInt32Field();
  }

  v5 = [(_CPCommandEngagementFeedback *)self commandDetail];

  if (v5)
  {
    commandDetail = self->_commandDetail;
    PBDataWriterWriteStringField();
  }

  if ([(_CPCommandEngagementFeedback *)self uniqueButtonId])
  {
    uniqueButtonId = self->_uniqueButtonId;
    PBDataWriterWriteUint64Field();
  }

  v8 = [(_CPCommandEngagementFeedback *)self cardSectionId];

  if (v8)
  {
    cardSectionId = self->_cardSectionId;
    PBDataWriterWriteStringField();
  }

  v10 = [(_CPCommandEngagementFeedback *)self result];

  if (v10)
  {
    v11 = [(_CPCommandEngagementFeedback *)self result];
    PBDataWriterWriteSubmessage();
  }

  if ([(_CPCommandEngagementFeedback *)self timestamp])
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  v13 = [(_CPCommandEngagementFeedback *)self resultSectionId];

  if (v13)
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

  v19 = [(_CPCommandEngagementFeedback *)self photosAttributes];

  v20 = v22;
  if (v19)
  {
    v21 = [(_CPCommandEngagementFeedback *)self photosAttributes];
    PBDataWriterWriteSubmessage();

    v20 = v22;
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

- (_CPCommandEngagementFeedback)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_CPCommandEngagementFeedback *)self init];
  if (v5)
  {
    v6 = [v4 command];
    -[_CPCommandEngagementFeedback setTimestamp:](v5, "setTimestamp:", [v4 timestamp]);
    v7 = [v4 result];

    if (v7)
    {
      v8 = [_CPSearchResultForFeedback alloc];
      v9 = [v4 result];
      v10 = [(_CPSearchResultForFeedback *)v8 initWithFacade:v9];
      [(_CPCommandEngagementFeedback *)v5 setResult:v10];
    }

    v11 = [v4 button];

    if (v11)
    {
      v12 = [v4 button];
      -[_CPCommandEngagementFeedback setUniqueButtonId:](v5, "setUniqueButtonId:", [v12 uniqueId]);
    }

    v13 = [v4 command];

    if (v13)
    {
      -[_CPCommandEngagementFeedback setCommandType:](v5, "setCommandType:", [v6 _cpCommandType]);
      v14 = [v6 commandDetail];
      [(_CPCommandEngagementFeedback *)v5 setCommandDetail:v14];
    }

    v15 = [v4 cardSection];

    if (v15)
    {
      v16 = [v4 cardSection];
      v17 = [v16 cardSectionId];
      [(_CPCommandEngagementFeedback *)v5 setCardSectionId:v17];
    }

    v18 = [v4 resultSection];

    if (v18)
    {
      v19 = [v4 resultSection];
      v20 = [v19 identifier];
      [(_CPCommandEngagementFeedback *)v5 setResultSectionId:v20];
    }

    -[_CPCommandEngagementFeedback setTriggerEvent:](v5, "setTriggerEvent:", [v4 triggerEvent]);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = v6;
      -[_CPCommandEngagementFeedback setContactActionType:](v5, "setContactActionType:", [v21 contactActionType]);
      -[_CPCommandEngagementFeedback setDidDisplayHandleOptions:](v5, "setDidDisplayHandleOptions:", [v21 didDisplayHandleOptions]);
      v22 = [v21 didSelectFromOptionsMenu];

      [(_CPCommandEngagementFeedback *)v5 setDidSelectFromOptionsMenu:v22];
    }

    v23 = v5;
  }

  return v5;
}

@end