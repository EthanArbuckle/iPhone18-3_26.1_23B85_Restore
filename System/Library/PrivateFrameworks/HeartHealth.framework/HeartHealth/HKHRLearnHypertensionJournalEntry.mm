@interface HKHRLearnHypertensionJournalEntry
- (BOOL)isEqual:(id)equal;
- (HKHRLearnHypertensionJournalEntry)initWithSampleUUID:(id)d dayWindowType:(int64_t)type dayIndex:(int64_t)index;
- (unint64_t)hash;
@end

@implementation HKHRLearnHypertensionJournalEntry

- (HKHRLearnHypertensionJournalEntry)initWithSampleUUID:(id)d dayWindowType:(int64_t)type dayIndex:(int64_t)index
{
  dCopy = d;
  v13.receiver = self;
  v13.super_class = HKHRLearnHypertensionJournalEntry;
  v9 = [(HKHRLearnHypertensionJournalEntry *)&v13 init];
  if (v9)
  {
    v10 = [dCopy copy];
    sampleUUID = v9->_sampleUUID;
    v9->_sampleUUID = v10;

    v9->_dayWindowType = type;
    v9->_dayIndex = index;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = HKHRLearnHypertensionJournalEntry;
  if ([(HKHRLearnHypertensionJournalEntry *)&v8 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      v5 = [(NSUUID *)self->_sampleUUID isEqual:v6[2]]&& self->_dayWindowType == v6[1] && self->_dayIndex == v6[3];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  sampleUUID = [(HKHRLearnHypertensionJournalEntry *)self sampleUUID];
  v4 = [sampleUUID hash];
  dayWindowType = [(HKHRLearnHypertensionJournalEntry *)self dayWindowType];
  v6 = dayWindowType ^ [(HKHRLearnHypertensionJournalEntry *)self dayIndex];

  return v6 ^ v4;
}

@end