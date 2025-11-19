@interface _CPSearchViewAppearFeedback
- (BOOL)isEqual:(id)a3;
- (_CPSearchViewAppearFeedback)init;
- (_CPSearchViewAppearFeedback)initWithFacade:(id)a3;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation _CPSearchViewAppearFeedback

- (_CPSearchViewAppearFeedback)init
{
  v5.receiver = self;
  v5.super_class = _CPSearchViewAppearFeedback;
  v2 = [(_CPSearchViewAppearFeedback *)&v5 init];
  if (v2)
  {
    [(_CPSearchViewAppearFeedback *)v2 setTimestamp:mach_absolute_time()];
    v3 = v2;
  }

  return v2;
}

- (unint64_t)hash
{
  v3 = (2654435761 * self->_viewAppearEvent) ^ (2654435761u * self->_timestamp) ^ (2654435761 * self->_isOnLockScreen) ^ (2654435761 * self->_isOverApp) ^ (2654435761 * self->_readerTextAvailable);
  v4 = [(NSString *)self->_preexistingInput hash];
  return v3 ^ v4 ^ [(NSString *)self->_originatingApp hash]^ (2654435761 * self->_isUsingLoweredSearchBar);
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

  viewAppearEvent = self->_viewAppearEvent;
  if (viewAppearEvent != [v4 viewAppearEvent])
  {
    goto LABEL_17;
  }

  isOnLockScreen = self->_isOnLockScreen;
  if (isOnLockScreen != [v4 isOnLockScreen])
  {
    goto LABEL_17;
  }

  isOverApp = self->_isOverApp;
  if (isOverApp != [v4 isOverApp])
  {
    goto LABEL_17;
  }

  readerTextAvailable = self->_readerTextAvailable;
  if (readerTextAvailable != [v4 readerTextAvailable])
  {
    goto LABEL_17;
  }

  v10 = [(_CPSearchViewAppearFeedback *)self preexistingInput];
  v11 = [v4 preexistingInput];
  if ((v10 != 0) == (v11 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(_CPSearchViewAppearFeedback *)self preexistingInput];
  if (v12)
  {
    v13 = v12;
    v14 = [(_CPSearchViewAppearFeedback *)self preexistingInput];
    v15 = [v4 preexistingInput];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v10 = [(_CPSearchViewAppearFeedback *)self originatingApp];
  v11 = [v4 originatingApp];
  if ((v10 != 0) != (v11 == 0))
  {
    v17 = [(_CPSearchViewAppearFeedback *)self originatingApp];
    if (!v17)
    {

LABEL_20:
      isUsingLoweredSearchBar = self->_isUsingLoweredSearchBar;
      v22 = isUsingLoweredSearchBar == [v4 isUsingLoweredSearchBar];
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(_CPSearchViewAppearFeedback *)self originatingApp];
    v20 = [v4 originatingApp];
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
  if ([(_CPSearchViewAppearFeedback *)self timestamp])
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if ([(_CPSearchViewAppearFeedback *)self viewAppearEvent])
  {
    viewAppearEvent = self->_viewAppearEvent;
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPSearchViewAppearFeedback *)self isOnLockScreen])
  {
    isOnLockScreen = self->_isOnLockScreen;
    PBDataWriterWriteBOOLField();
  }

  if ([(_CPSearchViewAppearFeedback *)self isOverApp])
  {
    isOverApp = self->_isOverApp;
    PBDataWriterWriteBOOLField();
  }

  if ([(_CPSearchViewAppearFeedback *)self readerTextAvailable])
  {
    readerTextAvailable = self->_readerTextAvailable;
    PBDataWriterWriteBOOLField();
  }

  v9 = [(_CPSearchViewAppearFeedback *)self preexistingInput];

  if (v9)
  {
    preexistingInput = self->_preexistingInput;
    PBDataWriterWriteStringField();
  }

  v11 = [(_CPSearchViewAppearFeedback *)self originatingApp];

  if (v11)
  {
    originatingApp = self->_originatingApp;
    PBDataWriterWriteStringField();
  }

  if ([(_CPSearchViewAppearFeedback *)self isUsingLoweredSearchBar])
  {
    isUsingLoweredSearchBar = self->_isUsingLoweredSearchBar;
    PBDataWriterWriteBOOLField();
  }
}

- (_CPSearchViewAppearFeedback)initWithFacade:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _CPSearchViewAppearFeedback;
  v5 = [(_CPSearchViewAppearFeedback *)&v12 init];
  if (v5)
  {
    -[_CPSearchViewAppearFeedback setTimestamp:](v5, "setTimestamp:", [v4 timestamp]);
    -[_CPSearchViewAppearFeedback setViewAppearEvent:](v5, "setViewAppearEvent:", [v4 viewAppearEvent]);
    -[_CPSearchViewAppearFeedback setIsOnLockScreen:](v5, "setIsOnLockScreen:", [v4 isOnLockScreen]);
    -[_CPSearchViewAppearFeedback setIsOverApp:](v5, "setIsOverApp:", [v4 isOverApp]);
    -[_CPSearchViewAppearFeedback setReaderTextAvailable:](v5, "setReaderTextAvailable:", [v4 readerTextAvailable]);
    v6 = [v4 preexistingInput];

    if (v6)
    {
      v7 = [v4 preexistingInput];
      [(_CPSearchViewAppearFeedback *)v5 setPreexistingInput:v7];
    }

    v8 = [v4 originatingApp];

    if (v8)
    {
      v9 = [v4 originatingApp];
      [(_CPSearchViewAppearFeedback *)v5 setOriginatingApp:v9];
    }

    -[_CPSearchViewAppearFeedback setIsUsingLoweredSearchBar:](v5, "setIsUsingLoweredSearchBar:", [v4 isUsingLoweredSearchBar]);
    v10 = v5;
  }

  return v5;
}

@end