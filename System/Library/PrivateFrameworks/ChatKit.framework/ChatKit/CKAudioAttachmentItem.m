@interface CKAudioAttachmentItem
+ (id)UTITypes;
- (id)previewItemTitle;
@end

@implementation CKAudioAttachmentItem

+ (id)UTITypes
{
  v2 = [MEMORY[0x1E6988168] audiovisualTypes];
  v3 = [v2 indexesOfObjectsPassingTest:&__block_literal_global_132];
  v4 = [v2 objectsAtIndexes:v3];

  return v4;
}

- (id)previewItemTitle
{
  v2 = [(CKAttachmentItem *)self fileURL];
  v3 = [v2 lastPathComponent];

  if (([v3 isEqualToString:@"Audio Message.caf"] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"Audio Message.amr"))
  {
    v4 = CKFrameworkBundle();
    v5 = [v4 localizedStringForKey:@"PREVIEW_TITLE_AUDIO_MESSAGE" value:&stru_1F04268F8 table:@"ChatKit"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end