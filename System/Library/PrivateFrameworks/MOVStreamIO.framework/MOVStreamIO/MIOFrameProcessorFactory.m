@interface MIOFrameProcessorFactory
+ (id)processorForConfig:(id)a3 formatDescription:(opaqueCMFormatDescription *)a4;
@end

@implementation MIOFrameProcessorFactory

+ (id)processorForConfig:(id)a3 formatDescription:(opaqueCMFormatDescription *)a4
{
  v5 = a3;
  MediaSubType = CMFormatDescriptionGetMediaSubType(a4);
  v7 = [v5 objectForKey:@"StreamEncoderType"];
  v8 = [v7 intValue];

  v9 = off_279847308;
  if (v8 != 17)
  {
    v10 = v8 & 0xFFFFFFFE;
    v11 = (v8 & 0xFFFFFFFE) != 6 || MediaSubType == 1278226488;
    if (v11 || ([v5 objectForKey:@"StreamConvertNonPlanarBuffersTo8bitMonochrome"], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "BOOLValue"), v12, (v13 & 1) == 0))
    {
      if (MediaSubType == 1919365992 && ([v5 objectForKey:@"StreamConvertRGBPlanarHalfToRGBAHalf"], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "BOOLValue"), v14, (v15 & 1) != 0))
      {
        v9 = off_2798473D8;
      }

      else if ([(MIOPixelBufferUtility *)PixelBufferUtility isPixelFormatRawBayer:MediaSubType])
      {
        if (v8 == 14)
        {
          v9 = off_279847348;
        }

        else
        {
          v9 = off_279847378;
        }
      }

      else if (MediaSubType == 1278226738 && v8 == 14)
      {
        v9 = off_279847348;
      }

      else if ([(MIOPixelBufferUtility *)PixelBufferUtility isPixelFormatCompandedRawBayer:MediaSubType])
      {
        v9 = off_279847300;
      }

      else if (MediaSubType == 1278226742 && v10 == 4)
      {
        v9 = off_279847330;
      }

      else if (v10 == 4 && MediaSubType == 1899524402)
      {
        v9 = off_2798473D0;
      }
    }

    else
    {
      v9 = off_279847358;
    }
  }

  v17 = [objc_alloc(*v9) initWithInputFormatDescription:a4];

  return v17;
}

@end