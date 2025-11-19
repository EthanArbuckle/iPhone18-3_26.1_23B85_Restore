@interface _CPCardSectionForFeedback
- (BOOL)isEqual:(id)a3;
- (_CPCardSectionForFeedback)initWithFacade:(id)a3;
- (unint64_t)hash;
- (void)addButtons:(id)a3;
- (void)addCardSections:(id)a3;
- (void)addLeadingSwipeButtonItems:(id)a3;
- (void)addTrailingSwipeButtonItems:(id)a3;
- (void)setButtons:(id)a3;
- (void)setCardSections:(id)a3;
- (void)setLeadingSwipeButtonItems:(id)a3;
- (void)setTrailingSwipeButtonItems:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _CPCardSectionForFeedback

- (unint64_t)hash
{
  v3 = [(NSString *)self->_cardSectionId hash];
  v4 = [(NSString *)self->_actionTarget hash]^ v3;
  v5 = [(NSString *)self->_actionDestination hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_resultId hash];
  v7 = 2654435761 * self->_commandType;
  v8 = v6 ^ [(NSString *)self->_commandDetail hash];
  v9 = v8 ^ [(NSArray *)self->_cardSections hash]^ v7;
  v10 = 2654435761 * self->_cardSectionType;
  v11 = v9 ^ v10 ^ [(NSString *)self->_cardSectionDetail hash];
  v12 = [(NSArray *)self->_buttons hash];
  v13 = v12 ^ [(NSArray *)self->_leadingSwipeButtonItems hash];
  v14 = v13 ^ [(NSArray *)self->_trailingSwipeButtonItems hash];
  return v11 ^ v14 ^ [(NSString *)self->_applicationBundleIdentifier hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_59;
  }

  v5 = [(_CPCardSectionForFeedback *)self cardSectionId];
  v6 = [v4 cardSectionId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_58;
  }

  v7 = [(_CPCardSectionForFeedback *)self cardSectionId];
  if (v7)
  {
    v8 = v7;
    v9 = [(_CPCardSectionForFeedback *)self cardSectionId];
    v10 = [v4 cardSectionId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_59;
    }
  }

  else
  {
  }

  v5 = [(_CPCardSectionForFeedback *)self actionTarget];
  v6 = [v4 actionTarget];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_58;
  }

  v12 = [(_CPCardSectionForFeedback *)self actionTarget];
  if (v12)
  {
    v13 = v12;
    v14 = [(_CPCardSectionForFeedback *)self actionTarget];
    v15 = [v4 actionTarget];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_59;
    }
  }

  else
  {
  }

  v5 = [(_CPCardSectionForFeedback *)self actionDestination];
  v6 = [v4 actionDestination];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_58;
  }

  v17 = [(_CPCardSectionForFeedback *)self actionDestination];
  if (v17)
  {
    v18 = v17;
    v19 = [(_CPCardSectionForFeedback *)self actionDestination];
    v20 = [v4 actionDestination];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_59;
    }
  }

  else
  {
  }

  v5 = [(_CPCardSectionForFeedback *)self resultId];
  v6 = [v4 resultId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_58;
  }

  v22 = [(_CPCardSectionForFeedback *)self resultId];
  if (v22)
  {
    v23 = v22;
    v24 = [(_CPCardSectionForFeedback *)self resultId];
    v25 = [v4 resultId];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_59;
    }
  }

  else
  {
  }

  commandType = self->_commandType;
  if (commandType != [v4 commandType])
  {
    goto LABEL_59;
  }

  v5 = [(_CPCardSectionForFeedback *)self commandDetail];
  v6 = [v4 commandDetail];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_58;
  }

  v28 = [(_CPCardSectionForFeedback *)self commandDetail];
  if (v28)
  {
    v29 = v28;
    v30 = [(_CPCardSectionForFeedback *)self commandDetail];
    v31 = [v4 commandDetail];
    v32 = [v30 isEqual:v31];

    if (!v32)
    {
      goto LABEL_59;
    }
  }

  else
  {
  }

  v5 = [(_CPCardSectionForFeedback *)self cardSections];
  v6 = [v4 cardSections];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_58;
  }

  v33 = [(_CPCardSectionForFeedback *)self cardSections];
  if (v33)
  {
    v34 = v33;
    v35 = [(_CPCardSectionForFeedback *)self cardSections];
    v36 = [v4 cardSections];
    v37 = [v35 isEqual:v36];

    if (!v37)
    {
      goto LABEL_59;
    }
  }

  else
  {
  }

  cardSectionType = self->_cardSectionType;
  if (cardSectionType != [v4 cardSectionType])
  {
    goto LABEL_59;
  }

  v5 = [(_CPCardSectionForFeedback *)self cardSectionDetail];
  v6 = [v4 cardSectionDetail];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_58;
  }

  v39 = [(_CPCardSectionForFeedback *)self cardSectionDetail];
  if (v39)
  {
    v40 = v39;
    v41 = [(_CPCardSectionForFeedback *)self cardSectionDetail];
    v42 = [v4 cardSectionDetail];
    v43 = [v41 isEqual:v42];

    if (!v43)
    {
      goto LABEL_59;
    }
  }

  else
  {
  }

  v5 = [(_CPCardSectionForFeedback *)self buttons];
  v6 = [v4 buttons];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_58;
  }

  v44 = [(_CPCardSectionForFeedback *)self buttons];
  if (v44)
  {
    v45 = v44;
    v46 = [(_CPCardSectionForFeedback *)self buttons];
    v47 = [v4 buttons];
    v48 = [v46 isEqual:v47];

    if (!v48)
    {
      goto LABEL_59;
    }
  }

  else
  {
  }

  v5 = [(_CPCardSectionForFeedback *)self leadingSwipeButtonItems];
  v6 = [v4 leadingSwipeButtonItems];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_58;
  }

  v49 = [(_CPCardSectionForFeedback *)self leadingSwipeButtonItems];
  if (v49)
  {
    v50 = v49;
    v51 = [(_CPCardSectionForFeedback *)self leadingSwipeButtonItems];
    v52 = [v4 leadingSwipeButtonItems];
    v53 = [v51 isEqual:v52];

    if (!v53)
    {
      goto LABEL_59;
    }
  }

  else
  {
  }

  v5 = [(_CPCardSectionForFeedback *)self trailingSwipeButtonItems];
  v6 = [v4 trailingSwipeButtonItems];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_58;
  }

  v54 = [(_CPCardSectionForFeedback *)self trailingSwipeButtonItems];
  if (v54)
  {
    v55 = v54;
    v56 = [(_CPCardSectionForFeedback *)self trailingSwipeButtonItems];
    v57 = [v4 trailingSwipeButtonItems];
    v58 = [v56 isEqual:v57];

    if (!v58)
    {
      goto LABEL_59;
    }
  }

  else
  {
  }

  v5 = [(_CPCardSectionForFeedback *)self applicationBundleIdentifier];
  v6 = [v4 applicationBundleIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_58:

    goto LABEL_59;
  }

  v59 = [(_CPCardSectionForFeedback *)self applicationBundleIdentifier];
  if (!v59)
  {

LABEL_62:
    v64 = 1;
    goto LABEL_60;
  }

  v60 = v59;
  v61 = [(_CPCardSectionForFeedback *)self applicationBundleIdentifier];
  v62 = [v4 applicationBundleIdentifier];
  v63 = [v61 isEqual:v62];

  if (v63)
  {
    goto LABEL_62;
  }

LABEL_59:
  v64 = 0;
LABEL_60:

  return v64;
}

- (void)writeTo:(id)a3
{
  v66 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_CPCardSectionForFeedback *)self cardSectionId];

  if (v5)
  {
    cardSectionId = self->_cardSectionId;
    PBDataWriterWriteStringField();
  }

  v7 = [(_CPCardSectionForFeedback *)self actionTarget];

  if (v7)
  {
    actionTarget = self->_actionTarget;
    PBDataWriterWriteStringField();
  }

  v9 = [(_CPCardSectionForFeedback *)self actionDestination];

  if (v9)
  {
    actionDestination = self->_actionDestination;
    PBDataWriterWriteStringField();
  }

  v11 = [(_CPCardSectionForFeedback *)self resultId];

  if (v11)
  {
    resultId = self->_resultId;
    PBDataWriterWriteStringField();
  }

  if ([(_CPCardSectionForFeedback *)self commandType])
  {
    commandType = self->_commandType;
    PBDataWriterWriteInt32Field();
  }

  v14 = [(_CPCardSectionForFeedback *)self commandDetail];

  if (v14)
  {
    commandDetail = self->_commandDetail;
    PBDataWriterWriteStringField();
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v16 = self->_cardSections;
  v17 = [(NSArray *)v16 countByEnumeratingWithState:&v58 objects:v65 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v59;
    do
    {
      v20 = 0;
      do
      {
        if (*v59 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v58 + 1) + 8 * v20);
        PBDataWriterWriteSubmessage();
        ++v20;
      }

      while (v18 != v20);
      v18 = [(NSArray *)v16 countByEnumeratingWithState:&v58 objects:v65 count:16];
    }

    while (v18);
  }

  if ([(_CPCardSectionForFeedback *)self cardSectionType])
  {
    cardSectionType = self->_cardSectionType;
    PBDataWriterWriteInt32Field();
  }

  v23 = [(_CPCardSectionForFeedback *)self cardSectionDetail];

  if (v23)
  {
    cardSectionDetail = self->_cardSectionDetail;
    PBDataWriterWriteStringField();
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v25 = self->_buttons;
  v26 = [(NSArray *)v25 countByEnumeratingWithState:&v54 objects:v64 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v55;
    do
    {
      v29 = 0;
      do
      {
        if (*v55 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v54 + 1) + 8 * v29);
        PBDataWriterWriteSubmessage();
        ++v29;
      }

      while (v27 != v29);
      v27 = [(NSArray *)v25 countByEnumeratingWithState:&v54 objects:v64 count:16];
    }

    while (v27);
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v31 = self->_leadingSwipeButtonItems;
  v32 = [(NSArray *)v31 countByEnumeratingWithState:&v50 objects:v63 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v51;
    do
    {
      v35 = 0;
      do
      {
        if (*v51 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = *(*(&v50 + 1) + 8 * v35);
        PBDataWriterWriteSubmessage();
        ++v35;
      }

      while (v33 != v35);
      v33 = [(NSArray *)v31 countByEnumeratingWithState:&v50 objects:v63 count:16];
    }

    while (v33);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v37 = self->_trailingSwipeButtonItems;
  v38 = [(NSArray *)v37 countByEnumeratingWithState:&v46 objects:v62 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v47;
    do
    {
      v41 = 0;
      do
      {
        if (*v47 != v40)
        {
          objc_enumerationMutation(v37);
        }

        v42 = *(*(&v46 + 1) + 8 * v41);
        PBDataWriterWriteSubmessage();
        ++v41;
      }

      while (v39 != v41);
      v39 = [(NSArray *)v37 countByEnumeratingWithState:&v46 objects:v62 count:16];
    }

    while (v39);
  }

  v43 = [(_CPCardSectionForFeedback *)self applicationBundleIdentifier];

  if (v43)
  {
    applicationBundleIdentifier = self->_applicationBundleIdentifier;
    PBDataWriterWriteStringField();
  }

  v45 = *MEMORY[0x1E69E9840];
}

- (void)addTrailingSwipeButtonItems:(id)a3
{
  v4 = a3;
  trailingSwipeButtonItems = self->_trailingSwipeButtonItems;
  v8 = v4;
  if (!trailingSwipeButtonItems)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_trailingSwipeButtonItems;
    self->_trailingSwipeButtonItems = v6;

    v4 = v8;
    trailingSwipeButtonItems = self->_trailingSwipeButtonItems;
  }

  [(NSArray *)trailingSwipeButtonItems addObject:v4];
}

- (void)setTrailingSwipeButtonItems:(id)a3
{
  v4 = [a3 mutableCopy];
  trailingSwipeButtonItems = self->_trailingSwipeButtonItems;
  self->_trailingSwipeButtonItems = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addLeadingSwipeButtonItems:(id)a3
{
  v4 = a3;
  leadingSwipeButtonItems = self->_leadingSwipeButtonItems;
  v8 = v4;
  if (!leadingSwipeButtonItems)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_leadingSwipeButtonItems;
    self->_leadingSwipeButtonItems = v6;

    v4 = v8;
    leadingSwipeButtonItems = self->_leadingSwipeButtonItems;
  }

  [(NSArray *)leadingSwipeButtonItems addObject:v4];
}

- (void)setLeadingSwipeButtonItems:(id)a3
{
  v4 = [a3 mutableCopy];
  leadingSwipeButtonItems = self->_leadingSwipeButtonItems;
  self->_leadingSwipeButtonItems = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addButtons:(id)a3
{
  v4 = a3;
  buttons = self->_buttons;
  v8 = v4;
  if (!buttons)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_buttons;
    self->_buttons = v6;

    v4 = v8;
    buttons = self->_buttons;
  }

  [(NSArray *)buttons addObject:v4];
}

- (void)setButtons:(id)a3
{
  v4 = [a3 mutableCopy];
  buttons = self->_buttons;
  self->_buttons = v4;

  MEMORY[0x1EEE66BB8]();
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

- (_CPCardSectionForFeedback)initWithFacade:(id)a3
{
  v92[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_CPCardSectionForFeedback *)self init];
  if (v5)
  {
    v6 = [v4 cardSectionId];
    [(_CPCardSectionForFeedback *)v5 setCardSectionId:v6];

    v7 = [v4 resultIdentifier];
    [(_CPCardSectionForFeedback *)v5 setResultId:v7];

    v8 = [v4 punchoutOptions];
    v9 = [v8 firstObject];
    v10 = [v9 preferredOpenableURL];
    v11 = [v10 absoluteString];
    [(_CPCardSectionForFeedback *)v5 setActionDestination:v11];

    if ([v4 isMemberOfClass:objc_opt_class()] || objc_msgSend(v4, "isMemberOfClass:", objc_opt_class()))
    {
      goto LABEL_4;
    }

    if ([v4 isMemberOfClass:objc_opt_class()])
    {
      v12 = [v4 buttons];
      goto LABEL_5;
    }

    if ([v4 isMemberOfClass:objc_opt_class()])
    {
      v55 = [v4 buttonItem];

      if (v55)
      {
        v56 = [v4 buttonItem];
        v92[0] = v56;
        v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:v92 count:1];
LABEL_149:
        v13 = v57;

LABEL_6:
        v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v15 = v14;
        if (v13)
        {
          [v14 addObjectsFromArray:v13];
        }

LABEL_8:
        v16 = [v4 leadingSwipeButtonItems];

        if (v16)
        {
          v17 = [v4 leadingSwipeButtonItems];
          [v15 addObjectsFromArray:v17];
        }

        v18 = [v4 trailingSwipeButtonItems];

        if (v18)
        {
          v19 = [v4 trailingSwipeButtonItems];
          [v15 addObjectsFromArray:v19];
        }

        v67 = v15;
        if ([v15 count])
        {
          v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v84 = 0u;
          v85 = 0u;
          v86 = 0u;
          v87 = 0u;
          v21 = v15;
          v22 = [v21 countByEnumeratingWithState:&v84 objects:v91 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v85;
            do
            {
              for (i = 0; i != v23; ++i)
              {
                if (*v85 != v24)
                {
                  objc_enumerationMutation(v21);
                }

                v26 = *(*(&v84 + 1) + 8 * i);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v27 = [[_CPButtonForFeedback alloc] initWithFacade:v26];
                  [v20 addObject:v27];
                }
              }

              v23 = [v21 countByEnumeratingWithState:&v84 objects:v91 count:16];
            }

            while (v23);
          }

          [(_CPCardSectionForFeedback *)v5 setButtons:v20];
          v15 = v67;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_24;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v28 = [v4 buttonCardSections];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
LABEL_24:
            v28 = [v4 cardSections];
            goto LABEL_27;
          }

          v28 = 0;
        }

LABEL_27:
        v82 = 0u;
        v83 = 0u;
        v80 = 0u;
        v81 = 0u;
        v29 = v28;
        v30 = [v29 countByEnumeratingWithState:&v80 objects:v90 count:16];
        if (v30)
        {
          v31 = v30;
          v32 = *v81;
          do
          {
            for (j = 0; j != v31; ++j)
            {
              if (*v81 != v32)
              {
                objc_enumerationMutation(v29);
              }

              v34 = [[_CPCardSectionForFeedback alloc] initWithFacade:*(*(&v80 + 1) + 8 * j)];
              [(_CPCardSectionForFeedback *)v5 addCardSections:v34];
            }

            v31 = [v29 countByEnumeratingWithState:&v80 objects:v90 count:16];
          }

          while (v31);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v65 = v29;
          v66 = v4;
          v35 = v4;
          v76 = 0u;
          v77 = 0u;
          v78 = 0u;
          v79 = 0u;
          obj = [v35 infoTuples];
          v70 = [obj countByEnumeratingWithState:&v76 objects:v89 count:16];
          if (v70)
          {
            v69 = *v77;
            do
            {
              v36 = 0;
              do
              {
                if (*v77 != v69)
                {
                  objc_enumerationMutation(obj);
                }

                v71 = v36;
                v37 = *(*(&v76 + 1) + 8 * v36);
                v72 = 0u;
                v73 = 0u;
                v74 = 0u;
                v75 = 0u;
                v38 = [v37 values];
                v39 = [v38 countByEnumeratingWithState:&v72 objects:v88 count:16];
                if (v39)
                {
                  v40 = v39;
                  v41 = *v73;
                  do
                  {
                    for (k = 0; k != v40; ++k)
                    {
                      if (*v73 != v41)
                      {
                        objc_enumerationMutation(v38);
                      }

                      v43 = *(*(&v72 + 1) + 8 * k);
                      v44 = objc_opt_new();
                      v45 = [v35 cardSectionId];
                      [v44 setCardSectionId:v45];

                      v46 = [v43 command];
                      [v44 setCommandType:{objc_msgSend(v46, "_cpCommandType")}];

                      v47 = [v43 command];
                      v48 = [v47 commandDetail];
                      [v44 setCommandDetail:v48];

                      [(_CPCardSectionForFeedback *)v5 addCardSections:v44];
                    }

                    v40 = [v38 countByEnumeratingWithState:&v72 objects:v88 count:16];
                  }

                  while (v40);
                }

                v36 = v71 + 1;
              }

              while (v71 + 1 != v70);
              v70 = [obj countByEnumeratingWithState:&v76 objects:v89 count:16];
            }

            while (v70);
          }

          v4 = v66;
          v15 = v67;
          v29 = v65;
        }

        v49 = [v4 command];
        -[_CPCardSectionForFeedback setCommandType:](v5, "setCommandType:", [v49 _cpCommandType]);

        v50 = [v4 commandDetail];
        [(_CPCardSectionForFeedback *)v5 setCommandDetail:v50];

        v51 = [v4 type];

        if (v51)
        {
          v52 = [v4 type];
          if ([v52 compare:@"none" options:3])
          {
            if ([v52 compare:@"app_link" options:3])
            {
              if ([v52 compare:@"description" options:3])
              {
                v53 = 3;
                if ([v52 compare:@"key_value_data" options:3])
                {
                  if ([v52 compare:@"map" options:3])
                  {
                    if ([v52 compare:@"media_info" options:3])
                    {
                      if ([v52 compare:@"media_player" options:3])
                      {
                        if ([v52 compare:@"now_playing" options:3])
                        {
                          if ([v52 compare:@"rich_title" options:3])
                          {
                            if ([v52 compare:@"row" options:3])
                            {
                              if ([v52 compare:@"scoreboard" options:3])
                              {
                                if ([v52 compare:@"social_media_post" options:3])
                                {
                                  if ([v52 compare:@"stock_chart" options:3])
                                  {
                                    if ([v52 compare:@"table_header_row" options:3])
                                    {
                                      if ([v52 compare:@"table_row" options:3])
                                      {
                                        if ([v52 compare:@"text_columns" options:3])
                                        {
                                          if ([v52 compare:@"title" options:3])
                                          {
                                            if ([v52 compare:@"track_list" options:3])
                                            {
                                              if ([v52 compare:@"audio_playback" options:3])
                                              {
                                                if ([v52 compare:@"flight" options:3])
                                                {
                                                  if ([v52 compare:@"activity_indicator" options:3])
                                                  {
                                                    if ([v52 compare:@"web" options:3])
                                                    {
                                                      if ([v52 compare:@"message" options:3])
                                                      {
                                                        if ([v52 compare:@"detailed_row" options:3])
                                                        {
                                                          if ([v52 compare:@"images" options:3])
                                                          {
                                                            if ([v52 compare:@"suggestion" options:3])
                                                            {
                                                              if ([v52 compare:@"selectable_grid" options:3])
                                                              {
                                                                if ([v52 compare:@"section_header" options:3])
                                                                {
                                                                  if ([v52 compare:@"meta_info" options:3])
                                                                  {
                                                                    if ([v52 compare:@"watch_list" options:3])
                                                                    {
                                                                      if ([v52 compare:@"maps_detailed_row" options:3])
                                                                      {
                                                                        if ([v52 compare:@"button" options:3])
                                                                        {
                                                                          if ([v52 compare:@"horizontal_button" options:3])
                                                                          {
                                                                            if ([v52 compare:@"vertical_layout" options:3])
                                                                            {
                                                                              if ([v52 compare:@"product" options:3])
                                                                              {
                                                                                if ([v52 compare:@"horizontal_scroll" options:3])
                                                                                {
                                                                                  if ([v52 compare:@"media_remote_control" options:3])
                                                                                  {
                                                                                    if ([v52 compare:@"map_place" options:3])
                                                                                    {
                                                                                      if ([v52 compare:@"compact_row" options:3])
                                                                                      {
                                                                                        if ([v52 compare:@"world_map" options:3])
                                                                                        {
                                                                                          if ([v52 compare:@"attribution_footer" options:3])
                                                                                          {
                                                                                            if ([v52 compare:@"grid" options:3])
                                                                                            {
                                                                                              if ([v52 compare:@"person_header" options:3])
                                                                                              {
                                                                                                if ([v52 compare:@"color_bar" options:3])
                                                                                                {
                                                                                                  if ([v52 compare:@"split" options:3])
                                                                                                  {
                                                                                                    if ([v52 compare:@"link_presentation" options:3])
                                                                                                    {
                                                                                                      if ([v52 compare:@"find_my" options:3])
                                                                                                      {
                                                                                                        if ([v52 compare:@"hero" options:3])
                                                                                                        {
                                                                                                          if ([v52 compare:@"news" options:3])
                                                                                                          {
                                                                                                            if ([v52 compare:@"mini" options:3])
                                                                                                            {
                                                                                                              if ([v52 compare:@"info" options:3])
                                                                                                              {
                                                                                                                if ([v52 compare:@"collection" options:3])
                                                                                                                {
                                                                                                                  if ([v52 compare:@"combined" options:3])
                                                                                                                  {
                                                                                                                    if ([v52 compare:@"response_wrapper" options:3])
                                                                                                                    {
                                                                                                                      if ([v52 compare:@"listen_to" options:3])
                                                                                                                      {
                                                                                                                        if ([v52 compare:@"watch_now" options:3])
                                                                                                                        {
                                                                                                                          if ([v52 compare:@"stroke_animation" options:3])
                                                                                                                          {
                                                                                                                            if ([v52 compare:@"button_list" options:3])
                                                                                                                            {
                                                                                                                              if ([v52 compare:@"command_row" options:3])
                                                                                                                              {
                                                                                                                                if ([v52 compare:@"leading_trailing" options:3])
                                                                                                                                {
                                                                                                                                  if ([v52 compare:@"hero_title" options:3])
                                                                                                                                  {
                                                                                                                                    if ([v52 compare:@"archive_view" options:3])
                                                                                                                                    {
                                                                                                                                      if ([v52 compare:@"app_icon" options:3])
                                                                                                                                      {
                                                                                                                                        if ([v52 compare:@"large_title_detailed_row" options:3])
                                                                                                                                        {
                                                                                                                                          if ([v52 compare:@"rf_summary_item_short_number" options:3])
                                                                                                                                          {
                                                                                                                                            if ([v52 compare:@"rf_summary_item_text" options:3])
                                                                                                                                            {
                                                                                                                                              if ([v52 compare:@"rf_summary_item_standard" options:3])
                                                                                                                                              {
                                                                                                                                                if ([v52 compare:@"rf_fact_item_short_number" options:3])
                                                                                                                                                {
                                                                                                                                                  if ([v52 compare:@"rf_fact_item_standard" options:3])
                                                                                                                                                  {
                                                                                                                                                    if ([v52 compare:@"rf_long_item_standard" options:3])
                                                                                                                                                    {
                                                                                                                                                      if ([v52 compare:@"rf_primary_header_rich" options:3])
                                                                                                                                                      {
                                                                                                                                                        if ([v52 compare:@"rf_primary_header_standard" options:3])
                                                                                                                                                        {
                                                                                                                                                          if ([v52 compare:@"rf_reference_footnote" options:3])
                                                                                                                                                          {
                                                                                                                                                            if ([v52 compare:@"rf_reference_rich" options:3])
                                                                                                                                                            {
                                                                                                                                                              if ([v52 compare:@"rf_simple_item_rich" options:3])
                                                                                                                                                              {
                                                                                                                                                                if ([v52 compare:@"rf_simple_item_standard" options:3])
                                                                                                                                                                {
                                                                                                                                                                  if ([v52 compare:@"rf_summary_item_aligned_text" options:3])
                                                                                                                                                                  {
                                                                                                                                                                    if ([v52 compare:@"rf_expandable_standard" options:3])
                                                                                                                                                                    {
                                                                                                                                                                      if ([v52 compare:@"rf_fact_item_button" options:3])
                                                                                                                                                                      {
                                                                                                                                                                        v53 = 0;
                                                                                                                                                                      }

                                                                                                                                                                      else
                                                                                                                                                                      {
                                                                                                                                                                        v53 = 214;
                                                                                                                                                                      }

                                                                                                                                                                      goto LABEL_306;
                                                                                                                                                                    }

                                                                                                                                                                    goto LABEL_302;
                                                                                                                                                                  }

LABEL_300:
                                                                                                                                                                  v53 = 212;
                                                                                                                                                                  goto LABEL_306;
                                                                                                                                                                }

LABEL_298:
                                                                                                                                                                v53 = 211;
                                                                                                                                                                goto LABEL_306;
                                                                                                                                                              }

LABEL_296:
                                                                                                                                                              v53 = 210;
                                                                                                                                                              goto LABEL_306;
                                                                                                                                                            }

LABEL_294:
                                                                                                                                                            v53 = 209;
                                                                                                                                                            goto LABEL_306;
                                                                                                                                                          }

LABEL_292:
                                                                                                                                                          v53 = 208;
                                                                                                                                                          goto LABEL_306;
                                                                                                                                                        }

LABEL_290:
                                                                                                                                                        v53 = 207;
                                                                                                                                                        goto LABEL_306;
                                                                                                                                                      }

LABEL_288:
                                                                                                                                                      v53 = 206;
                                                                                                                                                      goto LABEL_306;
                                                                                                                                                    }

LABEL_286:
                                                                                                                                                    v53 = 205;
                                                                                                                                                    goto LABEL_306;
                                                                                                                                                  }

LABEL_284:
                                                                                                                                                  v53 = 204;
                                                                                                                                                  goto LABEL_306;
                                                                                                                                                }

LABEL_282:
                                                                                                                                                v53 = 203;
                                                                                                                                                goto LABEL_306;
                                                                                                                                              }

LABEL_280:
                                                                                                                                              v53 = 202;
                                                                                                                                              goto LABEL_306;
                                                                                                                                            }

LABEL_278:
                                                                                                                                            v53 = 201;
                                                                                                                                            goto LABEL_306;
                                                                                                                                          }

LABEL_276:
                                                                                                                                          v53 = 200;
                                                                                                                                          goto LABEL_306;
                                                                                                                                        }

LABEL_274:
                                                                                                                                        v53 = 64;
                                                                                                                                        goto LABEL_306;
                                                                                                                                      }

LABEL_272:
                                                                                                                                      v53 = 63;
                                                                                                                                      goto LABEL_306;
                                                                                                                                    }

LABEL_270:
                                                                                                                                    v53 = 61;
                                                                                                                                    goto LABEL_306;
                                                                                                                                  }

LABEL_268:
                                                                                                                                  v53 = 60;
                                                                                                                                  goto LABEL_306;
                                                                                                                                }

LABEL_266:
                                                                                                                                v53 = 59;
                                                                                                                                goto LABEL_306;
                                                                                                                              }

LABEL_264:
                                                                                                                              v53 = 58;
                                                                                                                              goto LABEL_306;
                                                                                                                            }

LABEL_262:
                                                                                                                            v53 = 57;
                                                                                                                            goto LABEL_306;
                                                                                                                          }

LABEL_260:
                                                                                                                          v53 = 56;
                                                                                                                          goto LABEL_306;
                                                                                                                        }

LABEL_258:
                                                                                                                        v53 = 55;
                                                                                                                        goto LABEL_306;
                                                                                                                      }

LABEL_256:
                                                                                                                      v53 = 54;
                                                                                                                      goto LABEL_306;
                                                                                                                    }

LABEL_254:
                                                                                                                    v53 = 53;
                                                                                                                    goto LABEL_306;
                                                                                                                  }

LABEL_252:
                                                                                                                  v53 = 52;
                                                                                                                  goto LABEL_306;
                                                                                                                }

LABEL_250:
                                                                                                                v53 = 51;
                                                                                                                goto LABEL_306;
                                                                                                              }

LABEL_248:
                                                                                                              v53 = 50;
                                                                                                              goto LABEL_306;
                                                                                                            }

LABEL_246:
                                                                                                            v53 = 49;
                                                                                                            goto LABEL_306;
                                                                                                          }

LABEL_244:
                                                                                                          v53 = 48;
                                                                                                          goto LABEL_306;
                                                                                                        }

LABEL_242:
                                                                                                        v53 = 47;
                                                                                                        goto LABEL_306;
                                                                                                      }

LABEL_240:
                                                                                                      v53 = 46;
                                                                                                      goto LABEL_306;
                                                                                                    }

LABEL_238:
                                                                                                    v53 = 45;
                                                                                                    goto LABEL_306;
                                                                                                  }

LABEL_236:
                                                                                                  v53 = 44;
                                                                                                  goto LABEL_306;
                                                                                                }

LABEL_234:
                                                                                                v53 = 43;
                                                                                                goto LABEL_306;
                                                                                              }

LABEL_232:
                                                                                              v53 = 42;
                                                                                              goto LABEL_306;
                                                                                            }

LABEL_230:
                                                                                            v53 = 41;
                                                                                            goto LABEL_306;
                                                                                          }

LABEL_228:
                                                                                          v53 = 40;
                                                                                          goto LABEL_306;
                                                                                        }

LABEL_226:
                                                                                        v53 = 39;
                                                                                        goto LABEL_306;
                                                                                      }

LABEL_224:
                                                                                      v53 = 38;
                                                                                      goto LABEL_306;
                                                                                    }

LABEL_222:
                                                                                    v53 = 37;
                                                                                    goto LABEL_306;
                                                                                  }

LABEL_220:
                                                                                  v53 = 36;
                                                                                  goto LABEL_306;
                                                                                }

LABEL_218:
                                                                                v53 = 35;
                                                                                goto LABEL_306;
                                                                              }

LABEL_216:
                                                                              v53 = 34;
                                                                              goto LABEL_306;
                                                                            }

LABEL_214:
                                                                            v53 = 33;
                                                                            goto LABEL_306;
                                                                          }

LABEL_212:
                                                                          v53 = 32;
                                                                          goto LABEL_306;
                                                                        }

LABEL_210:
                                                                        v53 = 31;
                                                                        goto LABEL_306;
                                                                      }

LABEL_208:
                                                                      v53 = 30;
                                                                      goto LABEL_306;
                                                                    }

LABEL_206:
                                                                    v53 = 29;
                                                                    goto LABEL_306;
                                                                  }

LABEL_204:
                                                                  v53 = 28;
                                                                  goto LABEL_306;
                                                                }

LABEL_202:
                                                                v53 = 27;
                                                                goto LABEL_306;
                                                              }

LABEL_200:
                                                              v53 = 26;
                                                              goto LABEL_306;
                                                            }

LABEL_198:
                                                            v53 = 25;
                                                            goto LABEL_306;
                                                          }

LABEL_196:
                                                          v53 = 24;
                                                          goto LABEL_306;
                                                        }

LABEL_194:
                                                        v53 = 23;
                                                        goto LABEL_306;
                                                      }

LABEL_192:
                                                      v53 = 22;
                                                      goto LABEL_306;
                                                    }

LABEL_190:
                                                    v53 = 21;
                                                    goto LABEL_306;
                                                  }

LABEL_188:
                                                  v53 = 20;
                                                  goto LABEL_306;
                                                }

LABEL_186:
                                                v53 = 19;
                                                goto LABEL_306;
                                              }

LABEL_184:
                                              v53 = 18;
                                              goto LABEL_306;
                                            }

LABEL_182:
                                            v53 = 17;
                                            goto LABEL_306;
                                          }

LABEL_180:
                                          v53 = 16;
                                          goto LABEL_306;
                                        }

LABEL_178:
                                        v53 = 15;
                                        goto LABEL_306;
                                      }

LABEL_176:
                                      v53 = 14;
                                      goto LABEL_306;
                                    }

LABEL_174:
                                    v53 = 13;
                                    goto LABEL_306;
                                  }

LABEL_172:
                                  v53 = 12;
                                  goto LABEL_306;
                                }

LABEL_170:
                                v53 = 11;
                                goto LABEL_306;
                              }

LABEL_168:
                              v53 = 10;
                              goto LABEL_306;
                            }

LABEL_166:
                            v53 = 9;
                            goto LABEL_306;
                          }

LABEL_164:
                          v53 = 8;
                          goto LABEL_306;
                        }

LABEL_162:
                        v53 = 7;
                        goto LABEL_306;
                      }

LABEL_160:
                      v53 = 6;
                      goto LABEL_306;
                    }

LABEL_158:
                    v53 = 5;
                    goto LABEL_306;
                  }

LABEL_156:
                  v53 = 4;
                  goto LABEL_306;
                }

                goto LABEL_306;
              }

              goto LABEL_145;
            }

            goto LABEL_140;
          }
        }

        else
        {
          v54 = objc_opt_class();
          v52 = NSStringFromClass(v54);
          if (([v52 isEqualToString:@"SFNoneCardSection"] & 1) == 0)
          {
            if (([v52 isEqualToString:@"SFAppLinkCardSection"] & 1) == 0)
            {
              if (([v52 isEqualToString:@"SFDescriptionCardSection"] & 1) == 0)
              {
                if (([v52 isEqualToString:@"SFKeyValueDataCardSection"] & 1) == 0)
                {
                  if (([v52 isEqualToString:@"SFMapCardSection"] & 1) == 0)
                  {
                    if (([v52 isEqualToString:@"SFMediaInfoCardSection"] & 1) == 0)
                    {
                      if (([v52 isEqualToString:@"SFMediaPlayerCardSection"] & 1) == 0)
                      {
                        if (([v52 isEqualToString:@"SFNowPlayingCardSection"] & 1) == 0)
                        {
                          if (([v52 isEqualToString:@"SFRichTitleCardSection"] & 1) == 0)
                          {
                            if (([v52 isEqualToString:@"SFRowCardSection"] & 1) == 0)
                            {
                              if (([v52 isEqualToString:@"SFScoreboardCardSection"] & 1) == 0)
                              {
                                if (([v52 isEqualToString:@"SFSocialMediaPostCardSection"] & 1) == 0)
                                {
                                  if (([v52 isEqualToString:@"SFStockChartCardSection"] & 1) == 0)
                                  {
                                    if (([v52 isEqualToString:@"SFTableHeaderRowCardSection"] & 1) == 0)
                                    {
                                      if (([v52 isEqualToString:@"SFTableRowCardSection"] & 1) == 0)
                                      {
                                        if (([v52 isEqualToString:@"SFTextColumnsCardSection"] & 1) == 0)
                                        {
                                          if (([v52 isEqualToString:@"SFTitleCardSection"] & 1) == 0)
                                          {
                                            if (([v52 isEqualToString:@"SFTrackListCardSection"] & 1) == 0)
                                            {
                                              if (([v52 isEqualToString:@"SFAudioPlaybackCardSection"] & 1) == 0)
                                              {
                                                if (([v52 isEqualToString:@"SFFlightCardSection"] & 1) == 0)
                                                {
                                                  if (([v52 isEqualToString:@"SFActivityIndicatorCardSection"] & 1) == 0)
                                                  {
                                                    if (([v52 isEqualToString:@"SFWebCardSection"] & 1) == 0)
                                                    {
                                                      if (([v52 isEqualToString:@"SFMessageCardSection"] & 1) == 0)
                                                      {
                                                        if (([v52 isEqualToString:@"SFDetailedRowCardSection"] & 1) == 0)
                                                        {
                                                          if (([v52 isEqualToString:@"SFImagesCardSection"] & 1) == 0)
                                                          {
                                                            if (([v52 isEqualToString:@"SFSuggestionCardSection"] & 1) == 0)
                                                            {
                                                              if (([v52 isEqualToString:@"SFSelectableGridCardSection"] & 1) == 0)
                                                              {
                                                                if (([v52 isEqualToString:@"SFSectionHeaderCardSection"] & 1) == 0)
                                                                {
                                                                  if (([v52 isEqualToString:@"SFMetaInfoCardSection"] & 1) == 0)
                                                                  {
                                                                    if (([v52 isEqualToString:@"SFWatchListCardSection"] & 1) == 0)
                                                                    {
                                                                      if (([v52 isEqualToString:@"SFMapsDetailedRowCardSection"] & 1) == 0)
                                                                      {
                                                                        if (([v52 isEqualToString:@"SFButtonCardSection"] & 1) == 0)
                                                                        {
                                                                          if (([v52 isEqualToString:@"SFHorizontalButtonCardSection"] & 1) == 0)
                                                                          {
                                                                            if (([v52 isEqualToString:@"SFVerticalLayoutCardSection"] & 1) == 0)
                                                                            {
                                                                              if (([v52 isEqualToString:@"SFProductCardSection"] & 1) == 0)
                                                                              {
                                                                                if (([v52 isEqualToString:@"SFHorizontalScrollCardSection"] & 1) == 0)
                                                                                {
                                                                                  if (([v52 isEqualToString:@"SFMediaRemoteControlCardSection"] & 1) == 0)
                                                                                  {
                                                                                    if (([v52 isEqualToString:@"SFMapPlaceCardSection"] & 1) == 0)
                                                                                    {
                                                                                      if (([v52 isEqualToString:@"SFCompactRowCardSection"] & 1) == 0)
                                                                                      {
                                                                                        if (([v52 isEqualToString:@"SFWorldMapCardSection"] & 1) == 0)
                                                                                        {
                                                                                          if (([v52 isEqualToString:@"SFAttributionFooterCardSection"] & 1) == 0)
                                                                                          {
                                                                                            if (([v52 isEqualToString:@"SFGridCardSection"] & 1) == 0)
                                                                                            {
                                                                                              if (([v52 isEqualToString:@"SFPersonHeaderCardSection"] & 1) == 0)
                                                                                              {
                                                                                                if (([v52 isEqualToString:@"SFColorBarCardSection"] & 1) == 0)
                                                                                                {
                                                                                                  if (([v52 isEqualToString:@"SFSplitCardSection"] & 1) == 0)
                                                                                                  {
                                                                                                    if (([v52 isEqualToString:@"SFLinkPresentationCardSection"] & 1) == 0)
                                                                                                    {
                                                                                                      if (([v52 isEqualToString:@"SFFindMyCardSection"] & 1) == 0)
                                                                                                      {
                                                                                                        if (([v52 isEqualToString:@"SFHeroCardSection"] & 1) == 0)
                                                                                                        {
                                                                                                          if (([v52 isEqualToString:@"SFNewsCardSection"] & 1) == 0)
                                                                                                          {
                                                                                                            if (([v52 isEqualToString:@"SFMiniCardSection"] & 1) == 0)
                                                                                                            {
                                                                                                              if (([v52 isEqualToString:@"SFInfoCardSection"] & 1) == 0)
                                                                                                              {
                                                                                                                if (([v52 isEqualToString:@"SFCollectionCardSection"] & 1) == 0)
                                                                                                                {
                                                                                                                  if (([v52 isEqualToString:@"SFCombinedCardSection"] & 1) == 0)
                                                                                                                  {
                                                                                                                    if (([v52 isEqualToString:@"SFResponseWrapperCardSection"] & 1) == 0)
                                                                                                                    {
                                                                                                                      if (([v52 isEqualToString:@"SFListenToCardSection"] & 1) == 0)
                                                                                                                      {
                                                                                                                        if (([v52 isEqualToString:@"SFWatchNowCardSection"] & 1) == 0)
                                                                                                                        {
                                                                                                                          if (([v52 isEqualToString:@"SFStrokeAnimationCardSection"] & 1) == 0)
                                                                                                                          {
                                                                                                                            if (([v52 isEqualToString:@"SFButtonListCardSection"] & 1) == 0)
                                                                                                                            {
                                                                                                                              if (([v52 isEqualToString:@"SFCommandRowCardSection"] & 1) == 0)
                                                                                                                              {
                                                                                                                                if (([v52 isEqualToString:@"SFLeadingTrailingCardSection"] & 1) == 0)
                                                                                                                                {
                                                                                                                                  if (([v52 isEqualToString:@"SFHeroTitleCardSection"] & 1) == 0)
                                                                                                                                  {
                                                                                                                                    if (([v52 isEqualToString:@"SFArchiveViewCardSection"] & 1) == 0)
                                                                                                                                    {
                                                                                                                                      if (([v52 isEqualToString:@"SFAppIconCardSection"] & 1) == 0)
                                                                                                                                      {
                                                                                                                                        if (([v52 isEqualToString:@"SFLargeTitleDetailedRowCardSection"] & 1) == 0)
                                                                                                                                        {
                                                                                                                                          if (([v52 isEqualToString:@"RFSummaryItemShortNumberCardSection"] & 1) == 0)
                                                                                                                                          {
                                                                                                                                            if (([v52 isEqualToString:@"RFSummaryItemTextCardSection"] & 1) == 0)
                                                                                                                                            {
                                                                                                                                              if (([v52 isEqualToString:@"RFSummaryItemStandardCardSection"] & 1) == 0)
                                                                                                                                              {
                                                                                                                                                if (([v52 isEqualToString:@"RFFactItemShortNumberCardSection"] & 1) == 0)
                                                                                                                                                {
                                                                                                                                                  if (([v52 isEqualToString:@"RFFactItemStandardCardSection"] & 1) == 0)
                                                                                                                                                  {
                                                                                                                                                    if (([v52 isEqualToString:@"RFLongItemStandardCardSection"] & 1) == 0)
                                                                                                                                                    {
                                                                                                                                                      if (([v52 isEqualToString:@"RFPrimaryHeaderRichCardSection"] & 1) == 0)
                                                                                                                                                      {
                                                                                                                                                        if (([v52 isEqualToString:@"RFPrimaryHeaderStandardCardSection"] & 1) == 0)
                                                                                                                                                        {
                                                                                                                                                          if (([v52 isEqualToString:@"RFReferenceFootnoteCardSection"] & 1) == 0)
                                                                                                                                                          {
                                                                                                                                                            if (([v52 isEqualToString:@"RFReferenceRichCardSection"] & 1) == 0)
                                                                                                                                                            {
                                                                                                                                                              if (([v52 isEqualToString:@"RFSimpleItemRichCardSection"] & 1) == 0)
                                                                                                                                                              {
                                                                                                                                                                if (([v52 isEqualToString:@"RFSimpleItemStandardCardSection"] & 1) == 0)
                                                                                                                                                                {
                                                                                                                                                                  if (([v52 isEqualToString:@"RFSummaryItemAlignedTextCardSection"] & 1) == 0)
                                                                                                                                                                  {
                                                                                                                                                                    if (([v52 isEqualToString:@"RFExpandableStandardCardSection"] & 1) == 0)
                                                                                                                                                                    {
                                                                                                                                                                      if ([v52 isEqualToString:@"RFFactItemButtonCardSection"])
                                                                                                                                                                      {
                                                                                                                                                                        v53 = 214;
                                                                                                                                                                      }

                                                                                                                                                                      else
                                                                                                                                                                      {
                                                                                                                                                                        v53 = 0;
                                                                                                                                                                      }

                                                                                                                                                                      goto LABEL_306;
                                                                                                                                                                    }

LABEL_302:
                                                                                                                                                                    v53 = 213;
                                                                                                                                                                    goto LABEL_306;
                                                                                                                                                                  }

                                                                                                                                                                  goto LABEL_300;
                                                                                                                                                                }

                                                                                                                                                                goto LABEL_298;
                                                                                                                                                              }

                                                                                                                                                              goto LABEL_296;
                                                                                                                                                            }

                                                                                                                                                            goto LABEL_294;
                                                                                                                                                          }

                                                                                                                                                          goto LABEL_292;
                                                                                                                                                        }

                                                                                                                                                        goto LABEL_290;
                                                                                                                                                      }

                                                                                                                                                      goto LABEL_288;
                                                                                                                                                    }

                                                                                                                                                    goto LABEL_286;
                                                                                                                                                  }

                                                                                                                                                  goto LABEL_284;
                                                                                                                                                }

                                                                                                                                                goto LABEL_282;
                                                                                                                                              }

                                                                                                                                              goto LABEL_280;
                                                                                                                                            }

                                                                                                                                            goto LABEL_278;
                                                                                                                                          }

                                                                                                                                          goto LABEL_276;
                                                                                                                                        }

                                                                                                                                        goto LABEL_274;
                                                                                                                                      }

                                                                                                                                      goto LABEL_272;
                                                                                                                                    }

                                                                                                                                    goto LABEL_270;
                                                                                                                                  }

                                                                                                                                  goto LABEL_268;
                                                                                                                                }

                                                                                                                                goto LABEL_266;
                                                                                                                              }

                                                                                                                              goto LABEL_264;
                                                                                                                            }

                                                                                                                            goto LABEL_262;
                                                                                                                          }

                                                                                                                          goto LABEL_260;
                                                                                                                        }

                                                                                                                        goto LABEL_258;
                                                                                                                      }

                                                                                                                      goto LABEL_256;
                                                                                                                    }

                                                                                                                    goto LABEL_254;
                                                                                                                  }

                                                                                                                  goto LABEL_252;
                                                                                                                }

                                                                                                                goto LABEL_250;
                                                                                                              }

                                                                                                              goto LABEL_248;
                                                                                                            }

                                                                                                            goto LABEL_246;
                                                                                                          }

                                                                                                          goto LABEL_244;
                                                                                                        }

                                                                                                        goto LABEL_242;
                                                                                                      }

                                                                                                      goto LABEL_240;
                                                                                                    }

                                                                                                    goto LABEL_238;
                                                                                                  }

                                                                                                  goto LABEL_236;
                                                                                                }

                                                                                                goto LABEL_234;
                                                                                              }

                                                                                              goto LABEL_232;
                                                                                            }

                                                                                            goto LABEL_230;
                                                                                          }

                                                                                          goto LABEL_228;
                                                                                        }

                                                                                        goto LABEL_226;
                                                                                      }

                                                                                      goto LABEL_224;
                                                                                    }

                                                                                    goto LABEL_222;
                                                                                  }

                                                                                  goto LABEL_220;
                                                                                }

                                                                                goto LABEL_218;
                                                                              }

                                                                              goto LABEL_216;
                                                                            }

                                                                            goto LABEL_214;
                                                                          }

                                                                          goto LABEL_212;
                                                                        }

                                                                        goto LABEL_210;
                                                                      }

                                                                      goto LABEL_208;
                                                                    }

                                                                    goto LABEL_206;
                                                                  }

                                                                  goto LABEL_204;
                                                                }

                                                                goto LABEL_202;
                                                              }

                                                              goto LABEL_200;
                                                            }

                                                            goto LABEL_198;
                                                          }

                                                          goto LABEL_196;
                                                        }

                                                        goto LABEL_194;
                                                      }

                                                      goto LABEL_192;
                                                    }

                                                    goto LABEL_190;
                                                  }

                                                  goto LABEL_188;
                                                }

                                                goto LABEL_186;
                                              }

                                              goto LABEL_184;
                                            }

                                            goto LABEL_182;
                                          }

                                          goto LABEL_180;
                                        }

                                        goto LABEL_178;
                                      }

                                      goto LABEL_176;
                                    }

                                    goto LABEL_174;
                                  }

                                  goto LABEL_172;
                                }

                                goto LABEL_170;
                              }

                              goto LABEL_168;
                            }

                            goto LABEL_166;
                          }

                          goto LABEL_164;
                        }

                        goto LABEL_162;
                      }

                      goto LABEL_160;
                    }

                    goto LABEL_158;
                  }

                  goto LABEL_156;
                }

                v53 = 3;
LABEL_306:

                [(_CPCardSectionForFeedback *)v5 setCardSectionType:v53];
                v61 = [v4 cardSectionDetail];
                [(_CPCardSectionForFeedback *)v5 setCardSectionDetail:v61];

                v62 = v5;
                goto LABEL_307;
              }

LABEL_145:
              v53 = 2;
              goto LABEL_306;
            }

LABEL_140:
            v53 = 1;
            goto LABEL_306;
          }
        }

        v53 = 0;
        goto LABEL_306;
      }
    }

    else if ([v4 isMemberOfClass:objc_opt_class()])
    {
      v58 = [v4 internalDetailedRowCardSection];
      v59 = [v58 buttonItems];

      if (v59)
      {
        v56 = [v4 internalDetailedRowCardSection];
        v57 = [v56 buttonItems];
        goto LABEL_149;
      }
    }

    else if ([v4 isMemberOfClass:objc_opt_class()])
    {
      v60 = [v4 buttonItems];

      if (v60)
      {
LABEL_4:
        v12 = [v4 buttonItems];
LABEL_5:
        v13 = v12;
        goto LABEL_6;
      }
    }

    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    goto LABEL_8;
  }

LABEL_307:

  v63 = *MEMORY[0x1E69E9840];
  return v5;
}

@end