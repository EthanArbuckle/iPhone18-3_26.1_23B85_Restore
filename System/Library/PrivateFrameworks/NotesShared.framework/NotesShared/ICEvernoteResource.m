@interface ICEvernoteResource
- (ICEvernoteResource)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ICEvernoteResource

- (ICEvernoteResource)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = ICEvernoteResource;
  v5 = [(ICEvernoteResource *)&v18 init];
  if (v5)
  {
    v5->_isAttachment = [v4 decodeBoolForKey:@"isAttachment"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mime"];
    mime = v5->_mime;
    v5->_mime = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fileName"];
    fileName = v5->_fileName;
    v5->_fileName = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"data"];
    data = v5->_data;
    v5->_data = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"md5Hash"];
    md5Hash = v5->_md5Hash;
    v5->_md5Hash = v12;

    [v4 decodeFloatForKey:@"imageWidth"];
    v5->_imageWidth = v14;
    [v4 decodeFloatForKey:@"imageHeight"];
    v5->_imageHeight = v15;
    [v4 decodeDoubleForKey:@"duration"];
    v5->_duration = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v11 = a3;
  [v11 encodeBool:-[ICEvernoteResource isAttachment](self forKey:{"isAttachment"), @"isAttachment"}];
  v4 = [(ICEvernoteResource *)self mime];
  [v11 encodeObject:v4 forKey:@"mime"];

  v5 = [(ICEvernoteResource *)self fileName];
  [v11 encodeObject:v5 forKey:@"fileName"];

  v6 = [(ICEvernoteResource *)self data];
  [v11 encodeObject:v6 forKey:@"data"];

  v7 = [(ICEvernoteResource *)self md5Hash];
  [v11 encodeObject:v7 forKey:@"md5Hash"];

  [(ICEvernoteResource *)self imageWidth];
  *&v8 = v8;
  [v11 encodeFloat:@"imageWidth" forKey:v8];
  [(ICEvernoteResource *)self imageHeight];
  *&v9 = v9;
  [v11 encodeFloat:@"imageHeight" forKey:v9];
  [(ICEvernoteResource *)self duration];
  *&v10 = v10;
  [v11 encodeFloat:@"duration" forKey:v10];
}

@end