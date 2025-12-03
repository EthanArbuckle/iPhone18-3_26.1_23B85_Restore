@interface FolderSuggestionManager
+ (FolderSuggestionManager)sharedManager;
- (FolderSuggestionManager)init;
- (NSArray)suggestedFolderDestinations;
- (NSString)destinationFolderTitle;
@end

@implementation FolderSuggestionManager

+ (FolderSuggestionManager)sharedManager
{
  if (qword_2811A2200 != -1)
  {
    swift_once();
  }

  v3 = qword_2811A2918;

  return v3;
}

- (FolderSuggestionManager)init
{
  *(&self->super.isa + OBJC_IVAR___FolderSuggestionManager_lastSelectedFolderValidityPeriod) = 0x40DC200000000000;
  v3.receiver = self;
  v3.super_class = FolderSuggestionManager;
  return [(FolderSuggestionManager *)&v3 init];
}

- (NSArray)suggestedFolderDestinations
{
  selfCopy = self;
  sub_215A4415C();

  sub_2159F7DA8(0, &unk_2811A28A0);
  v3 = sub_215A705D0();

  return v3;
}

- (NSString)destinationFolderTitle
{
  selfCopy = self;
  sub_215A44830();

  v3 = sub_215A70500();

  return v3;
}

@end