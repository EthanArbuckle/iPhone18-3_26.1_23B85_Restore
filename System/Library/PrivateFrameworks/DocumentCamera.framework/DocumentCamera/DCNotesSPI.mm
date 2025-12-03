@interface DCNotesSPI
+ (void)scanWasDeleted:(id)deleted;
@end

@implementation DCNotesSPI

+ (void)scanWasDeleted:(id)deleted
{
  v3 = MEMORY[0x277CCAB98];
  deletedCopy = deleted;
  defaultCenter = [v3 defaultCenter];
  [defaultCenter postNotificationName:@"DCScanWasDeletedNotification" object:deletedCopy];
}

@end