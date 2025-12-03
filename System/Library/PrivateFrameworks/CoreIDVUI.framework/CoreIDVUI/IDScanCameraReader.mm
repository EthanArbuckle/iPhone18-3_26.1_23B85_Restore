@interface IDScanCameraReader
- (BOOL)cameraReader:(id)reader shouldReturnIDImage:(id)image;
- (_TtC9CoreIDVUI18IDScanCameraReader)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC9CoreIDVUI18IDScanCameraReader)initWithOptions:(id)options;
- (id)cameraReader:(id)reader auxiliaryIDCornerDetection:(__CVBuffer *)detection;
- (void)cameraReader:(id)reader didFailWithError:(id)error;
- (void)cameraReader:(id)reader didRecognizeObjects:(id)objects;
- (void)viewDidLoad;
@end

@implementation IDScanCameraReader

- (void)viewDidLoad
{
  selfCopy = self;
  sub_2457C5560();
}

- (void)cameraReader:(id)reader didFailWithError:(id)error
{
  readerCopy = reader;
  errorCopy = error;
  selfCopy = self;
  sub_2457C6374(errorCopy);
}

- (void)cameraReader:(id)reader didRecognizeObjects:(id)objects
{
  sub_24579D5E0(0, &qword_27EE295A0);
  v6 = sub_245910C44();
  readerCopy = reader;
  selfCopy = self;
  sub_2457C6594(v6);
}

- (BOOL)cameraReader:(id)reader shouldReturnIDImage:(id)image
{
  readerCopy = reader;
  imageCopy = image;
  selfCopy = self;
  v9 = sub_2457C6930(imageCopy);

  return v9 & 1;
}

- (id)cameraReader:(id)reader auxiliaryIDCornerDetection:(__CVBuffer *)detection
{
  readerCopy = reader;
  detectionCopy = detection;
  selfCopy = self;
  v9 = sub_2457C6E48(detectionCopy);

  if (v9)
  {
    sub_24579D5E0(0, &qword_27EE28CD0);
    v10 = sub_245910C34();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (_TtC9CoreIDVUI18IDScanCameraReader)initWithOptions:(id)options
{
  if (options)
  {
    v3 = sub_2459108F4();
  }

  else
  {
    v3 = 0;
  }

  return sub_2457C5F24(v3);
}

- (_TtC9CoreIDVUI18IDScanCameraReader)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_245910A04();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_2457C6068(v5, v7, bundle);
}

@end