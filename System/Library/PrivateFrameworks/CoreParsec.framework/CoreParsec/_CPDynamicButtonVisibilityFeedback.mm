@interface _CPDynamicButtonVisibilityFeedback
- (BOOL)isEqual:(id)equal;
- (_CPDynamicButtonVisibilityFeedback)init;
- (_CPDynamicButtonVisibilityFeedback)initWithFacade:(id)facade;
- (unint64_t)hash;
- (void)addVisibleDynamicButton2s:(id)button2s;
- (void)setVisibleDynamicButton2s:(id)button2s;
- (void)writeTo:(id)to;
@end

@implementation _CPDynamicButtonVisibilityFeedback

- (unint64_t)hash
{
  v3 = 2654435761u * self->_timestamp;
  v4 = [(NSString *)self->_cardSectionIdentifier hash];
  return v4 ^ [(NSArray *)self->_visibleDynamicButton2s hash]^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  timestamp = self->_timestamp;
  if (timestamp != [equalCopy timestamp])
  {
    goto LABEL_13;
  }

  cardSectionIdentifier = [(_CPDynamicButtonVisibilityFeedback *)self cardSectionIdentifier];
  cardSectionIdentifier2 = [equalCopy cardSectionIdentifier];
  if ((cardSectionIdentifier != 0) == (cardSectionIdentifier2 == 0))
  {
    goto LABEL_12;
  }

  cardSectionIdentifier3 = [(_CPDynamicButtonVisibilityFeedback *)self cardSectionIdentifier];
  if (cardSectionIdentifier3)
  {
    v9 = cardSectionIdentifier3;
    cardSectionIdentifier4 = [(_CPDynamicButtonVisibilityFeedback *)self cardSectionIdentifier];
    cardSectionIdentifier5 = [equalCopy cardSectionIdentifier];
    v12 = [cardSectionIdentifier4 isEqual:cardSectionIdentifier5];

    if (!v12)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  cardSectionIdentifier = [(_CPDynamicButtonVisibilityFeedback *)self visibleDynamicButton2s];
  cardSectionIdentifier2 = [equalCopy visibleDynamicButton2s];
  if ((cardSectionIdentifier != 0) != (cardSectionIdentifier2 == 0))
  {
    visibleDynamicButton2s = [(_CPDynamicButtonVisibilityFeedback *)self visibleDynamicButton2s];
    if (!visibleDynamicButton2s)
    {

LABEL_16:
      v18 = 1;
      goto LABEL_14;
    }

    v14 = visibleDynamicButton2s;
    visibleDynamicButton2s2 = [(_CPDynamicButtonVisibilityFeedback *)self visibleDynamicButton2s];
    visibleDynamicButton2s3 = [equalCopy visibleDynamicButton2s];
    v17 = [visibleDynamicButton2s2 isEqual:visibleDynamicButton2s3];

    if (v17)
    {
      goto LABEL_16;
    }
  }

  else
  {
LABEL_12:
  }

LABEL_13:
  v18 = 0;
LABEL_14:

  return v18;
}

- (void)writeTo:(id)to
{
  v20 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if ([(_CPDynamicButtonVisibilityFeedback *)self timestamp])
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  cardSectionIdentifier = [(_CPDynamicButtonVisibilityFeedback *)self cardSectionIdentifier];

  if (cardSectionIdentifier)
  {
    cardSectionIdentifier = self->_cardSectionIdentifier;
    PBDataWriterWriteStringField();
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_visibleDynamicButton2s;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * v12);
        PBDataWriterWriteSubmessage();
        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)addVisibleDynamicButton2s:(id)button2s
{
  button2sCopy = button2s;
  visibleDynamicButton2s = self->_visibleDynamicButton2s;
  v8 = button2sCopy;
  if (!visibleDynamicButton2s)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_visibleDynamicButton2s;
    self->_visibleDynamicButton2s = array;

    button2sCopy = v8;
    visibleDynamicButton2s = self->_visibleDynamicButton2s;
  }

  [(NSArray *)visibleDynamicButton2s addObject:button2sCopy];
}

- (void)setVisibleDynamicButton2s:(id)button2s
{
  v4 = [button2s mutableCopy];
  visibleDynamicButton2s = self->_visibleDynamicButton2s;
  self->_visibleDynamicButton2s = v4;

  MEMORY[0x1EEE66BB8]();
}

- (_CPDynamicButtonVisibilityFeedback)init
{
  v5.receiver = self;
  v5.super_class = _CPDynamicButtonVisibilityFeedback;
  v2 = [(_CPDynamicButtonVisibilityFeedback *)&v5 init];
  if (v2)
  {
    [(_CPDynamicButtonVisibilityFeedback *)v2 setTimestamp:mach_absolute_time()];
    v3 = v2;
  }

  return v2;
}

- (_CPDynamicButtonVisibilityFeedback)initWithFacade:(id)facade
{
  v26 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_CPDynamicButtonVisibilityFeedback *)self init];
  if (v5)
  {
    -[_CPDynamicButtonVisibilityFeedback setTimestamp:](v5, "setTimestamp:", [facadeCopy timestamp]);
    buttons = [facadeCopy buttons];
    v7 = [buttons count];

    if (v7)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      buttons2 = [facadeCopy buttons];
      v10 = [buttons2 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v22;
        do
        {
          v13 = 0;
          do
          {
            if (*v22 != v12)
            {
              objc_enumerationMutation(buttons2);
            }

            v14 = [[_CPButtonForFeedback alloc] initWithFacade:*(*(&v21 + 1) + 8 * v13)];
            [v8 addObject:v14];

            ++v13;
          }

          while (v11 != v13);
          v11 = [buttons2 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v11);
      }

      [(_CPDynamicButtonVisibilityFeedback *)v5 setVisibleDynamicButton2s:v8];
    }

    cardSection = [facadeCopy cardSection];

    if (cardSection)
    {
      cardSection2 = [facadeCopy cardSection];
      cardSectionId = [cardSection2 cardSectionId];
      [(_CPDynamicButtonVisibilityFeedback *)v5 setCardSectionIdentifier:cardSectionId];
    }

    v18 = v5;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v5;
}

@end