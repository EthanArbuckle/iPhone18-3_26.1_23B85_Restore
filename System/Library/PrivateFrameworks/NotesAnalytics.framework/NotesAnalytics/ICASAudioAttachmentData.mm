@interface ICASAudioAttachmentData
- (ICASAudioAttachmentData)initWithAudioAttachmentID:(id)d transcriptCharacterCount:(id)count summaryCharacterCount:(id)characterCount;
- (id)toDict;
@end

@implementation ICASAudioAttachmentData

- (ICASAudioAttachmentData)initWithAudioAttachmentID:(id)d transcriptCharacterCount:(id)count summaryCharacterCount:(id)characterCount
{
  dCopy = d;
  countCopy = count;
  characterCountCopy = characterCount;
  v15.receiver = self;
  v15.super_class = ICASAudioAttachmentData;
  v12 = [(ICASAudioAttachmentData *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_audioAttachmentID, d);
    objc_storeStrong(&v13->_transcriptCharacterCount, count);
    objc_storeStrong(&v13->_summaryCharacterCount, characterCount);
  }

  return v13;
}

- (id)toDict
{
  v16[3] = *MEMORY[0x277D85DE8];
  v15[0] = @"audioAttachmentID";
  audioAttachmentID = [(ICASAudioAttachmentData *)self audioAttachmentID];
  if (audioAttachmentID)
  {
    audioAttachmentID2 = [(ICASAudioAttachmentData *)self audioAttachmentID];
  }

  else
  {
    audioAttachmentID2 = objc_opt_new();
  }

  v5 = audioAttachmentID2;
  v16[0] = audioAttachmentID2;
  v15[1] = @"transcriptCharacterCount";
  transcriptCharacterCount = [(ICASAudioAttachmentData *)self transcriptCharacterCount];
  if (transcriptCharacterCount)
  {
    transcriptCharacterCount2 = [(ICASAudioAttachmentData *)self transcriptCharacterCount];
  }

  else
  {
    transcriptCharacterCount2 = objc_opt_new();
  }

  v8 = transcriptCharacterCount2;
  v16[1] = transcriptCharacterCount2;
  v15[2] = @"summaryCharacterCount";
  summaryCharacterCount = [(ICASAudioAttachmentData *)self summaryCharacterCount];
  if (summaryCharacterCount)
  {
    summaryCharacterCount2 = [(ICASAudioAttachmentData *)self summaryCharacterCount];
  }

  else
  {
    summaryCharacterCount2 = objc_opt_new();
  }

  v11 = summaryCharacterCount2;
  v16[2] = summaryCharacterCount2;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end