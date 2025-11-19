@interface NTKPhotoAnalysisCacheEntry
- (NTKPhotoAnalysisCacheEntry)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NTKPhotoAnalysisCacheEntry

- (NTKPhotoAnalysisCacheEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = NTKPhotoAnalysisCacheEntry;
  v5 = [(NTKPhotoAnalysisCacheEntry *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"analysis"];
    analysis = v5->_analysis;
    v5->_analysis = v6;

    v5->_sequenceNumber = [v4 decodeInt32ForKey:@"sequenceNumber"];
    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  analysis = self->_analysis;
  v5 = a3;
  [v5 encodeObject:analysis forKey:@"analysis"];
  [v5 encodeInt32:self->_sequenceNumber forKey:@"sequenceNumber"];
}

@end