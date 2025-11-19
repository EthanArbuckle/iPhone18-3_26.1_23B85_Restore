@interface LACDTORatchetState
+ (id)nullInstance;
- (BOOL)isEqual:(id)a3;
- (LACDTORatchetState)initWithCoder:(id)a3;
- (LACDTORatchetState)initWithRawValue:(int64_t)a3 duration:(double)a4 resetDuration:(double)a5 uuid:(id)a6;
- (double)effectiveDuration;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LACDTORatchetState

- (LACDTORatchetState)initWithRawValue:(int64_t)a3 duration:(double)a4 resetDuration:(double)a5 uuid:(id)a6
{
  v11 = a6;
  v15.receiver = self;
  v15.super_class = LACDTORatchetState;
  v12 = [(LACDTORatchetState *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_rawValue = a3;
    v12->_duration = a4;
    v12->_resetDuration = a5;
    objc_storeStrong(&v12->_uuid, a6);
  }

  return v13;
}

+ (id)nullInstance
{
  v2 = [[LACDTORatchetState alloc] initWithRawValue:0 duration:0 resetDuration:-1.0 uuid:-1.0];

  return v2;
}

- (double)effectiveDuration
{
  [(LACDTORatchetState *)self duration];
  v3 = 3600.0;
  if (v4 != -1.0)
  {
    [(LACDTORatchetState *)self duration];
    if (v5 > 0.0)
    {
      [(LACDTORatchetState *)self duration];
      v3 = fmin(v6, 3600.0);
    }
  }

  return fmax(v3, 1.0);
}

- (void)encodeWithCoder:(id)a3
{
  rawValue = self->_rawValue;
  v5 = a3;
  v6 = NSStringFromSelector(sel_rawValue);
  [v5 encodeInteger:rawValue forKey:v6];

  duration = self->_duration;
  v8 = NSStringFromSelector(sel_duration);
  [v5 encodeDouble:v8 forKey:duration];

  resetDuration = self->_resetDuration;
  v10 = NSStringFromSelector(sel_resetDuration);
  [v5 encodeDouble:v10 forKey:resetDuration];

  uuid = self->_uuid;
  v12 = NSStringFromSelector(sel_uuid);
  [v5 encodeObject:uuid forKey:v12];
}

- (LACDTORatchetState)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_rawValue);
  v6 = [v4 decodeIntegerForKey:v5];

  v7 = NSStringFromSelector(sel_duration);
  [v4 decodeDoubleForKey:v7];
  v9 = v8;

  v10 = NSStringFromSelector(sel_resetDuration);
  [v4 decodeDoubleForKey:v10];
  v12 = v11;

  v13 = objc_opt_class();
  v14 = NSStringFromSelector(sel_uuid);
  v15 = [v4 decodeObjectOfClass:v13 forKey:v14];

  v16 = [(LACDTORatchetState *)self initWithRawValue:v6 duration:v15 resetDuration:v9 uuid:v12];
  return v16;
}

- (id)description
{
  v25[5] = *MEMORY[0x1E69E9840];
  v24 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = self->_rawValue - 1;
  if (v4 > 3)
  {
    v5 = @"LACDTORatchetStateRawValueNotStarted";
  }

  else
  {
    v5 = off_1E7A964F0[v4];
  }

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"rawValue: %@", v5];
  v25[0] = v6;
  v7 = MEMORY[0x1E696AEC0];
  [(LACDTORatchetState *)self duration];
  v9 = [v7 stringWithFormat:@"duration: %.2f", v8];
  v25[1] = v9;
  v10 = MEMORY[0x1E696AEC0];
  [(LACDTORatchetState *)self resetDuration];
  v12 = [v10 stringWithFormat:@"resetDuration: %.2f", v11];
  v25[2] = v12;
  v13 = MEMORY[0x1E696AEC0];
  [(LACDTORatchetState *)self effectiveDuration];
  v15 = [v13 stringWithFormat:@"effectiveDuration: %.2f", v14];
  v25[3] = v15;
  v16 = MEMORY[0x1E696AEC0];
  v17 = [(LACDTORatchetState *)self uuid];
  v18 = [v16 stringWithFormat:@"uuid: %@", v17];
  v25[4] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:5];
  v20 = [v19 componentsJoinedByString:@" "];;
  v21 = [v24 stringWithFormat:@"<%@ %p %@>", v3, self, v20];;

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(LACDTORatchetState *)self rawValue];
    if (v6 != [v5 rawValue])
    {
      goto LABEL_6;
    }

    [(LACDTORatchetState *)self duration];
    v8 = v7;
    [v5 duration];
    if (v8 != v9)
    {
      goto LABEL_6;
    }

    [(LACDTORatchetState *)self resetDuration];
    v11 = v10;
    [v5 resetDuration];
    if (v11 == v12 && (-[LACDTORatchetState effectiveDuration](self, "effectiveDuration"), v14 = v13, [v5 effectiveDuration], v14 == v15))
    {
      v18 = [(LACDTORatchetState *)self uuid];
      v19 = [v5 uuid];
      if (v18 == v19)
      {
        v16 = 1;
      }

      else
      {
        v20 = [(LACDTORatchetState *)self uuid];
        v21 = [v5 uuid];
        v16 = [v20 isEqualToString:v21];
      }
    }

    else
    {
LABEL_6:
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

@end