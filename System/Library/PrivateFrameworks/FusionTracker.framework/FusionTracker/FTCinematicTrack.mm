@interface FTCinematicTrack
+ (id)fromTrack:(shared_ptr<ft:(BOOL)track :Track>)a3 isHighPriority:;
- (CGRect)box;
- (FTCinematicTrack)init;
- (FTCinematicTrack)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)setLastDetectionTime:(id *)time;
- (void)setLastTappedTime:(id *)time;
@end

@implementation FTCinematicTrack

- (FTCinematicTrack)init
{
  v8.receiver = self;
  v8.super_class = FTCinematicTrack;
  v2 = [(FTCinematicTrack *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v6 = *MEMORY[0x277CC0898];
    v7 = *(MEMORY[0x277CC0898] + 16);
    [(FTCinematicTrack *)v2 setLastTappedTime:&v6];
    v4 = v3;
  }

  return v3;
}

- (FTCinematicTrack)initWithCoder:(id)coder
{
  v24[4] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = FTCinematicTrack;
  v5 = [(FTCinematicTrack *)&v23 init];
  if (v5)
  {
    *(v5 + 3) = [coderCopy decodeInt64ForKey:@"identifier"];
    [coderCopy fusionTracker_decodeCGRectForKey:@"box"];
    *(v5 + 13) = v6;
    *(v5 + 14) = v7;
    *(v5 + 15) = v8;
    *(v5 + 16) = v9;
    *(v5 + 4) = [coderCopy decodeInt64ForKey:@"objectKind"];
    if (coderCopy)
    {
      [coderCopy fusionTracker_decodeCMTimeForKey:@"lastDetectionTime"];
    }

    else
    {
      v19 = 0uLL;
      v21 = 0;
    }

    *(v5 + 56) = v19;
    *(v5 + 9) = v21;
    [coderCopy decodeFloatForKey:{@"boxConfidence", v19, v21}];
    *(v5 + 3) = v10;
    [coderCopy decodeFloatForKey:@"detectionConfidence"];
    *(v5 + 4) = v11;
    if (coderCopy)
    {
      [coderCopy fusionTracker_decodeCMTimeForKey:@"lastTappedTime"];
    }

    else
    {
      v20 = 0uLL;
      v22 = 0;
    }

    *(v5 + 5) = v20;
    *(v5 + 12) = v22;
    v5[9] = [coderCopy decodeBoolForKey:{@"isHighPriority", v20, v22}];
    *(v5 + 6) = [coderCopy decodeInt64ForKey:@"sourceObservationId"];
    v5[8] = [coderCopy decodeBoolForKey:@"isTapSpawned"];
    v12 = MEMORY[0x277CBEB98];
    v24[0] = objc_opt_class();
    v24[1] = objc_opt_class();
    v24[2] = objc_opt_class();
    v24[3] = objc_opt_class();
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:4];
    v14 = [v12 setWithArray:v13];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"metadata"];
    v16 = *(v5 + 5);
    *(v5 + 5) = v15;

    v17 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:self->_identifier forKey:@"identifier"];
  [coderCopy encodeInt64:self->_objectKind forKey:@"objectKind"];
  lastDetectionTime = self->_lastDetectionTime;
  [coderCopy fusionTracker_encodeCMTime:&lastDetectionTime forKey:@"lastDetectionTime"];
  *&v5 = self->_boxConfidence;
  [coderCopy encodeFloat:@"boxConfidence" forKey:v5];
  *&v6 = self->_detectionConfidence;
  [coderCopy encodeFloat:@"detectionConfidence" forKey:v6];
  lastDetectionTime = self->_lastTappedTime;
  [coderCopy fusionTracker_encodeCMTime:&lastDetectionTime forKey:@"lastTappedTime"];
  [coderCopy encodeBool:self->_isHighPriority forKey:@"isHighPriority"];
  [coderCopy encodeInt64:self->_sourceObservationId forKey:@"sourceObservationId"];
  [coderCopy fusionTracker_encodeCGRect:@"box" forKey:{self->_box.origin.x, self->_box.origin.y, self->_box.size.width, self->_box.size.height}];
  [coderCopy encodeBool:self->_isTapSpawned forKey:@"isTapSpawned"];
  [coderCopy encodeObject:self->_metadata forKey:@"metadata"];
}

+ (id)fromTrack:(shared_ptr<ft:(BOOL)track :Track>)a3 isHighPriority:
{
  var1 = a3.var1;
  var0 = a3.var0;
  v6 = objc_alloc_init(FTCinematicTrack);
  [(FTCinematicTrack *)v6 setIdentifier:*(*var0 + 16)];
  [(FTCinematicTrack *)v6 setBox:*(*var0 + 24), *(*var0 + 32), *(*var0 + 40), *(*var0 + 48)];
  [(FTCinematicTrack *)v6 setObjectKind:*(*var0 + 88)];
  v7 = *var0;
  if ((*(*var0 + 232) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Track not yet initialized.");
    goto LABEL_12;
  }

  v15 = *(v7 + 124);
  v16 = *(v7 + 140);
  [(FTCinematicTrack *)v6 setLastDetectionTime:&v15];
  v8 = *(*var0 + 248);
  *&v8 = v8;
  [(FTCinematicTrack *)v6 setBoxConfidence:v8];
  if ((*(*var0 + 232) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Track not yet initialized.");
LABEL_12:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  LODWORD(v9) = *(*var0 + 96);
  [(FTCinematicTrack *)v6 setDetectionConfidence:v9];
  v15 = *MEMORY[0x277CC0898];
  v16 = *(MEMORY[0x277CC0898] + 16);
  [(FTCinematicTrack *)v6 setLastTappedTime:&v15];
  [(FTCinematicTrack *)v6 setIsHighPriority:var1];
  v10 = *var0;
  if ((*(*var0 + 232) & 1) == 0)
  {
    v14 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v14, "Track not yet initialized.");
    __cxa_throw(v14, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (*(v10 + 160))
  {
    v11 = (v10 + 152);
  }

  else
  {
    v11 = &kFTInvalidTrackId;
  }

  [(FTCinematicTrack *)v6 setSourceObservationId:*v11];

  return v6;
}

- (CGRect)box
{
  x = self->_box.origin.x;
  y = self->_box.origin.y;
  width = self->_box.size.width;
  height = self->_box.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setLastDetectionTime:(id *)time
{
  v3 = *&time->var0;
  self->_lastDetectionTime.epoch = time->var3;
  *&self->_lastDetectionTime.value = v3;
}

- (void)setLastTappedTime:(id *)time
{
  v3 = *&time->var0;
  self->_lastTappedTime.epoch = time->var3;
  *&self->_lastTappedTime.value = v3;
}

@end