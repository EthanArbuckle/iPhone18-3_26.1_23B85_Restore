@interface CLSLocationMobilityInformant
- (id)_locationMobilityClueForInvestigation:(id)investigation;
- (id)gatherCluesForInvestigation:(id)investigation progressBlock:(id)block;
@end

@implementation CLSLocationMobilityInformant

- (id)_locationMobilityClueForInvestigation:(id)investigation
{
  investigationCopy = investigation;
  clueCollection = [investigationCopy clueCollection];
  v5 = [MEMORY[0x277CCA940] set];
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = __Block_byref_object_copy__12;
  v22[4] = __Block_byref_object_dispose__13;
  v23 = 0;
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __70__CLSLocationMobilityInformant__locationMobilityClueForInvestigation___block_invoke;
  v19 = &unk_2788A6BC0;
  v21 = v22;
  v6 = v5;
  v20 = v6;
  [clueCollection enumerateLocationClues:&v16];
  if (![v6 count])
  {
    v12 = 0;
    goto LABEL_14;
  }

  v7 = [v6 countForObject:@"Plane"];
  v8 = [v6 countForObject:@"Car"];
  v9 = [v6 countForObject:@"Pedestrian"];
  if (v7)
  {
    v10 = @"Plane";
    v11 = @"Plane";
  }

  else
  {
    v10 = 0;
  }

  if (v8 > v7 && v8 >= [clueCollection numberOfDays] + 1)
  {
    v13 = @"Car";

    v10 = @"Car";
  }

  else if (!v7)
  {
    v10 = 0;
LABEL_12:
    v14 = @"Pedestrian";

    v10 = @"Pedestrian";
    goto LABEL_13;
  }

  if (v9 > [v6 countForObject:v10])
  {
    goto LABEL_12;
  }

LABEL_13:
  v12 = [CLSMeaningClue clueWithValue:v10 forKey:@"Location Mobility"];

LABEL_14:
  _Block_object_dispose(v22, 8);

  return v12;
}

void __70__CLSLocationMobilityInformant__locationMobilityClueForInvestigation___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 location];
  v4 = *(*(*(a1 + 40) + 8) + 40);
  if (v4)
  {
    [v4 distanceFromLocation:v3];
    if (v5 >= 1000.0)
    {
      v6 = @"Plane";
      if (v5 < 500000.0)
      {
        v6 = @"Car";
      }

      if (v5 >= 25000.0)
      {
        v7 = v6;
      }

      else
      {
        v7 = @"Pedestrian";
      }

      [*(a1 + 32) addObject:v7];
    }
  }

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v3;
}

- (id)gatherCluesForInvestigation:(id)investigation progressBlock:(id)block
{
  v15 = *MEMORY[0x277D85DE8];
  investigationCopy = investigation;
  v7 = _Block_copy(block);
  v8 = [(CLSLocationMobilityInformant *)self _locationMobilityClueForInvestigation:investigationCopy];

  if (v7 && (v11 = 0, v7[2](v7, &v11, 0.5), v11 == 1))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v14 = 42;
      _os_log_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d", buf, 8u);
    }

    v9 = 0;
  }

  else if (v8)
  {
    v12 = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
  }

  else
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  return v9;
}

@end