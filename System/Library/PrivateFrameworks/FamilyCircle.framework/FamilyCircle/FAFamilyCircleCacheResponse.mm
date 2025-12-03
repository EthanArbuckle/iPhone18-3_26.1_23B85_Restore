@interface FAFamilyCircleCacheResponse
- (BOOL)_isFamilyCircleFresh:(id)fresh;
- (BOOL)isFamilyCircleFresh;
- (FAFamilyCircleCacheResponse)initWithFamilyCircle:(id)circle serverTag:(id)tag cacheDate:(id)date maxAge:(double)age;
- (NSDate)expiration;
- (id)familyCircleIfFresh;
- (id)familyCircleValidatingAgeWithDate:(id)date;
@end

@implementation FAFamilyCircleCacheResponse

- (id)familyCircleIfFresh
{
  v3 = +[NSDate date];
  v4 = [(FAFamilyCircleCacheResponse *)self familyCircleValidatingAgeWithDate:v3];

  return v4;
}

- (NSDate)expiration
{
  cacheDate = [(FAFamilyCircleCacheResponse *)self cacheDate];
  [(FAFamilyCircleCacheResponse *)self maxAge];
  v4 = [cacheDate dateByAddingTimeInterval:?];

  return v4;
}

- (FAFamilyCircleCacheResponse)initWithFamilyCircle:(id)circle serverTag:(id)tag cacheDate:(id)date maxAge:(double)age
{
  circleCopy = circle;
  tagCopy = tag;
  dateCopy = date;
  v17.receiver = self;
  v17.super_class = FAFamilyCircleCacheResponse;
  v14 = [(FAFamilyCircleCacheResponse *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_familyCircle, circle);
    objc_storeStrong(&v15->_cacheDate, date);
    v15->_maxAge = age;
    objc_storeStrong(&v15->_serverTag, tag);
  }

  return v15;
}

- (id)familyCircleValidatingAgeWithDate:(id)date
{
  if ([(FAFamilyCircleCacheResponse *)self _isFamilyCircleFresh:date])
  {
    familyCircle = [(FAFamilyCircleCacheResponse *)self familyCircle];
  }

  else
  {
    familyCircle = 0;
  }

  return familyCircle;
}

- (BOOL)isFamilyCircleFresh
{
  v3 = +[NSDate date];
  LOBYTE(self) = [(FAFamilyCircleCacheResponse *)self _isFamilyCircleFresh:v3];

  return self;
}

- (BOOL)_isFamilyCircleFresh:(id)fresh
{
  freshCopy = fresh;
  expiration = [(FAFamilyCircleCacheResponse *)self expiration];
  v6 = [freshCopy compare:expiration];

  return v6 != 1;
}

@end