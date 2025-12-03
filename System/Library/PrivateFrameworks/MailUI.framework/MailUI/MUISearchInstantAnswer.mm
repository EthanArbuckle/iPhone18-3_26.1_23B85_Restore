@interface MUISearchInstantAnswer
- (id)initFlightAnswerWithCSInstantAnswer:(id)answer;
- (id)initHotelAnswerWithCSInstantAnswer:(id)answer;
- (void)initSearchInstantAnswer:(void *)answer;
- (void)initWithInstantAnswerKind:(void *)kind;
- (void)initWithMessageId:(void *)id groupId:(void *)groupId fallbackGroupId:(uint64_t)fallbackGroupId instantAnswerKind:;
@end

@implementation MUISearchInstantAnswer

- (id)initFlightAnswerWithCSInstantAnswer:(id)answer
{
  answerCopy = answer;
  v9.receiver = self;
  v9.super_class = MUISearchInstantAnswer;
  v5 = [(MUISearchInstantAnswer *)&v9 init];
  v6 = v5;
  if (v5 && ([(MUISearchInstantAnswer(Flight) *)v5 initFlightAnswerWithCSInstantAnswer:answerCopy, &v10]& 1) != 0)
  {
    v7 = v10;
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

- (id)initHotelAnswerWithCSInstantAnswer:(id)answer
{
  answerCopy = answer;
  v9.receiver = self;
  v9.super_class = MUISearchInstantAnswer;
  v5 = [(MUISearchInstantAnswer *)&v9 init];
  v6 = v5;
  if (v5 && ([(MUISearchInstantAnswer(Hotel) *)v5 initHotelAnswerWithCSInstantAnswer:answerCopy, &v10]& 1) != 0)
  {
    v7 = v10;
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

- (void)initSearchInstantAnswer:(void *)answer
{
  v9 = a2;
  if (answer)
  {
    v3 = NSSelectorFromString(&cfstr_Messageid.isa);
    v4 = NSSelectorFromString(&cfstr_Groupid.isa);
    v5 = NSSelectorFromString(&cfstr_Fallbackgroupi.isa);
    if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      v6 = [v9 v3];
      v7 = [v9 v4];
      v8 = [v9 v5];
      -[MUISearchInstantAnswer initWithMessageId:groupId:fallbackGroupId:instantAnswerKind:](answer, v6, v7, v8, [v9 instantAnswersKind]);
    }

    else
    {
      -[MUISearchInstantAnswer initWithInstantAnswerKind:](answer, [v9 instantAnswersKind]);
    }
  }
}

- (void)initWithMessageId:(void *)id groupId:(void *)groupId fallbackGroupId:(uint64_t)fallbackGroupId instantAnswerKind:
{
  v18 = a2;
  idCopy = id;
  groupIdCopy = groupId;
  if (self)
  {
    objc_storeStrong((self + 240), a2);
    objc_storeStrong((self + 248), id);
    objc_storeStrong((self + 256), groupId);
    *(self + 232) = fallbackGroupId;
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v14 = *(self + 264);
    *(self + 264) = uUIDString;

    uUID2 = [MEMORY[0x277CCAD78] UUID];
    uUIDString2 = [uUID2 UUIDString];
    v17 = *(self + 272);
    *(self + 272) = uUIDString2;
  }
}

- (void)initWithInstantAnswerKind:(void *)kind
{
  if (kind)
  {
    kind[29] = a2;
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v5 = kind[33];
    kind[33] = uUIDString;

    uUID2 = [MEMORY[0x277CCAD78] UUID];
    uUIDString2 = [uUID2 UUIDString];
    v7 = kind[34];
    kind[34] = uUIDString2;
  }
}

@end