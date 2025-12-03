@interface MLTrackImportChapter
- (BOOL)isEqualIgnoringTimesAndTitle:(id)title;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)compare:(id)compare;
- (void)normalizeProperties;
@end

@implementation MLTrackImportChapter

- (BOOL)isEqualIgnoringTimesAndTitle:(id)title
{
  titleCopy = title;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [titleCopy URL];
    uRLTitle = [titleCopy URLTitle];
    imageCacheKey = [titleCopy imageCacheKey];
    url = self->_url;
    if ((url == v5 || [(NSURL *)url isEqual:v5]) && (self->_urlTitle == uRLTitle || [(NSURL *)self->_url isEqual:uRLTitle]))
    {
      imageCacheKey = self->_imageCacheKey;
      if (imageCacheKey == imageCacheKey)
      {
        v10 = 1;
      }

      else
      {
        v10 = [(NSString *)imageCacheKey isEqual:imageCacheKey];
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

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  startTimeInMilliseconds = [(MLTrackImportChapter *)self startTimeInMilliseconds];
  startTimeInMilliseconds2 = [compareCopy startTimeInMilliseconds];

  if (startTimeInMilliseconds < startTimeInMilliseconds2)
  {
    return -1;
  }

  else
  {
    return startTimeInMilliseconds > startTimeInMilliseconds2;
  }
}

- (id)copyWithZone:(_NSZone *)zone
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

  title = [(MLTrackImportChapter *)self title];
  v9 = [title length];

  if (v9)
  {
    [v4 appendString:@"t|"];
    v10 = MEMORY[0x277CCACA8];
    title2 = [(MLTrackImportChapter *)self title];
    v12 = [v10 stringWithFormat:@"title='%@'", title2];
    [v7 addObject:v12];
  }

  else
  {
    [v4 appendString:@" |"];
  }

  imageData = [(MLTrackImportChapter *)self imageData];

  if (imageData)
  {
    [v4 appendString:@"i|"];
    v14 = MEMORY[0x277CCACA8];
    imageData2 = [(MLTrackImportChapter *)self imageData];
    v16 = [v14 stringWithFormat:@"image=%p", imageData2];
    [v7 addObject:v16];
  }

  else
  {
    [v4 appendString:@" |"];
  }

  imageCacheKey = [(MLTrackImportChapter *)self imageCacheKey];

  if (imageCacheKey)
  {
    [v4 appendString:@"ik|"];
    v18 = MEMORY[0x277CCACA8];
    imageCacheKey2 = [(MLTrackImportChapter *)self imageCacheKey];
    v20 = [v18 stringWithFormat:@"imageKey=%@", imageCacheKey2];
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

  uRLTitle = [(MLTrackImportChapter *)self URLTitle];
  v26 = [uRLTitle length];

  if (v26)
  {
    [v4 appendString:@"ut"];
    v27 = MEMORY[0x277CCACA8];
    uRLTitle2 = [(MLTrackImportChapter *)self URLTitle];
    v29 = [v27 stringWithFormat:@"urlTitle='%@'", uRLTitle2];
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
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v5 = [(NSString *)title stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
  v6 = self->_title;
  self->_title = v5;

  urlTitle = self->_urlTitle;
  whitespaceAndNewlineCharacterSet2 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v8 = [(NSString *)urlTitle stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet2];
  v9 = self->_urlTitle;
  self->_urlTitle = v8;
}

@end