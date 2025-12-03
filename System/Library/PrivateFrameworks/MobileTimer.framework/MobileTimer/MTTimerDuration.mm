@interface MTTimerDuration
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDuration:(id)duration;
- (MTTimerDuration)initWithCoder:(id)coder;
- (MTTimerDuration)initWithMTCDDuration:(id)duration;
- (MTTimerDuration)initWithTitle:(id)title duration:(double)duration sound:(id)sound;
- (MTTimerDuration)initWithTitle:(id)title duration:(double)duration sound:(id)sound lastModified:(id)modified;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)hashString;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MTTimerDuration

- (MTTimerDuration)initWithTitle:(id)title duration:(double)duration sound:(id)sound
{
  v8 = MEMORY[0x1E695DF00];
  soundCopy = sound;
  titleCopy = title;
  date = [v8 date];
  v12 = [(MTTimerDuration *)self initWithTitle:titleCopy duration:soundCopy sound:date lastModified:duration];

  return v12;
}

- (MTTimerDuration)initWithTitle:(id)title duration:(double)duration sound:(id)sound lastModified:(id)modified
{
  titleCopy = title;
  soundCopy = sound;
  modifiedCopy = modified;
  v17.receiver = self;
  v17.super_class = MTTimerDuration;
  v13 = [(MTTimerDuration *)&v17 init];
  v14 = v13;
  if (v13)
  {
    [(MTTimerDuration *)v13 setTitle:titleCopy];
    [(MTTimerDuration *)v14 setDuration:duration];
    [(MTTimerDuration *)v14 setLastModified:modifiedCopy];
    if (soundCopy)
    {
      [(MTTimerDuration *)v14 setSound:soundCopy];
    }

    else
    {
      v15 = [MTSound defaultSoundForCategory:1];
      [(MTTimerDuration *)v14 setSound:v15];
    }
  }

  return v14;
}

- (MTTimerDuration)initWithMTCDDuration:(id)duration
{
  durationCopy = duration;
  v12.receiver = self;
  v12.super_class = MTTimerDuration;
  v5 = [(MTTimerDuration *)&v12 init];
  if (v5)
  {
    title = [durationCopy title];
    [(MTTimerDuration *)v5 setTitle:title];

    [durationCopy duration];
    [(MTTimerDuration *)v5 setDuration:?];
    lastModified = [durationCopy lastModified];
    [(MTTimerDuration *)v5 setLastModified:lastModified];

    v8 = [MTSound alloc];
    sound = [durationCopy sound];
    v10 = [(MTSound *)v8 initWithMTCDSound:sound];
    [(MTTimerDuration *)v5 setSound:v10];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
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
      v8 = [(MTTimerDuration *)self isEqualToDuration:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (BOOL)isEqualToDuration:(id)duration
{
  durationCopy = duration;
  [(MTTimerDuration *)self duration];
  v6 = v5;
  [durationCopy duration];
  if (v6 == v7)
  {
    title = [(MTTimerDuration *)self title];
    title2 = [durationCopy title];
    v10 = [title caseInsensitiveCompare:title2] == 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  coderCopy = coder;
  [(MTTimerDuration *)self duration];
  v6 = [v4 numberWithDouble:?];
  [coderCopy encodeObject:v6 forKey:@"kMTTimerDurationInterval"];

  title = [(MTTimerDuration *)self title];
  [coderCopy encodeObject:title forKey:@"kMTTimerDurationTitle"];

  lastModified = [(MTTimerDuration *)self lastModified];
  [coderCopy encodeObject:lastModified forKey:@"kMTTimerDurationLastModified"];

  sound = [(MTTimerDuration *)self sound];
  [coderCopy encodeObject:sound forKey:@"kMTTimerDurationSound"];
}

- (MTTimerDuration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = MTTimerDuration;
  v5 = [(MTTimerDuration *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kMTTimerDurationInterval"];
    [v6 doubleValue];
    [(MTTimerDuration *)v5 setDuration:?];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kMTTimerDurationTitle"];
    [(MTTimerDuration *)v5 setTitle:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kMTTimerDurationLastModified"];
    [(MTTimerDuration *)v5 setLastModified:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kMTTimerDurationSound"];
    [(MTTimerDuration *)v5 setSound:v9];
  }

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  title = [(MTTimerDuration *)self title];
  [(MTTimerDuration *)self duration];
  v6 = v5;
  lastModified = [(MTTimerDuration *)self lastModified];
  v8 = [v3 stringWithFormat:@"duration with title: %@, duration: %f, lastModified: %@", title, v6, lastModified];

  return v8;
}

- (unint64_t)hash
{
  hashString = [(MTTimerDuration *)self hashString];
  v3 = [hashString hash];

  return v3;
}

- (id)hashString
{
  v3 = objc_opt_new();
  title = [(MTTimerDuration *)self title];
  v5 = [title length];

  if (v5)
  {
    title2 = [(MTTimerDuration *)self title];
    lowercaseString = [title2 lowercaseString];
    [v3 appendFormat:@"%@", lowercaseString];
  }

  [(MTTimerDuration *)self duration];
  [v3 appendFormat:@"%f", v8];
  v9 = [v3 copy];

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [MTTimerDuration alloc];
  title = [(MTTimerDuration *)self title];
  [(MTTimerDuration *)self duration];
  v7 = v6;
  sound = [(MTTimerDuration *)self sound];
  lastModified = [(MTTimerDuration *)self lastModified];
  v10 = [(MTTimerDuration *)v4 initWithTitle:title duration:sound sound:lastModified lastModified:v7];

  return v10;
}

@end