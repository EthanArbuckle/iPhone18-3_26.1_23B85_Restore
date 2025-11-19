@interface CNComposeRecipientTableViewCell
+ (BOOL)avatarsAreHidden;
+ (double)additionalSeparatorInset;
+ (id)_attributedStringForGroupMembersOfRecipient:(id)a3 matchedStrings:(id)a4 constrainedToWidth:(double)a5 font:(id)a6;
+ (id)_attributedStringForListOfGroupMemberNames:(id)a3 numberTruncated:(unint64_t)a4;
+ (id)_attributedTitleForRecipient:(id)a3 matchedStrings:(id)a4 constrainedToWidth:(double)a5 font:(id)a6;
+ (id)attributedStringWithBoldedRangesForMatchedStrings:(id)a3 inString:(id)a4 font:(id)a5 boldAllMatches:(BOOL)a6;
- (CNComposeRecipientTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (CNComposeRecipientTableViewCellDelegate)delegate;
- (double)trailingButtonWidth;
- (id)assembleContactAvatarsForRecipient:(id)a3;
- (void)actionButtonTapped;
- (void)applyActionButtonTouchInsets;
- (void)assignContactAvatarsToController:(id)a3;
- (void)assignImageDataToController:(id)a3;
- (void)assignImageToController:(id)a3;
- (void)containerViewDidLayoutArrangedSubviews:(id)a3;
- (void)prepareForReuse;
- (void)setActionType:(unint64_t)a3 animated:(BOOL)a4;
- (void)setRecipient:(id)a3;
- (void)setupAvatarViewControllerWithSettings:(id)a3;
- (void)updateButtonColor;
- (void)updateLabelsContrainedToWidth:(double)a3;
@end

@implementation CNComposeRecipientTableViewCell

+ (double)additionalSeparatorInset
{
  v3 = [a1 avatarsAreHidden];
  result = 0.0;
  if ((v3 & 1) == 0)
  {
    v5.receiver = a1;
    v5.super_class = &OBJC_METACLASS___CNComposeRecipientTableViewCell;
    objc_msgSendSuper2(&v5, sel_additionalSeparatorInset, 0.0);
  }

  return result;
}

- (CNComposeRecipientTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v16.receiver = self;
  v16.super_class = CNComposeRecipientTableViewCell;
  v4 = [(CNComposeTableViewCell *)&v16 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    if (CNComposeApplicationPreferredContentSizeIsLargerThanLarge())
    {
      v5 = [(CNComposeTableViewCell *)v4 detailLabel];
      [v5 setNumberOfLines:0];

      v6 = [(CNComposeTableViewCell *)v4 detailLabel];
      LODWORD(v7) = 1.0;
      [v6 _setHyphenationFactor:v7];

      v8 = [(CNComposeTableViewCell *)v4 titleLabel];
      [v8 setNumberOfLines:0];

      v9 = [(CNComposeTableViewCell *)v4 titleLabel];
      LODWORD(v10) = 1.0;
      [v9 _setHyphenationFactor:v10];
    }

    v11 = objc_opt_new();
    v12 = [CNComposeRecipientActionButton systemButtonWithImage:v11 target:v4 action:sel_actionButtonTapped];

    [objc_opt_class() requireIntrinsicSizeForView:v12];
    [(CNComposeRecipientTableViewCell *)v4 setActionButton:v12];
    v13 = [(NUITableViewContainerCell *)v4 containerView];
    [v13 insertArrangedSubview:v12 atIndex:1];

    [(CNComposeRecipientTableViewCell *)v4 setShouldHighlightCompleteMatches:1];
    v14 = v4;
  }

  return v4;
}

+ (BOOL)avatarsAreHidden
{
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  v3 = [v2 preferredContentSizeCategory];
  v4 = UIContentSizeCategoryCompareToCategory(v3, *MEMORY[0x1E69DDC38]) == NSOrderedDescending;

  return v4;
}

- (void)containerViewDidLayoutArrangedSubviews:(id)a3
{
  v6.receiver = self;
  v6.super_class = CNComposeRecipientTableViewCell;
  v4 = a3;
  [(CNComposeTableViewCell *)&v6 containerViewDidLayoutArrangedSubviews:v4];
  v5 = [(NUITableViewContainerCell *)self containerView:v6.receiver];

  if (v5 == v4)
  {
    [(CNComposeRecipientTableViewCell *)self applyActionButtonTouchInsets];
  }
}

- (void)applyActionButtonTouchInsets
{
  v3 = [(CNComposeRecipientTableViewCell *)self actionButton];

  if (v3)
  {
    v4 = [(CNComposeRecipientTableViewCell *)self actionButton];
    [v4 _touchInsets];

    v5 = [(CNComposeRecipientTableViewCell *)self actionButton];
    [v5 intrinsicContentSize];
    v7 = v6;

    v8 = [(NUITableViewContainerCell *)self containerView];
    [v8 bounds];
    v10 = v9;
    v11 = v7 * -0.5;

    if ([(CNComposeRecipientTableViewCell *)self _shouldReverseLayoutDirection])
    {
      v12 = [(CNComposeRecipientTableViewCell *)self actionButton];
      [v12 frame];
      MinX = CGRectGetMinX(v25);
    }

    else
    {
      v12 = [(NUITableViewContainerCell *)self containerView];
      [v12 bounds];
      MaxX = CGRectGetMaxX(v26);
      v15 = [(CNComposeRecipientTableViewCell *)self actionButton];
      [v15 frame];
      MinX = MaxX - CGRectGetMaxX(v27);
    }

    v16 = v10 + v11;

    v17 = [(CNComposeRecipientTableViewCell *)self actionButton];
    v18 = v17;
    if (v17)
    {
      [v17 transform];
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

+ (id)_attributedStringForGroupMembersOfRecipient:(id)a3 matchedStrings:(id)a4 constrainedToWidth:(double)a5 font:(id)a6
{
  v41 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v35 = objc_opt_new();
  v33 = v10;
  v34 = objc_opt_new();
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v13 = [v10 sortedChildren];
  v14 = [v13 countByEnumeratingWithState:&v36 objects:v40 count:16];
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
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v36 + 1) + 8 * i);
        v19 = [v18 compositeName];
        v20 = [v19 length];

        if (v20)
        {
          v21 = [v18 compositeName];
          v22 = [a1 attributedStringWithBoldedRangesForMatchedStrings:v11 inString:v21 font:v12 boldAllMatches:1];
          [v35 addObject:v22];
        }

        v23 = [v18 shortName];
        v24 = [v23 length];

        if (v24)
        {
          v25 = [v18 shortName];
          v26 = [a1 attributedStringWithBoldedRangesForMatchedStrings:v11 inString:v25 font:v12 boldAllMatches:1];
          [v34 addObject:v26];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v15);
  }

  v27 = [a1 _attributedStringForListOfGroupMemberNames:v35 numberTruncated:0];
  [v27 size];
  if (v28 <= a5)
  {
    v30 = v27;
    v31 = v33;
    v29 = v34;
  }

  else
  {
    v29 = v34;
    v30 = [a1 _attributedStringForListOfGroupMemberNames:v34 numberTruncated:0];
    v31 = v33;
  }

  return v30;
}

+ (id)_attributedStringForListOfGroupMemberNames:(id)a3 numberTruncated:(unint64_t)a4
{
  v59 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  v7 = v5;
  if (a4)
  {
    v8 = [v5 subarrayWithRange:{0, objc_msgSend(v5, "count") - a4}];

    v9 = [v6 count];
    v10 = MEMORY[0x1E696AEC0];
    v11 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v12 = v11;
    if (v9 <= a4)
    {
      v13 = [v11 localizedStringForKey:@"N_MEMBERS" value:&stru_1F3002C60 table:@"Localized"];
      v17 = [v10 localizedStringWithFormat:v13, a4];
    }

    else
    {
      v13 = [v11 localizedStringForKey:@"N_MORE" value:&stru_1F3002C60 table:@"Localized"];
      v14 = MEMORY[0x1E696ADA0];
      v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
      v16 = [v14 localizedStringFromNumber:v15 numberStyle:1];
      v17 = [v10 stringWithFormat:v13, v16];
    }

    v18 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v17];
    v7 = [v8 arrayByAddingObject:v18];
  }

  if ([v7 count] == 1)
  {
    v19 = [v7 firstObject];
  }

  else
  {
    v20 = [v7 count];
    v21 = objc_opt_new();
    if (v20 == 2)
    {
      v22 = [v7 firstObject];
      [v21 appendAttributedString:v22];

      v23 = objc_alloc(MEMORY[0x1E696AAB0]);
      v24 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v25 = [v24 localizedStringForKey:@"SHORT_BINARY_RECIPIENT_SEPARATOR" value:&stru_1F3002C60 table:@"Localized"];
      v26 = [v23 initWithString:v25];
      [v21 appendAttributedString:v26];

      v27 = [v7 lastObject];
      [v21 appendAttributedString:v27];

      v19 = [v21 copy];
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
            v34 = [v28 lastObject];

            if (v33 == v34)
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

            if (v33 != v34 && v33 != v42)
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

      v19 = [v21 copy];
      v7 = v49;
      v6 = v50;
    }
  }

  return v19;
}

+ (id)_attributedTitleForRecipient:(id)a3 matchedStrings:(id)a4 constrainedToWidth:(double)a5 font:(id)a6
{
  v29[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [v10 compositeName];
  if (([v10 isGroup] & 1) == 0 && (!v13 || !objc_msgSend(v13, "length")))
  {
    v14 = [v10 placeholderName];

    v13 = v14;
  }

  if (![v10 isGroup] || (objc_msgSend(v10, "displayString"), (v15 = objc_claimAutoreleasedReturnValue()) != 0) && (v16 = v15, objc_msgSend(v10, "displayString"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "length"), v17, v16, v18))
  {
    if ([v10 kind] == 6 || objc_msgSend(v10, "kind") == 7)
    {
      v19 = MEMORY[0x1E69DB878];
      v20 = [v12 fontDescriptor];
      v21 = [v20 fontDescriptorWithSymbolicTraits:2];
      v22 = [v19 fontWithDescriptor:v21 size:0.0];

      v23 = objc_alloc(MEMORY[0x1E696AD40]);
      v28 = *MEMORY[0x1E69DB648];
      v29[0] = v22;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
      v25 = [v23 initWithString:v13 attributes:v24];

      goto LABEL_14;
    }

    v26 = [a1 attributedStringWithBoldedRangesForMatchedStrings:v11 inString:v13 font:v12 boldAllMatches:1];
  }

  else
  {
    v26 = [a1 _attributedStringForGroupMembersOfRecipient:v10 matchedStrings:v11 constrainedToWidth:v12 font:a5];
  }

  v25 = v26;
LABEL_14:

  return v25;
}

- (void)updateLabelsContrainedToWidth:(double)a3
{
  v5 = self;
  v69 = *MEMORY[0x1E69E9840];
  v6 = [(CNComposeTableViewCell *)self recipient];
  v7 = objc_opt_new();
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v8 = [v6 completelyMatchedAttributedStrings];
  v9 = [v8 countByEnumeratingWithState:&v62 objects:v68 count:16];
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
          objc_enumerationMutation(v8);
        }

        v12 = [*(*(&v62 + 1) + 8 * i) string];
        [v7 addObject:v12];
      }

      v10 = [v8 countByEnumeratingWithState:&v62 objects:v68 count:16];
    }

    while (v10);
  }

  v13 = objc_opt_class();
  v14 = [(CNComposeTableViewCell *)v5 titleLabel];
  v15 = [v14 font];
  v16 = [v13 _attributedTitleForRecipient:v6 matchedStrings:v7 constrainedToWidth:v15 font:a3];
  v17 = [(CNComposeTableViewCell *)v5 titleLabel];
  [v17 setAttributedText:v16];

  v18 = [(CNComposeTableViewCell *)v5 detailLabel];
  v19 = [v18 font];

  v56 = v19;
  v57 = v6;
  if ([v6 isGroup])
  {
    v20 = [v6 children];
    v21 = [v20 count];

    if (v21)
    {
      v22 = [v6 compositeName];

      if (v22)
      {
        v23 = [objc_opt_class() _attributedStringForGroupMembersOfRecipient:v6 matchedStrings:v7 constrainedToWidth:v19 font:a3];
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v30 = objc_alloc(MEMORY[0x1E696AAB0]);
      v31 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v19 = [v31 localizedStringForKey:@"GROUP_NO_MEMBERS_NAME" value:&stru_1F3002C60 table:@"Localized"];
      v23 = [v30 initWithString:v19];
    }
  }

  else
  {
    if ([(CNComposeRecipientTableViewCell *)v5 shouldHighlightCompleteMatches])
    {
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v17 = [v6 completelyMatchedAttributedStrings];
      v24 = [v17 countByEnumeratingWithState:&v58 objects:v67 count:16];
      if (v24)
      {
        v19 = v24;
        v54 = v5;
        v25 = *v59;
        while (2)
        {
          for (j = 0; j != v19; j = j + 1)
          {
            if (*v59 != v25)
            {
              objc_enumerationMutation(v17);
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

          v19 = [v17 countByEnumeratingWithState:&v58 objects:v67 count:16];
          if (v19)
          {
            continue;
          }

          break;
        }

        i = 1;
LABEL_25:
        v6 = v57;
        v5 = v54;
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

    if ([v6 kind] == 6 || objc_msgSend(v6, "kind") == 7)
    {
      v32 = objc_alloc(MEMORY[0x1E696AAB0]);
      v33 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v19 = [v33 localizedStringForKey:@"STEWIE_ADDRESS_DETAIL" value:&stru_1F3002C60 table:@"Localized-Stewie"];
      v23 = [v32 initWithString:v19];
    }

    else
    {
      v34 = objc_alloc(MEMORY[0x1E696AAB0]);
      v35 = [v6 address];
      v33 = v35;
      if (v35)
      {
        v36 = v35;
      }

      else
      {
        v36 = @"…";
      }

      v23 = [v34 initWithString:v36];
    }

    if (i)
    {
      v37 = [v6 originContext];
      v38 = [v37 searchTerm];

      if (v38)
      {
        v39 = objc_opt_class();
        v40 = [v6 originContext];
        v19 = [v40 searchTerm];
        v66 = v19;
        v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v66 count:1];
        i = [v23 string];
        v41 = [v39 attributedStringWithBoldedRangesForMatchedStrings:v17 inString:i font:v56 boldAllMatches:0];

        v23 = v41;
      }
    }
  }

  v42 = [(CNComposeTableViewCell *)v5 detailLabel];
  v55 = v23;
  [v42 setAttributedText:v23];

  v53 = [(CNComposeTableViewCell *)v5 detailLabel];
  v43 = [v53 text];
  v44 = [v43 length];
  if (v44)
  {
    v52 = [(CNComposeTableViewCell *)v5 titleLabel];
    v45 = [v52 text];
    v50 = [MEMORY[0x1E696AB08] controlCharacterSet];
    v51 = v45;
    v46 = [v45 stringByTrimmingCharactersInSet:?];
    v17 = [(CNComposeTableViewCell *)v5 detailLabel];
    i = [v17 text];
    v23 = [MEMORY[0x1E696AB08] controlCharacterSet];
    v19 = [i stringByTrimmingCharactersInSet:v23];
    v49 = v46;
    v47 = [v46 isEqualToString:v19];
  }

  else
  {
    v47 = 1;
  }

  v48 = [(CNComposeTableViewCell *)v5 detailLabel];
  [v48 setHidden:v47];

  if (v44)
  {
  }
}

+ (id)attributedStringWithBoldedRangesForMatchedStrings:(id)a3 inString:(id)a4 font:(id)a5 boldAllMatches:(BOOL)a6
{
  v6 = a6;
  v43[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = MEMORY[0x1E69DB878];
  v13 = [v11 fontDescriptor];
  v14 = [v11 fontDescriptor];
  v15 = [v13 fontDescriptorWithSymbolicTraits:{objc_msgSend(v14, "symbolicTraits") & 0xFFFFFFFDLL}];
  v16 = [v12 fontWithDescriptor:v15 size:0.0];

  v17 = objc_alloc(MEMORY[0x1E696AD40]);
  v18 = *MEMORY[0x1E69DB648];
  v42 = *MEMORY[0x1E69DB648];
  v43[0] = v16;
  v33 = v16;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:&v42 count:1];
  v20 = [v17 initWithString:v10 attributes:v19];

  v21 = MEMORY[0x1E69DB878];
  v34 = v11;
  v22 = [v11 fontDescriptor];
  v23 = [v22 fontDescriptorWithSymbolicTraits:2];
  v24 = [v21 fontWithDescriptor:v23 size:0.0];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v9;
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
        v29 = [v10 rangeOfString:v28];
        if (v29 != 0x7FFFFFFFFFFFFFFFLL)
        {
          for (j = v29; j != 0x7FFFFFFFFFFFFFFFLL; j = [v10 rangeOfString:v28 options:0 range:{j + 1, objc_msgSend(v10, "length") + ~j}])
          {
            [v20 addAttribute:v18 value:v24 range:{j, v30}];
            if (!v6)
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

- (void)setRecipient:(id)a3
{
  v4 = a3;
  v5 = [v4 autocompleteResult];
  v6 = [v5 identifier];
  v7 = [(CNComposeTableViewCell *)self recipient];
  v8 = [v7 autocompleteResult];
  v9 = [v8 identifier];
  v10 = [v6 isEqualToString:v9];

  v11 = [(CNComposeTableViewCell *)self recipient];

  if (v4 && v11 != v4)
  {
    v36.receiver = self;
    v36.super_class = CNComposeRecipientTableViewCell;
    [(CNComposeTableViewCell *)&v36 setRecipient:v4];
    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = __Block_byref_object_copy__3;
    v34 = __Block_byref_object_dispose__3;
    v35 = [MEMORY[0x1E696AFB0] UUID];
    [(CNComposeRecipientTableViewCell *)self setDisplaySessionUUID:v31[5]];
    objc_initWeak(&location, self);
    v12 = [(CNComposeRecipientTableViewCell *)self delegate];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __48__CNComposeRecipientTableViewCell_setRecipient___block_invoke;
    v27[3] = &unk_1E7CD26C0;
    objc_copyWeak(&v28, &location);
    v27[4] = &v30;
    v13 = [v12 willProvideOverrideImageDataForCell:self completionBlock:v27];

    if (v13)
    {
LABEL_13:
      objc_destroyWeak(&v28);
      objc_destroyWeak(&location);
      _Block_object_dispose(&v30, 8);

      goto LABEL_26;
    }

    if ([v4 isGroup])
    {
      v14 = objc_alloc_init(CNAUIMessagesImagesFacade);
      v15 = [v4 autocompleteResult];
      v16 = [(CNAUIMessagesImagesFacade *)v14 imageForResult:v15];

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
      if ([v4 kind] != 6)
      {
        if ([v4 kind] == 7)
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

      v17 = [(CNComposeRecipientTableViewCell *)self traitCollection];
      v18 = [v17 userInterfaceStyle];
      v19 = @"SOS_50_light";
      if (v18 == 2)
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
    v22 = [(CNComposeRecipientTableViewCell *)self assembleContactAvatarsForRecipient:v4];
    [(CNComposeRecipientTableViewCell *)self assignContactAvatarsToController:v22];

    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
    _Block_object_dispose(&v30, 8);
  }

  if (v11 == v4 || ((v10 ^ 1) & 1) != 0 || ([v4 address], v23 = objc_claimAutoreleasedReturnValue(), v23, !v23))
  {
    v24 = [v4 address];
    if (v24)
    {
      v25 = !CNComposeApplicationPreferredContentSizeIsLargerThanLarge();
    }

    else
    {
      v25 = 1;
    }

    v26 = [(CNComposeTableViewCell *)self detailLabel];
    [v26 setNumberOfLines:v25];
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

- (void)assignImageToController:(id)a3
{
  v4 = UIImagePNGRepresentation(a3);
  [(CNComposeRecipientTableViewCell *)self assignImageDataToController:v4];
}

- (void)assignImageDataToController:(id)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695CF18];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [v6 setImageData:v5];

  v8[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [(CNComposeRecipientTableViewCell *)self assignContactAvatarsToController:v7];
}

- (void)assignContactAvatarsToController:(id)a3
{
  v4 = a3;
  v5 = [(CNComposeRecipientTableViewCell *)self avatarViewController];
  [v5 setContacts:v4];

  v6 = [(CNComposeTableViewCell *)self titleLabel];
  [v6 frame];
  [(CNComposeRecipientTableViewCell *)self updateLabelsContrainedToWidth:CGRectGetWidth(v8)];
}

- (id)assembleContactAvatarsForRecipient:(id)a3
{
  v48[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v34 = objc_opt_new();
  if (v3)
  {
    v30 = v3;
    if ([v3 isGroup])
    {
      v4 = [v3 sortedChildren];
      v5 = [v4 _cn_take:{objc_msgSend(MEMORY[0x1E695D0C0], "maxContactAvatars")}];
    }

    else
    {
      v48[0] = v3;
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
          v10 = [v7 children];
          v35 = v7;
          if ([v10 count])
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
                v17 = [v16 address];
                v18 = [v16 kind];
                v19 = MEMORY[0x1E695CEE0];
                if (v18)
                {
                  v20 = [MEMORY[0x1E695CF50] phoneNumberWithStringValue:v17];
                  v21 = [v19 labeledValueWithLabel:0 value:v20];
                  [v9 addObject:v21];
                }

                else
                {
                  v20 = [MEMORY[0x1E695CEE0] labeledValueWithLabel:0 value:v17];
                  [v8 addObject:v20];
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v37 objects:v46 count:16];
            }

            while (v13);
          }

          v22 = objc_opt_new();
          v23 = [v35 nameComponents];
          v24 = v23;
          if (v23)
          {
            v25 = v23;
          }

          else
          {
            v26 = MEMORY[0x1E6996790];
            v27 = [v35 compositeName];
            v25 = [v26 componentsFromString:v27];
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

    v3 = v30;
  }

  return v34;
}

- (void)setActionType:(unint64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  self->_actionType = a3;
  v7 = [(CNComposeRecipientTableViewCell *)self actionButton];
  v8 = 1;
  [v7 setUserInteractionEnabled:1];

  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v9 = 1;
LABEL_11:
      v23 = [MEMORY[0x1E69966E8] currentEnvironment];
      v24 = [v23 featureFlags];
      v25 = [v24 isFeatureEnabled:29];

      v26 = MEMORY[0x1E69DCAB8];
      if (v25)
      {
        v14 = +[CNUIAutocompleteColorRepository solariumButtonImageConfiguration];
        v10 = [v26 systemImageNamed:@"chevron.forward.circle.fill" withConfiguration:v14];
      }

      else
      {
        v10 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chevron.forward.circle.fill"];
        v14 = +[CNUIAutocompleteColorRepository classicChevronButtonColor];
        v27 = [(CNComposeRecipientTableViewCell *)self actionButton];
        [v27 setButtonColor:v14];
      }

      goto LABEL_16;
    }

    if (a3 != 4)
    {
      goto LABEL_24;
    }

    v10 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chevron.forward"];
    v11 = +[CNUIAutocompleteColorRepository emergencyChevronColor];
    v12 = [(CNComposeRecipientTableViewCell *)self actionButton];
    [v12 setButtonColor:v11];

    v13 = [(CNComposeRecipientTableViewCell *)self actionButton];
    [v13 setUserInteractionEnabled:0];

    v14 = [(CNComposeRecipientTableViewCell *)self actionButton];
    v15 = MEMORY[0x1E69DCAD8];
    v16 = [(CNComposeTableViewCell *)self titleLabel];
    v17 = [v16 font];
    [v17 pointSize];
    v18 = [v15 configurationWithPointSize:6 weight:1 scale:?];
    [v14 setPreferredSymbolConfiguration:v18 forImageInState:0];
  }

  else
  {
    if (a3 != 1)
    {
      if (a3 != 2)
      {
        goto LABEL_24;
      }

      v9 = 0;
      goto LABEL_11;
    }

    v19 = [MEMORY[0x1E69966E8] currentEnvironment];
    v20 = [v19 featureFlags];
    v21 = [v20 isFeatureEnabled:29];

    v22 = MEMORY[0x1E69DCAB8];
    if (v21)
    {
      v14 = +[CNUIAutocompleteColorRepository solariumButtonImageConfiguration];
      v10 = [v22 systemImageNamed:@"info.circle.fill" withConfiguration:v14];
    }

    else
    {
      v10 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"info.circle"];
      v14 = [(CNComposeRecipientTableViewCell *)self actionButton];
      [v14 setButtonColor:0];
    }
  }

  v9 = 0;
LABEL_16:

  if (v10)
  {
    v28 = [(CNComposeRecipientTableViewCell *)self actionButton];
    [v28 setImage:v10 forState:0];

    [(CNComposeRecipientTableViewCell *)self updateButtonColor];
    v29 = [(CNComposeRecipientTableViewCell *)self effectiveUserInterfaceLayoutDirection];
    memset(&v37, 0, sizeof(v37));
    if (v9)
    {
      CGAffineTransformMakeRotation(&v37, dbl_1B8155650[v29 == 0]);
      if (!v4)
      {
LABEL_19:
        v34 = v37;
        v30 = [(CNComposeRecipientTableViewCell *)self actionButton];
        v33 = v34;
        [v30 setTransform:&v33];

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
      if (!v4)
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
  v32 = [(CNComposeRecipientTableViewCell *)self actionButton];
  [v32 setHidden:v8];

  [(CNComposeTableViewCell *)self layoutMarginsDidChange];
}

void __58__CNComposeRecipientTableViewCell_setActionType_animated___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) actionButton];
  [v1 setTransform:&v2];
}

- (void)updateButtonColor
{
  v5 = [(CNComposeRecipientTableViewCell *)self actionButton];
  v3 = [v5 buttonColor];
  v4 = [(CNComposeRecipientTableViewCell *)self actionButton];
  [v4 setTintColor:v3];
}

- (void)setupAvatarViewControllerWithSettings:(id)a3
{
  if (!self->_avatarViewController)
  {
    v4 = MEMORY[0x1E695D0C8];
    v5 = a3;
    v6 = [[v4 alloc] initWithSettings:v5];

    avatarViewController = self->_avatarViewController;
    self->_avatarViewController = v6;

    v8 = objc_opt_class();
    v9 = [(CNAvatarViewController *)self->_avatarViewController view];
    [v8 requireIntrinsicSizeForView:v9];

    v10 = [(NUITableViewContainerCell *)self containerView];
    v11 = [(CNAvatarViewController *)self->_avatarViewController view];
    [v10 insertArrangedSubview:v11 atIndex:0];

    v12 = [objc_opt_class() avatarsAreHidden];
    v13 = [(CNAvatarViewController *)self->_avatarViewController view];
    [v13 setHidden:v12];
  }
}

- (double)trailingButtonWidth
{
  v3 = [(CNComposeRecipientTableViewCell *)self actionButton];
  v4 = 0.0;
  if (([v3 isHidden] & 1) == 0)
  {
    v5 = [(CNComposeRecipientTableViewCell *)self actionButton];
    [v5 intrinsicContentSize];
    v4 = v6;
  }

  return v4;
}

- (void)actionButtonTapped
{
  v3 = [(CNComposeRecipientTableViewCell *)self actionType];
  v4 = [(CNComposeRecipientTableViewCell *)self delegate];
  v5 = v4;
  if (v3 == 1)
  {
    [v4 didTapInfoButtonForCell:self];
  }

  else
  {
    [v4 didTapDisambiguationChevronForCell:self];
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