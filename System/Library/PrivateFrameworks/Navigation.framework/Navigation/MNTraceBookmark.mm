@interface MNTraceBookmark
- (MNTraceBookmark)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MNTraceBookmark

- (void)encodeWithCoder:(id)coder
{
  timestamp = self->_timestamp;
  coderCopy = coder;
  [coderCopy encodeDouble:@"_timestamp" forKey:timestamp];
  [coderCopy encodeObject:self->_imageData forKey:@"_imageData"];
}

- (MNTraceBookmark)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(MNTraceBookmark *)self init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"_timestamp"];
    v5->_timestamp = v6;
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_imageData"];
    imageData = v5->_imageData;
    v5->_imageData = v7;

    v9 = v5;
  }

  return v5;
}

@end