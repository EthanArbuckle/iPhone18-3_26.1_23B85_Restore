@interface ICASAudioAttachmentData
- (ICASAudioAttachmentData)initWithAudioAttachmentID:(id)a3 transcriptCharacterCount:(id)a4 summaryCharacterCount:(id)a5;
- (id)toDict;
@end

@implementation ICASAudioAttachmentData

- (ICASAudioAttachmentData)initWithAudioAttachmentID:(id)a3 transcriptCharacterCount:(id)a4 summaryCharacterCount:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = ICASAudioAttachmentData;
  v12 = [(ICASAudioAttachmentData *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_audioAttachmentID, a3);
    objc_storeStrong(&v13->_transcriptCharacterCount, a4);
    objc_storeStrong(&v13->_summaryCharacterCount, a5);
  }

  return v13;
}

- (id)toDict
{
  v16[3] = *MEMORY[0x277D85DE8];
  v15[0] = @"audioAttachmentID";
  v3 = [(ICASAudioAttachmentData *)self audioAttachmentID];
  if (v3)
  {
    v4 = [(ICASAudioAttachmentData *)self audioAttachmentID];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;
  v16[0] = v4;
  v15[1] = @"transcriptCharacterCount";
  v6 = [(ICASAudioAttachmentData *)self transcriptCharacterCount];
  if (v6)
  {
    v7 = [(ICASAudioAttachmentData *)self transcriptCharacterCount];
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;
  v16[1] = v7;
  v15[2] = @"summaryCharacterCount";
  v9 = [(ICASAudioAttachmentData *)self summaryCharacterCount];
  if (v9)
  {
    v10 = [(ICASAudioAttachmentData *)self summaryCharacterCount];
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