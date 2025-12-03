@interface CKTriple
- (BOOL)isEqual:(id)equal;
- (CKTriple)initWithSubject:(id)subject predicate:(id)predicate object:(id)object weight:(int64_t)weight;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKTriple

- (int64_t)hash
{
  selfCopy = self;
  v3 = sub_1C86AF3A4();

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
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

  v6 = sub_1C86AF488(v8);

  sub_1C86885EC(v8);
  return v6 & 1;
}

- (CKTriple)initWithSubject:(id)subject predicate:(id)predicate object:(id)object weight:(int64_t)weight
{
  v7 = sub_1C86F8EFC();
  v9 = v8;
  v10 = sub_1C86F8EFC();
  v12 = v11;
  v13 = sub_1C86F8EFC();
  return CKTriple.init(subject:predicate:object:weight:)(v7, v9, v10, v12, v13, v14, weight);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1C86AF9B4(coderCopy);
}

@end