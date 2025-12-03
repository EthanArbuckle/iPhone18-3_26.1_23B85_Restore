@interface MFAttachment
- (BOOL)isCSV;
- (BOOL)isCertificate;
- (BOOL)isDXF;
- (BOOL)isExcel;
- (BOOL)isGIF;
- (BOOL)isHTML;
- (BOOL)isMSWord;
- (BOOL)isPlainText;
- (BOOL)isPowerpoint;
- (BOOL)isProfile;
- (BOOL)isRTF;
- (BOOL)isVCard;
- (BOOL)isVPN;
- (BOOL)isWatchFace;
- (BOOL)isWorkout;
- (BOOL)isZip;
- (unint64_t)nanoAttachmentType;
@end

@implementation MFAttachment

- (unint64_t)nanoAttachmentType
{
  if ([(MFAttachment *)self isDXF])
  {
    return 2;
  }

  if (([(MFAttachment *)self isPDFFile]& 1) != 0)
  {
    return 14;
  }

  if ([(MFAttachment *)self isImageFile])
  {
    if ([(MFAttachment *)self isGIF])
    {
      return 22;
    }

    else
    {
      return 5;
    }
  }

  else if (([(MFAttachment *)self isMedia]& 1) != 0)
  {
    return 6;
  }

  else if (([(MFAttachment *)self isRFC822]& 1) != 0)
  {
    return 7;
  }

  else if (([(MFAttachment *)self isCalendarFile]& 1) != 0)
  {
    return 13;
  }

  else if (([(MFAttachment *)self isPass]& 1) != 0)
  {
    return 20;
  }

  else if ([(MFAttachment *)self isRTF])
  {
    return 10;
  }

  else if ([(MFAttachment *)self isCSV])
  {
    return 11;
  }

  else if ([(MFAttachment *)self isHTML])
  {
    return 16;
  }

  else if ([(MFAttachment *)self isVCard])
  {
    return 4;
  }

  else if ([(MFAttachment *)self isZip])
  {
    return 15;
  }

  else if ([(MFAttachment *)self isExcel])
  {
    return 17;
  }

  else if ([(MFAttachment *)self isPowerpoint])
  {
    return 18;
  }

  else if ([(MFAttachment *)self isMSWord])
  {
    return 19;
  }

  else if ([(MFAttachment *)self isCertificate])
  {
    return 12;
  }

  else if ([(MFAttachment *)self isProfile])
  {
    return 3;
  }

  else if ([(MFAttachment *)self isVPN])
  {
    return 8;
  }

  else if ([(MFAttachment *)self isWatchFace])
  {
    return 21;
  }

  else if ([(MFAttachment *)self isWorkout])
  {
    return 23;
  }

  else if ([(MFAttachment *)self isPlainText])
  {
    return 9;
  }

  else
  {
    return 1;
  }
}

- (BOOL)isGIF
{
  identifier = [UTTypeGIF identifier];
  contentTypeIdentifier = [(MFAttachment *)self contentTypeIdentifier];
  v5 = [identifier compare:contentTypeIdentifier] == 0;

  return v5;
}

- (BOOL)isDXF
{
  mimeType = [(MFAttachment *)self mimeType];
  v3 = [@"image/vnd.dxf" caseInsensitiveCompare:mimeType] == 0;

  return v3;
}

- (BOOL)isProfile
{
  contentTypeIdentifier = [(MFAttachment *)self contentTypeIdentifier];
  if ([@"com.apple.mobileconfig" compare:contentTypeIdentifier])
  {
    contentTypeIdentifier2 = [(MFAttachment *)self contentTypeIdentifier];
    v5 = [@"com.apple.mobileprovision" compare:contentTypeIdentifier2] == 0;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (BOOL)isVCard
{
  identifier = [UTTypeVCard identifier];
  contentTypeIdentifier = [(MFAttachment *)self contentTypeIdentifier];
  v5 = [identifier compare:contentTypeIdentifier] == 0;

  return v5;
}

- (BOOL)isVPN
{
  identifier = [UTTypePKCS12 identifier];
  contentTypeIdentifier = [(MFAttachment *)self contentTypeIdentifier];
  v5 = [identifier compare:contentTypeIdentifier] == 0;

  return v5;
}

- (BOOL)isPlainText
{
  contentTypeIdentifier = [(MFAttachment *)self contentTypeIdentifier];
  IsPlainText = MFContentTypeIsPlainText();

  return IsPlainText;
}

- (BOOL)isRTF
{
  identifier = [UTTypeRTF identifier];
  contentTypeIdentifier = [(MFAttachment *)self contentTypeIdentifier];
  v5 = [identifier compare:contentTypeIdentifier] == 0;

  return v5;
}

- (BOOL)isCSV
{
  identifier = [UTTypeCommaSeparatedText identifier];
  contentTypeIdentifier = [(MFAttachment *)self contentTypeIdentifier];
  v5 = [identifier compare:contentTypeIdentifier] == 0;

  return v5;
}

- (BOOL)isCertificate
{
  identifier = [UTTypeX509Certificate identifier];
  contentTypeIdentifier = [(MFAttachment *)self contentTypeIdentifier];
  v5 = [identifier compare:contentTypeIdentifier] == 0;

  return v5;
}

- (BOOL)isZip
{
  identifier = [UTTypeZIP identifier];
  contentTypeIdentifier = [(MFAttachment *)self contentTypeIdentifier];
  if ([identifier compare:contentTypeIdentifier])
  {
    identifier2 = [UTTypeGZIP identifier];
    contentTypeIdentifier2 = [(MFAttachment *)self contentTypeIdentifier];
    if ([identifier2 compare:contentTypeIdentifier2])
    {
      identifier3 = [UTTypeBZ2 identifier];
      contentTypeIdentifier3 = [(MFAttachment *)self contentTypeIdentifier];
      v9 = [identifier3 compare:contentTypeIdentifier3] == 0;
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (BOOL)isHTML
{
  identifier = [UTTypeHTML identifier];
  contentTypeIdentifier = [(MFAttachment *)self contentTypeIdentifier];
  v5 = [identifier compare:contentTypeIdentifier] == 0;

  return v5;
}

- (BOOL)isExcel
{
  v3 = [NSSet setWithObjects:@"application/vnd.ms-excel", @"application/vnd.ms-excel.sheet.macroenabled.12", @"application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", @"application/vnd.ms-excel.template.macroenabled.12", @"application/vnd.openxmlformats-officedocument.spreadsheetml.template", 0];
  mimeType = [(MFAttachment *)self mimeType];
  if (mimeType)
  {
    mimeType2 = [(MFAttachment *)self mimeType];
    v6 = [v3 containsObject:mimeType2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isPowerpoint
{
  v3 = [NSSet setWithObjects:@"application/vnd.ms-powerpoint", @"application/vnd.ms-powerpoint", @"application/vnd.ms-powerpoint.template.macroenabled.12", @"application/vnd.openxmlformats-officedocument.presentationml.template", @"application/vnd.ms-powerpoint.slideshow.macroenabled.12", @"application/vnd.openxmlformats-officedocument.presentationml.slideshow", @"application/vnd.ms-powerpoint.presentation.macroenabled.12", @"application/vnd.openxmlformats-officedocument.presentationml.presentation", 0];
  mimeType = [(MFAttachment *)self mimeType];
  if (mimeType)
  {
    mimeType2 = [(MFAttachment *)self mimeType];
    v6 = [v3 containsObject:mimeType2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isMSWord
{
  v3 = [NSSet setWithObjects:@"application/msword", @"application/vnd.ms-word.document.macroenabled.12", @"application/vnd.openxmlformats-officedocument.wordprocessingml.document", @"application/vnd.ms-word.template.macroenabled.12", @"application/vnd.openxmlformats-officedocument.wordprocessingml.template", 0];
  mimeType = [(MFAttachment *)self mimeType];
  if (mimeType)
  {
    mimeType2 = [(MFAttachment *)self mimeType];
    v6 = [v3 containsObject:mimeType2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isWatchFace
{
  contentTypeIdentifier = [(MFAttachment *)self contentTypeIdentifier];
  v3 = [@"com.apple.watchface" compare:contentTypeIdentifier] == 0;

  return v3;
}

- (BOOL)isWorkout
{
  contentType = [(MFAttachment *)self contentType];
  identifier = [contentType identifier];
  v4 = [@"com.apple.workout" compare:identifier] == 0;

  return v4;
}

@end