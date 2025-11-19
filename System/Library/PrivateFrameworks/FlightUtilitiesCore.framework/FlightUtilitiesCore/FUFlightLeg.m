@interface FUFlightLeg
- (BOOL)isEqual:(id)a3;
- (FUFlightLeg)initWithCoder:(id)a3;
- (FUFlightLeg)initWithStatus:(int64_t)a3 duration:(double)a4 departure:(id)a5 arrival:(id)a6 flightState:(int64_t)a7 departureInfo:(id)a8 arrivalInfo:(id)a9 dateLastUpdated:(id)a10;
- (NSDate)dateOfNextExpectedUpdate;
- (double)_calculateCurrentProgress;
- (double)_currentProgress;
- (double)currentProgress;
- (id)baggageClaim;
- (id)description;
- (int64_t)_computedFlightStateWithBuffer:(BOOL)a3;
- (int64_t)computedFlightState;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FUFlightLeg

- (FUFlightLeg)initWithStatus:(int64_t)a3 duration:(double)a4 departure:(id)a5 arrival:(id)a6 flightState:(int64_t)a7 departureInfo:(id)a8 arrivalInfo:(id)a9 dateLastUpdated:(id)a10
{
  v27 = a5;
  v17 = a6;
  v18 = a8;
  v19 = a9;
  v20 = a10;
  v28.receiver = self;
  v28.super_class = FUFlightLeg;
  v21 = [(FUFlightLeg *)&v28 init];
  v22 = v21;
  if (v21)
  {
    v21->_status = a3;
    v21->_duration = a4;
    objc_storeStrong(&v21->_departure, a5);
    objc_storeStrong(&v22->_arrival, a6);
    v22->_flightState = a7;
    objc_storeStrong(&v22->_departureInfo, a8);
    objc_storeStrong(&v22->_arrivalInfo, a9);
    v23 = [v20 copy];
    dateLastUpdated = v22->_dateLastUpdated;
    v22->_dateLastUpdated = v23;
  }

  return v22;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(FUFlightLeg *)self status];
    if (v7 == [v6 status])
    {
      [(FUFlightLeg *)self duration];
      v9 = v8;
      [v6 duration];
      if (v9 == v10)
      {
        v11 = [(FUFlightLeg *)self arrival];
        v12 = [v6 arrival];
        if (v11 != v12)
        {
          v13 = [(FUFlightLeg *)self arrival];
          v3 = [v6 arrival];
          v45 = v13;
          if (![v13 isEqual:v3])
          {
            v14 = 0;
            goto LABEL_34;
          }
        }

        v16 = [(FUFlightLeg *)self departure];
        v17 = [v6 departure];
        if (v16 != v17)
        {
          v4 = [(FUFlightLeg *)self departure];
          v18 = [v6 departure];
          if (![v4 isEqual:v18])
          {
            v14 = 0;
            goto LABEL_32;
          }

          v44 = v18;
        }

        v19 = [(FUFlightLeg *)self flightState];
        if (v19 == [v6 flightState])
        {
          v20 = [(FUFlightLeg *)self departureInfo];
          [v6 departureInfo];
          v42 = v3;
          v41 = v43 = v20;
          v21 = v20 == v41;
          v18 = v44;
          if (!v21)
          {
            v22 = [(FUFlightLeg *)self departureInfo];
            v37 = [v6 departureInfo];
            v38 = v22;
            if (![v22 isEqual:?])
            {
              v14 = 0;
              v23 = v43;
              v24 = v41;
LABEL_30:

LABEL_31:
              v3 = v42;
              if (v16 == v17)
              {
                goto LABEL_33;
              }

              goto LABEL_32;
            }
          }

          v25 = [(FUFlightLeg *)self arrivalInfo];
          v39 = [v6 arrivalInfo];
          v40 = v25;
          if (v25 == v39)
          {
            v36 = v4;
          }

          else
          {
            v26 = [(FUFlightLeg *)self arrivalInfo];
            v34 = [v6 arrivalInfo];
            v35 = v26;
            if (![v26 isEqual:?])
            {
              v14 = 0;
              v33 = v39;
              goto LABEL_28;
            }

            v36 = v4;
          }

          v27 = [(FUFlightLeg *)self dateLastUpdated];
          v28 = [v6 dateLastUpdated];
          v29 = v28;
          if (v27 == v28)
          {

            v14 = 1;
          }

          else
          {
            [(FUFlightLeg *)self dateLastUpdated];
            v31 = v30 = v27;
            v32 = [v6 dateLastUpdated];
            v14 = [v31 isEqual:v32];

            v18 = v44;
          }

          v33 = v39;
          v4 = v36;
          if (v40 == v39)
          {
LABEL_29:

            v23 = v43;
            v24 = v41;
            if (v43 == v41)
            {
              goto LABEL_31;
            }

            goto LABEL_30;
          }

LABEL_28:

          goto LABEL_29;
        }

        v14 = 0;
        v18 = v44;
        if (v16 == v17)
        {
LABEL_33:

          if (v11 == v12)
          {
LABEL_35:

            goto LABEL_8;
          }

LABEL_34:

          goto LABEL_35;
        }

LABEL_32:

        goto LABEL_33;
      }
    }
  }

  v14 = 0;
LABEL_8:

  return v14;
}

- (double)_currentProgress
{
  v3 = [(FUFlightLeg *)self departure];
  v4 = [v3 runwayTime];
  v5 = [v4 date];

  if (v5)
  {
    v6 = [(FUFlightLeg *)self arrival];
    v7 = [v6 runwayTime];
    v8 = [v7 date];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v14 = [(FUFlightLeg *)self arrival];
      v15 = [v14 time];
      v10 = [v15 date];
    }

    v13 = 0.0;
    if (v10)
    {
      [v10 timeIntervalSinceDate:v5];
      v17 = v16;
      v18 = +[FUUtils testDate];
      v19 = v18;
      if (v18)
      {
        [v18 timeIntervalSinceDate:v5];
        v21 = v20;
      }

      else
      {
        v22 = [MEMORY[0x277CBEAA8] date];
        [v22 timeIntervalSinceDate:v5];
        v21 = v23;
      }

      v24 = v21 / v17;

      if (v24 <= 1.0)
      {
        if (v24 >= 0.0)
        {
          v13 = v24;
        }
      }

      else
      {
        v13 = 1.0;
      }
    }
  }

  else
  {
    v10 = [(FUFlightLeg *)self departure];
    v11 = [v10 time];
    v12 = [v11 date];
    if (v12)
    {
      v13 = 0.0;
    }

    else
    {
      v13 = -1.0;
    }
  }

  return v13;
}

- (double)currentProgress
{
  if (self->_legacy)
  {

    [(FUFlightLeg *)self _currentProgress];
  }

  else
  {
    v4 = [(FUFlightLeg *)self _computedFlightStateWithBuffer:0];
    result = 0.0;
    if (v4 <= 9)
    {
      if (((1 << v4) & 0x391) != 0)
      {
        return -1.0;
      }

      else if (((1 << v4) & 0x2C) != 0)
      {

        [(FUFlightLeg *)self _calculateCurrentProgress];
      }

      else if (v4 == 6)
      {
        return 1.0;
      }
    }
  }

  return result;
}

- (int64_t)computedFlightState
{
  v3 = [(FUFlightLeg *)self _computedFlightStateWithBuffer:1];
  if (v3 >= [(FUFlightLeg *)self flightState])
  {
    return v3;
  }

  v4 = [(FUFlightLeg *)self description];
  NSLog(&cfstr_ComputedFuflig.isa, v4);

  return [(FUFlightLeg *)self flightState];
}

- (id)baggageClaim
{
  v2 = [(FUFlightLeg *)self arrivalInfo];
  v3 = [v2 baggageClaim];

  return v3;
}

- (NSDate)dateOfNextExpectedUpdate
{
  v3 = [(FUFlightLeg *)self _computedFlightStateWithBuffer:0];
  v4 = 0;
  if (v3 <= 2)
  {
    if (v3 != 1)
    {
      if (v3 != 2)
      {
        goto LABEL_15;
      }

      v5 = [(FUFlightLeg *)self departureInfo];
      v6 = [v5 runwayBufferMinutes];
      v7 = [v6 integerValue];

      v8 = [(FUFlightLeg *)self departureInfo];
      goto LABEL_11;
    }

    v11 = [(FUFlightLeg *)self departureInfo];
    v12 = [v11 gateBufferMinutes];
    v7 = [v12 integerValue];

    v13 = [(FUFlightLeg *)self departureInfo];
LABEL_13:
    v17 = v13;
    v18 = [v13 currentGateTime];
    goto LABEL_14;
  }

  if (v3 != 3)
  {
    if (v3 != 5)
    {
      goto LABEL_15;
    }

    v9 = [(FUFlightLeg *)self arrivalInfo];
    v10 = v9;
    goto LABEL_12;
  }

  v14 = [(FUFlightLeg *)self arrivalInfo];
  v15 = [v14 currentRunwayTime];

  v9 = [(FUFlightLeg *)self arrivalInfo];
  v10 = v9;
  if (!v15)
  {
LABEL_12:
    v19 = [v9 gateBufferMinutes];
    v7 = [v19 integerValue];

    v13 = [(FUFlightLeg *)self arrivalInfo];
    goto LABEL_13;
  }

  v16 = [v9 runwayBufferMinutes];
  v7 = [v16 integerValue];

  v8 = [(FUFlightLeg *)self arrivalInfo];
LABEL_11:
  v17 = v8;
  v18 = [v8 currentRunwayTime];
LABEL_14:
  v20 = v18;
  v4 = _DateAdjustedForwardByMinutes(v18, v7 + 1);

LABEL_15:

  return v4;
}

- (id)description
{
  v18 = MEMORY[0x277CCACA8];
  v19 = [(FUFlightLeg *)self departure];
  v3 = [v19 airport];
  v4 = [v3 IATACode];
  v5 = [(FUFlightLeg *)self arrival];
  v6 = [v5 airport];
  v7 = [v6 IATACode];
  v8 = [(FUFlightLeg *)self flightState];
  if (v8 >= 0xA)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown FUFlightState: %ld", -[FUFlightLeg flightState](self, "flightState")];
  }

  else
  {
    v9 = off_279012BC8[v8];
  }

  v10 = [(FUFlightLeg *)self _computedFlightStateWithBuffer:1];
  if (v10 >= 0xA)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown FUFlightState: %ld", -[FUFlightLeg _computedFlightStateWithBuffer:](self, "_computedFlightStateWithBuffer:", 1)];
  }

  else
  {
    v11 = off_279012BC8[v10];
  }

  [(FUFlightLeg *)self currentProgress];
  v13 = v12 * 100.0;
  v14 = [(FUFlightLeg *)self departureInfo];
  v15 = [(FUFlightLeg *)self arrivalInfo];
  v16 = [v18 stringWithFormat:@"Leg: %@ => %@  \n  Flight State: %@  \n  Computed Flight State: %@  \n  Current Progress: %.1f%%  \n  Departure Info: %@  \n  Arrival Info: %@", v4, v7, v9, v11, *&v13, v14, v15];

  return v16;
}

- (double)_calculateCurrentProgress
{
  v3 = [(FUFlightLeg *)self departureInfo];
  v4 = [v3 currentRunwayTime];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(FUFlightLeg *)self departureInfo];
    v6 = [v7 currentGateTime];
  }

  v8 = [(FUFlightLeg *)self arrivalInfo];
  v9 = [v8 currentRunwayTime];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v12 = [(FUFlightLeg *)self arrivalInfo];
    v11 = [v12 currentGateTime];
  }

  v13 = 0.0;
  if (v6)
  {
    if (v11)
    {
      [v11 timeIntervalSinceDate:v6];
      v15 = v14;
      v16 = [(FUFlightLeg *)self _nowDate];
      [v16 timeIntervalSinceDate:v6];
      v18 = v17 / v15;

      v13 = 1.0;
      if (v18 <= 1.0)
      {
        v13 = v18;
        if (v18 < 0.0)
        {
          v13 = 0.0;
        }
      }
    }
  }

  return v13;
}

- (int64_t)_computedFlightStateWithBuffer:(BOOL)a3
{
  v3 = a3;
  if ([(FUFlightLeg *)self flightState]== 6 || (v5 = [(FUFlightLeg *)self flightState], v5 <= 9) && ((1 << v5) & 0x391) != 0)
  {

    return [(FUFlightLeg *)self flightState];
  }

  else
  {
    v7 = [(FUFlightLeg *)self _nowDate];
    aBlock = MEMORY[0x277D85DD0];
    v35 = 3221225472;
    v36 = __46__FUFlightLeg__computedFlightStateWithBuffer___block_invoke;
    v37 = &unk_279012BA8;
    v38 = v7;
    v8 = v7;
    v9 = _Block_copy(&aBlock);
    if (v3)
    {
      v10 = [(FUFlightLeg *)self arrivalInfo];
      v11 = [v10 gateBufferMinutes];

      v12 = [(FUFlightLeg *)self arrivalInfo];
      v13 = [v12 runwayBufferMinutes];

      v14 = [(FUFlightLeg *)self departureInfo];
      v15 = [v14 runwayBufferMinutes];

      v16 = [(FUFlightLeg *)self departureInfo];
      v17 = [v16 gateBufferMinutes];
    }

    else
    {
      v17 = &unk_285EAE5D0;
      v13 = &unk_285EAE5D0;
      v11 = &unk_285EAE5D0;
      v15 = &unk_285EAE5D0;
    }

    v18 = [(FUFlightLeg *)self arrivalInfo:v8];
    v19 = [v18 currentGateTime];
    v20 = v9[2](v9, v19, v11);

    if (v20)
    {
      v21 = 6;
    }

    else
    {
      v22 = [(FUFlightLeg *)self arrivalInfo];
      v23 = [v22 currentRunwayTime];
      v24 = v9[2](v9, v23, v13);

      if (v24)
      {
        v21 = 5;
      }

      else
      {
        v25 = [(FUFlightLeg *)self departureInfo];
        v26 = [v25 currentRunwayTime];
        v27 = v9[2](v9, v26, v15);

        if (v27)
        {
          v21 = 3;
        }

        else
        {
          v28 = [(FUFlightLeg *)self departureInfo];
          v29 = [v28 currentGateTime];
          v30 = v9[2](v9, v29, v17);

          if (v30)
          {
            v31 = [(FUFlightLeg *)self departureInfo];
            v32 = [v31 currentRunwayTime];
            if (v32)
            {
              v21 = 2;
            }

            else
            {
              v21 = 3;
            }
          }

          else
          {
            v21 = 1;
          }
        }
      }
    }

    return v21;
  }
}

BOOL __46__FUFlightLeg__computedFlightStateWithBuffer___block_invoke(uint64_t a1, void *a2, void *a3)
{
  if (!a2)
  {
    return 0;
  }

  v5 = a2;
  v6 = _DateAdjustedForwardByMinutes(v5, [a3 integerValue]);

  v7 = [v6 compare:*(a1 + 32)] == -1;
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v15 = a3;
  [v15 encodeInteger:-[FUFlightLeg status](self forKey:{"status"), @"status"}];
  [(FUFlightLeg *)self duration];
  [v15 encodeDouble:@"duration" forKey:?];
  v4 = [(FUFlightLeg *)self departure];

  if (v4)
  {
    v5 = [(FUFlightLeg *)self departure];
    [v15 encodeObject:v5 forKey:@"departure"];
  }

  v6 = [(FUFlightLeg *)self arrival];

  if (v6)
  {
    v7 = [(FUFlightLeg *)self arrival];
    [v15 encodeObject:v7 forKey:@"arrival"];
  }

  [v15 encodeInteger:-[FUFlightLeg flightState](self forKey:{"flightState"), @"flightState"}];
  v8 = [(FUFlightLeg *)self departureInfo];

  if (v8)
  {
    v9 = [(FUFlightLeg *)self departureInfo];
    [v15 encodeObject:v9 forKey:@"departureInfo"];
  }

  v10 = [(FUFlightLeg *)self arrivalInfo];

  if (v10)
  {
    v11 = [(FUFlightLeg *)self arrivalInfo];
    [v15 encodeObject:v11 forKey:@"arrivalInfo"];
  }

  v12 = [(FUFlightLeg *)self dateLastUpdated];

  v13 = v15;
  if (v12)
  {
    v14 = [(FUFlightLeg *)self dateLastUpdated];
    [v15 encodeObject:v14 forKey:@"dateLastUpdated"];

    v13 = v15;
  }
}

- (FUFlightLeg)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = FUFlightLeg;
  v5 = [(FUFlightLeg *)&v19 init];
  if (v5)
  {
    v5->_status = [v4 decodeIntegerForKey:@"status"];
    [v4 decodeDoubleForKey:@"duration"];
    v5->_duration = v6;
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"departure"];
    departure = v5->_departure;
    v5->_departure = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"arrival"];
    arrival = v5->_arrival;
    v5->_arrival = v9;

    v5->_flightState = [v4 decodeIntForKey:@"flightState"];
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"arrivalInfo"];
    arrivalInfo = v5->_arrivalInfo;
    v5->_arrivalInfo = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"departureInfo"];
    departureInfo = v5->_departureInfo;
    v5->_departureInfo = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dateLastUpdated"];
    dateLastUpdated = v5->_dateLastUpdated;
    v5->_dateLastUpdated = v15;

    v17 = v5;
  }

  return v5;
}

@end