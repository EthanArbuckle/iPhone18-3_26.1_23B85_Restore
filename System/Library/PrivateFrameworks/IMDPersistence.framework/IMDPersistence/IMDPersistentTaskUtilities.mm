@interface IMDPersistentTaskUtilities
+ (BOOL)reasonUpdateRequiresUserInfoMergeForFlag:(unint64_t)flag reason1:(int64_t)reason1 reason2:(int64_t)reason2;
+ (NSArray)allFlags;
+ (id)mergeUserInfosForFlag:(unint64_t)flag userInfo1:(id)info1 userInfo2:(id)info2;
+ (id)nameForFlag:(unint64_t)flag;
+ (id)nameForReason:(int64_t)reason inFlag:(unint64_t)flag;
+ (id)stringForFlag:(unint64_t)flag reason:(int64_t)reason;
+ (int64_t)comparePTaskReasonsForFlag:(unint64_t)flag reason1:(int64_t)reason1 reason2:(int64_t)reason2;
+ (int64_t)priorityForFlag:(unint64_t)flag;
+ (unint64_t)laneForFlag:(unint64_t)flag reason:(int64_t)reason;
- (IMDPersistentTaskUtilities)init;
@end

@implementation IMDPersistentTaskUtilities

+ (unint64_t)laneForFlag:(unint64_t)flag reason:(int64_t)reason
{
  v6 = *(*sub_1B7C40CA8(flag) + 144);

  v7 = v6(flag, reason);

  return v7;
}

+ (int64_t)priorityForFlag:(unint64_t)flag
{
  if (qword_1EBA50DE8 != -1)
  {
    flagCopy = flag;
    result = swift_once();
    flag = flagCopy;
  }

  v3 = qword_1EBA5DA00;
  if (*(qword_1EBA5DA00 + 16))
  {
    result = sub_1B7C40320(flag);
    if (v4)
    {
      return *(*(v3 + 56) + 8 * result);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

+ (BOOL)reasonUpdateRequiresUserInfoMergeForFlag:(unint64_t)flag reason1:(int64_t)reason1 reason2:(int64_t)reason2
{
  v7 = *(*sub_1B7C40CA8(flag) + 176);

  LOBYTE(reason2) = v7(reason1, reason2);

  return reason2 & 1;
}

+ (id)mergeUserInfosForFlag:(unint64_t)flag userInfo1:(id)info1 userInfo2:(id)info2
{
  info2Copy = info2;
  if (info1)
  {
    v7 = sub_1B7CFE990();
    if (!info2Copy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = 0;
  if (info2)
  {
LABEL_3:
    info2Copy = sub_1B7CFE990();
  }

LABEL_4:
  v8 = *(*sub_1B7C40CA8(flag) + 160);

  v9 = v8(v7, info2Copy);

  if (v9)
  {
    v10 = sub_1B7CFE980();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (int64_t)comparePTaskReasonsForFlag:(unint64_t)flag reason1:(int64_t)reason1 reason2:(int64_t)reason2
{
  v8 = *(*sub_1B7C40CA8(flag) + 120);

  v9 = v8(reason1);

  v10 = *(*sub_1B7C40CA8(flag) + 120);

  v11 = v10(reason2);

  if (v11 < v9)
  {
    return -1;
  }

  else
  {
    return v9 != v11;
  }
}

+ (id)nameForReason:(int64_t)reason inFlag:(unint64_t)flag
{
  v5 = *(*sub_1B7C40CA8(flag) + 128);

  v5(reason);

  v6 = sub_1B7CFEA30();

  return v6;
}

+ (id)nameForFlag:(unint64_t)flag
{
  if (qword_1EDBE3010 != -1)
  {
    flagCopy = flag;
    result = swift_once();
    flag = flagCopy;
  }

  v3 = qword_1EDBE79C8;
  if (!*(qword_1EDBE79C8 + 16))
  {
    __break(1u);
    goto LABEL_9;
  }

  result = sub_1B7C40320(flag);
  if ((v4 & 1) == 0)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v5 = *(v3 + 56) + 48 * result;
  v6 = *(v5 + 8);
  v7 = *(v5 + 16);

  v8 = sub_1B7CFEA30();

  return v8;
}

+ (id)stringForFlag:(unint64_t)flag reason:(int64_t)reason
{
  sub_1B7C4126C(flag, reason);
  v4 = sub_1B7CFEA30();

  return v4;
}

+ (NSArray)allFlags
{
  sub_1B7C41390();
  sub_1B7AEE088(0, &unk_1EDBE59B0, 0x1E696AD98);
  v2 = sub_1B7CFECC0();

  return v2;
}

- (IMDPersistentTaskUtilities)init
{
  v3.receiver = self;
  v3.super_class = IMDPersistentTaskUtilities;
  return [(IMDPersistentTaskUtilities *)&v3 init];
}

@end