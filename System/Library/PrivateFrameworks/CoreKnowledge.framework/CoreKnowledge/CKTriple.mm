@interface CKTriple
- (BOOL)isEqual:(id)a3;
- (CKTriple)initWithSubject:(id)a3 predicate:(id)a4 object:(id)a5 weight:(int64_t)a6;
- (int64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKTriple

- (int64_t)hash
{
  v2 = self;
  v3 = sub_1C86AF3A4();

  return v3;
}

- (BOOL)isEqual:(id)a3
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

  v6 = sub_1C86AF488(v8);

  sub_1C86885EC(v8);
  return v6 & 1;
}

- (CKTriple)initWithSubject:(id)a3 predicate:(id)a4 object:(id)a5 weight:(int64_t)a6
{
  v7 = sub_1C86F8EFC();
  v9 = v8;
  v10 = sub_1C86F8EFC();
  v12 = v11;
  v13 = sub_1C86F8EFC();
  return CKTriple.init(subject:predicate:object:weight:)(v7, v9, v10, v12, v13, v14, a6);
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1C86AF9B4(v4);
}

@end