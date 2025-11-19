@interface ICASTranscriptInteractionItemData
- (ICASTranscriptInteractionItemData)initWithTranscriptInteractionTarget:(id)a3 transcriptActionType:(id)a4;
- (id)toDict;
@end

@implementation ICASTranscriptInteractionItemData

- (ICASTranscriptInteractionItemData)initWithTranscriptInteractionTarget:(id)a3 transcriptActionType:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ICASTranscriptInteractionItemData;
  v9 = [(ICASTranscriptInteractionItemData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_transcriptInteractionTarget, a3);
    objc_storeStrong(&v10->_transcriptActionType, a4);
  }

  return v10;
}

- (id)toDict
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = @"transcriptInteractionTarget";
  v3 = [(ICASTranscriptInteractionItemData *)self transcriptInteractionTarget];
  if (v3)
  {
    v4 = [(ICASTranscriptInteractionItemData *)self transcriptInteractionTarget];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;
  v12[1] = @"transcriptActionType";
  v13[0] = v4;
  v6 = [(ICASTranscriptInteractionItemData *)self transcriptActionType];
  if (v6)
  {
    v7 = [(ICASTranscriptInteractionItemData *)self transcriptActionType];
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;
  v13[1] = v7;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end