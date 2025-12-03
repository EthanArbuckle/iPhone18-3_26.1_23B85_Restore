@interface OCXContentType
- (OCXContentType)initWithContentType:(id)type extension:(id)extension;
- (OCXContentType)initWithContentType:(id)type path:(id)path;
- (void)writeToStreamWriter:(id)writer;
@end

@implementation OCXContentType

- (OCXContentType)initWithContentType:(id)type extension:(id)extension
{
  typeCopy = type;
  extensionCopy = extension;
  v12.receiver = self;
  v12.super_class = OCXContentType;
  v9 = [(OCXContentType *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->mContentType, type);
    objc_storeStrong(&v10->mExtension, extension);
  }

  return v10;
}

- (OCXContentType)initWithContentType:(id)type path:(id)path
{
  typeCopy = type;
  pathCopy = path;
  v12.receiver = self;
  v12.super_class = OCXContentType;
  v9 = [(OCXContentType *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->mContentType, type);
    objc_storeStrong(&v10->mPath, path);
  }

  return v10;
}

- (void)writeToStreamWriter:(id)writer
{
  writerCopy = writer;
  if ([(OCXContentType *)self isOverride])
  {
    [writerCopy startPlainElement:@"Override"];
    v4 = [@"/" stringByAppendingString:self->mPath];
    [writerCopy writePlainAttribute:@"PartName" content:v4];
  }

  else
  {
    [writerCopy startPlainElement:@"Default"];
    [writerCopy writePlainAttribute:@"Extension" content:self->mExtension];
  }

  [writerCopy writePlainAttribute:@"ContentType" content:self->mContentType];
  [writerCopy endElement];
}

@end