@interface HKHRLearnHypertensionJournalEntry
- (BOOL)isEqual:(id)a3;
- (HKHRLearnHypertensionJournalEntry)initWithSampleUUID:(id)a3 dayWindowType:(int64_t)a4 dayIndex:(int64_t)a5;
- (unint64_t)hash;
@end

@implementation HKHRLearnHypertensionJournalEntry

- (HKHRLearnHypertensionJournalEntry)initWithSampleUUID:(id)a3 dayWindowType:(int64_t)a4 dayIndex:(int64_t)a5
{
  v8 = a3;
  v13.receiver = self;
  v13.super_class = HKHRLearnHypertensionJournalEntry;
  v9 = [(HKHRLearnHypertensionJournalEntry *)&v13 init];
  if (v9)
  {
    v10 = [v8 copy];
    sampleUUID = v9->_sampleUUID;
    v9->_sampleUUID = v10;

    v9->_dayWindowType = a4;
    v9->_dayIndex = a5;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HKHRLearnHypertensionJournalEntry;
  if ([(HKHRLearnHypertensionJournalEntry *)&v8 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
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
  v3 = [(HKHRLearnHypertensionJournalEntry *)self sampleUUID];
  v4 = [v3 hash];
  v5 = [(HKHRLearnHypertensionJournalEntry *)self dayWindowType];
  v6 = v5 ^ [(HKHRLearnHypertensionJournalEntry *)self dayIndex];

  return v6 ^ v4;
}

@end