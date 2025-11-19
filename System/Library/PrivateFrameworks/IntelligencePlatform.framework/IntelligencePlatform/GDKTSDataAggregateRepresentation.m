@interface GDKTSDataAggregateRepresentation
- (GDKTSDataAggregateRepresentation)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GDKTSDataAggregateRepresentation

- (id)description
{
  v14.receiver = self;
  v14.super_class = GDKTSDataAggregateRepresentation;
  v3 = [(GDKTSDataRepresentation *)&v14 description];
  v4 = [v3 substringToIndex:{objc_msgSend(v3, "length") - 2}];
  maxTripDistanceInMeters = self->_maxTripDistanceInMeters;
  percentDistanceTraveledAtSpeedBuckets = self->_percentDistanceTraveledAtSpeedBuckets;
  percentDistanceTraveledAtRelativeSpeeds = self->_percentDistanceTraveledAtRelativeSpeeds;
  percentDistanceTraveledInWeatherTypes = self->_percentDistanceTraveledInWeatherTypes;
  scorePerSpeedBucket = self->_scorePerSpeedBucket;
  avgNumBrakingEvents = self->_avgNumBrakingEvents;
  avgNumHighSpeedEvents = self->_avgNumHighSpeedEvents;
  v12 = [v4 stringByAppendingFormat:@", \nnumTrips: %d, \nmaxDistance: %@, \navgDistance: %@, \nmaxElevationGain: %@, \navgElevationGain: %@, \npercentTimeAtSpeedBuckets: %@, \npercentTimeAtTrafficBuckets: %@, \npercentTimeAtRelativeSpeeds: %@, \npercentTimeSpentAtRoadTypes: %@, \npercentTimeSpentInWeatherTypes: %@, \npercentTimeSpentInTerrainTypes: %@, \npercentDistanceTraveledAtSpeedBuckets: %@, \npercentDistanceTraveledAtTrafficBuckets: %@, \npercentDistanceTraveledAtRelativeSpeeds: %@, \npercentDistanceTraveledForRoadTypes: %@, \npercentDistanceTraveledInWeatherTypes: %@, \npercentDistanceTraveledInTerrainTypes: %@, \nscorePerSpeedBucket: %@, \nscorePerTrafficBucket: %@, \nscorePerRelativeSpeed: %@, \nscorePerRoadType: %@, \nscorePerWeatherType: %@, \nscorePerTerrainType: %@, \navgNumBrakingEvents: %lf, \navgNumHighSpeedEvents: %lf, \navgNumAccelEvents: %lf, \nmostEfficientDriveScore: %lf>", self->_numTrips, maxTripDistanceInMeters, self->_avgTripDistanceInMeters, self->_maxElevationGainInMeters, self->_avgElevationGainInMeters, self->_percentTimeSpentAtSpeedBuckets, self->_percentTimeSpentAtTrafficBuckets, self->_percentTimeSpentAtRelativeSpeeds, self->_percentTimeSpentAtRoadTypes, self->_percentTimeSpentInWeatherTypes, self->_percentTimeSpentInTerrainTypes, percentDistanceTraveledAtSpeedBuckets, self->_percentDistanceTraveledAtTrafficBuckets, percentDistanceTraveledAtRelativeSpeeds, self->_percentDistanceTraveledForRoadTypes, percentDistanceTraveledInWeatherTypes, self->_percentDistanceTraveledInTerrainTypes, scorePerSpeedBucket, self->_scorePerTrafficBucket, self->_scorePerRelativeSpeed, self->_scorePerRoadType, self->_scorePerWeatherType, self->_scorePerTerrainType, *&avgNumBrakingEvents, *&self->_avgNumAccelEvents, *&avgNumHighSpeedEvents, *&self->_mostEfficientDriveScore];

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v59.receiver = self;
  v59.super_class = GDKTSDataAggregateRepresentation;
  v5 = [(GDKTSDataRepresentation *)&v59 copyWithZone:?];
  v6 = [(NSMeasurement *)self->_maxTripDistanceInMeters copyWithZone:a3];
  v7 = v5[34];
  v5[34] = v6;

  v8 = [(NSMeasurement *)self->_avgTripDistanceInMeters copyWithZone:a3];
  v9 = v5[35];
  v5[35] = v8;

  v10 = [(NSMeasurement *)self->_maxElevationGainInMeters copyWithZone:a3];
  v11 = v5[36];
  v5[36] = v10;

  v12 = [(NSMeasurement *)self->_avgElevationGainInMeters copyWithZone:a3];
  v13 = v5[37];
  v5[37] = v12;

  v14 = [(NSArray *)self->_percentTimeSpentAtSpeedBuckets copyWithZone:a3];
  v15 = v5[38];
  v5[38] = v14;

  v16 = [(NSArray *)self->_percentTimeSpentAtTrafficBuckets copyWithZone:a3];
  v17 = v5[39];
  v5[39] = v16;

  v18 = [(NSArray *)self->_percentTimeSpentAtRelativeSpeeds copyWithZone:a3];
  v19 = v5[40];
  v5[40] = v18;

  v20 = [(NSArray *)self->_percentTimeSpentAtSpeedBuckets copyWithZone:a3];
  v21 = v5[38];
  v5[38] = v20;

  v22 = [(NSArray *)self->_percentTimeSpentAtTrafficBuckets copyWithZone:a3];
  v23 = v5[39];
  v5[39] = v22;

  v24 = [(NSArray *)self->_percentTimeSpentAtRelativeSpeeds copyWithZone:a3];
  v25 = v5[40];
  v5[40] = v24;

  v26 = [(NSArray *)self->_percentTimeSpentAtRoadTypes copyWithZone:a3];
  v27 = v5[41];
  v5[41] = v26;

  v28 = [(NSArray *)self->_percentTimeSpentInWeatherTypes copyWithZone:a3];
  v29 = v5[42];
  v5[42] = v28;

  v30 = [(NSArray *)self->_percentTimeSpentInTerrainTypes copyWithZone:a3];
  v31 = v5[43];
  v5[43] = v30;

  v32 = [(NSArray *)self->_percentDistanceTraveledAtSpeedBuckets copyWithZone:a3];
  v33 = v5[44];
  v5[44] = v32;

  v34 = [(NSArray *)self->_percentDistanceTraveledAtTrafficBuckets copyWithZone:a3];
  v35 = v5[45];
  v5[45] = v34;

  v36 = [(NSArray *)self->_percentDistanceTraveledAtRelativeSpeeds copyWithZone:a3];
  v37 = v5[46];
  v5[46] = v36;

  v38 = [(NSArray *)self->_percentDistanceTraveledForRoadTypes copyWithZone:a3];
  v39 = v5[47];
  v5[47] = v38;

  v40 = [(NSArray *)self->_percentDistanceTraveledInWeatherTypes copyWithZone:a3];
  v41 = v5[48];
  v5[48] = v40;

  v42 = [(NSArray *)self->_percentDistanceTraveledInTerrainTypes copyWithZone:a3];
  v43 = v5[49];
  v5[49] = v42;

  v44 = [(NSArray *)self->_scorePerSpeedBucket copyWithZone:a3];
  v45 = v5[50];
  v5[50] = v44;

  v46 = [(NSArray *)self->_scorePerTrafficBucket copyWithZone:a3];
  v47 = v5[51];
  v5[51] = v46;

  v48 = [(NSArray *)self->_scorePerRelativeSpeed copyWithZone:a3];
  v49 = v5[52];
  v5[52] = v48;

  v50 = [(NSArray *)self->_scorePerRoadType copyWithZone:a3];
  v51 = v5[53];
  v5[53] = v50;

  v52 = [(NSArray *)self->_scorePerWeatherType copyWithZone:a3];
  v53 = v5[54];
  v5[54] = v52;

  v54 = [(NSArray *)self->_scorePerTerrainType copyWithZone:a3];
  v55 = v5[55];
  v5[55] = v54;

  v5[56] = *&self->_avgNumBrakingEvents;
  v5[57] = *&self->_avgNumAccelEvents;
  v5[58] = *&self->_avgNumHighSpeedEvents;
  v5[59] = *&self->_mostEfficientDriveScore;
  v56 = [(NSDictionary *)self->_routeHeatMap copyWithZone:a3];
  v57 = v5[60];
  v5[60] = v56;

  return v5;
}

- (GDKTSDataAggregateRepresentation)initWithCoder:(id)a3
{
  v74[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v73.receiver = self;
  v73.super_class = GDKTSDataAggregateRepresentation;
  v5 = [(GDKTSDataRepresentation *)&v73 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_numTrips);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    v5->_numTrips = [v8 intValue];

    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = NSStringFromSelector(sel_maxTripDistanceInMeters);
    v13 = [v4 decodeObjectOfClasses:v11 forKey:v12];
    maxTripDistanceInMeters = v5->_maxTripDistanceInMeters;
    v5->_maxTripDistanceInMeters = v13;

    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
    v18 = NSStringFromSelector(sel_avgTripDistanceInMeters);
    v19 = [v4 decodeObjectOfClasses:v17 forKey:v18];
    avgTripDistanceInMeters = v5->_avgTripDistanceInMeters;
    v5->_avgTripDistanceInMeters = v19;

    v21 = MEMORY[0x1E695DFD8];
    v22 = objc_opt_class();
    v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
    v24 = NSStringFromSelector(sel_maxElevationGainInMeters);
    v25 = [v4 decodeObjectOfClasses:v23 forKey:v24];
    maxElevationGainInMeters = v5->_maxElevationGainInMeters;
    v5->_maxElevationGainInMeters = v25;

    v27 = MEMORY[0x1E695DFD8];
    v28 = objc_opt_class();
    v29 = [v27 setWithObjects:{v28, objc_opt_class(), 0}];
    v30 = NSStringFromSelector(sel_avgElevationGainInMeters);
    v31 = [v4 decodeObjectOfClasses:v29 forKey:v30];
    avgElevationGainInMeters = v5->_avgElevationGainInMeters;
    v5->_avgElevationGainInMeters = v31;

    v33 = MEMORY[0x1E695DFD8];
    v34 = objc_opt_class();
    v35 = objc_opt_class();
    v36 = objc_opt_class();
    v37 = [v33 setWithObjects:{v34, v35, v36, objc_opt_class(), 0}];
    v38 = NSStringFromSelector(sel_percentTimeSpentAtSpeedBuckets);
    v39 = [v4 decodeObjectOfClasses:v37 forKey:v38];
    percentTimeSpentAtSpeedBuckets = v5->_percentTimeSpentAtSpeedBuckets;
    v5->_percentTimeSpentAtSpeedBuckets = v39;

    v41 = MEMORY[0x1E695DFD8];
    v42 = objc_opt_class();
    v43 = objc_opt_class();
    v44 = objc_opt_class();
    v45 = [v41 setWithObjects:{v42, v43, v44, objc_opt_class(), 0}];
    v46 = NSStringFromSelector(sel_percentTimeSpentAtRelativeSpeeds);
    v47 = [v4 decodeObjectOfClasses:v45 forKey:v46];
    percentTimeSpentAtRelativeSpeeds = v5->_percentTimeSpentAtRelativeSpeeds;
    v5->_percentTimeSpentAtRelativeSpeeds = v47;

    v49 = objc_opt_class();
    v50 = NSStringFromSelector(sel_avgNumBrakingEvents);
    v51 = [v4 decodeObjectOfClass:v49 forKey:v50];
    [v51 doubleValue];
    v5->_avgNumBrakingEvents = v52;

    v53 = objc_opt_class();
    v54 = NSStringFromSelector(sel_avgNumAccelEvents);
    v55 = [v4 decodeObjectOfClass:v53 forKey:v54];
    [v55 doubleValue];
    v5->_avgNumAccelEvents = v56;

    v57 = objc_opt_class();
    v58 = NSStringFromSelector(sel_avgNumHighSpeedEvents);
    v59 = [v4 decodeObjectOfClass:v57 forKey:v58];
    [v59 doubleValue];
    v5->_avgNumHighSpeedEvents = v60;

    v61 = objc_opt_class();
    v62 = NSStringFromSelector(sel_mostEfficientDriveScore);
    v63 = [v4 decodeObjectOfClass:v61 forKey:v62];
    [v63 doubleValue];
    v5->_mostEfficientDriveScore = v64;

    v65 = MEMORY[0x1E695DFD8];
    v74[0] = objc_opt_class();
    v74[1] = objc_opt_class();
    v74[2] = objc_opt_class();
    v66 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:3];
    v67 = [v65 setWithArray:v66];
    v68 = NSStringFromSelector(sel_routeHeatMap);
    v69 = [v4 decodeObjectOfClasses:v67 forKey:v68];
    routeHeatMap = v5->_routeHeatMap;
    v5->_routeHeatMap = v69;
  }

  v71 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  percentTimeSpentAtSpeedBuckets = self->_percentTimeSpentAtSpeedBuckets;
  v5 = a3;
  v6 = NSStringFromSelector(sel_percentTimeSpentAtSpeedBuckets);
  [v5 encodeObject:percentTimeSpentAtSpeedBuckets forKey:v6];

  percentTimeSpentAtRelativeSpeeds = self->_percentTimeSpentAtRelativeSpeeds;
  v8 = NSStringFromSelector(sel_percentTimeSpentAtRelativeSpeeds);
  [v5 encodeObject:percentTimeSpentAtRelativeSpeeds forKey:v8];

  routeHeatMap = self->_routeHeatMap;
  v10 = NSStringFromSelector(sel_routeHeatMap);
  [v5 encodeObject:routeHeatMap forKey:v10];

  v11 = [MEMORY[0x1E696AD98] numberWithInteger:self->_numTrips];
  v12 = NSStringFromSelector(sel_numTrips);
  [v5 encodeObject:v11 forKey:v12];

  maxTripDistanceInMeters = self->_maxTripDistanceInMeters;
  v14 = NSStringFromSelector(sel_maxTripDistanceInMeters);
  [v5 encodeObject:maxTripDistanceInMeters forKey:v14];

  avgTripDistanceInMeters = self->_avgTripDistanceInMeters;
  v16 = NSStringFromSelector(sel_avgTripDistanceInMeters);
  [v5 encodeObject:avgTripDistanceInMeters forKey:v16];

  maxElevationGainInMeters = self->_maxElevationGainInMeters;
  v18 = NSStringFromSelector(sel_maxElevationGainInMeters);
  [v5 encodeObject:maxElevationGainInMeters forKey:v18];

  avgElevationGainInMeters = self->_avgElevationGainInMeters;
  v20 = NSStringFromSelector(sel_avgElevationGainInMeters);
  [v5 encodeObject:avgElevationGainInMeters forKey:v20];

  v21 = [MEMORY[0x1E696AD98] numberWithDouble:self->_avgNumBrakingEvents];
  v22 = NSStringFromSelector(sel_avgNumBrakingEvents);
  [v5 encodeObject:v21 forKey:v22];

  v23 = [MEMORY[0x1E696AD98] numberWithDouble:self->_avgNumAccelEvents];
  v24 = NSStringFromSelector(sel_avgNumAccelEvents);
  [v5 encodeObject:v23 forKey:v24];

  v25 = [MEMORY[0x1E696AD98] numberWithDouble:self->_avgNumHighSpeedEvents];
  v26 = NSStringFromSelector(sel_avgNumHighSpeedEvents);
  [v5 encodeObject:v25 forKey:v26];

  v27 = [MEMORY[0x1E696AD98] numberWithDouble:self->_mostEfficientDriveScore];
  v28 = NSStringFromSelector(sel_mostEfficientDriveScore);
  [v5 encodeObject:v27 forKey:v28];

  v29.receiver = self;
  v29.super_class = GDKTSDataAggregateRepresentation;
  [(GDKTSDataRepresentation *)&v29 encodeWithCoder:v5];
}

@end