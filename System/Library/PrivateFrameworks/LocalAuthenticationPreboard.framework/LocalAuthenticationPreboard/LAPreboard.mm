@interface LAPreboard
+ (id)sharedInstance;
- (BOOL)isRequired;
- (BOOL)launchPreboardWithError:(id *)a3;
- (LAPreboard)initWithController:(id)a3;
- (NSArray)items;
- (NSString)confirmationTitle;
- (NSString)iconSystemName;
- (NSString)passcodeTitle;
- (id)actionTitleWithHomeButton:(BOOL)a3;
- (int64_t)useCase;
- (void)enableCurrentUseCaseWithPasscode:(id)a3 completion:(id)a4;
- (void)setEnvironmentVariableWithPasscode:(id)a3 completion:(id)a4;
@end

@implementation LAPreboard

- (LAPreboard)initWithController:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = LAPreboard;
  v6 = [(LAPreboard *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_controller, a3);
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
  v2 = self;
  v3 = [(LAPreboard *)v2 useCase];

  if (v3 == 3)
  {
    v4 = 0xE400000000000000;
    v5 = 1918985575;
    goto LABEL_5;
  }

  if (v3 == 4)
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
  v2 = self;
  LAPreboard.items.getter();

  type metadata accessor for LAPreboardItem();
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (id)actionTitleWithHomeButton:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  [(LAPreboard *)v4 useCase];
  if (v3)
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
  v2 = self;
  [(LAPreboard *)v2 useCase];
  v3 = static LocalizedStrings.enterPasscode.getter();
  v5 = v4;

  v6 = MEMORY[0x259C59FB0](v3, v5);

  return v6;
}

- (BOOL)isRequired
{
  v2 = self;
  v3 = [-[LAPreboard controller](v2 controller)];

  swift_unknownObjectRelease();
  return v3;
}

- (int64_t)useCase
{
  v2 = self;
  v3 = [-[LAPreboard controller](v2 controller)];
  swift_unknownObjectRelease();

  return v3;
}

- (BOOL)launchPreboardWithError:(id *)a3
{
  v4 = self;
  LAPreboard.launch()();

  if (v5)
  {
    if (a3)
    {
      v6 = _convertErrorToNSError(_:)();

      v7 = v6;
      *a3 = v6;
    }

    else
    {
    }
  }

  return v5 == 0;
}

- (void)setEnvironmentVariableWithPasscode:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v11[4] = thunk for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> ()partial apply;
  v11[5] = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  v11[3] = &block_descriptor_26;
  v8 = _Block_copy(v11);
  v9 = a3;
  v10 = self;

  [(LAPreboard *)v10 enableCurrentUseCaseWithPasscode:v9 completion:v8];

  _Block_release(v8);
}

- (void)enableCurrentUseCaseWithPasscode:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  v10 = [(LAPreboard *)v9 controller];
  v12[4] = thunk for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> ()partial apply;
  v12[5] = v7;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  v12[3] = &block_descriptor_19;
  v11 = _Block_copy(v12);

  [v10 enableCurrentUseCaseWithPasscode:v8 completion:v11];

  _Block_release(v11);
  swift_unknownObjectRelease();
}

@end