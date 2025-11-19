@interface CIDVUIProofingDisplayMessage
- (CIDVUIProofingDisplayMessage)init;
- (CIDVUIProofingDisplayMessage)initWithTitle:(id)a3 message:(id)a4 actions:(id)a5;
- (NSArray)actions;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CIDVUIProofingDisplayMessage

- (NSArray)actions
{
  type metadata accessor for CIDVUIProofingDisplayMessageAction(self);

  v2 = sub_245910C34();

  return v2;
}

- (CIDVUIProofingDisplayMessage)initWithTitle:(id)a3 message:(id)a4 actions:(id)a5
{
  v6 = sub_245910A04();
  v8 = v7;
  v9 = sub_245910A04();
  v11 = v10;
  type metadata accessor for CIDVUIProofingDisplayMessageAction(v9);
  v12 = sub_245910C44();
  v13 = (self + OBJC_IVAR___CIDVUIProofingDisplayMessage_title);
  *v13 = v6;
  v13[1] = v8;
  v14 = (self + OBJC_IVAR___CIDVUIProofingDisplayMessage_message);
  *v14 = v9;
  v14[1] = v11;
  *(self + OBJC_IVAR___CIDVUIProofingDisplayMessage_actions) = v12;
  v16.receiver = self;
  v16.super_class = CIDVUIProofingDisplayMessage;
  return [(CIDVUIProofingDisplayMessage *)&v16 init];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2458C727C(v4);
}

- (CIDVUIProofingDisplayMessage)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end