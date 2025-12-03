@interface OITSUHTMLLog
- (OITSUHTMLLog)initWithPath:(id)path;
- (id)uniqueIdentifierWithPrefix:(id)prefix;
- (void)_writeMarkupData:(id)data;
- (void)dealloc;
- (void)logBegin;
@end

@implementation OITSUHTMLLog

- (OITSUHTMLLog)initWithPath:(id)path
{
  v10.receiver = self;
  v10.super_class = OITSUHTMLLog;
  v4 = [(OITSUHTMLLog *)&v10 init];
  if (v4)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v6 = [path copy];
    v4->_path = v6;
    stringByDeletingLastPathComponent = [(NSString *)v6 stringByDeletingLastPathComponent];
    if ([defaultManager fileExistsAtPath:v4->_path])
    {
      [defaultManager removeItemAtPath:v4->_path error:0];
    }

    if (([defaultManager fileExistsAtPath:stringByDeletingLastPathComponent] & 1) == 0)
    {
      [defaultManager createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:0];
    }

    [defaultManager createFileAtPath:v4->_path contents:objc_msgSend(MEMORY[0x277CBEA90] attributes:{"data"), 0}];
    v8 = [MEMORY[0x277CCA9F8] fileHandleForWritingAtPath:v4->_path];
    v4->_handle = v8;
    if (v8)
    {
      NSLog(@"Opened log at path %@", v4->_path);
    }

    else
    {
      NSLog(@"Failed to open log at path %@", v4->_path);
    }
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OITSUHTMLLog;
  [(OITSUHTMLLog *)&v3 dealloc];
}

- (id)uniqueIdentifierWithPrefix:(id)prefix
{
  v3 = MEMORY[0x277CCACA8];
  uniquifier = self->_uniquifier;
  self->_uniquifier = uniquifier + 1;
  return [v3 stringWithFormat:@"%@-%tu", prefix, uniquifier];
}

- (void)_writeMarkupData:(id)data
{
  if (!self->_logStarted)
  {
    self->_logStarted = 1;
    [(OITSUHTMLLog *)self logBegin];
  }

  uTF8String = [data UTF8String];
  -[NSFileHandle writeData:](self->_handle, "writeData:", [MEMORY[0x277CBEA90] dataWithBytes:uTF8String length:strlen(uTF8String)]);
  handle = self->_handle;

  [(NSFileHandle *)handle synchronizeFile];
}

- (void)logBegin
{
  self->_logStarted = 1;
  [(OITSUHTMLLog *)self clear];
  [(OITSUHTMLLog *)self writeMarkup:@"<html>\n"];
  [(OITSUHTMLLog *)self writeMarkup:@"<head>\n"];
  [(OITSUHTMLLog *)self writeMarkup:@"<meta charset='UTF-8'/>\n"];
  if ([(OITSUHTMLLog *)self title])
  {
    [(OITSUHTMLLog *)self writeMarkup:@"<title>%@</title>", [(OITSUHTMLLog *)self title]];
  }

  if ([(OITSUHTMLLog *)self script])
  {
    [(OITSUHTMLLog *)self writeMarkup:@"<script language='javascript'>\n%@\n</script>", [(OITSUHTMLLog *)self script]];
  }

  if ([(OITSUHTMLLog *)self stylesheet])
  {
    [(OITSUHTMLLog *)self writeMarkup:@"<style type='text/css'>\n<!--\n%@\n-->\n</style>", [(OITSUHTMLLog *)self stylesheet]];
  }

  [(OITSUHTMLLog *)self writeMarkup:@"</head>\n"];

  [(OITSUHTMLLog *)self writeMarkup:@"<body>\n"];
}

@end