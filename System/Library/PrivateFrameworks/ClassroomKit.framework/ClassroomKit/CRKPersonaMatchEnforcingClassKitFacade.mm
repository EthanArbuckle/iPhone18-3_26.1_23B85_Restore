@interface CRKPersonaMatchEnforcingClassKitFacade
- (BOOL)isPersonaEligible;
- (CRKPersonaMatchEnforcingClassKitFacade)initWithClassKitFacade:(id)a3;
- (int64_t)nextAccountState;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
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

- (CRKPersonaMatchEnforcingClassKitFacade)initWithClassKitFacade:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CRKPersonaMatchEnforcingClassKitFacade;
  v5 = [(CRKClassKitFacadeDecoratorBase *)&v9 initWithClassKitFacade:v4];
  if (v5)
  {
    v6 = [[CRKClassKitCurrentUserProvider alloc] initWithClassKitFacade:v4];
    currentUserProvider = v5->_currentUserProvider;
    v5->_currentUserProvider = v6;

    [(CRKPersonaMatchEnforcingClassKitFacade *)v5 startObserving];
    [(CRKPersonaMatchEnforcingClassKitFacade *)v5 updateAccountState];
  }

  return v5;
}

- (void)startObserving
{
  v3 = [(CRKPersonaMatchEnforcingClassKitFacade *)self currentUserProvider];
  [v3 addObserver:self forKeyPath:@"currentUser" options:0 context:@"CRKPersonaMatchEnforcingClassKitFacadeObservationContext"];

  v4 = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  [v4 addObserver:self forKeyPath:@"accountState" options:0 context:@"CRKPersonaMatchEnforcingClassKitFacadeObservationContext"];
}

- (void)stopObserving
{
  v3 = [(CRKPersonaMatchEnforcingClassKitFacade *)self currentUserProvider];
  [v3 removeObserver:self forKeyPath:@"currentUser" context:@"CRKPersonaMatchEnforcingClassKitFacadeObservationContext"];

  v4 = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  [v4 removeObserver:self forKeyPath:@"accountState" context:@"CRKPersonaMatchEnforcingClassKitFacadeObservationContext"];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a6 == @"CRKPersonaMatchEnforcingClassKitFacadeObservationContext")
  {

    [(CRKPersonaMatchEnforcingClassKitFacade *)self updateAccountState:a3];
  }

  else
  {
    v9 = v6;
    v10 = v7;
    v8.receiver = self;
    v8.super_class = CRKPersonaMatchEnforcingClassKitFacade;
    [(CRKPersonaMatchEnforcingClassKitFacade *)&v8 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (void)updateAccountState
{
  v3 = [(CRKPersonaMatchEnforcingClassKitFacade *)self nextAccountState];
  if ([(CRKPersonaMatchEnforcingClassKitFacade *)self modifiedAccountState]!= v3)
  {

    [(CRKPersonaMatchEnforcingClassKitFacade *)self setModifiedAccountState:v3];
  }
}

- (int64_t)nextAccountState
{
  v3 = [(CRKClassKitFacadeDecoratorBase *)self underlyingClassKitFacade];
  v4 = [v3 accountState];

  if (v4 == 2 && ![(CRKPersonaMatchEnforcingClassKitFacade *)self isPersonaEligible])
  {
    return 0;
  }

  return v4;
}

- (BOOL)isPersonaEligible
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [(CRKPersonaMatchEnforcingClassKitFacade *)self currentUserProvider];
  v3 = [v2 currentUser];

  if (v3 && [v3 requiresPersonaMatch] && (objc_msgSend(v3, "hasMatchingPersona") & 1) == 0)
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