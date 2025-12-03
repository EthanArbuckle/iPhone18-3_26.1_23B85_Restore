@interface BaseTrack
- (BaseTrack)initWithObservation:(id)observation identifier:(int64_t)identifier type:(int64_t)type atTime:(id *)time;
- (BaseTrack)pairTrack;
- (CGRect)lastObservationBounds;
- (void)addObservation:(id)observation atTime:(id *)time;
- (void)dealloc;
@end

@implementation BaseTrack

- (BaseTrack)initWithObservation:(id)observation identifier:(int64_t)identifier type:(int64_t)type atTime:(id *)time
{
  observationCopy = observation;
  v18.receiver = self;
  v18.super_class = BaseTrack;
  v12 = [(BaseTrack *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_firstObservation, observation);
    v14 = *&time->var0;
    v13->_firstTimestamp.epoch = time->var3;
    *&v13->_firstTimestamp.value = v14;
    objc_storeStrong(&v13->_lastObservation, observation);
    var3 = time->var3;
    *&v13->_lastTimestamp.value = *&time->var0;
    v13->_lastTimestamp.epoch = var3;
    v13->_identifier = identifier;
    v13->_type = type;
    v16 = v13;
  }

  return v13;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = BaseTrack;
  [(BaseTrack *)&v2 dealloc];
}

- (void)addObservation:(id)observation atTime:(id *)time
{
  objc_storeStrong(&self->_lastObservation, observation);
  v6 = *&time->var0;
  self->_lastTimestamp.epoch = time->var3;
  *&self->_lastTimestamp.value = v6;
}

- (CGRect)lastObservationBounds
{
  [(Detection *)self->_lastObservation bounds];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (BaseTrack)pairTrack
{
  WeakRetained = objc_loadWeakRetained(&self->pairTrack);

  return WeakRetained;
}

@end