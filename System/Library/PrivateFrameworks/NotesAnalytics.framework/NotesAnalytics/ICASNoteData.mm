@interface ICASNoteData
- (ICASNoteData)initWithNoteID:(id)a3 noteType:(id)a4 isScrapPaper:(id)a5 isHandwritingAutoRefineEnabled:(id)a6 isAudioTranscriptEnabled:(id)a7 isAudioSummaryEnabled:(id)a8;
- (id)toDict;
@end

@implementation ICASNoteData

- (ICASNoteData)initWithNoteID:(id)a3 noteType:(id)a4 isScrapPaper:(id)a5 isHandwritingAutoRefineEnabled:(id)a6 isAudioTranscriptEnabled:(id)a7 isAudioSummaryEnabled:(id)a8
{
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v24.receiver = self;
  v24.super_class = ICASNoteData;
  v18 = [(ICASNoteData *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_noteID, a3);
    objc_storeStrong(&v19->_noteType, a4);
    objc_storeStrong(&v19->_isScrapPaper, a5);
    objc_storeStrong(&v19->_isHandwritingAutoRefineEnabled, a6);
    objc_storeStrong(&v19->_isAudioTranscriptEnabled, a7);
    objc_storeStrong(&v19->_isAudioSummaryEnabled, a8);
  }

  return v19;
}

- (id)toDict
{
  v26[6] = *MEMORY[0x277D85DE8];
  v25[0] = @"noteID";
  v24 = [(ICASNoteData *)self noteID];
  if (v24)
  {
    v3 = [(ICASNoteData *)self noteID];
  }

  else
  {
    v3 = objc_opt_new();
  }

  v23 = v3;
  v26[0] = v3;
  v25[1] = @"noteType";
  v21 = [(ICASNoteData *)self noteType];
  if (v21)
  {
    v4 = [(ICASNoteData *)self noteType];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;
  v26[1] = v4;
  v25[2] = @"isScrapPaper";
  v6 = [(ICASNoteData *)self isScrapPaper];
  if (v6)
  {
    v7 = [(ICASNoteData *)self isScrapPaper];
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;
  v26[2] = v7;
  v25[3] = @"isHandwritingAutoRefineEnabled";
  v9 = [(ICASNoteData *)self isHandwritingAutoRefineEnabled];
  if (v9)
  {
    v10 = [(ICASNoteData *)self isHandwritingAutoRefineEnabled];
  }

  else
  {
    v10 = objc_opt_new();
  }

  v11 = v10;
  v26[3] = v10;
  v25[4] = @"isAudioTranscriptEnabled";
  v12 = [(ICASNoteData *)self isAudioTranscriptEnabled];
  if (v12)
  {
    v13 = [(ICASNoteData *)self isAudioTranscriptEnabled];
  }

  else
  {
    v13 = objc_opt_new();
  }

  v14 = v13;
  v26[4] = v13;
  v25[5] = @"isAudioSummaryEnabled";
  v15 = [(ICASNoteData *)self isAudioSummaryEnabled];
  if (v15)
  {
    v16 = [(ICASNoteData *)self isAudioSummaryEnabled];
  }

  else
  {
    v16 = objc_opt_new();
  }

  v17 = v16;
  v26[5] = v16;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:6];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

@end