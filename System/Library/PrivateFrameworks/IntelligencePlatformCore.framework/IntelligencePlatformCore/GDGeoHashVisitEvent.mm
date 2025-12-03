@interface GDGeoHashVisitEvent
- (BOOL)isEqual:(id)equal;
- (GDGeoHashVisitEvent)initWithDate:(id)date geoHash:(unint64_t)hash isEnter:(BOOL)enter level:(int64_t)level;
@end

@implementation GDGeoHashVisitEvent

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    isEqualToDate = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
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

- (GDGeoHashVisitEvent)initWithDate:(id)date geoHash:(unint64_t)hash isEnter:(BOOL)enter level:(int64_t)level
{
  dateCopy = date;
  v15.receiver = self;
  v15.super_class = GDGeoHashVisitEvent;
  v12 = [(GDGeoHashVisitEvent *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_date, date);
    v13->_isEnter = enter;
    v13->_geoHash = hash;
    v13->_level = level;
  }

  return v13;
}

@end