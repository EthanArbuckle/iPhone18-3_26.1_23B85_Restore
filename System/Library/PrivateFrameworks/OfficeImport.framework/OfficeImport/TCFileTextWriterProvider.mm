@interface TCFileTextWriterProvider
- (BOOL)setUp;
- (TCFileTextWriterProvider)initWithFilePath:(id)path;
@end

@implementation TCFileTextWriterProvider

- (TCFileTextWriterProvider)initWithFilePath:(id)path
{
  pathCopy = path;
  v9.receiver = self;
  v9.super_class = TCFileTextWriterProvider;
  v5 = [(TCFileTextWriterProvider *)&v9 init];
  if (v5)
  {
    v6 = [pathCopy copy];
    filePath = v5->_filePath;
    v5->_filePath = v6;
  }

  return v5;
}

- (BOOL)setUp
{
  v3 = xmlNewTextWriterFilename([(NSString *)self->_filePath UTF8String], 0);

  return [(TCXmlTextWriterProvider *)self setUpWithTextWriter:v3];
}

@end