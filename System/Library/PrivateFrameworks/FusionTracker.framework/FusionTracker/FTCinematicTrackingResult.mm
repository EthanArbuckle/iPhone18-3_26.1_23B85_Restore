@interface FTCinematicTrackingResult
- (FTCinematicTrackingResult)init;
- (FTCinematicTrackingResult)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setMostRecentTapTime:(id *)a3;
- (void)setSourceFrameTimestamp:(id *)a3;
@end

@implementation FTCinematicTrackingResult

- (FTCinematicTrackingResult)init
{
  v9.receiver = self;
  v9.super_class = FTCinematicTrackingResult;
  v2 = [(FTCinematicTrackingResult *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v4 = MEMORY[0x277CC0898];
    v7 = *MEMORY[0x277CC0898];
    v8 = *(MEMORY[0x277CC0898] + 16);
    [(FTCinematicTrackingResult *)v2 setSourceFrameTimestamp:&v7];
    v7 = *v4;
    v8 = *(v4 + 2);
    [(FTCinematicTrackingResult *)v3 setMostRecentTapTime:&v7];
    [(FTCinematicTrackingResult *)v3 setDetectorDidRun:0];
    v5 = v3;
  }

  return v3;
}

- (FTCinematicTrackingResult)initWithCoder:(id)a3
{
  v23[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v21.receiver = self;
  v21.super_class = FTCinematicTrackingResult;
  v5 = [(FTCinematicTrackingResult *)&v21 init];
  v6 = v5;
  if (v5)
  {
    if (v4)
    {
      [v4 fusionTracker_decodeCMTimeForKey:@"sourceFrameTimestamp"];
      *&v6->_sourceFrameTimestamp.value = v19;
      v6->_sourceFrameTimestamp.epoch = v20;
      [v4 fusionTracker_decodeCMTimeForKey:@"mostRecentTapTime"];
    }

    else
    {
      v5->_sourceFrameTimestamp.value = 0;
      *&v5->_sourceFrameTimestamp.timescale = 0;
      v5->_sourceFrameTimestamp.epoch = 0;
      v19 = 0uLL;
      v20 = 0;
    }

    *&v6->_mostRecentTapTime.value = v19;
    v6->_mostRecentTapTime.epoch = v20;
    v6->_detectorDidRun = [v4 decodeBoolForKey:{@"detectorDidRun", v19, v20}];
    v7 = MEMORY[0x277CBEB98];
    v23[0] = objc_opt_class();
    v23[1] = objc_opt_class();
    v23[2] = objc_opt_class();
    v23[3] = objc_opt_class();
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
    v9 = [v7 setWithArray:v8];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"metadata"];
    metadata = v6->_metadata;
    v6->_metadata = v10;

    v12 = MEMORY[0x277CBEB98];
    v22[0] = objc_opt_class();
    v22[1] = objc_opt_class();
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
    v14 = [v12 setWithArray:v13];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"tracks"];
    tracks = v6->_tracks;
    v6->_tracks = v15;

    v17 = v6;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  sourceFrameTimestamp = self->_sourceFrameTimestamp;
  [v4 fusionTracker_encodeCMTime:&sourceFrameTimestamp forKey:@"sourceFrameTimestamp"];
  [v4 encodeObject:self->_tracks forKey:@"tracks"];
  sourceFrameTimestamp = self->_mostRecentTapTime;
  [v4 fusionTracker_encodeCMTime:&sourceFrameTimestamp forKey:@"mostRecentTapTime"];
  [v4 encodeBool:self->_detectorDidRun forKey:@"detectorDidRun"];
  [v4 encodeObject:self->_metadata forKey:@"metadata"];
}

- (void)setSourceFrameTimestamp:(id *)a3
{
  v3 = *&a3->var0;
  self->_sourceFrameTimestamp.epoch = a3->var3;
  *&self->_sourceFrameTimestamp.value = v3;
}

- (void)setMostRecentTapTime:(id *)a3
{
  v3 = *&a3->var0;
  self->_mostRecentTapTime.epoch = a3->var3;
  *&self->_mostRecentTapTime.value = v3;
}

@end