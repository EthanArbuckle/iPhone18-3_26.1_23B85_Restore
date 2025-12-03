@interface ICAttachmentBrickMapAnnotationV2
- (CLLocationCoordinate2D)coordinate;
- (ICAttachmentBrickMapAnnotationV2)initWithAttachment:(id)attachment;
@end

@implementation ICAttachmentBrickMapAnnotationV2

- (ICAttachmentBrickMapAnnotationV2)initWithAttachment:(id)attachment
{
  attachmentCopy = attachment;
  v17.receiver = self;
  v17.super_class = ICAttachmentBrickMapAnnotationV2;
  v5 = [(ICAttachmentBrickMapAnnotationV2 *)&v17 init];
  if (!v5)
  {
LABEL_4:
    location = v5;
    goto LABEL_6;
  }

  title = [attachmentCopy title];
  title = v5->_title;
  v5->_title = title;

  summary = [attachmentCopy summary];
  subtitle = v5->_subtitle;
  v5->_subtitle = summary;

  location = [attachmentCopy location];

  if (location)
  {
    location2 = [attachmentCopy location];
    [location2 latitude];
    v13 = v12;
    location3 = [attachmentCopy location];
    [location3 longitude];
    v5->_coordinate = CLLocationCoordinate2DMake(v13, v15);

    if (!CLLocationCoordinate2DIsValid(v5->_coordinate))
    {
      location = 0;
      goto LABEL_6;
    }

    goto LABEL_4;
  }

LABEL_6:

  return location;
}

- (CLLocationCoordinate2D)coordinate
{
  latitude = self->_coordinate.latitude;
  longitude = self->_coordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

@end