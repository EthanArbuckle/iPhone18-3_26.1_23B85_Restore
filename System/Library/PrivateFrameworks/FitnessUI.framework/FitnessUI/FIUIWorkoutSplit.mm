@interface FIUIWorkoutSplit
- (FIUIWorkoutSplit)initWithCoder:(id)coder;
- (FIUIWorkoutSplit)initWithDistance:(double)distance duration:(double)duration;
- (FIUIWorkoutSplit)initWithDistance:(double)distance duration:(double)duration dateInterval:(id)interval;
- (FIUIWorkoutSplit)initWithEvent:(id)event;
- (id)description;
@end

@implementation FIUIWorkoutSplit

- (FIUIWorkoutSplit)initWithDistance:(double)distance duration:(double)duration
{
  v10.receiver = self;
  v10.super_class = FIUIWorkoutSplit;
  v6 = [(FIUIWorkoutSplit *)&v10 init];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E699CA00]) initWithDistance:distance duration:duration];
    workoutSplit = v6->_workoutSplit;
    v6->_workoutSplit = v7;
  }

  return v6;
}

- (FIUIWorkoutSplit)initWithDistance:(double)distance duration:(double)duration dateInterval:(id)interval
{
  intervalCopy = interval;
  v13.receiver = self;
  v13.super_class = FIUIWorkoutSplit;
  v9 = [(FIUIWorkoutSplit *)&v13 init];
  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x1E699CA00]) initWithDistance:intervalCopy duration:distance dateInterval:duration];
    workoutSplit = v9->_workoutSplit;
    v9->_workoutSplit = v10;
  }

  return v9;
}

- (FIUIWorkoutSplit)initWithEvent:(id)event
{
  eventCopy = event;
  v10.receiver = self;
  v10.super_class = FIUIWorkoutSplit;
  v5 = [(FIUIWorkoutSplit *)&v10 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E699CA00]) initWithEvent:eventCopy];
    workoutSplit = v5->_workoutSplit;
    v5->_workoutSplit = v6;

    [(FIWorkoutSplit *)v5->_workoutSplit distanceInMeters];
    [(FIUIWorkoutSplit *)v5 setDistanceInMeters:?];
    [(FIWorkoutSplit *)v5->_workoutSplit duration];
    [(FIUIWorkoutSplit *)v5 setDuration:?];
    dateInterval = [(FIWorkoutSplit *)v5->_workoutSplit dateInterval];
    [(FIUIWorkoutSplit *)v5 setDateInterval:dateInterval];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = FIUIWorkoutSplit;
  v4 = [(FIUIWorkoutSplit *)&v10 description];
  [(FIUIWorkoutSplit *)self distanceInMeters];
  v6 = v5;
  [(FIUIWorkoutSplit *)self duration];
  v8 = [v3 stringWithFormat:@"%@: distanceInMeters: %f duration: %f", v4, v6, v7];

  return v8;
}

- (FIUIWorkoutSplit)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = FIUIWorkoutSplit;
  v5 = [(FIUIWorkoutSplit *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"workoutSplit"];
    workoutSplit = v5->_workoutSplit;
    v5->_workoutSplit = v6;
  }

  return v5;
}

@end