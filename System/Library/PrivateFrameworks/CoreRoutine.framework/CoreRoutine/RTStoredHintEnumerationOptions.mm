@interface RTStoredHintEnumerationOptions
- (BOOL)isEqual:(id)equal;
- (RTStoredHintEnumerationOptions)initWithCoder:(id)coder;
- (RTStoredHintEnumerationOptions)initWithReferenceLocation:(id)location sourceFilter:(id)filter ascending:(BOOL)ascending distance:(id)distance dateInterval:(id)interval limit:(unint64_t)limit batchSize:(unint64_t)size;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTStoredHintEnumerationOptions

- (RTStoredHintEnumerationOptions)initWithReferenceLocation:(id)location sourceFilter:(id)filter ascending:(BOOL)ascending distance:(id)distance dateInterval:(id)interval limit:(unint64_t)limit batchSize:(unint64_t)size
{
  locationCopy = location;
  filterCopy = filter;
  distanceCopy = distance;
  intervalCopy = interval;
  if ([filterCopy integerValue])
  {
    if (locationCopy)
    {
      goto LABEL_3;
    }

LABEL_7:

    distanceCopy = 0;
    goto LABEL_8;
  }

  filterCopy = 0;
  if (!locationCopy)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (!distanceCopy)
  {
    distanceCopy = &unk_1F3DE3B58;
  }

LABEL_8:
  v23.receiver = self;
  v23.super_class = RTStoredHintEnumerationOptions;
  v20 = [(RTStoredHintEnumerationOptions *)&v23 init];
  v21 = v20;
  if (v20)
  {
    v20->_ascending = ascending;
    objc_storeStrong(&v20->_referenceLocation, location);
    objc_storeStrong(&v21->_sourceFilter, filterCopy);
    objc_storeStrong(&v21->_distance, distanceCopy);
    objc_storeStrong(&v21->_dateInterval, interval);
    v21->_limit = limit;
    v21->_batchSize = size;
  }

  return v21;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithBool:self->_ascending];
  v4 = [v3 hash];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_batchSize];
  v6 = [v5 hash] ^ v4;
  v7 = [(NSDateInterval *)self->_dateInterval hash];
  v8 = v7 ^ [(NSNumber *)self->_distance hash];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_limit];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(RTLocation *)self->_referenceLocation hash];
  v12 = v11 ^ [(NSNumber *)self->_sourceFilter hash];

  return v10 ^ v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v17 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      ascending = [(RTStoredHintEnumerationOptions *)self ascending];
      ascending2 = [(RTStoredHintEnumerationOptions *)v5 ascending];
      batchSize = [(RTStoredHintEnumerationOptions *)self batchSize];
      batchSize2 = [(RTStoredHintEnumerationOptions *)v5 batchSize];
      dateInterval = [(RTStoredHintEnumerationOptions *)self dateInterval];
      dateInterval2 = [(RTStoredHintEnumerationOptions *)v5 dateInterval];
      v19 = [dateInterval isEqualToDateInterval:dateInterval2];

      distance = [(RTStoredHintEnumerationOptions *)self distance];
      distance2 = [(RTStoredHintEnumerationOptions *)v5 distance];

      limit = [(RTStoredHintEnumerationOptions *)self limit];
      limit2 = [(RTStoredHintEnumerationOptions *)v5 limit];
      referenceLocation = [(RTStoredHintEnumerationOptions *)self referenceLocation];
      referenceLocation2 = [(RTStoredHintEnumerationOptions *)v5 referenceLocation];
      v14 = [referenceLocation isEqualToLocation:referenceLocation2];

      sourceFilter = [(RTStoredHintEnumerationOptions *)self sourceFilter];
      sourceFilter2 = [(RTStoredHintEnumerationOptions *)v5 sourceFilter];

      v17 = 0;
      if (ascending == ascending2 && batchSize == batchSize2 && v19 && distance == distance2 && limit == limit2)
      {
        if (sourceFilter == sourceFilter2)
        {
          v17 = v14;
        }

        else
        {
          v17 = 0;
        }
      }
    }

    else
    {
      v17 = 0;
    }
  }

  return v17;
}

- (void)encodeWithCoder:(id)coder
{
  ascending = self->_ascending;
  coderCopy = coder;
  [coderCopy encodeBool:ascending forKey:@"ascending"];
  [coderCopy encodeInteger:self->_batchSize forKey:@"batchSize"];
  [coderCopy encodeObject:self->_dateInterval forKey:@"dateInterval"];
  [coderCopy encodeObject:self->_distance forKey:@"distance"];
  [coderCopy encodeInteger:self->_limit forKey:@"limit"];
  [coderCopy encodeObject:self->_referenceLocation forKey:@"referenceLocation"];
  [coderCopy encodeObject:self->_sourceFilter forKey:@"sourceFilter"];
}

- (RTStoredHintEnumerationOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeBoolForKey:@"ascending"];
  v6 = [coderCopy decodeIntegerForKey:@"batchSize"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateInterval"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"distance"];
  v9 = [coderCopy decodeIntegerForKey:@"limit"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"referenceLocation"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sourceFilter"];

  v12 = [(RTStoredHintEnumerationOptions *)self initWithReferenceLocation:v10 sourceFilter:v11 ascending:v5 distance:v8 dateInterval:v7 limit:v9 batchSize:v6];
  return v12;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  sourceFilter = self->_sourceFilter;
  if (self->_ascending)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  distance = self->_distance;
  startDate = [(NSDateInterval *)self->_dateInterval startDate];
  stringFromDate = [startDate stringFromDate];
  endDate = [(NSDateInterval *)self->_dateInterval endDate];
  stringFromDate2 = [endDate stringFromDate];
  v11 = [v3 stringWithFormat:@"ascending, %@, sourceFilter, %@, distance, %@, startDate, %@, endDate, %@, limit, %ld", v5, sourceFilter, distance, stringFromDate, stringFromDate2, self->_limit];

  return v11;
}

@end