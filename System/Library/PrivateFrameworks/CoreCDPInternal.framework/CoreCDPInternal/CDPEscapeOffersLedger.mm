@interface CDPEscapeOffersLedger
- (BOOL)canOfferRPD;
- (CDPEscapeOffersLedger)init;
- (CDPEscapeOffersLedger)initWithExpectedEscapeOffers:(unint64_t)offers recoveryFlowContext:(id)context deviceHasPasscode:(BOOL)passcode probationChecker:(id)checker deviceIsVM:(BOOL)m isICDPEnabled:(BOOL)enabled;
- (NSString)description;
- (void)insert:(unint64_t)insert;
@end

@implementation CDPEscapeOffersLedger

- (NSString)description
{
  selfCopy = self;
  CDPEscapeOffersLedger.description.getter();

  v3 = sub_245193874();

  return v3;
}

- (BOOL)canOfferRPD
{
  selfCopy = self;
  v3 = sub_24517E41C();

  return v3 & 1;
}

- (CDPEscapeOffersLedger)initWithExpectedEscapeOffers:(unint64_t)offers recoveryFlowContext:(id)context deviceHasPasscode:(BOOL)passcode probationChecker:(id)checker deviceIsVM:(BOOL)m isICDPEnabled:(BOOL)enabled
{
  contextCopy = context;
  swift_unknownObjectRetain();
  return sub_24517F1F0(offers, contextCopy, passcode, checker, m, enabled);
}

- (void)insert:(unint64_t)insert
{
  selfCopy = self;
  sub_24517F4A8(insert);
}

- (CDPEscapeOffersLedger)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end