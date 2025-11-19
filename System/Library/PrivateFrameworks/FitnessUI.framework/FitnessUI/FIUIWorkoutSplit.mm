@interface FIUIWorkoutSplit
- (FIUIWorkoutSplit)initWithCoder:(id)a3;
- (FIUIWorkoutSplit)initWithDistance:(double)a3 duration:(double)a4;
- (FIUIWorkoutSplit)initWithDistance:(double)a3 duration:(double)a4 dateInterval:(id)a5;
- (FIUIWorkoutSplit)initWithEvent:(id)a3;
- (id)description;
@end

@implementation FIUIWorkoutSplit

- (FIUIWorkoutSplit)initWithDistance:(double)a3 duration:(double)a4
{
  v10.receiver = self;
  v10.super_class = FIUIWorkoutSplit;
  v6 = [(FIUIWorkoutSplit *)&v10 init];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E699CA00]) initWithDistance:a3 duration:a4];
    workoutSplit = v6->_workoutSplit;
    v6->_workoutSplit = v7;
  }

  return v6;
}

- (FIUIWorkoutSplit)initWithDistance:(double)a3 duration:(double)a4 dateInterval:(id)a5
{
  v8 = a5;
  v13.receiver = self;
  v13.super_class = FIUIWorkoutSplit;
  v9 = [(FIUIWorkoutSplit *)&v13 init];
  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x1E699CA00]) initWithDistance:v8 duration:a3 dateInterval:a4];
    workoutSplit = v9->_workoutSplit;
    v9->_workoutSplit = v10;
  }

  return v9;
}

- (FIUIWorkoutSplit)initWithEvent:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = FIUIWorkoutSplit;
  v5 = [(FIUIWorkoutSplit *)&v10 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E699CA00]) initWithEvent:v4];
    workoutSplit = v5->_workoutSplit;
    v5->_workoutSplit = v6;

    [(FIWorkoutSplit *)v5->_workoutSplit distanceInMeters];
    [(FIUIWorkoutSplit *)v5 setDistanceInMeters:?];
    [(FIWorkoutSplit *)v5->_workoutSplit duration];
    [(FIUIWorkoutSplit *)v5 setDuration:?];
    v8 = [(FIWorkoutSplit *)v5->_workoutSplit dateInterval];
    [(FIUIWorkoutSplit *)v5 setDateInterval:v8];
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

- (FIUIWorkoutSplit)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = FIUIWorkoutSplit;
  v5 = [(FIUIWorkoutSplit *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"workoutSplit"];
    workoutSplit = v5->_workoutSplit;
    v5->_workoutSplit = v6;
  }

  return v5;
}

@end