@interface CKGenericCondition
- (BOOL)evaluateOn:(id)a3;
- (NSPredicate)predicate;
- (id)and:(id)a3;
- (id)or:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKGenericCondition

- (NSPredicate)predicate
{
  v2 = self;
  v3 = sub_1C86B8C88();

  return v3;
}

- (id)and:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1C86B9250(v4);

  return v6;
}

- (id)or:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1C86B9360(v4);

  return v6;
}

- (BOOL)evaluateOn:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1C86F929C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_1C86B96F4(v8);

  sub_1C86A5148(v8, &qword_1EC2AD810);
  return v6 & 1;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1C86B9BC4(v4);
}

@end