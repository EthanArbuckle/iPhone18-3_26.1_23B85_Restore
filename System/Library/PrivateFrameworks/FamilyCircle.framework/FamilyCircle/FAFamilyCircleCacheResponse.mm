@interface FAFamilyCircleCacheResponse
- (BOOL)_isFamilyCircleFresh:(id)a3;
- (BOOL)isFamilyCircleFresh;
- (FAFamilyCircleCacheResponse)initWithFamilyCircle:(id)a3 serverTag:(id)a4 cacheDate:(id)a5 maxAge:(double)a6;
- (NSDate)expiration;
- (id)familyCircleIfFresh;
- (id)familyCircleValidatingAgeWithDate:(id)a3;
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
  v3 = [(FAFamilyCircleCacheResponse *)self cacheDate];
  [(FAFamilyCircleCacheResponse *)self maxAge];
  v4 = [v3 dateByAddingTimeInterval:?];

  return v4;
}

- (FAFamilyCircleCacheResponse)initWithFamilyCircle:(id)a3 serverTag:(id)a4 cacheDate:(id)a5 maxAge:(double)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = FAFamilyCircleCacheResponse;
  v14 = [(FAFamilyCircleCacheResponse *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_familyCircle, a3);
    objc_storeStrong(&v15->_cacheDate, a5);
    v15->_maxAge = a6;
    objc_storeStrong(&v15->_serverTag, a4);
  }

  return v15;
}

- (id)familyCircleValidatingAgeWithDate:(id)a3
{
  if ([(FAFamilyCircleCacheResponse *)self _isFamilyCircleFresh:a3])
  {
    v4 = [(FAFamilyCircleCacheResponse *)self familyCircle];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isFamilyCircleFresh
{
  v3 = +[NSDate date];
  LOBYTE(self) = [(FAFamilyCircleCacheResponse *)self _isFamilyCircleFresh:v3];

  return self;
}

- (BOOL)_isFamilyCircleFresh:(id)a3
{
  v4 = a3;
  v5 = [(FAFamilyCircleCacheResponse *)self expiration];
  v6 = [v4 compare:v5];

  return v6 != 1;
}

@end