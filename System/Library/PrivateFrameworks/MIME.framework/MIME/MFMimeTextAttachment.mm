@interface MFMimeTextAttachment
- (BOOL)hasBeenDownloaded;
- (MFMimeTextAttachment)initWithMimePart:(id)part;
- (id)_displayedMimePart;
- (unsigned)approximateSize;
- (void)download;
@end

@implementation MFMimeTextAttachment

- (MFMimeTextAttachment)initWithMimePart:(id)part
{
  partCopy = part;
  v8.receiver = self;
  v8.super_class = MFMimeTextAttachment;
  v5 = [(MFMessageTextAttachment *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(MFMessageTextAttachment *)v5 setMimePart:partCopy];
  }

  return v6;
}

- (id)_displayedMimePart
{
  mimePart = [(MFMessageTextAttachment *)self mimePart];
  type = [mimePart type];
  if (![type isEqualToString:@"multipart"])
  {
    goto LABEL_11;
  }

  subtype = [mimePart subtype];
  v5 = [subtype isEqualToString:@"appledouble"];

  if (!v5)
  {
    goto LABEL_13;
  }

  type = [mimePart subparts];
  v6 = [type count];
  v7 = v6 >= 2 ? 2 : v6;
  if (v6)
  {
    v8 = 0;
    while (1)
    {
      v9 = [type objectAtIndex:v8];
      type2 = [v9 type];
      if (([type2 isEqualToString:@"application"] & 1) == 0)
      {
        break;
      }

      subtype2 = [v9 subtype];
      v12 = [subtype2 isEqualToString:@"applefile"];

      if ((v12 & 1) == 0)
      {
        goto LABEL_17;
      }

      if (v7 == ++v8)
      {
        goto LABEL_11;
      }
    }

LABEL_17:
  }

  else
  {
LABEL_11:
    v9 = mimePart;
  }

  mimePart = v9;
LABEL_13:

  return mimePart;
}

- (void)download
{
  _displayedMimePart = [(MFMimeTextAttachment *)self _displayedMimePart];
  v4 = [_displayedMimePart fileWrapperForcingDownload:1];

  if (v4)
  {
    [(MFMessageTextAttachment *)self setFileWrapper:v4];
  }
}

- (BOOL)hasBeenDownloaded
{
  v7.receiver = self;
  v7.super_class = MFMimeTextAttachment;
  if ([(MFMessageTextAttachment *)&v7 hasBeenDownloaded])
  {
    return 1;
  }

  v4 = objc_autoreleasePoolPush();
  mimePart = [(MFMessageTextAttachment *)self mimePart];
  hasContents = [mimePart hasContents];

  objc_autoreleasePoolPop(v4);
  return hasContents;
}

- (unsigned)approximateSize
{
  if ([(MFMessageTextAttachment *)self isPlaceholder])
  {
    mimePart = [(MFMessageTextAttachment *)self mimePart];
    approximateRawSize = [mimePart approximateRawSize];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = MFMimeTextAttachment;
    return [(MFMessageTextAttachment *)&v6 approximateSize];
  }

  return approximateRawSize;
}

@end