@interface BLDownloadSinf
- (BLDownloadSinf)initWithDictionary:(id)dictionary;
- (int64_t)identifier;
@end

@implementation BLDownloadSinf

- (BLDownloadSinf)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = BLDownloadSinf;
  v5 = [(BLDownloadSinf *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy copy];
    info = v5->_info;
    v5->_info = v6;
  }

  return v5;
}

- (int64_t)identifier
{
  v2 = [(NSDictionary *)self->_info objectForKey:@"id"];
  intValue = [v2 intValue];

  return intValue;
}

@end