@interface PHHandsetDialerLCDView
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)resignFirstResponder;
- (BOOL)shouldInsertStringAtCurrentPosition:(id)position deletingPreviousCharacter:(BOOL)character;
- (BOOL)textFieldShouldBeginEditing:(id)editing;
- (CGSize)intrinsicContentSize;
- (DialerLCDFieldDelegate)delegate;
- (PHDialerLCDResultDelegate)resultDelegate;
- (TPPillView)pillView;
- (double)addContactButtonContentInsetConstant;
- (double)addContactButtonTopConstraintConstant;
- (double)pillViewTopConstraintConstant;
- (double)pillViewTopOffset;
- (double)remoteViewControllerLCDOffset;
- (float)addNumberFontSize;
- (float)pillViewHiddenOffset;
- (float)resultButtonsHorizontalPadding;
- (float)spacingBetweenNumberAndContactResult;
- (float)spacingBetweenNumberBaselineAndNameBaseline;
- (float)spacingBetweenPrimaryResultButtons;
- (id)attributedStringForName:(id)name label:(id)label;
- (id)attributedStringForSource:(id)source;
- (id)generateBusinessNameLabelHorizontalConstraints;
- (id)generateNumberLabelHorizontalConstraints;
- (id)menuForPillView:(id)view;
- (id)newAddContactButton;
- (id)newResultButton;
- (id)newSearchButton;
- (id)numberLabelFont;
- (id)resultContactPhoneNumber;
- (id)text;
- (id)unformattedText;
- (void)_makeCalloutVisible:(BOOL)visible;
- (void)applyLayoutConstraints;
- (void)applyLayoutConstraintsForSmartDialer;
- (void)checkAndUpdateVisibilityForView:(id)view shouldInvertVisibility:(BOOL)visibility;
- (void)contactResultButtonPressed;
- (void)copy:(id)copy;
- (void)dealloc;
- (void)deleteCharacter;
- (void)handleDialerResultButtonPressedOfType:(int64_t)type;
- (void)handleTapGesture:(id)gesture;
- (void)hideBusinessNameIfVisible;
- (void)hideResultsButtons;
- (void)insertStringAtCurrentPosition:(id)position deletingPreviousCharacter:(BOOL)character;
- (void)launchBusinessMessagesSupport;
- (void)paste:(id)paste;
- (void)setContactSearchResults:(id)results hasCompleteMatch:(BOOL)match;
- (void)setIsHostedInRemoteViewController:(BOOL)controller;
- (void)setSenderIdentity:(id)identity;
- (void)setText:(id)text needsFormat:(BOOL)format name:(id)name label:(id)label;
- (void)textField:(id)field didUpdateString:(id)string;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidEndEditing:(id)editing;
- (void)updateAddAndDeleteButtonForText:(id)text name:(id)name label:(id)label source:(id)source suggestion:(BOOL)suggestion animated:(BOOL)animated;
- (void)updateContactResultButtons;
- (void)updateNumberAndBusinessNameLabelHorizontalConstraints;
- (void)updateResultButtonsVisiblityForPrimary:(BOOL)primary secondary:(BOOL)secondary;
@end

@implementation PHHandsetDialerLCDView

- (float)spacingBetweenNumberBaselineAndNameBaseline
{
  screenSize = [MEMORY[0x277D3A7E0] screenSize];
  result = 25.0;
  if (screenSize > 12)
  {
    if (screenSize == 13)
    {
      return result;
    }

    if (screenSize != 14)
    {
      if (screenSize == 15)
      {
        return result;
      }

      return 34.0;
    }

    return 42.0;
  }

  if (screenSize)
  {
    if (screenSize == 11)
    {
      return result;
    }

    if (screenSize != 12)
    {
      return 34.0;
    }

    return 42.0;
  }

  return 24.0;
}

- (id)numberLabelFont
{
  v2 = [MEMORY[0x277D74300] systemFontOfSize:36.0];
  withCaseSensitiveAttribute = [v2 withCaseSensitiveAttribute];

  return withCaseSensitiveAttribute;
}

- (float)addNumberFontSize
{
  screenSize = [MEMORY[0x277D3A7E0] screenSize];
  result = 18.0;
  if (!screenSize)
  {
    return 16.0;
  }

  return result;
}

- (id)generateNumberLabelHorizontalConstraints
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"numberLabel";
  numberTextField = [(PHHandsetDialerLCDView *)self numberTextField];
  v10[0] = numberTextField;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v4 = MEMORY[0x277CCAAD0];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"|[numberLabel]|"];
  v6 = [v4 constraintsWithVisualFormat:v5 options:0x10000 metrics:0 views:v3];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)generateBusinessNameLabelHorizontalConstraints
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"businessName";
  businessNameField = [(PHHandsetDialerLCDView *)self businessNameField];
  v10[0] = businessNameField;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v4 = MEMORY[0x277CCAAD0];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"|[businessName]|"];
  v6 = [v4 constraintsWithVisualFormat:v5 options:0x10000 metrics:0 views:v3];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)menuForPillView:(id)view
{
  delegate = [(PHHandsetDialerLCDView *)self delegate];
  selectedSenderIdentity = [(PHHandsetDialerLCDView *)self selectedSenderIdentity];
  v6 = [delegate senderIdentityMenuForDialerField:self selectedSenderIdentity:selectedSenderIdentity];

  return v6;
}

- (void)setSenderIdentity:(id)identity
{
  identityCopy = identity;
  pillView = [(PHHandsetDialerLCDView *)self pillView];
  localizedShortName = pillView;
  if (identity)
  {
    [pillView setHidden:0];

    localizedShortName = [identityCopy localizedShortName];
    pillView2 = [(PHHandsetDialerLCDView *)self pillView];
    [pillView2 setBadgeText:localizedShortName];
  }

  else
  {
    [pillView setHidden:1];
  }

  [(PHHandsetDialerLCDView *)self setSelectedSenderIdentity:identityCopy];
}

- (CGSize)intrinsicContentSize
{
  handsetDialerSize = [MEMORY[0x277D3A7E0] handsetDialerSize];
  v3 = 52.0;
  if (handsetDialerSize != 1)
  {
    v3 = 64.0;
  }

  v4 = 340.0;
  result.height = v3;
  result.width = v4;
  return result;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = PHHandsetDialerLCDView;
  [(PHHandsetDialerLCDView *)&v4 dealloc];
}

- (id)text
{
  text = [(PHLCDViewTextField *)self->_numberTextField text];
  unicodeDirectionalCharactersSet = [MEMORY[0x277CCA900] unicodeDirectionalCharactersSet];
  v4 = [text stringByRemovingCharactersFromSet:unicodeDirectionalCharactersSet];

  return v4;
}

- (id)unformattedText
{
  text = [(PHHandsetDialerLCDView *)self text];
  unformattedNumber = [text unformattedNumber];

  return unformattedNumber;
}

- (void)setText:(id)text needsFormat:(BOOL)format name:(id)name label:(id)label
{
  numberTextField = self->_numberTextField;
  nameCopy = name;
  textCopy = text;
  [(PHLCDViewTextField *)numberTextField setText:textCopy];
  [(PHHandsetDialerLCDView *)self updateAddAndDeleteButtonForText:textCopy name:nameCopy animated:1];
}

- (void)deleteCharacter
{
  isEditing = [(PHLCDViewTextField *)self->_numberTextField isEditing];
  numberTextField = self->_numberTextField;
  if (isEditing)
  {

    [(PHLCDViewTextField *)numberTextField deleteBackward];
  }

  else
  {
    text = [(PHLCDViewTextField *)numberTextField text];
    v5 = UIFormattedPhoneStringByRemovingFromEnd();
    [(PHLCDViewTextField *)numberTextField setText:v5];
  }
}

- (BOOL)shouldInsertStringAtCurrentPosition:(id)position deletingPreviousCharacter:(BOOL)character
{
  characterCopy = character;
  v6 = MEMORY[0x277CCA900];
  positionCopy = position;
  pauseCharacterSet = [v6 pauseCharacterSet];
  v9 = [positionCopy rangeOfCharacterFromSet:pauseCharacterSet];

  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = !characterCopy;
  }

  if (v10)
  {
    return 1;
  }

  if ([(PHLCDViewTextField *)self->_numberTextField isEditing])
  {
    unicodeDirectionalCharactersSet = [MEMORY[0x277CCA900] unicodeDirectionalCharactersSet];
    text = [(PHLCDViewTextField *)self->_numberTextField text];
    v14 = [unicodeDirectionalCharactersSet characterIsMember:{objc_msgSend(text, "characterAtIndex:", 0)}];

    numberTextField = self->_numberTextField;
    if (v14)
    {
      return [(PHLCDViewTextField *)numberTextField selectionRange]> 2;
    }

    else
    {
      selectedTextRange = [(PHLCDViewTextField *)numberTextField selectedTextRange];
      start = [selectedTextRange start];
      beginningOfDocument = [(PHLCDViewTextField *)self->_numberTextField beginningOfDocument];
      v11 = start != beginningOfDocument;
    }
  }

  else
  {
    text2 = [(PHLCDViewTextField *)self->_numberTextField text];
    unicodeDirectionalCharactersSet2 = [MEMORY[0x277CCA900] unicodeDirectionalCharactersSet];
    v18 = [text2 stringByTrimmingCharactersInSet:unicodeDirectionalCharactersSet2];

    starAndOctothorpeCharacterSet = [MEMORY[0x277CCA900] starAndOctothorpeCharacterSet];
    v11 = [v18 rangeOfCharacterFromSet:starAndOctothorpeCharacterSet] != 0;
  }

  return v11;
}

- (void)insertStringAtCurrentPosition:(id)position deletingPreviousCharacter:(BOOL)character
{
  characterCopy = character;
  positionCopy = position;
  if ([PHHandsetDialerLCDView shouldInsertStringAtCurrentPosition:"shouldInsertStringAtCurrentPosition:deletingPreviousCharacter:" deletingPreviousCharacter:?])
  {
    if ([(PHLCDViewTextField *)self->_numberTextField isEditing])
    {
      if (characterCopy)
      {
        [(PHLCDViewTextField *)self->_numberTextField deleteBackward];
      }

      numberTextField = self->_numberTextField;
      selectedTextRange = [(PHLCDViewTextField *)numberTextField selectedTextRange];
      [(PHLCDViewTextField *)numberTextField replaceRange:selectedTextRange withText:positionCopy];
    }

    else
    {
      if (characterCopy)
      {
        [(PHHandsetDialerLCDView *)self deleteCharacter];
      }

      text = [(PHHandsetDialerLCDView *)self text];
      selectedTextRange = [text stringByAppendingString:positionCopy];

      [(PHHandsetDialerLCDView *)self setText:selectedTextRange needsFormat:!characterCopy];
    }

    [(PHHandsetDialerLCDView *)self _requestMakeCutCopyPasteCalloutVisible:0];
  }
}

- (void)setContactSearchResults:(id)results hasCompleteMatch:(BOOL)match
{
  resultsCopy = results;
  if ([(PHHandsetDialerLCDView *)self appType]== 1 && [(PHHandsetDialerLCDView *)self enableSmartDialer])
  {
    if ([resultsCopy count])
    {
      firstObject = [resultsCopy firstObject];
      contactSearchResult = self->_contactSearchResult;
      self->_contactSearchResult = firstObject;

      v8 = [resultsCopy count] - 1;
    }

    else
    {
      v9 = self->_contactSearchResult;
      self->_contactSearchResult = 0;

      v8 = 0;
    }

    self->_contactResultCount = v8;
    self->_hasCompleteMatch = match;
    [(PHHandsetDialerLCDView *)self updateContactResultButtons];
  }
}

- (id)attributedStringForName:(id)name label:(id)label
{
  labelCopy = label;
  v7 = MEMORY[0x277CCAB48];
  nameCopy = name;
  v9 = [v7 alloc];
  nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", nameCopy];
  v11 = [v9 initWithString:nameCopy];

  v12 = MEMORY[0x277D74300];
  [(PHHandsetDialerLCDView *)self nameAndLabelFontSize];
  v13 = [v12 systemFontOfSize:?];
  v14 = *MEMORY[0x277D740A8];
  v15 = [nameCopy length];

  [v11 addAttribute:v14 value:v13 range:{0, v15}];
  if (labelCopy)
  {
    v16 = objc_alloc(MEMORY[0x277CCA898]);
    labelCopy = [MEMORY[0x277CCACA8] stringWithFormat:@" %@", labelCopy];
    v18 = [v16 initWithString:labelCopy];
    [v11 appendAttributedString:v18];

    v19 = MEMORY[0x277D74300];
    [v13 pointSize];
    v20 = [v19 boldSystemFontOfSize:?];
    [v11 addAttribute:v14 value:v20 range:{objc_msgSend(v11, "length") - objc_msgSend(labelCopy, "length"), objc_msgSend(labelCopy, "length")}];
  }

  v21 = [v11 copy];

  return v21;
}

- (id)attributedStringForSource:(id)source
{
  v4 = MEMORY[0x277CCAB48];
  sourceCopy = source;
  v6 = [v4 alloc];
  v7 = MEMORY[0x277CCACA8];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v9 = [mainBundle localizedStringForKey:@"IDENTIFICATION_SOURCE_%@" value:&stru_285532CB8 table:@"General"];
  sourceCopy = [v7 stringWithFormat:v9, sourceCopy];

  v11 = [v6 initWithString:sourceCopy];
  v12 = MEMORY[0x277D74300];
  [(PHHandsetDialerLCDView *)self sourceLabelFontSize];
  v13 = [v12 systemFontOfSize:?];
  [v11 addAttribute:*MEMORY[0x277D740A8] value:v13 range:{0, objc_msgSend(v11, "length")}];
  v14 = [v11 copy];

  return v14;
}

- (void)checkAndUpdateVisibilityForView:(id)view shouldInvertVisibility:(BOOL)visibility
{
  if (visibility)
  {
    viewCopy = view;
    [viewCopy alpha];
    [viewCopy setAlpha:1.0 - v4];
  }
}

- (void)updateAddAndDeleteButtonForText:(id)text name:(id)name label:(id)label source:(id)source suggestion:(BOOL)suggestion animated:(BOOL)animated
{
  animatedCopy = animated;
  v74 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  labelCopy = label;
  sourceCopy = source;
  v16 = [text length];
  v17 = v16 != 0;
  if (nameCopy)
  {
    v18 = [(PHHandsetDialerLCDView *)self attributedStringForName:nameCopy label:labelCopy];
    contactLabel = [(PHHandsetDialerLCDView *)self contactLabel];
    [contactLabel setAttributedText:v18];

    if (sourceCopy)
    {
      sourceLabel2 = [(PHHandsetDialerLCDView *)self attributedStringForSource:sourceCopy];
      sourceLabel = [(PHHandsetDialerLCDView *)self sourceLabel];
      [sourceLabel setAttributedText:sourceLabel2];
    }

    else
    {
      sourceLabel2 = [(PHHandsetDialerLCDView *)self sourceLabel];
      [sourceLabel2 setAttributedText:0];
    }
  }

  v48 = labelCopy;
  if ([(PHHandsetDialerLCDView *)self appType]== 1 && [(PHHandsetDialerLCDView *)self enableSmartDialer])
  {
    if (v16)
    {
      v22 = [nameCopy length] != 0;
      v23 = !self->_hasCompleteMatch;
      v47 = v22;
    }

    else
    {
      v22 = 0;
      v47 = 0;
      v23 = 0;
    }

    v37 = v23;
    addContactButtonVisible = self->_addContactButtonVisible;
    deleteButtonVisible = self->_deleteButtonVisible;
    contactLabelButtonVisible = self->_contactLabelButtonVisible;
    v41 = PHDefaultLog();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = @"NO";
      if (addContactButtonVisible == v37)
      {
        v43 = @"NO";
      }

      else
      {
        v43 = @"YES";
      }

      if (deleteButtonVisible == v17)
      {
        v44 = @"NO";
      }

      else
      {
        v44 = @"YES";
      }

      *buf = 138412802;
      v69 = v43;
      v70 = 2112;
      v71 = v44;
      if (contactLabelButtonVisible != v22)
      {
        v42 = @"YES";
      }

      v72 = 2112;
      v73 = v42;
      _os_log_impl(&dword_2429BC000, v41, OS_LOG_TYPE_DEFAULT, "addContactButtonVisibilityChanged: %@, deleteButtonVisibilityChanged: %@, contactLabelVisibilityChanged: %@", buf, 0x20u);
    }

    if (addContactButtonVisible != v37 || deleteButtonVisible != v17 || contactLabelButtonVisible != v22)
    {
      if ((v47 & 1) != 0 || !self->_contactLabelButtonVisible)
      {
        v57[0] = MEMORY[0x277D85DD0];
        v57[1] = 3221225472;
        v57[2] = __96__PHHandsetDialerLCDView_updateAddAndDeleteButtonForText_name_label_source_suggestion_animated___block_invoke_130;
        v57[3] = &unk_278D74C68;
        v58 = addContactButtonVisible != v37;
        v59 = deleteButtonVisible != v17;
        v60 = contactLabelButtonVisible != v22;
        v57[4] = self;
        v61 = v17;
        v45 = _Block_copy(v57);
        [MEMORY[0x277D75D18] animateWithDuration:v45 animations:0.150000006];
      }

      else
      {
        v64[0] = MEMORY[0x277D85DD0];
        v64[1] = 3221225472;
        v64[2] = __96__PHHandsetDialerLCDView_updateAddAndDeleteButtonForText_name_label_source_suggestion_animated___block_invoke;
        v64[3] = &unk_278D74C40;
        v65 = addContactButtonVisible != v37;
        v66 = deleteButtonVisible != v17;
        v64[4] = self;
        v67 = v17;
        v45 = _Block_copy(v64);
        v62[0] = MEMORY[0x277D85DD0];
        v62[1] = 3221225472;
        v62[2] = __96__PHHandsetDialerLCDView_updateAddAndDeleteButtonForText_name_label_source_suggestion_animated___block_invoke_129;
        v62[3] = &unk_278D74A98;
        v63 = contactLabelButtonVisible != v22;
        v62[4] = self;
        v46 = _Block_copy(v62);
        [MEMORY[0x277D75D18] animateWithDuration:v46 animations:v45 completion:0.150000006];
      }

      self->_addContactButtonVisible = v37;
      self->_deleteButtonVisible = v17;
      self->_contactLabelButtonVisible = v22;
      self->_hasCompleteMatch = 0;
    }

    goto LABEL_26;
  }

  if (self->_addContactButtonVisible && v16 != 0)
  {
    if (nameCopy)
    {
      addContactButton = [(PHHandsetDialerLCDView *)self addContactButton];
      [addContactButton alpha];
      v27 = v26;

      if (v27 >= 0.0)
      {
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __96__PHHandsetDialerLCDView_updateAddAndDeleteButtonForText_name_label_source_suggestion_animated___block_invoke_131;
        aBlock[3] = &unk_278D74C90;
        aBlock[4] = self;
        v28 = _Block_copy(aBlock);
        v29 = MEMORY[0x277D75D18];
        v55[0] = MEMORY[0x277D85DD0];
        v55[1] = 3221225472;
        v55[2] = __96__PHHandsetDialerLCDView_updateAddAndDeleteButtonForText_name_label_source_suggestion_animated___block_invoke_3;
        v55[3] = &unk_278D749E0;
        v55[4] = self;
        v30 = v55;
LABEL_19:
        [v29 animateWithDuration:v30 animations:v28 completion:0.150000006];
      }
    }

    else
    {
      contactLabel2 = [(PHHandsetDialerLCDView *)self contactLabel];
      [contactLabel2 alpha];
      v33 = v32;

      if (v33 >= 0.0)
      {
        v54[0] = MEMORY[0x277D85DD0];
        v54[1] = 3221225472;
        v54[2] = __96__PHHandsetDialerLCDView_updateAddAndDeleteButtonForText_name_label_source_suggestion_animated___block_invoke_4;
        v54[3] = &unk_278D74C90;
        v54[4] = self;
        v28 = _Block_copy(v54);
        v29 = MEMORY[0x277D75D18];
        v53[0] = MEMORY[0x277D85DD0];
        v53[1] = 3221225472;
        v53[2] = __96__PHHandsetDialerLCDView_updateAddAndDeleteButtonForText_name_label_source_suggestion_animated___block_invoke_6;
        v53[3] = &unk_278D749E0;
        v53[4] = self;
        v30 = v53;
        goto LABEL_19;
      }
    }
  }

  if (self->_addContactButtonVisible != v17 || self->_deleteButtonVisible != v17)
  {
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __96__PHHandsetDialerLCDView_updateAddAndDeleteButtonForText_name_label_source_suggestion_animated___block_invoke_7;
    v49[3] = &unk_278D74CB8;
    v49[4] = self;
    v51 = v17;
    v50 = nameCopy;
    v52 = v17;
    v34 = _Block_copy(v49);
    v35 = v34;
    if (animatedCopy)
    {
      [MEMORY[0x277D75D18] animateWithDuration:v34 animations:0.300000012];
    }

    else
    {
      (*(v34 + 2))(v34);
    }

    self->_addContactButtonVisible = v17;
    self->_deleteButtonVisible = v17;
  }

LABEL_26:

  v36 = *MEMORY[0x277D85DE8];
}

uint64_t __96__PHHandsetDialerLCDView_updateAddAndDeleteButtonForText_name_label_source_suggestion_animated___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __96__PHHandsetDialerLCDView_updateAddAndDeleteButtonForText_name_label_source_suggestion_animated___block_invoke_2;
  v2[3] = &unk_278D74C18;
  v3 = *(a1 + 40);
  v4 = *(a1 + 41);
  v2[4] = *(a1 + 32);
  return [MEMORY[0x277D75D18] animateWithDuration:v2 animations:0.150000006];
}

void __96__PHHandsetDialerLCDView_updateAddAndDeleteButtonForText_name_label_source_suggestion_animated___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = PHDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = @"NO";
    if (*(a1 + 40))
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    if (*(a1 + 41))
    {
      v3 = @"YES";
    }

    v11 = 138412546;
    v12 = v4;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_2429BC000, v2, OS_LOG_TYPE_DEFAULT, "Updating animations for addContactButtonVisibilityChanged: %@, deleteButtonVisibilityChanged: %@", &v11, 0x16u);
  }

  v5 = *(a1 + 32);
  v6 = [v5 addContactButton];
  [v5 checkAndUpdateVisibilityForView:v6 shouldInvertVisibility:*(a1 + 40)];

  if (*(a1 + 41) == 1)
  {
    v7 = [*(a1 + 32) delegate];
    v8 = v7;
    v9 = 0.0;
    if (*(a1 + 42))
    {
      v9 = 1.0;
    }

    [v7 setDeleteButtonAlpha:v9];
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __96__PHHandsetDialerLCDView_updateAddAndDeleteButtonForText_name_label_source_suggestion_animated___block_invoke_129(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = PHDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 40))
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&dword_2429BC000, v2, OS_LOG_TYPE_DEFAULT, "Updating animations for contactLabelVisibilityChanged: %@", &v9, 0xCu);
  }

  v4 = *(a1 + 32);
  v5 = [v4 contactLabel];
  [v4 checkAndUpdateVisibilityForView:v5 shouldInvertVisibility:*(a1 + 40)];

  v6 = *(a1 + 32);
  v7 = [v6 sourceLabel];
  [v6 checkAndUpdateVisibilityForView:v7 shouldInvertVisibility:*(a1 + 40)];

  v8 = *MEMORY[0x277D85DE8];
}

void __96__PHHandsetDialerLCDView_updateAddAndDeleteButtonForText_name_label_source_suggestion_animated___block_invoke_130(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = PHDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = @"NO";
    if (*(a1 + 40))
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    v5 = *(a1 + 42);
    if (*(a1 + 41))
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    *v17 = 138412802;
    if (v5)
    {
      v3 = @"YES";
    }

    *&v17[4] = v4;
    v18 = 2112;
    v19 = v6;
    v20 = 2112;
    v21 = v3;
    _os_log_impl(&dword_2429BC000, v2, OS_LOG_TYPE_DEFAULT, "Updating animations for addContactButtonVisibilityChanged: %@, deleteButtonVisibilityChanged: %@, contactLabelVisibilityChanged: %@", v17, 0x20u);
  }

  v7 = *(a1 + 32);
  v8 = [v7 contactLabel];
  [v7 checkAndUpdateVisibilityForView:v8 shouldInvertVisibility:*(a1 + 42)];

  v9 = *(a1 + 32);
  v10 = [v9 sourceLabel];
  [v9 checkAndUpdateVisibilityForView:v10 shouldInvertVisibility:*(a1 + 42)];

  v11 = *(a1 + 32);
  v12 = [v11 addContactButton];
  [v11 checkAndUpdateVisibilityForView:v12 shouldInvertVisibility:*(a1 + 40)];

  if (*(a1 + 41) == 1)
  {
    v13 = [*(a1 + 32) delegate];
    v14 = v13;
    v15 = 0.0;
    if (*(a1 + 43))
    {
      v15 = 1.0;
    }

    [v13 setDeleteButtonAlpha:{v15, *v17}];
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __96__PHHandsetDialerLCDView_updateAddAndDeleteButtonForText_name_label_source_suggestion_animated___block_invoke_131(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __96__PHHandsetDialerLCDView_updateAddAndDeleteButtonForText_name_label_source_suggestion_animated___block_invoke_2_132;
  v2[3] = &unk_278D749E0;
  v2[4] = *(a1 + 32);
  return [MEMORY[0x277D75D18] animateWithDuration:v2 animations:0.150000006];
}

void __96__PHHandsetDialerLCDView_updateAddAndDeleteButtonForText_name_label_source_suggestion_animated___block_invoke_2_132(uint64_t a1)
{
  v2 = [*(a1 + 32) contactLabel];
  [v2 setAlpha:1.0];

  v3 = [*(a1 + 32) sourceLabel];
  [v3 setAlpha:1.0];
}

void __96__PHHandsetDialerLCDView_updateAddAndDeleteButtonForText_name_label_source_suggestion_animated___block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) addContactButton];
  [v1 setAlpha:0.0];
}

uint64_t __96__PHHandsetDialerLCDView_updateAddAndDeleteButtonForText_name_label_source_suggestion_animated___block_invoke_4(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __96__PHHandsetDialerLCDView_updateAddAndDeleteButtonForText_name_label_source_suggestion_animated___block_invoke_5;
  v2[3] = &unk_278D749E0;
  v2[4] = *(a1 + 32);
  return [MEMORY[0x277D75D18] animateWithDuration:v2 animations:0.150000006];
}

void __96__PHHandsetDialerLCDView_updateAddAndDeleteButtonForText_name_label_source_suggestion_animated___block_invoke_5(uint64_t a1)
{
  v1 = [*(a1 + 32) addContactButton];
  [v1 setAlpha:1.0];
}

void __96__PHHandsetDialerLCDView_updateAddAndDeleteButtonForText_name_label_source_suggestion_animated___block_invoke_6(uint64_t a1)
{
  v1 = [*(a1 + 32) contactLabel];
  [v1 setAlpha:0.0];
}

void __96__PHHandsetDialerLCDView_updateAddAndDeleteButtonForText_name_label_source_suggestion_animated___block_invoke_7(uint64_t a1)
{
  v2 = 0.0;
  v3 = 0.0;
  if (*(a1 + 48) == 1)
  {
    if (*(a1 + 40))
    {
      v3 = 1.0;
    }

    else
    {
      v3 = 0.0;
    }
  }

  v4 = [*(a1 + 32) contactLabel];
  [v4 setAlpha:v3];

  if (*(a1 + 48) == 1)
  {
    if (*(a1 + 40))
    {
      v2 = 1.0;
    }

    else
    {
      v2 = 0.0;
    }
  }

  v5 = [*(a1 + 32) sourceLabel];
  [v5 setAlpha:v2];

  v6 = 0.0;
  if (*(a1 + 48) == 1)
  {
    if (*(a1 + 40))
    {
      v6 = 0.0;
    }

    else
    {
      v6 = 1.0;
    }
  }

  v7 = [*(a1 + 32) addContactButton];
  [v7 setAlpha:v6];

  v8 = [*(a1 + 32) delegate];
  v10 = v8;
  v9 = 1.0;
  if (!*(a1 + 49))
  {
    v9 = 0.0;
  }

  [v8 setDeleteButtonAlpha:v9];
}

- (void)_makeCalloutVisible:(BOOL)visible
{
  visibleCopy = visible;
  mEMORY[0x277D75718] = [MEMORY[0x277D75718] sharedMenuController];
  if ([mEMORY[0x277D75718] isMenuVisible] != visibleCopy)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    if (visibleCopy)
    {
      v6 = 25.0;
      if ([(PHHandsetDialerLCDView *)self appType]== 1 && [(PHHandsetDialerLCDView *)self enableSmartDialer])
      {
        [(PHHandsetDialerLCDView *)self remoteViewControllerLCDOffset];
        v6 = v7 + 43.0 + 25.0;
      }

      [(PHHandsetDialerLCDView *)self bounds];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
      [(PHHandsetDialerLCDView *)self bounds];
      v17 = floor(v16 * 0.5);
      if (v6 >= v17)
      {
        v18 = v17;
      }

      else
      {
        v18 = v6;
      }

      v21.origin.x = v9;
      v21.origin.y = v11;
      v21.size.width = v13;
      v21.size.height = v15;
      v22 = CGRectInset(v21, 0.0, v18);
      [mEMORY[0x277D75718] setTargetRect:self inView:{v22.origin.x, v22.origin.y, v22.size.width, v22.size.height}];
      [mEMORY[0x277D75718] setArrowDirection:1];
      [mEMORY[0x277D75718] setMenuVisible:1 animated:1];
      [defaultCenter addObserver:self selector:sel__menuDidHide_ name:*MEMORY[0x277D76CA8] object:0];
    }

    else
    {
      [mEMORY[0x277D75718] setMenuVisible:0 animated:1];
      [defaultCenter removeObserver:self name:*MEMORY[0x277D76CA8] object:0];
    }
  }
}

- (BOOL)resignFirstResponder
{
  v5.receiver = self;
  v5.super_class = PHHandsetDialerLCDView;
  resignFirstResponder = [(PHHandsetDialerLCDView *)&v5 resignFirstResponder];
  if (resignFirstResponder)
  {
    [(PHHandsetDialerLCDView *)self _makeCalloutVisible:0];
  }

  return resignFirstResponder;
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if (sel_copy_ == action && (-[PHHandsetDialerLCDView text](self, "text"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 length], v7, !v8))
  {
    v9 = 0;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = PHHandsetDialerLCDView;
    v9 = [(PHHandsetDialerLCDView *)&v11 canPerformAction:action withSender:senderCopy];
  }

  return v9;
}

- (void)copy:(id)copy
{
  generalPasteboard = [MEMORY[0x277D75810] generalPasteboard];
  text = [(PHHandsetDialerLCDView *)self text];
  [generalPasteboard setString:text];
}

- (void)paste:(id)paste
{
  generalPasteboard = [MEMORY[0x277D75810] generalPasteboard];
  string = [generalPasteboard string];

  v5 = string;
  if (string)
  {
    [(PHHandsetDialerLCDView *)self _makeCalloutVisible:0];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v7 = objc_opt_respondsToSelector();

    v5 = string;
    if (v7)
    {
      v8 = objc_loadWeakRetained(&self->_delegate);
      [v8 dialerField:self stringWasPasted:string];

      v5 = string;
    }
  }
}

- (void)handleTapGesture:(id)gesture
{
  mEMORY[0x277D75718] = [MEMORY[0x277D75718] sharedMenuController];
  -[PHHandsetDialerLCDView _makeCalloutVisible:](self, "_makeCalloutVisible:", [mEMORY[0x277D75718] isMenuVisible] ^ 1);
}

- (double)addContactButtonContentInsetConstant
{
  requiresSmallScreenConfig = [MEMORY[0x277D3A7E0] requiresSmallScreenConfig];
  result = 10.0;
  if (requiresSmallScreenConfig)
  {
    return 5.0;
  }

  return result;
}

- (id)newAddContactButton
{
  v3 = [MEMORY[0x277D75220] buttonWithType:1];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [v3 setBackgroundColor:clearColor];

  [(PHHandsetDialerLCDView *)self addContactButtonContentInsetConstant];
  [v3 setContentEdgeInsets:{v5, v5, v5, v5}];
  [v3 setOpaque:0];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v6) = 1144750080;
  [v3 setContentCompressionResistancePriority:0 forAxis:v6];
  dynamicLabelColor = [MEMORY[0x277D75348] dynamicLabelColor];
  [v3 setTintColor:dynamicLabelColor];

  [v3 sizeToFit];
  if ([(PHHandsetDialerLCDView *)self appType]== 1 && [(PHHandsetDialerLCDView *)self enableSmartDialer])
  {
    v8 = [MEMORY[0x277D755B8] tpImageForSymbolType:18 textStyle:*MEMORY[0x277D76A20] scale:2 isStaticSize:0];
    [v3 setImage:v8 forState:0];
    [v3 setAdjustsImageSizeForAccessibilityContentSizeCategory:1];
    [v3 setMaximumContentSizeCategory:*MEMORY[0x277D76820]];
    [v3 setShowsLargeContentViewer:1];
    [v3 setLargeContentImage:v8];
    titleLabel = objc_alloc_init(MEMORY[0x277D756C8]);
    [v3 addInteraction:titleLabel];
  }

  else
  {
    v10 = objc_alloc(MEMORY[0x277CCA898]);
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"ADD_NUMBER" value:&stru_285532CB8 table:@"Dialer"];
    v13 = [v10 initWithString:v12];
    [v3 setAttributedTitle:v13 forState:0];

    v14 = MEMORY[0x277D74300];
    [(PHHandsetDialerLCDView *)self addNumberFontSize];
    v8 = [v14 systemFontOfSize:v15];
    titleLabel = [v3 titleLabel];
    [titleLabel setFont:v8];
  }

  return v3;
}

- (TPPillView)pillView
{
  pillView = self->_pillView;
  if (!pillView)
  {
    v4 = objc_alloc(MEMORY[0x277D6ED80]);
    v5 = [v4 initWithTitle:&stru_285532CB8 frame:3 theme:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [v5 setDelegate:self];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v6) = 1148846080;
    [v5 setContentHuggingPriority:1 forAxis:v6];
    LODWORD(v7) = 1148846080;
    [v5 setContentHuggingPriority:0 forAxis:v7];
    v8 = self->_pillView;
    self->_pillView = v5;

    pillView = self->_pillView;
  }

  return pillView;
}

- (id)newResultButton
{
  v3 = [MEMORY[0x277D75220] buttonWithType:1];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [v3 setBackgroundColor:clearColor];

  [v3 setContentEdgeInsets:{10.0, 10.0, 10.0, 10.0}];
  [v3 setOpaque:0];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v5) = 1144750080;
  [v3 setContentCompressionResistancePriority:0 forAxis:v5];
  [v3 setTitle:&stru_285532CB8 forState:0];
  v6 = MEMORY[0x277D74300];
  [(PHHandsetDialerLCDView *)self addNumberFontSize];
  v8 = [v6 systemFontOfSize:v7];
  titleLabel = [v3 titleLabel];
  [titleLabel setFont:v8];

  [v3 sizeToFit];
  return v3;
}

- (id)newSearchButton
{
  v3 = [MEMORY[0x277D75220] buttonWithType:1];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [v3 setBackgroundColor:clearColor];

  [v3 setContentEdgeInsets:{10.0, 10.0, 10.0, 10.0}];
  [v3 setOpaque:0];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v5) = 1144750080;
  [v3 setContentCompressionResistancePriority:0 forAxis:v5];
  if ([(PHHandsetDialerLCDView *)self enableSmartDialerExpandedSearch])
  {
    v6 = [MEMORY[0x277D755B8] systemImageNamed:@"magnifyingglass"];
    [v3 setImage:v6 forState:0];
  }

  systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  [v3 setTintColor:systemBlueColor];

  [v3 sizeToFit];
  return v3;
}

- (void)applyLayoutConstraints
{
  v106[4] = *MEMORY[0x277D85DE8];
  if ([(PHHandsetDialerLCDView *)self appType]== 1 && [(PHHandsetDialerLCDView *)self enableSmartDialer])
  {
    v3 = *MEMORY[0x277D85DE8];

    [(PHHandsetDialerLCDView *)self applyLayoutConstraintsForSmartDialer];
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      heightAnchor = [(PHHandsetDialerLCDView *)self heightAnchor];
      v7 = [heightAnchor constraintEqualToConstant:80.0];
      [v7 setActive:1];
    }

    if ([(PHHandsetDialerLCDView *)self appType]== 1)
    {
      currentDevice2 = [MEMORY[0x277D75418] currentDevice];
      userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

      if (userInterfaceIdiom2 == 5)
      {
        v97 = MEMORY[0x277CCAAD0];
        headerLayoutGuide = [(PHHandsetDialerLCDView *)self headerLayoutGuide];
        topAnchor = [headerLayoutGuide topAnchor];
        safeAreaLayoutGuide = [(PHHandsetDialerLCDView *)self safeAreaLayoutGuide];
        topAnchor2 = [safeAreaLayoutGuide topAnchor];
        v101 = [topAnchor constraintEqualToAnchor:topAnchor2];
        v106[0] = v101;
        headerLayoutGuide2 = [(PHHandsetDialerLCDView *)self headerLayoutGuide];
        bottomAnchor = [headerLayoutGuide2 bottomAnchor];
        numberTextField = [(PHHandsetDialerLCDView *)self numberTextField];
        topAnchor3 = [numberTextField topAnchor];
        [(PHHandsetDialerLCDView *)self addContactButtonContentInsetConstant];
        v95 = [bottomAnchor constraintEqualToAnchor:topAnchor3 constant:v10 + 5.0];
        v106[1] = v95;
        headerLayoutGuide3 = [(PHHandsetDialerLCDView *)self headerLayoutGuide];
        leadingAnchor = [headerLayoutGuide3 leadingAnchor];
        safeAreaLayoutGuide2 = [(PHHandsetDialerLCDView *)self safeAreaLayoutGuide];
        leadingAnchor2 = [safeAreaLayoutGuide2 leadingAnchor];
        v12 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
        v106[2] = v12;
        headerLayoutGuide4 = [(PHHandsetDialerLCDView *)self headerLayoutGuide];
        trailingAnchor = [headerLayoutGuide4 trailingAnchor];
        safeAreaLayoutGuide3 = [(PHHandsetDialerLCDView *)self safeAreaLayoutGuide];
        trailingAnchor2 = [safeAreaLayoutGuide3 trailingAnchor];
        v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
        v106[3] = v17;
        v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v106 count:4];
        [v97 activateConstraints:v18];
      }
    }

    v19 = MEMORY[0x277CCAAD0];
    addContactButton = [(PHHandsetDialerLCDView *)self addContactButton];
    [(PHHandsetDialerLCDView *)self addContactButtonTopConstraintConstant];
    v22 = [v19 constraintWithItem:addContactButton attribute:11 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:v21];
    [(PHHandsetDialerLCDView *)self setAddContactButtonTopConstraint:v22];

    addContactButtonTopConstraint = [(PHHandsetDialerLCDView *)self addContactButtonTopConstraint];
    [(PHHandsetDialerLCDView *)self addConstraint:addContactButtonTopConstraint];

    v24 = MEMORY[0x277CCAAD0];
    addContactButton2 = [(PHHandsetDialerLCDView *)self addContactButton];
    v26 = [v24 constraintWithItem:self attribute:4 relatedBy:0 toItem:addContactButton2 attribute:11 multiplier:1.0 constant:0.0];
    [(PHHandsetDialerLCDView *)self addConstraint:v26];

    v27 = MEMORY[0x277CCAAD0];
    addContactButton3 = [(PHHandsetDialerLCDView *)self addContactButton];
    v29 = [v27 constraintWithItem:addContactButton3 attribute:9 relatedBy:0 toItem:self attribute:9 multiplier:1.0 constant:0.0];
    [(PHHandsetDialerLCDView *)self addConstraint:v29];

    v30 = MEMORY[0x277CCAAD0];
    addContactButton4 = [(PHHandsetDialerLCDView *)self addContactButton];
    layoutTextField = [(PHHandsetDialerLCDView *)self layoutTextField];
    [(PHHandsetDialerLCDView *)self spacingBetweenNumberBaselineAndNameBaseline];
    v34 = [v30 constraintWithItem:addContactButton4 attribute:11 relatedBy:0 toItem:layoutTextField attribute:11 multiplier:1.0 constant:v33];
    [(PHHandsetDialerLCDView *)self addConstraint:v34];

    v35 = MEMORY[0x277CCAAD0];
    addContactButton5 = [(PHHandsetDialerLCDView *)self addContactButton];
    layoutTextField2 = [(PHHandsetDialerLCDView *)self layoutTextField];
    v38 = [v35 constraintWithItem:addContactButton5 attribute:9 relatedBy:0 toItem:layoutTextField2 attribute:9 multiplier:1.0 constant:0.0];
    [(PHHandsetDialerLCDView *)self addConstraint:v38];

    v39 = MEMORY[0x277CCAAD0];
    numberTextField2 = [(PHHandsetDialerLCDView *)self numberTextField];
    layoutTextField3 = [(PHHandsetDialerLCDView *)self layoutTextField];
    v42 = [v39 constraintWithItem:numberTextField2 attribute:10 relatedBy:0 toItem:layoutTextField3 attribute:10 multiplier:1.0 constant:0.0];
    [(PHHandsetDialerLCDView *)self addConstraint:v42];

    v43 = MEMORY[0x277CCAAD0];
    numberTextField3 = [(PHHandsetDialerLCDView *)self numberTextField];
    layoutTextField4 = [(PHHandsetDialerLCDView *)self layoutTextField];
    v46 = [v43 constraintWithItem:numberTextField3 attribute:9 relatedBy:0 toItem:layoutTextField4 attribute:9 multiplier:1.0 constant:0.0];
    [(PHHandsetDialerLCDView *)self addConstraint:v46];

    v47 = MEMORY[0x277CCAAD0];
    businessNameField = [(PHHandsetDialerLCDView *)self businessNameField];
    layoutTextField5 = [(PHHandsetDialerLCDView *)self layoutTextField];
    v50 = [v47 constraintWithItem:businessNameField attribute:10 relatedBy:0 toItem:layoutTextField5 attribute:10 multiplier:1.0 constant:0.0];
    [(PHHandsetDialerLCDView *)self addConstraint:v50];

    v51 = MEMORY[0x277CCAAD0];
    businessNameField2 = [(PHHandsetDialerLCDView *)self businessNameField];
    layoutTextField6 = [(PHHandsetDialerLCDView *)self layoutTextField];
    v54 = [v51 constraintWithItem:businessNameField2 attribute:9 relatedBy:0 toItem:layoutTextField6 attribute:9 multiplier:1.0 constant:0.0];
    [(PHHandsetDialerLCDView *)self addConstraint:v54];

    v55 = MEMORY[0x277CCAAD0];
    contactLabel = [(PHHandsetDialerLCDView *)self contactLabel];
    addContactButton6 = [(PHHandsetDialerLCDView *)self addContactButton];
    v58 = [v55 constraintWithItem:contactLabel attribute:9 relatedBy:0 toItem:addContactButton6 attribute:9 multiplier:1.0 constant:0.0];
    [(PHHandsetDialerLCDView *)self addConstraint:v58];

    v59 = MEMORY[0x277CCAAD0];
    contactLabel2 = [(PHHandsetDialerLCDView *)self contactLabel];
    addContactButton7 = [(PHHandsetDialerLCDView *)self addContactButton];
    v62 = [v59 constraintWithItem:contactLabel2 attribute:12 relatedBy:0 toItem:addContactButton7 attribute:12 multiplier:1.0 constant:0.0];
    [(PHHandsetDialerLCDView *)self addConstraint:v62];

    v63 = MEMORY[0x277CCAAD0];
    contactLabel3 = [(PHHandsetDialerLCDView *)self contactLabel];
    v65 = [v63 constraintWithItem:contactLabel3 attribute:5 relatedBy:1 toItem:self attribute:5 multiplier:1.0 constant:0.0];
    [(PHHandsetDialerLCDView *)self addConstraint:v65];

    v66 = MEMORY[0x277CCAAD0];
    contactLabel4 = [(PHHandsetDialerLCDView *)self contactLabel];
    v68 = [v66 constraintWithItem:contactLabel4 attribute:6 relatedBy:-1 toItem:self attribute:6 multiplier:1.0 constant:0.0];
    [(PHHandsetDialerLCDView *)self addConstraint:v68];

    v69 = MEMORY[0x277CCAAD0];
    sourceLabel = [(PHHandsetDialerLCDView *)self sourceLabel];
    addContactButton8 = [(PHHandsetDialerLCDView *)self addContactButton];
    v72 = [v69 constraintWithItem:sourceLabel attribute:9 relatedBy:0 toItem:addContactButton8 attribute:9 multiplier:1.0 constant:0.0];
    [(PHHandsetDialerLCDView *)self addConstraint:v72];

    separator = [(PHHandsetDialerLCDView *)self separator];

    v74 = MEMORY[0x277CCAAD0];
    sourceLabel2 = [(PHHandsetDialerLCDView *)self sourceLabel];
    if (separator)
    {
      separator2 = [(PHHandsetDialerLCDView *)self separator];
      v77 = 1.0;
      v78 = 10.0;
      v79 = v74;
      v80 = sourceLabel2;
      v81 = 12;
      v82 = separator2;
      v83 = 12;
    }

    else
    {
      separator2 = [(PHHandsetDialerLCDView *)self contactLabel];
      v77 = 1.0;
      v78 = 2.0;
      v79 = v74;
      v80 = sourceLabel2;
      v81 = 3;
      v82 = separator2;
      v83 = 4;
    }

    v84 = [v79 constraintWithItem:v80 attribute:v81 relatedBy:0 toItem:v82 attribute:v83 multiplier:v77 constant:v78];
    [(PHHandsetDialerLCDView *)self addConstraint:v84];

    v85 = MEMORY[0x277CCAAD0];
    sourceLabel3 = [(PHHandsetDialerLCDView *)self sourceLabel];
    v87 = [v85 constraintWithItem:sourceLabel3 attribute:5 relatedBy:1 toItem:self attribute:5 multiplier:1.0 constant:0.0];
    [(PHHandsetDialerLCDView *)self addConstraint:v87];

    v88 = MEMORY[0x277CCAAD0];
    sourceLabel4 = [(PHHandsetDialerLCDView *)self sourceLabel];
    v90 = [v88 constraintWithItem:sourceLabel4 attribute:6 relatedBy:-1 toItem:self attribute:6 multiplier:1.0 constant:0.0];
    [(PHHandsetDialerLCDView *)self addConstraint:v90];

    [(PHHandsetDialerLCDView *)self updateNumberAndBusinessNameLabelHorizontalConstraints];
    v91 = *MEMORY[0x277D85DE8];
  }
}

- (void)applyLayoutConstraintsForSmartDialer
{
  v181[4] = *MEMORY[0x277D85DE8];
  v165 = MEMORY[0x277CCAAD0];
  headerLayoutGuide = [(PHHandsetDialerLCDView *)self headerLayoutGuide];
  topAnchor = [headerLayoutGuide topAnchor];
  safeAreaLayoutGuide = [(PHHandsetDialerLCDView *)self safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v170 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v181[0] = v170;
  headerLayoutGuide2 = [(PHHandsetDialerLCDView *)self headerLayoutGuide];
  bottomAnchor = [headerLayoutGuide2 bottomAnchor];
  numberTextField = [(PHHandsetDialerLCDView *)self numberTextField];
  topAnchor3 = [numberTextField topAnchor];
  [(PHHandsetDialerLCDView *)self addContactButtonContentInsetConstant];
  v163 = [bottomAnchor constraintEqualToAnchor:topAnchor3 constant:v3 + 5.0];
  v181[1] = v163;
  headerLayoutGuide3 = [(PHHandsetDialerLCDView *)self headerLayoutGuide];
  leadingAnchor = [headerLayoutGuide3 leadingAnchor];
  safeAreaLayoutGuide2 = [(PHHandsetDialerLCDView *)self safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide2 leadingAnchor];
  v6 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v181[2] = v6;
  headerLayoutGuide4 = [(PHHandsetDialerLCDView *)self headerLayoutGuide];
  trailingAnchor = [headerLayoutGuide4 trailingAnchor];
  safeAreaLayoutGuide3 = [(PHHandsetDialerLCDView *)self safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide3 trailingAnchor];
  v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v181[3] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v181 count:4];
  [v165 activateConstraints:v12];

  v13 = MEMORY[0x277CCAAD0];
  layoutTextField = [(PHHandsetDialerLCDView *)self layoutTextField];
  v15 = [v13 constraintWithItem:layoutTextField attribute:9 relatedBy:0 toItem:self attribute:9 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v15];

  v16 = MEMORY[0x277CCAAD0];
  numberTextField2 = [(PHHandsetDialerLCDView *)self numberTextField];
  layoutTextField2 = [(PHHandsetDialerLCDView *)self layoutTextField];
  v19 = [v16 constraintWithItem:numberTextField2 attribute:10 relatedBy:0 toItem:layoutTextField2 attribute:10 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v19];

  v20 = MEMORY[0x277CCAAD0];
  numberTextField3 = [(PHHandsetDialerLCDView *)self numberTextField];
  layoutTextField3 = [(PHHandsetDialerLCDView *)self layoutTextField];
  v23 = [v20 constraintWithItem:numberTextField3 attribute:9 relatedBy:0 toItem:layoutTextField3 attribute:9 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v23];

  v24 = MEMORY[0x277CCAAD0];
  businessNameField = [(PHHandsetDialerLCDView *)self businessNameField];
  layoutTextField4 = [(PHHandsetDialerLCDView *)self layoutTextField];
  v27 = [v24 constraintWithItem:businessNameField attribute:10 relatedBy:0 toItem:layoutTextField4 attribute:10 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v27];

  v28 = MEMORY[0x277CCAAD0];
  businessNameField2 = [(PHHandsetDialerLCDView *)self businessNameField];
  layoutTextField5 = [(PHHandsetDialerLCDView *)self layoutTextField];
  v31 = [v28 constraintWithItem:businessNameField2 attribute:9 relatedBy:0 toItem:layoutTextField5 attribute:9 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v31];

  v32 = MEMORY[0x277CCAAD0];
  primaryResultButton = [(PHHandsetDialerLCDView *)self primaryResultButton];
  layoutTextField6 = [(PHHandsetDialerLCDView *)self layoutTextField];
  [(PHHandsetDialerLCDView *)self spacingBetweenNumberAndContactResult];
  v36 = [v32 constraintWithItem:primaryResultButton attribute:3 relatedBy:0 toItem:layoutTextField6 attribute:4 multiplier:1.0 constant:v35];
  [(PHHandsetDialerLCDView *)self addConstraint:v36];

  v37 = MEMORY[0x277CCAAD0];
  primaryResultButton2 = [(PHHandsetDialerLCDView *)self primaryResultButton];
  [(PHHandsetDialerLCDView *)self resultButtonsHorizontalPadding];
  v40 = [v37 constraintWithItem:primaryResultButton2 attribute:5 relatedBy:0 toItem:self attribute:5 multiplier:1.0 constant:v39];
  [(PHHandsetDialerLCDView *)self addConstraint:v40];

  v41 = MEMORY[0x277CCAAD0];
  primaryResultButton3 = [(PHHandsetDialerLCDView *)self primaryResultButton];
  [(PHHandsetDialerLCDView *)self resultButtonsHorizontalPadding];
  v44 = [v41 constraintWithItem:primaryResultButton3 attribute:6 relatedBy:0 toItem:self attribute:6 multiplier:1.0 constant:-v43];
  [(PHHandsetDialerLCDView *)self addConstraint:v44];

  v45 = MEMORY[0x277CCAAD0];
  primaryResultButtonView = [(PHHandsetDialerLCDView *)self primaryResultButtonView];
  primaryResultButton4 = [(PHHandsetDialerLCDView *)self primaryResultButton];
  v48 = [v45 constraintWithItem:primaryResultButtonView attribute:5 relatedBy:0 toItem:primaryResultButton4 attribute:5 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v48];

  v49 = MEMORY[0x277CCAAD0];
  primaryResultButtonView2 = [(PHHandsetDialerLCDView *)self primaryResultButtonView];
  primaryResultButton5 = [(PHHandsetDialerLCDView *)self primaryResultButton];
  v52 = [v49 constraintWithItem:primaryResultButtonView2 attribute:6 relatedBy:0 toItem:primaryResultButton5 attribute:6 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v52];

  v53 = MEMORY[0x277CCAAD0];
  primaryResultButtonView3 = [(PHHandsetDialerLCDView *)self primaryResultButtonView];
  primaryResultButton6 = [(PHHandsetDialerLCDView *)self primaryResultButton];
  v56 = [v53 constraintWithItem:primaryResultButtonView3 attribute:3 relatedBy:0 toItem:primaryResultButton6 attribute:3 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v56];

  v57 = MEMORY[0x277CCAAD0];
  primaryResultButtonView4 = [(PHHandsetDialerLCDView *)self primaryResultButtonView];
  primaryResultButton7 = [(PHHandsetDialerLCDView *)self primaryResultButton];
  v60 = [v57 constraintWithItem:primaryResultButtonView4 attribute:4 relatedBy:0 toItem:primaryResultButton7 attribute:4 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v60];

  v61 = MEMORY[0x277CCAAD0];
  separator = [(PHHandsetDialerLCDView *)self separator];
  primaryResultButton8 = [(PHHandsetDialerLCDView *)self primaryResultButton];
  [(PHHandsetDialerLCDView *)self spacingBetweenPrimaryResultButtons];
  v65 = [v61 constraintWithItem:separator attribute:3 relatedBy:0 toItem:primaryResultButton8 attribute:4 multiplier:1.0 constant:v64];
  [(PHHandsetDialerLCDView *)self addConstraint:v65];

  v66 = MEMORY[0x277CCAAD0];
  separator2 = [(PHHandsetDialerLCDView *)self separator];
  v68 = [v66 constraintWithItem:separator2 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:1.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v68];

  v69 = MEMORY[0x277CCAAD0];
  separator3 = [(PHHandsetDialerLCDView *)self separator];
  primaryResultButton9 = [(PHHandsetDialerLCDView *)self primaryResultButton];
  v72 = [v69 constraintWithItem:separator3 attribute:5 relatedBy:0 toItem:primaryResultButton9 attribute:5 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v72];

  v73 = MEMORY[0x277CCAAD0];
  separator4 = [(PHHandsetDialerLCDView *)self separator];
  primaryResultButton10 = [(PHHandsetDialerLCDView *)self primaryResultButton];
  v76 = [v73 constraintWithItem:separator4 attribute:6 relatedBy:0 toItem:primaryResultButton10 attribute:6 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v76];

  v77 = MEMORY[0x277CCAAD0];
  secondaryResultButton = [(PHHandsetDialerLCDView *)self secondaryResultButton];
  separator5 = [(PHHandsetDialerLCDView *)self separator];
  [(PHHandsetDialerLCDView *)self spacingBetweenPrimaryResultButtons];
  v81 = [v77 constraintWithItem:secondaryResultButton attribute:3 relatedBy:0 toItem:separator5 attribute:4 multiplier:1.0 constant:v80];
  [(PHHandsetDialerLCDView *)self addConstraint:v81];

  v82 = MEMORY[0x277CCAAD0];
  secondaryResultButton2 = [(PHHandsetDialerLCDView *)self secondaryResultButton];
  v84 = [v82 constraintWithItem:self attribute:4 relatedBy:0 toItem:secondaryResultButton2 attribute:11 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v84];

  v85 = MEMORY[0x277CCAAD0];
  secondaryResultButton3 = [(PHHandsetDialerLCDView *)self secondaryResultButton];
  primaryResultButton11 = [(PHHandsetDialerLCDView *)self primaryResultButton];
  v88 = [v85 constraintWithItem:secondaryResultButton3 attribute:5 relatedBy:0 toItem:primaryResultButton11 attribute:5 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v88];

  v89 = MEMORY[0x277CCAAD0];
  secondaryResultButton4 = [(PHHandsetDialerLCDView *)self secondaryResultButton];
  primaryResultButton12 = [(PHHandsetDialerLCDView *)self primaryResultButton];
  v92 = [v89 constraintWithItem:secondaryResultButton4 attribute:6 relatedBy:0 toItem:primaryResultButton12 attribute:6 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v92];

  v93 = MEMORY[0x277CCAAD0];
  secondaryResultButtonView = [(PHHandsetDialerLCDView *)self secondaryResultButtonView];
  secondaryResultButton5 = [(PHHandsetDialerLCDView *)self secondaryResultButton];
  v96 = [v93 constraintWithItem:secondaryResultButtonView attribute:5 relatedBy:0 toItem:secondaryResultButton5 attribute:5 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v96];

  v97 = MEMORY[0x277CCAAD0];
  secondaryResultButtonView2 = [(PHHandsetDialerLCDView *)self secondaryResultButtonView];
  secondaryResultButton6 = [(PHHandsetDialerLCDView *)self secondaryResultButton];
  v100 = [v97 constraintWithItem:secondaryResultButtonView2 attribute:6 relatedBy:0 toItem:secondaryResultButton6 attribute:6 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v100];

  v101 = MEMORY[0x277CCAAD0];
  secondaryResultButtonView3 = [(PHHandsetDialerLCDView *)self secondaryResultButtonView];
  secondaryResultButton7 = [(PHHandsetDialerLCDView *)self secondaryResultButton];
  v104 = [v101 constraintWithItem:secondaryResultButtonView3 attribute:3 relatedBy:0 toItem:secondaryResultButton7 attribute:3 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v104];

  v105 = MEMORY[0x277CCAAD0];
  secondaryResultButtonView4 = [(PHHandsetDialerLCDView *)self secondaryResultButtonView];
  secondaryResultButton8 = [(PHHandsetDialerLCDView *)self secondaryResultButton];
  v108 = [v105 constraintWithItem:secondaryResultButtonView4 attribute:4 relatedBy:0 toItem:secondaryResultButton8 attribute:4 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v108];

  v109 = MEMORY[0x277CCAAD0];
  contactLabel = [(PHHandsetDialerLCDView *)self contactLabel];
  layoutTextField7 = [(PHHandsetDialerLCDView *)self layoutTextField];
  v112 = [v109 constraintWithItem:contactLabel attribute:9 relatedBy:0 toItem:layoutTextField7 attribute:9 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v112];

  v113 = MEMORY[0x277CCAAD0];
  contactLabel2 = [(PHHandsetDialerLCDView *)self contactLabel];
  primaryResultButton13 = [(PHHandsetDialerLCDView *)self primaryResultButton];
  v116 = [v113 constraintWithItem:contactLabel2 attribute:12 relatedBy:0 toItem:primaryResultButton13 attribute:12 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v116];

  v117 = MEMORY[0x277CCAAD0];
  contactLabel3 = [(PHHandsetDialerLCDView *)self contactLabel];
  v119 = [v117 constraintWithItem:contactLabel3 attribute:5 relatedBy:1 toItem:self attribute:5 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v119];

  v120 = MEMORY[0x277CCAAD0];
  contactLabel4 = [(PHHandsetDialerLCDView *)self contactLabel];
  v122 = [v120 constraintWithItem:contactLabel4 attribute:6 relatedBy:-1 toItem:self attribute:6 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v122];

  v123 = MEMORY[0x277CCAAD0];
  sourceLabel = [(PHHandsetDialerLCDView *)self sourceLabel];
  layoutTextField8 = [(PHHandsetDialerLCDView *)self layoutTextField];
  v126 = [v123 constraintWithItem:sourceLabel attribute:9 relatedBy:0 toItem:layoutTextField8 attribute:9 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v126];

  v127 = MEMORY[0x277CCAAD0];
  sourceLabel2 = [(PHHandsetDialerLCDView *)self sourceLabel];
  separator6 = [(PHHandsetDialerLCDView *)self separator];
  v130 = [v127 constraintWithItem:sourceLabel2 attribute:12 relatedBy:0 toItem:separator6 attribute:12 multiplier:1.0 constant:10.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v130];

  v131 = MEMORY[0x277CCAAD0];
  sourceLabel3 = [(PHHandsetDialerLCDView *)self sourceLabel];
  v133 = [v131 constraintWithItem:sourceLabel3 attribute:5 relatedBy:1 toItem:self attribute:5 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v133];

  v134 = MEMORY[0x277CCAAD0];
  sourceLabel4 = [(PHHandsetDialerLCDView *)self sourceLabel];
  v136 = [v134 constraintWithItem:sourceLabel4 attribute:6 relatedBy:-1 toItem:self attribute:6 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v136];

  if (_UISolariumEnabled())
  {
    v169 = MEMORY[0x277CCAAD0];
    dialerResultButtonsGlassBackgroundView = [(PHHandsetDialerLCDView *)self dialerResultButtonsGlassBackgroundView];
    topAnchor4 = [dialerResultButtonsGlassBackgroundView topAnchor];
    primaryResultButton14 = [(PHHandsetDialerLCDView *)self primaryResultButton];
    topAnchor5 = [primaryResultButton14 topAnchor];
    [(PHHandsetDialerLCDView *)self spacingBetweenPrimaryResultButtons];
    v171 = [topAnchor4 constraintEqualToAnchor:topAnchor5 constant:-v137];
    v180[0] = v171;
    dialerResultButtonsGlassBackgroundView2 = [(PHHandsetDialerLCDView *)self dialerResultButtonsGlassBackgroundView];
    leadingAnchor3 = [dialerResultButtonsGlassBackgroundView2 leadingAnchor];
    leadingAnchor4 = [(PHHandsetDialerLCDView *)self leadingAnchor];
    [MEMORY[0x277D6ED70] horizontalPadding];
    v141 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:?];
    v180[1] = v141;
    dialerResultButtonsGlassBackgroundView3 = [(PHHandsetDialerLCDView *)self dialerResultButtonsGlassBackgroundView];
    trailingAnchor3 = [dialerResultButtonsGlassBackgroundView3 trailingAnchor];
    trailingAnchor4 = [(PHHandsetDialerLCDView *)self trailingAnchor];
    [MEMORY[0x277D6ED70] horizontalPadding];
    v146 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-v145];
    v180[2] = v146;
    v147 = [MEMORY[0x277CBEA60] arrayWithObjects:v180 count:3];
    [v169 activateConstraints:v147];

    dialerResultButtonsGlassBackgroundView4 = [(PHHandsetDialerLCDView *)self dialerResultButtonsGlassBackgroundView];
    bottomAnchor2 = [dialerResultButtonsGlassBackgroundView4 bottomAnchor];
    secondaryResultButton9 = [(PHHandsetDialerLCDView *)self secondaryResultButton];
    bottomAnchor3 = [secondaryResultButton9 bottomAnchor];
    [(PHHandsetDialerLCDView *)self spacingBetweenPrimaryResultButtons];
    v153 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:v152];
    [(PHHandsetDialerLCDView *)self setSecondaryVisibleConstraint:v153];

    dialerResultButtonsGlassBackgroundView5 = [(PHHandsetDialerLCDView *)self dialerResultButtonsGlassBackgroundView];
    bottomAnchor4 = [dialerResultButtonsGlassBackgroundView5 bottomAnchor];
    primaryResultButton15 = [(PHHandsetDialerLCDView *)self primaryResultButton];
    bottomAnchor5 = [primaryResultButton15 bottomAnchor];
    [(PHHandsetDialerLCDView *)self spacingBetweenPrimaryResultButtons];
    v159 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5 constant:v158];
    [(PHHandsetDialerLCDView *)self setSecondaryHiddenConstraint:v159];
  }

  [(PHHandsetDialerLCDView *)self updateNumberAndBusinessNameLabelHorizontalConstraints];
  v160 = *MEMORY[0x277D85DE8];
}

- (void)updateNumberAndBusinessNameLabelHorizontalConstraints
{
  numberLabelHorizontalConstraints = [(PHHandsetDialerLCDView *)self numberLabelHorizontalConstraints];

  if (numberLabelHorizontalConstraints)
  {
    numberLabelHorizontalConstraints2 = [(PHHandsetDialerLCDView *)self numberLabelHorizontalConstraints];
    [(PHHandsetDialerLCDView *)self removeConstraints:numberLabelHorizontalConstraints2];
  }

  generateNumberLabelHorizontalConstraints = [(PHHandsetDialerLCDView *)self generateNumberLabelHorizontalConstraints];
  [(PHHandsetDialerLCDView *)self setNumberLabelHorizontalConstraints:generateNumberLabelHorizontalConstraints];

  numberLabelHorizontalConstraints3 = [(PHHandsetDialerLCDView *)self numberLabelHorizontalConstraints];
  [(PHHandsetDialerLCDView *)self addConstraints:numberLabelHorizontalConstraints3];

  businessNameLabelHorizontalConstraints = [(PHHandsetDialerLCDView *)self businessNameLabelHorizontalConstraints];

  if (businessNameLabelHorizontalConstraints)
  {
    businessNameLabelHorizontalConstraints2 = [(PHHandsetDialerLCDView *)self businessNameLabelHorizontalConstraints];
    [(PHHandsetDialerLCDView *)self removeConstraints:businessNameLabelHorizontalConstraints2];
  }

  generateBusinessNameLabelHorizontalConstraints = [(PHHandsetDialerLCDView *)self generateBusinessNameLabelHorizontalConstraints];
  [(PHHandsetDialerLCDView *)self setBusinessNameLabelHorizontalConstraints:generateBusinessNameLabelHorizontalConstraints];

  businessNameLabelHorizontalConstraints3 = [(PHHandsetDialerLCDView *)self businessNameLabelHorizontalConstraints];
  [(PHHandsetDialerLCDView *)self addConstraints:businessNameLabelHorizontalConstraints3];
}

- (double)addContactButtonTopConstraintConstant
{
  [MEMORY[0x277D3A7E0] yOffsetForDialerLCDView:{-[PHHandsetDialerLCDView appType](self, "appType")}];
  v4 = v3;
  [(PHHandsetDialerLCDView *)self pillViewTopOffset];
  v6 = v4 + v5;
  [(PHHandsetDialerLCDView *)self remoteViewControllerLCDOffset];
  return v6 - v7;
}

- (double)pillViewTopConstraintConstant
{
  v3 = 0.0;
  if (+[PHInCallUIUtilities hasMultipleSenderIdentities]&& [(PHHandsetDialerLCDView *)self isHostedInRemoteViewController])
  {
    screenSize = [MEMORY[0x277D3A7E0] screenSize];
    if (screenSize > 0xF)
    {
      return 13.0;
    }

    v3 = 10.0;
    if (((1 << screenSize) & 0xA200) == 0)
    {
      if (((1 << screenSize) & 3) != 0)
      {
        return 0.0;
      }

      return 13.0;
    }
  }

  return v3;
}

- (float)pillViewHiddenOffset
{
  v2 = +[PHInCallUIUtilities hasMultipleSenderIdentities];
  LODWORD(v3) = 30.0;
  if (v2)
  {
    screenSize = [MEMORY[0x277D3A7E0] screenSize];
    if (screenSize <= 8)
    {
      if (screenSize)
      {
        if (screenSize != 1)
        {
LABEL_15:
          LODWORD(v3) = 9.0;
          return *&v3;
        }

        LODWORD(v3) = 2.0;
      }

      else
      {
        LODWORD(v3) = 0;
      }
    }

    else
    {
      LODWORD(v3) = 6.0;
      if (screenSize != 9 && screenSize != 13 && screenSize != 15)
      {
        goto LABEL_15;
      }
    }
  }

  return *&v3;
}

- (float)spacingBetweenNumberAndContactResult
{
  screenSize = [MEMORY[0x277D3A7E0] screenSize];
  if (screenSize <= 8)
  {
    if (screenSize)
    {
      if (screenSize != 1)
      {
        return 19.0;
      }

      v7 = ![(PHHandsetDialerLCDView *)self isHostedInRemoteViewController];
      result = 14.0;
      v8 = 6.0;
    }

    else
    {
      v7 = ![(PHHandsetDialerLCDView *)self isHostedInRemoteViewController];
      result = 2.0;
      v8 = 0.0;
    }

    if (!v7)
    {
      return v8;
    }
  }

  else
  {
    result = 10.0;
    if (screenSize != 9 && screenSize != 13 && screenSize != 15)
    {
      return 19.0;
    }
  }

  return result;
}

- (float)spacingBetweenPrimaryResultButtons
{
  screenSize = [MEMORY[0x277D3A7E0] screenSize];
  if (screenSize == 1)
  {
    return 5.0;
  }

  if (screenSize)
  {
    return 11.0;
  }

  isHostedInRemoteViewController = [(PHHandsetDialerLCDView *)self isHostedInRemoteViewController];
  result = 5.0;
  if (isHostedInRemoteViewController)
  {
    return 2.0;
  }

  return result;
}

- (float)resultButtonsHorizontalPadding
{
  [MEMORY[0x277D6ED70] horizontalPadding];
  v3 = v2;
  if (_UISolariumEnabled())
  {
    if ([MEMORY[0x277D3A7E0] screenSize] <= 1)
    {
      return v3 + 10.0;
    }

    else
    {
      return v3 + 16.0;
    }
  }

  return v3;
}

- (double)pillViewTopOffset
{
  v2 = +[PHInCallUIUtilities hasMultipleSenderIdentities];
  result = 0.0;
  if (v2)
  {
    handsetDialerSpacing = [MEMORY[0x277D3A7E0] handsetDialerSpacing];
    result = 0.0;
    if (handsetDialerSpacing == 2)
    {
      result = 25.0;
    }

    if (!handsetDialerSpacing)
    {
      return 30.0;
    }
  }

  return result;
}

- (double)remoteViewControllerLCDOffset
{
  v2 = 0.0;
  if ([(PHHandsetDialerLCDView *)self isHostedInRemoteViewController])
  {
    handsetDialerSpacing = [MEMORY[0x277D3A7E0] handsetDialerSpacing];
    if (handsetDialerSpacing <= 6)
    {
      return dbl_2429ED2E8[handsetDialerSpacing];
    }
  }

  return v2;
}

- (void)setIsHostedInRemoteViewController:(BOOL)controller
{
  if (self->_isHostedInRemoteViewController != controller)
  {
    self->_isHostedInRemoteViewController = controller;
    [(PHHandsetDialerLCDView *)self addContactButtonTopConstraintConstant];
    v6 = v5;
    addContactButtonTopConstraint = [(PHHandsetDialerLCDView *)self addContactButtonTopConstraint];
    [addContactButtonTopConstraint setConstant:v6];
  }
}

- (void)textField:(id)field didUpdateString:(id)string
{
  fieldCopy = field;
  if ([fieldCopy isEditing])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      [v7 dialerLCDFieldTextDidChange:self];
    }
  }

  text = [(PHHandsetDialerLCDView *)self text];
  v9 = [text length];

  if (!v9)
  {
    [fieldCopy endEditing:1];
  }
}

- (void)contactResultButtonPressed
{
  v55 = *MEMORY[0x277D85DE8];
  if ([(PHHandsetDialerLCDView *)self enableSmartDialer])
  {
    if (self->_contactSearchResult)
    {
      v3 = MEMORY[0x277CBDA78];
      resultContact = [(PHHandsetDialerLCDView *)self resultContact];
      v5 = [v3 stringFromContact:resultContact style:0];

      resultContactPhoneNumber = [(PHHandsetDialerLCDView *)self resultContactPhoneNumber];
      value = [resultContactPhoneNumber value];
      formattedStringValue = [value formattedStringValue];
      v9 = formattedStringValue;
      if (formattedStringValue)
      {
        stringValue = formattedStringValue;
      }

      else
      {
        value2 = [resultContactPhoneNumber value];
        stringValue = [value2 stringValue];
      }

      v13 = MEMORY[0x277CBDB20];
      label = [resultContactPhoneNumber label];
      v11 = [v13 localizedStringForLabel:label];

      self->_hasCompleteMatch = 1;
      if ([(TUFeatureFlags *)self->_featureFlags dialerInterceptEnabled])
      {
        v15 = dispatch_group_create();
        v43 = 0;
        v44 = &v43;
        v45 = 0x3032000000;
        v46 = __Block_byref_object_copy__1;
        v47 = __Block_byref_object_dispose__1;
        v48 = 0;
        v39 = 0;
        v40 = &v39;
        v41 = 0x2020000000;
        v42 = 0;
        v35 = 0;
        v36 = &v35;
        v37 = 0x2020000000;
        v38 = 0;
        dispatch_group_enter(v15);
        resultDelegate = [(PHHandsetDialerLCDView *)self resultDelegate];
        v27 = MEMORY[0x277D85DD0];
        v28 = 3221225472;
        v29 = __52__PHHandsetDialerLCDView_contactResultButtonPressed__block_invoke;
        v30 = &unk_278D74CE0;
        v32 = &v43;
        v33 = &v39;
        v34 = &v35;
        v17 = v15;
        v31 = v17;
        [resultDelegate searchBusinessesFor:stringValue completionHandler:&v27];

        v18 = dispatch_time(0, 1000000000);
        v19 = dispatch_group_wait(v17, v18);
        v20 = PHDefaultLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = v44[5];
          v22 = *(v40 + 24);
          *buf = 138412802;
          v50 = v21;
          v51 = 1024;
          v52 = v22;
          v53 = 1024;
          v54 = v19 != 0;
          _os_log_impl(&dword_2429BC000, v20, OS_LOG_TYPE_DEFAULT, "Business search result | businessMatchResult: %@ businessHasCompleteMatch: %d didTimeout: %d", buf, 0x18u);
        }

        if (v19 || *(v40 + 24) != 1)
        {
          v23 = 1;
        }

        else
        {
          [(PHHandsetDialerLCDView *)self setBusinessSearchResult:v44[5] hasCompleteMatch:1 hasMessageAction:*(v36 + 24) nameOverride:v5, v27, v28, v29, v30];
          v23 = 0;
        }

        _Block_object_dispose(&v35, 8);
        _Block_object_dispose(&v39, 8);
        _Block_object_dispose(&v43, 8);

        if ((v23 & 1) == 0)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      v11 = 0;
      stringValue = 0;
      v5 = 0;
    }

    [(PHHandsetDialerLCDView *)self hideResultsButtons:v27];
    [(PHLCDViewTextField *)self->_numberTextField setText:stringValue];
    [(PHHandsetDialerLCDView *)self setName:v5 numberLabel:v11];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v25 = objc_opt_respondsToSelector();

    if ((v25 & 1) == 0)
    {
LABEL_19:

      goto LABEL_20;
    }

    resultContactPhoneNumber = objc_loadWeakRetained(&self->_delegate);
    [resultContactPhoneNumber updateIDSStatus];
LABEL_18:

    goto LABEL_19;
  }

LABEL_20:
  v26 = *MEMORY[0x277D85DE8];
}

void __52__PHHandsetDialerLCDView_contactResultButtonPressed__block_invoke(uint64_t a1, void *a2, char a3, char a4, void *a5)
{
  v10 = a2;
  v11 = a5;
  if (v11)
  {
    v12 = PHDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __52__PHHandsetDialerLCDView_contactResultButtonPressed__block_invoke_cold_1(v11, v12);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *(*(*(a1 + 48) + 8) + 24) = a3;
    *(*(*(a1 + 56) + 8) + 24) = a4;
  }

  dispatch_group_leave(*(a1 + 32));
}

- (void)launchBusinessMessagesSupport
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_2429BC000, a2, OS_LOG_TYPE_ERROR, "Error opening Messages url: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (BOOL)textFieldShouldBeginEditing:(id)editing
{
  text = [(PHLCDViewTextField *)self->_numberTextField text];
  v4 = [text length] != 0;

  return v4;
}

- (void)textFieldDidBeginEditing:(id)editing
{
  mEMORY[0x277D75718] = [MEMORY[0x277D75718] sharedMenuController];
  isMenuVisible = [mEMORY[0x277D75718] isMenuVisible];

  if (isMenuVisible)
  {

    [(PHHandsetDialerLCDView *)self _makeCalloutVisible:0];
  }
}

- (void)textFieldDidEndEditing:(id)editing
{
  text = [(PHHandsetDialerLCDView *)self text];
  [(PHHandsetDialerLCDView *)self setText:text needsFormat:1];
}

- (id)resultContactPhoneNumber
{
  preferredPhoneNumber = [(MPContactSearchResult *)self->_contactSearchResult preferredPhoneNumber];
  if (preferredPhoneNumber || ([(MPContactSearchResult *)self->_contactSearchResult preferredPhoneNumber], (preferredPhoneNumber = objc_claimAutoreleasedReturnValue()) != 0))
  {
    firstObject = preferredPhoneNumber;
  }

  else
  {
    resultContact = [(PHHandsetDialerLCDView *)self resultContact];
    phoneNumbers = [resultContact phoneNumbers];
    firstObject = [phoneNumbers firstObject];
  }

  return firstObject;
}

- (void)hideResultsButtons
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __44__PHHandsetDialerLCDView_hideResultsButtons__block_invoke;
  aBlock[3] = &unk_278D749E0;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  [MEMORY[0x277D75D18] animateWithDuration:v3 animations:0.300000012];
  self->_primaryResultButtonVisible = 0;
  self->_secondaryResultButtonVisible = 0;
}

void __44__PHHandsetDialerLCDView_hideResultsButtons__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) primaryResultButton];
  [v2 setAlpha:0.0];

  v3 = [*(a1 + 32) secondaryResultButton];
  [v3 setAlpha:0.0];

  v4 = [*(a1 + 32) separator];
  [v4 setAlpha:0.0];

  v5 = [*(a1 + 32) dialerResultButtonsGlassBackgroundView];
  [v5 setAlpha:0.0];
}

- (void)updateContactResultButtons
{
  if (![(PHHandsetDialerLCDView *)self enableSmartDialer])
  {
    return;
  }

  [(PHHandsetDialerLCDView *)self setName:0 numberLabel:0];
  [(MPDialerInterceptReporter *)self->_dialerReporter setAutocomplete:0];
  if (self->_contactSearchResult)
  {
    v3 = MEMORY[0x277CBDA78];
    resultContact = [(PHHandsetDialerLCDView *)self resultContact];
    v5 = [v3 stringFromContact:resultContact style:0];

    resultContactPhoneNumber = [(PHHandsetDialerLCDView *)self resultContactPhoneNumber];
    v7 = resultContactPhoneNumber;
    v8 = resultContactPhoneNumber != 0;
    if (resultContactPhoneNumber)
    {
      value = [resultContactPhoneNumber value];
      formattedStringValue = [value formattedStringValue];
      v11 = formattedStringValue;
      if (formattedStringValue)
      {
        stringValue = formattedStringValue;
      }

      else
      {
        value2 = [v7 value];
        stringValue = [value2 stringValue];
      }

      text = [(PHHandsetDialerLCDView *)self text];
      v33 = [v5 attributedStringToHighlightText:text style:1];

      text2 = [(PHHandsetDialerLCDView *)self text];
      v13 = [stringValue attributedStringToHighlightText:text2 style:2];
    }

    else
    {
      v13 = 0;
      v33 = 0;
    }
  }

  else
  {
    v13 = 0;
    v33 = 0;
    v8 = 0;
  }

  contactResultCount = self->_contactResultCount;
  if (contactResultCount)
  {
    v18 = MEMORY[0x277CCACA8];
    v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:@"%lu_MORE_CONTACTS" value:&stru_285532CB8 table:@"Dialer"];
    v21 = [v18 localizedStringWithFormat:v20, self->_contactResultCount];

    v22 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v21];
    v23 = *MEMORY[0x277D740C0];
    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [v22 addAttribute:v23 value:secondaryLabelColor range:{0, objc_msgSend(v22, "length")}];

    if (!v8)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v22 = 0;
    if (!v8)
    {
      goto LABEL_21;
    }
  }

  matchInfo = [(MPContactSearchResult *)self->_contactSearchResult matchInfo];
  v26 = matchInfo;
  if (matchInfo && ([matchInfo matchedProperties], v27 = objc_claimAutoreleasedReturnValue(), v27, v27))
  {
    v28 = MEMORY[0x277D3A7C8];
    matchedProperties = [v26 matchedProperties];
    v30 = [v28 matchedProperties:matchedProperties contains:*MEMORY[0x277CBD098]];
  }

  else
  {
    v30 = 1;
  }

  primaryResultButtonView = self->_primaryResultButtonView;
  text3 = [(PHHandsetDialerLCDView *)self text];
  [(PHDialerResultButtonView *)primaryResultButtonView configureWithPrimaryTitle:v33 secondaryTitle:v13 searchString:text3 isNumberPriority:v30 buttonType:0];

LABEL_21:
  if (contactResultCount)
  {
    [(PHDialerResultButtonView *)self->_secondaryResultButtonView configureWithPrimaryTitle:v22 secondaryTitle:0 buttonType:1];
  }

  [(PHHandsetDialerLCDView *)self updateResultButtonsVisiblityForPrimary:v8 secondary:contactResultCount != 0];
}

void __82__PHHandsetDialerLCDView_showBusinessGuidedSupportWithMessageAction_nameOverride___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) numberTextField];
  [v1 setAlpha:0.0];
}

void __82__PHHandsetDialerLCDView_showBusinessGuidedSupportWithMessageAction_nameOverride___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) businessNameField];
  [v1 setAlpha:1.0];
}

- (void)hideBusinessNameIfVisible
{
  if ([(PHHandsetDialerLCDView *)self showingBusinessSupportGuide])
  {
    [(PHLCDViewTextField *)self->_numberTextField setEnabled:1];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __51__PHHandsetDialerLCDView_hideBusinessNameIfVisible__block_invoke;
    aBlock[3] = &unk_278D749E0;
    aBlock[4] = self;
    v3 = _Block_copy(aBlock);
    [MEMORY[0x277D75D18] animateWithDuration:v3 animations:0.300000012];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __51__PHHandsetDialerLCDView_hideBusinessNameIfVisible__block_invoke_2;
    v5[3] = &unk_278D749E0;
    v5[4] = self;
    v4 = _Block_copy(v5);

    [MEMORY[0x277D75D18] animateWithDuration:v4 animations:0.300000012];
    [(PHHandsetDialerLCDView *)self setShowingBusinessSupportGuide:0];
  }
}

void __51__PHHandsetDialerLCDView_hideBusinessNameIfVisible__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) businessNameField];
  [v1 setAlpha:0.0];
}

void __51__PHHandsetDialerLCDView_hideBusinessNameIfVisible__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) numberTextField];
  [v1 setAlpha:1.0];
}

- (void)updateResultButtonsVisiblityForPrimary:(BOOL)primary secondary:(BOOL)secondary
{
  if (self->_primaryResultButtonVisible != primary)
  {
    if (!primary)
    {
      [(PHHandsetDialerLCDView *)self hideResultsButtons];
      goto LABEL_8;
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __75__PHHandsetDialerLCDView_updateResultButtonsVisiblityForPrimary_secondary___block_invoke;
    aBlock[3] = &unk_278D74A98;
    aBlock[4] = self;
    secondaryCopy = secondary;
    v7 = aBlock;
    goto LABEL_6;
  }

  if (self->_secondaryResultButtonVisible != secondary)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __75__PHHandsetDialerLCDView_updateResultButtonsVisiblityForPrimary_secondary___block_invoke_2;
    v9[3] = &unk_278D74A98;
    v9[4] = self;
    secondaryCopy2 = secondary;
    v7 = v9;
LABEL_6:
    v8 = _Block_copy(v7);
    [MEMORY[0x277D75D18] animateWithDuration:v8 animations:0.300000012];
  }

LABEL_8:
  self->_primaryResultButtonVisible = primary;
  self->_secondaryResultButtonVisible = secondary;
}

uint64_t __75__PHHandsetDialerLCDView_updateResultButtonsVisiblityForPrimary_secondary___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) primaryResultButton];
  [v2 setAlpha:1.0];

  if (*(a1 + 40))
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.0;
  }

  v4 = [*(a1 + 32) secondaryResultButton];
  [v4 setAlpha:v3];

  if (*(a1 + 40))
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.0;
  }

  v6 = [*(a1 + 32) separator];
  [v6 setAlpha:v5];

  v7 = [*(a1 + 32) dialerResultButtonsGlassBackgroundView];
  [v7 setAlpha:1.0];

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);

  return [v8 updateDialerResultGlassBackgroundConstraintsForSecondaryButtonVisibility:v9];
}

uint64_t __75__PHHandsetDialerLCDView_updateResultButtonsVisiblityForPrimary_secondary___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = 1.0;
  }

  else
  {
    v2 = 0.0;
  }

  v3 = [*(a1 + 32) secondaryResultButton];
  [v3 setAlpha:v2];

  if (*(a1 + 40))
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = [*(a1 + 32) separator];
  [v5 setAlpha:v4];

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);

  return [v6 updateDialerResultGlassBackgroundConstraintsForSecondaryButtonVisibility:v7];
}

- (void)handleDialerResultButtonPressedOfType:(int64_t)type
{
  dialerReporter = self->_dialerReporter;
  resultContact = [(PHHandsetDialerLCDView *)self resultContact];
  [(MPDialerInterceptReporter *)dialerReporter updateForDialerResultPressed:type savedContact:resultContact != 0];

  if (type > 2)
  {
    if (type == 3)
    {
      resultDelegate = [(PHHandsetDialerLCDView *)self resultDelegate];
      [resultDelegate presentAppleSupportGuidedHelp];
LABEL_15:

      return;
    }

    if (type == 4)
    {

      [(PHHandsetDialerLCDView *)self launchBusinessMessagesSupport];
    }
  }

  else
  {
    if (type)
    {
      if (type != 1)
      {
        return;
      }

      resultDelegate = [(PHHandsetDialerLCDView *)self resultDelegate];
      unformattedText = [(PHHandsetDialerLCDView *)self unformattedText];
      [resultDelegate presentContactsSearchFor:unformattedText];

      goto LABEL_15;
    }

    [(PHHandsetDialerLCDView *)self contactResultButtonPressed];
  }
}

- (DialerLCDFieldDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (PHDialerLCDResultDelegate)resultDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_resultDelegate);

  return WeakRetained;
}

void __52__PHHandsetDialerLCDView_contactResultButtonPressed__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2429BC000, a2, OS_LOG_TYPE_ERROR, "Error searching for business: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end