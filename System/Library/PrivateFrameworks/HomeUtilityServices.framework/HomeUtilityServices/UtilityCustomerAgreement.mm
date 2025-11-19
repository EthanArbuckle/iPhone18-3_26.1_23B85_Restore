@interface UtilityCustomerAgreement
- (NSArray)programs;
- (NSString)alternateSupplier;
- (_TtC19HomeUtilityServices24UtilityCustomerAgreement)init;
- (_TtC19HomeUtilityServices24UtilityCustomerAgreement)initWithCustomerAgreementID:(id)a3 accountID:(id)a4 meters:(id)a5 programs:(id)a6 alternateSupplier:(id)a7;
- (void)setAlternateSupplier:(id)a3;
@end

@implementation UtilityCustomerAgreement

- (NSArray)programs
{
  if (*(self + OBJC_IVAR____TtC19HomeUtilityServices24UtilityCustomerAgreement_programs))
  {
    type metadata accessor for UtilityProgram();

    v2 = sub_20E009414();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (NSString)alternateSupplier
{
  v2 = (self + OBJC_IVAR____TtC19HomeUtilityServices24UtilityCustomerAgreement_alternateSupplier);
  swift_beginAccess();
  if (v2[1])
  {
    v3 = *v2;

    v4 = sub_20E0091C4();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setAlternateSupplier:(id)a3
{
  if (a3)
  {
    v4 = sub_20E0091D4();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC19HomeUtilityServices24UtilityCustomerAgreement_alternateSupplier);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v4;
  v7[1] = v6;
}

- (_TtC19HomeUtilityServices24UtilityCustomerAgreement)initWithCustomerAgreementID:(id)a3 accountID:(id)a4 meters:(id)a5 programs:(id)a6 alternateSupplier:(id)a7
{
  v10 = sub_20E0091D4();
  v12 = v11;
  v13 = sub_20E0091D4();
  v15 = v14;
  type metadata accessor for UtilityMeter();
  v16 = sub_20E009424();
  if (a6)
  {
    type metadata accessor for UtilityProgram();
    a6 = sub_20E009424();
  }

  if (a7)
  {
    a7 = sub_20E0091D4();
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = (self + OBJC_IVAR____TtC19HomeUtilityServices24UtilityCustomerAgreement_alternateSupplier);
  *v19 = 0;
  v19[1] = 0;
  v20 = (self + OBJC_IVAR____TtC19HomeUtilityServices24UtilityCustomerAgreement_customerAgreementID);
  *v20 = v10;
  v20[1] = v12;
  v21 = (self + OBJC_IVAR____TtC19HomeUtilityServices24UtilityCustomerAgreement_accountID);
  *v21 = v13;
  v21[1] = v15;
  *(self + OBJC_IVAR____TtC19HomeUtilityServices24UtilityCustomerAgreement_programs) = a6;
  *(self + OBJC_IVAR____TtC19HomeUtilityServices24UtilityCustomerAgreement_meters) = v16;
  swift_beginAccess();
  *v19 = a7;
  v19[1] = v18;
  v23.receiver = self;
  v23.super_class = type metadata accessor for UtilityCustomerAgreement();
  return [(UtilityCustomerAgreement *)&v23 init];
}

- (_TtC19HomeUtilityServices24UtilityCustomerAgreement)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end