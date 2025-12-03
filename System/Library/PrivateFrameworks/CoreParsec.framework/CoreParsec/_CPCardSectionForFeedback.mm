@interface _CPCardSectionForFeedback
- (BOOL)isEqual:(id)equal;
- (_CPCardSectionForFeedback)initWithFacade:(id)facade;
- (unint64_t)hash;
- (void)addButtons:(id)buttons;
- (void)addCardSections:(id)sections;
- (void)addLeadingSwipeButtonItems:(id)items;
- (void)addTrailingSwipeButtonItems:(id)items;
- (void)setButtons:(id)buttons;
- (void)setCardSections:(id)sections;
- (void)setLeadingSwipeButtonItems:(id)items;
- (void)setTrailingSwipeButtonItems:(id)items;
- (void)writeTo:(id)to;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_59;
  }

  cardSectionId = [(_CPCardSectionForFeedback *)self cardSectionId];
  cardSectionId2 = [equalCopy cardSectionId];
  if ((cardSectionId != 0) == (cardSectionId2 == 0))
  {
    goto LABEL_58;
  }

  cardSectionId3 = [(_CPCardSectionForFeedback *)self cardSectionId];
  if (cardSectionId3)
  {
    v8 = cardSectionId3;
    cardSectionId4 = [(_CPCardSectionForFeedback *)self cardSectionId];
    cardSectionId5 = [equalCopy cardSectionId];
    v11 = [cardSectionId4 isEqual:cardSectionId5];

    if (!v11)
    {
      goto LABEL_59;
    }
  }

  else
  {
  }

  cardSectionId = [(_CPCardSectionForFeedback *)self actionTarget];
  cardSectionId2 = [equalCopy actionTarget];
  if ((cardSectionId != 0) == (cardSectionId2 == 0))
  {
    goto LABEL_58;
  }

  actionTarget = [(_CPCardSectionForFeedback *)self actionTarget];
  if (actionTarget)
  {
    v13 = actionTarget;
    actionTarget2 = [(_CPCardSectionForFeedback *)self actionTarget];
    actionTarget3 = [equalCopy actionTarget];
    v16 = [actionTarget2 isEqual:actionTarget3];

    if (!v16)
    {
      goto LABEL_59;
    }
  }

  else
  {
  }

  cardSectionId = [(_CPCardSectionForFeedback *)self actionDestination];
  cardSectionId2 = [equalCopy actionDestination];
  if ((cardSectionId != 0) == (cardSectionId2 == 0))
  {
    goto LABEL_58;
  }

  actionDestination = [(_CPCardSectionForFeedback *)self actionDestination];
  if (actionDestination)
  {
    v18 = actionDestination;
    actionDestination2 = [(_CPCardSectionForFeedback *)self actionDestination];
    actionDestination3 = [equalCopy actionDestination];
    v21 = [actionDestination2 isEqual:actionDestination3];

    if (!v21)
    {
      goto LABEL_59;
    }
  }

  else
  {
  }

  cardSectionId = [(_CPCardSectionForFeedback *)self resultId];
  cardSectionId2 = [equalCopy resultId];
  if ((cardSectionId != 0) == (cardSectionId2 == 0))
  {
    goto LABEL_58;
  }

  resultId = [(_CPCardSectionForFeedback *)self resultId];
  if (resultId)
  {
    v23 = resultId;
    resultId2 = [(_CPCardSectionForFeedback *)self resultId];
    resultId3 = [equalCopy resultId];
    v26 = [resultId2 isEqual:resultId3];

    if (!v26)
    {
      goto LABEL_59;
    }
  }

  else
  {
  }

  commandType = self->_commandType;
  if (commandType != [equalCopy commandType])
  {
    goto LABEL_59;
  }

  cardSectionId = [(_CPCardSectionForFeedback *)self commandDetail];
  cardSectionId2 = [equalCopy commandDetail];
  if ((cardSectionId != 0) == (cardSectionId2 == 0))
  {
    goto LABEL_58;
  }

  commandDetail = [(_CPCardSectionForFeedback *)self commandDetail];
  if (commandDetail)
  {
    v29 = commandDetail;
    commandDetail2 = [(_CPCardSectionForFeedback *)self commandDetail];
    commandDetail3 = [equalCopy commandDetail];
    v32 = [commandDetail2 isEqual:commandDetail3];

    if (!v32)
    {
      goto LABEL_59;
    }
  }

  else
  {
  }

  cardSectionId = [(_CPCardSectionForFeedback *)self cardSections];
  cardSectionId2 = [equalCopy cardSections];
  if ((cardSectionId != 0) == (cardSectionId2 == 0))
  {
    goto LABEL_58;
  }

  cardSections = [(_CPCardSectionForFeedback *)self cardSections];
  if (cardSections)
  {
    v34 = cardSections;
    cardSections2 = [(_CPCardSectionForFeedback *)self cardSections];
    cardSections3 = [equalCopy cardSections];
    v37 = [cardSections2 isEqual:cardSections3];

    if (!v37)
    {
      goto LABEL_59;
    }
  }

  else
  {
  }

  cardSectionType = self->_cardSectionType;
  if (cardSectionType != [equalCopy cardSectionType])
  {
    goto LABEL_59;
  }

  cardSectionId = [(_CPCardSectionForFeedback *)self cardSectionDetail];
  cardSectionId2 = [equalCopy cardSectionDetail];
  if ((cardSectionId != 0) == (cardSectionId2 == 0))
  {
    goto LABEL_58;
  }

  cardSectionDetail = [(_CPCardSectionForFeedback *)self cardSectionDetail];
  if (cardSectionDetail)
  {
    v40 = cardSectionDetail;
    cardSectionDetail2 = [(_CPCardSectionForFeedback *)self cardSectionDetail];
    cardSectionDetail3 = [equalCopy cardSectionDetail];
    v43 = [cardSectionDetail2 isEqual:cardSectionDetail3];

    if (!v43)
    {
      goto LABEL_59;
    }
  }

  else
  {
  }

  cardSectionId = [(_CPCardSectionForFeedback *)self buttons];
  cardSectionId2 = [equalCopy buttons];
  if ((cardSectionId != 0) == (cardSectionId2 == 0))
  {
    goto LABEL_58;
  }

  buttons = [(_CPCardSectionForFeedback *)self buttons];
  if (buttons)
  {
    v45 = buttons;
    buttons2 = [(_CPCardSectionForFeedback *)self buttons];
    buttons3 = [equalCopy buttons];
    v48 = [buttons2 isEqual:buttons3];

    if (!v48)
    {
      goto LABEL_59;
    }
  }

  else
  {
  }

  cardSectionId = [(_CPCardSectionForFeedback *)self leadingSwipeButtonItems];
  cardSectionId2 = [equalCopy leadingSwipeButtonItems];
  if ((cardSectionId != 0) == (cardSectionId2 == 0))
  {
    goto LABEL_58;
  }

  leadingSwipeButtonItems = [(_CPCardSectionForFeedback *)self leadingSwipeButtonItems];
  if (leadingSwipeButtonItems)
  {
    v50 = leadingSwipeButtonItems;
    leadingSwipeButtonItems2 = [(_CPCardSectionForFeedback *)self leadingSwipeButtonItems];
    leadingSwipeButtonItems3 = [equalCopy leadingSwipeButtonItems];
    v53 = [leadingSwipeButtonItems2 isEqual:leadingSwipeButtonItems3];

    if (!v53)
    {
      goto LABEL_59;
    }
  }

  else
  {
  }

  cardSectionId = [(_CPCardSectionForFeedback *)self trailingSwipeButtonItems];
  cardSectionId2 = [equalCopy trailingSwipeButtonItems];
  if ((cardSectionId != 0) == (cardSectionId2 == 0))
  {
    goto LABEL_58;
  }

  trailingSwipeButtonItems = [(_CPCardSectionForFeedback *)self trailingSwipeButtonItems];
  if (trailingSwipeButtonItems)
  {
    v55 = trailingSwipeButtonItems;
    trailingSwipeButtonItems2 = [(_CPCardSectionForFeedback *)self trailingSwipeButtonItems];
    trailingSwipeButtonItems3 = [equalCopy trailingSwipeButtonItems];
    v58 = [trailingSwipeButtonItems2 isEqual:trailingSwipeButtonItems3];

    if (!v58)
    {
      goto LABEL_59;
    }
  }

  else
  {
  }

  cardSectionId = [(_CPCardSectionForFeedback *)self applicationBundleIdentifier];
  cardSectionId2 = [equalCopy applicationBundleIdentifier];
  if ((cardSectionId != 0) == (cardSectionId2 == 0))
  {
LABEL_58:

    goto LABEL_59;
  }

  applicationBundleIdentifier = [(_CPCardSectionForFeedback *)self applicationBundleIdentifier];
  if (!applicationBundleIdentifier)
  {

LABEL_62:
    v64 = 1;
    goto LABEL_60;
  }

  v60 = applicationBundleIdentifier;
  applicationBundleIdentifier2 = [(_CPCardSectionForFeedback *)self applicationBundleIdentifier];
  applicationBundleIdentifier3 = [equalCopy applicationBundleIdentifier];
  v63 = [applicationBundleIdentifier2 isEqual:applicationBundleIdentifier3];

  if (v63)
  {
    goto LABEL_62;
  }

LABEL_59:
  v64 = 0;
LABEL_60:

  return v64;
}

- (void)writeTo:(id)to
{
  v66 = *MEMORY[0x1E69E9840];
  toCopy = to;
  cardSectionId = [(_CPCardSectionForFeedback *)self cardSectionId];

  if (cardSectionId)
  {
    cardSectionId = self->_cardSectionId;
    PBDataWriterWriteStringField();
  }

  actionTarget = [(_CPCardSectionForFeedback *)self actionTarget];

  if (actionTarget)
  {
    actionTarget = self->_actionTarget;
    PBDataWriterWriteStringField();
  }

  actionDestination = [(_CPCardSectionForFeedback *)self actionDestination];

  if (actionDestination)
  {
    actionDestination = self->_actionDestination;
    PBDataWriterWriteStringField();
  }

  resultId = [(_CPCardSectionForFeedback *)self resultId];

  if (resultId)
  {
    resultId = self->_resultId;
    PBDataWriterWriteStringField();
  }

  if ([(_CPCardSectionForFeedback *)self commandType])
  {
    commandType = self->_commandType;
    PBDataWriterWriteInt32Field();
  }

  commandDetail = [(_CPCardSectionForFeedback *)self commandDetail];

  if (commandDetail)
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

  cardSectionDetail = [(_CPCardSectionForFeedback *)self cardSectionDetail];

  if (cardSectionDetail)
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

  applicationBundleIdentifier = [(_CPCardSectionForFeedback *)self applicationBundleIdentifier];

  if (applicationBundleIdentifier)
  {
    applicationBundleIdentifier = self->_applicationBundleIdentifier;
    PBDataWriterWriteStringField();
  }

  v45 = *MEMORY[0x1E69E9840];
}

- (void)addTrailingSwipeButtonItems:(id)items
{
  itemsCopy = items;
  trailingSwipeButtonItems = self->_trailingSwipeButtonItems;
  v8 = itemsCopy;
  if (!trailingSwipeButtonItems)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_trailingSwipeButtonItems;
    self->_trailingSwipeButtonItems = array;

    itemsCopy = v8;
    trailingSwipeButtonItems = self->_trailingSwipeButtonItems;
  }

  [(NSArray *)trailingSwipeButtonItems addObject:itemsCopy];
}

- (void)setTrailingSwipeButtonItems:(id)items
{
  v4 = [items mutableCopy];
  trailingSwipeButtonItems = self->_trailingSwipeButtonItems;
  self->_trailingSwipeButtonItems = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addLeadingSwipeButtonItems:(id)items
{
  itemsCopy = items;
  leadingSwipeButtonItems = self->_leadingSwipeButtonItems;
  v8 = itemsCopy;
  if (!leadingSwipeButtonItems)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_leadingSwipeButtonItems;
    self->_leadingSwipeButtonItems = array;

    itemsCopy = v8;
    leadingSwipeButtonItems = self->_leadingSwipeButtonItems;
  }

  [(NSArray *)leadingSwipeButtonItems addObject:itemsCopy];
}

- (void)setLeadingSwipeButtonItems:(id)items
{
  v4 = [items mutableCopy];
  leadingSwipeButtonItems = self->_leadingSwipeButtonItems;
  self->_leadingSwipeButtonItems = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addButtons:(id)buttons
{
  buttonsCopy = buttons;
  buttons = self->_buttons;
  v8 = buttonsCopy;
  if (!buttons)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_buttons;
    self->_buttons = array;

    buttonsCopy = v8;
    buttons = self->_buttons;
  }

  [(NSArray *)buttons addObject:buttonsCopy];
}

- (void)setButtons:(id)buttons
{
  v4 = [buttons mutableCopy];
  buttons = self->_buttons;
  self->_buttons = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addCardSections:(id)sections
{
  sectionsCopy = sections;
  cardSections = self->_cardSections;
  v8 = sectionsCopy;
  if (!cardSections)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_cardSections;
    self->_cardSections = array;

    sectionsCopy = v8;
    cardSections = self->_cardSections;
  }

  [(NSArray *)cardSections addObject:sectionsCopy];
}

- (void)setCardSections:(id)sections
{
  v4 = [sections mutableCopy];
  cardSections = self->_cardSections;
  self->_cardSections = v4;

  MEMORY[0x1EEE66BB8]();
}

- (_CPCardSectionForFeedback)initWithFacade:(id)facade
{
  v92[1] = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_CPCardSectionForFeedback *)self init];
  if (v5)
  {
    cardSectionId = [facadeCopy cardSectionId];
    [(_CPCardSectionForFeedback *)v5 setCardSectionId:cardSectionId];

    resultIdentifier = [facadeCopy resultIdentifier];
    [(_CPCardSectionForFeedback *)v5 setResultId:resultIdentifier];

    punchoutOptions = [facadeCopy punchoutOptions];
    firstObject = [punchoutOptions firstObject];
    preferredOpenableURL = [firstObject preferredOpenableURL];
    absoluteString = [preferredOpenableURL absoluteString];
    [(_CPCardSectionForFeedback *)v5 setActionDestination:absoluteString];

    if ([facadeCopy isMemberOfClass:objc_opt_class()] || objc_msgSend(facadeCopy, "isMemberOfClass:", objc_opt_class()))
    {
      goto LABEL_4;
    }

    if ([facadeCopy isMemberOfClass:objc_opt_class()])
    {
      buttons = [facadeCopy buttons];
      goto LABEL_5;
    }

    if ([facadeCopy isMemberOfClass:objc_opt_class()])
    {
      buttonItem = [facadeCopy buttonItem];

      if (buttonItem)
      {
        buttonItem2 = [facadeCopy buttonItem];
        v92[0] = buttonItem2;
        buttonItems2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v92 count:1];
LABEL_149:
        v13 = buttonItems2;

LABEL_6:
        v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v15 = v14;
        if (v13)
        {
          [v14 addObjectsFromArray:v13];
        }

LABEL_8:
        leadingSwipeButtonItems = [facadeCopy leadingSwipeButtonItems];

        if (leadingSwipeButtonItems)
        {
          leadingSwipeButtonItems2 = [facadeCopy leadingSwipeButtonItems];
          [v15 addObjectsFromArray:leadingSwipeButtonItems2];
        }

        trailingSwipeButtonItems = [facadeCopy trailingSwipeButtonItems];

        if (trailingSwipeButtonItems)
        {
          trailingSwipeButtonItems2 = [facadeCopy trailingSwipeButtonItems];
          [v15 addObjectsFromArray:trailingSwipeButtonItems2];
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
          buttonCardSections = [facadeCopy buttonCardSections];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
LABEL_24:
            buttonCardSections = [facadeCopy cardSections];
            goto LABEL_27;
          }

          buttonCardSections = 0;
        }

LABEL_27:
        v82 = 0u;
        v83 = 0u;
        v80 = 0u;
        v81 = 0u;
        v29 = buttonCardSections;
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
          v66 = facadeCopy;
          v35 = facadeCopy;
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
                values = [v37 values];
                v39 = [values countByEnumeratingWithState:&v72 objects:v88 count:16];
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
                        objc_enumerationMutation(values);
                      }

                      v43 = *(*(&v72 + 1) + 8 * k);
                      v44 = objc_opt_new();
                      cardSectionId2 = [v35 cardSectionId];
                      [v44 setCardSectionId:cardSectionId2];

                      command = [v43 command];
                      [v44 setCommandType:{objc_msgSend(command, "_cpCommandType")}];

                      command2 = [v43 command];
                      commandDetail = [command2 commandDetail];
                      [v44 setCommandDetail:commandDetail];

                      [(_CPCardSectionForFeedback *)v5 addCardSections:v44];
                    }

                    v40 = [values countByEnumeratingWithState:&v72 objects:v88 count:16];
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

          facadeCopy = v66;
          v15 = v67;
          v29 = v65;
        }

        command3 = [facadeCopy command];
        -[_CPCardSectionForFeedback setCommandType:](v5, "setCommandType:", [command3 _cpCommandType]);

        commandDetail2 = [facadeCopy commandDetail];
        [(_CPCardSectionForFeedback *)v5 setCommandDetail:commandDetail2];

        type = [facadeCopy type];

        if (type)
        {
          type2 = [facadeCopy type];
          if ([type2 compare:@"none" options:3])
          {
            if ([type2 compare:@"app_link" options:3])
            {
              if ([type2 compare:@"description" options:3])
              {
                v53 = 3;
                if ([type2 compare:@"key_value_data" options:3])
                {
                  if ([type2 compare:@"map" options:3])
                  {
                    if ([type2 compare:@"media_info" options:3])
                    {
                      if ([type2 compare:@"media_player" options:3])
                      {
                        if ([type2 compare:@"now_playing" options:3])
                        {
                          if ([type2 compare:@"rich_title" options:3])
                          {
                            if ([type2 compare:@"row" options:3])
                            {
                              if ([type2 compare:@"scoreboard" options:3])
                              {
                                if ([type2 compare:@"social_media_post" options:3])
                                {
                                  if ([type2 compare:@"stock_chart" options:3])
                                  {
                                    if ([type2 compare:@"table_header_row" options:3])
                                    {
                                      if ([type2 compare:@"table_row" options:3])
                                      {
                                        if ([type2 compare:@"text_columns" options:3])
                                        {
                                          if ([type2 compare:@"title" options:3])
                                          {
                                            if ([type2 compare:@"track_list" options:3])
                                            {
                                              if ([type2 compare:@"audio_playback" options:3])
                                              {
                                                if ([type2 compare:@"flight" options:3])
                                                {
                                                  if ([type2 compare:@"activity_indicator" options:3])
                                                  {
                                                    if ([type2 compare:@"web" options:3])
                                                    {
                                                      if ([type2 compare:@"message" options:3])
                                                      {
                                                        if ([type2 compare:@"detailed_row" options:3])
                                                        {
                                                          if ([type2 compare:@"images" options:3])
                                                          {
                                                            if ([type2 compare:@"suggestion" options:3])
                                                            {
                                                              if ([type2 compare:@"selectable_grid" options:3])
                                                              {
                                                                if ([type2 compare:@"section_header" options:3])
                                                                {
                                                                  if ([type2 compare:@"meta_info" options:3])
                                                                  {
                                                                    if ([type2 compare:@"watch_list" options:3])
                                                                    {
                                                                      if ([type2 compare:@"maps_detailed_row" options:3])
                                                                      {
                                                                        if ([type2 compare:@"button" options:3])
                                                                        {
                                                                          if ([type2 compare:@"horizontal_button" options:3])
                                                                          {
                                                                            if ([type2 compare:@"vertical_layout" options:3])
                                                                            {
                                                                              if ([type2 compare:@"product" options:3])
                                                                              {
                                                                                if ([type2 compare:@"horizontal_scroll" options:3])
                                                                                {
                                                                                  if ([type2 compare:@"media_remote_control" options:3])
                                                                                  {
                                                                                    if ([type2 compare:@"map_place" options:3])
                                                                                    {
                                                                                      if ([type2 compare:@"compact_row" options:3])
                                                                                      {
                                                                                        if ([type2 compare:@"world_map" options:3])
                                                                                        {
                                                                                          if ([type2 compare:@"attribution_footer" options:3])
                                                                                          {
                                                                                            if ([type2 compare:@"grid" options:3])
                                                                                            {
                                                                                              if ([type2 compare:@"person_header" options:3])
                                                                                              {
                                                                                                if ([type2 compare:@"color_bar" options:3])
                                                                                                {
                                                                                                  if ([type2 compare:@"split" options:3])
                                                                                                  {
                                                                                                    if ([type2 compare:@"link_presentation" options:3])
                                                                                                    {
                                                                                                      if ([type2 compare:@"find_my" options:3])
                                                                                                      {
                                                                                                        if ([type2 compare:@"hero" options:3])
                                                                                                        {
                                                                                                          if ([type2 compare:@"news" options:3])
                                                                                                          {
                                                                                                            if ([type2 compare:@"mini" options:3])
                                                                                                            {
                                                                                                              if ([type2 compare:@"info" options:3])
                                                                                                              {
                                                                                                                if ([type2 compare:@"collection" options:3])
                                                                                                                {
                                                                                                                  if ([type2 compare:@"combined" options:3])
                                                                                                                  {
                                                                                                                    if ([type2 compare:@"response_wrapper" options:3])
                                                                                                                    {
                                                                                                                      if ([type2 compare:@"listen_to" options:3])
                                                                                                                      {
                                                                                                                        if ([type2 compare:@"watch_now" options:3])
                                                                                                                        {
                                                                                                                          if ([type2 compare:@"stroke_animation" options:3])
                                                                                                                          {
                                                                                                                            if ([type2 compare:@"button_list" options:3])
                                                                                                                            {
                                                                                                                              if ([type2 compare:@"command_row" options:3])
                                                                                                                              {
                                                                                                                                if ([type2 compare:@"leading_trailing" options:3])
                                                                                                                                {
                                                                                                                                  if ([type2 compare:@"hero_title" options:3])
                                                                                                                                  {
                                                                                                                                    if ([type2 compare:@"archive_view" options:3])
                                                                                                                                    {
                                                                                                                                      if ([type2 compare:@"app_icon" options:3])
                                                                                                                                      {
                                                                                                                                        if ([type2 compare:@"large_title_detailed_row" options:3])
                                                                                                                                        {
                                                                                                                                          if ([type2 compare:@"rf_summary_item_short_number" options:3])
                                                                                                                                          {
                                                                                                                                            if ([type2 compare:@"rf_summary_item_text" options:3])
                                                                                                                                            {
                                                                                                                                              if ([type2 compare:@"rf_summary_item_standard" options:3])
                                                                                                                                              {
                                                                                                                                                if ([type2 compare:@"rf_fact_item_short_number" options:3])
                                                                                                                                                {
                                                                                                                                                  if ([type2 compare:@"rf_fact_item_standard" options:3])
                                                                                                                                                  {
                                                                                                                                                    if ([type2 compare:@"rf_long_item_standard" options:3])
                                                                                                                                                    {
                                                                                                                                                      if ([type2 compare:@"rf_primary_header_rich" options:3])
                                                                                                                                                      {
                                                                                                                                                        if ([type2 compare:@"rf_primary_header_standard" options:3])
                                                                                                                                                        {
                                                                                                                                                          if ([type2 compare:@"rf_reference_footnote" options:3])
                                                                                                                                                          {
                                                                                                                                                            if ([type2 compare:@"rf_reference_rich" options:3])
                                                                                                                                                            {
                                                                                                                                                              if ([type2 compare:@"rf_simple_item_rich" options:3])
                                                                                                                                                              {
                                                                                                                                                                if ([type2 compare:@"rf_simple_item_standard" options:3])
                                                                                                                                                                {
                                                                                                                                                                  if ([type2 compare:@"rf_summary_item_aligned_text" options:3])
                                                                                                                                                                  {
                                                                                                                                                                    if ([type2 compare:@"rf_expandable_standard" options:3])
                                                                                                                                                                    {
                                                                                                                                                                      if ([type2 compare:@"rf_fact_item_button" options:3])
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
          type2 = NSStringFromClass(v54);
          if (([type2 isEqualToString:@"SFNoneCardSection"] & 1) == 0)
          {
            if (([type2 isEqualToString:@"SFAppLinkCardSection"] & 1) == 0)
            {
              if (([type2 isEqualToString:@"SFDescriptionCardSection"] & 1) == 0)
              {
                if (([type2 isEqualToString:@"SFKeyValueDataCardSection"] & 1) == 0)
                {
                  if (([type2 isEqualToString:@"SFMapCardSection"] & 1) == 0)
                  {
                    if (([type2 isEqualToString:@"SFMediaInfoCardSection"] & 1) == 0)
                    {
                      if (([type2 isEqualToString:@"SFMediaPlayerCardSection"] & 1) == 0)
                      {
                        if (([type2 isEqualToString:@"SFNowPlayingCardSection"] & 1) == 0)
                        {
                          if (([type2 isEqualToString:@"SFRichTitleCardSection"] & 1) == 0)
                          {
                            if (([type2 isEqualToString:@"SFRowCardSection"] & 1) == 0)
                            {
                              if (([type2 isEqualToString:@"SFScoreboardCardSection"] & 1) == 0)
                              {
                                if (([type2 isEqualToString:@"SFSocialMediaPostCardSection"] & 1) == 0)
                                {
                                  if (([type2 isEqualToString:@"SFStockChartCardSection"] & 1) == 0)
                                  {
                                    if (([type2 isEqualToString:@"SFTableHeaderRowCardSection"] & 1) == 0)
                                    {
                                      if (([type2 isEqualToString:@"SFTableRowCardSection"] & 1) == 0)
                                      {
                                        if (([type2 isEqualToString:@"SFTextColumnsCardSection"] & 1) == 0)
                                        {
                                          if (([type2 isEqualToString:@"SFTitleCardSection"] & 1) == 0)
                                          {
                                            if (([type2 isEqualToString:@"SFTrackListCardSection"] & 1) == 0)
                                            {
                                              if (([type2 isEqualToString:@"SFAudioPlaybackCardSection"] & 1) == 0)
                                              {
                                                if (([type2 isEqualToString:@"SFFlightCardSection"] & 1) == 0)
                                                {
                                                  if (([type2 isEqualToString:@"SFActivityIndicatorCardSection"] & 1) == 0)
                                                  {
                                                    if (([type2 isEqualToString:@"SFWebCardSection"] & 1) == 0)
                                                    {
                                                      if (([type2 isEqualToString:@"SFMessageCardSection"] & 1) == 0)
                                                      {
                                                        if (([type2 isEqualToString:@"SFDetailedRowCardSection"] & 1) == 0)
                                                        {
                                                          if (([type2 isEqualToString:@"SFImagesCardSection"] & 1) == 0)
                                                          {
                                                            if (([type2 isEqualToString:@"SFSuggestionCardSection"] & 1) == 0)
                                                            {
                                                              if (([type2 isEqualToString:@"SFSelectableGridCardSection"] & 1) == 0)
                                                              {
                                                                if (([type2 isEqualToString:@"SFSectionHeaderCardSection"] & 1) == 0)
                                                                {
                                                                  if (([type2 isEqualToString:@"SFMetaInfoCardSection"] & 1) == 0)
                                                                  {
                                                                    if (([type2 isEqualToString:@"SFWatchListCardSection"] & 1) == 0)
                                                                    {
                                                                      if (([type2 isEqualToString:@"SFMapsDetailedRowCardSection"] & 1) == 0)
                                                                      {
                                                                        if (([type2 isEqualToString:@"SFButtonCardSection"] & 1) == 0)
                                                                        {
                                                                          if (([type2 isEqualToString:@"SFHorizontalButtonCardSection"] & 1) == 0)
                                                                          {
                                                                            if (([type2 isEqualToString:@"SFVerticalLayoutCardSection"] & 1) == 0)
                                                                            {
                                                                              if (([type2 isEqualToString:@"SFProductCardSection"] & 1) == 0)
                                                                              {
                                                                                if (([type2 isEqualToString:@"SFHorizontalScrollCardSection"] & 1) == 0)
                                                                                {
                                                                                  if (([type2 isEqualToString:@"SFMediaRemoteControlCardSection"] & 1) == 0)
                                                                                  {
                                                                                    if (([type2 isEqualToString:@"SFMapPlaceCardSection"] & 1) == 0)
                                                                                    {
                                                                                      if (([type2 isEqualToString:@"SFCompactRowCardSection"] & 1) == 0)
                                                                                      {
                                                                                        if (([type2 isEqualToString:@"SFWorldMapCardSection"] & 1) == 0)
                                                                                        {
                                                                                          if (([type2 isEqualToString:@"SFAttributionFooterCardSection"] & 1) == 0)
                                                                                          {
                                                                                            if (([type2 isEqualToString:@"SFGridCardSection"] & 1) == 0)
                                                                                            {
                                                                                              if (([type2 isEqualToString:@"SFPersonHeaderCardSection"] & 1) == 0)
                                                                                              {
                                                                                                if (([type2 isEqualToString:@"SFColorBarCardSection"] & 1) == 0)
                                                                                                {
                                                                                                  if (([type2 isEqualToString:@"SFSplitCardSection"] & 1) == 0)
                                                                                                  {
                                                                                                    if (([type2 isEqualToString:@"SFLinkPresentationCardSection"] & 1) == 0)
                                                                                                    {
                                                                                                      if (([type2 isEqualToString:@"SFFindMyCardSection"] & 1) == 0)
                                                                                                      {
                                                                                                        if (([type2 isEqualToString:@"SFHeroCardSection"] & 1) == 0)
                                                                                                        {
                                                                                                          if (([type2 isEqualToString:@"SFNewsCardSection"] & 1) == 0)
                                                                                                          {
                                                                                                            if (([type2 isEqualToString:@"SFMiniCardSection"] & 1) == 0)
                                                                                                            {
                                                                                                              if (([type2 isEqualToString:@"SFInfoCardSection"] & 1) == 0)
                                                                                                              {
                                                                                                                if (([type2 isEqualToString:@"SFCollectionCardSection"] & 1) == 0)
                                                                                                                {
                                                                                                                  if (([type2 isEqualToString:@"SFCombinedCardSection"] & 1) == 0)
                                                                                                                  {
                                                                                                                    if (([type2 isEqualToString:@"SFResponseWrapperCardSection"] & 1) == 0)
                                                                                                                    {
                                                                                                                      if (([type2 isEqualToString:@"SFListenToCardSection"] & 1) == 0)
                                                                                                                      {
                                                                                                                        if (([type2 isEqualToString:@"SFWatchNowCardSection"] & 1) == 0)
                                                                                                                        {
                                                                                                                          if (([type2 isEqualToString:@"SFStrokeAnimationCardSection"] & 1) == 0)
                                                                                                                          {
                                                                                                                            if (([type2 isEqualToString:@"SFButtonListCardSection"] & 1) == 0)
                                                                                                                            {
                                                                                                                              if (([type2 isEqualToString:@"SFCommandRowCardSection"] & 1) == 0)
                                                                                                                              {
                                                                                                                                if (([type2 isEqualToString:@"SFLeadingTrailingCardSection"] & 1) == 0)
                                                                                                                                {
                                                                                                                                  if (([type2 isEqualToString:@"SFHeroTitleCardSection"] & 1) == 0)
                                                                                                                                  {
                                                                                                                                    if (([type2 isEqualToString:@"SFArchiveViewCardSection"] & 1) == 0)
                                                                                                                                    {
                                                                                                                                      if (([type2 isEqualToString:@"SFAppIconCardSection"] & 1) == 0)
                                                                                                                                      {
                                                                                                                                        if (([type2 isEqualToString:@"SFLargeTitleDetailedRowCardSection"] & 1) == 0)
                                                                                                                                        {
                                                                                                                                          if (([type2 isEqualToString:@"RFSummaryItemShortNumberCardSection"] & 1) == 0)
                                                                                                                                          {
                                                                                                                                            if (([type2 isEqualToString:@"RFSummaryItemTextCardSection"] & 1) == 0)
                                                                                                                                            {
                                                                                                                                              if (([type2 isEqualToString:@"RFSummaryItemStandardCardSection"] & 1) == 0)
                                                                                                                                              {
                                                                                                                                                if (([type2 isEqualToString:@"RFFactItemShortNumberCardSection"] & 1) == 0)
                                                                                                                                                {
                                                                                                                                                  if (([type2 isEqualToString:@"RFFactItemStandardCardSection"] & 1) == 0)
                                                                                                                                                  {
                                                                                                                                                    if (([type2 isEqualToString:@"RFLongItemStandardCardSection"] & 1) == 0)
                                                                                                                                                    {
                                                                                                                                                      if (([type2 isEqualToString:@"RFPrimaryHeaderRichCardSection"] & 1) == 0)
                                                                                                                                                      {
                                                                                                                                                        if (([type2 isEqualToString:@"RFPrimaryHeaderStandardCardSection"] & 1) == 0)
                                                                                                                                                        {
                                                                                                                                                          if (([type2 isEqualToString:@"RFReferenceFootnoteCardSection"] & 1) == 0)
                                                                                                                                                          {
                                                                                                                                                            if (([type2 isEqualToString:@"RFReferenceRichCardSection"] & 1) == 0)
                                                                                                                                                            {
                                                                                                                                                              if (([type2 isEqualToString:@"RFSimpleItemRichCardSection"] & 1) == 0)
                                                                                                                                                              {
                                                                                                                                                                if (([type2 isEqualToString:@"RFSimpleItemStandardCardSection"] & 1) == 0)
                                                                                                                                                                {
                                                                                                                                                                  if (([type2 isEqualToString:@"RFSummaryItemAlignedTextCardSection"] & 1) == 0)
                                                                                                                                                                  {
                                                                                                                                                                    if (([type2 isEqualToString:@"RFExpandableStandardCardSection"] & 1) == 0)
                                                                                                                                                                    {
                                                                                                                                                                      if ([type2 isEqualToString:@"RFFactItemButtonCardSection"])
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
                cardSectionDetail = [facadeCopy cardSectionDetail];
                [(_CPCardSectionForFeedback *)v5 setCardSectionDetail:cardSectionDetail];

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

    else if ([facadeCopy isMemberOfClass:objc_opt_class()])
    {
      internalDetailedRowCardSection = [facadeCopy internalDetailedRowCardSection];
      buttonItems = [internalDetailedRowCardSection buttonItems];

      if (buttonItems)
      {
        buttonItem2 = [facadeCopy internalDetailedRowCardSection];
        buttonItems2 = [buttonItem2 buttonItems];
        goto LABEL_149;
      }
    }

    else if ([facadeCopy isMemberOfClass:objc_opt_class()])
    {
      buttonItems3 = [facadeCopy buttonItems];

      if (buttonItems3)
      {
LABEL_4:
        buttons = [facadeCopy buttonItems];
LABEL_5:
        v13 = buttons;
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