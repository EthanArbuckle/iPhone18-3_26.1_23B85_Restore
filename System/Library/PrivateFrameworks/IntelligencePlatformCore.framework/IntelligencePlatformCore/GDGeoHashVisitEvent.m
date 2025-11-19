@interface GDGeoHashVisitEvent
- (BOOL)isEqual:(id)a3;
- (GDGeoHashVisitEvent)initWithDate:(id)a3 geoHash:(unint64_t)a4 isEnter:(BOOL)a5 level:(int64_t)a6;
@end

@implementation GDGeoHashVisitEvent

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    isEqualToDate = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    isEnter = self->_isEnter;
    if (isEnter == objc_msgSend_isEnter(v6, v8, v9, v10) && (geoHash = self->_geoHash, geoHash == objc_msgSend_geoHash(v6, v11, v12, v13)))
    {
      date = self->_date;
      v19 = objc_msgSend_date(v6, v15, v16, v17);
      isEqualToDate = objc_msgSend_isEqualToDate_(date, v20, v19, v21);
    }

    else
    {
      isEqualToDate = 0;
    }
  }

  else
  {
    isEqualToDate = 0;
  }

  return isEqualToDate;
}

- (GDGeoHashVisitEvent)initWithDate:(id)a3 geoHash:(unint64_t)a4 isEnter:(BOOL)a5 level:(int64_t)a6
{
  v11 = a3;
  v15.receiver = self;
  v15.super_class = GDGeoHashVisitEvent;
  v12 = [(GDGeoHashVisitEvent *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_date, a3);
    v13->_isEnter = a5;
    v13->_geoHash = a4;
    v13->_level = a6;
  }

  return v13;
}

@end