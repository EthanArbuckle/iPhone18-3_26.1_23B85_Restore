@interface GDKTSDataRepresentation
- (GDKTSDataRepresentation)initWithCoder:(id)a3;
- (GDKTSDataRepresentation)initWithStartTime:(id)a3 endTime:(id)a4 distanceInMeters:(id)a5 elevationGainInMeters:(id)a6 distanceBuckets:(id)a7 durationInSeconds:(id)a8 expectedDurationInSecondsNoTraffic:(id)a9 distanceSpentInTrafficBuckets:(id)a10 timeSpentInTrafficBuckets:(id)a11 distanceSpentAtSpeedBuckets:(id)a12 timeSpentAtSpeedBuckets:(id)a13 distanceSpentAtRelativeSpeeds:(id)a14 timeSpentAtRelativeSpeeds:(id)a15 distancePerRoadType:(id)a16 timePerRoadType:(id)a17 distancePerWeatherType:(id)a18 timePerWeatherType:(id)a19 distancePerTerrainType:(id)a20 timePerTerrainType:(id)a21 averageSpeedInMetersPerSecond:(id)a22 score:(double)a23 usageKwh:(id)a24 optimalUsageKwh:(id)a25 numBrakingEvents:(int)a26 numAccelEvents:(int)a27 numHighSpeedEvents:(int)a28 roadDistancesInMeters:(id)a29 roadSpeedBuckets:(id)a30 roadRelativeSpeedBuckets:(id)a31 roadTimes:(id)a32 route:(id)a33 lifeEventIds:(id)a34 ktsSegmentIds:(id)a35;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GDKTSDataRepresentation

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = *&self->_expectedDurationInSecondsNoTraffic;
  v6 = *&self->_timeSpentAtSpeedBuckets;
  v7 = *&self->_timePerRoadType;
  v8 = *&self->_timePerTerrainType;
  LODWORD(v10) = self->_numHighSpeedEvents;
  return [v4 initWithStartTime:self->_startTime endTime:self->_endTime distanceInMeters:self->_distanceInMeters elevationGainInMeters:self->_elevationGainInMeters distanceBuckets:self->_distanceBuckets durationInSeconds:self->_durationInSeconds expectedDurationInSecondsNoTraffic:self->_score distanceSpentInTrafficBuckets:self->_expectedDurationInSecondsNoTraffic timeSpentInTrafficBuckets:self->_distanceSpentInTrafficBuckets distanceSpentAtSpeedBuckets:self->_timeSpentInTrafficBuckets timeSpentAtSpeedBuckets:self->_distanceSpentAtSpeedBuckets distanceSpentAtRelativeSpeeds:self->_timeSpentAtSpeedBuckets timeSpentAtRelativeSpeeds:self->_distanceSpentAtRelativeSpeeds distancePerRoadType:self->_timeSpentAtRelativeSpeeds timePerRoadType:self->_distancePerRoadType distancePerWeatherType:self->_timePerRoadType timePerWeatherType:self->_distancePerWeatherType distancePerTerrainType:self->_timePerWeatherType timePerTerrainType:self->_distancePerTerrainType averageSpeedInMetersPerSecond:self->_timePerTerrainType score:self->_averageSpeedInMetersPerSecond usageKwh:self->_usageKwh optimalUsageKwh:self->_optimalUsageKwh numBrakingEvents:*&self->_numBrakingEvents numAccelEvents:v10 numHighSpeedEvents:self->_roadDistancesInMeters roadDistancesInMeters:self->_roadSpeedBuckets roadSpeedBuckets:*&self->_roadRelativeSpeedBuckets roadRelativeSpeedBuckets:self->_route roadTimes:self->_lifeEventIds route:self->_ktsSegmentIds lifeEventIds:? ktsSegmentIds:?];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = *&self->_startTime;
  v5 = *&self->_distanceBuckets;
  distanceSpentAtSpeedBuckets = self->_distanceSpentAtSpeedBuckets;
  v7 = *&self->_roadRelativeSpeedBuckets;
  v8 = [v3 initWithFormat:@"GDKTSDataRepresentation<startTime: %@, endTime: %@, totalDistance: %@, elevationGain: %@, distanceBuckets: %@, totalDuration: %@, expectedDuration: %@, distanceInTrafficBuckets: %@, distanceAtSpeedBuckets: %@, distanceAtRelativeSpeeds: %@, timeInTrafficBuckets: %@, timeAtSpeedBuckets: %@, timeAtRelativeSpeeds: %@, averageSpeed: %@, distancePerRoadType: %@, timePerRoadType: %@, distancePerWeatherType: %@, timePerWeatherType: %@, distancePerTerrainType: %@, timePerTerrainType: %@, score: %f, usageKwh: %@, optimalUsageKwh: %@, numBrakingEvents: %d, numAccelEvents: %d, numHighSpeedEvents: %d, roadDistancesInMeters: %@ roadSpeedBuckets: %@ roadRelativeSpeeds: %@, roadTimes: %@, route: %@, lifeEventIds: %@, ktsSegmentIds: %@>", self->_startTime, self->_endTime, self->_distanceInMeters, self->_elevationGainInMeters, self->_distanceBuckets, self->_durationInSeconds, self->_expectedDurationInSecondsNoTraffic, self->_distanceSpentInTrafficBuckets, distanceSpentAtSpeedBuckets, self->_distanceSpentAtRelativeSpeeds, self->_timeSpentInTrafficBuckets, self->_timeSpentAtSpeedBuckets, self->_timeSpentAtRelativeSpeeds, self->_averageSpeedInMetersPerSecond, self->_distancePerRoadType, self->_timePerRoadType, self->_distancePerWeatherType, self->_timePerWeatherType, self->_distancePerTerrainType, self->_timePerTerrainType, *&self->_score, self->_usageKwh, self->_optimalUsageKwh, self->_numBrakingEvents, self->_numAccelEvents, self->_numHighSpeedEvents, self->_roadDistancesInMeters, self->_roadSpeedBuckets, v7, *&self->_route, self->_ktsSegmentIds];

  return v8;
}

- (GDKTSDataRepresentation)initWithCoder:(id)a3
{
  v212[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_opt_class();
  v5 = NSStringFromSelector(sel_startTime);
  v205 = [v3 decodeObjectOfClass:v4 forKey:v5];

  v6 = objc_opt_class();
  v7 = NSStringFromSelector(sel_endTime);
  v203 = [v3 decodeObjectOfClass:v6 forKey:v7];

  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
  v11 = NSStringFromSelector(sel_distanceInMeters);
  v202 = [v3 decodeObjectOfClasses:v10 forKey:v11];

  v12 = MEMORY[0x1E695DFD8];
  v13 = objc_opt_class();
  v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
  v15 = NSStringFromSelector(sel_elevationGainInMeters);
  v201 = [v3 decodeObjectOfClasses:v14 forKey:v15];

  v16 = MEMORY[0x1E695DFD8];
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = [v16 setWithObjects:{v17, v18, v19, objc_opt_class(), 0}];
  v21 = NSStringFromSelector(sel_distanceBuckets);
  v200 = [v3 decodeObjectOfClasses:v20 forKey:v21];

  v22 = MEMORY[0x1E695DFD8];
  v23 = objc_opt_class();
  v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
  v25 = NSStringFromSelector(sel_durationInSeconds);
  v199 = [v3 decodeObjectOfClasses:v24 forKey:v25];

  v26 = MEMORY[0x1E695DFD8];
  v27 = objc_opt_class();
  v28 = [v26 setWithObjects:{v27, objc_opt_class(), 0}];
  v29 = NSStringFromSelector(sel_expectedDurationInSecondsNoTraffic);
  v198 = [v3 decodeObjectOfClasses:v28 forKey:v29];

  v30 = MEMORY[0x1E695DFD8];
  v31 = objc_opt_class();
  v32 = objc_opt_class();
  v33 = objc_opt_class();
  v34 = [v30 setWithObjects:{v31, v32, v33, objc_opt_class(), 0}];
  v35 = NSStringFromSelector(sel_timeSpentInTrafficBuckets);
  v197 = [v3 decodeObjectOfClasses:v34 forKey:v35];

  v36 = MEMORY[0x1E695DFD8];
  v37 = objc_opt_class();
  v38 = objc_opt_class();
  v39 = objc_opt_class();
  v40 = [v36 setWithObjects:{v37, v38, v39, objc_opt_class(), 0}];
  v41 = NSStringFromSelector(sel_distanceSpentInTrafficBuckets);
  v196 = [v3 decodeObjectOfClasses:v40 forKey:v41];

  v42 = MEMORY[0x1E695DFD8];
  v43 = objc_opt_class();
  v44 = objc_opt_class();
  v45 = objc_opt_class();
  v46 = [v42 setWithObjects:{v43, v44, v45, objc_opt_class(), 0}];
  v47 = NSStringFromSelector(sel_timeSpentAtSpeedBuckets);
  v195 = [v3 decodeObjectOfClasses:v46 forKey:v47];

  v48 = MEMORY[0x1E695DFD8];
  v49 = objc_opt_class();
  v50 = objc_opt_class();
  v51 = objc_opt_class();
  v52 = [v48 setWithObjects:{v49, v50, v51, objc_opt_class(), 0}];
  v53 = NSStringFromSelector(sel_distanceSpentAtSpeedBuckets);
  v194 = [v3 decodeObjectOfClasses:v52 forKey:v53];

  v54 = MEMORY[0x1E695DFD8];
  v55 = objc_opt_class();
  v56 = objc_opt_class();
  v57 = objc_opt_class();
  v58 = [v54 setWithObjects:{v55, v56, v57, objc_opt_class(), 0}];
  v59 = NSStringFromSelector(sel_timeSpentAtRelativeSpeeds);
  v193 = [v3 decodeObjectOfClasses:v58 forKey:v59];

  v60 = MEMORY[0x1E695DFD8];
  v61 = objc_opt_class();
  v62 = objc_opt_class();
  v63 = objc_opt_class();
  v64 = [v60 setWithObjects:{v61, v62, v63, objc_opt_class(), 0}];
  v65 = NSStringFromSelector(sel_distanceSpentAtRelativeSpeeds);
  v192 = [v3 decodeObjectOfClasses:v64 forKey:v65];

  v66 = MEMORY[0x1E695DFD8];
  v67 = objc_opt_class();
  v68 = [v66 setWithObjects:{v67, objc_opt_class(), 0}];
  v69 = NSStringFromSelector(sel_averageSpeedInMetersPerSecond);
  v191 = [v3 decodeObjectOfClasses:v68 forKey:v69];

  v70 = objc_opt_class();
  v71 = NSStringFromSelector(sel_score);
  v72 = [v3 decodeObjectOfClass:v70 forKey:v71];
  [v72 doubleValue];
  v74 = v73;

  v75 = MEMORY[0x1E695DFD8];
  v76 = objc_opt_class();
  v77 = [v75 setWithObjects:{v76, objc_opt_class(), 0}];
  v78 = NSStringFromSelector(sel_usageKwh);
  v190 = [v3 decodeObjectOfClasses:v77 forKey:v78];

  v79 = MEMORY[0x1E695DFD8];
  v80 = objc_opt_class();
  v81 = [v79 setWithObjects:{v80, objc_opt_class(), 0}];
  v82 = NSStringFromSelector(sel_optimalUsageKwh);
  v189 = [v3 decodeObjectOfClasses:v81 forKey:v82];

  v83 = objc_opt_class();
  v84 = NSStringFromSelector(sel_numBrakingEvents);
  v85 = [v3 decodeObjectOfClass:v83 forKey:v84];
  v176 = [v85 intValue];

  v86 = objc_opt_class();
  v87 = NSStringFromSelector(sel_numAccelEvents);
  v88 = [v3 decodeObjectOfClass:v86 forKey:v87];
  v175 = [v88 intValue];

  v89 = objc_opt_class();
  v90 = NSStringFromSelector(sel_numHighSpeedEvents);
  v91 = [v3 decodeObjectOfClass:v89 forKey:v90];
  v174 = [v91 intValue];

  v92 = MEMORY[0x1E695DFD8];
  v93 = objc_opt_class();
  v94 = objc_opt_class();
  v95 = [v92 setWithObjects:{v93, v94, objc_opt_class(), 0}];
  v96 = NSStringFromSelector(sel_roadDistancesInMeters);
  v188 = [v3 decodeObjectOfClasses:v95 forKey:v96];

  v97 = objc_opt_class();
  v98 = NSStringFromSelector(sel_roadSpeedBuckets);
  v187 = [v3 decodeObjectOfClass:v97 forKey:v98];

  v99 = objc_opt_class();
  v100 = NSStringFromSelector(sel_roadRelativeSpeedBuckets);
  v186 = [v3 decodeObjectOfClass:v99 forKey:v100];

  v101 = MEMORY[0x1E695DFD8];
  v102 = objc_opt_class();
  v103 = objc_opt_class();
  v104 = [v101 setWithObjects:{v102, v103, objc_opt_class(), 0}];
  v105 = NSStringFromSelector(sel_roadTimes);
  v185 = [v3 decodeObjectOfClasses:v104 forKey:v105];

  v106 = MEMORY[0x1E695DFD8];
  v107 = objc_opt_class();
  v108 = objc_opt_class();
  v109 = objc_opt_class();
  v110 = [v106 setWithObjects:{v107, v108, v109, objc_opt_class(), 0}];
  v111 = NSStringFromSelector(sel_distancePerRoadType);
  v184 = [v3 decodeObjectOfClasses:v110 forKey:v111];

  v112 = MEMORY[0x1E695DFD8];
  v113 = objc_opt_class();
  v114 = objc_opt_class();
  v115 = objc_opt_class();
  v116 = [v112 setWithObjects:{v113, v114, v115, objc_opt_class(), 0}];
  v117 = NSStringFromSelector(sel_distancePerWeatherType);
  v183 = [v3 decodeObjectOfClasses:v116 forKey:v117];

  v118 = MEMORY[0x1E695DFD8];
  v119 = objc_opt_class();
  v120 = objc_opt_class();
  v121 = objc_opt_class();
  v122 = [v118 setWithObjects:{v119, v120, v121, objc_opt_class(), 0}];
  v123 = NSStringFromSelector(sel_distancePerTerrainType);
  v182 = [v3 decodeObjectOfClasses:v122 forKey:v123];

  v124 = MEMORY[0x1E695DFD8];
  v125 = objc_opt_class();
  v126 = objc_opt_class();
  v127 = objc_opt_class();
  v128 = [v124 setWithObjects:{v125, v126, v127, objc_opt_class(), 0}];
  v129 = NSStringFromSelector(sel_timePerRoadType);
  v181 = [v3 decodeObjectOfClasses:v128 forKey:v129];

  v130 = MEMORY[0x1E695DFD8];
  v131 = objc_opt_class();
  v132 = objc_opt_class();
  v133 = objc_opt_class();
  v134 = [v130 setWithObjects:{v131, v132, v133, objc_opt_class(), 0}];
  v135 = NSStringFromSelector(sel_timePerWeatherType);
  v180 = [v3 decodeObjectOfClasses:v134 forKey:v135];

  v136 = MEMORY[0x1E695DFD8];
  v137 = objc_opt_class();
  v138 = objc_opt_class();
  v139 = objc_opt_class();
  v140 = [v136 setWithObjects:{v137, v138, v139, objc_opt_class(), 0}];
  v141 = NSStringFromSelector(sel_timePerTerrainType);
  v179 = [v3 decodeObjectOfClasses:v140 forKey:v141];

  v142 = MEMORY[0x1E695DFD8];
  v212[0] = objc_opt_class();
  v212[1] = objc_opt_class();
  v143 = [MEMORY[0x1E695DEC8] arrayWithObjects:v212 count:2];
  v144 = [v142 setWithArray:v143];
  v145 = NSStringFromSelector(sel_route);
  v146 = [v3 decodeObjectOfClasses:v144 forKey:v145];

  v147 = MEMORY[0x1E695DFD8];
  v211[0] = objc_opt_class();
  v211[1] = objc_opt_class();
  v148 = [MEMORY[0x1E695DEC8] arrayWithObjects:v211 count:2];
  v149 = [v147 setWithArray:v148];
  v150 = NSStringFromSelector(sel_lifeEventIds);
  v151 = [v3 decodeObjectOfClasses:v149 forKey:v150];

  v152 = MEMORY[0x1E695DFD8];
  v210[0] = objc_opt_class();
  v210[1] = objc_opt_class();
  v153 = [MEMORY[0x1E695DEC8] arrayWithObjects:v210 count:2];
  v154 = [v152 setWithArray:v153];
  v155 = NSStringFromSelector(sel_ktsSegmentIds);
  v156 = [v3 decodeObjectOfClasses:v154 forKey:v155];

  v178 = v3;
  if (v205)
  {
    if (v203)
    {
      v157 = v185;
      LODWORD(v173) = v174;
      v159 = v179;
      v158 = v180;
      v160 = v182;
      v161 = v183;
      v162 = v181;
      v163 = v184;
      self = [(GDKTSDataRepresentation *)self initWithStartTime:v205 endTime:v203 distanceInMeters:v202 elevationGainInMeters:v201 distanceBuckets:v200 durationInSeconds:v199 expectedDurationInSecondsNoTraffic:v74 distanceSpentInTrafficBuckets:v198 timeSpentInTrafficBuckets:v196 distanceSpentAtSpeedBuckets:v197 timeSpentAtSpeedBuckets:v194 distanceSpentAtRelativeSpeeds:v195 timeSpentAtRelativeSpeeds:v192 distancePerRoadType:v193 timePerRoadType:v184 distancePerWeatherType:v181 timePerWeatherType:v183 distancePerTerrainType:v180 timePerTerrainType:v182 averageSpeedInMetersPerSecond:v179 score:v191 usageKwh:v190 optimalUsageKwh:v189 numBrakingEvents:__PAIR64__(v175 numAccelEvents:v176) numHighSpeedEvents:v173 roadDistancesInMeters:v188 roadSpeedBuckets:v187 roadRelativeSpeedBuckets:v186 roadTimes:v185 route:v146 lifeEventIds:v151 ktsSegmentIds:v156];
      v177 = self;
    }

    else
    {
      v168 = MEMORY[0x1E696ABC0];
      v206 = *MEMORY[0x1E696A578];
      v207 = @"Required parameter endTime is nil";
      v169 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v207 forKeys:&v206 count:1];
      v170 = [v168 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v169];
      [v3 failWithError:v170];

      v177 = 0;
      v163 = v184;
      v157 = v185;
      v160 = v182;
      v161 = v183;
      v158 = v180;
      v162 = v181;
      v159 = v179;
    }
  }

  else
  {
    v164 = [v3 error];

    if (!v164)
    {
      v165 = MEMORY[0x1E696ABC0];
      v208 = *MEMORY[0x1E696A578];
      v209 = @"Required parameter startTime is nil";
      v166 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v209 forKeys:&v208 count:1];
      v167 = [v165 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v166];
      [v3 failWithError:v167];
    }

    v177 = 0;
    v163 = v184;
    v157 = v185;
    v160 = v182;
    v161 = v183;
    v158 = v180;
    v162 = v181;
    v159 = v179;
  }

  v171 = *MEMORY[0x1E69E9840];
  return v177;
}

- (void)encodeWithCoder:(id)a3
{
  startTime = self->_startTime;
  v5 = a3;
  v6 = NSStringFromSelector(sel_startTime);
  [v5 encodeObject:startTime forKey:v6];

  endTime = self->_endTime;
  v8 = NSStringFromSelector(sel_endTime);
  [v5 encodeObject:endTime forKey:v8];

  distanceInMeters = self->_distanceInMeters;
  v10 = NSStringFromSelector(sel_distanceInMeters);
  [v5 encodeObject:distanceInMeters forKey:v10];

  elevationGainInMeters = self->_elevationGainInMeters;
  v12 = NSStringFromSelector(sel_elevationGainInMeters);
  [v5 encodeObject:elevationGainInMeters forKey:v12];

  distanceBuckets = self->_distanceBuckets;
  v14 = NSStringFromSelector(sel_distanceBuckets);
  [v5 encodeObject:distanceBuckets forKey:v14];

  durationInSeconds = self->_durationInSeconds;
  v16 = NSStringFromSelector(sel_durationInSeconds);
  [v5 encodeObject:durationInSeconds forKey:v16];

  expectedDurationInSecondsNoTraffic = self->_expectedDurationInSecondsNoTraffic;
  v18 = NSStringFromSelector(sel_expectedDurationInSecondsNoTraffic);
  [v5 encodeObject:expectedDurationInSecondsNoTraffic forKey:v18];

  distanceSpentInTrafficBuckets = self->_distanceSpentInTrafficBuckets;
  v20 = NSStringFromSelector(sel_distanceSpentInTrafficBuckets);
  [v5 encodeObject:distanceSpentInTrafficBuckets forKey:v20];

  timeSpentInTrafficBuckets = self->_timeSpentInTrafficBuckets;
  v22 = NSStringFromSelector(sel_timeSpentInTrafficBuckets);
  [v5 encodeObject:timeSpentInTrafficBuckets forKey:v22];

  distanceSpentAtSpeedBuckets = self->_distanceSpentAtSpeedBuckets;
  v24 = NSStringFromSelector(sel_distanceSpentAtSpeedBuckets);
  [v5 encodeObject:distanceSpentAtSpeedBuckets forKey:v24];

  timeSpentAtSpeedBuckets = self->_timeSpentAtSpeedBuckets;
  v26 = NSStringFromSelector(sel_timeSpentAtSpeedBuckets);
  [v5 encodeObject:timeSpentAtSpeedBuckets forKey:v26];

  distanceSpentAtRelativeSpeeds = self->_distanceSpentAtRelativeSpeeds;
  v28 = NSStringFromSelector(sel_distanceSpentAtRelativeSpeeds);
  [v5 encodeObject:distanceSpentAtRelativeSpeeds forKey:v28];

  timeSpentAtRelativeSpeeds = self->_timeSpentAtRelativeSpeeds;
  v30 = NSStringFromSelector(sel_timeSpentAtRelativeSpeeds);
  [v5 encodeObject:timeSpentAtRelativeSpeeds forKey:v30];

  averageSpeedInMetersPerSecond = self->_averageSpeedInMetersPerSecond;
  v32 = NSStringFromSelector(sel_averageSpeedInMetersPerSecond);
  [v5 encodeObject:averageSpeedInMetersPerSecond forKey:v32];

  v33 = [MEMORY[0x1E696AD98] numberWithDouble:self->_score];
  v34 = NSStringFromSelector(sel_score);
  [v5 encodeObject:v33 forKey:v34];

  usageKwh = self->_usageKwh;
  v36 = NSStringFromSelector(sel_usageKwh);
  [v5 encodeObject:usageKwh forKey:v36];

  optimalUsageKwh = self->_optimalUsageKwh;
  v38 = NSStringFromSelector(sel_optimalUsageKwh);
  [v5 encodeObject:optimalUsageKwh forKey:v38];

  v39 = [MEMORY[0x1E696AD98] numberWithDouble:self->_numBrakingEvents];
  v40 = NSStringFromSelector(sel_numBrakingEvents);
  [v5 encodeObject:v39 forKey:v40];

  v41 = [MEMORY[0x1E696AD98] numberWithDouble:self->_numAccelEvents];
  v42 = NSStringFromSelector(sel_numAccelEvents);
  [v5 encodeObject:v41 forKey:v42];

  v43 = [MEMORY[0x1E696AD98] numberWithDouble:self->_numHighSpeedEvents];
  v44 = NSStringFromSelector(sel_numHighSpeedEvents);
  [v5 encodeObject:v43 forKey:v44];

  roadDistancesInMeters = self->_roadDistancesInMeters;
  v46 = NSStringFromSelector(sel_roadDistancesInMeters);
  [v5 encodeObject:roadDistancesInMeters forKey:v46];

  roadSpeedBuckets = self->_roadSpeedBuckets;
  v48 = NSStringFromSelector(sel_roadSpeedBuckets);
  [v5 encodeObject:roadSpeedBuckets forKey:v48];

  roadRelativeSpeedBuckets = self->_roadRelativeSpeedBuckets;
  v50 = NSStringFromSelector(sel_roadRelativeSpeedBuckets);
  [v5 encodeObject:roadRelativeSpeedBuckets forKey:v50];

  roadTimes = self->_roadTimes;
  v52 = NSStringFromSelector(sel_roadTimes);
  [v5 encodeObject:roadTimes forKey:v52];

  distancePerRoadType = self->_distancePerRoadType;
  v54 = NSStringFromSelector(sel_distancePerRoadType);
  [v5 encodeObject:distancePerRoadType forKey:v54];

  distancePerWeatherType = self->_distancePerWeatherType;
  v56 = NSStringFromSelector(sel_distancePerWeatherType);
  [v5 encodeObject:distancePerWeatherType forKey:v56];

  distancePerTerrainType = self->_distancePerTerrainType;
  v58 = NSStringFromSelector(sel_distancePerTerrainType);
  [v5 encodeObject:distancePerTerrainType forKey:v58];

  timePerRoadType = self->_timePerRoadType;
  v60 = NSStringFromSelector(sel_timePerRoadType);
  [v5 encodeObject:timePerRoadType forKey:v60];

  timePerWeatherType = self->_timePerWeatherType;
  v62 = NSStringFromSelector(sel_timePerWeatherType);
  [v5 encodeObject:timePerWeatherType forKey:v62];

  timePerTerrainType = self->_timePerTerrainType;
  v64 = NSStringFromSelector(sel_timePerTerrainType);
  [v5 encodeObject:timePerTerrainType forKey:v64];

  route = self->_route;
  v66 = NSStringFromSelector(sel_route);
  [v5 encodeObject:route forKey:v66];

  lifeEventIds = self->_lifeEventIds;
  v68 = NSStringFromSelector(sel_lifeEventIds);
  [v5 encodeObject:lifeEventIds forKey:v68];

  ktsSegmentIds = self->_ktsSegmentIds;
  v70 = NSStringFromSelector(sel_ktsSegmentIds);
  [v5 encodeObject:ktsSegmentIds forKey:v70];
}

- (GDKTSDataRepresentation)initWithStartTime:(id)a3 endTime:(id)a4 distanceInMeters:(id)a5 elevationGainInMeters:(id)a6 distanceBuckets:(id)a7 durationInSeconds:(id)a8 expectedDurationInSecondsNoTraffic:(id)a9 distanceSpentInTrafficBuckets:(id)a10 timeSpentInTrafficBuckets:(id)a11 distanceSpentAtSpeedBuckets:(id)a12 timeSpentAtSpeedBuckets:(id)a13 distanceSpentAtRelativeSpeeds:(id)a14 timeSpentAtRelativeSpeeds:(id)a15 distancePerRoadType:(id)a16 timePerRoadType:(id)a17 distancePerWeatherType:(id)a18 timePerWeatherType:(id)a19 distancePerTerrainType:(id)a20 timePerTerrainType:(id)a21 averageSpeedInMetersPerSecond:(id)a22 score:(double)a23 usageKwh:(id)a24 optimalUsageKwh:(id)a25 numBrakingEvents:(int)a26 numAccelEvents:(int)a27 numHighSpeedEvents:(int)a28 roadDistancesInMeters:(id)a29 roadSpeedBuckets:(id)a30 roadRelativeSpeedBuckets:(id)a31 roadTimes:(id)a32 route:(id)a33 lifeEventIds:(id)a34 ktsSegmentIds:(id)a35
{
  v122 = a3;
  v124 = a4;
  obj = a5;
  v108 = a5;
  v103 = a6;
  v107 = a6;
  v41 = a7;
  v123 = a8;
  v42 = a9;
  v43 = a10;
  v44 = a11;
  v45 = a12;
  v121 = a13;
  v120 = a14;
  v119 = a15;
  v118 = a16;
  v117 = a17;
  v116 = a18;
  v115 = a19;
  v114 = a20;
  v113 = a21;
  v112 = a22;
  v106 = a24;
  v105 = a25;
  v111 = a29;
  v110 = a30;
  v46 = a31;
  v109 = a32;
  v47 = a33;
  v48 = a34;
  v49 = a35;
  v125.receiver = self;
  v125.super_class = GDKTSDataRepresentation;
  v50 = [(GDKTSDataRepresentation *)&v125 init];
  if (v50)
  {
    v51 = [v122 copy];
    startTime = v50->_startTime;
    v50->_startTime = v51;

    v53 = [v124 copy];
    endTime = v50->_endTime;
    v50->_endTime = v53;

    objc_storeStrong(&v50->_distanceInMeters, obj);
    objc_storeStrong(&v50->_elevationGainInMeters, v103);
    v55 = [v41 copy];
    distanceBuckets = v50->_distanceBuckets;
    v50->_distanceBuckets = v55;

    v57 = [v123 copy];
    durationInSeconds = v50->_durationInSeconds;
    v50->_durationInSeconds = v57;

    v59 = [v42 copy];
    expectedDurationInSecondsNoTraffic = v50->_expectedDurationInSecondsNoTraffic;
    v50->_expectedDurationInSecondsNoTraffic = v59;

    v61 = [v43 copy];
    distanceSpentInTrafficBuckets = v50->_distanceSpentInTrafficBuckets;
    v50->_distanceSpentInTrafficBuckets = v61;

    v63 = [v44 copy];
    timeSpentInTrafficBuckets = v50->_timeSpentInTrafficBuckets;
    v50->_timeSpentInTrafficBuckets = v63;

    v65 = [v45 copy];
    distanceSpentAtSpeedBuckets = v50->_distanceSpentAtSpeedBuckets;
    v50->_distanceSpentAtSpeedBuckets = v65;

    v67 = [v121 copy];
    timeSpentAtSpeedBuckets = v50->_timeSpentAtSpeedBuckets;
    v50->_timeSpentAtSpeedBuckets = v67;

    v69 = [v120 copy];
    distanceSpentAtRelativeSpeeds = v50->_distanceSpentAtRelativeSpeeds;
    v50->_distanceSpentAtRelativeSpeeds = v69;

    v71 = [v119 copy];
    timeSpentAtRelativeSpeeds = v50->_timeSpentAtRelativeSpeeds;
    v50->_timeSpentAtRelativeSpeeds = v71;

    v73 = [v112 copy];
    averageSpeedInMetersPerSecond = v50->_averageSpeedInMetersPerSecond;
    v50->_averageSpeedInMetersPerSecond = v73;

    v50->_score = a23;
    objc_storeStrong(&v50->_usageKwh, a24);
    objc_storeStrong(&v50->_optimalUsageKwh, a25);
    v50->_numBrakingEvents = a26;
    v50->_numAccelEvents = a27;
    v50->_numHighSpeedEvents = a28;
    v75 = [v111 copy];
    roadDistancesInMeters = v50->_roadDistancesInMeters;
    v50->_roadDistancesInMeters = v75;

    v77 = [v110 copy];
    roadSpeedBuckets = v50->_roadSpeedBuckets;
    v50->_roadSpeedBuckets = v77;

    v79 = [v46 copy];
    roadRelativeSpeedBuckets = v50->_roadRelativeSpeedBuckets;
    v50->_roadRelativeSpeedBuckets = v79;

    v81 = [v109 copy];
    roadTimes = v50->_roadTimes;
    v50->_roadTimes = v81;

    v83 = [v118 copy];
    distancePerRoadType = v50->_distancePerRoadType;
    v50->_distancePerRoadType = v83;

    v85 = [v117 copy];
    timePerRoadType = v50->_timePerRoadType;
    v50->_timePerRoadType = v85;

    v87 = [v116 copy];
    distancePerWeatherType = v50->_distancePerWeatherType;
    v50->_distancePerWeatherType = v87;

    v89 = [v115 copy];
    timePerWeatherType = v50->_timePerWeatherType;
    v50->_timePerWeatherType = v89;

    v91 = [v114 copy];
    distancePerTerrainType = v50->_distancePerTerrainType;
    v50->_distancePerTerrainType = v91;

    v93 = [v113 copy];
    timePerTerrainType = v50->_timePerTerrainType;
    v50->_timePerTerrainType = v93;

    v95 = [v47 copy];
    route = v50->_route;
    v50->_route = v95;

    v97 = [v48 copy];
    lifeEventIds = v50->_lifeEventIds;
    v50->_lifeEventIds = v97;

    v99 = [v49 copy];
    ktsSegmentIds = v50->_ktsSegmentIds;
    v50->_ktsSegmentIds = v99;
  }

  return v50;
}

@end