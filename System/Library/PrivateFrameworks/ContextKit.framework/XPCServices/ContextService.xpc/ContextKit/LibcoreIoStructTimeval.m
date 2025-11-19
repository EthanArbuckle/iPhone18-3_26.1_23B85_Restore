@interface LibcoreIoStructTimeval
+ (id)fromMillisWithLong:(int64_t)a3;
- (LibcoreIoStructTimeval)initWithLong:(int64_t)a3 withLong:(int64_t)a4;
- (id)description;
@end

@implementation LibcoreIoStructTimeval

- (LibcoreIoStructTimeval)initWithLong:(int64_t)a3 withLong:(int64_t)a4
{
  self->tv_sec_ = a3;
  self->tv_usec_ = a4;
  return self;
}

+ (id)fromMillisWithLong:(int64_t)a3
{
  v3 = a3 / 1000;
  v4 = 1000 * (a3 % 1000);
  v5 = [LibcoreIoStructTimeval alloc];
  v5->tv_sec_ = v3;
  v5->tv_usec_ = v4;

  return v5;
}

- (id)description
{
  tv_usec = self->tv_usec_;
  tv_sec = self->tv_sec_;
  return JreStrcat("$J$JC", a2, v2, v3, v4, v5, v6, v7, @"StructTimeval[tv_sec=");
}

@end