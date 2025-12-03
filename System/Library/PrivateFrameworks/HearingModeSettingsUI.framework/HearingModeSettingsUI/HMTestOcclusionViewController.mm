@interface HMTestOcclusionViewController
- (id)datePickerForSpecifier:(id)specifier;
- (id)specifiers;
- (void)datePickerChanged:(id)changed;
- (void)listItemSelected:(id)selected;
- (void)postOcclusionData;
- (void)viewDidLoad;
@end

@implementation HMTestOcclusionViewController

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = HMTestOcclusionViewController;
  [(PSListItemsController *)&v2 viewDidLoad];
}

- (id)specifiers
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  userInfo = [*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FD20]) userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"bt-address"];
  address = self->_address;
  self->_address = v5;

  v57 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"Left Bud" target:self set:0 get:0 detail:0 cell:0 edit:0];
  [v3 addObject:v57];
  v56 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"Bottom Mic" target:self set:0 get:0 detail:0 cell:3 edit:0];
  v7 = *MEMORY[0x277D3FFB8];
  [v56 setProperty:@"bottom-mic-left" forKey:*MEMORY[0x277D3FFB8]];
  [v3 addObject:v56];
  v55 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"Frequency Accuracy" target:self set:0 get:0 detail:0 cell:3 edit:0];
  [v55 setProperty:@"freq-left" forKey:v7];
  [v3 addObject:v55];
  v54 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"Front Vent" target:self set:0 get:0 detail:0 cell:3 edit:0];
  [v54 setProperty:@"front-vent-left" forKey:v7];
  [v3 addObject:v54];
  v53 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"Inner Mic" target:self set:0 get:0 detail:0 cell:3 edit:0];
  [v53 setProperty:@"inner-mic-left" forKey:v7];
  [v3 addObject:v53];
  v52 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"Rear Vent" target:self set:0 get:0 detail:0 cell:3 edit:0];
  [v52 setProperty:@"rear-vent-left" forKey:v7];
  [v3 addObject:v52];
  v51 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"Speaker" target:self set:0 get:0 detail:0 cell:3 edit:0];
  [v51 setProperty:@"speaker-left" forKey:v7];
  [v3 addObject:v51];
  v50 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"Top Mic" target:self set:0 get:0 detail:0 cell:3 edit:0];
  [v50 setProperty:@"top-mic-left" forKey:v7];
  [v3 addObject:v50];
  v49 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"Total Harmonic Distribution" target:self set:0 get:0 detail:0 cell:3 edit:0];
  [v49 setProperty:@"thd-left" forKey:v7];
  [v3 addObject:v49];
  v48 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"NO UTP Connection" target:self set:0 get:0 detail:0 cell:3 edit:0];
  [v48 setProperty:@"no-utp-left" forKey:v7];
  [v3 addObject:v48];
  v47 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"NO measurement + >1 year out of factory" target:self set:0 get:0 detail:0 cell:3 edit:0];
  [v47 setProperty:@"no-msr-left" forKey:v7];
  [v3 addObject:v47];
  v8 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"Measurement time" target:self set:0 get:0 detail:0 cell:4 edit:0];
  v9 = *MEMORY[0x277D3FEE8];
  [v8 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FEE8]];
  v46 = v8;
  [v8 setProperty:@"timestamp-left" forKey:v7];
  v10 = MEMORY[0x277CCABB0];
  [MEMORY[0x277D3F9E0] preferredHeight];
  v11 = [v10 numberWithDouble:?];
  v12 = *MEMORY[0x277D40140];
  v38 = *MEMORY[0x277D40140];
  [v8 setObject:v11 forKeyedSubscript:*MEMORY[0x277D40140]];

  v13 = objc_opt_class();
  v14 = *MEMORY[0x277D3FE58];
  v39 = *MEMORY[0x277D3FE58];
  [v8 setObject:v13 forKeyedSubscript:*MEMORY[0x277D3FE58]];
  [v3 addObject:v8];
  v15 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"First time use" target:self set:0 get:0 detail:0 cell:13 edit:0];
  [v15 setProperty:MEMORY[0x277CBEC38] forKey:v9];
  [v15 setProperty:@"first-time-use-left" forKey:v7];
  v16 = MEMORY[0x277CCABB0];
  [MEMORY[0x277D3F9E0] preferredHeight];
  v17 = [v16 numberWithDouble:?];
  [v15 setObject:v17 forKeyedSubscript:v12];

  [v15 setObject:objc_opt_class() forKeyedSubscript:v14];
  [v3 addObject:v15];
  v45 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"Right Bud" target:self set:0 get:0 detail:0 cell:0 edit:0];
  [v3 addObject:v45];
  v44 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"Bottom Mic" target:self set:0 get:0 detail:0 cell:3 edit:0];
  [v44 setProperty:@"bottom-mic-right" forKey:v7];
  [v3 addObject:v44];
  v43 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"Frequency Accuracy" target:self set:0 get:0 detail:0 cell:3 edit:0];
  [v43 setProperty:@"freq-right" forKey:v7];
  [v3 addObject:v43];
  v42 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"Front Vent" target:self set:0 get:0 detail:0 cell:3 edit:0];
  [v42 setProperty:@"front-vent-right" forKey:v7];
  [v3 addObject:v42];
  v41 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"Inner Mic" target:self set:0 get:0 detail:0 cell:3 edit:0];
  [v41 setProperty:@"inner-mic-right" forKey:v7];
  [v3 addObject:v41];
  v40 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"Rear Vent" target:self set:0 get:0 detail:0 cell:3 edit:0];
  [v40 setProperty:@"rear-vent-right" forKey:v7];
  [v3 addObject:v40];
  v37 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"Speaker" target:self set:0 get:0 detail:0 cell:3 edit:0];
  [v37 setProperty:@"speaker-right" forKey:v7];
  [v3 addObject:v37];
  v36 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"Top Mic" target:self set:0 get:0 detail:0 cell:3 edit:0];
  [v36 setProperty:@"top-mic-right" forKey:v7];
  [v3 addObject:v36];
  v35 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"Total Harmonic Distribution" target:self set:0 get:0 detail:0 cell:3 edit:0];
  [v35 setProperty:@"thd-right" forKey:v7];
  [v3 addObject:v35];
  v34 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"NO UTP Connection" target:self set:0 get:0 detail:0 cell:3 edit:0];
  [v34 setProperty:@"no-utp-right" forKey:v7];
  [v3 addObject:v34];
  v33 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"NO measurement + >1 year out of factory" target:self set:0 get:0 detail:0 cell:3 edit:0];
  [v33 setProperty:@"no-msr-right" forKey:v7];
  [v3 addObject:v33];
  v18 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"Measurement time" target:self set:0 get:0 detail:0 cell:4 edit:0];
  v19 = v9;
  [v18 setProperty:MEMORY[0x277CBEC38] forKey:v9];
  [v18 setProperty:@"timestamp-right" forKey:v7];
  v20 = MEMORY[0x277CCABB0];
  [MEMORY[0x277D3F9E0] preferredHeight];
  v21 = [v20 numberWithDouble:?];
  [v18 setObject:v21 forKeyedSubscript:v38];

  [v18 setObject:objc_opt_class() forKeyedSubscript:v39];
  [v3 addObject:v18];
  v22 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"First time use" target:self set:0 get:0 detail:0 cell:13 edit:0];
  [v22 setProperty:MEMORY[0x277CBEC38] forKey:v19];
  [v22 setProperty:@"first-time-use-right" forKey:v7];
  v23 = MEMORY[0x277CCABB0];
  [MEMORY[0x277D3F9E0] preferredHeight];
  v24 = [v23 numberWithDouble:?];
  [v22 setObject:v24 forKeyedSubscript:v38];

  [v22 setObject:objc_opt_class() forKeyedSubscript:v39];
  [v3 addObject:v22];
  v25 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"Send" target:self set:0 get:0 detail:0 cell:0 edit:0];
  [v3 addObject:v25];
  v26 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"Send Occlusion Data" target:self set:0 get:0 detail:0 cell:13 edit:0];
  [v26 setProperty:@"send-button" forKey:v7];
  [v3 addObject:v26];
  v27 = [MEMORY[0x277CBEA60] arrayWithArray:v3];
  v28 = *MEMORY[0x277D3FC48];
  v29 = *(&self->super.super.super.super.super.super.isa + v28);
  *(&self->super.super.super.super.super.super.isa + v28) = v27;

  v30 = *(&self->super.super.super.super.super.super.isa + v28);
  v31 = v30;

  return v30;
}

- (void)listItemSelected:(id)selected
{
  selectedCopy = selected;
  if ([selectedCopy section] == 2)
  {
    [(HMTestOcclusionViewController *)self postOcclusionData];
    [(HMTestOcclusionViewController *)self reloadSpecifiers];
    self->_measurementResultLeft = 0;
    self->_measurementResultRight = 0;
    leftMeasurementTimestamp = self->_leftMeasurementTimestamp;
    self->_leftMeasurementTimestamp = 0;

    rightMeasurementTimestamp = self->_rightMeasurementTimestamp;
    self->_rightMeasurementTimestamp = 0;

    firstTimeUseLeftTimestamp = self->_firstTimeUseLeftTimestamp;
    self->_firstTimeUseLeftTimestamp = 0;

    firstTimeUseRightTimestamp = self->_firstTimeUseRightTimestamp;
    self->_firstTimeUseRightTimestamp = 0;
  }

  else
  {
    firstTimeUseRightTimestamp = [*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC60]) cellForRowAtIndexPath:selectedCopy];
    v8 = [(HMTestOcclusionViewController *)self specifierAtIndexPath:selectedCopy];
    [firstTimeUseRightTimestamp setChecked:{objc_msgSend(firstTimeUseRightTimestamp, "isChecked") ^ 1}];
    identifier = [v8 identifier];
    v10 = [identifier isEqualToString:@"bottom-mic-left"];

    if (v10)
    {
      if ([firstTimeUseRightTimestamp isChecked])
      {
        v11 = 4096;
      }

      else
      {
        v11 = 0;
      }

      self->_measurementResultLeft = self->_measurementResultLeft & 0xFFFFEFFF | v11;
    }

    identifier2 = [v8 identifier];
    v13 = [identifier2 isEqualToString:@"freq-left"];

    if (v13)
    {
      if ([firstTimeUseRightTimestamp isChecked])
      {
        v14 = 256;
      }

      else
      {
        v14 = 0;
      }

      self->_measurementResultLeft = self->_measurementResultLeft & 0xFFFFFEFF | v14;
    }

    identifier3 = [v8 identifier];
    v16 = [identifier3 isEqualToString:@"front-vent-left"];

    if (v16)
    {
      if ([firstTimeUseRightTimestamp isChecked])
      {
        v17 = 2048;
      }

      else
      {
        v17 = 0;
      }

      self->_measurementResultLeft = self->_measurementResultLeft & 0xFFFFF7FF | v17;
    }

    identifier4 = [v8 identifier];
    v19 = [identifier4 isEqualToString:@"inner-mic-left"];

    if (v19)
    {
      if ([firstTimeUseRightTimestamp isChecked])
      {
        v20 = 0x4000;
      }

      else
      {
        v20 = 0;
      }

      self->_measurementResultLeft = self->_measurementResultLeft & 0xFFFFBFFF | v20;
    }

    identifier5 = [v8 identifier];
    v22 = [identifier5 isEqualToString:@"rear-vent-left"];

    if (v22)
    {
      if ([firstTimeUseRightTimestamp isChecked])
      {
        v23 = 1024;
      }

      else
      {
        v23 = 0;
      }

      self->_measurementResultLeft = self->_measurementResultLeft & 0xFFFFFBFF | v23;
    }

    identifier6 = [v8 identifier];
    v25 = [identifier6 isEqualToString:@"speaker-left"];

    if (v25)
    {
      if ([firstTimeUseRightTimestamp isChecked])
      {
        v26 = 512;
      }

      else
      {
        v26 = 0;
      }

      self->_measurementResultLeft = self->_measurementResultLeft & 0xFFFFFDFF | v26;
    }

    identifier7 = [v8 identifier];
    v28 = [identifier7 isEqualToString:@"top-mic-left"];

    if (v28)
    {
      if ([firstTimeUseRightTimestamp isChecked])
      {
        v29 = 0x2000;
      }

      else
      {
        v29 = 0;
      }

      self->_measurementResultLeft = self->_measurementResultLeft & 0xFFFFDFFF | v29;
    }

    identifier8 = [v8 identifier];
    v31 = [identifier8 isEqualToString:@"thd-left"];

    if (v31)
    {
      if ([firstTimeUseRightTimestamp isChecked])
      {
        v32 = 128;
      }

      else
      {
        v32 = 0;
      }

      self->_measurementResultLeft = self->_measurementResultLeft & 0xFFFFFF7F | v32;
    }

    identifier9 = [v8 identifier];
    v34 = [identifier9 isEqualToString:@"no-utp-left"];

    if (v34)
    {
      isChecked = [firstTimeUseRightTimestamp isChecked];
      measurementResultLeft = self->_measurementResultLeft;
      v37 = measurementResultLeft | 3;
      v38 = measurementResultLeft & 0xFFFFFFF8;
      if (isChecked)
      {
        v38 = v37;
      }

      self->_measurementResultLeft = v38;
    }

    identifier10 = [v8 identifier];
    v40 = [identifier10 isEqualToString:@"no-msr-left"];

    if (v40)
    {
      isChecked2 = [firstTimeUseRightTimestamp isChecked];
      v42 = self->_measurementResultLeft;
      v43 = v42 | 4;
      v44 = v42 & 0xFFFFFFF8;
      if (isChecked2)
      {
        v44 = v43;
      }

      self->_measurementResultLeft = v44;
    }

    identifier11 = [v8 identifier];
    v46 = [identifier11 isEqualToString:@"bottom-mic-right"];

    if (v46)
    {
      if ([firstTimeUseRightTimestamp isChecked])
      {
        v47 = 4096;
      }

      else
      {
        v47 = 0;
      }

      self->_measurementResultRight = self->_measurementResultRight & 0xFFFFEFFF | v47;
    }

    identifier12 = [v8 identifier];
    v49 = [identifier12 isEqualToString:@"freq-right"];

    if (v49)
    {
      if ([firstTimeUseRightTimestamp isChecked])
      {
        v50 = 256;
      }

      else
      {
        v50 = 0;
      }

      self->_measurementResultRight = self->_measurementResultRight & 0xFFFFFEFF | v50;
    }

    identifier13 = [v8 identifier];
    v52 = [identifier13 isEqualToString:@"front-vent-right"];

    if (v52)
    {
      if ([firstTimeUseRightTimestamp isChecked])
      {
        v53 = 2048;
      }

      else
      {
        v53 = 0;
      }

      self->_measurementResultRight = self->_measurementResultRight & 0xFFFFF7FF | v53;
    }

    identifier14 = [v8 identifier];
    v55 = [identifier14 isEqualToString:@"inner-mic-right"];

    if (v55)
    {
      if ([firstTimeUseRightTimestamp isChecked])
      {
        v56 = 0x4000;
      }

      else
      {
        v56 = 0;
      }

      self->_measurementResultRight = self->_measurementResultRight & 0xFFFFBFFF | v56;
    }

    identifier15 = [v8 identifier];
    v58 = [identifier15 isEqualToString:@"rear-vent-right"];

    if (v58)
    {
      if ([firstTimeUseRightTimestamp isChecked])
      {
        v59 = 1024;
      }

      else
      {
        v59 = 0;
      }

      self->_measurementResultRight = self->_measurementResultRight & 0xFFFFFBFF | v59;
    }

    identifier16 = [v8 identifier];
    v61 = [identifier16 isEqualToString:@"speaker-right"];

    if (v61)
    {
      if ([firstTimeUseRightTimestamp isChecked])
      {
        v62 = 512;
      }

      else
      {
        v62 = 0;
      }

      self->_measurementResultRight = self->_measurementResultRight & 0xFFFFFDFF | v62;
    }

    identifier17 = [v8 identifier];
    v64 = [identifier17 isEqualToString:@"top-mic-right"];

    if (v64)
    {
      if ([firstTimeUseRightTimestamp isChecked])
      {
        v65 = 0x2000;
      }

      else
      {
        v65 = 0;
      }

      self->_measurementResultRight = self->_measurementResultRight & 0xFFFFDFFF | v65;
    }

    identifier18 = [v8 identifier];
    v67 = [identifier18 isEqualToString:@"thd-right"];

    if (v67)
    {
      if ([firstTimeUseRightTimestamp isChecked])
      {
        v68 = 128;
      }

      else
      {
        v68 = 0;
      }

      self->_measurementResultRight = self->_measurementResultRight & 0xFFFFFF7F | v68;
    }

    identifier19 = [v8 identifier];
    v70 = [identifier19 isEqualToString:@"no-utp-right"];

    if (v70)
    {
      isChecked3 = [firstTimeUseRightTimestamp isChecked];
      measurementResultRight = self->_measurementResultRight;
      v73 = measurementResultRight | 3;
      v74 = measurementResultRight & 0xFFFFFFF8;
      if (isChecked3)
      {
        v74 = v73;
      }

      self->_measurementResultRight = v74;
    }

    identifier20 = [v8 identifier];
    v76 = [identifier20 isEqualToString:@"no-msr-right"];

    if (v76)
    {
      isChecked4 = [firstTimeUseRightTimestamp isChecked];
      v78 = self->_measurementResultRight;
      v79 = v78 | 4;
      v80 = v78 & 0xFFFFFFF8;
      if (isChecked4)
      {
        v80 = v79;
      }

      self->_measurementResultRight = v80;
    }
  }
}

- (void)postOcclusionData
{
  v23 = 5;
  if (!self->_leftMeasurementTimestamp)
  {
    v3 = [MEMORY[0x277CBEAA8] now];
    leftMeasurementTimestamp = self->_leftMeasurementTimestamp;
    self->_leftMeasurementTimestamp = v3;
  }

  if (!self->_rightMeasurementTimestamp)
  {
    v5 = [MEMORY[0x277CBEAA8] now];
    rightMeasurementTimestamp = self->_rightMeasurementTimestamp;
    self->_rightMeasurementTimestamp = v5;
  }

  if (!self->_firstTimeUseLeftTimestamp)
  {
    v7 = [MEMORY[0x277CBEAA8] now];
    firstTimeUseLeftTimestamp = self->_firstTimeUseLeftTimestamp;
    self->_firstTimeUseLeftTimestamp = v7;
  }

  if (!self->_firstTimeUseRightTimestamp)
  {
    v9 = [MEMORY[0x277CBEAA8] now];
    firstTimeUseRightTimestamp = self->_firstTimeUseRightTimestamp;
    self->_firstTimeUseRightTimestamp = v9;
  }

  v27 = 0;
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  [(NSDate *)self->_leftMeasurementTimestamp timeIntervalSince1970];
  *&v24 = v11;
  [(NSDate *)self->_rightMeasurementTimestamp timeIntervalSince1970];
  *(&v24 + 1) = v12;
  [(NSDate *)self->_firstTimeUseLeftTimestamp timeIntervalSince1970];
  LODWORD(v26) = v13;
  [(NSDate *)self->_firstTimeUseRightTimestamp timeIntervalSince1970];
  DWORD1(v26) = v14;
  measurementResultRight = self->_measurementResultRight;
  LODWORD(v25) = self->_measurementResultLeft;
  DWORD1(v25) = measurementResultRight;
  v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v16 setObject:@"occlusion-test" forKeyedSubscript:@"msg-identifier"];
  [v16 setObject:self->_address forKeyedSubscript:@"bt-address"];
  v17 = [MEMORY[0x277CBEA90] dataWithBytes:&v23 length:57];
  [v16 setObject:v17 forKeyedSubscript:@"msg-data"];

  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter postNotificationName:@"com.apple.HearingModeService" object:0 userInfo:v16 options:2];

  v19 = MEMORY[0x277D75110];
  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sent to HearingModeService!"];
  v21 = [v19 alertControllerWithTitle:@"Occlusion Data" message:v20 preferredStyle:0];

  v22 = [MEMORY[0x277D750F8] actionWithTitle:@"Done" style:1 handler:0];
  [v21 addAction:v22];
  [(HMTestOcclusionViewController *)self presentViewController:v21 animated:1 completion:0];
}

- (void)datePickerChanged:(id)changed
{
  changedCopy = changed;
  accessibilityIdentifier = [changedCopy accessibilityIdentifier];
  v5 = [accessibilityIdentifier isEqualToString:@"left"];

  if (v5)
  {
    v6 = changedCopy;
    v7 = &OBJC_IVAR___HMTestOcclusionViewController__leftMeasurementTimestamp;
  }

  else
  {
    accessibilityIdentifier2 = [changedCopy accessibilityIdentifier];
    v9 = [accessibilityIdentifier2 isEqualToString:@"right"];

    if (v9)
    {
      v6 = changedCopy;
      v7 = &OBJC_IVAR___HMTestOcclusionViewController__rightMeasurementTimestamp;
    }

    else
    {
      accessibilityIdentifier3 = [changedCopy accessibilityIdentifier];
      v11 = [accessibilityIdentifier3 isEqualToString:@"first-left"];

      if (v11)
      {
        v6 = changedCopy;
        v7 = &OBJC_IVAR___HMTestOcclusionViewController__firstTimeUseLeftTimestamp;
      }

      else
      {
        accessibilityIdentifier4 = [changedCopy accessibilityIdentifier];
        v13 = [accessibilityIdentifier4 isEqualToString:@"first-right"];

        if (!v13)
        {
          goto LABEL_10;
        }

        v6 = changedCopy;
        v7 = &OBJC_IVAR___HMTestOcclusionViewController__firstTimeUseRightTimestamp;
      }
    }
  }

  date = [v6 date];
  v15 = *v7;
  v16 = *(&self->super.super.super.super.super.super.isa + v15);
  *(&self->super.super.super.super.super.super.isa + v15) = date;

LABEL_10:
}

- (id)datePickerForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v4 = objc_alloc(MEMORY[0x277D753E8]);
  v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v5 setDatePickerMode:2];
  [v5 setPreferredDatePickerStyle:2];
  identifier = [specifierCopy identifier];
  v7 = [identifier isEqualToString:@"timestamp-left"];

  if (v7)
  {
    v8 = @"left";
  }

  else
  {
    identifier2 = [specifierCopy identifier];
    v10 = [identifier2 isEqualToString:@"timestamp-right"];

    if (v10)
    {
      v8 = @"right";
    }

    else
    {
      identifier3 = [specifierCopy identifier];
      v12 = [identifier3 isEqualToString:@"first-time-use-left"];

      if (v12)
      {
        v8 = @"first-left";
      }

      else
      {
        identifier4 = [specifierCopy identifier];
        v14 = [identifier4 isEqualToString:@"first-time-use-right"];

        if (!v14)
        {
          goto LABEL_10;
        }

        v8 = @"first-right";
      }
    }
  }

  [v5 setAccessibilityIdentifier:v8];
LABEL_10:

  return v5;
}

@end