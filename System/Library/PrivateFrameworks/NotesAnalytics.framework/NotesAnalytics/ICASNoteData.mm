@interface ICASNoteData
- (ICASNoteData)initWithNoteID:(id)d noteType:(id)type isScrapPaper:(id)paper isHandwritingAutoRefineEnabled:(id)enabled isAudioTranscriptEnabled:(id)transcriptEnabled isAudioSummaryEnabled:(id)summaryEnabled;
- (id)toDict;
@end

@implementation ICASNoteData

- (ICASNoteData)initWithNoteID:(id)d noteType:(id)type isScrapPaper:(id)paper isHandwritingAutoRefineEnabled:(id)enabled isAudioTranscriptEnabled:(id)transcriptEnabled isAudioSummaryEnabled:(id)summaryEnabled
{
  dCopy = d;
  typeCopy = type;
  paperCopy = paper;
  enabledCopy = enabled;
  transcriptEnabledCopy = transcriptEnabled;
  summaryEnabledCopy = summaryEnabled;
  v24.receiver = self;
  v24.super_class = ICASNoteData;
  v18 = [(ICASNoteData *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_noteID, d);
    objc_storeStrong(&v19->_noteType, type);
    objc_storeStrong(&v19->_isScrapPaper, paper);
    objc_storeStrong(&v19->_isHandwritingAutoRefineEnabled, enabled);
    objc_storeStrong(&v19->_isAudioTranscriptEnabled, transcriptEnabled);
    objc_storeStrong(&v19->_isAudioSummaryEnabled, summaryEnabled);
  }

  return v19;
}

- (id)toDict
{
  v26[6] = *MEMORY[0x277D85DE8];
  v25[0] = @"noteID";
  noteID = [(ICASNoteData *)self noteID];
  if (noteID)
  {
    noteID2 = [(ICASNoteData *)self noteID];
  }

  else
  {
    noteID2 = objc_opt_new();
  }

  v23 = noteID2;
  v26[0] = noteID2;
  v25[1] = @"noteType";
  noteType = [(ICASNoteData *)self noteType];
  if (noteType)
  {
    noteType2 = [(ICASNoteData *)self noteType];
  }

  else
  {
    noteType2 = objc_opt_new();
  }

  v5 = noteType2;
  v26[1] = noteType2;
  v25[2] = @"isScrapPaper";
  isScrapPaper = [(ICASNoteData *)self isScrapPaper];
  if (isScrapPaper)
  {
    isScrapPaper2 = [(ICASNoteData *)self isScrapPaper];
  }

  else
  {
    isScrapPaper2 = objc_opt_new();
  }

  v8 = isScrapPaper2;
  v26[2] = isScrapPaper2;
  v25[3] = @"isHandwritingAutoRefineEnabled";
  isHandwritingAutoRefineEnabled = [(ICASNoteData *)self isHandwritingAutoRefineEnabled];
  if (isHandwritingAutoRefineEnabled)
  {
    isHandwritingAutoRefineEnabled2 = [(ICASNoteData *)self isHandwritingAutoRefineEnabled];
  }

  else
  {
    isHandwritingAutoRefineEnabled2 = objc_opt_new();
  }

  v11 = isHandwritingAutoRefineEnabled2;
  v26[3] = isHandwritingAutoRefineEnabled2;
  v25[4] = @"isAudioTranscriptEnabled";
  isAudioTranscriptEnabled = [(ICASNoteData *)self isAudioTranscriptEnabled];
  if (isAudioTranscriptEnabled)
  {
    isAudioTranscriptEnabled2 = [(ICASNoteData *)self isAudioTranscriptEnabled];
  }

  else
  {
    isAudioTranscriptEnabled2 = objc_opt_new();
  }

  v14 = isAudioTranscriptEnabled2;
  v26[4] = isAudioTranscriptEnabled2;
  v25[5] = @"isAudioSummaryEnabled";
  isAudioSummaryEnabled = [(ICASNoteData *)self isAudioSummaryEnabled];
  if (isAudioSummaryEnabled)
  {
    isAudioSummaryEnabled2 = [(ICASNoteData *)self isAudioSummaryEnabled];
  }

  else
  {
    isAudioSummaryEnabled2 = objc_opt_new();
  }

  v17 = isAudioSummaryEnabled2;
  v26[5] = isAudioSummaryEnabled2;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:6];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

@end