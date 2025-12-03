@interface CNComposeRecipientTableViewCell
+ (BOOL)avatarsAreHidden;
+ (double)additionalSeparatorInset;
+ (id)_attributedStringForGroupMembersOfRecipient:(id)recipient matchedStrings:(id)strings constrainedToWidth:(double)width font:(id)font;
+ (id)_attributedStringForListOfGroupMemberNames:(id)names numberTruncated:(unint64_t)truncated;
+ (id)_attributedTitleForRecipient:(id)recipient matchedStrings:(id)strings constrainedToWidth:(double)width font:(id)font;
+ (id)attributedStringWithBoldedRangesForMatchedStrings:(id)strings inString:(id)string font:(id)font boldAllMatches:(BOOL)matches;
- (CNComposeRecipientTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (CNComposeRecipientTableViewCellDelegate)delegate;
- (double)trailingButtonWidth;
- (id)assembleContactAvatarsForRecipient:(id)recipient;
- (void)actionButtonTapped;
- (void)applyActionButtonTouchInsets;
- (void)assignContactAvatarsToController:(id)controller;
- (void)assignImageDataToController:(id)controller;
- (void)assignImageToController:(id)controller;
- (void)containerViewDidLayoutArrangedSubviews:(id)subviews;
- (void)prepareForReuse;
- (void)setActionType:(unint64_t)type animated:(BOOL)animated;
- (void)setRecipient:(id)recipient;
- (void)setupAvatarViewControllerWithSettings:(id)settings;
- (void)updateButtonColor;
- (void)updateLabelsContrainedToWidth:(double)width;
@end

@implementation CNComposeRecipientTableViewCell

+ (double)additionalSeparatorInset
{
  avatarsAreHidden = [self avatarsAreHidden];
  result = 0.0;
  if ((avatarsAreHidden & 1) == 0)
  {
    v5.receiver = self;
    v5.super_class = &OBJC_METACLASS___CNComposeRecipientTableViewCell;
    objc_msgSendSuper2(&v5, sel_additionalSeparatorInset, 0.0);
  }

  return result;
}

- (CNComposeRecipientTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v16.receiver = self;
  v16.super_class = CNComposeRecipientTableViewCell;
  v4 = [(CNComposeTableViewCell *)&v16 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    if (CNComposeApplicationPreferredContentSizeIsLargerThanLarge())
    {
      detailLabel = [(CNComposeTableViewCell *)v4 detailLabel];
      [detailLabel setNumberOfLines:0];

      detailLabel2 = [(CNComposeTableViewCell *)v4 detailLabel];
      LODWORD(v7) = 1.0;
      [detailLabel2 _setHyphenationFactor:v7];

      titleLabel = [(CNComposeTableViewCell *)v4 titleLabel];
      [titleLabel setNumberOfLines:0];

      titleLabel2 = [(CNComposeTableViewCell *)v4 titleLabel];
      LODWORD(v10) = 1.0;
      [titleLabel2 _setHyphenationFactor:v10];
    }

    v11 = objc_opt_new();
    v12 = [CNComposeRecipientActionButton systemButtonWithImage:v11 target:v4 action:sel_actionButtonTapped];

    [objc_opt_class() requireIntrinsicSizeForView:v12];
    [(CNComposeRecipientTableViewCell *)v4 setActionButton:v12];
    containerView = [(NUITableViewContainerCell *)v4 containerView];
    [containerView insertArrangedSubview:v12 atIndex:1];

    [(CNComposeRecipientTableViewCell *)v4 setShouldHighlightCompleteMatches:1];
    v14 = v4;
  }

  return v4;
}

+ (BOOL)avatarsAreHidden
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x1E69DC668] preferredContentSizeCategory];
  v4 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, *MEMORY[0x1E69DDC38]) == NSOrderedDescending;

  return v4;
}

- (void)containerViewDidLayoutArrangedSubviews:(id)subviews
{
  v6.receiver = self;
  v6.super_class = CNComposeRecipientTableViewCell;
  subviewsCopy = subviews;
  [(CNComposeTableViewCell *)&v6 containerViewDidLayoutArrangedSubviews:subviewsCopy];
  v5 = [(NUITableViewContainerCell *)self containerView:v6.receiver];

  if (v5 == subviewsCopy)
  {
    [(CNComposeRecipientTableViewCell *)self applyActionButtonTouchInsets];
  }
}

- (void)applyActionButtonTouchInsets
{
  actionButton = [(CNComposeRecipientTableViewCell *)self actionButton];

  if (actionButton)
  {
    actionButton2 = [(CNComposeRecipientTableViewCell *)self actionButton];
    [actionButton2 _touchInsets];

    actionButton3 = [(CNComposeRecipientTableViewCell *)self actionButton];
    [actionButton3 intrinsicContentSize];
    v7 = v6;

    containerView = [(NUITableViewContainerCell *)self containerView];
    [containerView bounds];
    v10 = v9;
    v11 = v7 * -0.5;

    if ([(CNComposeRecipientTableViewCell *)self _shouldReverseLayoutDirection])
    {
      actionButton4 = [(CNComposeRecipientTableViewCell *)self actionButton];
      [actionButton4 frame];
      MinX = CGRectGetMinX(v25);
    }

    else
    {
      actionButton4 = [(NUITableViewContainerCell *)self containerView];
      [actionButton4 bounds];
      MaxX = CGRectGetMaxX(v26);
      actionButton5 = [(CNComposeRecipientTableViewCell *)self actionButton];
      [actionButton5 frame];
      MinX = MaxX - CGRectGetMaxX(v27);
    }

    v16 = v10 + v11;

    actionButton6 = [(CNComposeRecipientTableViewCell *)self actionButton];
    v18 = actionButton6;
    if (actionButton6)
    {
      [actionButton6 transform];
    }

    else
    {
      memset(&v24, 0, sizeof(v24));
    }

    IsIdentity = CGAffineTransformIsIdentity(&v24);

    v20 = -v16;
    if (IsIdentity)
    {
      v21 = -MinX;
    }

    else
    {
      v21 = -v16;
    }

    if (IsIdentity)
    {
      v22 = v20;
    }

    else
    {
      v22 = -MinX;
    }

    v23 = [(CNComposeRecipientTableViewCell *)self actionButton:*&v24.a];
    [v23 _setTouchInsets:{v22, v21, v22, v21}];
  }
}

+ (id)_attributedStringForGroupMembersOfRecipient:(id)recipient matchedStrings:(id)strings constrainedToWidth:(double)width font:(id)font
{
  v41 = *MEMORY[0x1E69E9840];
  recipientCopy = recipient;
  stringsCopy = strings;
  fontCopy = font;
  v35 = objc_opt_new();
  v33 = recipientCopy;
  v34 = objc_opt_new();
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  sortedChildren = [recipientCopy sortedChildren];
  v14 = [sortedChildren countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v37;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v37 != v16)
        {
          objc_enumerationMutation(sortedChildren);
        }

        v18 = *(*(&v36 + 1) + 8 * i);
        compositeName = [v18 compositeName];
        v20 = [compositeName length];

        if (v20)
        {
          compositeName2 = [v18 compositeName];
          v22 = [self attributedStringWithBoldedRangesForMatchedStrings:stringsCopy inString:compositeName2 font:fontCopy boldAllMatches:1];
          [v35 addObject:v22];
        }

        shortName = [v18 shortName];
        v24 = [shortName length];

        if (v24)
        {
          shortName2 = [v18 shortName];
          v26 = [self attributedStringWithBoldedRangesForMatchedStrings:stringsCopy inString:shortName2 font:fontCopy boldAllMatches:1];
          [v34 addObject:v26];
        }
      }

      v15 = [sortedChildren countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v15);
  }

  v27 = [self _attributedStringForListOfGroupMemberNames:v35 numberTruncated:0];
  [v27 size];
  if (v28 <= width)
  {
    v30 = v27;
    v31 = v33;
    v29 = v34;
  }

  else
  {
    v29 = v34;
    v30 = [self _attributedStringForListOfGroupMemberNames:v34 numberTruncated:0];
    v31 = v33;
  }

  return v30;
}

+ (id)_attributedStringForListOfGroupMemberNames:(id)names numberTruncated:(unint64_t)truncated
{
  v59 = *MEMORY[0x1E69E9840];
  namesCopy = names;
  v6 = namesCopy;
  v7 = namesCopy;
  if (truncated)
  {
    v8 = [namesCopy subarrayWithRange:{0, objc_msgSend(namesCopy, "count") - truncated}];

    v9 = [v6 count];
    v10 = MEMORY[0x1E696AEC0];
    v11 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v12 = v11;
    if (v9 <= truncated)
    {
      v13 = [v11 localizedStringForKey:@"N_MEMBERS" value:&stru_1F3002C60 table:@"Localized"];
      truncated = [v10 localizedStringWithFormat:v13, truncated];
    }

    else
    {
      v13 = [v11 localizedStringForKey:@"N_MORE" value:&stru_1F3002C60 table:@"Localized"];
      v14 = MEMORY[0x1E696ADA0];
      v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:truncated];
      v16 = [v14 localizedStringFromNumber:v15 numberStyle:1];
      truncated = [v10 stringWithFormat:v13, v16];
    }

    v18 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:truncated];
    v7 = [v8 arrayByAddingObject:v18];
  }

  if ([v7 count] == 1)
  {
    firstObject = [v7 firstObject];
  }

  else
  {
    v20 = [v7 count];
    v21 = objc_opt_new();
    if (v20 == 2)
    {
      firstObject2 = [v7 firstObject];
      [v21 appendAttributedString:firstObject2];

      v23 = objc_alloc(MEMORY[0x1E696AAB0]);
      v24 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v25 = [v24 localizedStringForKey:@"SHORT_BINARY_RECIPIENT_SEPARATOR" value:&stru_1F3002C60 table:@"Localized"];
      v26 = [v23 initWithString:v25];
      [v21 appendAttributedString:v26];

      lastObject = [v7 lastObject];
      [v21 appendAttributedString:lastObject];

      firstObject = [v21 copy];
    }

    else
    {
      v49 = v7;
      v50 = v6;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v28 = v7;
      v53 = [v28 countByEnumeratingWithState:&v54 objects:v58 count:16];
      if (v53)
      {
        v29 = 0x1E696A000uLL;
        v30 = 0x1E696A000uLL;
        v31 = 0x1E7CD1000uLL;
        v51 = v28;
        v52 = *v55;
        do
        {
          for (i = 0; i != v53; ++i)
          {
            if (*v55 != v52)
            {
              objc_enumerationMutation(v28);
            }

            v33 = *(*(&v54 + 1) + 8 * i);
            lastObject2 = [v28 lastObject];

            if (v33 == lastObject2)
            {
              v35 = objc_alloc(*(v29 + 2736));
              v36 = [*(v30 + 2792) bundleForClass:objc_opt_class()];
              [v36 localizedStringForKey:@"SHORT_BINARY_RECIPIENT_SEPARATOR" value:&stru_1F3002C60 table:@"Localized"];
              v37 = v31;
              v38 = v30;
              v40 = v39 = v29;
              v41 = [v35 initWithString:v40];
              [v21 appendAttributedString:v41];

              v29 = v39;
              v30 = v38;
              v31 = v37;
              v28 = v51;
            }

            [v21 appendAttributedString:v33];
            v42 = [v28 objectAtIndexedSubscript:{objc_msgSend(v28, "count") - 2}];

            if (v33 != lastObject2 && v33 != v42)
            {
              v44 = objc_alloc(*(v29 + 2736));
              v45 = [*(v30 + 2792) bundleForClass:objc_opt_class()];
              v46 = [v45 localizedStringForKey:@"ADDRESS_SEPARATOR" value:&stru_1F3002C60 table:@"Localized"];
              v47 = [v44 initWithString:v46];
              [v21 appendAttributedString:v47];
            }
          }

          v53 = [v28 countByEnumeratingWithState:&v54 objects:v58 count:16];
        }

        while (v53);
      }

      firstObject = [v21 copy];
      v7 = v49;
      v6 = v50;
    }
  }

  return firstObject;
}

+ (id)_attributedTitleForRecipient:(id)recipient matchedStrings:(id)strings constrainedToWidth:(double)width font:(id)font
{
  v29[1] = *MEMORY[0x1E69E9840];
  recipientCopy = recipient;
  stringsCopy = strings;
  fontCopy = font;
  compositeName = [recipientCopy compositeName];
  if (([recipientCopy isGroup] & 1) == 0 && (!compositeName || !objc_msgSend(compositeName, "length")))
  {
    placeholderName = [recipientCopy placeholderName];

    compositeName = placeholderName;
  }

  if (![recipientCopy isGroup] || (objc_msgSend(recipientCopy, "displayString"), (v15 = objc_claimAutoreleasedReturnValue()) != 0) && (v16 = v15, objc_msgSend(recipientCopy, "displayString"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "length"), v17, v16, v18))
  {
    if ([recipientCopy kind] == 6 || objc_msgSend(recipientCopy, "kind") == 7)
    {
      v19 = MEMORY[0x1E69DB878];
      fontDescriptor = [fontCopy fontDescriptor];
      v21 = [fontDescriptor fontDescriptorWithSymbolicTraits:2];
      v22 = [v19 fontWithDescriptor:v21 size:0.0];

      v23 = objc_alloc(MEMORY[0x1E696AD40]);
      v28 = *MEMORY[0x1E69DB648];
      v29[0] = v22;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
      v25 = [v23 initWithString:compositeName attributes:v24];

      goto LABEL_14;
    }

    v26 = [self attributedStringWithBoldedRangesForMatchedStrings:stringsCopy inString:compositeName font:fontCopy boldAllMatches:1];
  }

  else
  {
    v26 = [self _attributedStringForGroupMembersOfRecipient:recipientCopy matchedStrings:stringsCopy constrainedToWidth:fontCopy font:width];
  }

  v25 = v26;
LABEL_14:

  return v25;
}

- (void)updateLabelsContrainedToWidth:(double)width
{
  selfCopy = self;
  v69 = *MEMORY[0x1E69E9840];
  recipient = [(CNComposeTableViewCell *)self recipient];
  v7 = objc_opt_new();
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  completelyMatchedAttributedStrings = [recipient completelyMatchedAttributedStrings];
  v9 = [completelyMatchedAttributedStrings countByEnumeratingWithState:&v62 objects:v68 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v63;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v63 != v11)
        {
          objc_enumerationMutation(completelyMatchedAttributedStrings);
        }

        string = [*(*(&v62 + 1) + 8 * i) string];
        [v7 addObject:string];
      }

      v10 = [completelyMatchedAttributedStrings countByEnumeratingWithState:&v62 objects:v68 count:16];
    }

    while (v10);
  }

  v13 = objc_opt_class();
  titleLabel = [(CNComposeTableViewCell *)selfCopy titleLabel];
  font = [titleLabel font];
  v16 = [v13 _attributedTitleForRecipient:recipient matchedStrings:v7 constrainedToWidth:font font:width];
  titleLabel2 = [(CNComposeTableViewCell *)selfCopy titleLabel];
  [titleLabel2 setAttributedText:v16];

  detailLabel = [(CNComposeTableViewCell *)selfCopy detailLabel];
  font2 = [detailLabel font];

  v56 = font2;
  v57 = recipient;
  if ([recipient isGroup])
  {
    children = [recipient children];
    v21 = [children count];

    if (v21)
    {
      compositeName = [recipient compositeName];

      if (compositeName)
      {
        controlCharacterSet2 = [objc_opt_class() _attributedStringForGroupMembersOfRecipient:recipient matchedStrings:v7 constrainedToWidth:font2 font:width];
      }

      else
      {
        controlCharacterSet2 = 0;
      }
    }

    else
    {
      v30 = objc_alloc(MEMORY[0x1E696AAB0]);
      v31 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      font2 = [v31 localizedStringForKey:@"GROUP_NO_MEMBERS_NAME" value:&stru_1F3002C60 table:@"Localized"];
      controlCharacterSet2 = [v30 initWithString:font2];
    }
  }

  else
  {
    if ([(CNComposeRecipientTableViewCell *)selfCopy shouldHighlightCompleteMatches])
    {
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      titleLabel2 = [recipient completelyMatchedAttributedStrings];
      v24 = [titleLabel2 countByEnumeratingWithState:&v58 objects:v67 count:16];
      if (v24)
      {
        font2 = v24;
        v54 = selfCopy;
        v25 = *v59;
        while (2)
        {
          for (j = 0; j != font2; j = j + 1)
          {
            if (*v59 != v25)
            {
              objc_enumerationMutation(titleLabel2);
            }

            v27 = [*(*(&v58 + 1) + 8 * j) attributesAtIndex:0 effectiveRange:0];
            v28 = [v27 objectForKey:@"CNComposeRecipientStringMatchType"];
            v29 = [v28 isEqualToString:@"CNComposeRecipientStringMatchAddress"];

            if (!v29)
            {
              i = 0;
              goto LABEL_25;
            }
          }

          font2 = [titleLabel2 countByEnumeratingWithState:&v58 objects:v67 count:16];
          if (font2)
          {
            continue;
          }

          break;
        }

        i = 1;
LABEL_25:
        recipient = v57;
        selfCopy = v54;
      }

      else
      {
        i = 1;
      }
    }

    else
    {
      i = 0;
    }

    if ([recipient kind] == 6 || objc_msgSend(recipient, "kind") == 7)
    {
      v32 = objc_alloc(MEMORY[0x1E696AAB0]);
      v33 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      font2 = [v33 localizedStringForKey:@"STEWIE_ADDRESS_DETAIL" value:&stru_1F3002C60 table:@"Localized-Stewie"];
      controlCharacterSet2 = [v32 initWithString:font2];
    }

    else
    {
      v34 = objc_alloc(MEMORY[0x1E696AAB0]);
      address = [recipient address];
      v33 = address;
      if (address)
      {
        v36 = address;
      }

      else
      {
        v36 = @"…";
      }

      controlCharacterSet2 = [v34 initWithString:v36];
    }

    if (i)
    {
      originContext = [recipient originContext];
      searchTerm = [originContext searchTerm];

      if (searchTerm)
      {
        v39 = objc_opt_class();
        originContext2 = [recipient originContext];
        font2 = [originContext2 searchTerm];
        v66 = font2;
        titleLabel2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v66 count:1];
        i = [controlCharacterSet2 string];
        v41 = [v39 attributedStringWithBoldedRangesForMatchedStrings:titleLabel2 inString:i font:v56 boldAllMatches:0];

        controlCharacterSet2 = v41;
      }
    }
  }

  detailLabel2 = [(CNComposeTableViewCell *)selfCopy detailLabel];
  v55 = controlCharacterSet2;
  [detailLabel2 setAttributedText:controlCharacterSet2];

  detailLabel3 = [(CNComposeTableViewCell *)selfCopy detailLabel];
  text = [detailLabel3 text];
  v44 = [text length];
  if (v44)
  {
    titleLabel3 = [(CNComposeTableViewCell *)selfCopy titleLabel];
    text2 = [titleLabel3 text];
    controlCharacterSet = [MEMORY[0x1E696AB08] controlCharacterSet];
    v51 = text2;
    v46 = [text2 stringByTrimmingCharactersInSet:?];
    titleLabel2 = [(CNComposeTableViewCell *)selfCopy detailLabel];
    i = [titleLabel2 text];
    controlCharacterSet2 = [MEMORY[0x1E696AB08] controlCharacterSet];
    font2 = [i stringByTrimmingCharactersInSet:controlCharacterSet2];
    v49 = v46;
    v47 = [v46 isEqualToString:font2];
  }

  else
  {
    v47 = 1;
  }

  detailLabel4 = [(CNComposeTableViewCell *)selfCopy detailLabel];
  [detailLabel4 setHidden:v47];

  if (v44)
  {
  }
}

+ (id)attributedStringWithBoldedRangesForMatchedStrings:(id)strings inString:(id)string font:(id)font boldAllMatches:(BOOL)matches
{
  matchesCopy = matches;
  v43[1] = *MEMORY[0x1E69E9840];
  stringsCopy = strings;
  stringCopy = string;
  fontCopy = font;
  v12 = MEMORY[0x1E69DB878];
  fontDescriptor = [fontCopy fontDescriptor];
  fontDescriptor2 = [fontCopy fontDescriptor];
  v15 = [fontDescriptor fontDescriptorWithSymbolicTraits:{objc_msgSend(fontDescriptor2, "symbolicTraits") & 0xFFFFFFFDLL}];
  v16 = [v12 fontWithDescriptor:v15 size:0.0];

  v17 = objc_alloc(MEMORY[0x1E696AD40]);
  v18 = *MEMORY[0x1E69DB648];
  v42 = *MEMORY[0x1E69DB648];
  v43[0] = v16;
  v33 = v16;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:&v42 count:1];
  v20 = [v17 initWithString:stringCopy attributes:v19];

  v21 = MEMORY[0x1E69DB878];
  v34 = fontCopy;
  fontDescriptor3 = [fontCopy fontDescriptor];
  v23 = [fontDescriptor3 fontDescriptorWithSymbolicTraits:2];
  v24 = [v21 fontWithDescriptor:v23 size:0.0];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = stringsCopy;
  v25 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v25)
  {
    v26 = v25;
    v36 = *v38;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v38 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v28 = *(*(&v37 + 1) + 8 * i);
        v29 = [stringCopy rangeOfString:v28];
        if (v29 != 0x7FFFFFFFFFFFFFFFLL)
        {
          for (j = v29; j != 0x7FFFFFFFFFFFFFFFLL; j = [stringCopy rangeOfString:v28 options:0 range:{j + 1, objc_msgSend(stringCopy, "length") + ~j}])
          {
            [v20 addAttribute:v18 value:v24 range:{j, v30}];
            if (!matchesCopy)
            {
              break;
            }
          }
        }
      }

      v26 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v26);
  }

  return v20;
}

- (void)setRecipient:(id)recipient
{
  recipientCopy = recipient;
  autocompleteResult = [recipientCopy autocompleteResult];
  identifier = [autocompleteResult identifier];
  recipient = [(CNComposeTableViewCell *)self recipient];
  autocompleteResult2 = [recipient autocompleteResult];
  identifier2 = [autocompleteResult2 identifier];
  v10 = [identifier isEqualToString:identifier2];

  recipient2 = [(CNComposeTableViewCell *)self recipient];

  if (recipientCopy && recipient2 != recipientCopy)
  {
    v36.receiver = self;
    v36.super_class = CNComposeRecipientTableViewCell;
    [(CNComposeTableViewCell *)&v36 setRecipient:recipientCopy];
    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = __Block_byref_object_copy__3;
    v34 = __Block_byref_object_dispose__3;
    uUID = [MEMORY[0x1E696AFB0] UUID];
    [(CNComposeRecipientTableViewCell *)self setDisplaySessionUUID:v31[5]];
    objc_initWeak(&location, self);
    delegate = [(CNComposeRecipientTableViewCell *)self delegate];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __48__CNComposeRecipientTableViewCell_setRecipient___block_invoke;
    v27[3] = &unk_1E7CD26C0;
    objc_copyWeak(&v28, &location);
    v27[4] = &v30;
    v13 = [delegate willProvideOverrideImageDataForCell:self completionBlock:v27];

    if (v13)
    {
LABEL_13:
      objc_destroyWeak(&v28);
      objc_destroyWeak(&location);
      _Block_object_dispose(&v30, 8);

      goto LABEL_26;
    }

    if ([recipientCopy isGroup])
    {
      v14 = objc_alloc_init(CNAUIMessagesImagesFacade);
      autocompleteResult3 = [recipientCopy autocompleteResult];
      v16 = [(CNAUIMessagesImagesFacade *)v14 imageForResult:autocompleteResult3];

      if (v16)
      {
LABEL_11:
        [(CNComposeRecipientTableViewCell *)self assignImageToController:v16];

LABEL_12:
        goto LABEL_13;
      }
    }

    else
    {
      if ([recipientCopy kind] != 6)
      {
        if ([recipientCopy kind] == 7)
        {
          v14 = +[CNAutocompleteAvatarUtilities roadsideImage];
          if (v14)
          {
            [(CNComposeRecipientTableViewCell *)self assignImageToController:v14];
            goto LABEL_12;
          }
        }

        goto LABEL_18;
      }

      traitCollection = [(CNComposeRecipientTableViewCell *)self traitCollection];
      userInterfaceStyle = [traitCollection userInterfaceStyle];
      v19 = @"SOS_50_light";
      if (userInterfaceStyle == 2)
      {
        v19 = @"SOS_50_dark";
      }

      v14 = v19;

      v20 = MEMORY[0x1E69DCAB8];
      v21 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v16 = [v20 imageNamed:v14 inBundle:v21 compatibleWithTraitCollection:0];

      if (v16)
      {
        goto LABEL_11;
      }
    }

LABEL_18:
    v22 = [(CNComposeRecipientTableViewCell *)self assembleContactAvatarsForRecipient:recipientCopy];
    [(CNComposeRecipientTableViewCell *)self assignContactAvatarsToController:v22];

    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
    _Block_object_dispose(&v30, 8);
  }

  if (recipient2 == recipientCopy || ((v10 ^ 1) & 1) != 0 || ([recipientCopy address], v23 = objc_claimAutoreleasedReturnValue(), v23, !v23))
  {
    address = [recipientCopy address];
    if (address)
    {
      v25 = !CNComposeApplicationPreferredContentSizeIsLargerThanLarge();
    }

    else
    {
      v25 = 1;
    }

    detailLabel = [(CNComposeTableViewCell *)self detailLabel];
    [detailLabel setNumberOfLines:v25];
  }

LABEL_26:
}

void __48__CNComposeRecipientTableViewCell_setRecipient___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained displaySessionUUID];
  v5 = *(*(*(a1 + 32) + 8) + 40);

  if (v4 == v5)
  {
    if (v8)
    {
      [WeakRetained assignImageDataToController:v8];
    }

    else
    {
      v6 = [WeakRetained recipient];
      v7 = [WeakRetained assembleContactAvatarsForRecipient:v6];
      [WeakRetained assignContactAvatarsToController:v7];
    }
  }
}

- (void)assignImageToController:(id)controller
{
  v4 = UIImagePNGRepresentation(controller);
  [(CNComposeRecipientTableViewCell *)self assignImageDataToController:v4];
}

- (void)assignImageDataToController:(id)controller
{
  v8[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695CF18];
  controllerCopy = controller;
  v6 = objc_alloc_init(v4);
  [v6 setImageData:controllerCopy];

  v8[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [(CNComposeRecipientTableViewCell *)self assignContactAvatarsToController:v7];
}

- (void)assignContactAvatarsToController:(id)controller
{
  controllerCopy = controller;
  avatarViewController = [(CNComposeRecipientTableViewCell *)self avatarViewController];
  [avatarViewController setContacts:controllerCopy];

  titleLabel = [(CNComposeTableViewCell *)self titleLabel];
  [titleLabel frame];
  [(CNComposeRecipientTableViewCell *)self updateLabelsContrainedToWidth:CGRectGetWidth(v8)];
}

- (id)assembleContactAvatarsForRecipient:(id)recipient
{
  v48[1] = *MEMORY[0x1E69E9840];
  recipientCopy = recipient;
  v34 = objc_opt_new();
  if (recipientCopy)
  {
    v30 = recipientCopy;
    if ([recipientCopy isGroup])
    {
      sortedChildren = [recipientCopy sortedChildren];
      v5 = [sortedChildren _cn_take:{objc_msgSend(MEMORY[0x1E695D0C0], "maxContactAvatars")}];
    }

    else
    {
      v48[0] = recipientCopy;
      v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:1];
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = v5;
    v33 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
    if (v33)
    {
      v32 = *v42;
      do
      {
        v6 = 0;
        do
        {
          if (*v42 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v36 = v6;
          v7 = *(*(&v41 + 1) + 8 * v6);
          v8 = objc_opt_new();
          v9 = objc_opt_new();
          v37 = 0u;
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          children = [v7 children];
          v35 = v7;
          if ([children count])
          {
            [v7 children];
          }

          else
          {
            v45 = v7;
            [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
          }
          v11 = ;

          v12 = [v11 countByEnumeratingWithState:&v37 objects:v46 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v38;
            do
            {
              for (i = 0; i != v13; ++i)
              {
                if (*v38 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v37 + 1) + 8 * i);
                address = [v16 address];
                kind = [v16 kind];
                v19 = MEMORY[0x1E695CEE0];
                if (kind)
                {
                  v20 = [MEMORY[0x1E695CF50] phoneNumberWithStringValue:address];
                  v21 = [v19 labeledValueWithLabel:0 value:v20];
                  [v9 addObject:v21];
                }

                else
                {
                  v20 = [MEMORY[0x1E695CEE0] labeledValueWithLabel:0 value:address];
                  [v8 addObject:v20];
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v37 objects:v46 count:16];
            }

            while (v13);
          }

          v22 = objc_opt_new();
          nameComponents = [v35 nameComponents];
          v24 = nameComponents;
          if (nameComponents)
          {
            v25 = nameComponents;
          }

          else
          {
            v26 = MEMORY[0x1E6996790];
            compositeName = [v35 compositeName];
            v25 = [v26 componentsFromString:compositeName];
          }

          [v25 overrideComponentsInContact:v22];
          [v22 setEmailAddresses:v8];
          [v22 setPhoneNumbers:v9];
          [v34 addObject:v22];
          if (![v34 count])
          {
            v28 = objc_alloc_init(MEMORY[0x1E695CF18]);
            [v34 addObject:v28];
          }

          v6 = v36 + 1;
        }

        while (v36 + 1 != v33);
        v33 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
      }

      while (v33);
    }

    recipientCopy = v30;
  }

  return v34;
}

- (void)setActionType:(unint64_t)type animated:(BOOL)animated
{
  animatedCopy = animated;
  self->_actionType = type;
  actionButton = [(CNComposeRecipientTableViewCell *)self actionButton];
  v8 = 1;
  [actionButton setUserInteractionEnabled:1];

  if (type > 2)
  {
    if (type == 3)
    {
      v9 = 1;
LABEL_11:
      currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
      featureFlags = [currentEnvironment featureFlags];
      v25 = [featureFlags isFeatureEnabled:29];

      v26 = MEMORY[0x1E69DCAB8];
      if (v25)
      {
        actionButton5 = +[CNUIAutocompleteColorRepository solariumButtonImageConfiguration];
        v10 = [v26 systemImageNamed:@"chevron.forward.circle.fill" withConfiguration:actionButton5];
      }

      else
      {
        v10 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chevron.forward.circle.fill"];
        actionButton5 = +[CNUIAutocompleteColorRepository classicChevronButtonColor];
        actionButton2 = [(CNComposeRecipientTableViewCell *)self actionButton];
        [actionButton2 setButtonColor:actionButton5];
      }

      goto LABEL_16;
    }

    if (type != 4)
    {
      goto LABEL_24;
    }

    v10 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chevron.forward"];
    v11 = +[CNUIAutocompleteColorRepository emergencyChevronColor];
    actionButton3 = [(CNComposeRecipientTableViewCell *)self actionButton];
    [actionButton3 setButtonColor:v11];

    actionButton4 = [(CNComposeRecipientTableViewCell *)self actionButton];
    [actionButton4 setUserInteractionEnabled:0];

    actionButton5 = [(CNComposeRecipientTableViewCell *)self actionButton];
    v15 = MEMORY[0x1E69DCAD8];
    titleLabel = [(CNComposeTableViewCell *)self titleLabel];
    font = [titleLabel font];
    [font pointSize];
    v18 = [v15 configurationWithPointSize:6 weight:1 scale:?];
    [actionButton5 setPreferredSymbolConfiguration:v18 forImageInState:0];
  }

  else
  {
    if (type != 1)
    {
      if (type != 2)
      {
        goto LABEL_24;
      }

      v9 = 0;
      goto LABEL_11;
    }

    currentEnvironment2 = [MEMORY[0x1E69966E8] currentEnvironment];
    featureFlags2 = [currentEnvironment2 featureFlags];
    v21 = [featureFlags2 isFeatureEnabled:29];

    v22 = MEMORY[0x1E69DCAB8];
    if (v21)
    {
      actionButton5 = +[CNUIAutocompleteColorRepository solariumButtonImageConfiguration];
      v10 = [v22 systemImageNamed:@"info.circle.fill" withConfiguration:actionButton5];
    }

    else
    {
      v10 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"info.circle"];
      actionButton5 = [(CNComposeRecipientTableViewCell *)self actionButton];
      [actionButton5 setButtonColor:0];
    }
  }

  v9 = 0;
LABEL_16:

  if (v10)
  {
    actionButton6 = [(CNComposeRecipientTableViewCell *)self actionButton];
    [actionButton6 setImage:v10 forState:0];

    [(CNComposeRecipientTableViewCell *)self updateButtonColor];
    effectiveUserInterfaceLayoutDirection = [(CNComposeRecipientTableViewCell *)self effectiveUserInterfaceLayoutDirection];
    memset(&v37, 0, sizeof(v37));
    if (v9)
    {
      CGAffineTransformMakeRotation(&v37, dbl_1B8155650[effectiveUserInterfaceLayoutDirection == 0]);
      if (!animatedCopy)
      {
LABEL_19:
        v34 = v37;
        actionButton7 = [(CNComposeRecipientTableViewCell *)self actionButton];
        v33 = v34;
        [actionButton7 setTransform:&v33];

LABEL_23:
        v8 = 0;
        goto LABEL_24;
      }
    }

    else
    {
      v31 = *(MEMORY[0x1E695EFD0] + 16);
      *&v37.a = *MEMORY[0x1E695EFD0];
      *&v37.c = v31;
      *&v37.tx = *(MEMORY[0x1E695EFD0] + 32);
      if (!animatedCopy)
      {
        goto LABEL_19;
      }
    }

    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v36 = v37;
    v35[2] = __58__CNComposeRecipientTableViewCell_setActionType_animated___block_invoke;
    v35[3] = &unk_1E7CD26E8;
    v35[4] = self;
    [MEMORY[0x1E69DD250] _animateUsingDefaultTimingWithOptions:2 animations:v35 completion:0];
    goto LABEL_23;
  }

  v8 = 1;
LABEL_24:
  actionButton8 = [(CNComposeRecipientTableViewCell *)self actionButton];
  [actionButton8 setHidden:v8];

  [(CNComposeTableViewCell *)self layoutMarginsDidChange];
}

void __58__CNComposeRecipientTableViewCell_setActionType_animated___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) actionButton];
  [v1 setTransform:&v2];
}

- (void)updateButtonColor
{
  actionButton = [(CNComposeRecipientTableViewCell *)self actionButton];
  buttonColor = [actionButton buttonColor];
  actionButton2 = [(CNComposeRecipientTableViewCell *)self actionButton];
  [actionButton2 setTintColor:buttonColor];
}

- (void)setupAvatarViewControllerWithSettings:(id)settings
{
  if (!self->_avatarViewController)
  {
    v4 = MEMORY[0x1E695D0C8];
    settingsCopy = settings;
    v6 = [[v4 alloc] initWithSettings:settingsCopy];

    avatarViewController = self->_avatarViewController;
    self->_avatarViewController = v6;

    v8 = objc_opt_class();
    view = [(CNAvatarViewController *)self->_avatarViewController view];
    [v8 requireIntrinsicSizeForView:view];

    containerView = [(NUITableViewContainerCell *)self containerView];
    view2 = [(CNAvatarViewController *)self->_avatarViewController view];
    [containerView insertArrangedSubview:view2 atIndex:0];

    avatarsAreHidden = [objc_opt_class() avatarsAreHidden];
    view3 = [(CNAvatarViewController *)self->_avatarViewController view];
    [view3 setHidden:avatarsAreHidden];
  }
}

- (double)trailingButtonWidth
{
  actionButton = [(CNComposeRecipientTableViewCell *)self actionButton];
  v4 = 0.0;
  if (([actionButton isHidden] & 1) == 0)
  {
    actionButton2 = [(CNComposeRecipientTableViewCell *)self actionButton];
    [actionButton2 intrinsicContentSize];
    v4 = v6;
  }

  return v4;
}

- (void)actionButtonTapped
{
  actionType = [(CNComposeRecipientTableViewCell *)self actionType];
  delegate = [(CNComposeRecipientTableViewCell *)self delegate];
  v5 = delegate;
  if (actionType == 1)
  {
    [delegate didTapInfoButtonForCell:self];
  }

  else
  {
    [delegate didTapDisambiguationChevronForCell:self];
  }
}

- (void)prepareForReuse
{
  [(CNComposeRecipientTableViewCell *)self setAccessoryView:0];
  [(CNComposeRecipientTableViewCell *)self setAccessoryType:0];
  v3.receiver = self;
  v3.super_class = CNComposeRecipientTableViewCell;
  [(CNComposeRecipientTableViewCell *)&v3 prepareForReuse];
}

- (CNComposeRecipientTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end