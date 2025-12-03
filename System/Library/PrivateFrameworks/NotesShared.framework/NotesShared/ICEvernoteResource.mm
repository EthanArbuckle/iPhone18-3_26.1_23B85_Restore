@interface ICEvernoteResource
- (ICEvernoteResource)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ICEvernoteResource

- (ICEvernoteResource)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = ICEvernoteResource;
  v5 = [(ICEvernoteResource *)&v18 init];
  if (v5)
  {
    v5->_isAttachment = [coderCopy decodeBoolForKey:@"isAttachment"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mime"];
    mime = v5->_mime;
    v5->_mime = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fileName"];
    fileName = v5->_fileName;
    v5->_fileName = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"data"];
    data = v5->_data;
    v5->_data = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"md5Hash"];
    md5Hash = v5->_md5Hash;
    v5->_md5Hash = v12;

    [coderCopy decodeFloatForKey:@"imageWidth"];
    v5->_imageWidth = v14;
    [coderCopy decodeFloatForKey:@"imageHeight"];
    v5->_imageHeight = v15;
    [coderCopy decodeDoubleForKey:@"duration"];
    v5->_duration = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[ICEvernoteResource isAttachment](self forKey:{"isAttachment"), @"isAttachment"}];
  mime = [(ICEvernoteResource *)self mime];
  [coderCopy encodeObject:mime forKey:@"mime"];

  fileName = [(ICEvernoteResource *)self fileName];
  [coderCopy encodeObject:fileName forKey:@"fileName"];

  data = [(ICEvernoteResource *)self data];
  [coderCopy encodeObject:data forKey:@"data"];

  md5Hash = [(ICEvernoteResource *)self md5Hash];
  [coderCopy encodeObject:md5Hash forKey:@"md5Hash"];

  [(ICEvernoteResource *)self imageWidth];
  *&v8 = v8;
  [coderCopy encodeFloat:@"imageWidth" forKey:v8];
  [(ICEvernoteResource *)self imageHeight];
  *&v9 = v9;
  [coderCopy encodeFloat:@"imageHeight" forKey:v9];
  [(ICEvernoteResource *)self duration];
  *&v10 = v10;
  [coderCopy encodeFloat:@"duration" forKey:v10];
}

@end