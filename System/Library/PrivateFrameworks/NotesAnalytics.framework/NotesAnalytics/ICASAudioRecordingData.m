@interface ICASAudioRecordingData
- (ICASAudioRecordingData)initWithTotalRecordingTime:(id)a3 recordingActionType:(id)a4 didAppBackgroundOccur:(id)a5 didNoteMultitaskingOccur:(id)a6;
- (id)toDict;
@end

@implementation ICASAudioRecordingData

- (ICASAudioRecordingData)initWithTotalRecordingTime:(id)a3 recordingActionType:(id)a4 didAppBackgroundOccur:(id)a5 didNoteMultitaskingOccur:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = ICASAudioRecordingData;
  v15 = [(ICASAudioRecordingData *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_totalRecordingTime, a3);
    objc_storeStrong(&v16->_recordingActionType, a4);
    objc_storeStrong(&v16->_didAppBackgroundOccur, a5);
    objc_storeStrong(&v16->_didNoteMultitaskingOccur, a6);
  }

  return v16;
}

- (id)toDict
{
  v19[4] = *MEMORY[0x277D85DE8];
  v18[0] = @"totalRecordingTime";
  v3 = [(ICASAudioRecordingData *)self totalRecordingTime];
  if (v3)
  {
    v4 = [(ICASAudioRecordingData *)self totalRecordingTime];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;
  v19[0] = v4;
  v18[1] = @"recordingActionType";
  v6 = [(ICASAudioRecordingData *)self recordingActionType];
  if (v6)
  {
    v7 = [(ICASAudioRecordingData *)self recordingActionType];
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;
  v19[1] = v7;
  v18[2] = @"didAppBackgroundOccur";
  v9 = [(ICASAudioRecordingData *)self didAppBackgroundOccur];
  if (v9)
  {
    v10 = [(ICASAudioRecordingData *)self didAppBackgroundOccur];
  }

  else
  {
    v10 = objc_opt_new();
  }

  v11 = v10;
  v19[2] = v10;
  v18[3] = @"didNoteMultitaskingOccur";
  v12 = [(ICASAudioRecordingData *)self didNoteMultitaskingOccur];
  if (v12)
  {
    v13 = [(ICASAudioRecordingData *)self didNoteMultitaskingOccur];
  }

  else
  {
    v13 = objc_opt_new();
  }

  v14 = v13;
  v19[3] = v13;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:4];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

@end