@interface BWInferencePrimaryCaptureRectDescriptor
- ($2825F4736939C4A6D3AD43837233062D)maxCropForDimensions:(id)a3;
- (CGRect)rectForSampleBuffer:(opaqueCMSampleBuffer *)a3;
@end

@implementation BWInferencePrimaryCaptureRectDescriptor

- (CGRect)rectForSampleBuffer:(opaqueCMSampleBuffer *)a3
{
  v3 = *(MEMORY[0x1E695F050] + 16);
  v9.origin = *MEMORY[0x1E695F050];
  v9.size = v3;
  v4 = CMGetAttachment(a3, *off_1E798A430, 0);
  if (v4)
  {
    CGRectMakeWithDictionaryRepresentation(v4, &v9);
  }

  y = v9.origin.y;
  x = v9.origin.x;
  height = v9.size.height;
  width = v9.size.width;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- ($2825F4736939C4A6D3AD43837233062D)maxCropForDimensions:(id)a3
{
  var0 = a3.var0;
  var1 = a3.var1;
  if (a3.var0 <= a3.var1)
  {
    v5 = 0.5625;
  }

  else
  {
    v5 = 1.7778;
  }

  v6 = FigCaptureMetadataUtilitiesRectWithAspectRatioInsideDimensions(a3.var0, a3.var1, v5);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v22.origin.x = FigCaptureMetadataUtilitiesRectWithAspectRatioInsideDimensions(var0, var1, 1.0);
  v22.origin.y = v13;
  v22.size.width = v14;
  v22.size.height = v15;
  v20.origin.x = v6;
  v20.origin.y = v8;
  v20.size.width = v10;
  v20.size.height = v12;
  v21 = CGRectUnion(v20, v22);
  LODWORD(v16) = vcvtpd_s64_f64(v21.size.width);
  LODWORD(v17) = vcvtpd_s64_f64(v21.size.height);
  return (v16 | (v17 << 32));
}

@end