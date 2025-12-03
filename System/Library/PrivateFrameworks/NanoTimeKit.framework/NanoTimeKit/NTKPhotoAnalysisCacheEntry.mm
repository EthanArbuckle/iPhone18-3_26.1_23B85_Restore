@interface NTKPhotoAnalysisCacheEntry
- (NTKPhotoAnalysisCacheEntry)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NTKPhotoAnalysisCacheEntry

- (NTKPhotoAnalysisCacheEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = NTKPhotoAnalysisCacheEntry;
  v5 = [(NTKPhotoAnalysisCacheEntry *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"analysis"];
    analysis = v5->_analysis;
    v5->_analysis = v6;

    v5->_sequenceNumber = [coderCopy decodeInt32ForKey:@"sequenceNumber"];
    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  analysis = self->_analysis;
  coderCopy = coder;
  [coderCopy encodeObject:analysis forKey:@"analysis"];
  [coderCopy encodeInt32:self->_sequenceNumber forKey:@"sequenceNumber"];
}

@end