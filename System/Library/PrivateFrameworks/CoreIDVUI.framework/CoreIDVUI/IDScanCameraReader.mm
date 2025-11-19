@interface IDScanCameraReader
- (BOOL)cameraReader:(id)a3 shouldReturnIDImage:(id)a4;
- (_TtC9CoreIDVUI18IDScanCameraReader)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC9CoreIDVUI18IDScanCameraReader)initWithOptions:(id)a3;
- (id)cameraReader:(id)a3 auxiliaryIDCornerDetection:(__CVBuffer *)a4;
- (void)cameraReader:(id)a3 didFailWithError:(id)a4;
- (void)cameraReader:(id)a3 didRecognizeObjects:(id)a4;
- (void)viewDidLoad;
@end

@implementation IDScanCameraReader

- (void)viewDidLoad
{
  v2 = self;
  sub_2457C5560();
}

- (void)cameraReader:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_2457C6374(v8);
}

- (void)cameraReader:(id)a3 didRecognizeObjects:(id)a4
{
  sub_24579D5E0(0, &qword_27EE295A0);
  v6 = sub_245910C44();
  v7 = a3;
  v8 = self;
  sub_2457C6594(v6);
}

- (BOOL)cameraReader:(id)a3 shouldReturnIDImage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_2457C6930(v7);

  return v9 & 1;
}

- (id)cameraReader:(id)a3 auxiliaryIDCornerDetection:(__CVBuffer *)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_2457C6E48(v7);

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

- (_TtC9CoreIDVUI18IDScanCameraReader)initWithOptions:(id)a3
{
  if (a3)
  {
    v3 = sub_2459108F4();
  }

  else
  {
    v3 = 0;
  }

  return sub_2457C5F24(v3);
}

- (_TtC9CoreIDVUI18IDScanCameraReader)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_245910A04();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_2457C6068(v5, v7, a4);
}

@end