@interface MTStopwatch
+ (id)descriptionForState:(int64_t)a3;
- (BOOL)_isEqualToStopwatch:(id)a3;
- (BOOL)isEqual:(id)a3;
- (MTStopwatch)init;
- (MTStopwatch)initWithCoder:(id)a3;
- (MTStopwatch)initWithId:(id)a3;
- (NSString)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)_copyStateOntoStopwatch:(id)a3;
- (void)commonInit;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MTStopwatch

- (MTStopwatch)init
{
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v4 = [v3 UUIDString];
  v5 = [(MTStopwatch *)self initWithId:v4];

  return v5;
}

- (MTStopwatch)initWithId:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MTStopwatch;
  v5 = [(MTStopwatch *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(MTStopwatch *)v5 setIdentifier:v4];
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

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [(MTStopwatch *)self identifier];
  [v8 encodeObject:v4 forKey:@"MTStopwatchIdentifier"];

  v5 = [(MTStopwatch *)self title];
  [v8 encodeObject:v5 forKey:@"MTStopwatchTitle"];

  v6 = [(MTStopwatch *)self startDate];
  [v8 encodeObject:v6 forKey:@"MTStopwatchStartDate"];

  [(MTStopwatch *)self offset];
  [v8 encodeDouble:@"MTStopwatchOffset" forKey:?];
  [(MTStopwatch *)self currentInterval];
  [v8 encodeDouble:@"MTStopwatchCurrentInterval" forKey:?];
  [(MTStopwatch *)self previousLapsTotalInterval];
  [v8 encodeDouble:@"MTStopwatchPreviousLapsTotalInterval" forKey:?];
  v7 = [(MTStopwatch *)self laps];
  [v8 encodeObject:v7 forKey:@"MTStopwatchLaps"];

  [v8 encodeInteger:-[MTStopwatch state](self forKey:{"state"), @"MTStopwatchState"}];
}

- (MTStopwatch)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = MTStopwatch;
  v5 = [(MTStopwatch *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTStopwatchIdentifier"];
    [(MTStopwatch *)v5 setIdentifier:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTStopwatchTitle"];
    [(MTStopwatch *)v5 setTitle:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTStopwatchStartDate"];
    [(MTStopwatch *)v5 setStartDate:v8];

    [v4 decodeDoubleForKey:@"MTStopwatchOffset"];
    [(MTStopwatch *)v5 setOffset:?];
    [v4 decodeDoubleForKey:@"MTStopwatchCurrentInterval"];
    [(MTStopwatch *)v5 setCurrentInterval:?];
    [v4 decodeDoubleForKey:@"MTStopwatchPreviousLapsTotalInterval"];
    [(MTStopwatch *)v5 setPreviousLapsTotalInterval:?];
    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"MTStopwatchLaps"];
    [(MTStopwatch *)v5 setLaps:v12];

    -[MTStopwatch setState:](v5, "setState:", [v4 decodeIntegerForKey:@"MTStopwatchState"]);
  }

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [(MTStopwatch *)[MTMutableStopwatch allocWithZone:?]];
  v5 = [(MTStopwatch *)self identifier];
  [(MTStopwatch *)v4 setIdentifier:v5];

  [(MTStopwatch *)self _copyStateOntoStopwatch:v4];
  return v4;
}

- (void)_copyStateOntoStopwatch:(id)a3
{
  v7 = a3;
  v4 = [(MTStopwatch *)self title];
  [v7 setTitle:v4];

  v5 = [(MTStopwatch *)self startDate];
  [v7 setStartDate:v5];

  [(MTStopwatch *)self offset];
  [v7 setOffset:?];
  [(MTStopwatch *)self currentInterval];
  [v7 setCurrentInterval:?];
  [(MTStopwatch *)self previousLapsTotalInterval];
  [v7 setPreviousLapsTotalInterval:?];
  v6 = [(MTStopwatch *)self laps];
  [v7 setLaps:v6];

  [v7 setState:{-[MTStopwatch state](self, "state")}];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = v4;
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

- (BOOL)_isEqualToStopwatch:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [(MTStopwatch *)self identifier];
  if (v5 != v6)
  {
    v7 = [v4 identifier];
    v8 = [(MTStopwatch *)self identifier];
    if (![v7 isEqual:v8])
    {
      v13 = 0;
LABEL_30:

      goto LABEL_31;
    }

    v39 = v8;
    v40 = v7;
  }

  v9 = [v4 title];
  v10 = [(MTStopwatch *)self title];
  if (v9 == v10)
  {
LABEL_8:
    v14 = [v4 laps];
    v15 = [(MTStopwatch *)self laps];
    if (v14 == v15)
    {
      v36 = v14;
    }

    else
    {
      v16 = [v4 laps];
      v35 = [(MTStopwatch *)self laps];
      if (![v16 isEqual:?])
      {
        v13 = 0;
LABEL_26:

LABEL_27:
        v12 = v37;
        v11 = v38;
        if (v9 == v10)
        {
          goto LABEL_29;
        }

        goto LABEL_28;
      }

      v34 = v16;
      v36 = v14;
    }

    v17 = [v4 startDate];
    v18 = [(MTStopwatch *)self startDate];
    if (v17 == v18 || ([v4 startDate], v19 = objc_claimAutoreleasedReturnValue(), -[MTStopwatch startDate](self, "startDate"), v32 = objc_claimAutoreleasedReturnValue(), v33 = v19, objc_msgSend(v19, "isEqual:")))
    {
      [v4 offset];
      v21 = v20;
      [(MTStopwatch *)self offset];
      if (v21 == v22 && ([v4 currentInterval], v24 = v23, -[MTStopwatch currentInterval](self, "currentInterval"), v24 == v25) && (objc_msgSend(v4, "previousLapsTotalInterval"), v27 = v26, -[MTStopwatch previousLapsTotalInterval](self, "previousLapsTotalInterval"), v27 == v28))
      {
        v29 = [v4 state];
        v13 = v29 == [(MTStopwatch *)self state];
        v30 = v13;
      }

      else
      {
        v13 = 0;
        v30 = 0;
      }

      if (v17 == v18)
      {

        v13 = v30;
LABEL_25:
        v14 = v36;
        v16 = v34;
        if (v36 == v15)
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

  v11 = [v4 title];
  v12 = [(MTStopwatch *)self title];
  if ([v11 isEqual:v12])
  {
    v37 = v12;
    v38 = v11;
    goto LABEL_8;
  }

  v13 = 0;
LABEL_28:

LABEL_29:
  v8 = v39;
  v7 = v40;
  if (v5 != v6)
  {
    goto LABEL_30;
  }

LABEL_31:

  return v13;
}

- (unint64_t)hash
{
  v2 = [(MTStopwatch *)self hashString];
  v3 = [v2 hash];

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(MTStopwatch *)self identifier];
  v6 = [objc_opt_class() descriptionForState:{-[MTStopwatch state](self, "state")}];
  v7 = [(MTStopwatch *)self startDate];
  [(MTStopwatch *)self offset];
  v9 = v8;
  [(MTStopwatch *)self currentInterval];
  v11 = v10;
  [(MTStopwatch *)self previousLapsTotalInterval];
  v13 = v12;
  v14 = [(MTStopwatch *)self laps];
  v15 = [(MTStopwatch *)self title];
  v16 = [v3 stringWithFormat:@"<%@:%p, id:%@, state:%@, startDate:%@, offset:%f, currentInterval:%f, previousLapsTotalInterval:%f, laps:%@, title:%@>", v4, self, v5, v6, v7, v9, v11, v13, v14, v15];

  return v16;
}

+ (id)descriptionForState:(int64_t)a3
{
  if (a3 > 3)
  {
    return @"Invalid State";
  }

  else
  {
    return off_1E7B0EBA8[a3];
  }
}

@end