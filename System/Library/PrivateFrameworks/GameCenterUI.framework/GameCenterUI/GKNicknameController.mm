@interface GKNicknameController
- (BOOL)textFieldShouldBeginEditing:(id)editing;
- (BOOL)textFieldShouldReturn:(id)return;
- (GKNicknameController)initWithMinNicknameLength:(unint64_t)length maxNicknameLength:(unint64_t)nicknameLength;
- (GKNicknameControllerDelegate)delegate;
- (void)commitNicknameChangesWithCompletion:(id)completion;
- (void)didSelectSuggestion:(id)suggestion;
- (void)displayNicknameSuggestions;
- (void)keyboardWillHide:(id)hide;
- (void)keyboardWillShow:(id)show;
- (void)loadSuggestedNicknames:(id)nicknames;
- (void)nicknameTextChanged:(id)changed;
- (void)reset;
- (void)setNickname:(id)nickname;
- (void)setShouldUseSuggestedNicknameOnDefaultNickname:(BOOL)nickname;
- (void)shakeNicknameTextFieldWithCompletionBlock:(id)block;
- (void)startObservingKeyboardEvents;
- (void)stopObservingKeyboardEvents;
- (void)textFieldDidBecomeFirstResponder:(id)responder;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidResignFirstResponder:(id)responder;
- (void)updateReturnKeyEnabledState;
@end

@implementation GKNicknameController

- (GKNicknameController)initWithMinNicknameLength:(unint64_t)length maxNicknameLength:(unint64_t)nicknameLength
{
  v13.receiver = self;
  v13.super_class = GKNicknameController;
  v6 = [(GKNicknameController *)&v13 init];
  if (v6)
  {
    _gkReachabilityForInternetConnection = [MEMORY[0x277D0C1F0] _gkReachabilityForInternetConnection];
    [(GKNicknameController *)v6 setReachability:_gkReachabilityForInternetConnection];

    [(GKNicknameController *)v6 setShouldUseSuggestedNicknameOnDefaultNickname:0];
    if (length)
    {
      lengthCopy = length;
    }

    else
    {
      lengthCopy = 3;
    }

    if (nicknameLength)
    {
      nicknameLengthCopy = nicknameLength;
    }

    else
    {
      nicknameLengthCopy = 18;
    }

    if (lengthCopy >= nicknameLengthCopy)
    {
      v10 = 3;
    }

    else
    {
      v10 = lengthCopy;
    }

    if (lengthCopy >= nicknameLengthCopy)
    {
      v11 = 18;
    }

    else
    {
      v11 = nicknameLengthCopy;
    }

    [(GKNicknameController *)v6 setMinNicknameLength:v10];
    [(GKNicknameController *)v6 setMaxNicknameLength:v11];
  }

  return v6;
}

- (void)setNickname:(id)nickname
{
  objc_storeStrong(&self->_nickname, nickname);
  nicknameCopy = nickname;
  v5 = GKGameCenterUIFrameworkBundle();
  v6 = GKGetLocalizedStringFromTableInBundle();
  [(UITextField *)self->_nickname setPlaceholder:v6];

  [(UITextField *)self->_nickname setDelegate:self];
}

- (void)updateReturnKeyEnabledState
{
  nickname = [(GKNicknameController *)self nickname];
  text = [nickname text];
  v5 = [text length];
  if (v5 >= [(GKNicknameController *)self minNicknameLength])
  {
    nickname2 = [(GKNicknameController *)self nickname];
    text2 = [nickname2 text];
    v9 = [text2 length];
    v6 = v9 <= [(GKNicknameController *)self maxNicknameLength];
  }

  else
  {
    v6 = 0;
  }

  activeKeyboard = [MEMORY[0x277D75658] activeKeyboard];
  [activeKeyboard setReturnKeyEnabled:v6];
}

- (void)stopObservingKeyboardEvents
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76C60] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 removeObserver:self name:*MEMORY[0x277D76C50] object:0];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 removeObserver:self name:*MEMORY[0x277D770B0] object:0];
}

- (void)startObservingKeyboardEvents
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_keyboardWillShow_ name:*MEMORY[0x277D76C60] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_keyboardWillHide_ name:*MEMORY[0x277D76C50] object:0];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel_nicknameTextChanged_ name:*MEMORY[0x277D770B0] object:0];
}

- (void)commitNicknameChangesWithCompletion:(id)completion
{
  completionCopy = completion;
  delegate = [(GKNicknameController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(GKNicknameController *)self delegate];
    [delegate2 nicknameWillbeginUpdating];
  }

  activityIndicator = [(GKNicknameController *)self activityIndicator];
  [activityIndicator startAnimating];

  proxyForLocalPlayer = [MEMORY[0x277D0C010] proxyForLocalPlayer];
  profileServicePrivate = [proxyForLocalPlayer profileServicePrivate];
  nickname = [(GKNicknameController *)self nickname];
  text = [nickname text];
  minNicknameLength = [(GKNicknameController *)self minNicknameLength];
  maxNicknameLength = [(GKNicknameController *)self maxNicknameLength];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __60__GKNicknameController_commitNicknameChangesWithCompletion___block_invoke;
  v16[3] = &unk_27966A818;
  v16[4] = self;
  v17 = completionCopy;
  v15 = completionCopy;
  [profileServicePrivate setPlayerNickname:text suggestionsCount:3 minSuggestionLength:minNicknameLength maxSuggestionLength:maxNicknameLength handler:v16];
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

- (BOOL)textFieldShouldReturn:(id)return
{
  returnCopy = return;
  nickname = [(GKNicknameController *)self nickname];
  text = [nickname text];
  defaultNickname = [(GKNicknameController *)self defaultNickname];
  v8 = [text isEqualToString:defaultNickname];

  if ((v8 & 1) == 0)
  {
    reporter = [MEMORY[0x277D0C1F8] reporter];
    [reporter reportEvent:*MEMORY[0x277D0BEB0] type:*MEMORY[0x277D0BEF0]];
  }

  reachability = [(GKNicknameController *)self reachability];
  _gkCurrentReachabilityStatus = [reachability _gkCurrentReachabilityStatus];

  if (!_gkCurrentReachabilityStatus)
  {
    local = [MEMORY[0x277D0C138] local];
    alias = [local alias];
    nickname2 = [(GKNicknameController *)self nickname];
    [nickname2 setText:alias];

    goto LABEL_7;
  }

  nickname3 = [(GKNicknameController *)self nickname];
  text2 = [nickname3 text];
  local2 = [MEMORY[0x277D0C138] local];
  alias2 = [local2 alias];
  v16 = [text2 isEqualToString:alias2];

  if (v16)
  {
LABEL_7:
    [returnCopy resignFirstResponder];
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
  suggestedNicknames = [(GKNicknameController *)self suggestedNicknames];
  v4 = [suggestedNicknames count];

  if (v4)
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom == 1)
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    array = [MEMORY[0x277CBEB18] array];
    suggestedNicknames2 = [(GKNicknameController *)self suggestedNicknames];
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __50__GKNicknameController_displayNicknameSuggestions__block_invoke;
    v16 = &unk_27966A840;
    v17 = array;
    v18 = v7;
    v10 = array;
    [suggestedNicknames2 enumerateObjectsUsingBlock:&v13];

    v11 = [(GKNicknameController *)self nickname:v13];
    textInputSuggestionDelegate = [v11 textInputSuggestionDelegate];
    [textInputSuggestionDelegate setSuggestions:v10];
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

- (void)didSelectSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  nickname = [(GKNicknameController *)self nickname];
  [nickname setText:suggestionCopy];
}

- (void)reset
{
  [(GKNicknameController *)self setNicknameWasEdited:0];

  [(GKNicknameController *)self updateReturnKeyEnabledState];
}

- (BOOL)textFieldShouldBeginEditing:(id)editing
{
  delegate = [(GKNicknameController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    return 1;
  }

  delegate2 = [(GKNicknameController *)self delegate];
  nicknameShouldBeginEditing = [delegate2 nicknameShouldBeginEditing];

  return nicknameShouldBeginEditing;
}

- (void)textFieldDidBeginEditing:(id)editing
{
  v11[1] = *MEMORY[0x277D85DE8];
  nickname = [(GKNicknameController *)self nickname];
  text = [nickname text];
  [(GKNicknameController *)self setDefaultNickname:text];

  [(GKNicknameController *)self reset];
  nickname2 = [(GKNicknameController *)self nickname];
  textInputSuggestionDelegate = [nickname2 textInputSuggestionDelegate];
  v8 = [MEMORY[0x277D75C38] textSuggestionWithInputText:&stru_28612D290];
  v11[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  [textInputSuggestionDelegate setSuggestions:v9];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __49__GKNicknameController_textFieldDidBeginEditing___block_invoke;
  v10[3] = &unk_2796699A8;
  v10[4] = self;
  [(GKNicknameController *)self loadSuggestedNicknames:v10];
}

- (void)nicknameTextChanged:(id)changed
{
  nickname = [(GKNicknameController *)self nickname];
  text = [nickname text];
  v6 = [text length];
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

  nickname2 = [(GKNicknameController *)self nickname];
  text2 = [nickname2 text];
  v9 = [text2 length];
  maxNicknameLength = [(GKNicknameController *)self maxNicknameLength];

  if (v9 > maxNicknameLength)
  {
    goto LABEL_4;
  }

  v27 = 0;
LABEL_6:
  nickname3 = [(GKNicknameController *)self nickname];
  text3 = [nickname3 text];
  v18 = [text3 length];
  maxNicknameLength2 = [(GKNicknameController *)self maxNicknameLength];

  if (v18 > maxNicknameLength2)
  {
    nickname4 = [(GKNicknameController *)self nickname];
    text4 = [nickname4 text];
    v22 = [text4 substringToIndex:{-[GKNicknameController maxNicknameLength](self, "maxNicknameLength")}];
    nickname5 = [(GKNicknameController *)self nickname];
    [nickname5 setText:v22];
  }

  [(GKNicknameController *)self updateReturnKeyEnabledState];
  delegate = [(GKNicknameController *)self delegate];
  v25 = objc_opt_respondsToSelector();

  if (v25)
  {
    delegate2 = [(GKNicknameController *)self delegate];
    [delegate2 nicknameTextDidChangeWithMessage:v27];
  }

  [(GKNicknameController *)self displayNicknameSuggestions];
}

- (void)shakeNicknameTextFieldWithCompletionBlock:(id)block
{
  blockCopy = block;
  [MEMORY[0x277CD9FF0] begin];
  v5 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"position"];
  [v5 setRemovedOnCompletion:1];
  v6 = MEMORY[0x277CCAE60];
  nickname = [(GKNicknameController *)self nickname];
  layer = [nickname layer];
  [layer position];
  v10 = v9 + -5.0;
  nickname2 = [(GKNicknameController *)self nickname];
  layer2 = [nickname2 layer];
  [layer2 position];
  *v32 = v10;
  v32[1] = v13;
  v14 = [v6 valueWithBytes:v32 objCType:"{CGPoint=dd}"];
  [v5 setFromValue:v14];

  v15 = MEMORY[0x277CCAE60];
  nickname3 = [(GKNicknameController *)self nickname];
  layer3 = [nickname3 layer];
  [layer3 position];
  v19 = v18 + 5.0;
  nickname4 = [(GKNicknameController *)self nickname];
  layer4 = [nickname4 layer];
  [layer4 position];
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
  v30 = blockCopy;
  v26 = blockCopy;
  [v25 setCompletionBlock:v29];
  nickname5 = [(GKNicknameController *)self nickname];
  layer5 = [nickname5 layer];
  [layer5 addAnimation:v5 forKey:@"shake"];

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

- (void)keyboardWillShow:(id)show
{
  v13[1] = *MEMORY[0x277D85DE8];
  showCopy = show;
  nickname = [(GKNicknameController *)self nickname];
  isFirstResponder = [nickname isFirstResponder];

  if (isFirstResponder)
  {
    nickname2 = [(GKNicknameController *)self nickname];
    textInputSuggestionDelegate = [nickname2 textInputSuggestionDelegate];
    v9 = [MEMORY[0x277D75C38] textSuggestionWithInputText:&stru_28612D290];
    v13[0] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    [textInputSuggestionDelegate setSuggestions:v10];

    delegate = [(GKNicknameController *)self delegate];
    LOBYTE(textInputSuggestionDelegate) = objc_opt_respondsToSelector();

    if (textInputSuggestionDelegate)
    {
      delegate2 = [(GKNicknameController *)self delegate];
      [delegate2 keyboardWillShow:showCopy];
    }
  }
}

- (void)keyboardWillHide:(id)hide
{
  hideCopy = hide;
  if (![(GKNicknameController *)self nicknameWasEdited])
  {
    local = [MEMORY[0x277D0C138] local];
    alias = [local alias];
    nickname = [(GKNicknameController *)self nickname];
    [nickname setText:alias];
  }

  delegate = [(GKNicknameController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(GKNicknameController *)self delegate];
    [delegate2 keyboardWillHide:hideCopy];
  }
}

- (void)textFieldDidBecomeFirstResponder:(id)responder
{
  delegate = [(GKNicknameController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(GKNicknameController *)self delegate];
    [delegate2 nicknameDidBecomeFirstResponder];
  }
}

- (void)textFieldDidResignFirstResponder:(id)responder
{
  delegate = [(GKNicknameController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(GKNicknameController *)self delegate];
    [delegate2 nicknameDidResignFirstResponder];
  }
}

- (void)loadSuggestedNicknames:(id)nicknames
{
  nicknamesCopy = nicknames;
  proxyForLocalPlayer = [MEMORY[0x277D0C010] proxyForLocalPlayer];
  profileServicePrivate = [proxyForLocalPlayer profileServicePrivate];
  minNicknameLength = [(GKNicknameController *)self minNicknameLength];
  maxNicknameLength = [(GKNicknameController *)self maxNicknameLength];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __47__GKNicknameController_loadSuggestedNicknames___block_invoke;
  v10[3] = &unk_27966A868;
  v10[4] = self;
  v11 = nicknamesCopy;
  v9 = nicknamesCopy;
  [profileServicePrivate getNicknameSuggestions:3 minSuggestionLength:minNicknameLength maxSuggestionLength:maxNicknameLength handler:v10];
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

- (void)setShouldUseSuggestedNicknameOnDefaultNickname:(BOOL)nickname
{
  nicknameCopy = nickname;
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
    local = [v8 local];
    internal = [local internal];
    isDefaultNickname = [internal isDefaultNickname];
    nickname = [(GKNicknameController *)self nickname];
    *buf = 67109632;
    v19 = nicknameCopy;
    v20 = 1024;
    v21 = isDefaultNickname;
    v22 = 1024;
    v23 = nickname != 0;
    _os_log_impl(&dword_24DE53000, v9, OS_LOG_TYPE_INFO, "GKNicknameController.setShouldUseSuggestedNicknameOnDefaultNickname: %d, is player using default nickname? %d, is nickname text field set? %d", buf, 0x14u);
  }

  self->_shouldUseSuggestedNicknameOnDefaultNickname = nicknameCopy;
  if (nicknameCopy)
  {
    local2 = [MEMORY[0x277D0C138] local];
    internal2 = [local2 internal];
    isDefaultNickname2 = [internal2 isDefaultNickname];

    if (isDefaultNickname2)
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