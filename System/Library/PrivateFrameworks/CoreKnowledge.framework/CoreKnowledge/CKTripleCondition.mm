@interface CKTripleCondition
+ (id)havingPredicate:(id)a3 matchType:(int64_t)a4 error:(id *)a5;
+ (id)havingSubject:(id)a3 andAbject:(id)a4;
- (BOOL)evaluateOn:(id)a3;
- (CKTripleCondition)initWithSubject:(id)a3 predicate:(id)a4 object:(id)a5;
- (id)and:(id)a3;
- (id)or:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKTripleCondition

- (CKTripleCondition)initWithSubject:(id)a3 predicate:(id)a4 object:(id)a5
{
  v6 = a4;
  if (a3)
  {
    v7 = sub_1C86F8EFC();
    v9 = v8;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_6:
    v11 = 0;
    if (a5)
    {
      goto LABEL_4;
    }

LABEL_7:
    v12 = 0;
    v14 = 0;
    goto LABEL_8;
  }

  v7 = 0;
  v9 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v6 = sub_1C86F8EFC();
  v11 = v10;
  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_4:
  v12 = sub_1C86F8EFC();
  v14 = v13;
LABEL_8:
  CKTripleCondition.init(subject:predicate:object:)(v7, v9, v6, v11, v12, v14);
  return result;
}

- (id)and:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1C86BC15C();

  return v6;
}

- (id)or:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1C86BC268();

  return v6;
}

- (BOOL)evaluateOn:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  v6 = sub_1C86BC374(a3);
  swift_unknownObjectRelease();

  return v6 & 1;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1C86BC708(v4);
}

+ (id)havingPredicate:(id)a3 matchType:(int64_t)a4 error:(id *)a5
{
  v6 = sub_1C86F8EFC();
  static CKTripleCondition.havingPredicate(_:matchType:)(v6, v7, a4);
  v9 = v8;

  return v9;
}

+ (id)havingSubject:(id)a3 andAbject:(id)a4
{
  v5 = a3;
  v6 = a4;
  static CKTripleCondition.havingSubject(_:andAbject:)(v5);
  v8 = v7;

  return v8;
}

@end