@interface HFRoomSuggestion
+ (id)suggestionWithName:(id)name priority:(int64_t)priority;
+ (id)suggestionWithName:(id)name priority:(int64_t)priority aliases:(id)aliases;
@end

@implementation HFRoomSuggestion

+ (id)suggestionWithName:(id)name priority:(int64_t)priority
{
  v6 = MEMORY[0x277CBEB98];
  nameCopy = name;
  v8 = [v6 set];
  v9 = [self suggestionWithName:nameCopy priority:priority aliases:v8];

  return v9;
}

+ (id)suggestionWithName:(id)name priority:(int64_t)priority aliases:(id)aliases
{
  aliasesCopy = aliases;
  nameCopy = name;
  v9 = objc_opt_new();
  v10 = [nameCopy copy];

  v11 = v9[1];
  v9[1] = v10;

  v9[3] = priority;
  if (aliasesCopy)
  {
    v12 = aliasesCopy;
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