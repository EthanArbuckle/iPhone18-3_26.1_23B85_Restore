@interface ICASMentionAddData
- (ICASMentionAddData)initWithIsExistingMention:(id)mention mentionAddApproach:(id)approach;
- (id)toDict;
@end

@implementation ICASMentionAddData

- (ICASMentionAddData)initWithIsExistingMention:(id)mention mentionAddApproach:(id)approach
{
  mentionCopy = mention;
  approachCopy = approach;
  v12.receiver = self;
  v12.super_class = ICASMentionAddData;
  v9 = [(ICASMentionAddData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_isExistingMention, mention);
    objc_storeStrong(&v10->_mentionAddApproach, approach);
  }

  return v10;
}

- (id)toDict
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = @"isExistingMention";
  isExistingMention = [(ICASMentionAddData *)self isExistingMention];
  if (isExistingMention)
  {
    isExistingMention2 = [(ICASMentionAddData *)self isExistingMention];
  }

  else
  {
    isExistingMention2 = objc_opt_new();
  }

  v5 = isExistingMention2;
  v12[1] = @"mentionAddApproach";
  v13[0] = isExistingMention2;
  mentionAddApproach = [(ICASMentionAddData *)self mentionAddApproach];
  if (mentionAddApproach)
  {
    mentionAddApproach2 = [(ICASMentionAddData *)self mentionAddApproach];
  }

  else
  {
    mentionAddApproach2 = objc_opt_new();
  }

  v8 = mentionAddApproach2;
  v13[1] = mentionAddApproach2;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end