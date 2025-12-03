@interface DOCTipsManager
- (_TtC26DocumentManagerExecutables14DOCTipsManager)init;
- (void)dealloc;
- (void)initiateShareFlow;
- (void)messageComposeViewController:(id)controller didFinishWithResult:(int64_t)result;
@end

@implementation DOCTipsManager

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCTipsManager_sourceObserver);
  selfCopy = self;
  [v2 stopObservingSources];
  v4 = *(&selfCopy->super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCTipsManager_sharingFlowTask);
  if (v4)
  {

    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    MEMORY[0x24C1FB330](v4, MEMORY[0x277D84F78] + 8, v5, MEMORY[0x277D84950]);
  }

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for DOCTipsManager(0);
  [(DOCTipsManager *)&v6 dealloc];
}

- (void)messageComposeViewController:(id)controller didFinishWithResult:(int64_t)result
{
  controllerCopy = controller;
  selfCopy = self;
  DOCTipsManager.messageComposeViewController(_:didFinishWith:)(controllerCopy, result);
}

- (void)initiateShareFlow
{
  selfCopy = self;
  DOCTipsManager.initiateShareFlow()();
}

- (_TtC26DocumentManagerExecutables14DOCTipsManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end