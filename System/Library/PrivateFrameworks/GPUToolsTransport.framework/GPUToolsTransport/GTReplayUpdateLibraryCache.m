@interface GTReplayUpdateLibraryCache
- (GTReplayUpdateLibraryCache)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GTReplayUpdateLibraryCache

- (GTReplayUpdateLibraryCache)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = GTReplayUpdateLibraryCache;
  v5 = [(GTReplayRequest *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"data"];
    data = v5->_data;
    v5->_data = v8;

    v10 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = GTReplayUpdateLibraryCache;
  v4 = a3;
  [(GTReplayRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_uuid forKey:{@"uuid", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_data forKey:@"data"];
}

@end