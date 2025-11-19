@interface ICASAudioTranscriptInteractionData
- (ICASAudioTranscriptInteractionData)initWithWasTranscriptViewed:(id)a3 wasSummaryViewed:(id)a4 transcriptInteractionSummaryArray:(id)a5;
- (id)toDict;
@end

@implementation ICASAudioTranscriptInteractionData

- (ICASAudioTranscriptInteractionData)initWithWasTranscriptViewed:(id)a3 wasSummaryViewed:(id)a4 transcriptInteractionSummaryArray:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = ICASAudioTranscriptInteractionData;
  v12 = [(ICASAudioTranscriptInteractionData *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_wasTranscriptViewed, a3);
    objc_storeStrong(&v13->_wasSummaryViewed, a4);
    objc_storeStrong(&v13->_transcriptInteractionSummaryArray, a5);
  }

  return v13;
}

- (id)toDict
{
  v16[3] = *MEMORY[0x277D85DE8];
  v15[0] = @"wasTranscriptViewed";
  v3 = [(ICASAudioTranscriptInteractionData *)self wasTranscriptViewed];
  if (v3)
  {
    v4 = [(ICASAudioTranscriptInteractionData *)self wasTranscriptViewed];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;
  v16[0] = v4;
  v15[1] = @"wasSummaryViewed";
  v6 = [(ICASAudioTranscriptInteractionData *)self wasSummaryViewed];
  if (v6)
  {
    v7 = [(ICASAudioTranscriptInteractionData *)self wasSummaryViewed];
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;
  v16[1] = v7;
  v15[2] = @"transcriptInteractionSummaryArray";
  v9 = [(ICASAudioTranscriptInteractionData *)self transcriptInteractionSummaryArray];
  if (v9)
  {
    v10 = [(ICASAudioTranscriptInteractionData *)self transcriptInteractionSummaryArray];
  }

  else
  {
    v10 = objc_opt_new();
  }

  v11 = v10;
  v16[2] = v10;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end