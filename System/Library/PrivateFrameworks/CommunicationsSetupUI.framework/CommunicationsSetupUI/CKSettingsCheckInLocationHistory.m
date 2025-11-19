@interface CKSettingsCheckInLocationHistory
- (CKSettingsCheckInLocationHistory)init;
- (id)getSelectionGroupFooterText;
- (id)sampleDevicesDataSpecifier;
- (id)sampleMapDataSpecifier;
- (id)specifiers;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation CKSettingsCheckInLocationHistory

- (CKSettingsCheckInLocationHistory)init
{
  v5.receiver = self;
  v5.super_class = CKSettingsCheckInLocationHistory;
  v2 = [(CKSettingsCheckInLocationHistory *)&v5 init];
  if (v2)
  {
    v3 = MessagesSettingsLocalizedString(@"CHECK_IN_LOCATION_HISTORY_VIEW_TITLE");
    [(CKSettingsCheckInLocationHistory *)v2 setTitle:v3];
  }

  return v2;
}

- (id)specifiers
{
  v2 = *MEMORY[0x277D3FC48];
  v3 = *(&self->super.super.super.super.super.isa + v2);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v6 = objc_opt_new();
    v7 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"LOCATION_HISTORY_SELECTION_GROUP"];
    [(CKSettingsCheckInLocationHistory *)self setSelectionGroup:v7];

    v8 = [(CKSettingsCheckInLocationHistory *)self selectionGroup];
    v9 = [(CKSettingsCheckInLocationHistory *)self getSelectionGroupFooterText];
    v10 = *MEMORY[0x277D3FF88];
    [v8 setProperty:v9 forKey:*MEMORY[0x277D3FF88]];

    v11 = [(CKSettingsCheckInLocationHistory *)self selectionGroup];
    v12 = MEMORY[0x277CBEC38];
    [v11 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FFE8]];

    v13 = [(CKSettingsCheckInLocationHistory *)self selectionGroup];
    [v6 addObject:v13];

    v14 = MEMORY[0x277D3FAD8];
    v15 = MessagesSettingsLocalizedString(@"CHECK_IN_LOCATION_HISTORY_SELECTION_NO_HISTORY");
    v16 = [v14 preferenceSpecifierNamed:v15 target:self set:0 get:0 detail:0 cell:3 edit:0];
    [(CKSettingsCheckInLocationHistory *)self setNoLocationHistorySelector:v16];

    v17 = [(CKSettingsCheckInLocationHistory *)self noLocationHistorySelector];
    v18 = *MEMORY[0x277D3FD80];
    [v17 setProperty:v12 forKey:*MEMORY[0x277D3FD80]];

    v19 = [(CKSettingsCheckInLocationHistory *)self noLocationHistorySelector];
    v20 = *MEMORY[0x277D401A8];
    [v19 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D401A8]];

    v21 = [(CKSettingsCheckInLocationHistory *)self noLocationHistorySelector];
    [v6 addObject:v21];

    v22 = MEMORY[0x277D3FAD8];
    v23 = MessagesSettingsLocalizedString(@"CHECK_IN_LOCATION_HISTORY_SELECTION_FULL_HISTORY");
    v24 = [v22 preferenceSpecifierNamed:v23 target:self set:0 get:0 detail:0 cell:3 edit:0];
    [(CKSettingsCheckInLocationHistory *)self setFullLocationHistorySelector:v24];

    v25 = [(CKSettingsCheckInLocationHistory *)self fullLocationHistorySelector];
    [v25 setProperty:v12 forKey:v18];

    v26 = [(CKSettingsCheckInLocationHistory *)self fullLocationHistorySelector];
    [v26 setProperty:v12 forKey:v20];

    v27 = [(CKSettingsCheckInLocationHistory *)self fullLocationHistorySelector];
    [v6 addObject:v27];

    v28 = [(CKSettingsCheckInLocationHistory *)self selectionGroup];
    if ([MEMORY[0x277D4AB40] shareAllLocations])
    {
      [(CKSettingsCheckInLocationHistory *)self fullLocationHistorySelector];
    }

    else
    {
      [(CKSettingsCheckInLocationHistory *)self noLocationHistorySelector];
    }
    v29 = ;
    [v28 setProperty:v29 forKey:*MEMORY[0x277D40090]];

    v30 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"LOCATION_HISTORY_SAMPLE_MAP_DATA_GROUP"];
    [(CKSettingsCheckInLocationHistory *)self setSampleMapDataGroup:v30];

    v31 = [(CKSettingsCheckInLocationHistory *)self sampleMapDataGroup];
    v32 = MessagesSettingsLocalizedString(@"CHECK_IN_LOCATION_HISTORY_SAMPLE_DATA_TITLE");
    [v31 setName:v32];

    v33 = [(CKSettingsCheckInLocationHistory *)self sampleMapDataGroup];
    [v6 addObject:v33];

    v34 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:-1 edit:0];
    [(CKSettingsCheckInLocationHistory *)self setNoLocationHistoryMap:v34];

    v35 = [(CKSettingsCheckInLocationHistory *)self noLocationHistoryMap];
    v36 = objc_opt_class();
    v37 = *MEMORY[0x277D3FE58];
    [v35 setProperty:v36 forKey:*MEMORY[0x277D3FE58]];

    v38 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:-1 edit:0];
    [(CKSettingsCheckInLocationHistory *)self setFullLocationHistoryMap:v38];

    v39 = [(CKSettingsCheckInLocationHistory *)self fullLocationHistoryMap];
    [v39 setProperty:objc_opt_class() forKey:v37];

    v40 = [(CKSettingsCheckInLocationHistory *)self sampleMapDataSpecifier];
    [v6 addObject:v40];

    v41 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"LOCATION_HISTORY_SAMPLE_DEVICES_DATA_GROUP"];
    [(CKSettingsCheckInLocationHistory *)self setSampleDevicesDataGroup:v41];

    v42 = [(CKSettingsCheckInLocationHistory *)self sampleDevicesDataGroup];
    v43 = MessagesSettingsLocalizedString(@"CHECK_IN_LOCATION_HISTORY_SELECTION_GROUP_FOOTER");
    [v42 setProperty:v43 forKey:v10];

    v44 = [(CKSettingsCheckInLocationHistory *)self sampleDevicesDataGroup];
    [v6 addObject:v44];

    v45 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:-1 edit:0];
    [(CKSettingsCheckInLocationHistory *)self setNoLocationHistoryDevices:v45];

    v46 = [(CKSettingsCheckInLocationHistory *)self noLocationHistoryDevices];
    [v46 setProperty:objc_opt_class() forKey:v37];

    v47 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:-1 edit:0];
    [(CKSettingsCheckInLocationHistory *)self setFullLocationHistoryDevices:v47];

    v48 = [(CKSettingsCheckInLocationHistory *)self fullLocationHistoryDevices];
    [v48 setProperty:objc_opt_class() forKey:v37];

    v49 = [(CKSettingsCheckInLocationHistory *)self sampleDevicesDataSpecifier];
    [v6 addObject:v49];

    v50 = *(&self->super.super.super.super.super.isa + v2);
    *(&self->super.super.super.super.super.isa + v2) = v6;
    v51 = v6;

    v4 = *(&self->super.super.super.super.super.isa + v2);
  }

  return v4;
}

- (id)getSelectionGroupFooterText
{
  if ([MEMORY[0x277D4AB40] shareAllLocations])
  {
    v2 = @"CHECK_IN_LOCATION_HISTORY_SAMPLE_DATA_FULL_HISTORY_FOOTER";
  }

  else
  {
    v2 = @"CHECK_IN_LOCATION_HISTORY_SAMPLE_DATA_NO_HISTORY_FOOTER";
  }

  v3 = MessagesSettingsLocalizedString(v2);

  return v3;
}

- (id)sampleMapDataSpecifier
{
  if ([MEMORY[0x277D4AB40] shareAllLocations])
  {
    [(CKSettingsCheckInLocationHistory *)self fullLocationHistoryMap];
  }

  else
  {
    [(CKSettingsCheckInLocationHistory *)self noLocationHistoryMap];
  }
  v3 = ;

  return v3;
}

- (id)sampleDevicesDataSpecifier
{
  if ([MEMORY[0x277D4AB40] shareAllLocations])
  {
    [(CKSettingsCheckInLocationHistory *)self fullLocationHistoryDevices];
  }

  else
  {
    [(CKSettingsCheckInLocationHistory *)self noLocationHistoryDevices];
  }
  v3 = ;

  return v3;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CKSettingsCheckInLocationHistory *)self indexForIndexPath:v7];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v9 = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) objectAtIndex:v8];
  }

  v10 = [(CKSettingsCheckInLocationHistory *)self getGroupSpecifierForSpecifier:v9];
  v11 = [v10 propertyForKey:*MEMORY[0x277D3FFE8]];
  v12 = [v11 BOOLValue];

  if (v12)
  {
    v13 = [(CKSettingsCheckInLocationHistory *)self selectionGroup];

    v14 = [v9 propertyForKey:*MEMORY[0x277D401A8]];
    v15 = v14;
    if (v10 == v13)
    {
      v16 = [v14 BOOLValue];
      [MEMORY[0x277D4AB40] setShareAllLocations:v16];

      [(CKSettingsCheckInLocationHistory *)self updateSampleDataSpecifiersAnimated:1];
    }

    else
    {
      [(CKSettingsCheckInLocationHistory *)self setPreferenceValue:v14 specifier:v10];
    }
  }

  v17.receiver = self;
  v17.super_class = CKSettingsCheckInLocationHistory;
  [(CKSettingsCheckInLocationHistory *)&v17 tableView:v6 didSelectRowAtIndexPath:v7];
}

@end