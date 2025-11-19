@interface ICAttachmentBrickMapAnnotationV2
- (CLLocationCoordinate2D)coordinate;
- (ICAttachmentBrickMapAnnotationV2)initWithAttachment:(id)a3;
@end

@implementation ICAttachmentBrickMapAnnotationV2

- (ICAttachmentBrickMapAnnotationV2)initWithAttachment:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = ICAttachmentBrickMapAnnotationV2;
  v5 = [(ICAttachmentBrickMapAnnotationV2 *)&v17 init];
  if (!v5)
  {
LABEL_4:
    v10 = v5;
    goto LABEL_6;
  }

  v6 = [v4 title];
  title = v5->_title;
  v5->_title = v6;

  v8 = [v4 summary];
  subtitle = v5->_subtitle;
  v5->_subtitle = v8;

  v10 = [v4 location];

  if (v10)
  {
    v11 = [v4 location];
    [v11 latitude];
    v13 = v12;
    v14 = [v4 location];
    [v14 longitude];
    v5->_coordinate = CLLocationCoordinate2DMake(v13, v15);

    if (!CLLocationCoordinate2DIsValid(v5->_coordinate))
    {
      v10 = 0;
      goto LABEL_6;
    }

    goto LABEL_4;
  }

LABEL_6:

  return v10;
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