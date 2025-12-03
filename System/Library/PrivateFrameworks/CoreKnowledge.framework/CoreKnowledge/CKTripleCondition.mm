@interface CKTripleCondition
+ (id)havingPredicate:(id)predicate matchType:(int64_t)type error:(id *)error;
+ (id)havingSubject:(id)subject andAbject:(id)abject;
- (BOOL)evaluateOn:(id)on;
- (CKTripleCondition)initWithSubject:(id)subject predicate:(id)predicate object:(id)object;
- (id)and:(id)and;
- (id)or:(id)or;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKTripleCondition

- (CKTripleCondition)initWithSubject:(id)subject predicate:(id)predicate object:(id)object
{
  predicateCopy = predicate;
  if (subject)
  {
    v7 = sub_1C86F8EFC();
    v9 = v8;
    if (predicateCopy)
    {
      goto LABEL_3;
    }

LABEL_6:
    v11 = 0;
    if (object)
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
  if (!predicate)
  {
    goto LABEL_6;
  }

LABEL_3:
  predicateCopy = sub_1C86F8EFC();
  v11 = v10;
  if (!object)
  {
    goto LABEL_7;
  }

LABEL_4:
  v12 = sub_1C86F8EFC();
  v14 = v13;
LABEL_8:
  CKTripleCondition.init(subject:predicate:object:)(v7, v9, predicateCopy, v11, v12, v14);
  return result;
}

- (id)and:(id)and
{
  andCopy = and;
  selfCopy = self;
  v6 = sub_1C86BC15C();

  return v6;
}

- (id)or:(id)or
{
  orCopy = or;
  selfCopy = self;
  v6 = sub_1C86BC268();

  return v6;
}

- (BOOL)evaluateOn:(id)on
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v6 = sub_1C86BC374(on);
  swift_unknownObjectRelease();

  return v6 & 1;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1C86BC708(coderCopy);
}

+ (id)havingPredicate:(id)predicate matchType:(int64_t)type error:(id *)error
{
  v6 = sub_1C86F8EFC();
  static CKTripleCondition.havingPredicate(_:matchType:)(v6, v7, type);
  v9 = v8;

  return v9;
}

+ (id)havingSubject:(id)subject andAbject:(id)abject
{
  subjectCopy = subject;
  abjectCopy = abject;
  static CKTripleCondition.havingSubject(_:andAbject:)(subjectCopy);
  v8 = v7;

  return v8;
}

@end