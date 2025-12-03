@interface UtilityServiceAddress
- (_TtC19HomeUtilityServices21UtilityServiceAddress)init;
- (_TtC19HomeUtilityServices21UtilityServiceAddress)initWithAddressLine1:(id)line1 addressLine2:(id)line2 addressLine3:(id)line3 city:(id)city state:(id)state postalCode:(id)code country:(id)country;
- (id)data;
@end

@implementation UtilityServiceAddress

- (_TtC19HomeUtilityServices21UtilityServiceAddress)initWithAddressLine1:(id)line1 addressLine2:(id)line2 addressLine3:(id)line3 city:(id)city state:(id)state postalCode:(id)code country:(id)country
{
  v12 = sub_20E0091D4();
  v38 = v13;
  v39 = v12;
  if (!line2)
  {
    v37 = 0;
    v15 = 0;
    if (line3)
    {
      goto LABEL_3;
    }

LABEL_5:
    v16 = 0;
    goto LABEL_6;
  }

  v37 = sub_20E0091D4();
  v15 = v14;
  if (!line3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v16 = sub_20E0091D4();
  line3 = v17;
LABEL_6:
  v18 = sub_20E0091D4();
  v20 = v19;
  v21 = sub_20E0091D4();
  v23 = v22;
  v24 = sub_20E0091D4();
  v26 = v25;
  v27 = sub_20E0091D4();
  v28 = (self + OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_addressLine1);
  *v28 = v39;
  v28[1] = v38;
  v29 = (self + OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_addressLine2);
  *v29 = v37;
  v29[1] = v15;
  v30 = (self + OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_addressLine3);
  *v30 = v16;
  v30[1] = line3;
  v31 = (self + OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_city);
  *v31 = v18;
  v31[1] = v20;
  v32 = (self + OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_state);
  *v32 = v21;
  v32[1] = v23;
  v33 = (self + OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_postalCode);
  *v33 = v24;
  v33[1] = v26;
  v34 = (self + OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_country);
  *v34 = v27;
  v34[1] = v35;
  v40.receiver = self;
  v40.super_class = type metadata accessor for UtilityServiceAddress();
  return [(UtilityServiceAddress *)&v40 init];
}

- (_TtC19HomeUtilityServices21UtilityServiceAddress)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)data
{
  selfCopy = self;
  v3 = sub_20DFBA434();
  v5 = v4;

  if (v5 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v7 = sub_20E008B64();
    sub_20DF64DE8(v3, v5);
    v6 = v7;
  }

  return v6;
}

@end