@interface MLTrackImportChapter
- (BOOL)isEqualIgnoringTimesAndTitle:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int64_t)compare:(id)a3;
- (void)normalizeProperties;
@end

@implementation MLTrackImportChapter

- (BOOL)isEqualIgnoringTimesAndTitle:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 URL];
    v6 = [v4 URLTitle];
    v7 = [v4 imageCacheKey];
    url = self->_url;
    if ((url == v5 || [(NSURL *)url isEqual:v5]) && (self->_urlTitle == v6 || [(NSURL *)self->_url isEqual:v6]))
    {
      imageCacheKey = self->_imageCacheKey;
      if (imageCacheKey == v7)
      {
        v10 = 1;
      }

      else
      {
        v10 = [(NSString *)imageCacheKey isEqual:v7];
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(MLTrackImportChapter *)self startTimeInMilliseconds];
  v6 = [v4 startTimeInMilliseconds];

  if (v5 < v6)
  {
    return -1;
  }

  else
  {
    return v5 > v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(NSString *)self->_title copy];
  v6 = *(v4 + 4);
  *(v4 + 4) = v5;

  *(v4 + 3) = self->_startTimeInMilliseconds;
  objc_storeStrong(v4 + 5, self->_url);
  v7 = [(NSString *)self->_urlTitle copy];
  v8 = *(v4 + 6);
  *(v4 + 6) = v7;

  objc_storeStrong(v4 + 1, self->_imageData);
  v9 = [(NSString *)self->_imageCacheKey copy];
  v10 = *(v4 + 2);
  *(v4 + 2) = v9;

  return v4;
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = [MEMORY[0x277CCAB68] stringWithString:&stru_28408B690];
  v5 = MEMORY[0x277CBEB18];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"startMS=%7lu", -[MLTrackImportChapter startTimeInMilliseconds](self, "startTimeInMilliseconds")];
  v7 = [v5 arrayWithObjects:{v6, 0}];

  v8 = [(MLTrackImportChapter *)self title];
  v9 = [v8 length];

  if (v9)
  {
    [v4 appendString:@"t|"];
    v10 = MEMORY[0x277CCACA8];
    v11 = [(MLTrackImportChapter *)self title];
    v12 = [v10 stringWithFormat:@"title='%@'", v11];
    [v7 addObject:v12];
  }

  else
  {
    [v4 appendString:@" |"];
  }

  v13 = [(MLTrackImportChapter *)self imageData];

  if (v13)
  {
    [v4 appendString:@"i|"];
    v14 = MEMORY[0x277CCACA8];
    v15 = [(MLTrackImportChapter *)self imageData];
    v16 = [v14 stringWithFormat:@"image=%p", v15];
    [v7 addObject:v16];
  }

  else
  {
    [v4 appendString:@" |"];
  }

  v17 = [(MLTrackImportChapter *)self imageCacheKey];

  if (v17)
  {
    [v4 appendString:@"ik|"];
    v18 = MEMORY[0x277CCACA8];
    v19 = [(MLTrackImportChapter *)self imageCacheKey];
    v20 = [v18 stringWithFormat:@"imageKey=%@", v19];
    [v7 addObject:v20];
  }

  else
  {
    [v4 appendString:@"  |"];
  }

  v21 = [(MLTrackImportChapter *)self URL];

  if (v21)
  {
    [v4 appendString:@"u|"];
    v22 = MEMORY[0x277CCACA8];
    v23 = [(MLTrackImportChapter *)self URL];
    v24 = [v22 stringWithFormat:@"url=%@", v23];
    [v7 addObject:v24];
  }

  else
  {
    [v4 appendString:@" |"];
  }

  v25 = [(MLTrackImportChapter *)self URLTitle];
  v26 = [v25 length];

  if (v26)
  {
    [v4 appendString:@"ut"];
    v27 = MEMORY[0x277CCACA8];
    v28 = [(MLTrackImportChapter *)self URLTitle];
    v29 = [v27 stringWithFormat:@"urlTitle='%@'", v28];
    [v7 addObject:v29];
  }

  else
  {
    [v4 appendString:@"  "];
  }

  v30 = MEMORY[0x277CCACA8];
  v31 = objc_opt_class();
  v32 = NSStringFromClass(v31);
  v33 = [v7 componentsJoinedByString:{@", "}];
  v34 = [v30 stringWithFormat:@"<%@: %p - [%@] %@>", v32, self, v4, v33];

  objc_autoreleasePoolPop(v3);

  return v34;
}

- (void)normalizeProperties
{
  title = self->_title;
  v4 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v5 = [(NSString *)title stringByTrimmingCharactersInSet:v4];
  v6 = self->_title;
  self->_title = v5;

  urlTitle = self->_urlTitle;
  v10 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v8 = [(NSString *)urlTitle stringByTrimmingCharactersInSet:v10];
  v9 = self->_urlTitle;
  self->_urlTitle = v8;
}

@end