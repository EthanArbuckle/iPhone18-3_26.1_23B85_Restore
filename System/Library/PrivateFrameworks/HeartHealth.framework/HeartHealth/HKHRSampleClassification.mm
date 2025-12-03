@interface HKHRSampleClassification
- (BOOL)isEqual:(id)equal;
- (HKHRSampleClassification)initWithCoder:(id)coder;
- (HKHRSampleClassification)initWithSampleUUID:(id)d classification:(int64_t)classification sampleDateInterval:(id)interval sampleTimeZone:(id)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKHRSampleClassification

- (HKHRSampleClassification)initWithSampleUUID:(id)d classification:(int64_t)classification sampleDateInterval:(id)interval sampleTimeZone:(id)zone
{
  dCopy = d;
  intervalCopy = interval;
  zoneCopy = zone;
  v17.receiver = self;
  v17.super_class = HKHRSampleClassification;
  v14 = [(HKHRSampleClassification *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_sampleUUID, d);
    v15->_classification = classification;
    objc_storeStrong(&v15->_sampleDateInterval, interval);
    objc_storeStrong(&v15->_sampleTimeZone, zone);
  }

  return v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = [(NSUUID *)self->_sampleUUID isEqual:v5->_sampleUUID]&& self->_classification == v5->_classification && [(NSDateInterval *)self->_sampleDateInterval isEqualToDateInterval:v5->_sampleDateInterval]&& [(NSTimeZone *)self->_sampleTimeZone isEqualToTimeZone:v5->_sampleTimeZone];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = self->_classification ^ [(NSUUID *)self->_sampleUUID hash];
  v4 = [(NSDateInterval *)self->_sampleDateInterval hash];
  return v3 ^ v4 ^ [(NSTimeZone *)self->_sampleTimeZone hash];
}

- (void)encodeWithCoder:(id)coder
{
  sampleUUID = self->_sampleUUID;
  coderCopy = coder;
  [coderCopy encodeObject:sampleUUID forKey:@"SampleUUID"];
  [coderCopy encodeInteger:self->_classification forKey:@"Classification"];
  [coderCopy encodeObject:self->_sampleDateInterval forKey:@"SampleDateInterval"];
  [coderCopy encodeObject:self->_sampleTimeZone forKey:@"SampleTimeZone"];
}

- (HKHRSampleClassification)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = HKHRSampleClassification;
  v5 = [(HKHRSampleClassification *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SampleUUID"];
    sampleUUID = v5->_sampleUUID;
    v5->_sampleUUID = v6;

    v5->_classification = [coderCopy decodeIntegerForKey:@"Classification"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SampleDateInterval"];
    sampleDateInterval = v5->_sampleDateInterval;
    v5->_sampleDateInterval = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SampleTimeZone"];
    sampleTimeZone = v5->_sampleTimeZone;
    v5->_sampleTimeZone = v10;
  }

  return v5;
}

- (id)description
{
  if (description_onceToken != -1)
  {
    [HKHRSampleClassification description];
  }

  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  uUIDString = [(NSUUID *)self->_sampleUUID UUIDString];
  v6 = description_formatter;
  classification = self->_classification;
  endDate = [(NSDateInterval *)self->_sampleDateInterval endDate];
  v9 = [v6 stringFromDate:endDate];
  abbreviation = [(NSTimeZone *)self->_sampleTimeZone abbreviation];
  v11 = [v3 stringWithFormat:@"<%@:%p UUID:%@ classification:%ld endDate:%@, timeZone:%@>", v4, self, uUIDString, classification, v9, abbreviation];

  return v11;
}

uint64_t __39__HKHRSampleClassification_description__block_invoke()
{
  description_formatter = objc_alloc_init(MEMORY[0x277CCAA68]);

  return MEMORY[0x2821F96F8]();
}

@end