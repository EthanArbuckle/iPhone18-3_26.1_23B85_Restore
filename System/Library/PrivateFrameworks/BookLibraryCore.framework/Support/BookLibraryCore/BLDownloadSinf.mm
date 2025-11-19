@interface BLDownloadSinf
- (BLDownloadSinf)initWithDictionary:(id)a3;
- (int64_t)identifier;
@end

@implementation BLDownloadSinf

- (BLDownloadSinf)initWithDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BLDownloadSinf;
  v5 = [(BLDownloadSinf *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    info = v5->_info;
    v5->_info = v6;
  }

  return v5;
}

- (int64_t)identifier
{
  v2 = [(NSDictionary *)self->_info objectForKey:@"id"];
  v3 = [v2 intValue];

  return v3;
}

@end