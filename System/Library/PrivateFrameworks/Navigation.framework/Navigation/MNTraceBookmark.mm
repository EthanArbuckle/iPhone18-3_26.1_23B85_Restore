@interface MNTraceBookmark
- (MNTraceBookmark)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MNTraceBookmark

- (void)encodeWithCoder:(id)a3
{
  timestamp = self->_timestamp;
  v5 = a3;
  [v5 encodeDouble:@"_timestamp" forKey:timestamp];
  [v5 encodeObject:self->_imageData forKey:@"_imageData"];
}

- (MNTraceBookmark)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MNTraceBookmark *)self init];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"_timestamp"];
    v5->_timestamp = v6;
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_imageData"];
    imageData = v5->_imageData;
    v5->_imageData = v7;

    v9 = v5;
  }

  return v5;
}

@end