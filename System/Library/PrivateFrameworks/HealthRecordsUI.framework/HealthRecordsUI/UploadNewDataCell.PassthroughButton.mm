@interface UploadNewDataCell.PassthroughButton
- (_TtCC15HealthRecordsUI17UploadNewDataCellP33_6F80709EAB63D26AFFB2023EBC32517B17PassthroughButton)initWithCoder:(id)coder;
- (_TtCC15HealthRecordsUI17UploadNewDataCellP33_6F80709EAB63D26AFFB2023EBC32517B17PassthroughButton)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation UploadNewDataCell.PassthroughButton

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v13.receiver = self;
  v13.super_class = type metadata accessor for UploadNewDataCell.PassthroughButton();
  v7 = v13.receiver;
  eventCopy = event;
  v9 = [(UploadNewDataCell.PassthroughButton *)&v13 hitTest:eventCopy withEvent:x, y];
  if (!v9)
  {

    goto LABEL_5;
  }

  v10 = v9;
  sub_1D129D104();
  v11 = v7;
  v7 = v10;
  LOBYTE(v10) = sub_1D1390D8C();

  if (v10)
  {
LABEL_5:

    v7 = 0;
  }

  return v7;
}

- (_TtCC15HealthRecordsUI17UploadNewDataCellP33_6F80709EAB63D26AFFB2023EBC32517B17PassthroughButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for UploadNewDataCell.PassthroughButton();
  return [(UploadNewDataCell.PassthroughButton *)&v8 initWithFrame:x, y, width, height];
}

- (_TtCC15HealthRecordsUI17UploadNewDataCellP33_6F80709EAB63D26AFFB2023EBC32517B17PassthroughButton)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for UploadNewDataCell.PassthroughButton();
  coderCopy = coder;
  v5 = [(UploadNewDataCell.PassthroughButton *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end