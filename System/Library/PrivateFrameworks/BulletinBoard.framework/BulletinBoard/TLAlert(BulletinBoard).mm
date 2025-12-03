@interface TLAlert(BulletinBoard)
+ (uint64_t)bb_toneLibraryAlertTypeForSectionID:()BulletinBoard;
@end

@implementation TLAlert(BulletinBoard)

+ (uint64_t)bb_toneLibraryAlertTypeForSectionID:()BulletinBoard
{
  v3 = bb_toneLibraryAlertTypeForSectionID__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    +[TLAlert(BulletinBoard) bb_toneLibraryAlertTypeForSectionID:];
  }

  v5 = [bb_toneLibraryAlertTypeForSectionID____sectionIDToAlertType objectForKey:v4];

  integerValue = [v5 integerValue];
  return integerValue;
}

@end