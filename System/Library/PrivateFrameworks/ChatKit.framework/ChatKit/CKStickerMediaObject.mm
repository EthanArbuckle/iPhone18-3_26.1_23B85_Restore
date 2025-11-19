@interface CKStickerMediaObject
- (id)attachmentSummary:(unint64_t)a3;
@end

@implementation CKStickerMediaObject

- (id)attachmentSummary:(unint64_t)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = IMSharedUtilitiesFrameworkBundle();
  v6 = [v5 localizedStringForKey:@"%lu Stickers" value:&stru_1F04268F8 table:@"IMSharedUtilities"];
  v7 = [v4 localizedStringWithFormat:v6, a3];

  return v7;
}

@end