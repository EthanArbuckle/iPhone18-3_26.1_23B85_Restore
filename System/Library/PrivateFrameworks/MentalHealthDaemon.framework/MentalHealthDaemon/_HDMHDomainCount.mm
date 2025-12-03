@interface _HDMHDomainCount
- (_HDMHDomainCount)initWithCount:(int64_t)count mostRecentDate:(id)date;
@end

@implementation _HDMHDomainCount

- (_HDMHDomainCount)initWithCount:(int64_t)count mostRecentDate:(id)date
{
  dateCopy = date;
  v10.receiver = self;
  v10.super_class = _HDMHDomainCount;
  v7 = [(_HDMHDomainCount *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(_HDMHDomainCount *)v7 setCount:count];
    [(_HDMHDomainCount *)v8 setMostRecentDate:dateCopy];
  }

  return v8;
}

@end