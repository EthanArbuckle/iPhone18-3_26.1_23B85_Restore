@interface _CPSearchViewAppearFeedback
- (BOOL)isEqual:(id)equal;
- (_CPSearchViewAppearFeedback)init;
- (_CPSearchViewAppearFeedback)initWithFacade:(id)facade;
- (unint64_t)hash;
- (void)writeTo:(id)to;
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

  viewAppearEvent = self->_viewAppearEvent;
  if (viewAppearEvent != [equalCopy viewAppearEvent])
  {
    goto LABEL_17;
  }

  isOnLockScreen = self->_isOnLockScreen;
  if (isOnLockScreen != [equalCopy isOnLockScreen])
  {
    goto LABEL_17;
  }

  isOverApp = self->_isOverApp;
  if (isOverApp != [equalCopy isOverApp])
  {
    goto LABEL_17;
  }

  readerTextAvailable = self->_readerTextAvailable;
  if (readerTextAvailable != [equalCopy readerTextAvailable])
  {
    goto LABEL_17;
  }

  preexistingInput = [(_CPSearchViewAppearFeedback *)self preexistingInput];
  preexistingInput2 = [equalCopy preexistingInput];
  if ((preexistingInput != 0) == (preexistingInput2 == 0))
  {
    goto LABEL_16;
  }

  preexistingInput3 = [(_CPSearchViewAppearFeedback *)self preexistingInput];
  if (preexistingInput3)
  {
    v13 = preexistingInput3;
    preexistingInput4 = [(_CPSearchViewAppearFeedback *)self preexistingInput];
    preexistingInput5 = [equalCopy preexistingInput];
    v16 = [preexistingInput4 isEqual:preexistingInput5];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  preexistingInput = [(_CPSearchViewAppearFeedback *)self originatingApp];
  preexistingInput2 = [equalCopy originatingApp];
  if ((preexistingInput != 0) != (preexistingInput2 == 0))
  {
    originatingApp = [(_CPSearchViewAppearFeedback *)self originatingApp];
    if (!originatingApp)
    {

LABEL_20:
      isUsingLoweredSearchBar = self->_isUsingLoweredSearchBar;
      v22 = isUsingLoweredSearchBar == [equalCopy isUsingLoweredSearchBar];
      goto LABEL_18;
    }

    v18 = originatingApp;
    originatingApp2 = [(_CPSearchViewAppearFeedback *)self originatingApp];
    originatingApp3 = [equalCopy originatingApp];
    v21 = [originatingApp2 isEqual:originatingApp3];

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

  preexistingInput = [(_CPSearchViewAppearFeedback *)self preexistingInput];

  if (preexistingInput)
  {
    preexistingInput = self->_preexistingInput;
    PBDataWriterWriteStringField();
  }

  originatingApp = [(_CPSearchViewAppearFeedback *)self originatingApp];

  if (originatingApp)
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

- (_CPSearchViewAppearFeedback)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v12.receiver = self;
  v12.super_class = _CPSearchViewAppearFeedback;
  v5 = [(_CPSearchViewAppearFeedback *)&v12 init];
  if (v5)
  {
    -[_CPSearchViewAppearFeedback setTimestamp:](v5, "setTimestamp:", [facadeCopy timestamp]);
    -[_CPSearchViewAppearFeedback setViewAppearEvent:](v5, "setViewAppearEvent:", [facadeCopy viewAppearEvent]);
    -[_CPSearchViewAppearFeedback setIsOnLockScreen:](v5, "setIsOnLockScreen:", [facadeCopy isOnLockScreen]);
    -[_CPSearchViewAppearFeedback setIsOverApp:](v5, "setIsOverApp:", [facadeCopy isOverApp]);
    -[_CPSearchViewAppearFeedback setReaderTextAvailable:](v5, "setReaderTextAvailable:", [facadeCopy readerTextAvailable]);
    preexistingInput = [facadeCopy preexistingInput];

    if (preexistingInput)
    {
      preexistingInput2 = [facadeCopy preexistingInput];
      [(_CPSearchViewAppearFeedback *)v5 setPreexistingInput:preexistingInput2];
    }

    originatingApp = [facadeCopy originatingApp];

    if (originatingApp)
    {
      originatingApp2 = [facadeCopy originatingApp];
      [(_CPSearchViewAppearFeedback *)v5 setOriginatingApp:originatingApp2];
    }

    -[_CPSearchViewAppearFeedback setIsUsingLoweredSearchBar:](v5, "setIsUsingLoweredSearchBar:", [facadeCopy isUsingLoweredSearchBar]);
    v10 = v5;
  }

  return v5;
}

@end