@interface ICASAudioRecordingData
- (ICASAudioRecordingData)initWithTotalRecordingTime:(id)time recordingActionType:(id)type didAppBackgroundOccur:(id)occur didNoteMultitaskingOccur:(id)multitaskingOccur;
- (id)toDict;
@end

@implementation ICASAudioRecordingData

- (ICASAudioRecordingData)initWithTotalRecordingTime:(id)time recordingActionType:(id)type didAppBackgroundOccur:(id)occur didNoteMultitaskingOccur:(id)multitaskingOccur
{
  timeCopy = time;
  typeCopy = type;
  occurCopy = occur;
  multitaskingOccurCopy = multitaskingOccur;
  v18.receiver = self;
  v18.super_class = ICASAudioRecordingData;
  v15 = [(ICASAudioRecordingData *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_totalRecordingTime, time);
    objc_storeStrong(&v16->_recordingActionType, type);
    objc_storeStrong(&v16->_didAppBackgroundOccur, occur);
    objc_storeStrong(&v16->_didNoteMultitaskingOccur, multitaskingOccur);
  }

  return v16;
}

- (id)toDict
{
  v19[4] = *MEMORY[0x277D85DE8];
  v18[0] = @"totalRecordingTime";
  totalRecordingTime = [(ICASAudioRecordingData *)self totalRecordingTime];
  if (totalRecordingTime)
  {
    totalRecordingTime2 = [(ICASAudioRecordingData *)self totalRecordingTime];
  }

  else
  {
    totalRecordingTime2 = objc_opt_new();
  }

  v5 = totalRecordingTime2;
  v19[0] = totalRecordingTime2;
  v18[1] = @"recordingActionType";
  recordingActionType = [(ICASAudioRecordingData *)self recordingActionType];
  if (recordingActionType)
  {
    recordingActionType2 = [(ICASAudioRecordingData *)self recordingActionType];
  }

  else
  {
    recordingActionType2 = objc_opt_new();
  }

  v8 = recordingActionType2;
  v19[1] = recordingActionType2;
  v18[2] = @"didAppBackgroundOccur";
  didAppBackgroundOccur = [(ICASAudioRecordingData *)self didAppBackgroundOccur];
  if (didAppBackgroundOccur)
  {
    didAppBackgroundOccur2 = [(ICASAudioRecordingData *)self didAppBackgroundOccur];
  }

  else
  {
    didAppBackgroundOccur2 = objc_opt_new();
  }

  v11 = didAppBackgroundOccur2;
  v19[2] = didAppBackgroundOccur2;
  v18[3] = @"didNoteMultitaskingOccur";
  didNoteMultitaskingOccur = [(ICASAudioRecordingData *)self didNoteMultitaskingOccur];
  if (didNoteMultitaskingOccur)
  {
    didNoteMultitaskingOccur2 = [(ICASAudioRecordingData *)self didNoteMultitaskingOccur];
  }

  else
  {
    didNoteMultitaskingOccur2 = objc_opt_new();
  }

  v14 = didNoteMultitaskingOccur2;
  v19[3] = didNoteMultitaskingOccur2;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:4];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

@end