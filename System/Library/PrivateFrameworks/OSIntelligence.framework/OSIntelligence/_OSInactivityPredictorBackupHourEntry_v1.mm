@interface _OSInactivityPredictorBackupHourEntry_v1
- (BOOL)isEqual:(id)equal;
- (_OSInactivityPredictorBackupHourEntry_v1)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _OSInactivityPredictorBackupHourEntry_v1

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt:-[_OSInactivityPredictorBackupHourEntry_v1 count](self forKey:{"count"), @"count"}];
  [(_OSInactivityPredictorBackupHourEntry *)self stdDev];
  [coderCopy encodeDouble:@"stdDev" forKey:?];
  [(_OSInactivityPredictorBackupHourEntry *)self averageDuration];
  [coderCopy encodeDouble:@"avg" forKey:?];
}

- (_OSInactivityPredictorBackupHourEntry_v1)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_alloc_init(objc_opt_class());

  -[_OSInactivityPredictorBackupHourEntry_v1 setCount:](v5, "setCount:", [coderCopy decodeIntForKey:@"count"]);
  [coderCopy decodeDoubleForKey:@"stdDev"];
  [(_OSInactivityPredictorBackupHourEntry *)v5 setStdDev:?];
  [coderCopy decodeDoubleForKey:@"avg"];
  v7 = v6;

  [(_OSInactivityPredictorBackupHourEntry *)v5 setAverageDuration:v7];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      [(_OSInactivityPredictorBackupHourEntry *)self averageDuration];
      v7 = v6;
      [(_OSInactivityPredictorBackupHourEntry *)v5 averageDuration];
      if (vabdd_f64(v7, v8) >= 0.01 || ([(_OSInactivityPredictorBackupHourEntry *)self stdDev], v10 = v9, [(_OSInactivityPredictorBackupHourEntry *)v5 stdDev], vabdd_f64(v10, v11) >= 0.01))
      {
        v13 = 0;
      }

      else
      {
        count = self->_count;
        v13 = count == [(_OSInactivityPredictorBackupHourEntry_v1 *)v5 count];
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  [(_OSInactivityPredictorBackupHourEntry *)self averageDuration];
  return [v3 stringWithFormat:@"<Inactivity Entry v1: Duration: %.1lfh, %d Total>", v4, -[_OSInactivityPredictorBackupHourEntry_v1 count](self, "count")];
}

@end