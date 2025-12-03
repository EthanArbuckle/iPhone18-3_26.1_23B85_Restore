@interface FUFlightLeg
- (BOOL)isEqual:(id)equal;
- (FUFlightLeg)initWithCoder:(id)coder;
- (FUFlightLeg)initWithStatus:(int64_t)status duration:(double)duration departure:(id)departure arrival:(id)arrival flightState:(int64_t)state departureInfo:(id)info arrivalInfo:(id)arrivalInfo dateLastUpdated:(id)self0;
- (NSDate)dateOfNextExpectedUpdate;
- (double)_calculateCurrentProgress;
- (double)_currentProgress;
- (double)currentProgress;
- (id)baggageClaim;
- (id)description;
- (int64_t)_computedFlightStateWithBuffer:(BOOL)buffer;
- (int64_t)computedFlightState;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FUFlightLeg

- (FUFlightLeg)initWithStatus:(int64_t)status duration:(double)duration departure:(id)departure arrival:(id)arrival flightState:(int64_t)state departureInfo:(id)info arrivalInfo:(id)arrivalInfo dateLastUpdated:(id)self0
{
  departureCopy = departure;
  arrivalCopy = arrival;
  infoCopy = info;
  arrivalInfoCopy = arrivalInfo;
  updatedCopy = updated;
  v28.receiver = self;
  v28.super_class = FUFlightLeg;
  v21 = [(FUFlightLeg *)&v28 init];
  v22 = v21;
  if (v21)
  {
    v21->_status = status;
    v21->_duration = duration;
    objc_storeStrong(&v21->_departure, departure);
    objc_storeStrong(&v22->_arrival, arrival);
    v22->_flightState = state;
    objc_storeStrong(&v22->_departureInfo, info);
    objc_storeStrong(&v22->_arrivalInfo, arrivalInfo);
    v23 = [updatedCopy copy];
    dateLastUpdated = v22->_dateLastUpdated;
    v22->_dateLastUpdated = v23;
  }

  return v22;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    status = [(FUFlightLeg *)self status];
    if (status == [equalCopy status])
    {
      [(FUFlightLeg *)self duration];
      v9 = v8;
      [equalCopy duration];
      if (v9 == v10)
      {
        arrival = [(FUFlightLeg *)self arrival];
        arrival2 = [equalCopy arrival];
        if (arrival != arrival2)
        {
          arrival3 = [(FUFlightLeg *)self arrival];
          arrival4 = [equalCopy arrival];
          v45 = arrival3;
          if (![arrival3 isEqual:arrival4])
          {
            v14 = 0;
            goto LABEL_34;
          }
        }

        departure = [(FUFlightLeg *)self departure];
        departure2 = [equalCopy departure];
        if (departure != departure2)
        {
          departure3 = [(FUFlightLeg *)self departure];
          departure4 = [equalCopy departure];
          if (![departure3 isEqual:departure4])
          {
            v14 = 0;
            goto LABEL_32;
          }

          v44 = departure4;
        }

        flightState = [(FUFlightLeg *)self flightState];
        if (flightState == [equalCopy flightState])
        {
          departureInfo = [(FUFlightLeg *)self departureInfo];
          [equalCopy departureInfo];
          v42 = arrival4;
          v41 = v43 = departureInfo;
          v21 = departureInfo == v41;
          departure4 = v44;
          if (!v21)
          {
            departureInfo2 = [(FUFlightLeg *)self departureInfo];
            departureInfo3 = [equalCopy departureInfo];
            v38 = departureInfo2;
            if (![departureInfo2 isEqual:?])
            {
              v14 = 0;
              v23 = v43;
              v24 = v41;
LABEL_30:

LABEL_31:
              arrival4 = v42;
              if (departure == departure2)
              {
                goto LABEL_33;
              }

              goto LABEL_32;
            }
          }

          arrivalInfo = [(FUFlightLeg *)self arrivalInfo];
          arrivalInfo2 = [equalCopy arrivalInfo];
          v40 = arrivalInfo;
          if (arrivalInfo == arrivalInfo2)
          {
            v36 = departure3;
          }

          else
          {
            arrivalInfo3 = [(FUFlightLeg *)self arrivalInfo];
            arrivalInfo4 = [equalCopy arrivalInfo];
            v35 = arrivalInfo3;
            if (![arrivalInfo3 isEqual:?])
            {
              v14 = 0;
              v33 = arrivalInfo2;
              goto LABEL_28;
            }

            v36 = departure3;
          }

          dateLastUpdated = [(FUFlightLeg *)self dateLastUpdated];
          dateLastUpdated2 = [equalCopy dateLastUpdated];
          v29 = dateLastUpdated2;
          if (dateLastUpdated == dateLastUpdated2)
          {

            v14 = 1;
          }

          else
          {
            [(FUFlightLeg *)self dateLastUpdated];
            v31 = v30 = dateLastUpdated;
            dateLastUpdated3 = [equalCopy dateLastUpdated];
            v14 = [v31 isEqual:dateLastUpdated3];

            departure4 = v44;
          }

          v33 = arrivalInfo2;
          departure3 = v36;
          if (v40 == arrivalInfo2)
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
        departure4 = v44;
        if (departure == departure2)
        {
LABEL_33:

          if (arrival == arrival2)
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
  departure = [(FUFlightLeg *)self departure];
  runwayTime = [departure runwayTime];
  date = [runwayTime date];

  if (date)
  {
    arrival = [(FUFlightLeg *)self arrival];
    runwayTime2 = [arrival runwayTime];
    date2 = [runwayTime2 date];
    v9 = date2;
    if (date2)
    {
      date3 = date2;
    }

    else
    {
      arrival2 = [(FUFlightLeg *)self arrival];
      time = [arrival2 time];
      date3 = [time date];
    }

    v13 = 0.0;
    if (date3)
    {
      [date3 timeIntervalSinceDate:date];
      v17 = v16;
      v18 = +[FUUtils testDate];
      v19 = v18;
      if (v18)
      {
        [v18 timeIntervalSinceDate:date];
        v21 = v20;
      }

      else
      {
        date4 = [MEMORY[0x277CBEAA8] date];
        [date4 timeIntervalSinceDate:date];
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
    date3 = [(FUFlightLeg *)self departure];
    time2 = [date3 time];
    date5 = [time2 date];
    if (date5)
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
  arrivalInfo = [(FUFlightLeg *)self arrivalInfo];
  baggageClaim = [arrivalInfo baggageClaim];

  return baggageClaim;
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

      departureInfo = [(FUFlightLeg *)self departureInfo];
      runwayBufferMinutes = [departureInfo runwayBufferMinutes];
      integerValue = [runwayBufferMinutes integerValue];

      departureInfo2 = [(FUFlightLeg *)self departureInfo];
      goto LABEL_11;
    }

    departureInfo3 = [(FUFlightLeg *)self departureInfo];
    gateBufferMinutes = [departureInfo3 gateBufferMinutes];
    integerValue = [gateBufferMinutes integerValue];

    departureInfo4 = [(FUFlightLeg *)self departureInfo];
LABEL_13:
    v17 = departureInfo4;
    currentGateTime = [departureInfo4 currentGateTime];
    goto LABEL_14;
  }

  if (v3 != 3)
  {
    if (v3 != 5)
    {
      goto LABEL_15;
    }

    arrivalInfo = [(FUFlightLeg *)self arrivalInfo];
    v10 = arrivalInfo;
    goto LABEL_12;
  }

  arrivalInfo2 = [(FUFlightLeg *)self arrivalInfo];
  currentRunwayTime = [arrivalInfo2 currentRunwayTime];

  arrivalInfo = [(FUFlightLeg *)self arrivalInfo];
  v10 = arrivalInfo;
  if (!currentRunwayTime)
  {
LABEL_12:
    gateBufferMinutes2 = [arrivalInfo gateBufferMinutes];
    integerValue = [gateBufferMinutes2 integerValue];

    departureInfo4 = [(FUFlightLeg *)self arrivalInfo];
    goto LABEL_13;
  }

  runwayBufferMinutes2 = [arrivalInfo runwayBufferMinutes];
  integerValue = [runwayBufferMinutes2 integerValue];

  departureInfo2 = [(FUFlightLeg *)self arrivalInfo];
LABEL_11:
  v17 = departureInfo2;
  currentGateTime = [departureInfo2 currentRunwayTime];
LABEL_14:
  v20 = currentGateTime;
  v4 = _DateAdjustedForwardByMinutes(currentGateTime, integerValue + 1);

LABEL_15:

  return v4;
}

- (id)description
{
  v18 = MEMORY[0x277CCACA8];
  departure = [(FUFlightLeg *)self departure];
  airport = [departure airport];
  iATACode = [airport IATACode];
  arrival = [(FUFlightLeg *)self arrival];
  airport2 = [arrival airport];
  iATACode2 = [airport2 IATACode];
  flightState = [(FUFlightLeg *)self flightState];
  if (flightState >= 0xA)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown FUFlightState: %ld", -[FUFlightLeg flightState](self, "flightState")];
  }

  else
  {
    v9 = off_279012BC8[flightState];
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
  departureInfo = [(FUFlightLeg *)self departureInfo];
  arrivalInfo = [(FUFlightLeg *)self arrivalInfo];
  v16 = [v18 stringWithFormat:@"Leg: %@ => %@  \n  Flight State: %@  \n  Computed Flight State: %@  \n  Current Progress: %.1f%%  \n  Departure Info: %@  \n  Arrival Info: %@", iATACode, iATACode2, v9, v11, *&v13, departureInfo, arrivalInfo];

  return v16;
}

- (double)_calculateCurrentProgress
{
  departureInfo = [(FUFlightLeg *)self departureInfo];
  currentRunwayTime = [departureInfo currentRunwayTime];
  v5 = currentRunwayTime;
  if (currentRunwayTime)
  {
    currentGateTime = currentRunwayTime;
  }

  else
  {
    departureInfo2 = [(FUFlightLeg *)self departureInfo];
    currentGateTime = [departureInfo2 currentGateTime];
  }

  arrivalInfo = [(FUFlightLeg *)self arrivalInfo];
  currentRunwayTime2 = [arrivalInfo currentRunwayTime];
  v10 = currentRunwayTime2;
  if (currentRunwayTime2)
  {
    currentGateTime2 = currentRunwayTime2;
  }

  else
  {
    arrivalInfo2 = [(FUFlightLeg *)self arrivalInfo];
    currentGateTime2 = [arrivalInfo2 currentGateTime];
  }

  v13 = 0.0;
  if (currentGateTime)
  {
    if (currentGateTime2)
    {
      [currentGateTime2 timeIntervalSinceDate:currentGateTime];
      v15 = v14;
      _nowDate = [(FUFlightLeg *)self _nowDate];
      [_nowDate timeIntervalSinceDate:currentGateTime];
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

- (int64_t)_computedFlightStateWithBuffer:(BOOL)buffer
{
  bufferCopy = buffer;
  if ([(FUFlightLeg *)self flightState]== 6 || (v5 = [(FUFlightLeg *)self flightState], v5 <= 9) && ((1 << v5) & 0x391) != 0)
  {

    return [(FUFlightLeg *)self flightState];
  }

  else
  {
    _nowDate = [(FUFlightLeg *)self _nowDate];
    aBlock = MEMORY[0x277D85DD0];
    v35 = 3221225472;
    v36 = __46__FUFlightLeg__computedFlightStateWithBuffer___block_invoke;
    v37 = &unk_279012BA8;
    v38 = _nowDate;
    v8 = _nowDate;
    v9 = _Block_copy(&aBlock);
    if (bufferCopy)
    {
      arrivalInfo = [(FUFlightLeg *)self arrivalInfo];
      gateBufferMinutes = [arrivalInfo gateBufferMinutes];

      arrivalInfo2 = [(FUFlightLeg *)self arrivalInfo];
      runwayBufferMinutes = [arrivalInfo2 runwayBufferMinutes];

      departureInfo = [(FUFlightLeg *)self departureInfo];
      runwayBufferMinutes2 = [departureInfo runwayBufferMinutes];

      departureInfo2 = [(FUFlightLeg *)self departureInfo];
      gateBufferMinutes2 = [departureInfo2 gateBufferMinutes];
    }

    else
    {
      gateBufferMinutes2 = &unk_285EAE5D0;
      runwayBufferMinutes = &unk_285EAE5D0;
      gateBufferMinutes = &unk_285EAE5D0;
      runwayBufferMinutes2 = &unk_285EAE5D0;
    }

    v18 = [(FUFlightLeg *)self arrivalInfo:v8];
    currentGateTime = [v18 currentGateTime];
    v20 = v9[2](v9, currentGateTime, gateBufferMinutes);

    if (v20)
    {
      v21 = 6;
    }

    else
    {
      arrivalInfo3 = [(FUFlightLeg *)self arrivalInfo];
      currentRunwayTime = [arrivalInfo3 currentRunwayTime];
      v24 = v9[2](v9, currentRunwayTime, runwayBufferMinutes);

      if (v24)
      {
        v21 = 5;
      }

      else
      {
        departureInfo3 = [(FUFlightLeg *)self departureInfo];
        currentRunwayTime2 = [departureInfo3 currentRunwayTime];
        v27 = v9[2](v9, currentRunwayTime2, runwayBufferMinutes2);

        if (v27)
        {
          v21 = 3;
        }

        else
        {
          departureInfo4 = [(FUFlightLeg *)self departureInfo];
          currentGateTime2 = [departureInfo4 currentGateTime];
          v30 = v9[2](v9, currentGateTime2, gateBufferMinutes2);

          if (v30)
          {
            departureInfo5 = [(FUFlightLeg *)self departureInfo];
            currentRunwayTime3 = [departureInfo5 currentRunwayTime];
            if (currentRunwayTime3)
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[FUFlightLeg status](self forKey:{"status"), @"status"}];
  [(FUFlightLeg *)self duration];
  [coderCopy encodeDouble:@"duration" forKey:?];
  departure = [(FUFlightLeg *)self departure];

  if (departure)
  {
    departure2 = [(FUFlightLeg *)self departure];
    [coderCopy encodeObject:departure2 forKey:@"departure"];
  }

  arrival = [(FUFlightLeg *)self arrival];

  if (arrival)
  {
    arrival2 = [(FUFlightLeg *)self arrival];
    [coderCopy encodeObject:arrival2 forKey:@"arrival"];
  }

  [coderCopy encodeInteger:-[FUFlightLeg flightState](self forKey:{"flightState"), @"flightState"}];
  departureInfo = [(FUFlightLeg *)self departureInfo];

  if (departureInfo)
  {
    departureInfo2 = [(FUFlightLeg *)self departureInfo];
    [coderCopy encodeObject:departureInfo2 forKey:@"departureInfo"];
  }

  arrivalInfo = [(FUFlightLeg *)self arrivalInfo];

  if (arrivalInfo)
  {
    arrivalInfo2 = [(FUFlightLeg *)self arrivalInfo];
    [coderCopy encodeObject:arrivalInfo2 forKey:@"arrivalInfo"];
  }

  dateLastUpdated = [(FUFlightLeg *)self dateLastUpdated];

  v13 = coderCopy;
  if (dateLastUpdated)
  {
    dateLastUpdated2 = [(FUFlightLeg *)self dateLastUpdated];
    [coderCopy encodeObject:dateLastUpdated2 forKey:@"dateLastUpdated"];

    v13 = coderCopy;
  }
}

- (FUFlightLeg)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = FUFlightLeg;
  v5 = [(FUFlightLeg *)&v19 init];
  if (v5)
  {
    v5->_status = [coderCopy decodeIntegerForKey:@"status"];
    [coderCopy decodeDoubleForKey:@"duration"];
    v5->_duration = v6;
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"departure"];
    departure = v5->_departure;
    v5->_departure = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"arrival"];
    arrival = v5->_arrival;
    v5->_arrival = v9;

    v5->_flightState = [coderCopy decodeIntForKey:@"flightState"];
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"arrivalInfo"];
    arrivalInfo = v5->_arrivalInfo;
    v5->_arrivalInfo = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"departureInfo"];
    departureInfo = v5->_departureInfo;
    v5->_departureInfo = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateLastUpdated"];
    dateLastUpdated = v5->_dateLastUpdated;
    v5->_dateLastUpdated = v15;

    v17 = v5;
  }

  return v5;
}

@end