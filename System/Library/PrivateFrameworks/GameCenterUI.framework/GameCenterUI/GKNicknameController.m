@interface GKNicknameController
- (BOOL)textFieldShouldBeginEditing:(id)a3;
- (BOOL)textFieldShouldReturn:(id)a3;
- (GKNicknameController)initWithMinNicknameLength:(unint64_t)a3 maxNicknameLength:(unint64_t)a4;
- (GKNicknameControllerDelegate)delegate;
- (void)commitNicknameChangesWithCompletion:(id)a3;
- (void)didSelectSuggestion:(id)a3;
- (void)displayNicknameSuggestions;
- (void)keyboardWillHide:(id)a3;
- (void)keyboardWillShow:(id)a3;
- (void)loadSuggestedNicknames:(id)a3;
- (void)nicknameTextChanged:(id)a3;
- (void)reset;
- (void)setNickname:(id)a3;
- (void)setShouldUseSuggestedNicknameOnDefaultNickname:(BOOL)a3;
- (void)shakeNicknameTextFieldWithCompletionBlock:(id)a3;
- (void)startObservingKeyboardEvents;
- (void)stopObservingKeyboardEvents;
- (void)textFieldDidBecomeFirstResponder:(id)a3;
- (void)textFieldDidBeginEditing:(id)a3;
- (void)textFieldDidResignFirstResponder:(id)a3;
- (void)updateReturnKeyEnabledState;
@end

@implementation GKNicknameController

- (GKNicknameController)initWithMinNicknameLength:(unint64_t)a3 maxNicknameLength:(unint64_t)a4
{
  v13.receiver = self;
  v13.super_class = GKNicknameController;
  v6 = [(GKNicknameController *)&v13 init];
  if (v6)
  {
    v7 = [MEMORY[0x277D0C1F0] _gkReachabilityForInternetConnection];
    [(GKNicknameController *)v6 setReachability:v7];

    [(GKNicknameController *)v6 setShouldUseSuggestedNicknameOnDefaultNickname:0];
    if (a3)
    {
      v8 = a3;
    }

    else
    {
      v8 = 3;
    }

    if (a4)
    {
      v9 = a4;
    }

    else
    {
      v9 = 18;
    }

    if (v8 >= v9)
    {
      v10 = 3;
    }

    else
    {
      v10 = v8;
    }

    if (v8 >= v9)
    {
      v11 = 18;
    }

    else
    {
      v11 = v9;
    }

    [(GKNicknameController *)v6 setMinNicknameLength:v10];
    [(GKNicknameController *)v6 setMaxNicknameLength:v11];
  }

  return v6;
}

- (void)setNickname:(id)a3
{
  objc_storeStrong(&self->_nickname, a3);
  v7 = a3;
  v5 = GKGameCenterUIFrameworkBundle();
  v6 = GKGetLocalizedStringFromTableInBundle();
  [(UITextField *)self->_nickname setPlaceholder:v6];

  [(UITextField *)self->_nickname setDelegate:self];
}

- (void)updateReturnKeyEnabledState
{
  v3 = [(GKNicknameController *)self nickname];
  v4 = [v3 text];
  v5 = [v4 length];
  if (v5 >= [(GKNicknameController *)self minNicknameLength])
  {
    v7 = [(GKNicknameController *)self nickname];
    v8 = [v7 text];
    v9 = [v8 length];
    v6 = v9 <= [(GKNicknameController *)self maxNicknameLength];
  }

  else
  {
    v6 = 0;
  }

  v10 = [MEMORY[0x277D75658] activeKeyboard];
  [v10 setReturnKeyEnabled:v6];
}

- (void)stopObservingKeyboardEvents
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D76C60] object:0];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self name:*MEMORY[0x277D76C50] object:0];

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 removeObserver:self name:*MEMORY[0x277D770B0] object:0];
}

- (void)startObservingKeyboardEvents
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel_keyboardWillShow_ name:*MEMORY[0x277D76C60] object:0];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 addObserver:self selector:sel_keyboardWillHide_ name:*MEMORY[0x277D76C50] object:0];

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 addObserver:self selector:sel_nicknameTextChanged_ name:*MEMORY[0x277D770B0] object:0];
}

- (void)commitNicknameChangesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(GKNicknameController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(GKNicknameController *)self delegate];
    [v7 nicknameWillbeginUpdating];
  }

  v8 = [(GKNicknameController *)self activityIndicator];
  [v8 startAnimating];

  v9 = [MEMORY[0x277D0C010] proxyForLocalPlayer];
  v10 = [v9 profileServicePrivate];
  v11 = [(GKNicknameController *)self nickname];
  v12 = [v11 text];
  v13 = [(GKNicknameController *)self minNicknameLength];
  v14 = [(GKNicknameController *)self maxNicknameLength];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __60__GKNicknameController_commitNicknameChangesWithCompletion___block_invoke;
  v16[3] = &unk_27966A818;
  v16[4] = self;
  v17 = v4;
  v15 = v4;
  [v10 setPlayerNickname:v12 suggestionsCount:3 minSuggestionLength:v13 maxSuggestionLength:v14 handler:v16];
}

void __60__GKNicknameController_commitNicknameChangesWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__GKNicknameController_commitNicknameChangesWithCompletion___block_invoke_2;
  block[3] = &unk_27966A3E0;
  v9 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v13 = v8;
  v16 = a3;
  v14 = v7;
  v15 = v9;
  v10 = v7;
  v11 = v8;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __60__GKNicknameController_commitNicknameChangesWithCompletion___block_invoke_2(uint64_t a1)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) activityIndicator];
  [v2 stopAnimating];

  if (*(a1 + 40) || *(a1 + 64))
  {
    [*(a1 + 32) setSuggestedNicknames:*(a1 + 48)];
    [*(a1 + 32) displayNicknameSuggestions];
    v3 = [*(a1 + 32) shouldShakeTextFieldOnError];
    v4 = *(a1 + 32);
    if (v3)
    {
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __60__GKNicknameController_commitNicknameChangesWithCompletion___block_invoke_3;
      v28[3] = &unk_2796699A8;
      v28[4] = v4;
      [v4 shakeNicknameTextFieldWithCompletionBlock:v28];
    }

    else
    {
      [v4 reset];
    }

    v5 = *(a1 + 64);
    v6 = GKGameCenterUIFrameworkBundle();
    if (v5 > 5053)
    {
      if (v5 == 5054 || v5 == 5065 || v5 == 5066)
      {
        goto LABEL_24;
      }
    }

    else if (v5 == 5022 || v5 == 5024 || v5 == 5035)
    {
LABEL_24:
      v15 = GKGetLocalizedStringFromTableInBundle();
      v16 = 1;
      goto LABEL_25;
    }

    v15 = GKGetLocalizedStringFromTableInBundle();

    v6 = [*(a1 + 32) nickname];
    [v6 resignFirstResponder];
    v16 = 0;
LABEL_25:

    v17 = *(a1 + 40);
    if (v17)
    {
      v18 = v17;
    }

    else
    {
      v19 = MEMORY[0x277CCA9B8];
      v20 = *MEMORY[0x277D0BF68];
      v21 = *(a1 + 64);
      v29 = @"askUserToRetry";
      v22 = [MEMORY[0x277CCABB0] numberWithBool:v16];
      v30[0] = v22;
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
      v18 = [v19 errorWithDomain:v20 code:v21 userInfo:v23];
    }

    v24 = [*(a1 + 32) delegate];
    v25 = objc_opt_respondsToSelector();

    if (v25)
    {
      v26 = [*(a1 + 32) delegate];
      [v26 nicknameUpdateRequestCompletedWithStatus:v15 error:v18];
    }

    v27 = *(a1 + 56);
    if (v27)
    {
      (*(v27 + 16))(v27, v18);
    }

    return;
  }

  v7 = [*(a1 + 32) nickname];
  v8 = [v7 text];
  v9 = [MEMORY[0x277D0C138] local];
  [v9 setAlias:v8];

  [*(a1 + 32) setNicknameChangeWasCommitted:1];
  v10 = [*(a1 + 32) nickname];
  [v10 resignFirstResponder];

  v11 = [*(a1 + 32) delegate];
  LOBYTE(v8) = objc_opt_respondsToSelector();

  if (v8)
  {
    v12 = [*(a1 + 32) delegate];
    [v12 nicknameUpdateRequestCompletedWithStatus:0 error:0];
  }

  v13 = *(a1 + 56);
  if (v13)
  {
    v14 = *(v13 + 16);

    v14();
  }
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v4 = a3;
  v5 = [(GKNicknameController *)self nickname];
  v6 = [v5 text];
  v7 = [(GKNicknameController *)self defaultNickname];
  v8 = [v6 isEqualToString:v7];

  if ((v8 & 1) == 0)
  {
    v9 = [MEMORY[0x277D0C1F8] reporter];
    [v9 reportEvent:*MEMORY[0x277D0BEB0] type:*MEMORY[0x277D0BEF0]];
  }

  v10 = [(GKNicknameController *)self reachability];
  v11 = [v10 _gkCurrentReachabilityStatus];

  if (!v11)
  {
    v18 = [MEMORY[0x277D0C138] local];
    v19 = [v18 alias];
    v20 = [(GKNicknameController *)self nickname];
    [v20 setText:v19];

    goto LABEL_7;
  }

  v12 = [(GKNicknameController *)self nickname];
  v13 = [v12 text];
  v14 = [MEMORY[0x277D0C138] local];
  v15 = [v14 alias];
  v16 = [v13 isEqualToString:v15];

  if (v16)
  {
LABEL_7:
    [v4 resignFirstResponder];
    v17 = 1;
    goto LABEL_8;
  }

  [(GKNicknameController *)self setNicknameWasEdited:1];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __46__GKNicknameController_textFieldShouldReturn___block_invoke;
  v22[3] = &unk_279669D38;
  v22[4] = self;
  [(GKNicknameController *)self commitNicknameChangesWithCompletion:v22];
  v17 = 0;
LABEL_8:

  return v17;
}

void __46__GKNicknameController_textFieldShouldReturn___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D0C2A0];
  v5 = *MEMORY[0x277D0C2A0];
  if (v3)
  {
    if (!v5)
    {
      v6 = GKOSLoggers();
    }

    v7 = *MEMORY[0x277D0C290];
    if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
    {
      __46__GKNicknameController_textFieldShouldReturn___block_invoke_cold_1(v3, v7);
    }

    v8 = [v3 userInfo];
    v9 = [v8 objectForKeyedSubscript:@"askUserToRetry"];
    v10 = [v9 BOOLValue];

    if ((v10 & 1) == 0)
    {
      v11 = [MEMORY[0x277D0C138] local];
      v12 = [v11 alias];
      v13 = [*(a1 + 32) nickname];
      [v13 setText:v12];
    }
  }

  else
  {
    if (!v5)
    {
      v14 = GKOSLoggers();
      v5 = *v4;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v15 = 0;
      _os_log_impl(&dword_24DE53000, v5, OS_LOG_TYPE_INFO, "GKNicknameController.textFieldShouldReturn: Nickname saved.", v15, 2u);
    }
  }
}

- (void)displayNicknameSuggestions
{
  v3 = [(GKNicknameController *)self suggestedNicknames];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [MEMORY[0x277D75418] currentDevice];
    v6 = [v5 userInterfaceIdiom];

    if (v6 == 1)
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v8 = [MEMORY[0x277CBEB18] array];
    v9 = [(GKNicknameController *)self suggestedNicknames];
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __50__GKNicknameController_displayNicknameSuggestions__block_invoke;
    v16 = &unk_27966A840;
    v17 = v8;
    v18 = v7;
    v10 = v8;
    [v9 enumerateObjectsUsingBlock:&v13];

    v11 = [(GKNicknameController *)self nickname:v13];
    v12 = [v11 textInputSuggestionDelegate];
    [v12 setSuggestions:v10];
  }
}

void __50__GKNicknameController_displayNicknameSuggestions__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [MEMORY[0x277D75C38] textSuggestionWithInputText:a2];
  [*(a1 + 32) addObject:?];
  if ([*(a1 + 32) count] >= *(a1 + 40))
  {
    *a4 = 1;
  }
}

- (void)didSelectSuggestion:(id)a3
{
  v4 = a3;
  v5 = [(GKNicknameController *)self nickname];
  [v5 setText:v4];
}

- (void)reset
{
  [(GKNicknameController *)self setNicknameWasEdited:0];

  [(GKNicknameController *)self updateReturnKeyEnabledState];
}

- (BOOL)textFieldShouldBeginEditing:(id)a3
{
  v4 = [(GKNicknameController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    return 1;
  }

  v6 = [(GKNicknameController *)self delegate];
  v7 = [v6 nicknameShouldBeginEditing];

  return v7;
}

- (void)textFieldDidBeginEditing:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = [(GKNicknameController *)self nickname];
  v5 = [v4 text];
  [(GKNicknameController *)self setDefaultNickname:v5];

  [(GKNicknameController *)self reset];
  v6 = [(GKNicknameController *)self nickname];
  v7 = [v6 textInputSuggestionDelegate];
  v8 = [MEMORY[0x277D75C38] textSuggestionWithInputText:&stru_28612D290];
  v11[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  [v7 setSuggestions:v9];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __49__GKNicknameController_textFieldDidBeginEditing___block_invoke;
  v10[3] = &unk_2796699A8;
  v10[4] = self;
  [(GKNicknameController *)self loadSuggestedNicknames:v10];
}

- (void)nicknameTextChanged:(id)a3
{
  v4 = [(GKNicknameController *)self nickname];
  v5 = [v4 text];
  v6 = [v5 length];
  if (v6 < [(GKNicknameController *)self minNicknameLength])
  {

LABEL_4:
    v11 = MEMORY[0x277CCACA8];
    v12 = GKGameCenterUIFrameworkBundle();
    v13 = GKGetLocalizedStringFromTableInBundle();
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[GKNicknameController minNicknameLength](self, "minNicknameLength")}];
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[GKNicknameController maxNicknameLength](self, "maxNicknameLength")}];
    v27 = [v11 stringWithFormat:v13, v14, v15];

    goto LABEL_6;
  }

  v7 = [(GKNicknameController *)self nickname];
  v8 = [v7 text];
  v9 = [v8 length];
  v10 = [(GKNicknameController *)self maxNicknameLength];

  if (v9 > v10)
  {
    goto LABEL_4;
  }

  v27 = 0;
LABEL_6:
  v16 = [(GKNicknameController *)self nickname];
  v17 = [v16 text];
  v18 = [v17 length];
  v19 = [(GKNicknameController *)self maxNicknameLength];

  if (v18 > v19)
  {
    v20 = [(GKNicknameController *)self nickname];
    v21 = [v20 text];
    v22 = [v21 substringToIndex:{-[GKNicknameController maxNicknameLength](self, "maxNicknameLength")}];
    v23 = [(GKNicknameController *)self nickname];
    [v23 setText:v22];
  }

  [(GKNicknameController *)self updateReturnKeyEnabledState];
  v24 = [(GKNicknameController *)self delegate];
  v25 = objc_opt_respondsToSelector();

  if (v25)
  {
    v26 = [(GKNicknameController *)self delegate];
    [v26 nicknameTextDidChangeWithMessage:v27];
  }

  [(GKNicknameController *)self displayNicknameSuggestions];
}

- (void)shakeNicknameTextFieldWithCompletionBlock:(id)a3
{
  v4 = a3;
  [MEMORY[0x277CD9FF0] begin];
  v5 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"position"];
  [v5 setRemovedOnCompletion:1];
  v6 = MEMORY[0x277CCAE60];
  v7 = [(GKNicknameController *)self nickname];
  v8 = [v7 layer];
  [v8 position];
  v10 = v9 + -5.0;
  v11 = [(GKNicknameController *)self nickname];
  v12 = [v11 layer];
  [v12 position];
  *v32 = v10;
  v32[1] = v13;
  v14 = [v6 valueWithBytes:v32 objCType:"{CGPoint=dd}"];
  [v5 setFromValue:v14];

  v15 = MEMORY[0x277CCAE60];
  v16 = [(GKNicknameController *)self nickname];
  v17 = [v16 layer];
  [v17 position];
  v19 = v18 + 5.0;
  v20 = [(GKNicknameController *)self nickname];
  v21 = [v20 layer];
  [v21 position];
  *v31 = v19;
  v31[1] = v22;
  v23 = [v15 valueWithBytes:v31 objCType:"{CGPoint=dd}"];
  [v5 setToValue:v23];

  [v5 setDuration:0.05];
  LODWORD(v24) = 4.0;
  [v5 setRepeatCount:v24];
  [v5 setAutoreverses:1];
  v25 = MEMORY[0x277CD9FF0];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __66__GKNicknameController_shakeNicknameTextFieldWithCompletionBlock___block_invoke;
  v29[3] = &unk_27966A4A8;
  v30 = v4;
  v26 = v4;
  [v25 setCompletionBlock:v29];
  v27 = [(GKNicknameController *)self nickname];
  v28 = [v27 layer];
  [v28 addAnimation:v5 forKey:@"shake"];

  [MEMORY[0x277CD9FF0] commit];
}

void __66__GKNicknameController_shakeNicknameTextFieldWithCompletionBlock___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = dispatch_time(0, 1000000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__GKNicknameController_shakeNicknameTextFieldWithCompletionBlock___block_invoke_2;
    block[3] = &unk_27966A4A8;
    v4 = *(a1 + 32);
    dispatch_after(v2, MEMORY[0x277D85CD0], block);
  }
}

- (void)keyboardWillShow:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(GKNicknameController *)self nickname];
  v6 = [v5 isFirstResponder];

  if (v6)
  {
    v7 = [(GKNicknameController *)self nickname];
    v8 = [v7 textInputSuggestionDelegate];
    v9 = [MEMORY[0x277D75C38] textSuggestionWithInputText:&stru_28612D290];
    v13[0] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    [v8 setSuggestions:v10];

    v11 = [(GKNicknameController *)self delegate];
    LOBYTE(v8) = objc_opt_respondsToSelector();

    if (v8)
    {
      v12 = [(GKNicknameController *)self delegate];
      [v12 keyboardWillShow:v4];
    }
  }
}

- (void)keyboardWillHide:(id)a3
{
  v10 = a3;
  if (![(GKNicknameController *)self nicknameWasEdited])
  {
    v4 = [MEMORY[0x277D0C138] local];
    v5 = [v4 alias];
    v6 = [(GKNicknameController *)self nickname];
    [v6 setText:v5];
  }

  v7 = [(GKNicknameController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(GKNicknameController *)self delegate];
    [v9 keyboardWillHide:v10];
  }
}

- (void)textFieldDidBecomeFirstResponder:(id)a3
{
  v4 = [(GKNicknameController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(GKNicknameController *)self delegate];
    [v6 nicknameDidBecomeFirstResponder];
  }
}

- (void)textFieldDidResignFirstResponder:(id)a3
{
  v4 = [(GKNicknameController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(GKNicknameController *)self delegate];
    [v6 nicknameDidResignFirstResponder];
  }
}

- (void)loadSuggestedNicknames:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D0C010] proxyForLocalPlayer];
  v6 = [v5 profileServicePrivate];
  v7 = [(GKNicknameController *)self minNicknameLength];
  v8 = [(GKNicknameController *)self maxNicknameLength];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __47__GKNicknameController_loadSuggestedNicknames___block_invoke;
  v10[3] = &unk_27966A868;
  v10[4] = self;
  v11 = v4;
  v9 = v4;
  [v6 getNicknameSuggestions:3 minSuggestionLength:v7 maxSuggestionLength:v8 handler:v10];
}

void __47__GKNicknameController_loadSuggestedNicknames___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = MEMORY[0x277D0C2A0];
  v8 = *MEMORY[0x277D0C2A0];
  if (v6)
  {
    if (!v8)
    {
      v9 = GKOSLoggers();
    }

    v10 = *MEMORY[0x277D0C290];
    if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
    {
      __47__GKNicknameController_loadSuggestedNicknames___block_invoke_cold_1(v6, v10);
    }
  }

  else
  {
    if (!v8)
    {
      v11 = GKOSLoggers();
      v8 = *v7;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_24DE53000, v8, OS_LOG_TYPE_INFO, "GKNicknameController.loadSuggestedNicknames: Succeeded", buf, 2u);
    }
  }

  if (*(a1 + 40))
  {
    [*(a1 + 32) setSuggestedNicknames:v5];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__GKNicknameController_loadSuggestedNicknames___block_invoke_75;
    block[3] = &unk_27966A4A8;
    v13 = *(a1 + 40);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)setShouldUseSuggestedNicknameOnDefaultNickname:(BOOL)a3
{
  v3 = a3;
  v24 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D0C2A0];
  v6 = *MEMORY[0x277D0C2A0];
  if (!*MEMORY[0x277D0C2A0])
  {
    v7 = GKOSLoggers();
    v6 = *v5;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = MEMORY[0x277D0C138];
    v9 = v6;
    v10 = [v8 local];
    v11 = [v10 internal];
    v12 = [v11 isDefaultNickname];
    v13 = [(GKNicknameController *)self nickname];
    *buf = 67109632;
    v19 = v3;
    v20 = 1024;
    v21 = v12;
    v22 = 1024;
    v23 = v13 != 0;
    _os_log_impl(&dword_24DE53000, v9, OS_LOG_TYPE_INFO, "GKNicknameController.setShouldUseSuggestedNicknameOnDefaultNickname: %d, is player using default nickname? %d, is nickname text field set? %d", buf, 0x14u);
  }

  self->_shouldUseSuggestedNicknameOnDefaultNickname = v3;
  if (v3)
  {
    v14 = [MEMORY[0x277D0C138] local];
    v15 = [v14 internal];
    v16 = [v15 isDefaultNickname];

    if (v16)
    {
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __71__GKNicknameController_setShouldUseSuggestedNicknameOnDefaultNickname___block_invoke;
      v17[3] = &unk_2796699A8;
      v17[4] = self;
      [(GKNicknameController *)self loadSuggestedNicknames:v17];
    }
  }
}

void __71__GKNicknameController_setShouldUseSuggestedNicknameOnDefaultNickname___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) suggestedNicknames];
  v3 = [v2 count];

  if (v3)
  {
    v4 = [*(a1 + 32) suggestedNicknames];
    v5 = [v4 objectAtIndexedSubscript:0];
    v6 = [*(a1 + 32) nickname];
    [v6 setText:v5];

    [*(a1 + 32) setNicknameWasEdited:1];
    v7 = [*(a1 + 32) delegate];
    LOBYTE(v5) = objc_opt_respondsToSelector();

    if (v5)
    {
      v10 = [*(a1 + 32) delegate];
      v8 = [*(a1 + 32) nickname];
      v9 = [v8 text];
      [v10 nicknameUpdateAvatarImage:v9];
    }
  }
}

- (GKNicknameControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __46__GKNicknameController_textFieldShouldReturn___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_24DE53000, a2, OS_LOG_TYPE_ERROR, "GKNicknameController.textFieldShouldReturn: Failed to change player's nickname: %@", &v2, 0xCu);
}

void __47__GKNicknameController_loadSuggestedNicknames___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_24DE53000, a2, OS_LOG_TYPE_ERROR, "GKNicknameController.loadSuggestedNicknames: Failed with error: %@", &v2, 0xCu);
}

@end