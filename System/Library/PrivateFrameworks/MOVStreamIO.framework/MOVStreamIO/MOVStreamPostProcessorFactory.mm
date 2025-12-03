@interface MOVStreamPostProcessorFactory
+ (id)defaultFactory;
+ (id)getNewDefaultPostProcessor;
- (id)postProcessorFromReader:(id)reader originalPixelFormat:(unsigned int)format encodedFormat:(unsigned int)encodedFormat encoderType:(id)type streamId:(id)id;
- (id)postProcessorFromReader:(id)reader originalPixelFormat:(unsigned int)format encodedFormat:(unsigned int)encodedFormat encoderType:(int)type streamId:(id)id bufferCacheMode:(int)mode;
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

- (id)postProcessorFromReader:(id)reader originalPixelFormat:(unsigned int)format encodedFormat:(unsigned int)encodedFormat encoderType:(int)type streamId:(id)id bufferCacheMode:(int)mode
{
  v8 = *&mode;
  v12 = *&format;
  readerCopy = reader;
  idCopy = id;
  v15 = idCopy;
  if (type == 36 || v12 == encodedFormat && type == 17)
  {
    goto LABEL_4;
  }

  if (([idCopy isEqualToString:@"RawBayer"] & 1) != 0 || +[MIOPixelBufferUtility isPixelFormatRawBayer:](MIOPixelBufferUtility, "isPixelFormatRawBayer:", v12))
  {
    if (encodedFormat != 2033463606)
    {
      if (encodedFormat == 2019963442)
      {
        v19 = [MOVStreamRawBayerFromYUVPostProcessor alloc];
      }

      else
      {
        v19 = [MOVStreamRawBayerPostProcessor alloc];
      }

      v16 = -[MOVStreamRawBayerFromYUVPostProcessor initWithOriginalPixelFormat:bufferCacheMode:rawBayerMSBReplication:](v19, "initWithOriginalPixelFormat:bufferCacheMode:rawBayerMSBReplication:", v12, v8, [readerCopy rawBayerMSBReplication]);
      goto LABEL_5;
    }

    v20 = off_279847478;
    goto LABEL_14;
  }

  v21 = 1919365992;
  if (v12 == 1919365992 && encodedFormat == 1380411457)
  {
    v22 = [MOVStreamRGhATorg3hPostProcessor alloc];
LABEL_23:
    v16 = [(MOVStreamDefaultPostProcessor *)v22 initWithOriginalPixelFormat:v21];
    goto LABEL_5;
  }

  v21 = 1278226738;
  if (v12 == 1278226738 && encodedFormat == 2033463606)
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

  if (v12 == 1899524402 && encodedFormat == 1278226736)
  {
    v22 = [MOVStreamConvertL010Toq8q2PostProcessor alloc];
    v21 = 1899524402;
    goto LABEL_23;
  }

  switch(encodedFormat)
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
        l010OutputFormatRAW14L016 = 1;
        v12 = 1278226742;
      }

      else
      {
        if (([readerCopy l010OutputFormatRAW14L016] & 1) == 0)
        {
          delegate = [readerCopy delegate];
          v30 = objc_opt_respondsToSelector();

          if (v30)
          {
            delegate2 = [readerCopy delegate];
            v32 = [delegate2 reader:readerCopy shouldConvertStreamToRAW14:v15 pixelFormat:1278226736];

            v16 = [[MOVStreamL016Raw14PostProcessor alloc] initWithOriginalPixelFormat:v12 bufferCacheMode:v8 l010OutputFormatRAW14L016:v32];
            break;
          }
        }

        v23 = [MOVStreamL016Raw14PostProcessor alloc];
        l010OutputFormatRAW14L016 = [readerCopy l010OutputFormatRAW14L016];
      }

      v16 = [(MOVStreamL016Raw14PostProcessor *)v23 initWithOriginalPixelFormat:v12 bufferCacheMode:v8 l010OutputFormatRAW14L016:l010OutputFormatRAW14L016];
      break;
    case 0x4C303132u:
      delegate3 = [readerCopy delegate];
      v26 = objc_opt_respondsToSelector();

      if ((v26 & 1) == 0)
      {
        goto LABEL_4;
      }

      delegate4 = [readerCopy delegate];
      v28 = [delegate4 reader:readerCopy shouldConvertStreamToRAW14:v15 pixelFormat:1278226738];

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

- (id)postProcessorFromReader:(id)reader originalPixelFormat:(unsigned int)format encodedFormat:(unsigned int)encodedFormat encoderType:(id)type streamId:(id)id
{
  v9 = *&format;
  readerCopy = reader;
  idCopy = id;
  if (([idCopy isEqualToString:@"RawBayer"] & 1) != 0 || +[MIOPixelBufferUtility isPixelFormatRawBayer:](MIOPixelBufferUtility, "isPixelFormatRawBayer:", v9))
  {
    if (encodedFormat != 2033463606)
    {
      if (encodedFormat == 2019963442)
      {
        v12 = [MOVStreamRawBayerFromYUVPostProcessor alloc];
      }

      else
      {
        v12 = [MOVStreamRawBayerPostProcessor alloc];
      }

      v15 = -[MOVStreamRawBayerFromYUVPostProcessor initWithOriginalPixelFormat:rawBayerMSBReplication:](v12, "initWithOriginalPixelFormat:rawBayerMSBReplication:", v9, [readerCopy rawBayerMSBReplication]);
      goto LABEL_14;
    }

    v13 = off_279847478;
    goto LABEL_7;
  }

  if (v9 == 1278226738 && encodedFormat == 2033463606)
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

  if (encodedFormat == 1278226736)
  {
    v18 = [MOVStreamL016Raw14PostProcessor alloc];
    if (v9 == 1278226742)
    {
      l010OutputFormatRAW14L016 = 1;
      v9 = 1278226742;
    }

    else
    {
      l010OutputFormatRAW14L016 = [readerCopy l010OutputFormatRAW14L016];
    }

    v15 = [(MOVStreamL016Raw14PostProcessor *)v18 initWithOriginalPixelFormat:v9 l010OutputFormatRAW14L016:l010OutputFormatRAW14L016];
    goto LABEL_14;
  }

  if (encodedFormat == 1278226488 && v9 && v9 != 1278226488)
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