@interface _HDMHDomainCount
- (_HDMHDomainCount)initWithCount:(int64_t)a3 mostRecentDate:(id)a4;
@end

@implementation _HDMHDomainCount

- (_HDMHDomainCount)initWithCount:(int64_t)a3 mostRecentDate:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = _HDMHDomainCount;
  v7 = [(_HDMHDomainCount *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(_HDMHDomainCount *)v7 setCount:a3];
    [(_HDMHDomainCount *)v8 setMostRecentDate:v6];
  }

  return v8;
}

@end