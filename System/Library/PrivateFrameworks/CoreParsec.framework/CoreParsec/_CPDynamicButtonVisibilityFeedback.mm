@interface _CPDynamicButtonVisibilityFeedback
- (BOOL)isEqual:(id)a3;
- (_CPDynamicButtonVisibilityFeedback)init;
- (_CPDynamicButtonVisibilityFeedback)initWithFacade:(id)a3;
- (unint64_t)hash;
- (void)addVisibleDynamicButton2s:(id)a3;
- (void)setVisibleDynamicButton2s:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _CPDynamicButtonVisibilityFeedback

- (unint64_t)hash
{
  v3 = 2654435761u * self->_timestamp;
  v4 = [(NSString *)self->_cardSectionIdentifier hash];
  return v4 ^ [(NSArray *)self->_visibleDynamicButton2s hash]^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  timestamp = self->_timestamp;
  if (timestamp != [v4 timestamp])
  {
    goto LABEL_13;
  }

  v6 = [(_CPDynamicButtonVisibilityFeedback *)self cardSectionIdentifier];
  v7 = [v4 cardSectionIdentifier];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_12;
  }

  v8 = [(_CPDynamicButtonVisibilityFeedback *)self cardSectionIdentifier];
  if (v8)
  {
    v9 = v8;
    v10 = [(_CPDynamicButtonVisibilityFeedback *)self cardSectionIdentifier];
    v11 = [v4 cardSectionIdentifier];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  v6 = [(_CPDynamicButtonVisibilityFeedback *)self visibleDynamicButton2s];
  v7 = [v4 visibleDynamicButton2s];
  if ((v6 != 0) != (v7 == 0))
  {
    v13 = [(_CPDynamicButtonVisibilityFeedback *)self visibleDynamicButton2s];
    if (!v13)
    {

LABEL_16:
      v18 = 1;
      goto LABEL_14;
    }

    v14 = v13;
    v15 = [(_CPDynamicButtonVisibilityFeedback *)self visibleDynamicButton2s];
    v16 = [v4 visibleDynamicButton2s];
    v17 = [v15 isEqual:v16];

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

- (void)writeTo:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(_CPDynamicButtonVisibilityFeedback *)self timestamp])
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  v6 = [(_CPDynamicButtonVisibilityFeedback *)self cardSectionIdentifier];

  if (v6)
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

- (void)addVisibleDynamicButton2s:(id)a3
{
  v4 = a3;
  visibleDynamicButton2s = self->_visibleDynamicButton2s;
  v8 = v4;
  if (!visibleDynamicButton2s)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_visibleDynamicButton2s;
    self->_visibleDynamicButton2s = v6;

    v4 = v8;
    visibleDynamicButton2s = self->_visibleDynamicButton2s;
  }

  [(NSArray *)visibleDynamicButton2s addObject:v4];
}

- (void)setVisibleDynamicButton2s:(id)a3
{
  v4 = [a3 mutableCopy];
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

- (_CPDynamicButtonVisibilityFeedback)initWithFacade:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_CPDynamicButtonVisibilityFeedback *)self init];
  if (v5)
  {
    -[_CPDynamicButtonVisibilityFeedback setTimestamp:](v5, "setTimestamp:", [v4 timestamp]);
    v6 = [v4 buttons];
    v7 = [v6 count];

    if (v7)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v9 = [v4 buttons];
      v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
              objc_enumerationMutation(v9);
            }

            v14 = [[_CPButtonForFeedback alloc] initWithFacade:*(*(&v21 + 1) + 8 * v13)];
            [v8 addObject:v14];

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v11);
      }

      [(_CPDynamicButtonVisibilityFeedback *)v5 setVisibleDynamicButton2s:v8];
    }

    v15 = [v4 cardSection];

    if (v15)
    {
      v16 = [v4 cardSection];
      v17 = [v16 cardSectionId];
      [(_CPDynamicButtonVisibilityFeedback *)v5 setCardSectionIdentifier:v17];
    }

    v18 = v5;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v5;
}

@end