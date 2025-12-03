@interface GTReplayUpdateLibraryCache
- (GTReplayUpdateLibraryCache)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GTReplayUpdateLibraryCache

- (GTReplayUpdateLibraryCache)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = GTReplayUpdateLibraryCache;
  v5 = [(GTReplayRequest *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"data"];
    data = v5->_data;
    v5->_data = v8;

    v10 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = GTReplayUpdateLibraryCache;
  coderCopy = coder;
  [(GTReplayRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_uuid forKey:{@"uuid", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_data forKey:@"data"];
}

@end