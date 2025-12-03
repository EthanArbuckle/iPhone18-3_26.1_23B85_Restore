@interface LAPreboard
+ (id)sharedInstance;
- (BOOL)isRequired;
- (BOOL)launchPreboardWithError:(id *)error;
- (LAPreboard)initWithController:(id)controller;
- (NSArray)items;
- (NSString)confirmationTitle;
- (NSString)iconSystemName;
- (NSString)passcodeTitle;
- (id)actionTitleWithHomeButton:(BOOL)button;
- (int64_t)useCase;
- (void)enableCurrentUseCaseWithPasscode:(id)passcode completion:(id)completion;
- (void)setEnvironmentVariableWithPasscode:(id)passcode completion:(id)completion;
@end

@implementation LAPreboard

- (LAPreboard)initWithController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = LAPreboard;
  v6 = [(LAPreboard *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_controller, controller);
  }

  return v7;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[LAPreboard sharedInstance];
  }

  v3 = sharedInstance__preboard;

  return v3;
}

uint64_t __28__LAPreboard_sharedInstance__block_invoke()
{
  sharedInstance__preboard = [[LAPreboard alloc] initWithDefaults];

  return MEMORY[0x2821F96F8]();
}

- (NSString)iconSystemName
{
  selfCopy = self;
  useCase = [(LAPreboard *)selfCopy useCase];

  if (useCase == 3)
  {
    v4 = 0xE400000000000000;
    v5 = 1918985575;
    goto LABEL_5;
  }

  if (useCase == 4)
  {
    v4 = 0x80000002560E4E70;
    v5 = 0xD000000000000034;
LABEL_5:
    v6 = MEMORY[0x259C59FB0](v5, v4);

    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (NSArray)items
{
  selfCopy = self;
  LAPreboard.items.getter();

  type metadata accessor for LAPreboardItem();
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (id)actionTitleWithHomeButton:(BOOL)button
{
  buttonCopy = button;
  selfCopy = self;
  [(LAPreboard *)selfCopy useCase];
  if (buttonCopy)
  {
    v5 = static LocalizedStrings.pressHomeToContinue.getter();
  }

  else
  {
    v5 = static LocalizedStrings.swipeUpToContinue.getter();
  }

  v7 = v5;
  v8 = v6;

  v9 = MEMORY[0x259C59FB0](v7, v8);

  return v9;
}

- (NSString)confirmationTitle
{
  [(LAPreboard *)self useCase];

  return 0;
}

- (NSString)passcodeTitle
{
  selfCopy = self;
  [(LAPreboard *)selfCopy useCase];
  v3 = static LocalizedStrings.enterPasscode.getter();
  v5 = v4;

  v6 = MEMORY[0x259C59FB0](v3, v5);

  return v6;
}

- (BOOL)isRequired
{
  selfCopy = self;
  v3 = [-[LAPreboard controller](selfCopy controller)];

  swift_unknownObjectRelease();
  return v3;
}

- (int64_t)useCase
{
  selfCopy = self;
  v3 = [-[LAPreboard controller](selfCopy controller)];
  swift_unknownObjectRelease();

  return v3;
}

- (BOOL)launchPreboardWithError:(id *)error
{
  selfCopy = self;
  LAPreboard.launch()();

  if (v5)
  {
    if (error)
    {
      v6 = _convertErrorToNSError(_:)();

      v7 = v6;
      *error = v6;
    }

    else
    {
    }
  }

  return v5 == 0;
}

- (void)setEnvironmentVariableWithPasscode:(id)passcode completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v11[4] = thunk for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> ()partial apply;
  v11[5] = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  v11[3] = &block_descriptor_26;
  v8 = _Block_copy(v11);
  passcodeCopy = passcode;
  selfCopy = self;

  [(LAPreboard *)selfCopy enableCurrentUseCaseWithPasscode:passcodeCopy completion:v8];

  _Block_release(v8);
}

- (void)enableCurrentUseCaseWithPasscode:(id)passcode completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  passcodeCopy = passcode;
  selfCopy = self;
  controller = [(LAPreboard *)selfCopy controller];
  v12[4] = thunk for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> ()partial apply;
  v12[5] = v7;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  v12[3] = &block_descriptor_19;
  v11 = _Block_copy(v12);

  [controller enableCurrentUseCaseWithPasscode:passcodeCopy completion:v11];

  _Block_release(v11);
  swift_unknownObjectRelease();
}

@end