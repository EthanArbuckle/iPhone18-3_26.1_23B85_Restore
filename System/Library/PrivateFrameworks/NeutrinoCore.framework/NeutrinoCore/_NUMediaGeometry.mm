@interface _NUMediaGeometry
- ($0AC6E346AE4835514AAA8AC86D8F4844)size;
- (BOOL)hasDuration;
- (BOOL)hasSize;
- (NSString)debugDescription;
- (NSString)description;
- (_NUMediaGeometry)initWithSize:(id)size orientation:(int64_t)orientation;
- (_NUMediaGeometry)initWithSize:(id)size orientation:(int64_t)orientation duration:(id *)duration;
@end

@implementation _NUMediaGeometry

- ($0AC6E346AE4835514AAA8AC86D8F4844)size
{
  height = self->_size.height;
  width = self->_size.width;
  result.var1 = height;
  result.var0 = width;
  return result;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(_NUMediaGeometry *)self description];
  v6 = [v3 stringWithFormat:@"<%@:%p %@>", v4, self, v5];

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  hasSize = [(_NUMediaGeometry *)self hasSize];
  if (hasSize)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lux%lu", self->_size.width, self->_size.height];
  }

  else
  {
    v5 = @"n/a";
  }

  orientation = self->_orientation;
  if ((orientation - 9) < 0xFFFFFFFFFFFFFFF8)
  {
    orientation = 0;
  }

  v7 = *(&NUOrientationName_names + orientation);
  if ([(_NUMediaGeometry *)self hasDuration])
  {
    time = self->_duration;
    v8 = CMTimeCopyDescription(0, &time);
    v9 = [v3 stringWithFormat:@"size: %@, orientation: %@, duration: %@", v5, v7, v8];
  }

  else
  {
    v9 = [v3 stringWithFormat:@"size: %@, orientation: %@, duration: %@", v5, v7, @"n/a"];
  }

  if (hasSize)
  {
  }

  return v9;
}

- (BOOL)hasSize
{
  if (self->_size.width)
  {
    v2 = self->_size.height == 0;
  }

  else
  {
    v2 = 1;
  }

  return !v2;
}

- (BOOL)hasDuration
{
  if ((self->_duration.flags & 1) == 0)
  {
    return 0;
  }

  v7 = v2;
  v8 = v3;
  time1 = self->_duration;
  v5 = **&MEMORY[0x1E6960CC0];
  return CMTimeCompare(&time1, &v5) > 0;
}

- (_NUMediaGeometry)initWithSize:(id)size orientation:(int64_t)orientation duration:(id *)duration
{
  var1 = size.var1;
  var0 = size.var0;
  v11.receiver = self;
  v11.super_class = _NUMediaGeometry;
  result = [(_NUMediaGeometry *)&v11 init];
  result->_size.width = var0;
  result->_size.height = var1;
  var3 = duration->var3;
  *&result->_duration.value = *&duration->var0;
  result->_duration.epoch = var3;
  result->_orientation = orientation;
  return result;
}

- (_NUMediaGeometry)initWithSize:(id)size orientation:(int64_t)orientation
{
  v5 = *MEMORY[0x1E6960CC0];
  v6 = *(MEMORY[0x1E6960CC0] + 16);
  return [(_NUMediaGeometry *)self initWithSize:size.var0 orientation:size.var1 duration:orientation, &v5];
}

@end