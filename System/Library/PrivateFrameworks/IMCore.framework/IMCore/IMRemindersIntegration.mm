@interface IMRemindersIntegration
+ (void)notifyInteractionWithPeople:(id)a3;
@end

@implementation IMRemindersIntegration

+ (void)notifyInteractionWithPeople:(id)a3
{
  v4 = a3;
  if (!qword_1EB2EA1C8)
  {
    qword_1EB2EA1C8 = MEMORY[0x1AC56C550](@"REMStore", @"ReminderKit");
  }

  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_notifyOfInteractionWithPeople_(qword_1EB2EA1C8, v3, v4);
  }
}

@end