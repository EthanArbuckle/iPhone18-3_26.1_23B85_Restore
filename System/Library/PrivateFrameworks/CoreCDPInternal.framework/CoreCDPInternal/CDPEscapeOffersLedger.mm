@interface CDPEscapeOffersLedger
- (BOOL)canOfferRPD;
- (CDPEscapeOffersLedger)init;
- (CDPEscapeOffersLedger)initWithExpectedEscapeOffers:(unint64_t)a3 recoveryFlowContext:(id)a4 deviceHasPasscode:(BOOL)a5 probationChecker:(id)a6 deviceIsVM:(BOOL)a7 isICDPEnabled:(BOOL)a8;
- (NSString)description;
- (void)insert:(unint64_t)a3;
@end

@implementation CDPEscapeOffersLedger

- (NSString)description
{
  v2 = self;
  CDPEscapeOffersLedger.description.getter();

  v3 = sub_245193874();

  return v3;
}

- (BOOL)canOfferRPD
{
  v2 = self;
  v3 = sub_24517E41C();

  return v3 & 1;
}

- (CDPEscapeOffersLedger)initWithExpectedEscapeOffers:(unint64_t)a3 recoveryFlowContext:(id)a4 deviceHasPasscode:(BOOL)a5 probationChecker:(id)a6 deviceIsVM:(BOOL)a7 isICDPEnabled:(BOOL)a8
{
  v13 = a4;
  swift_unknownObjectRetain();
  return sub_24517F1F0(a3, v13, a5, a6, a7, a8);
}

- (void)insert:(unint64_t)a3
{
  v4 = self;
  sub_24517F4A8(a3);
}

- (CDPEscapeOffersLedger)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end