@interface CAFUIPunchThroughController
- (BOOL)displayIdentifier:(id)identifier hasPunchThroughWithIdentifier:(id)withIdentifier;
- (BOOL)displayIdentifier:(id)identifier isDisplayingPunchThroughWithIdentifier:(id)withIdentifier;
- (BOOL)hasPunchThroughWithIdentifier:(id)identifier;
- (CAFUIPunchThroughController)initWithSession:(id)session;
- (id)punchThroughIdentifierOnDisplay:(id)display;
- (void)addObserver:(id)observer;
- (void)punchThroughControllerDidDismiss:(id)dismiss;
- (void)removeControllersWithIdentifier:(id)identifier;
- (void)removeObserver:(id)observer;
- (void)requestActivationOfPunchThroughWithIdentifier:(id)identifier displayIdentifier:(id)displayIdentifier completion:(id)completion;
- (void)requestDismissalOfPunchThroughWithIdentifier:(id)identifier displayIdentifier:(id)displayIdentifier completion:(id)completion;
@end

@implementation CAFUIPunchThroughController

- (CAFUIPunchThroughController)initWithSession:(id)session
{
  sessionCopy = session;
  v22.receiver = self;
  v22.super_class = CAFUIPunchThroughController;
  v6 = [(CAFUIPunchThroughController *)&v22 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_session, session);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    activePunchThroughs = v7->_activePunchThroughs;
    v7->_activePunchThroughs = dictionary;

    v10 = objc_alloc(MEMORY[0x277CF89C0]);
    v11 = [v10 initWithProtocol:&unk_2854E3270 callbackQueue:MEMORY[0x277D85CD0]];
    observers = v7->_observers;
    v7->_observers = v11;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    configuration = [sessionCopy configuration];
    displays = [configuration displays];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __47__CAFUIPunchThroughController_initWithSession___block_invoke;
    v20[3] = &unk_278D49628;
    v21 = dictionary2;
    v16 = dictionary2;
    [displays bs_each:v20];

    v17 = [v16 copy];
    availablePunchThroughIdentifiers = v7->_availablePunchThroughIdentifiers;
    v7->_availablePunchThroughIdentifiers = v17;
  }

  return v7;
}

void __47__CAFUIPunchThroughController_initWithSession___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 punchThroughIdentifiers];
  v8 = [v4 allObjects];

  if (v8)
  {
    v5 = v8;
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  v6 = *(a1 + 32);
  v7 = [v3 identifier];

  [v6 setObject:v5 forKeyedSubscript:v7];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = [(CAFUIPunchThroughController *)self observers];
  [observers addObserver:observerCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observers = [(CAFUIPunchThroughController *)self observers];
  [observers removeObserver:observerCopy];
}

- (void)requestActivationOfPunchThroughWithIdentifier:(id)identifier displayIdentifier:(id)displayIdentifier completion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  displayIdentifierCopy = displayIdentifier;
  completionCopy = completion;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if ([(CAFUIPunchThroughController *)self displayIdentifier:displayIdentifierCopy hasPunchThroughWithIdentifier:identifierCopy])
  {
    v11 = [objc_alloc(MEMORY[0x277CF9328]) initWithPunchThroughIdentifier:identifierCopy];
    [v11 setDelegate:self];
    activePunchThroughs = [(CAFUIPunchThroughController *)self activePunchThroughs];
    [activePunchThroughs setObject:v11 forKeyedSubscript:displayIdentifierCopy];

    v13 = CAFUIStatusLogForCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v25 = identifierCopy;
      v26 = 2114;
      v27 = displayIdentifierCopy;
      _os_log_impl(&dword_24234D000, v13, OS_LOG_TYPE_DEFAULT, "Requesting presentation of punch-through %{public}@ on display %{public}@", buf, 0x16u);
    }

    v14 = +[CAFUIStatusViewController sharedInstance];
    [v14 appendStringWithFormat:@"Requesting presentation of punch-through %{public}@ on display %{public}@", identifierCopy, displayIdentifierCopy];

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __106__CAFUIPunchThroughController_requestActivationOfPunchThroughWithIdentifier_displayIdentifier_completion___block_invoke_119;
    v19[3] = &unk_278D496A0;
    v20 = identifierCopy;
    v21 = completionCopy;
    v15 = completionCopy;
    [v11 requestPresentationWithCompletion:v19];
  }

  else
  {
    v16 = CAFUIStatusLogForCategory(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v25 = identifierCopy;
      v26 = 2114;
      v27 = displayIdentifierCopy;
      _os_log_impl(&dword_24234D000, v16, OS_LOG_TYPE_DEFAULT, "Requested presentation of punch-through %{public}@, which does not exist on display %{public}@.", buf, 0x16u);
    }

    v17 = +[CAFUIStatusViewController sharedInstance];
    [v17 appendStringWithFormat:@"Requested presentation of punch-through %{public}@, which does not exist on display %{public}@.", identifierCopy, displayIdentifierCopy];

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __106__CAFUIPunchThroughController_requestActivationOfPunchThroughWithIdentifier_displayIdentifier_completion___block_invoke;
    block[3] = &unk_278D49650;
    v23 = completionCopy;
    v11 = completionCopy;
    v18 = MEMORY[0x277D85CD0];
    dispatch_async(MEMORY[0x277D85CD0], block);

    v15 = v23;
  }
}

void __106__CAFUIPunchThroughController_requestActivationOfPunchThroughWithIdentifier_displayIdentifier_completion___block_invoke_119(uint64_t a1, char a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = CAFUIStatusLogForCategory(0);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      *buf = 138543362;
      v14 = v6;
      _os_log_impl(&dword_24234D000, v4, OS_LOG_TYPE_DEFAULT, "Presentation of punch-through %{public}@ was requested successfully.", buf, 0xCu);
    }

    v7 = @"Presentation of punch-through %{public}@ was requested successfully.";
  }

  else
  {
    if (v5)
    {
      v8 = *(a1 + 32);
      *buf = 138543362;
      v14 = v8;
      _os_log_impl(&dword_24234D000, v4, OS_LOG_TYPE_DEFAULT, "Presentation of punch-through %{public}@ was unsuccessful!", buf, 0xCu);
    }

    v7 = @"Presentation of punch-through %{public}@ was unsuccessful!";
  }

  v9 = +[CAFUIStatusViewController sharedInstance];
  [v9 appendStringWithFormat:v7, *(a1 + 32)];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __106__CAFUIPunchThroughController_requestActivationOfPunchThroughWithIdentifier_displayIdentifier_completion___block_invoke_126;
  block[3] = &unk_278D49678;
  v11 = *(a1 + 40);
  v12 = a2;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)requestDismissalOfPunchThroughWithIdentifier:(id)identifier displayIdentifier:(id)displayIdentifier completion:(id)completion
{
  v43 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  displayIdentifierCopy = displayIdentifier;
  completionCopy = completion;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  activePunchThroughs = [(CAFUIPunchThroughController *)self activePunchThroughs];
  v12 = [activePunchThroughs objectForKeyedSubscript:displayIdentifierCopy];

  if (!v12)
  {
    v21 = CAFUIStatusLogForCategory(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v38 = identifierCopy;
      _os_log_impl(&dword_24234D000, v21, OS_LOG_TYPE_DEFAULT, "Requested dismissal of punch-through %{public}@, but it isn't visible.", buf, 0xCu);
    }

    v22 = +[CAFUIStatusViewController sharedInstance];
    [v22 appendStringWithFormat:@"Requested dismissal of punch-through %{public}@, but it isn't visible.", identifierCopy];

    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __105__CAFUIPunchThroughController_requestDismissalOfPunchThroughWithIdentifier_displayIdentifier_completion___block_invoke;
    v35[3] = &unk_278D49650;
    v18 = &v36;
    v36 = completionCopy;
    v20 = MEMORY[0x277D85CD0];
    v23 = v35;
    goto LABEL_12;
  }

  punchThroughIdentifier = [v12 punchThroughIdentifier];
  v14 = [punchThroughIdentifier isEqualToString:identifierCopy];

  v15 = CAFUIStatusLogForCategory(0);
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if ((v14 & 1) == 0)
  {
    if (v16)
    {
      punchThroughIdentifier2 = [v12 punchThroughIdentifier];
      *buf = 138543874;
      v38 = identifierCopy;
      v39 = 2114;
      v40 = displayIdentifierCopy;
      v41 = 2114;
      v42 = punchThroughIdentifier2;
      _os_log_impl(&dword_24234D000, v15, OS_LOG_TYPE_DEFAULT, "Requested dismissal of punch-through %{public}@ on display %{public}@, but that display is showing a different punch-through: %{public}@", buf, 0x20u);
    }

    v25 = +[CAFUIStatusViewController sharedInstance];
    punchThroughIdentifier3 = [v12 punchThroughIdentifier];
    [v25 appendStringWithFormat:@"Requested dismissal of punch-through %{public}@ on display %{public}@, but that display is showing a different punch-through: %{public}@", identifierCopy, displayIdentifierCopy, punchThroughIdentifier3];

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __105__CAFUIPunchThroughController_requestDismissalOfPunchThroughWithIdentifier_displayIdentifier_completion___block_invoke_134;
    block[3] = &unk_278D49650;
    v18 = &v34;
    v34 = completionCopy;
    v20 = MEMORY[0x277D85CD0];
    v23 = block;
LABEL_12:
    dispatch_async(v20, v23);
    goto LABEL_13;
  }

  if (v16)
  {
    *buf = 138543618;
    v38 = identifierCopy;
    v39 = 2114;
    v40 = displayIdentifierCopy;
    _os_log_impl(&dword_24234D000, v15, OS_LOG_TYPE_DEFAULT, "Requesting dismissal of punch-through %{public}@ on display %{public}@", buf, 0x16u);
  }

  v17 = +[CAFUIStatusViewController sharedInstance];
  [v17 appendStringWithFormat:@"Requesting dismissal of punch-through %{public}@ on display %{public}@", identifierCopy, displayIdentifierCopy];

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __105__CAFUIPunchThroughController_requestDismissalOfPunchThroughWithIdentifier_displayIdentifier_completion___block_invoke_138;
  v27[3] = &unk_278D496F0;
  v18 = &v28;
  v28 = identifierCopy;
  v19 = v12;
  v29 = v19;
  selfCopy = self;
  v31 = displayIdentifierCopy;
  v32 = completionCopy;
  [v19 requestDismissalWithCompletion:v27];

  v20 = v29;
LABEL_13:
}

void __105__CAFUIPunchThroughController_requestDismissalOfPunchThroughWithIdentifier_displayIdentifier_completion___block_invoke_138(uint64_t a1, char a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = CAFUIStatusLogForCategory(0);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      *buf = 138543362;
      v20 = v6;
      _os_log_impl(&dword_24234D000, v4, OS_LOG_TYPE_DEFAULT, "Dismissal of punch-through %{public}@ was requested successfully.", buf, 0xCu);
    }

    v7 = @"Dismissal of punch-through %{public}@ was requested successfully.";
  }

  else
  {
    if (v5)
    {
      v8 = *(a1 + 32);
      *buf = 138543362;
      v20 = v8;
      _os_log_impl(&dword_24234D000, v4, OS_LOG_TYPE_DEFAULT, "Dismissal of punch-through %{public}@ was unsuccessful!", buf, 0xCu);
    }

    v7 = @"Dismissal of punch-through %{public}@ was unsuccessful!";
  }

  v9 = +[CAFUIStatusViewController sharedInstance];
  [v9 appendStringWithFormat:v7, *(a1 + 32)];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __105__CAFUIPunchThroughController_requestDismissalOfPunchThroughWithIdentifier_displayIdentifier_completion___block_invoke_145;
  block[3] = &unk_278D496C8;
  v10 = *(a1 + 40);
  v13 = *(a1 + 48);
  v11 = v13.i64[1];
  v12.i64[0] = *(a1 + 32);
  v12.i64[1] = v10;
  v15 = vextq_s8(v12, v13, 8uLL);
  v16 = vextq_s8(v13, v12, 8uLL);
  v17 = *(a1 + 64);
  v18 = a2;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __105__CAFUIPunchThroughController_requestDismissalOfPunchThroughWithIdentifier_displayIdentifier_completion___block_invoke_145(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  v2 = [*(a1 + 40) activePunchThroughs];
  [v2 removeObjectForKey:*(a1 + 48)];

  v3 = [*(a1 + 40) observers];
  [v3 punchThroughController:*(a1 + 40) didDismissPunchThroughWithIdentifier:*(a1 + 56)];

  v4 = *(*(a1 + 64) + 16);

  return v4();
}

- (BOOL)hasPunchThroughWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  session = [(CAFUIPunchThroughController *)self session];
  configuration = [session configuration];
  displays = [configuration displays];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__CAFUIPunchThroughController_hasPunchThroughWithIdentifier___block_invoke;
  v12[3] = &unk_278D49718;
  v13 = identifierCopy;
  v8 = identifierCopy;
  v9 = [displays bs_firstObjectPassingTest:v12];
  v10 = v9 != 0;

  return v10;
}

- (BOOL)displayIdentifier:(id)identifier hasPunchThroughWithIdentifier:(id)withIdentifier
{
  identifierCopy = identifier;
  withIdentifierCopy = withIdentifier;
  session = [(CAFUIPunchThroughController *)self session];
  configuration = [session configuration];
  displays = [configuration displays];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __79__CAFUIPunchThroughController_displayIdentifier_hasPunchThroughWithIdentifier___block_invoke;
  v14[3] = &unk_278D49718;
  v15 = identifierCopy;
  v11 = identifierCopy;
  v12 = [displays bs_firstObjectPassingTest:v14];

  LOBYTE(session) = [v12 hasPunchThroughWithIdentifier:withIdentifierCopy];
  return session;
}

uint64_t __79__CAFUIPunchThroughController_displayIdentifier_hasPunchThroughWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (BOOL)displayIdentifier:(id)identifier isDisplayingPunchThroughWithIdentifier:(id)withIdentifier
{
  withIdentifierCopy = withIdentifier;
  identifierCopy = identifier;
  activePunchThroughs = [(CAFUIPunchThroughController *)self activePunchThroughs];
  v9 = [activePunchThroughs objectForKeyedSubscript:identifierCopy];

  punchThroughIdentifier = [v9 punchThroughIdentifier];
  LOBYTE(activePunchThroughs) = [punchThroughIdentifier isEqualToString:withIdentifierCopy];

  return activePunchThroughs;
}

- (id)punchThroughIdentifierOnDisplay:(id)display
{
  displayCopy = display;
  activePunchThroughs = [(CAFUIPunchThroughController *)self activePunchThroughs];
  v6 = [activePunchThroughs objectForKeyedSubscript:displayCopy];

  punchThroughIdentifier = [v6 punchThroughIdentifier];

  return punchThroughIdentifier;
}

- (void)removeControllersWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  activePunchThroughs = [(CAFUIPunchThroughController *)self activePunchThroughs];
  allKeys = [activePunchThroughs allKeys];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__CAFUIPunchThroughController_removeControllersWithIdentifier___block_invoke;
  v8[3] = &unk_278D49740;
  v8[4] = self;
  v9 = identifierCopy;
  v7 = identifierCopy;
  [allKeys bs_each:v8];
}

void __63__CAFUIPunchThroughController_removeControllersWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) activePunchThroughs];
  v5 = [v4 objectForKeyedSubscript:v3];

  v6 = [v5 punchThroughIdentifier];
  v7 = [v6 isEqualToString:*(a1 + 40)];

  if (v7)
  {
    v8 = CAFUIStatusLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      *buf = 138543618;
      v14 = v9;
      v15 = 2114;
      v16 = v3;
      _os_log_impl(&dword_24234D000, v8, OS_LOG_TYPE_DEFAULT, "Invalidating punch-through %{public}@ on display %{public}@", buf, 0x16u);
    }

    v10 = +[CAFUIStatusViewController sharedInstance];
    [v10 appendStringWithFormat:@"Invalidating punch-through %{public}@ on display %{public}@", *(a1 + 40), v3];

    [v5 invalidate];
    v11 = [*(a1 + 32) activePunchThroughs];
    [v11 removeObjectForKey:v3];

    v12 = [*(a1 + 32) observers];
    [v12 punchThroughController:*(a1 + 32) didDismissPunchThroughWithIdentifier:*(a1 + 40)];
  }
}

- (void)punchThroughControllerDidDismiss:(id)dismiss
{
  v14 = *MEMORY[0x277D85DE8];
  dismissCopy = dismiss;
  v5 = CAFUIStatusLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    punchThroughIdentifier = [dismissCopy punchThroughIdentifier];
    *buf = 138543362;
    v13 = punchThroughIdentifier;
    _os_log_impl(&dword_24234D000, v5, OS_LOG_TYPE_DEFAULT, "Punch-through with identifier %{public}@ did dismiss.", buf, 0xCu);
  }

  v7 = +[CAFUIStatusViewController sharedInstance];
  punchThroughIdentifier2 = [dismissCopy punchThroughIdentifier];
  [v7 appendStringWithFormat:@"Punch-through with identifier %{public}@ did dismiss.", punchThroughIdentifier2];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__CAFUIPunchThroughController_punchThroughControllerDidDismiss___block_invoke;
  block[3] = &unk_278D49768;
  block[4] = self;
  v11 = dismissCopy;
  v9 = dismissCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __64__CAFUIPunchThroughController_punchThroughControllerDidDismiss___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) punchThroughIdentifier];
  [v1 removeControllersWithIdentifier:v2];
}

@end