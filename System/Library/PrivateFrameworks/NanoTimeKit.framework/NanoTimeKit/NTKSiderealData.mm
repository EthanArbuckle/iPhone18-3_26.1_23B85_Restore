@interface NTKSiderealData
+ (id)loadCached;
- ($E2C29196C7A5C696474C6955C5A9CE06)altitudeForProgress:(double)a3;
- (BOOL)_computeSunsetFollowsSunrise;
- (BOOL)isDateInReferenceDate:(id)a3;
- (NTKSiderealData)initWithCoder:(id)a3;
- (NTKSiderealData)initWithReferenceDate:(id)a3 referenceLocation:(id)a4 sunriseSunsetInfo:(id)a5 solarEvents:(id)a6 daytimeEvents:(id)a7 sectors:(id)a8 waypoints:(id)a9 altitudes:(float *)a10 useXR:(BOOL)a11;
- (id)_findSunriseTime;
- (id)_findSunsetTime;
- (id)_generateGradientDataForXR:(BOOL)a3;
- (id)applySunsetFilterToColor:(id)a3;
- (id)gradientWithSunsetFilterForDayProgress:(float)a3;
- (id)interpolateBetweenCalendricalMidnights:(double)a3;
- (void)encodeWithCoder:(id)a3;
- (void)save;
- (void)setSolarDayProgress:(double)a3;
- (void)updateSunsetFilter;
@end

@implementation NTKSiderealData

- (NTKSiderealData)initWithReferenceDate:(id)a3 referenceLocation:(id)a4 sunriseSunsetInfo:(id)a5 solarEvents:(id)a6 daytimeEvents:(id)a7 sectors:(id)a8 waypoints:(id)a9 altitudes:(float *)a10 useXR:(BOOL)a11
{
  v18 = a3;
  v19 = a4;
  v37 = a5;
  v36 = a6;
  v35 = a7;
  v34 = a8;
  v33 = a9;
  v38.receiver = self;
  v38.super_class = NTKSiderealData;
  v20 = [(NTKSiderealData *)&v38 init];
  v21 = v20;
  if (v20)
  {
    v32 = v19;
    objc_storeStrong(&v20->_referenceDate, a3);
    objc_storeStrong(&v21->_daytimeEvents, a7);
    objc_storeStrong(&v21->_sunriseSunsetInfo, a5);
    objc_storeStrong(&v21->_sectors, a8);
    objc_storeStrong(&v21->_waypoints, a9);
    objc_storeStrong(&v21->_referenceLocation, a4);
    objc_storeStrong(&v21->_solarEvents, a6);
    v21->_useXR = a11;
    for (i = 2; i != 363; ++i)
    {
      v24 = *a10++;
      *(&v21->super.isa + i) = v24;
    }

    v25 = [(NTKSiderealData *)v21 _generateGradientDataForXR:a11];
    gradientData = v21->_gradientData;
    v21->_gradientData = v25;

    v27 = [(NTKSiderealData *)v21 _findSunsetTime];
    sunsetTime = v21->_sunsetTime;
    v21->_sunsetTime = v27;

    v29 = [(NTKSiderealData *)v21 _findSunriseTime];
    sunriseTime = v21->_sunriseTime;
    v21->_sunriseTime = v29;

    v21->_sunsetFollowsSunrise = [(NTKSiderealData *)v21 _computeSunsetFollowsSunrise];
    v21->_isConstantSunUpOrDown = [(NTKSiderealData *)v21 _computeIsConstantSunUpOrDown];
    v21->_currentSolarDayProgress = -1.0;
    v19 = v32;
  }

  return v21;
}

- (NTKSiderealData)initWithCoder:(id)a3
{
  v43[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v40.receiver = self;
  v40.super_class = NTKSiderealData;
  v5 = [(NTKSiderealData *)&v40 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v43[0] = objc_opt_class();
    v43[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:2];
    v8 = [v6 setWithArray:v7];

    v9 = MEMORY[0x277CBEB98];
    v42[0] = objc_opt_class();
    v42[1] = objc_opt_class();
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:2];
    v11 = [v9 setWithArray:v10];

    v12 = MEMORY[0x277CBEB98];
    v41[0] = objc_opt_class();
    v41[1] = objc_opt_class();
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:2];
    v14 = [v12 setWithArray:v13];

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"referenceDate"];
    referenceDate = v5->_referenceDate;
    v5->_referenceDate = v15;

    v17 = [v4 decodeObjectOfClasses:v8 forKey:@"daytimeEvents"];
    daytimeEvents = v5->_daytimeEvents;
    v5->_daytimeEvents = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sunriseSunsetInfo"];
    sunriseSunsetInfo = v5->_sunriseSunsetInfo;
    v5->_sunriseSunsetInfo = v19;

    v21 = [v4 decodeObjectOfClasses:v11 forKey:@"sectors"];
    sectors = v5->_sectors;
    v5->_sectors = v21;

    v23 = [v4 decodeObjectOfClasses:v14 forKey:@"waypoints"];
    waypoints = v5->_waypoints;
    v5->_waypoints = v23;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"referenceLocation"];
    referenceLocation = v5->_referenceLocation;
    v5->_referenceLocation = v25;

    v27 = [v4 decodeObjectOfClasses:v8 forKey:@"solarEvents"];
    solarEvents = v5->_solarEvents;
    v5->_solarEvents = v27;

    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"altitudes"];
    v30 = [v29 bytes];
    v31 = [v29 length];
    if (v31 >= 0x5A4)
    {
      v32 = 1444;
    }

    else
    {
      v32 = v31;
    }

    memcpy(v5->_altitudes, v30, v32);
    v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"gradientData"];
    gradientData = v5->_gradientData;
    v5->_gradientData = v33;

    v5->_useXR = [v4 decodeBoolForKey:@"useXR"];
    v35 = [(NTKSiderealData *)v5 _findSunsetTime];
    sunsetTime = v5->_sunsetTime;
    v5->_sunsetTime = v35;

    v37 = [(NTKSiderealData *)v5 _findSunriseTime];
    sunriseTime = v5->_sunriseTime;
    v5->_sunriseTime = v37;

    v5->_sunsetFollowsSunrise = [(NTKSiderealData *)v5 _computeSunsetFollowsSunrise];
    v5->_isConstantSunUpOrDown = [(NTKSiderealData *)v5 _computeIsConstantSunUpOrDown];
    v5->_currentSolarDayProgress = -1.0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  referenceDate = self->_referenceDate;
  v6 = a3;
  [v6 encodeObject:referenceDate forKey:@"referenceDate"];
  [v6 encodeObject:self->_daytimeEvents forKey:@"daytimeEvents"];
  [v6 encodeObject:self->_sunriseSunsetInfo forKey:@"sunriseSunsetInfo"];
  [v6 encodeObject:self->_sectors forKey:@"sectors"];
  [v6 encodeObject:self->_waypoints forKey:@"waypoints"];
  [v6 encodeObject:self->_referenceLocation forKey:@"referenceLocation"];
  [v6 encodeObject:self->_solarEvents forKey:@"solarEvents"];
  v5 = [MEMORY[0x277CBEA90] dataWithBytes:self->_altitudes length:1444];
  [v6 encodeObject:v5 forKey:@"altitudes"];

  [v6 encodeObject:self->_gradientData forKey:@"gradientData"];
  [v6 encodeBool:self->_useXR forKey:@"useXR"];
}

- (void)save
{
  v4 = 0;
  v2 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v4];
  if (!v4)
  {
    v3 = _NTKSiderealDataCacheArchivePath();
    [v2 writeToFile:v3 atomically:0];
  }
}

+ (id)loadCached
{
  v2 = objc_alloc(MEMORY[0x277CBEA90]);
  v3 = _NTKSiderealDataCacheArchivePath();
  v4 = [v2 initWithContentsOfFile:v3 options:1 error:0];

  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v4 error:0];
    [v5 setDecodingFailurePolicy:0];
    v6 = [v5 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCA308]];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- ($E2C29196C7A5C696474C6955C5A9CE06)altitudeForProgress:(double)a3
{
  v3 = fmin(fmax(a3, 0.0), 1.0) * 360.0;
  v4 = v3;
  if (v3 > 359)
  {
    v9 = self->_altitudes[v4];
    v10 = 1.0;
    v8 = v9;
  }

  else
  {
    v5 = v3;
    v6 = v3 - truncf(v5);
    v7 = (self + 4 * v4);
    v8 = v7[2];
    v9 = v7[3];
    v10 = v6;
  }

  result.var2 = v10;
  result.var1 = v9;
  result.var0 = v8;
  return result;
}

- (BOOL)isDateInReferenceDate:(id)a3
{
  v4 = MEMORY[0x277CBEA80];
  v5 = a3;
  v6 = [v4 currentCalendar];
  LOBYTE(self) = [v6 isDate:v5 inSameDayAsDate:self->_referenceDate];

  return self;
}

- (id)interpolateBetweenCalendricalMidnights:(double)a3
{
  v5 = NTKStartOfDayForDate(self->_referenceDate);
  v6 = NTKEndOfDayForDate(self->_referenceDate);
  v7 = NTKInterpolateBetweenDates(v5, v6, a3);

  return v7;
}

- (id)_findSunsetTime
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(NSOrderedSet *)self->_solarEvents reverseObjectEnumerator];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        if ([v6 type] == 6)
        {
          v7 = [v6 time];

          if (v7)
          {
            v3 = [v6 time];
            goto LABEL_12;
          }
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v3;
}

- (id)_findSunriseTime
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_solarEvents;
  v3 = [(NSOrderedSet *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        if ([v6 type] == 4)
        {
          v7 = [v6 time];

          if (v7)
          {
            v3 = [v6 time];
            goto LABEL_12;
          }
        }
      }

      v3 = [(NSOrderedSet *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v3;
}

- (BOOL)_computeSunsetFollowsSunrise
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = self->_solarEvents;
  v3 = [(NSOrderedSet *)v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = *v15;
    while (1)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        if ([v8 type] == 4)
        {
          v9 = v4;
          v4 = v8;
          v10 = v5;
        }

        else
        {
          v9 = v5;
          v10 = v8;
          if ([v8 type] != 6)
          {
            continue;
          }
        }

        v11 = v8;

        v5 = v10;
      }

      v3 = [(NSOrderedSet *)v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (!v3)
      {

        if (v4 && v5)
        {
          v2 = [v4 time];
          v12 = [v5 time];
          LOBYTE(v3) = [(NSOrderedSet *)v2 compare:v12]== -1;

          goto LABEL_16;
        }

        goto LABEL_17;
      }
    }
  }

  v5 = 0;
  v4 = 0;
LABEL_16:

LABEL_17:
  return v3;
}

- (id)_generateGradientDataForXR:(BOOL)a3
{
  v3 = MEMORY[0x28223BE20](self, a2, a3);
  v5 = v4;
  v6 = v3;
  v80[2] = *MEMORY[0x277D85DE8];
  v7 = objc_opt_new();
  v8 = +[NTKSiderealColorManager sharedInstance];
  v9 = v8;
  if (v5)
  {
    v10 = [v8 dayGradientCurveP3];

    v11 = *MEMORY[0x277CDA7C8];
    v12 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C8]];
    v80[0] = v12;
    v13 = [MEMORY[0x277CD9EF8] functionWithName:v11];
    v80[1] = v13;
    v14 = v80;
  }

  else
  {
    v10 = [v8 dayGradientColorCurves];

    LODWORD(v15) = 1041865114;
    LODWORD(v16) = 0.25;
    LODWORD(v17) = 0.5;
    LODWORD(v18) = 1.0;
    v12 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v16 :v15 :v17 :v18];
    v79[0] = v12;
    LODWORD(v19) = 0.5;
    LODWORD(v20) = 1.0;
    LODWORD(v21) = 1.0;
    v13 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v19 :0.0 :v20 :v21];
    v79[1] = v13;
    v14 = v79;
  }

  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];

  v23 = 0;
  v24 = v78;
  do
  {
    [v6 altitudeForProgress:(v23 / 127.0)];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v31 = [v10 objectAtIndexedSubscript:0];
    LODWORD(v32) = v26;
    LODWORD(v33) = v28;
    LODWORD(v34) = v30;
    [v31 rgbfColorForAltitude:{v32, v33, v34}];
    *v24 = v35;

    v36 = [v10 objectAtIndexedSubscript:1];
    LODWORD(v37) = v26;
    LODWORD(v38) = v28;
    LODWORD(v39) = v30;
    [v36 rgbfColorForAltitude:{v37, v38, v39}];
    v24[128] = v40;

    v41 = [v10 objectAtIndexedSubscript:2];
    LODWORD(v42) = v26;
    LODWORD(v43) = v28;
    LODWORD(v44) = v30;
    [v41 rgbfColorForAltitude:{v42, v43, v44}];
    v24[256] = v45;

    ++v23;
    ++v24;
  }

  while (v23 != 128);
  v46 = 0;
  __asm { FMOV            V0.4S, #1.0 }

  v72 = _Q0;
  v73 = vdupq_n_s32(0x477FFF00u);
  do
  {
    v52 = 0;
    v53 = (v46 / -63.0) + 1.0;
    v54 = v53 > 0.5 || v53 <= 0.05;
    v56 = v53 < 0.9 && v53 > 0.5;
    do
    {
      v57 = &v78[v52];
      v58 = *&v78[v52];
      if (v53 <= 0.05)
      {
        goto LABEL_22;
      }

      if (v54)
      {
        v58 = v57[256];
        if (!v56)
        {
          goto LABEL_22;
        }

        v71 = v57[128];
        v74 = v57[256];
        CLKMapFractionIntoRange();
        v60 = v59;
        v61 = [v22 objectAtIndexedSubscript:1];
        *&v62 = v60;
        [v61 _solveForInput:v62];
        v64 = v71;
        v65 = v74;
      }

      else
      {
        v75 = *&v78[v52];
        v71 = v57[128];
        CLKMapFractionIntoRange();
        v67 = v66;
        v61 = [v22 objectAtIndexedSubscript:0];
        *&v68 = v67;
        [v61 _solveForInput:v68];
        v64 = v75;
        v65 = v71;
      }

      v76 = vmlaq_n_f32(v64, vsubq_f32(v65, v64), v63);

      v58 = v76;
LABEL_22:
      v58.i32[3] = 1.0;
      v77 = vmovn_s32(vcvtq_u32_f32(vmulq_f32(vminnmq_f32(vmaxnmq_f32(v58, 0), v72), v73)));
      [v7 appendBytes:&v77 length:{8, *&v71}];
      v52 += 16;
    }

    while (v52 != 2048);
    ++v46;
  }

  while (v46 != 64);
  v69 = [v7 copy];

  return v69;
}

- (void)updateSunsetFilter
{
  v22 = [(NTKSiderealData *)self sunriseSunsetInfo];
  v3 = [(NTKSiderealData *)self sunriseTime];
  v4 = [(NTKSiderealData *)self sunsetTime];
  v5 = [(NTKSiderealData *)self referenceDate];
  v6 = NTKEndOfDayForDate(v5);

  [v4 timeIntervalSinceDate:v3];
  v8 = v7;
  [v6 timeIntervalSinceDate:v4];
  v10 = v9;
  if (![(NTKSiderealData *)self sunsetFollowsSunrise])
  {
    self->_sunsetFilterEnabled = 0;
    goto LABEL_14;
  }

  v11 = [MEMORY[0x277CBEA80] currentCalendar];
  v12 = [(NTKSiderealData *)self referenceDate];
  v13 = [v11 components:160 fromDate:v12];

  [v13 setSecond:0];
  [v13 setHour:22];
  v14 = [(NTKSiderealData *)self referenceDate];
  v15 = [v11 nextDateAfterDate:v14 matchingComponents:v13 options:2];

  if (v8 < 14400.0)
  {
    goto LABEL_3;
  }

  if (v8 < 28800.0)
  {
    self->_sunsetFilterEnabled = 1;
    v16 = [v22 solarNoon];
LABEL_9:
    v17 = v16;
    if (v10 >= 7200.0)
    {
      v18 = v4;
    }

    else
    {
      v18 = v15;
    }

    v19 = v18;
    [NTKSiderealDataSource reverseInterpolateBetweenCalendricalMidnights:v17];
    *&v20 = v20;
    self->_sunsetFilterRampUpStartProgress = *&v20;
    [NTKSiderealDataSource reverseInterpolateBetweenCalendricalMidnights:v19];
    *&v21 = v21;
    self->_sunsetFilterRampDownStartProgress = *&v21;

    goto LABEL_13;
  }

  if (v8 < 72000.0)
  {
    self->_sunsetFilterEnabled = 1;
    v16 = [v4 dateByAddingTimeInterval:-14400.0];
    goto LABEL_9;
  }

LABEL_3:
  self->_sunsetFilterEnabled = 0;
LABEL_13:

LABEL_14:
}

- (void)setSolarDayProgress:(double)a3
{
  if ((CLKFloatEqualsFloat() & 1) == 0)
  {
    self->_currentSolarDayProgress = a3;
    v5 = 0.0;
    if (self->_sunsetFilterEnabled && self->_useXR)
    {
      v6 = a3;
      sunsetFilterRampUpStartProgress = self->_sunsetFilterRampUpStartProgress;
      v8 = ((self->_sunsetFilterRampDownStartProgress - sunsetFilterRampUpStartProgress) + -0.083333) * 0.5;
      v9 = ((v8 + 0.083333) / 0.083333) - fabsf((((v6 + -0.083333) - sunsetFilterRampUpStartProgress) - v8) / 0.083333);
      if (v9 < 0.0)
      {
        v9 = 0.0;
      }

      v5 = fminf(v9, 1.0);
    }

    self->_sunsetFilter = v5;
  }
}

- (id)applySunsetFilterToColor:(id)a3
{
  v3 = self->_sunsetFilter * -0.08 * 0.745;
  v8 = 0.0;
  v9 = 0.0;
  v6 = 0;
  v7 = 0;
  [a3 getRed:&v9 green:&v8 blue:&v7 alpha:&v6];
  v8 = v8 + v3;
  v4 = [MEMORY[0x277D75348] colorWithRed:v9 green:? blue:? alpha:?];

  return v4;
}

- (id)gradientWithSunsetFilterForDayProgress:(float)a3
{
  v21 = *MEMORY[0x277D85DE8];
  [(NTKSiderealData *)self updateSunsetFilter];
  v5 = a3;
  [(NTKSiderealData *)self setSolarDayProgress:v5];
  useXR = self->_useXR;
  v7 = +[NTKSiderealColorManager sharedInstance];
  v8 = v7;
  if (useXR)
  {
    [v7 dayGradientCurveP3];
  }

  else
  {
    [v7 dayGradientColorCurves];
  }
  v9 = ;

  [(NTKSiderealData *)self altitudeForProgress:v5];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [v9 objectAtIndexedSubscript:0];
  LODWORD(v17) = v11;
  LODWORD(v18) = v13;
  LODWORD(v19) = v15;
  [v16 rgbfColorForAltitude:{v17, v18, v19}];
  CLKUIConvertToXRSRGBfFromRGBf();
}

@end