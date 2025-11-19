@interface HFRoomSuggestion
+ (id)suggestionWithName:(id)a3 priority:(int64_t)a4;
+ (id)suggestionWithName:(id)a3 priority:(int64_t)a4 aliases:(id)a5;
@end

@implementation HFRoomSuggestion

+ (id)suggestionWithName:(id)a3 priority:(int64_t)a4
{
  v6 = MEMORY[0x277CBEB98];
  v7 = a3;
  v8 = [v6 set];
  v9 = [a1 suggestionWithName:v7 priority:a4 aliases:v8];

  return v9;
}

+ (id)suggestionWithName:(id)a3 priority:(int64_t)a4 aliases:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = objc_opt_new();
  v10 = [v8 copy];

  v11 = v9[1];
  v9[1] = v10;

  v9[3] = a4;
  if (v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = [MEMORY[0x277CBEB98] set];
  }

  v13 = v9[2];
  v9[2] = v12;

  return v9;
}

uint64_t __38__HFRoomSuggestion_priorityComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a2;
  v6 = [v4 numberWithInteger:{objc_msgSend(a3, "priority")}];
  v7 = MEMORY[0x277CCABB0];
  v8 = [v5 priority];

  v9 = [v7 numberWithInteger:v8];
  v10 = [v6 compare:v9];

  return v10;
}

@end