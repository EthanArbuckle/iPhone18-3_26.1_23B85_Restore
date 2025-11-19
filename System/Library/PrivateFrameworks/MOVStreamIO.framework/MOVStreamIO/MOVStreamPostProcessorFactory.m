@interface MOVStreamPostProcessorFactory
+ (id)defaultFactory;
+ (id)getNewDefaultPostProcessor;
- (id)postProcessorFromReader:(id)a3 originalPixelFormat:(unsigned int)a4 encodedFormat:(unsigned int)a5 encoderType:(id)a6 streamId:(id)a7;
- (id)postProcessorFromReader:(id)a3 originalPixelFormat:(unsigned int)a4 encodedFormat:(unsigned int)a5 encoderType:(int)a6 streamId:(id)a7 bufferCacheMode:(int)a8;
@end

@implementation MOVStreamPostProcessorFactory

+ (id)defaultFactory
{
  if (+[MOVStreamPostProcessorFactory defaultFactory]::onceToken != -1)
  {
    +[MOVStreamPostProcessorFactory defaultFactory];
  }

  v3 = +[MOVStreamPostProcessorFactory defaultFactory]::factory;

  return v3;
}

uint64_t __47__MOVStreamPostProcessorFactory_defaultFactory__block_invoke()
{
  +[MOVStreamPostProcessorFactory defaultFactory]::factory = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

+ (id)getNewDefaultPostProcessor
{
  v2 = objc_opt_new();

  return v2;
}

- (id)postProcessorFromReader:(id)a3 originalPixelFormat:(unsigned int)a4 encodedFormat:(unsigned int)a5 encoderType:(int)a6 streamId:(id)a7 bufferCacheMode:(int)a8
{
  v8 = *&a8;
  v12 = *&a4;
  v13 = a3;
  v14 = a7;
  v15 = v14;
  if (a6 == 36 || v12 == a5 && a6 == 17)
  {
    goto LABEL_4;
  }

  if (([v14 isEqualToString:@"RawBayer"] & 1) != 0 || +[MIOPixelBufferUtility isPixelFormatRawBayer:](MIOPixelBufferUtility, "isPixelFormatRawBayer:", v12))
  {
    if (a5 != 2033463606)
    {
      if (a5 == 2019963442)
      {
        v19 = [MOVStreamRawBayerFromYUVPostProcessor alloc];
      }

      else
      {
        v19 = [MOVStreamRawBayerPostProcessor alloc];
      }

      v16 = -[MOVStreamRawBayerFromYUVPostProcessor initWithOriginalPixelFormat:bufferCacheMode:rawBayerMSBReplication:](v19, "initWithOriginalPixelFormat:bufferCacheMode:rawBayerMSBReplication:", v12, v8, [v13 rawBayerMSBReplication]);
      goto LABEL_5;
    }

    v20 = off_279847478;
    goto LABEL_14;
  }

  v21 = 1919365992;
  if (v12 == 1919365992 && a5 == 1380411457)
  {
    v22 = [MOVStreamRGhATorg3hPostProcessor alloc];
LABEL_23:
    v16 = [(MOVStreamDefaultPostProcessor *)v22 initWithOriginalPixelFormat:v21];
    goto LABEL_5;
  }

  v21 = 1278226738;
  if (v12 == 1278226738 && a5 == 2033463606)
  {
    v22 = [MOVStreamy416To2ByteMonochromePostProcessor alloc];
    goto LABEL_23;
  }

  if ([MIOPixelBufferUtility isPixelFormatCompandedRawBayer:v12])
  {
    v20 = off_2798473E0;
LABEL_14:
    v16 = [objc_alloc(*v20) initWithOriginalPixelFormat:v12 bufferCacheMode:v8];
    goto LABEL_5;
  }

  if (v12 == 1899524402 && a5 == 1278226736)
  {
    v22 = [MOVStreamConvertL010Toq8q2PostProcessor alloc];
    v21 = 1899524402;
    goto LABEL_23;
  }

  switch(a5)
  {
    case 0x4C303038u:
      if (v12 && v12 != 1278226488)
      {
        v20 = off_279847420;
        goto LABEL_14;
      }

LABEL_4:
      v16 = objc_opt_new();
      break;
    case 0x4C303130u:
      if (v12 == 1278226742)
      {
        v23 = [MOVStreamL016Raw14PostProcessor alloc];
        v24 = 1;
        v12 = 1278226742;
      }

      else
      {
        if (([v13 l010OutputFormatRAW14L016] & 1) == 0)
        {
          v29 = [v13 delegate];
          v30 = objc_opt_respondsToSelector();

          if (v30)
          {
            v31 = [v13 delegate];
            v32 = [v31 reader:v13 shouldConvertStreamToRAW14:v15 pixelFormat:1278226736];

            v16 = [[MOVStreamL016Raw14PostProcessor alloc] initWithOriginalPixelFormat:v12 bufferCacheMode:v8 l010OutputFormatRAW14L016:v32];
            break;
          }
        }

        v23 = [MOVStreamL016Raw14PostProcessor alloc];
        v24 = [v13 l010OutputFormatRAW14L016];
      }

      v16 = [(MOVStreamL016Raw14PostProcessor *)v23 initWithOriginalPixelFormat:v12 bufferCacheMode:v8 l010OutputFormatRAW14L016:v24];
      break;
    case 0x4C303132u:
      v25 = [v13 delegate];
      v26 = objc_opt_respondsToSelector();

      if ((v26 & 1) == 0)
      {
        goto LABEL_4;
      }

      v27 = [v13 delegate];
      v28 = [v27 reader:v13 shouldConvertStreamToRAW14:v15 pixelFormat:1278226738];

      if (!v28)
      {
        goto LABEL_4;
      }

      v16 = [[MOVStreamL016Raw14PostProcessor alloc] initWithOriginalPixelFormat:v12 bufferCacheMode:v8 l010OutputFormatRAW14L016:1];
      break;
    default:
      goto LABEL_4;
  }

LABEL_5:
  v17 = v16;

  return v17;
}

- (id)postProcessorFromReader:(id)a3 originalPixelFormat:(unsigned int)a4 encodedFormat:(unsigned int)a5 encoderType:(id)a6 streamId:(id)a7
{
  v9 = *&a4;
  v10 = a3;
  v11 = a7;
  if (([v11 isEqualToString:@"RawBayer"] & 1) != 0 || +[MIOPixelBufferUtility isPixelFormatRawBayer:](MIOPixelBufferUtility, "isPixelFormatRawBayer:", v9))
  {
    if (a5 != 2033463606)
    {
      if (a5 == 2019963442)
      {
        v12 = [MOVStreamRawBayerFromYUVPostProcessor alloc];
      }

      else
      {
        v12 = [MOVStreamRawBayerPostProcessor alloc];
      }

      v15 = -[MOVStreamRawBayerFromYUVPostProcessor initWithOriginalPixelFormat:rawBayerMSBReplication:](v12, "initWithOriginalPixelFormat:rawBayerMSBReplication:", v9, [v10 rawBayerMSBReplication]);
      goto LABEL_14;
    }

    v13 = off_279847478;
    goto LABEL_7;
  }

  if (v9 == 1278226738 && a5 == 2033463606)
  {
    v14 = [MOVStreamy416To2ByteMonochromePostProcessor alloc];
    v9 = 1278226738;
    goto LABEL_13;
  }

  if ([MIOPixelBufferUtility isPixelFormatCompandedRawBayer:v9])
  {
    v13 = off_2798473E0;
LABEL_7:
    v14 = objc_alloc(*v13);
LABEL_13:
    v15 = [(MOVStreamDefaultPostProcessor *)v14 initWithOriginalPixelFormat:v9];
    goto LABEL_14;
  }

  if (a5 == 1278226736)
  {
    v18 = [MOVStreamL016Raw14PostProcessor alloc];
    if (v9 == 1278226742)
    {
      v19 = 1;
      v9 = 1278226742;
    }

    else
    {
      v19 = [v10 l010OutputFormatRAW14L016];
    }

    v15 = [(MOVStreamL016Raw14PostProcessor *)v18 initWithOriginalPixelFormat:v9 l010OutputFormatRAW14L016:v19];
    goto LABEL_14;
  }

  if (a5 == 1278226488 && v9 && v9 != 1278226488)
  {
    v13 = off_279847420;
    goto LABEL_7;
  }

  v15 = objc_opt_new();
LABEL_14:
  v16 = v15;

  return v16;
}

@end