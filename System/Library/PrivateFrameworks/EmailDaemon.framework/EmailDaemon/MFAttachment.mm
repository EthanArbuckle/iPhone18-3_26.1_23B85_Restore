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
  v3 = [UTTypeGIF identifier];
  v4 = [(MFAttachment *)self contentTypeIdentifier];
  v5 = [v3 compare:v4] == 0;

  return v5;
}

- (BOOL)isDXF
{
  v2 = [(MFAttachment *)self mimeType];
  v3 = [@"image/vnd.dxf" caseInsensitiveCompare:v2] == 0;

  return v3;
}

- (BOOL)isProfile
{
  v3 = [(MFAttachment *)self contentTypeIdentifier];
  if ([@"com.apple.mobileconfig" compare:v3])
  {
    v4 = [(MFAttachment *)self contentTypeIdentifier];
    v5 = [@"com.apple.mobileprovision" compare:v4] == 0;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (BOOL)isVCard
{
  v3 = [UTTypeVCard identifier];
  v4 = [(MFAttachment *)self contentTypeIdentifier];
  v5 = [v3 compare:v4] == 0;

  return v5;
}

- (BOOL)isVPN
{
  v3 = [UTTypePKCS12 identifier];
  v4 = [(MFAttachment *)self contentTypeIdentifier];
  v5 = [v3 compare:v4] == 0;

  return v5;
}

- (BOOL)isPlainText
{
  v2 = [(MFAttachment *)self contentTypeIdentifier];
  IsPlainText = MFContentTypeIsPlainText();

  return IsPlainText;
}

- (BOOL)isRTF
{
  v3 = [UTTypeRTF identifier];
  v4 = [(MFAttachment *)self contentTypeIdentifier];
  v5 = [v3 compare:v4] == 0;

  return v5;
}

- (BOOL)isCSV
{
  v3 = [UTTypeCommaSeparatedText identifier];
  v4 = [(MFAttachment *)self contentTypeIdentifier];
  v5 = [v3 compare:v4] == 0;

  return v5;
}

- (BOOL)isCertificate
{
  v3 = [UTTypeX509Certificate identifier];
  v4 = [(MFAttachment *)self contentTypeIdentifier];
  v5 = [v3 compare:v4] == 0;

  return v5;
}

- (BOOL)isZip
{
  v3 = [UTTypeZIP identifier];
  v4 = [(MFAttachment *)self contentTypeIdentifier];
  if ([v3 compare:v4])
  {
    v5 = [UTTypeGZIP identifier];
    v6 = [(MFAttachment *)self contentTypeIdentifier];
    if ([v5 compare:v6])
    {
      v7 = [UTTypeBZ2 identifier];
      v8 = [(MFAttachment *)self contentTypeIdentifier];
      v9 = [v7 compare:v8] == 0;
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
  v3 = [UTTypeHTML identifier];
  v4 = [(MFAttachment *)self contentTypeIdentifier];
  v5 = [v3 compare:v4] == 0;

  return v5;
}

- (BOOL)isExcel
{
  v3 = [NSSet setWithObjects:@"application/vnd.ms-excel", @"application/vnd.ms-excel.sheet.macroenabled.12", @"application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", @"application/vnd.ms-excel.template.macroenabled.12", @"application/vnd.openxmlformats-officedocument.spreadsheetml.template", 0];
  v4 = [(MFAttachment *)self mimeType];
  if (v4)
  {
    v5 = [(MFAttachment *)self mimeType];
    v6 = [v3 containsObject:v5];
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
  v4 = [(MFAttachment *)self mimeType];
  if (v4)
  {
    v5 = [(MFAttachment *)self mimeType];
    v6 = [v3 containsObject:v5];
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
  v4 = [(MFAttachment *)self mimeType];
  if (v4)
  {
    v5 = [(MFAttachment *)self mimeType];
    v6 = [v3 containsObject:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isWatchFace
{
  v2 = [(MFAttachment *)self contentTypeIdentifier];
  v3 = [@"com.apple.watchface" compare:v2] == 0;

  return v3;
}

- (BOOL)isWorkout
{
  v2 = [(MFAttachment *)self contentType];
  v3 = [v2 identifier];
  v4 = [@"com.apple.workout" compare:v3] == 0;

  return v4;
}

@end