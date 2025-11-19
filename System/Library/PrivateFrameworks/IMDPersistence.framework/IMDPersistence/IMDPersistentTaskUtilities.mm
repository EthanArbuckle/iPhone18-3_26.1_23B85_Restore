@interface IMDPersistentTaskUtilities
+ (BOOL)reasonUpdateRequiresUserInfoMergeForFlag:(unint64_t)a3 reason1:(int64_t)a4 reason2:(int64_t)a5;
+ (NSArray)allFlags;
+ (id)mergeUserInfosForFlag:(unint64_t)a3 userInfo1:(id)a4 userInfo2:(id)a5;
+ (id)nameForFlag:(unint64_t)a3;
+ (id)nameForReason:(int64_t)a3 inFlag:(unint64_t)a4;
+ (id)stringForFlag:(unint64_t)a3 reason:(int64_t)a4;
+ (int64_t)comparePTaskReasonsForFlag:(unint64_t)a3 reason1:(int64_t)a4 reason2:(int64_t)a5;
+ (int64_t)priorityForFlag:(unint64_t)a3;
+ (unint64_t)laneForFlag:(unint64_t)a3 reason:(int64_t)a4;
- (IMDPersistentTaskUtilities)init;
@end

@implementation IMDPersistentTaskUtilities

+ (unint64_t)laneForFlag:(unint64_t)a3 reason:(int64_t)a4
{
  v6 = *(*sub_1B7C40CA8(a3) + 144);

  v7 = v6(a3, a4);

  return v7;
}

+ (int64_t)priorityForFlag:(unint64_t)a3
{
  if (qword_1EBA50DE8 != -1)
  {
    v5 = a3;
    result = swift_once();
    a3 = v5;
  }

  v3 = qword_1EBA5DA00;
  if (*(qword_1EBA5DA00 + 16))
  {
    result = sub_1B7C40320(a3);
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

+ (BOOL)reasonUpdateRequiresUserInfoMergeForFlag:(unint64_t)a3 reason1:(int64_t)a4 reason2:(int64_t)a5
{
  v7 = *(*sub_1B7C40CA8(a3) + 176);

  LOBYTE(a5) = v7(a4, a5);

  return a5 & 1;
}

+ (id)mergeUserInfosForFlag:(unint64_t)a3 userInfo1:(id)a4 userInfo2:(id)a5
{
  v5 = a5;
  if (a4)
  {
    v7 = sub_1B7CFE990();
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = 0;
  if (a5)
  {
LABEL_3:
    v5 = sub_1B7CFE990();
  }

LABEL_4:
  v8 = *(*sub_1B7C40CA8(a3) + 160);

  v9 = v8(v7, v5);

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

+ (int64_t)comparePTaskReasonsForFlag:(unint64_t)a3 reason1:(int64_t)a4 reason2:(int64_t)a5
{
  v8 = *(*sub_1B7C40CA8(a3) + 120);

  v9 = v8(a4);

  v10 = *(*sub_1B7C40CA8(a3) + 120);

  v11 = v10(a5);

  if (v11 < v9)
  {
    return -1;
  }

  else
  {
    return v9 != v11;
  }
}

+ (id)nameForReason:(int64_t)a3 inFlag:(unint64_t)a4
{
  v5 = *(*sub_1B7C40CA8(a4) + 128);

  v5(a3);

  v6 = sub_1B7CFEA30();

  return v6;
}

+ (id)nameForFlag:(unint64_t)a3
{
  if (qword_1EDBE3010 != -1)
  {
    v9 = a3;
    result = swift_once();
    a3 = v9;
  }

  v3 = qword_1EDBE79C8;
  if (!*(qword_1EDBE79C8 + 16))
  {
    __break(1u);
    goto LABEL_9;
  }

  result = sub_1B7C40320(a3);
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

+ (id)stringForFlag:(unint64_t)a3 reason:(int64_t)a4
{
  sub_1B7C4126C(a3, a4);
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