@interface MUISearchInstantAnswer
- (id)initFlightAnswerWithCSInstantAnswer:(id)a3;
- (id)initHotelAnswerWithCSInstantAnswer:(id)a3;
- (void)initSearchInstantAnswer:(void *)a1;
- (void)initWithInstantAnswerKind:(void *)a1;
- (void)initWithMessageId:(void *)a3 groupId:(void *)a4 fallbackGroupId:(uint64_t)a5 instantAnswerKind:;
@end

@implementation MUISearchInstantAnswer

- (id)initFlightAnswerWithCSInstantAnswer:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MUISearchInstantAnswer;
  v5 = [(MUISearchInstantAnswer *)&v9 init];
  v6 = v5;
  if (v5 && ([(MUISearchInstantAnswer(Flight) *)v5 initFlightAnswerWithCSInstantAnswer:v4, &v10]& 1) != 0)
  {
    v7 = v10;
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

- (id)initHotelAnswerWithCSInstantAnswer:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MUISearchInstantAnswer;
  v5 = [(MUISearchInstantAnswer *)&v9 init];
  v6 = v5;
  if (v5 && ([(MUISearchInstantAnswer(Hotel) *)v5 initHotelAnswerWithCSInstantAnswer:v4, &v10]& 1) != 0)
  {
    v7 = v10;
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

- (void)initSearchInstantAnswer:(void *)a1
{
  v9 = a2;
  if (a1)
  {
    v3 = NSSelectorFromString(&cfstr_Messageid.isa);
    v4 = NSSelectorFromString(&cfstr_Groupid.isa);
    v5 = NSSelectorFromString(&cfstr_Fallbackgroupi.isa);
    if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      v6 = [v9 v3];
      v7 = [v9 v4];
      v8 = [v9 v5];
      -[MUISearchInstantAnswer initWithMessageId:groupId:fallbackGroupId:instantAnswerKind:](a1, v6, v7, v8, [v9 instantAnswersKind]);
    }

    else
    {
      -[MUISearchInstantAnswer initWithInstantAnswerKind:](a1, [v9 instantAnswersKind]);
    }
  }
}

- (void)initWithMessageId:(void *)a3 groupId:(void *)a4 fallbackGroupId:(uint64_t)a5 instantAnswerKind:
{
  v18 = a2;
  v10 = a3;
  v11 = a4;
  if (a1)
  {
    objc_storeStrong((a1 + 240), a2);
    objc_storeStrong((a1 + 248), a3);
    objc_storeStrong((a1 + 256), a4);
    *(a1 + 232) = a5;
    v12 = [MEMORY[0x277CCAD78] UUID];
    v13 = [v12 UUIDString];
    v14 = *(a1 + 264);
    *(a1 + 264) = v13;

    v15 = [MEMORY[0x277CCAD78] UUID];
    v16 = [v15 UUIDString];
    v17 = *(a1 + 272);
    *(a1 + 272) = v16;
  }
}

- (void)initWithInstantAnswerKind:(void *)a1
{
  if (a1)
  {
    a1[29] = a2;
    v3 = [MEMORY[0x277CCAD78] UUID];
    v4 = [v3 UUIDString];
    v5 = a1[33];
    a1[33] = v4;

    v8 = [MEMORY[0x277CCAD78] UUID];
    v6 = [v8 UUIDString];
    v7 = a1[34];
    a1[34] = v6;
  }
}

@end