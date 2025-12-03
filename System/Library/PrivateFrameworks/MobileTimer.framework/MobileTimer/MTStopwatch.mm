@interface MTStopwatch
+ (id)descriptionForState:(int64_t)state;
- (BOOL)_isEqualToStopwatch:(id)stopwatch;
- (BOOL)isEqual:(id)equal;
- (MTStopwatch)init;
- (MTStopwatch)initWithCoder:(id)coder;
- (MTStopwatch)initWithId:(id)id;
- (NSString)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)_copyStateOntoStopwatch:(id)stopwatch;
- (void)commonInit;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MTStopwatch

- (MTStopwatch)init
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v5 = [(MTStopwatch *)self initWithId:uUIDString];

  return v5;
}

- (MTStopwatch)initWithId:(id)id
{
  idCopy = id;
  v8.receiver = self;
  v8.super_class = MTStopwatch;
  v5 = [(MTStopwatch *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(MTStopwatch *)v5 setIdentifier:idCopy];
    [(MTStopwatch *)v6 commonInit];
  }

  return v6;
}

- (void)commonInit
{
  [(MTStopwatch *)self setOffset:0.0];
  [(MTStopwatch *)self setCurrentInterval:0.0];
  [(MTStopwatch *)self setPreviousLapsTotalInterval:0.0];
  v3 = objc_opt_new();
  [(MTStopwatch *)self setLaps:v3];

  [(MTStopwatch *)self setState:0];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(MTStopwatch *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"MTStopwatchIdentifier"];

  title = [(MTStopwatch *)self title];
  [coderCopy encodeObject:title forKey:@"MTStopwatchTitle"];

  startDate = [(MTStopwatch *)self startDate];
  [coderCopy encodeObject:startDate forKey:@"MTStopwatchStartDate"];

  [(MTStopwatch *)self offset];
  [coderCopy encodeDouble:@"MTStopwatchOffset" forKey:?];
  [(MTStopwatch *)self currentInterval];
  [coderCopy encodeDouble:@"MTStopwatchCurrentInterval" forKey:?];
  [(MTStopwatch *)self previousLapsTotalInterval];
  [coderCopy encodeDouble:@"MTStopwatchPreviousLapsTotalInterval" forKey:?];
  laps = [(MTStopwatch *)self laps];
  [coderCopy encodeObject:laps forKey:@"MTStopwatchLaps"];

  [coderCopy encodeInteger:-[MTStopwatch state](self forKey:{"state"), @"MTStopwatchState"}];
}

- (MTStopwatch)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = MTStopwatch;
  v5 = [(MTStopwatch *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MTStopwatchIdentifier"];
    [(MTStopwatch *)v5 setIdentifier:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MTStopwatchTitle"];
    [(MTStopwatch *)v5 setTitle:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MTStopwatchStartDate"];
    [(MTStopwatch *)v5 setStartDate:v8];

    [coderCopy decodeDoubleForKey:@"MTStopwatchOffset"];
    [(MTStopwatch *)v5 setOffset:?];
    [coderCopy decodeDoubleForKey:@"MTStopwatchCurrentInterval"];
    [(MTStopwatch *)v5 setCurrentInterval:?];
    [coderCopy decodeDoubleForKey:@"MTStopwatchPreviousLapsTotalInterval"];
    [(MTStopwatch *)v5 setPreviousLapsTotalInterval:?];
    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"MTStopwatchLaps"];
    [(MTStopwatch *)v5 setLaps:v12];

    -[MTStopwatch setState:](v5, "setState:", [coderCopy decodeIntegerForKey:@"MTStopwatchState"]);
  }

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [(MTStopwatch *)[MTMutableStopwatch allocWithZone:?]];
  identifier = [(MTStopwatch *)self identifier];
  [(MTStopwatch *)v4 setIdentifier:identifier];

  [(MTStopwatch *)self _copyStateOntoStopwatch:v4];
  return v4;
}

- (void)_copyStateOntoStopwatch:(id)stopwatch
{
  stopwatchCopy = stopwatch;
  title = [(MTStopwatch *)self title];
  [stopwatchCopy setTitle:title];

  startDate = [(MTStopwatch *)self startDate];
  [stopwatchCopy setStartDate:startDate];

  [(MTStopwatch *)self offset];
  [stopwatchCopy setOffset:?];
  [(MTStopwatch *)self currentInterval];
  [stopwatchCopy setCurrentInterval:?];
  [(MTStopwatch *)self previousLapsTotalInterval];
  [stopwatchCopy setPreviousLapsTotalInterval:?];
  laps = [(MTStopwatch *)self laps];
  [stopwatchCopy setLaps:laps];

  [stopwatchCopy setState:{-[MTStopwatch state](self, "state")}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = equalCopy;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [(MTStopwatch *)self _isEqualToStopwatch:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_isEqualToStopwatch:(id)stopwatch
{
  stopwatchCopy = stopwatch;
  identifier = [stopwatchCopy identifier];
  identifier2 = [(MTStopwatch *)self identifier];
  if (identifier != identifier2)
  {
    identifier3 = [stopwatchCopy identifier];
    identifier4 = [(MTStopwatch *)self identifier];
    if (![identifier3 isEqual:identifier4])
    {
      v13 = 0;
LABEL_30:

      goto LABEL_31;
    }

    v39 = identifier4;
    v40 = identifier3;
  }

  title = [stopwatchCopy title];
  title2 = [(MTStopwatch *)self title];
  if (title == title2)
  {
LABEL_8:
    laps = [stopwatchCopy laps];
    laps2 = [(MTStopwatch *)self laps];
    if (laps == laps2)
    {
      v36 = laps;
    }

    else
    {
      laps3 = [stopwatchCopy laps];
      laps4 = [(MTStopwatch *)self laps];
      if (![laps3 isEqual:?])
      {
        v13 = 0;
LABEL_26:

LABEL_27:
        title4 = v37;
        title3 = v38;
        if (title == title2)
        {
          goto LABEL_29;
        }

        goto LABEL_28;
      }

      v34 = laps3;
      v36 = laps;
    }

    startDate = [stopwatchCopy startDate];
    startDate2 = [(MTStopwatch *)self startDate];
    if (startDate == startDate2 || ([stopwatchCopy startDate], v19 = objc_claimAutoreleasedReturnValue(), -[MTStopwatch startDate](self, "startDate"), v32 = objc_claimAutoreleasedReturnValue(), v33 = v19, objc_msgSend(v19, "isEqual:")))
    {
      [stopwatchCopy offset];
      v21 = v20;
      [(MTStopwatch *)self offset];
      if (v21 == v22 && ([stopwatchCopy currentInterval], v24 = v23, -[MTStopwatch currentInterval](self, "currentInterval"), v24 == v25) && (objc_msgSend(stopwatchCopy, "previousLapsTotalInterval"), v27 = v26, -[MTStopwatch previousLapsTotalInterval](self, "previousLapsTotalInterval"), v27 == v28))
      {
        state = [stopwatchCopy state];
        v13 = state == [(MTStopwatch *)self state];
        v30 = v13;
      }

      else
      {
        v13 = 0;
        v30 = 0;
      }

      if (startDate == startDate2)
      {

        v13 = v30;
LABEL_25:
        laps = v36;
        laps3 = v34;
        if (v36 == laps2)
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }
    }

    else
    {
      v13 = 0;
    }

    goto LABEL_25;
  }

  title3 = [stopwatchCopy title];
  title4 = [(MTStopwatch *)self title];
  if ([title3 isEqual:title4])
  {
    v37 = title4;
    v38 = title3;
    goto LABEL_8;
  }

  v13 = 0;
LABEL_28:

LABEL_29:
  identifier4 = v39;
  identifier3 = v40;
  if (identifier != identifier2)
  {
    goto LABEL_30;
  }

LABEL_31:

  return v13;
}

- (unint64_t)hash
{
  hashString = [(MTStopwatch *)self hashString];
  v3 = [hashString hash];

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  identifier = [(MTStopwatch *)self identifier];
  v6 = [objc_opt_class() descriptionForState:{-[MTStopwatch state](self, "state")}];
  startDate = [(MTStopwatch *)self startDate];
  [(MTStopwatch *)self offset];
  v9 = v8;
  [(MTStopwatch *)self currentInterval];
  v11 = v10;
  [(MTStopwatch *)self previousLapsTotalInterval];
  v13 = v12;
  laps = [(MTStopwatch *)self laps];
  title = [(MTStopwatch *)self title];
  v16 = [v3 stringWithFormat:@"<%@:%p, id:%@, state:%@, startDate:%@, offset:%f, currentInterval:%f, previousLapsTotalInterval:%f, laps:%@, title:%@>", v4, self, identifier, v6, startDate, v9, v11, v13, laps, title];

  return v16;
}

+ (id)descriptionForState:(int64_t)state
{
  if (state > 3)
  {
    return @"Invalid State";
  }

  else
  {
    return off_1E7B0EBA8[state];
  }
}

@end