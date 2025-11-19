@interface HKHRSampleClassification
- (BOOL)isEqual:(id)a3;
- (HKHRSampleClassification)initWithCoder:(id)a3;
- (HKHRSampleClassification)initWithSampleUUID:(id)a3 classification:(int64_t)a4 sampleDateInterval:(id)a5 sampleTimeZone:(id)a6;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKHRSampleClassification

- (HKHRSampleClassification)initWithSampleUUID:(id)a3 classification:(int64_t)a4 sampleDateInterval:(id)a5 sampleTimeZone:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = HKHRSampleClassification;
  v14 = [(HKHRSampleClassification *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_sampleUUID, a3);
    v15->_classification = a4;
    objc_storeStrong(&v15->_sampleDateInterval, a5);
    objc_storeStrong(&v15->_sampleTimeZone, a6);
  }

  return v15;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

- (void)encodeWithCoder:(id)a3
{
  sampleUUID = self->_sampleUUID;
  v5 = a3;
  [v5 encodeObject:sampleUUID forKey:@"SampleUUID"];
  [v5 encodeInteger:self->_classification forKey:@"Classification"];
  [v5 encodeObject:self->_sampleDateInterval forKey:@"SampleDateInterval"];
  [v5 encodeObject:self->_sampleTimeZone forKey:@"SampleTimeZone"];
}

- (HKHRSampleClassification)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = HKHRSampleClassification;
  v5 = [(HKHRSampleClassification *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SampleUUID"];
    sampleUUID = v5->_sampleUUID;
    v5->_sampleUUID = v6;

    v5->_classification = [v4 decodeIntegerForKey:@"Classification"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SampleDateInterval"];
    sampleDateInterval = v5->_sampleDateInterval;
    v5->_sampleDateInterval = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SampleTimeZone"];
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
  v5 = [(NSUUID *)self->_sampleUUID UUIDString];
  v6 = description_formatter;
  classification = self->_classification;
  v8 = [(NSDateInterval *)self->_sampleDateInterval endDate];
  v9 = [v6 stringFromDate:v8];
  v10 = [(NSTimeZone *)self->_sampleTimeZone abbreviation];
  v11 = [v3 stringWithFormat:@"<%@:%p UUID:%@ classification:%ld endDate:%@, timeZone:%@>", v4, self, v5, classification, v9, v10];

  return v11;
}

uint64_t __39__HKHRSampleClassification_description__block_invoke()
{
  description_formatter = objc_alloc_init(MEMORY[0x277CCAA68]);

  return MEMORY[0x2821F96F8]();
}

@end