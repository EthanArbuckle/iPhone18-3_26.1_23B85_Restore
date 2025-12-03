@interface CKGenericCondition
- (BOOL)evaluateOn:(id)on;
- (NSPredicate)predicate;
- (id)and:(id)and;
- (id)or:(id)or;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKGenericCondition

- (NSPredicate)predicate
{
  selfCopy = self;
  v3 = sub_1C86B8C88();

  return v3;
}

- (id)and:(id)and
{
  andCopy = and;
  selfCopy = self;
  v6 = sub_1C86B9250(andCopy);

  return v6;
}

- (id)or:(id)or
{
  orCopy = or;
  selfCopy = self;
  v6 = sub_1C86B9360(orCopy);

  return v6;
}

- (BOOL)evaluateOn:(id)on
{
  if (on)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1C86F929C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_1C86B96F4(v8);

  sub_1C86A5148(v8, &qword_1EC2AD810);
  return v6 & 1;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1C86B9BC4(coderCopy);
}

@end