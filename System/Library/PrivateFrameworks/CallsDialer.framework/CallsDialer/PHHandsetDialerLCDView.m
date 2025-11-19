@interface PHHandsetDialerLCDView
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)resignFirstResponder;
- (BOOL)shouldInsertStringAtCurrentPosition:(id)a3 deletingPreviousCharacter:(BOOL)a4;
- (BOOL)textFieldShouldBeginEditing:(id)a3;
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
- (id)attributedStringForName:(id)a3 label:(id)a4;
- (id)attributedStringForSource:(id)a3;
- (id)generateBusinessNameLabelHorizontalConstraints;
- (id)generateNumberLabelHorizontalConstraints;
- (id)menuForPillView:(id)a3;
- (id)newAddContactButton;
- (id)newResultButton;
- (id)newSearchButton;
- (id)numberLabelFont;
- (id)resultContactPhoneNumber;
- (id)text;
- (id)unformattedText;
- (void)_makeCalloutVisible:(BOOL)a3;
- (void)applyLayoutConstraints;
- (void)applyLayoutConstraintsForSmartDialer;
- (void)checkAndUpdateVisibilityForView:(id)a3 shouldInvertVisibility:(BOOL)a4;
- (void)contactResultButtonPressed;
- (void)copy:(id)a3;
- (void)dealloc;
- (void)deleteCharacter;
- (void)handleDialerResultButtonPressedOfType:(int64_t)a3;
- (void)handleTapGesture:(id)a3;
- (void)hideBusinessNameIfVisible;
- (void)hideResultsButtons;
- (void)insertStringAtCurrentPosition:(id)a3 deletingPreviousCharacter:(BOOL)a4;
- (void)launchBusinessMessagesSupport;
- (void)paste:(id)a3;
- (void)setContactSearchResults:(id)a3 hasCompleteMatch:(BOOL)a4;
- (void)setIsHostedInRemoteViewController:(BOOL)a3;
- (void)setSenderIdentity:(id)a3;
- (void)setText:(id)a3 needsFormat:(BOOL)a4 name:(id)a5 label:(id)a6;
- (void)textField:(id)a3 didUpdateString:(id)a4;
- (void)textFieldDidBeginEditing:(id)a3;
- (void)textFieldDidEndEditing:(id)a3;
- (void)updateAddAndDeleteButtonForText:(id)a3 name:(id)a4 label:(id)a5 source:(id)a6 suggestion:(BOOL)a7 animated:(BOOL)a8;
- (void)updateContactResultButtons;
- (void)updateNumberAndBusinessNameLabelHorizontalConstraints;
- (void)updateResultButtonsVisiblityForPrimary:(BOOL)a3 secondary:(BOOL)a4;
@end

@implementation PHHandsetDialerLCDView

- (float)spacingBetweenNumberBaselineAndNameBaseline
{
  v2 = [MEMORY[0x277D3A7E0] screenSize];
  result = 25.0;
  if (v2 > 12)
  {
    if (v2 == 13)
    {
      return result;
    }

    if (v2 != 14)
    {
      if (v2 == 15)
      {
        return result;
      }

      return 34.0;
    }

    return 42.0;
  }

  if (v2)
  {
    if (v2 == 11)
    {
      return result;
    }

    if (v2 != 12)
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
  v3 = [v2 withCaseSensitiveAttribute];

  return v3;
}

- (float)addNumberFontSize
{
  v2 = [MEMORY[0x277D3A7E0] screenSize];
  result = 18.0;
  if (!v2)
  {
    return 16.0;
  }

  return result;
}

- (id)generateNumberLabelHorizontalConstraints
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"numberLabel";
  v2 = [(PHHandsetDialerLCDView *)self numberTextField];
  v10[0] = v2;
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
  v2 = [(PHHandsetDialerLCDView *)self businessNameField];
  v10[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v4 = MEMORY[0x277CCAAD0];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"|[businessName]|"];
  v6 = [v4 constraintsWithVisualFormat:v5 options:0x10000 metrics:0 views:v3];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)menuForPillView:(id)a3
{
  v4 = [(PHHandsetDialerLCDView *)self delegate];
  v5 = [(PHHandsetDialerLCDView *)self selectedSenderIdentity];
  v6 = [v4 senderIdentityMenuForDialerField:self selectedSenderIdentity:v5];

  return v6;
}

- (void)setSenderIdentity:(id)a3
{
  v8 = a3;
  v5 = [(PHHandsetDialerLCDView *)self pillView];
  v6 = v5;
  if (a3)
  {
    [v5 setHidden:0];

    v6 = [v8 localizedShortName];
    v7 = [(PHHandsetDialerLCDView *)self pillView];
    [v7 setBadgeText:v6];
  }

  else
  {
    [v5 setHidden:1];
  }

  [(PHHandsetDialerLCDView *)self setSelectedSenderIdentity:v8];
}

- (CGSize)intrinsicContentSize
{
  v2 = [MEMORY[0x277D3A7E0] handsetDialerSize];
  v3 = 52.0;
  if (v2 != 1)
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
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PHHandsetDialerLCDView;
  [(PHHandsetDialerLCDView *)&v4 dealloc];
}

- (id)text
{
  v2 = [(PHLCDViewTextField *)self->_numberTextField text];
  v3 = [MEMORY[0x277CCA900] unicodeDirectionalCharactersSet];
  v4 = [v2 stringByRemovingCharactersFromSet:v3];

  return v4;
}

- (id)unformattedText
{
  v2 = [(PHHandsetDialerLCDView *)self text];
  v3 = [v2 unformattedNumber];

  return v3;
}

- (void)setText:(id)a3 needsFormat:(BOOL)a4 name:(id)a5 label:(id)a6
{
  numberTextField = self->_numberTextField;
  v9 = a5;
  v10 = a3;
  [(PHLCDViewTextField *)numberTextField setText:v10];
  [(PHHandsetDialerLCDView *)self updateAddAndDeleteButtonForText:v10 name:v9 animated:1];
}

- (void)deleteCharacter
{
  v3 = [(PHLCDViewTextField *)self->_numberTextField isEditing];
  numberTextField = self->_numberTextField;
  if (v3)
  {

    [(PHLCDViewTextField *)numberTextField deleteBackward];
  }

  else
  {
    v6 = [(PHLCDViewTextField *)numberTextField text];
    v5 = UIFormattedPhoneStringByRemovingFromEnd();
    [(PHLCDViewTextField *)numberTextField setText:v5];
  }
}

- (BOOL)shouldInsertStringAtCurrentPosition:(id)a3 deletingPreviousCharacter:(BOOL)a4
{
  v4 = a4;
  v6 = MEMORY[0x277CCA900];
  v7 = a3;
  v8 = [v6 pauseCharacterSet];
  v9 = [v7 rangeOfCharacterFromSet:v8];

  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = !v4;
  }

  if (v10)
  {
    return 1;
  }

  if ([(PHLCDViewTextField *)self->_numberTextField isEditing])
  {
    v12 = [MEMORY[0x277CCA900] unicodeDirectionalCharactersSet];
    v13 = [(PHLCDViewTextField *)self->_numberTextField text];
    v14 = [v12 characterIsMember:{objc_msgSend(v13, "characterAtIndex:", 0)}];

    numberTextField = self->_numberTextField;
    if (v14)
    {
      return [(PHLCDViewTextField *)numberTextField selectionRange]> 2;
    }

    else
    {
      v20 = [(PHLCDViewTextField *)numberTextField selectedTextRange];
      v21 = [v20 start];
      v22 = [(PHLCDViewTextField *)self->_numberTextField beginningOfDocument];
      v11 = v21 != v22;
    }
  }

  else
  {
    v16 = [(PHLCDViewTextField *)self->_numberTextField text];
    v17 = [MEMORY[0x277CCA900] unicodeDirectionalCharactersSet];
    v18 = [v16 stringByTrimmingCharactersInSet:v17];

    v19 = [MEMORY[0x277CCA900] starAndOctothorpeCharacterSet];
    v11 = [v18 rangeOfCharacterFromSet:v19] != 0;
  }

  return v11;
}

- (void)insertStringAtCurrentPosition:(id)a3 deletingPreviousCharacter:(BOOL)a4
{
  v4 = a4;
  v9 = a3;
  if ([PHHandsetDialerLCDView shouldInsertStringAtCurrentPosition:"shouldInsertStringAtCurrentPosition:deletingPreviousCharacter:" deletingPreviousCharacter:?])
  {
    if ([(PHLCDViewTextField *)self->_numberTextField isEditing])
    {
      if (v4)
      {
        [(PHLCDViewTextField *)self->_numberTextField deleteBackward];
      }

      numberTextField = self->_numberTextField;
      v7 = [(PHLCDViewTextField *)numberTextField selectedTextRange];
      [(PHLCDViewTextField *)numberTextField replaceRange:v7 withText:v9];
    }

    else
    {
      if (v4)
      {
        [(PHHandsetDialerLCDView *)self deleteCharacter];
      }

      v8 = [(PHHandsetDialerLCDView *)self text];
      v7 = [v8 stringByAppendingString:v9];

      [(PHHandsetDialerLCDView *)self setText:v7 needsFormat:!v4];
    }

    [(PHHandsetDialerLCDView *)self _requestMakeCutCopyPasteCalloutVisible:0];
  }
}

- (void)setContactSearchResults:(id)a3 hasCompleteMatch:(BOOL)a4
{
  v10 = a3;
  if ([(PHHandsetDialerLCDView *)self appType]== 1 && [(PHHandsetDialerLCDView *)self enableSmartDialer])
  {
    if ([v10 count])
    {
      v6 = [v10 firstObject];
      contactSearchResult = self->_contactSearchResult;
      self->_contactSearchResult = v6;

      v8 = [v10 count] - 1;
    }

    else
    {
      v9 = self->_contactSearchResult;
      self->_contactSearchResult = 0;

      v8 = 0;
    }

    self->_contactResultCount = v8;
    self->_hasCompleteMatch = a4;
    [(PHHandsetDialerLCDView *)self updateContactResultButtons];
  }
}

- (id)attributedStringForName:(id)a3 label:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x277CCAB48];
  v8 = a3;
  v9 = [v7 alloc];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v8];
  v11 = [v9 initWithString:v10];

  v12 = MEMORY[0x277D74300];
  [(PHHandsetDialerLCDView *)self nameAndLabelFontSize];
  v13 = [v12 systemFontOfSize:?];
  v14 = *MEMORY[0x277D740A8];
  v15 = [v8 length];

  [v11 addAttribute:v14 value:v13 range:{0, v15}];
  if (v6)
  {
    v16 = objc_alloc(MEMORY[0x277CCA898]);
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@" %@", v6];
    v18 = [v16 initWithString:v17];
    [v11 appendAttributedString:v18];

    v19 = MEMORY[0x277D74300];
    [v13 pointSize];
    v20 = [v19 boldSystemFontOfSize:?];
    [v11 addAttribute:v14 value:v20 range:{objc_msgSend(v11, "length") - objc_msgSend(v6, "length"), objc_msgSend(v6, "length")}];
  }

  v21 = [v11 copy];

  return v21;
}

- (id)attributedStringForSource:(id)a3
{
  v4 = MEMORY[0x277CCAB48];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = MEMORY[0x277CCACA8];
  v8 = [MEMORY[0x277CCA8D8] mainBundle];
  v9 = [v8 localizedStringForKey:@"IDENTIFICATION_SOURCE_%@" value:&stru_285532CB8 table:@"General"];
  v10 = [v7 stringWithFormat:v9, v5];

  v11 = [v6 initWithString:v10];
  v12 = MEMORY[0x277D74300];
  [(PHHandsetDialerLCDView *)self sourceLabelFontSize];
  v13 = [v12 systemFontOfSize:?];
  [v11 addAttribute:*MEMORY[0x277D740A8] value:v13 range:{0, objc_msgSend(v11, "length")}];
  v14 = [v11 copy];

  return v14;
}

- (void)checkAndUpdateVisibilityForView:(id)a3 shouldInvertVisibility:(BOOL)a4
{
  if (a4)
  {
    v5 = a3;
    [v5 alpha];
    [v5 setAlpha:1.0 - v4];
  }
}

- (void)updateAddAndDeleteButtonForText:(id)a3 name:(id)a4 label:(id)a5 source:(id)a6 suggestion:(BOOL)a7 animated:(BOOL)a8
{
  v8 = a8;
  v74 = *MEMORY[0x277D85DE8];
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [a3 length];
  v17 = v16 != 0;
  if (v13)
  {
    v18 = [(PHHandsetDialerLCDView *)self attributedStringForName:v13 label:v14];
    v19 = [(PHHandsetDialerLCDView *)self contactLabel];
    [v19 setAttributedText:v18];

    if (v15)
    {
      v20 = [(PHHandsetDialerLCDView *)self attributedStringForSource:v15];
      v21 = [(PHHandsetDialerLCDView *)self sourceLabel];
      [v21 setAttributedText:v20];
    }

    else
    {
      v20 = [(PHHandsetDialerLCDView *)self sourceLabel];
      [v20 setAttributedText:0];
    }
  }

  v48 = v14;
  if ([(PHHandsetDialerLCDView *)self appType]== 1 && [(PHHandsetDialerLCDView *)self enableSmartDialer])
  {
    if (v16)
    {
      v22 = [v13 length] != 0;
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
    if (v13)
    {
      v25 = [(PHHandsetDialerLCDView *)self addContactButton];
      [v25 alpha];
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
      v31 = [(PHHandsetDialerLCDView *)self contactLabel];
      [v31 alpha];
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
    v50 = v13;
    v52 = v17;
    v34 = _Block_copy(v49);
    v35 = v34;
    if (v8)
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

- (void)_makeCalloutVisible:(BOOL)a3
{
  v3 = a3;
  v19 = [MEMORY[0x277D75718] sharedMenuController];
  if ([v19 isMenuVisible] != v3)
  {
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    if (v3)
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
      [v19 setTargetRect:self inView:{v22.origin.x, v22.origin.y, v22.size.width, v22.size.height}];
      [v19 setArrowDirection:1];
      [v19 setMenuVisible:1 animated:1];
      [v5 addObserver:self selector:sel__menuDidHide_ name:*MEMORY[0x277D76CA8] object:0];
    }

    else
    {
      [v19 setMenuVisible:0 animated:1];
      [v5 removeObserver:self name:*MEMORY[0x277D76CA8] object:0];
    }
  }
}

- (BOOL)resignFirstResponder
{
  v5.receiver = self;
  v5.super_class = PHHandsetDialerLCDView;
  v3 = [(PHHandsetDialerLCDView *)&v5 resignFirstResponder];
  if (v3)
  {
    [(PHHandsetDialerLCDView *)self _makeCalloutVisible:0];
  }

  return v3;
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  if (sel_copy_ == a3 && (-[PHHandsetDialerLCDView text](self, "text"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 length], v7, !v8))
  {
    v9 = 0;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = PHHandsetDialerLCDView;
    v9 = [(PHHandsetDialerLCDView *)&v11 canPerformAction:a3 withSender:v6];
  }

  return v9;
}

- (void)copy:(id)a3
{
  v5 = [MEMORY[0x277D75810] generalPasteboard];
  v4 = [(PHHandsetDialerLCDView *)self text];
  [v5 setString:v4];
}

- (void)paste:(id)a3
{
  v4 = [MEMORY[0x277D75810] generalPasteboard];
  v9 = [v4 string];

  v5 = v9;
  if (v9)
  {
    [(PHHandsetDialerLCDView *)self _makeCalloutVisible:0];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v7 = objc_opt_respondsToSelector();

    v5 = v9;
    if (v7)
    {
      v8 = objc_loadWeakRetained(&self->_delegate);
      [v8 dialerField:self stringWasPasted:v9];

      v5 = v9;
    }
  }
}

- (void)handleTapGesture:(id)a3
{
  v4 = [MEMORY[0x277D75718] sharedMenuController];
  -[PHHandsetDialerLCDView _makeCalloutVisible:](self, "_makeCalloutVisible:", [v4 isMenuVisible] ^ 1);
}

- (double)addContactButtonContentInsetConstant
{
  v2 = [MEMORY[0x277D3A7E0] requiresSmallScreenConfig];
  result = 10.0;
  if (v2)
  {
    return 5.0;
  }

  return result;
}

- (id)newAddContactButton
{
  v3 = [MEMORY[0x277D75220] buttonWithType:1];
  v4 = [MEMORY[0x277D75348] clearColor];
  [v3 setBackgroundColor:v4];

  [(PHHandsetDialerLCDView *)self addContactButtonContentInsetConstant];
  [v3 setContentEdgeInsets:{v5, v5, v5, v5}];
  [v3 setOpaque:0];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v6) = 1144750080;
  [v3 setContentCompressionResistancePriority:0 forAxis:v6];
  v7 = [MEMORY[0x277D75348] dynamicLabelColor];
  [v3 setTintColor:v7];

  [v3 sizeToFit];
  if ([(PHHandsetDialerLCDView *)self appType]== 1 && [(PHHandsetDialerLCDView *)self enableSmartDialer])
  {
    v8 = [MEMORY[0x277D755B8] tpImageForSymbolType:18 textStyle:*MEMORY[0x277D76A20] scale:2 isStaticSize:0];
    [v3 setImage:v8 forState:0];
    [v3 setAdjustsImageSizeForAccessibilityContentSizeCategory:1];
    [v3 setMaximumContentSizeCategory:*MEMORY[0x277D76820]];
    [v3 setShowsLargeContentViewer:1];
    [v3 setLargeContentImage:v8];
    v9 = objc_alloc_init(MEMORY[0x277D756C8]);
    [v3 addInteraction:v9];
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
    v9 = [v3 titleLabel];
    [v9 setFont:v8];
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
  v4 = [MEMORY[0x277D75348] clearColor];
  [v3 setBackgroundColor:v4];

  [v3 setContentEdgeInsets:{10.0, 10.0, 10.0, 10.0}];
  [v3 setOpaque:0];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v5) = 1144750080;
  [v3 setContentCompressionResistancePriority:0 forAxis:v5];
  [v3 setTitle:&stru_285532CB8 forState:0];
  v6 = MEMORY[0x277D74300];
  [(PHHandsetDialerLCDView *)self addNumberFontSize];
  v8 = [v6 systemFontOfSize:v7];
  v9 = [v3 titleLabel];
  [v9 setFont:v8];

  [v3 sizeToFit];
  return v3;
}

- (id)newSearchButton
{
  v3 = [MEMORY[0x277D75220] buttonWithType:1];
  v4 = [MEMORY[0x277D75348] clearColor];
  [v3 setBackgroundColor:v4];

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

  v7 = [MEMORY[0x277D75348] systemBlueColor];
  [v3 setTintColor:v7];

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
    v4 = [MEMORY[0x277D75418] currentDevice];
    v5 = [v4 userInterfaceIdiom];

    if ((v5 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v6 = [(PHHandsetDialerLCDView *)self heightAnchor];
      v7 = [v6 constraintEqualToConstant:80.0];
      [v7 setActive:1];
    }

    if ([(PHHandsetDialerLCDView *)self appType]== 1)
    {
      v8 = [MEMORY[0x277D75418] currentDevice];
      v9 = [v8 userInterfaceIdiom];

      if (v9 == 5)
      {
        v97 = MEMORY[0x277CCAAD0];
        v105 = [(PHHandsetDialerLCDView *)self headerLayoutGuide];
        v103 = [v105 topAnchor];
        v104 = [(PHHandsetDialerLCDView *)self safeAreaLayoutGuide];
        v102 = [v104 topAnchor];
        v101 = [v103 constraintEqualToAnchor:v102];
        v106[0] = v101;
        v100 = [(PHHandsetDialerLCDView *)self headerLayoutGuide];
        v98 = [v100 bottomAnchor];
        v99 = [(PHHandsetDialerLCDView *)self numberTextField];
        v96 = [v99 topAnchor];
        [(PHHandsetDialerLCDView *)self addContactButtonContentInsetConstant];
        v95 = [v98 constraintEqualToAnchor:v96 constant:v10 + 5.0];
        v106[1] = v95;
        v94 = [(PHHandsetDialerLCDView *)self headerLayoutGuide];
        v92 = [v94 leadingAnchor];
        v93 = [(PHHandsetDialerLCDView *)self safeAreaLayoutGuide];
        v11 = [v93 leadingAnchor];
        v12 = [v92 constraintEqualToAnchor:v11];
        v106[2] = v12;
        v13 = [(PHHandsetDialerLCDView *)self headerLayoutGuide];
        v14 = [v13 trailingAnchor];
        v15 = [(PHHandsetDialerLCDView *)self safeAreaLayoutGuide];
        v16 = [v15 trailingAnchor];
        v17 = [v14 constraintEqualToAnchor:v16];
        v106[3] = v17;
        v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v106 count:4];
        [v97 activateConstraints:v18];
      }
    }

    v19 = MEMORY[0x277CCAAD0];
    v20 = [(PHHandsetDialerLCDView *)self addContactButton];
    [(PHHandsetDialerLCDView *)self addContactButtonTopConstraintConstant];
    v22 = [v19 constraintWithItem:v20 attribute:11 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:v21];
    [(PHHandsetDialerLCDView *)self setAddContactButtonTopConstraint:v22];

    v23 = [(PHHandsetDialerLCDView *)self addContactButtonTopConstraint];
    [(PHHandsetDialerLCDView *)self addConstraint:v23];

    v24 = MEMORY[0x277CCAAD0];
    v25 = [(PHHandsetDialerLCDView *)self addContactButton];
    v26 = [v24 constraintWithItem:self attribute:4 relatedBy:0 toItem:v25 attribute:11 multiplier:1.0 constant:0.0];
    [(PHHandsetDialerLCDView *)self addConstraint:v26];

    v27 = MEMORY[0x277CCAAD0];
    v28 = [(PHHandsetDialerLCDView *)self addContactButton];
    v29 = [v27 constraintWithItem:v28 attribute:9 relatedBy:0 toItem:self attribute:9 multiplier:1.0 constant:0.0];
    [(PHHandsetDialerLCDView *)self addConstraint:v29];

    v30 = MEMORY[0x277CCAAD0];
    v31 = [(PHHandsetDialerLCDView *)self addContactButton];
    v32 = [(PHHandsetDialerLCDView *)self layoutTextField];
    [(PHHandsetDialerLCDView *)self spacingBetweenNumberBaselineAndNameBaseline];
    v34 = [v30 constraintWithItem:v31 attribute:11 relatedBy:0 toItem:v32 attribute:11 multiplier:1.0 constant:v33];
    [(PHHandsetDialerLCDView *)self addConstraint:v34];

    v35 = MEMORY[0x277CCAAD0];
    v36 = [(PHHandsetDialerLCDView *)self addContactButton];
    v37 = [(PHHandsetDialerLCDView *)self layoutTextField];
    v38 = [v35 constraintWithItem:v36 attribute:9 relatedBy:0 toItem:v37 attribute:9 multiplier:1.0 constant:0.0];
    [(PHHandsetDialerLCDView *)self addConstraint:v38];

    v39 = MEMORY[0x277CCAAD0];
    v40 = [(PHHandsetDialerLCDView *)self numberTextField];
    v41 = [(PHHandsetDialerLCDView *)self layoutTextField];
    v42 = [v39 constraintWithItem:v40 attribute:10 relatedBy:0 toItem:v41 attribute:10 multiplier:1.0 constant:0.0];
    [(PHHandsetDialerLCDView *)self addConstraint:v42];

    v43 = MEMORY[0x277CCAAD0];
    v44 = [(PHHandsetDialerLCDView *)self numberTextField];
    v45 = [(PHHandsetDialerLCDView *)self layoutTextField];
    v46 = [v43 constraintWithItem:v44 attribute:9 relatedBy:0 toItem:v45 attribute:9 multiplier:1.0 constant:0.0];
    [(PHHandsetDialerLCDView *)self addConstraint:v46];

    v47 = MEMORY[0x277CCAAD0];
    v48 = [(PHHandsetDialerLCDView *)self businessNameField];
    v49 = [(PHHandsetDialerLCDView *)self layoutTextField];
    v50 = [v47 constraintWithItem:v48 attribute:10 relatedBy:0 toItem:v49 attribute:10 multiplier:1.0 constant:0.0];
    [(PHHandsetDialerLCDView *)self addConstraint:v50];

    v51 = MEMORY[0x277CCAAD0];
    v52 = [(PHHandsetDialerLCDView *)self businessNameField];
    v53 = [(PHHandsetDialerLCDView *)self layoutTextField];
    v54 = [v51 constraintWithItem:v52 attribute:9 relatedBy:0 toItem:v53 attribute:9 multiplier:1.0 constant:0.0];
    [(PHHandsetDialerLCDView *)self addConstraint:v54];

    v55 = MEMORY[0x277CCAAD0];
    v56 = [(PHHandsetDialerLCDView *)self contactLabel];
    v57 = [(PHHandsetDialerLCDView *)self addContactButton];
    v58 = [v55 constraintWithItem:v56 attribute:9 relatedBy:0 toItem:v57 attribute:9 multiplier:1.0 constant:0.0];
    [(PHHandsetDialerLCDView *)self addConstraint:v58];

    v59 = MEMORY[0x277CCAAD0];
    v60 = [(PHHandsetDialerLCDView *)self contactLabel];
    v61 = [(PHHandsetDialerLCDView *)self addContactButton];
    v62 = [v59 constraintWithItem:v60 attribute:12 relatedBy:0 toItem:v61 attribute:12 multiplier:1.0 constant:0.0];
    [(PHHandsetDialerLCDView *)self addConstraint:v62];

    v63 = MEMORY[0x277CCAAD0];
    v64 = [(PHHandsetDialerLCDView *)self contactLabel];
    v65 = [v63 constraintWithItem:v64 attribute:5 relatedBy:1 toItem:self attribute:5 multiplier:1.0 constant:0.0];
    [(PHHandsetDialerLCDView *)self addConstraint:v65];

    v66 = MEMORY[0x277CCAAD0];
    v67 = [(PHHandsetDialerLCDView *)self contactLabel];
    v68 = [v66 constraintWithItem:v67 attribute:6 relatedBy:-1 toItem:self attribute:6 multiplier:1.0 constant:0.0];
    [(PHHandsetDialerLCDView *)self addConstraint:v68];

    v69 = MEMORY[0x277CCAAD0];
    v70 = [(PHHandsetDialerLCDView *)self sourceLabel];
    v71 = [(PHHandsetDialerLCDView *)self addContactButton];
    v72 = [v69 constraintWithItem:v70 attribute:9 relatedBy:0 toItem:v71 attribute:9 multiplier:1.0 constant:0.0];
    [(PHHandsetDialerLCDView *)self addConstraint:v72];

    v73 = [(PHHandsetDialerLCDView *)self separator];

    v74 = MEMORY[0x277CCAAD0];
    v75 = [(PHHandsetDialerLCDView *)self sourceLabel];
    if (v73)
    {
      v76 = [(PHHandsetDialerLCDView *)self separator];
      v77 = 1.0;
      v78 = 10.0;
      v79 = v74;
      v80 = v75;
      v81 = 12;
      v82 = v76;
      v83 = 12;
    }

    else
    {
      v76 = [(PHHandsetDialerLCDView *)self contactLabel];
      v77 = 1.0;
      v78 = 2.0;
      v79 = v74;
      v80 = v75;
      v81 = 3;
      v82 = v76;
      v83 = 4;
    }

    v84 = [v79 constraintWithItem:v80 attribute:v81 relatedBy:0 toItem:v82 attribute:v83 multiplier:v77 constant:v78];
    [(PHHandsetDialerLCDView *)self addConstraint:v84];

    v85 = MEMORY[0x277CCAAD0];
    v86 = [(PHHandsetDialerLCDView *)self sourceLabel];
    v87 = [v85 constraintWithItem:v86 attribute:5 relatedBy:1 toItem:self attribute:5 multiplier:1.0 constant:0.0];
    [(PHHandsetDialerLCDView *)self addConstraint:v87];

    v88 = MEMORY[0x277CCAAD0];
    v89 = [(PHHandsetDialerLCDView *)self sourceLabel];
    v90 = [v88 constraintWithItem:v89 attribute:6 relatedBy:-1 toItem:self attribute:6 multiplier:1.0 constant:0.0];
    [(PHHandsetDialerLCDView *)self addConstraint:v90];

    [(PHHandsetDialerLCDView *)self updateNumberAndBusinessNameLabelHorizontalConstraints];
    v91 = *MEMORY[0x277D85DE8];
  }
}

- (void)applyLayoutConstraintsForSmartDialer
{
  v181[4] = *MEMORY[0x277D85DE8];
  v165 = MEMORY[0x277CCAAD0];
  v178 = [(PHHandsetDialerLCDView *)self headerLayoutGuide];
  v174 = [v178 topAnchor];
  v176 = [(PHHandsetDialerLCDView *)self safeAreaLayoutGuide];
  v172 = [v176 topAnchor];
  v170 = [v174 constraintEqualToAnchor:v172];
  v181[0] = v170;
  v168 = [(PHHandsetDialerLCDView *)self headerLayoutGuide];
  v166 = [v168 bottomAnchor];
  v167 = [(PHHandsetDialerLCDView *)self numberTextField];
  v164 = [v167 topAnchor];
  [(PHHandsetDialerLCDView *)self addContactButtonContentInsetConstant];
  v163 = [v166 constraintEqualToAnchor:v164 constant:v3 + 5.0];
  v181[1] = v163;
  v162 = [(PHHandsetDialerLCDView *)self headerLayoutGuide];
  v161 = [v162 leadingAnchor];
  v4 = [(PHHandsetDialerLCDView *)self safeAreaLayoutGuide];
  v5 = [v4 leadingAnchor];
  v6 = [v161 constraintEqualToAnchor:v5];
  v181[2] = v6;
  v7 = [(PHHandsetDialerLCDView *)self headerLayoutGuide];
  v8 = [v7 trailingAnchor];
  v9 = [(PHHandsetDialerLCDView *)self safeAreaLayoutGuide];
  v10 = [v9 trailingAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  v181[3] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v181 count:4];
  [v165 activateConstraints:v12];

  v13 = MEMORY[0x277CCAAD0];
  v14 = [(PHHandsetDialerLCDView *)self layoutTextField];
  v15 = [v13 constraintWithItem:v14 attribute:9 relatedBy:0 toItem:self attribute:9 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v15];

  v16 = MEMORY[0x277CCAAD0];
  v17 = [(PHHandsetDialerLCDView *)self numberTextField];
  v18 = [(PHHandsetDialerLCDView *)self layoutTextField];
  v19 = [v16 constraintWithItem:v17 attribute:10 relatedBy:0 toItem:v18 attribute:10 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v19];

  v20 = MEMORY[0x277CCAAD0];
  v21 = [(PHHandsetDialerLCDView *)self numberTextField];
  v22 = [(PHHandsetDialerLCDView *)self layoutTextField];
  v23 = [v20 constraintWithItem:v21 attribute:9 relatedBy:0 toItem:v22 attribute:9 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v23];

  v24 = MEMORY[0x277CCAAD0];
  v25 = [(PHHandsetDialerLCDView *)self businessNameField];
  v26 = [(PHHandsetDialerLCDView *)self layoutTextField];
  v27 = [v24 constraintWithItem:v25 attribute:10 relatedBy:0 toItem:v26 attribute:10 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v27];

  v28 = MEMORY[0x277CCAAD0];
  v29 = [(PHHandsetDialerLCDView *)self businessNameField];
  v30 = [(PHHandsetDialerLCDView *)self layoutTextField];
  v31 = [v28 constraintWithItem:v29 attribute:9 relatedBy:0 toItem:v30 attribute:9 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v31];

  v32 = MEMORY[0x277CCAAD0];
  v33 = [(PHHandsetDialerLCDView *)self primaryResultButton];
  v34 = [(PHHandsetDialerLCDView *)self layoutTextField];
  [(PHHandsetDialerLCDView *)self spacingBetweenNumberAndContactResult];
  v36 = [v32 constraintWithItem:v33 attribute:3 relatedBy:0 toItem:v34 attribute:4 multiplier:1.0 constant:v35];
  [(PHHandsetDialerLCDView *)self addConstraint:v36];

  v37 = MEMORY[0x277CCAAD0];
  v38 = [(PHHandsetDialerLCDView *)self primaryResultButton];
  [(PHHandsetDialerLCDView *)self resultButtonsHorizontalPadding];
  v40 = [v37 constraintWithItem:v38 attribute:5 relatedBy:0 toItem:self attribute:5 multiplier:1.0 constant:v39];
  [(PHHandsetDialerLCDView *)self addConstraint:v40];

  v41 = MEMORY[0x277CCAAD0];
  v42 = [(PHHandsetDialerLCDView *)self primaryResultButton];
  [(PHHandsetDialerLCDView *)self resultButtonsHorizontalPadding];
  v44 = [v41 constraintWithItem:v42 attribute:6 relatedBy:0 toItem:self attribute:6 multiplier:1.0 constant:-v43];
  [(PHHandsetDialerLCDView *)self addConstraint:v44];

  v45 = MEMORY[0x277CCAAD0];
  v46 = [(PHHandsetDialerLCDView *)self primaryResultButtonView];
  v47 = [(PHHandsetDialerLCDView *)self primaryResultButton];
  v48 = [v45 constraintWithItem:v46 attribute:5 relatedBy:0 toItem:v47 attribute:5 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v48];

  v49 = MEMORY[0x277CCAAD0];
  v50 = [(PHHandsetDialerLCDView *)self primaryResultButtonView];
  v51 = [(PHHandsetDialerLCDView *)self primaryResultButton];
  v52 = [v49 constraintWithItem:v50 attribute:6 relatedBy:0 toItem:v51 attribute:6 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v52];

  v53 = MEMORY[0x277CCAAD0];
  v54 = [(PHHandsetDialerLCDView *)self primaryResultButtonView];
  v55 = [(PHHandsetDialerLCDView *)self primaryResultButton];
  v56 = [v53 constraintWithItem:v54 attribute:3 relatedBy:0 toItem:v55 attribute:3 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v56];

  v57 = MEMORY[0x277CCAAD0];
  v58 = [(PHHandsetDialerLCDView *)self primaryResultButtonView];
  v59 = [(PHHandsetDialerLCDView *)self primaryResultButton];
  v60 = [v57 constraintWithItem:v58 attribute:4 relatedBy:0 toItem:v59 attribute:4 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v60];

  v61 = MEMORY[0x277CCAAD0];
  v62 = [(PHHandsetDialerLCDView *)self separator];
  v63 = [(PHHandsetDialerLCDView *)self primaryResultButton];
  [(PHHandsetDialerLCDView *)self spacingBetweenPrimaryResultButtons];
  v65 = [v61 constraintWithItem:v62 attribute:3 relatedBy:0 toItem:v63 attribute:4 multiplier:1.0 constant:v64];
  [(PHHandsetDialerLCDView *)self addConstraint:v65];

  v66 = MEMORY[0x277CCAAD0];
  v67 = [(PHHandsetDialerLCDView *)self separator];
  v68 = [v66 constraintWithItem:v67 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:1.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v68];

  v69 = MEMORY[0x277CCAAD0];
  v70 = [(PHHandsetDialerLCDView *)self separator];
  v71 = [(PHHandsetDialerLCDView *)self primaryResultButton];
  v72 = [v69 constraintWithItem:v70 attribute:5 relatedBy:0 toItem:v71 attribute:5 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v72];

  v73 = MEMORY[0x277CCAAD0];
  v74 = [(PHHandsetDialerLCDView *)self separator];
  v75 = [(PHHandsetDialerLCDView *)self primaryResultButton];
  v76 = [v73 constraintWithItem:v74 attribute:6 relatedBy:0 toItem:v75 attribute:6 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v76];

  v77 = MEMORY[0x277CCAAD0];
  v78 = [(PHHandsetDialerLCDView *)self secondaryResultButton];
  v79 = [(PHHandsetDialerLCDView *)self separator];
  [(PHHandsetDialerLCDView *)self spacingBetweenPrimaryResultButtons];
  v81 = [v77 constraintWithItem:v78 attribute:3 relatedBy:0 toItem:v79 attribute:4 multiplier:1.0 constant:v80];
  [(PHHandsetDialerLCDView *)self addConstraint:v81];

  v82 = MEMORY[0x277CCAAD0];
  v83 = [(PHHandsetDialerLCDView *)self secondaryResultButton];
  v84 = [v82 constraintWithItem:self attribute:4 relatedBy:0 toItem:v83 attribute:11 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v84];

  v85 = MEMORY[0x277CCAAD0];
  v86 = [(PHHandsetDialerLCDView *)self secondaryResultButton];
  v87 = [(PHHandsetDialerLCDView *)self primaryResultButton];
  v88 = [v85 constraintWithItem:v86 attribute:5 relatedBy:0 toItem:v87 attribute:5 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v88];

  v89 = MEMORY[0x277CCAAD0];
  v90 = [(PHHandsetDialerLCDView *)self secondaryResultButton];
  v91 = [(PHHandsetDialerLCDView *)self primaryResultButton];
  v92 = [v89 constraintWithItem:v90 attribute:6 relatedBy:0 toItem:v91 attribute:6 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v92];

  v93 = MEMORY[0x277CCAAD0];
  v94 = [(PHHandsetDialerLCDView *)self secondaryResultButtonView];
  v95 = [(PHHandsetDialerLCDView *)self secondaryResultButton];
  v96 = [v93 constraintWithItem:v94 attribute:5 relatedBy:0 toItem:v95 attribute:5 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v96];

  v97 = MEMORY[0x277CCAAD0];
  v98 = [(PHHandsetDialerLCDView *)self secondaryResultButtonView];
  v99 = [(PHHandsetDialerLCDView *)self secondaryResultButton];
  v100 = [v97 constraintWithItem:v98 attribute:6 relatedBy:0 toItem:v99 attribute:6 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v100];

  v101 = MEMORY[0x277CCAAD0];
  v102 = [(PHHandsetDialerLCDView *)self secondaryResultButtonView];
  v103 = [(PHHandsetDialerLCDView *)self secondaryResultButton];
  v104 = [v101 constraintWithItem:v102 attribute:3 relatedBy:0 toItem:v103 attribute:3 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v104];

  v105 = MEMORY[0x277CCAAD0];
  v106 = [(PHHandsetDialerLCDView *)self secondaryResultButtonView];
  v107 = [(PHHandsetDialerLCDView *)self secondaryResultButton];
  v108 = [v105 constraintWithItem:v106 attribute:4 relatedBy:0 toItem:v107 attribute:4 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v108];

  v109 = MEMORY[0x277CCAAD0];
  v110 = [(PHHandsetDialerLCDView *)self contactLabel];
  v111 = [(PHHandsetDialerLCDView *)self layoutTextField];
  v112 = [v109 constraintWithItem:v110 attribute:9 relatedBy:0 toItem:v111 attribute:9 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v112];

  v113 = MEMORY[0x277CCAAD0];
  v114 = [(PHHandsetDialerLCDView *)self contactLabel];
  v115 = [(PHHandsetDialerLCDView *)self primaryResultButton];
  v116 = [v113 constraintWithItem:v114 attribute:12 relatedBy:0 toItem:v115 attribute:12 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v116];

  v117 = MEMORY[0x277CCAAD0];
  v118 = [(PHHandsetDialerLCDView *)self contactLabel];
  v119 = [v117 constraintWithItem:v118 attribute:5 relatedBy:1 toItem:self attribute:5 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v119];

  v120 = MEMORY[0x277CCAAD0];
  v121 = [(PHHandsetDialerLCDView *)self contactLabel];
  v122 = [v120 constraintWithItem:v121 attribute:6 relatedBy:-1 toItem:self attribute:6 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v122];

  v123 = MEMORY[0x277CCAAD0];
  v124 = [(PHHandsetDialerLCDView *)self sourceLabel];
  v125 = [(PHHandsetDialerLCDView *)self layoutTextField];
  v126 = [v123 constraintWithItem:v124 attribute:9 relatedBy:0 toItem:v125 attribute:9 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v126];

  v127 = MEMORY[0x277CCAAD0];
  v128 = [(PHHandsetDialerLCDView *)self sourceLabel];
  v129 = [(PHHandsetDialerLCDView *)self separator];
  v130 = [v127 constraintWithItem:v128 attribute:12 relatedBy:0 toItem:v129 attribute:12 multiplier:1.0 constant:10.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v130];

  v131 = MEMORY[0x277CCAAD0];
  v132 = [(PHHandsetDialerLCDView *)self sourceLabel];
  v133 = [v131 constraintWithItem:v132 attribute:5 relatedBy:1 toItem:self attribute:5 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v133];

  v134 = MEMORY[0x277CCAAD0];
  v135 = [(PHHandsetDialerLCDView *)self sourceLabel];
  v136 = [v134 constraintWithItem:v135 attribute:6 relatedBy:-1 toItem:self attribute:6 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v136];

  if (_UISolariumEnabled())
  {
    v169 = MEMORY[0x277CCAAD0];
    v179 = [(PHHandsetDialerLCDView *)self dialerResultButtonsGlassBackgroundView];
    v175 = [v179 topAnchor];
    v177 = [(PHHandsetDialerLCDView *)self primaryResultButton];
    v173 = [v177 topAnchor];
    [(PHHandsetDialerLCDView *)self spacingBetweenPrimaryResultButtons];
    v171 = [v175 constraintEqualToAnchor:v173 constant:-v137];
    v180[0] = v171;
    v138 = [(PHHandsetDialerLCDView *)self dialerResultButtonsGlassBackgroundView];
    v139 = [v138 leadingAnchor];
    v140 = [(PHHandsetDialerLCDView *)self leadingAnchor];
    [MEMORY[0x277D6ED70] horizontalPadding];
    v141 = [v139 constraintEqualToAnchor:v140 constant:?];
    v180[1] = v141;
    v142 = [(PHHandsetDialerLCDView *)self dialerResultButtonsGlassBackgroundView];
    v143 = [v142 trailingAnchor];
    v144 = [(PHHandsetDialerLCDView *)self trailingAnchor];
    [MEMORY[0x277D6ED70] horizontalPadding];
    v146 = [v143 constraintEqualToAnchor:v144 constant:-v145];
    v180[2] = v146;
    v147 = [MEMORY[0x277CBEA60] arrayWithObjects:v180 count:3];
    [v169 activateConstraints:v147];

    v148 = [(PHHandsetDialerLCDView *)self dialerResultButtonsGlassBackgroundView];
    v149 = [v148 bottomAnchor];
    v150 = [(PHHandsetDialerLCDView *)self secondaryResultButton];
    v151 = [v150 bottomAnchor];
    [(PHHandsetDialerLCDView *)self spacingBetweenPrimaryResultButtons];
    v153 = [v149 constraintEqualToAnchor:v151 constant:v152];
    [(PHHandsetDialerLCDView *)self setSecondaryVisibleConstraint:v153];

    v154 = [(PHHandsetDialerLCDView *)self dialerResultButtonsGlassBackgroundView];
    v155 = [v154 bottomAnchor];
    v156 = [(PHHandsetDialerLCDView *)self primaryResultButton];
    v157 = [v156 bottomAnchor];
    [(PHHandsetDialerLCDView *)self spacingBetweenPrimaryResultButtons];
    v159 = [v155 constraintEqualToAnchor:v157 constant:v158];
    [(PHHandsetDialerLCDView *)self setSecondaryHiddenConstraint:v159];
  }

  [(PHHandsetDialerLCDView *)self updateNumberAndBusinessNameLabelHorizontalConstraints];
  v160 = *MEMORY[0x277D85DE8];
}

- (void)updateNumberAndBusinessNameLabelHorizontalConstraints
{
  v3 = [(PHHandsetDialerLCDView *)self numberLabelHorizontalConstraints];

  if (v3)
  {
    v4 = [(PHHandsetDialerLCDView *)self numberLabelHorizontalConstraints];
    [(PHHandsetDialerLCDView *)self removeConstraints:v4];
  }

  v5 = [(PHHandsetDialerLCDView *)self generateNumberLabelHorizontalConstraints];
  [(PHHandsetDialerLCDView *)self setNumberLabelHorizontalConstraints:v5];

  v6 = [(PHHandsetDialerLCDView *)self numberLabelHorizontalConstraints];
  [(PHHandsetDialerLCDView *)self addConstraints:v6];

  v7 = [(PHHandsetDialerLCDView *)self businessNameLabelHorizontalConstraints];

  if (v7)
  {
    v8 = [(PHHandsetDialerLCDView *)self businessNameLabelHorizontalConstraints];
    [(PHHandsetDialerLCDView *)self removeConstraints:v8];
  }

  v9 = [(PHHandsetDialerLCDView *)self generateBusinessNameLabelHorizontalConstraints];
  [(PHHandsetDialerLCDView *)self setBusinessNameLabelHorizontalConstraints:v9];

  v10 = [(PHHandsetDialerLCDView *)self businessNameLabelHorizontalConstraints];
  [(PHHandsetDialerLCDView *)self addConstraints:v10];
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
    v4 = [MEMORY[0x277D3A7E0] screenSize];
    if (v4 > 0xF)
    {
      return 13.0;
    }

    v3 = 10.0;
    if (((1 << v4) & 0xA200) == 0)
    {
      if (((1 << v4) & 3) != 0)
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
    v4 = [MEMORY[0x277D3A7E0] screenSize];
    if (v4 <= 8)
    {
      if (v4)
      {
        if (v4 != 1)
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
      if (v4 != 9 && v4 != 13 && v4 != 15)
      {
        goto LABEL_15;
      }
    }
  }

  return *&v3;
}

- (float)spacingBetweenNumberAndContactResult
{
  v3 = [MEMORY[0x277D3A7E0] screenSize];
  if (v3 <= 8)
  {
    if (v3)
    {
      if (v3 != 1)
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
    if (v3 != 9 && v3 != 13 && v3 != 15)
    {
      return 19.0;
    }
  }

  return result;
}

- (float)spacingBetweenPrimaryResultButtons
{
  v3 = [MEMORY[0x277D3A7E0] screenSize];
  if (v3 == 1)
  {
    return 5.0;
  }

  if (v3)
  {
    return 11.0;
  }

  v4 = [(PHHandsetDialerLCDView *)self isHostedInRemoteViewController];
  result = 5.0;
  if (v4)
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
    v4 = [MEMORY[0x277D3A7E0] handsetDialerSpacing];
    result = 0.0;
    if (v4 == 2)
    {
      result = 25.0;
    }

    if (!v4)
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
    v3 = [MEMORY[0x277D3A7E0] handsetDialerSpacing];
    if (v3 <= 6)
    {
      return dbl_2429ED2E8[v3];
    }
  }

  return v2;
}

- (void)setIsHostedInRemoteViewController:(BOOL)a3
{
  if (self->_isHostedInRemoteViewController != a3)
  {
    self->_isHostedInRemoteViewController = a3;
    [(PHHandsetDialerLCDView *)self addContactButtonTopConstraintConstant];
    v6 = v5;
    v7 = [(PHHandsetDialerLCDView *)self addContactButtonTopConstraint];
    [v7 setConstant:v6];
  }
}

- (void)textField:(id)a3 didUpdateString:(id)a4
{
  v10 = a3;
  if ([v10 isEditing])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      [v7 dialerLCDFieldTextDidChange:self];
    }
  }

  v8 = [(PHHandsetDialerLCDView *)self text];
  v9 = [v8 length];

  if (!v9)
  {
    [v10 endEditing:1];
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
      v4 = [(PHHandsetDialerLCDView *)self resultContact];
      v5 = [v3 stringFromContact:v4 style:0];

      v6 = [(PHHandsetDialerLCDView *)self resultContactPhoneNumber];
      v7 = [v6 value];
      v8 = [v7 formattedStringValue];
      v9 = v8;
      if (v8)
      {
        v10 = v8;
      }

      else
      {
        v12 = [v6 value];
        v10 = [v12 stringValue];
      }

      v13 = MEMORY[0x277CBDB20];
      v14 = [v6 label];
      v11 = [v13 localizedStringForLabel:v14];

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
        v16 = [(PHHandsetDialerLCDView *)self resultDelegate];
        v27 = MEMORY[0x277D85DD0];
        v28 = 3221225472;
        v29 = __52__PHHandsetDialerLCDView_contactResultButtonPressed__block_invoke;
        v30 = &unk_278D74CE0;
        v32 = &v43;
        v33 = &v39;
        v34 = &v35;
        v17 = v15;
        v31 = v17;
        [v16 searchBusinessesFor:v10 completionHandler:&v27];

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
      v10 = 0;
      v5 = 0;
    }

    [(PHHandsetDialerLCDView *)self hideResultsButtons:v27];
    [(PHLCDViewTextField *)self->_numberTextField setText:v10];
    [(PHHandsetDialerLCDView *)self setName:v5 numberLabel:v11];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v25 = objc_opt_respondsToSelector();

    if ((v25 & 1) == 0)
    {
LABEL_19:

      goto LABEL_20;
    }

    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 updateIDSStatus];
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
  v4 = a1;
  _os_log_error_impl(&dword_2429BC000, a2, OS_LOG_TYPE_ERROR, "Error opening Messages url: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (BOOL)textFieldShouldBeginEditing:(id)a3
{
  v3 = [(PHLCDViewTextField *)self->_numberTextField text];
  v4 = [v3 length] != 0;

  return v4;
}

- (void)textFieldDidBeginEditing:(id)a3
{
  v4 = [MEMORY[0x277D75718] sharedMenuController];
  v5 = [v4 isMenuVisible];

  if (v5)
  {

    [(PHHandsetDialerLCDView *)self _makeCalloutVisible:0];
  }
}

- (void)textFieldDidEndEditing:(id)a3
{
  v4 = [(PHHandsetDialerLCDView *)self text];
  [(PHHandsetDialerLCDView *)self setText:v4 needsFormat:1];
}

- (id)resultContactPhoneNumber
{
  v3 = [(MPContactSearchResult *)self->_contactSearchResult preferredPhoneNumber];
  if (v3 || ([(MPContactSearchResult *)self->_contactSearchResult preferredPhoneNumber], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
  }

  else
  {
    v6 = [(PHHandsetDialerLCDView *)self resultContact];
    v7 = [v6 phoneNumbers];
    v4 = [v7 firstObject];
  }

  return v4;
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
    v4 = [(PHHandsetDialerLCDView *)self resultContact];
    v5 = [v3 stringFromContact:v4 style:0];

    v6 = [(PHHandsetDialerLCDView *)self resultContactPhoneNumber];
    v7 = v6;
    v8 = v6 != 0;
    if (v6)
    {
      v9 = [v6 value];
      v10 = [v9 formattedStringValue];
      v11 = v10;
      if (v10)
      {
        v12 = v10;
      }

      else
      {
        v14 = [v7 value];
        v12 = [v14 stringValue];
      }

      v15 = [(PHHandsetDialerLCDView *)self text];
      v33 = [v5 attributedStringToHighlightText:v15 style:1];

      v16 = [(PHHandsetDialerLCDView *)self text];
      v13 = [v12 attributedStringToHighlightText:v16 style:2];
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
    v24 = [MEMORY[0x277D75348] secondaryLabelColor];
    [v22 addAttribute:v23 value:v24 range:{0, objc_msgSend(v22, "length")}];

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

  v25 = [(MPContactSearchResult *)self->_contactSearchResult matchInfo];
  v26 = v25;
  if (v25 && ([v25 matchedProperties], v27 = objc_claimAutoreleasedReturnValue(), v27, v27))
  {
    v28 = MEMORY[0x277D3A7C8];
    v29 = [v26 matchedProperties];
    v30 = [v28 matchedProperties:v29 contains:*MEMORY[0x277CBD098]];
  }

  else
  {
    v30 = 1;
  }

  primaryResultButtonView = self->_primaryResultButtonView;
  v32 = [(PHHandsetDialerLCDView *)self text];
  [(PHDialerResultButtonView *)primaryResultButtonView configureWithPrimaryTitle:v33 secondaryTitle:v13 searchString:v32 isNumberPriority:v30 buttonType:0];

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

- (void)updateResultButtonsVisiblityForPrimary:(BOOL)a3 secondary:(BOOL)a4
{
  if (self->_primaryResultButtonVisible != a3)
  {
    if (!a3)
    {
      [(PHHandsetDialerLCDView *)self hideResultsButtons];
      goto LABEL_8;
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __75__PHHandsetDialerLCDView_updateResultButtonsVisiblityForPrimary_secondary___block_invoke;
    aBlock[3] = &unk_278D74A98;
    aBlock[4] = self;
    v12 = a4;
    v7 = aBlock;
    goto LABEL_6;
  }

  if (self->_secondaryResultButtonVisible != a4)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __75__PHHandsetDialerLCDView_updateResultButtonsVisiblityForPrimary_secondary___block_invoke_2;
    v9[3] = &unk_278D74A98;
    v9[4] = self;
    v10 = a4;
    v7 = v9;
LABEL_6:
    v8 = _Block_copy(v7);
    [MEMORY[0x277D75D18] animateWithDuration:v8 animations:0.300000012];
  }

LABEL_8:
  self->_primaryResultButtonVisible = a3;
  self->_secondaryResultButtonVisible = a4;
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

- (void)handleDialerResultButtonPressedOfType:(int64_t)a3
{
  dialerReporter = self->_dialerReporter;
  v6 = [(PHHandsetDialerLCDView *)self resultContact];
  [(MPDialerInterceptReporter *)dialerReporter updateForDialerResultPressed:a3 savedContact:v6 != 0];

  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v8 = [(PHHandsetDialerLCDView *)self resultDelegate];
      [v8 presentAppleSupportGuidedHelp];
LABEL_15:

      return;
    }

    if (a3 == 4)
    {

      [(PHHandsetDialerLCDView *)self launchBusinessMessagesSupport];
    }
  }

  else
  {
    if (a3)
    {
      if (a3 != 1)
      {
        return;
      }

      v8 = [(PHHandsetDialerLCDView *)self resultDelegate];
      v7 = [(PHHandsetDialerLCDView *)self unformattedText];
      [v8 presentContactsSearchFor:v7];

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