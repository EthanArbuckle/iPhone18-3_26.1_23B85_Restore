@interface _MKFInvitation
- (BOOL)populateWorkingStoreFromRestrictedGuestSchedule:(id)schedule;
- (MKFInvitationDatabaseID)databaseID;
- (NSArray)weekDayScheduleRules;
- (NSArray)yearDayScheduleRules;
- (id)restrictedGuestSchedule;
@end

@implementation _MKFInvitation

- (NSArray)yearDayScheduleRules
{
  v2 = [(_MKFInvitation *)self valueForKey:@"yearDayScheduleRules_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (NSArray)weekDayScheduleRules
{
  v2 = [(_MKFInvitation *)self valueForKey:@"weekDayScheduleRules_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (MKFInvitationDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFInvitationDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

- (BOOL)populateWorkingStoreFromRestrictedGuestSchedule:(id)schedule
{
  scheduleCopy = schedule;
  v5 = scheduleCopy;
  v6 = 1;
  if (scheduleCopy)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 1;
    weekDayRules = [scheduleCopy weekDayRules];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __66___MKFInvitation_populateWorkingStoreFromRestrictedGuestSchedule___block_invoke;
    v11[3] = &unk_27867D420;
    v11[4] = self;
    v11[5] = &v12;
    [weekDayRules hmf_enumerateWithAutoreleasePoolUsingBlock:v11];

    yearDayRules = [v5 yearDayRules];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __66___MKFInvitation_populateWorkingStoreFromRestrictedGuestSchedule___block_invoke_6;
    v10[3] = &unk_27867D448;
    v10[4] = self;
    v10[5] = &v12;
    [yearDayRules hmf_enumerateWithAutoreleasePoolUsingBlock:v10];

    v6 = *(v13 + 24);
    _Block_object_dispose(&v12, 8);
  }

  return v6 & 1;
}

- (id)restrictedGuestSchedule
{
  weekDayScheduleRules = [(_MKFInvitation *)self weekDayScheduleRules];
  v4 = [weekDayScheduleRules na_map:&__block_literal_global_40148];

  yearDayScheduleRules = [(_MKFInvitation *)self yearDayScheduleRules];
  v6 = [yearDayScheduleRules na_map:&__block_literal_global_3_40149];

  v7 = [objc_alloc(MEMORY[0x277CD1D78]) initWithWeekDayRules:v4 yearDayRules:v6];

  return v7;
}

@end