@interface MIUIRelationshipPickerDataSource
- (MIUIRelationshipPickerDataSource)init;
@end

@implementation MIUIRelationshipPickerDataSource

- (MIUIRelationshipPickerDataSource)init
{
  v23[10] = *MEMORY[0x277D85DE8];
  v22.receiver = self;
  v22.super_class = MIUIRelationshipPickerDataSource;
  v2 = [(MIUIRelationshipPickerDataSource *)&v22 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    medicalIDBundle = v2->_medicalIDBundle;
    v2->_medicalIDBundle = v3;

    v5 = [MEMORY[0x277CBDB20] builtinLabelsForProperty:*MEMORY[0x277CBD120]];
    v6 = [v5 mutableCopy];

    v7 = [v6 indexOfObject:*MEMORY[0x277CBD6F0]];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL || (v8 = v7, v7 == [v6 count] - 1))
    {
      [v6 addObject:*MEMORY[0x277CBD6D8]];
    }

    else
    {
      [v6 insertObject:*MEMORY[0x277CBD6D8] atIndex:v8 + 1];
    }

    v21 = [(NSBundle *)v2->_medicalIDBundle localizedStringForKey:@"relationship_roommate" value:&stru_2869C2C28 table:0];
    v23[0] = v21;
    v20 = [(NSBundle *)v2->_medicalIDBundle localizedStringForKey:@"relationship_doctor" value:&stru_2869C2C28 table:0];
    v23[1] = v20;
    v19 = [(NSBundle *)v2->_medicalIDBundle localizedStringForKey:@"relationship_emergency" value:&stru_2869C2C28 table:0];
    v23[2] = v19;
    v9 = [(NSBundle *)v2->_medicalIDBundle localizedStringForKey:@"relationship_family_member" value:&stru_2869C2C28 table:0];
    v23[3] = v9;
    v10 = [(NSBundle *)v2->_medicalIDBundle localizedStringForKey:@"relationship_teacher" value:&stru_2869C2C28 table:0];
    v23[4] = v10;
    v11 = [(NSBundle *)v2->_medicalIDBundle localizedStringForKey:@"relationship_caretaker" value:&stru_2869C2C28 table:0];
    v23[5] = v11;
    v12 = [(NSBundle *)v2->_medicalIDBundle localizedStringForKey:@"relationship_guardian" value:&stru_2869C2C28 table:0];
    v23[6] = v12;
    v13 = [(NSBundle *)v2->_medicalIDBundle localizedStringForKey:@"relationship_social_worker" value:&stru_2869C2C28 table:0];
    v23[7] = v13;
    v14 = [(NSBundle *)v2->_medicalIDBundle localizedStringForKey:@"relationship_school" value:&stru_2869C2C28 table:0];
    v23[8] = v14;
    v15 = [(NSBundle *)v2->_medicalIDBundle localizedStringForKey:@"relationship_daycare" value:&stru_2869C2C28 table:0];
    v23[9] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:10];
    [v6 addObjectsFromArray:v16];

    [(MIUIRelationshipPickerDataSource *)v2 setRelationships:v6];
  }

  v17 = *MEMORY[0x277D85DE8];
  return v2;
}

@end