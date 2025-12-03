@interface ICASAudioTranscriptInteractionData
- (ICASAudioTranscriptInteractionData)initWithWasTranscriptViewed:(id)viewed wasSummaryViewed:(id)summaryViewed transcriptInteractionSummaryArray:(id)array;
- (id)toDict;
@end

@implementation ICASAudioTranscriptInteractionData

- (ICASAudioTranscriptInteractionData)initWithWasTranscriptViewed:(id)viewed wasSummaryViewed:(id)summaryViewed transcriptInteractionSummaryArray:(id)array
{
  viewedCopy = viewed;
  summaryViewedCopy = summaryViewed;
  arrayCopy = array;
  v15.receiver = self;
  v15.super_class = ICASAudioTranscriptInteractionData;
  v12 = [(ICASAudioTranscriptInteractionData *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_wasTranscriptViewed, viewed);
    objc_storeStrong(&v13->_wasSummaryViewed, summaryViewed);
    objc_storeStrong(&v13->_transcriptInteractionSummaryArray, array);
  }

  return v13;
}

- (id)toDict
{
  v16[3] = *MEMORY[0x277D85DE8];
  v15[0] = @"wasTranscriptViewed";
  wasTranscriptViewed = [(ICASAudioTranscriptInteractionData *)self wasTranscriptViewed];
  if (wasTranscriptViewed)
  {
    wasTranscriptViewed2 = [(ICASAudioTranscriptInteractionData *)self wasTranscriptViewed];
  }

  else
  {
    wasTranscriptViewed2 = objc_opt_new();
  }

  v5 = wasTranscriptViewed2;
  v16[0] = wasTranscriptViewed2;
  v15[1] = @"wasSummaryViewed";
  wasSummaryViewed = [(ICASAudioTranscriptInteractionData *)self wasSummaryViewed];
  if (wasSummaryViewed)
  {
    wasSummaryViewed2 = [(ICASAudioTranscriptInteractionData *)self wasSummaryViewed];
  }

  else
  {
    wasSummaryViewed2 = objc_opt_new();
  }

  v8 = wasSummaryViewed2;
  v16[1] = wasSummaryViewed2;
  v15[2] = @"transcriptInteractionSummaryArray";
  transcriptInteractionSummaryArray = [(ICASAudioTranscriptInteractionData *)self transcriptInteractionSummaryArray];
  if (transcriptInteractionSummaryArray)
  {
    transcriptInteractionSummaryArray2 = [(ICASAudioTranscriptInteractionData *)self transcriptInteractionSummaryArray];
  }

  else
  {
    transcriptInteractionSummaryArray2 = objc_opt_new();
  }

  v11 = transcriptInteractionSummaryArray2;
  v16[2] = transcriptInteractionSummaryArray2;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end