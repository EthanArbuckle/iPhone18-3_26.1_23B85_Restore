@interface JFXRotationTransforms
+ (CGAffineTransform)transformFromCaptureDevicePosition:(SEL)position captureVideoOrientation:(int64_t)orientation toInterfaceOrientation:(int64_t)interfaceOrientation;
+ (CGAffineTransform)transformFromTopLeftCaptureDevicePivotPosition:(SEL)position captureVideoOrientation:(int64_t)orientation toInterfaceOrientation:(int64_t)interfaceOrientation size:(int64_t)size;
+ (int)rotationFromCaptureDevicePosition:(int64_t)position captureVideoOrientation:(int64_t)orientation toInterfaceOrientation:(int64_t)interfaceOrientation;
+ (int)rotationFromUIInterfaceOrientation:(int64_t)orientation toUIInterfaceOrientation:(int64_t)interfaceOrientation;
@end

@implementation JFXRotationTransforms

+ (CGAffineTransform)transformFromCaptureDevicePosition:(SEL)position captureVideoOrientation:(int64_t)orientation toInterfaceOrientation:(int64_t)interfaceOrientation
{
  result = [a2 rotationFromCaptureDevicePosition:orientation captureVideoOrientation:interfaceOrientation toInterfaceOrientation:a6];
  v9 = result;
  v10 = MEMORY[0x277CBF2C0];
  v11 = *(MEMORY[0x277CBF2C0] + 16);
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v11;
  *&retstr->tx = *(v10 + 32);
  if (orientation == 2)
  {
    result = CGAffineTransformMakeScale(retstr, -1.0, 1.0);
  }

  if (v9)
  {
    v12 = PVCardinalAnglesDouble_1[v9];
    v13 = *&retstr->c;
    *&v15.a = *&retstr->a;
    *&v15.c = v13;
    *&v15.tx = *&retstr->tx;
    result = CGAffineTransformRotate(&v16, &v15, v12);
    v14 = *&v16.c;
    *&retstr->a = *&v16.a;
    *&retstr->c = v14;
    *&retstr->tx = *&v16.tx;
  }

  return result;
}

+ (CGAffineTransform)transformFromTopLeftCaptureDevicePivotPosition:(SEL)position captureVideoOrientation:(int64_t)orientation toInterfaceOrientation:(int64_t)interfaceOrientation size:(int64_t)size
{
  height = a7.height;
  width = a7.width;
  v11 = [a2 rotationFromCaptureDevicePosition:orientation captureVideoOrientation:interfaceOrientation toInterfaceOrientation:size];
  memset(&v26, 0, sizeof(v26));
  CGAffineTransformMakeScale(&v26, -1.0, 1.0);
  memset(&v25, 0, sizeof(v25));
  CGAffineTransformMakeRotation(&v25, PVCardinalAnglesDouble_1[v11]);
  memset(&v24, 0, sizeof(v24));
  CGAffineTransformMakeTranslation(&v24, width * -0.5, height * -0.5);
  memset(&v23, 0, sizeof(v23));
  v12 = width * 0.5;
  v13 = height * 0.5;
  CGAffineTransformMakeTranslation(&v23, v12, v13);
  if ((v11 & 0xFFFFFFFD) == 1)
  {
    CGAffineTransformMakeTranslation(&t1, v13, v12);
    v23 = t1;
    CGAffineTransformMakeScale(&t1, 1.0, -1.0);
    v26 = t1;
  }

  v14 = *&v24.c;
  *&retstr->a = *&v24.a;
  *&retstr->c = v14;
  *&retstr->tx = *&v24.tx;
  if (orientation == 2)
  {
    t1 = v24;
    t2 = v26;
    CGAffineTransformConcat(retstr, &t1, &t2);
  }

  v15 = *&retstr->c;
  *&t2.a = *&retstr->a;
  *&t2.c = v15;
  *&t2.tx = *&retstr->tx;
  v20 = v25;
  CGAffineTransformConcat(&t1, &t2, &v20);
  v16 = *&t1.c;
  *&retstr->a = *&t1.a;
  *&retstr->c = v16;
  *&retstr->tx = *&t1.tx;
  v17 = *&retstr->c;
  *&t2.a = *&retstr->a;
  *&t2.c = v17;
  *&t2.tx = *&retstr->tx;
  v20 = v23;
  result = CGAffineTransformConcat(&t1, &t2, &v20);
  v19 = *&t1.c;
  *&retstr->a = *&t1.a;
  *&retstr->c = v19;
  *&retstr->tx = *&t1.tx;
  return result;
}

+ (int)rotationFromCaptureDevicePosition:(int64_t)position captureVideoOrientation:(int64_t)orientation toInterfaceOrientation:(int64_t)interfaceOrientation
{
  if (!interfaceOrientation)
  {
    return 0;
  }

  if (rotationFromCaptureDevicePosition_captureVideoOrientation_toInterfaceOrientation__onceToken != -1)
  {
    +[JFXRotationTransforms rotationFromCaptureDevicePosition:captureVideoOrientation:toInterfaceOrientation:];
  }

  if ((orientation - 2) > 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = qword_242B5CD40[orientation - 2];
  }

  if ((interfaceOrientation - 2) > 2)
  {
    v10 = 0;
  }

  else
  {
    v10 = qword_242B5CD40[interfaceOrientation - 2];
  }

  return *(*(rotationFromCaptureDevicePosition_captureVideoOrientation_toInterfaceOrientation__MASTER_LOOKUP + ((32 * (position != 2)) | (8 * v8))) + 4 * v10);
}

+ (int)rotationFromUIInterfaceOrientation:(int64_t)orientation toUIInterfaceOrientation:(int64_t)interfaceOrientation
{
  if (rotationFromUIInterfaceOrientation_toUIInterfaceOrientation__onceToken != -1)
  {
    +[JFXRotationTransforms rotationFromUIInterfaceOrientation:toUIInterfaceOrientation:];
  }

  if ((orientation - 2) > 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = qword_242B5CD58[orientation - 2];
  }

  if ((interfaceOrientation - 2) > 2)
  {
    v7 = 0;
  }

  else
  {
    v7 = qword_242B5CD58[interfaceOrientation - 2];
  }

  return *(*(rotationFromUIInterfaceOrientation_toUIInterfaceOrientation__MASTER_LOOKUP + 8 * v6) + 4 * v7);
}

@end