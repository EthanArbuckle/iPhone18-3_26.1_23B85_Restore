@interface MTTimerDuration
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToDuration:(id)a3;
- (MTTimerDuration)initWithCoder:(id)a3;
- (MTTimerDuration)initWithMTCDDuration:(id)a3;
- (MTTimerDuration)initWithTitle:(id)a3 duration:(double)a4 sound:(id)a5;
- (MTTimerDuration)initWithTitle:(id)a3 duration:(double)a4 sound:(id)a5 lastModified:(id)a6;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)hashString;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MTTimerDuration

- (MTTimerDuration)initWithTitle:(id)a3 duration:(double)a4 sound:(id)a5
{
  v8 = MEMORY[0x1E695DF00];
  v9 = a5;
  v10 = a3;
  v11 = [v8 date];
  v12 = [(MTTimerDuration *)self initWithTitle:v10 duration:v9 sound:v11 lastModified:a4];

  return v12;
}

- (MTTimerDuration)initWithTitle:(id)a3 duration:(double)a4 sound:(id)a5 lastModified:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v17.receiver = self;
  v17.super_class = MTTimerDuration;
  v13 = [(MTTimerDuration *)&v17 init];
  v14 = v13;
  if (v13)
  {
    [(MTTimerDuration *)v13 setTitle:v10];
    [(MTTimerDuration *)v14 setDuration:a4];
    [(MTTimerDuration *)v14 setLastModified:v12];
    if (v11)
    {
      [(MTTimerDuration *)v14 setSound:v11];
    }

    else
    {
      v15 = [MTSound defaultSoundForCategory:1];
      [(MTTimerDuration *)v14 setSound:v15];
    }
  }

  return v14;
}

- (MTTimerDuration)initWithMTCDDuration:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = MTTimerDuration;
  v5 = [(MTTimerDuration *)&v12 init];
  if (v5)
  {
    v6 = [v4 title];
    [(MTTimerDuration *)v5 setTitle:v6];

    [v4 duration];
    [(MTTimerDuration *)v5 setDuration:?];
    v7 = [v4 lastModified];
    [(MTTimerDuration *)v5 setLastModified:v7];

    v8 = [MTSound alloc];
    v9 = [v4 sound];
    v10 = [(MTSound *)v8 initWithMTCDSound:v9];
    [(MTTimerDuration *)v5 setSound:v10];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
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
      v8 = [(MTTimerDuration *)self isEqualToDuration:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (BOOL)isEqualToDuration:(id)a3
{
  v4 = a3;
  [(MTTimerDuration *)self duration];
  v6 = v5;
  [v4 duration];
  if (v6 == v7)
  {
    v8 = [(MTTimerDuration *)self title];
    v9 = [v4 title];
    v10 = [v8 caseInsensitiveCompare:v9] == 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  [(MTTimerDuration *)self duration];
  v6 = [v4 numberWithDouble:?];
  [v5 encodeObject:v6 forKey:@"kMTTimerDurationInterval"];

  v7 = [(MTTimerDuration *)self title];
  [v5 encodeObject:v7 forKey:@"kMTTimerDurationTitle"];

  v8 = [(MTTimerDuration *)self lastModified];
  [v5 encodeObject:v8 forKey:@"kMTTimerDurationLastModified"];

  v9 = [(MTTimerDuration *)self sound];
  [v5 encodeObject:v9 forKey:@"kMTTimerDurationSound"];
}

- (MTTimerDuration)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MTTimerDuration;
  v5 = [(MTTimerDuration *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kMTTimerDurationInterval"];
    [v6 doubleValue];
    [(MTTimerDuration *)v5 setDuration:?];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kMTTimerDurationTitle"];
    [(MTTimerDuration *)v5 setTitle:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kMTTimerDurationLastModified"];
    [(MTTimerDuration *)v5 setLastModified:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kMTTimerDurationSound"];
    [(MTTimerDuration *)v5 setSound:v9];
  }

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(MTTimerDuration *)self title];
  [(MTTimerDuration *)self duration];
  v6 = v5;
  v7 = [(MTTimerDuration *)self lastModified];
  v8 = [v3 stringWithFormat:@"duration with title: %@, duration: %f, lastModified: %@", v4, v6, v7];

  return v8;
}

- (unint64_t)hash
{
  v2 = [(MTTimerDuration *)self hashString];
  v3 = [v2 hash];

  return v3;
}

- (id)hashString
{
  v3 = objc_opt_new();
  v4 = [(MTTimerDuration *)self title];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [(MTTimerDuration *)self title];
    v7 = [v6 lowercaseString];
    [v3 appendFormat:@"%@", v7];
  }

  [(MTTimerDuration *)self duration];
  [v3 appendFormat:@"%f", v8];
  v9 = [v3 copy];

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [MTTimerDuration alloc];
  v5 = [(MTTimerDuration *)self title];
  [(MTTimerDuration *)self duration];
  v7 = v6;
  v8 = [(MTTimerDuration *)self sound];
  v9 = [(MTTimerDuration *)self lastModified];
  v10 = [(MTTimerDuration *)v4 initWithTitle:v5 duration:v8 sound:v9 lastModified:v7];

  return v10;
}

@end