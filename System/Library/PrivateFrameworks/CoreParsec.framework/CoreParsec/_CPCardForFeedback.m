@interface _CPCardForFeedback
- (BOOL)isEqual:(id)a3;
- (_CPCardForFeedback)initWithFacade:(id)a3;
- (void)addCardSections:(id)a3;
- (void)setCardSections:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _CPCardForFeedback

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(_CPCardForFeedback *)self cardSections];
  v6 = [v4 cardSections];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(_CPCardForFeedback *)self cardSections];
  if (v7)
  {
    v8 = v7;
    v9 = [(_CPCardForFeedback *)self cardSections];
    v10 = [v4 cardSections];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(_CPCardForFeedback *)self fbr];
  v6 = [v4 fbr];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(_CPCardForFeedback *)self fbr];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(_CPCardForFeedback *)self fbr];
    v15 = [v4 fbr];
    v16 = [v14 isEqual:v15];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_cardSections;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = [(_CPCardForFeedback *)self fbr];

  if (v11)
  {
    fbr = self->_fbr;
    PBDataWriterWriteStringField();
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)addCardSections:(id)a3
{
  v4 = a3;
  cardSections = self->_cardSections;
  v8 = v4;
  if (!cardSections)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_cardSections;
    self->_cardSections = v6;

    v4 = v8;
    cardSections = self->_cardSections;
  }

  [(NSArray *)cardSections addObject:v4];
}

- (void)setCardSections:(id)a3
{
  v4 = [a3 mutableCopy];
  cardSections = self->_cardSections;
  self->_cardSections = v4;

  MEMORY[0x1EEE66BB8]();
}

- (_CPCardForFeedback)initWithFacade:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v23.receiver = self;
  v23.super_class = _CPCardForFeedback;
  v5 = [(_CPCardForFeedback *)&v23 init];
  if (v5)
  {
    v6 = [v4 cardSections];
    if (v6)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v7 = 0;
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = [v4 cardSections];
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [[_CPCardSectionForFeedback alloc] initWithFacade:*(*(&v19 + 1) + 8 * i)];
          [v7 addObject:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v10);
    }

    [(_CPCardForFeedback *)v5 setCardSections:v7];
    v14 = [v4 fbr];

    if (v14)
    {
      v15 = [v4 fbr];
      [(_CPCardForFeedback *)v5 setFbr:v15];
    }

    v16 = v5;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v5;
}

@end