@interface DCNotesSPI
+ (void)scanWasDeleted:(id)a3;
@end

@implementation DCNotesSPI

+ (void)scanWasDeleted:(id)a3
{
  v3 = MEMORY[0x277CCAB98];
  v4 = a3;
  v5 = [v3 defaultCenter];
  [v5 postNotificationName:@"DCScanWasDeletedNotification" object:v4];
}

@end