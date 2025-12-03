@interface CRKPersonaMatchEnforcingClassKitFacade
- (BOOL)isPersonaEligible;
- (CRKPersonaMatchEnforcingClassKitFacade)initWithClassKitFacade:(id)facade;
- (int64_t)nextAccountState;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)startObserving;
- (void)stopObserving;
- (void)updateAccountState;
@end

@implementation CRKPersonaMatchEnforcingClassKitFacade

- (void)dealloc
{
  [(CRKPersonaMatchEnforcingClassKitFacade *)self stopObserving];
  v3.receiver = self;
  v3.super_class = CRKPersonaMatchEnforcingClassKitFacade;
  [(CRKPersonaMatchEnforcingClassKitFacade *)&v3 dealloc];
}

- (CRKPersonaMatchEnforcingClassKitFacade)initWithClassKitFacade:(id)facade
{
  facadeCopy = facade;
  v9.receiver = self;
  v9.super_class = CRKPersonaMatchEnforcingClassKitFacade;
  v5 = [(CRKClassKitFacadeDecoratorBase *)&v9 initWithClassKitFacade:facadeCopy];
  if (v5)
  {
    v6 = [[CRKClassKitCurrentUserProvider alloc] initWithClassKitFacade:facadeCopy];
    currentUserProvider = v5->_currentUserProvider;
    v5->_currentUserProvider = v6;

    [(CRKPersonaMatchEnforcingClassKitFacade *)v5 startObserving];
    [(CRKPersonaMatchEnforcingClassKitFacade *)v5 updateAccountState];
  }

  return v5;
}

- (void)startObserving
{
  currentUserProvider = [(CRKPersonaMatchEnforcingClassKitFacade *)self currentUserProvider];
  [currentUserProvider addObserver:self forKeyPath:@"currentUser" options:0 context:@"CRKPersonaMatchEnforcingClassKitFacadeObservationContext"];

  underlyingClassKitFacade = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  [underlyingClassKitFacade addObserver:self forKeyPath:@"accountState" options:0 context:@"CRKPersonaMatchEnforcingClassKitFacadeObservationContext"];
}

- (void)stopObserving
{
  currentUserProvider = [(CRKPersonaMatchEnforcingClassKitFacade *)self currentUserProvider];
  [currentUserProvider removeObserver:self forKeyPath:@"currentUser" context:@"CRKPersonaMatchEnforcingClassKitFacadeObservationContext"];

  underlyingClassKitFacade = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  [underlyingClassKitFacade removeObserver:self forKeyPath:@"accountState" context:@"CRKPersonaMatchEnforcingClassKitFacadeObservationContext"];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (context == @"CRKPersonaMatchEnforcingClassKitFacadeObservationContext")
  {

    [(CRKPersonaMatchEnforcingClassKitFacade *)self updateAccountState:path];
  }

  else
  {
    v9 = v6;
    v10 = v7;
    v8.receiver = self;
    v8.super_class = CRKPersonaMatchEnforcingClassKitFacade;
    [(CRKPersonaMatchEnforcingClassKitFacade *)&v8 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (void)updateAccountState
{
  nextAccountState = [(CRKPersonaMatchEnforcingClassKitFacade *)self nextAccountState];
  if ([(CRKPersonaMatchEnforcingClassKitFacade *)self modifiedAccountState]!= nextAccountState)
  {

    [(CRKPersonaMatchEnforcingClassKitFacade *)self setModifiedAccountState:nextAccountState];
  }
}

- (int64_t)nextAccountState
{
  underlyingClassKitFacade = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  accountState = [underlyingClassKitFacade accountState];

  if (accountState == 2 && ![(CRKPersonaMatchEnforcingClassKitFacade *)self isPersonaEligible])
  {
    return 0;
  }

  return accountState;
}

- (BOOL)isPersonaEligible
{
  v10 = *MEMORY[0x277D85DE8];
  currentUserProvider = [(CRKPersonaMatchEnforcingClassKitFacade *)self currentUserProvider];
  currentUser = [currentUserProvider currentUser];

  if (currentUser && [currentUser requiresPersonaMatch] && (objc_msgSend(currentUser, "hasMatchingPersona") & 1) == 0)
  {
    if (_CRKLogASM_onceToken_29 != -1)
    {
      [CRKPersonaMatchEnforcingClassKitFacade isPersonaEligible];
    }

    v6 = _CRKLogASM_logObj_29;
    v4 = 0;
    if (os_log_type_enabled(_CRKLogASM_logObj_29, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v8 = 138543362;
      v9 = objc_opt_class();
      _os_log_impl(&dword_243550000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: persona is ineligible because it doesn't match the ClassKit persona and a match is required", &v8, 0xCu);

      v4 = 0;
    }
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

@end