@interface CAMBurstThumbnailCluster
- (CAMBurstThumbnailCluster)init;
- (CAMBurstThumbnailCluster)initWithImageData:(id)a3 dict:(id)a4 identifier:(id)a5 imageProps:(id)a6 completionBlock:(id)a7;
- (float)computeMergeCost:(id)a3 :(int *)a4 :(int)a5;
- (void)dealloc;
- (void)releaseImage;
@end

@implementation CAMBurstThumbnailCluster

- (CAMBurstThumbnailCluster)init
{
  self->burstImages = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
  self->imageProps = 0;
  v4.receiver = self;
  v4.super_class = CAMBurstThumbnailCluster;
  return [(CAMBurstThumbnailCluster *)&v4 init];
}

- (CAMBurstThumbnailCluster)initWithImageData:(id)a3 dict:(id)a4 identifier:(id)a5 imageProps:(id)a6 completionBlock:(id)a7
{
  v33.receiver = self;
  v33.super_class = CAMBurstThumbnailCluster;
  v12 = [(CAMBurstThumbnailCluster *)&v33 init];
  v12->burstImages = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
  [(CAMBurstThumbnailCluster *)v12 setImageProps:a6];
  [(CAMBurstThumbnailCluster *)v12 setImage:a3];
  [(CAMBurstThumbnailCluster *)v12 setCompletionBlock:a7];
  v13 = [[CAMBurstImageStat alloc] initWithIdentifier:a5];
  BurstLoggingMessage("ThumbnailCluster - adding %s\n", [a5 UTF8String]);
  if (!a4)
  {
    goto LABEL_28;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v15 = [a4 objectForKey:@"JpegData"];
  if (v15)
  {
    [(CAMBurstThumbnailCluster *)v12 setFullsizeJpegData:v15];
    [(CAMBurstImageStat *)v13 setFullsizeJpegData:[(CAMBurstThumbnailCluster *)v12 fullsizeJpegData]];
    -[CAMBurstImageStat setFullsizeJpegSize:](v13, "setFullsizeJpegSize:", [objc_msgSend(a4 objectForKey:{@"JpegDataSize", "intValue"}]);
  }

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_12;
  }

  v16 = [a4 objectForKey:*MEMORY[0x1E696DE78]];
  if (v16)
  {
    v17 = v16;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_12;
    }

    -[CAMBurstImageStat setOrientation:](v13, "setOrientation:", [v17 intValue]);
  }

  v18 = [a4 objectForKey:*MEMORY[0x1E696DE30]];
  if (!v18)
  {
LABEL_28:
    BurstLoggingMessage("[CAMBurstThumbnailCluster initWithImageData] : no error\n");
    goto LABEL_29;
  }

  v19 = v18;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = [v19 objectForKey:@"6"];
    if (v20)
    {
      v21 = [v20 intValue];
    }

    else
    {
      v21 = 0;
    }

    [(CAMBurstImageStat *)v13 setAEAverage:v21];
    v22 = [v19 objectForKey:@"5"];
    if (v22)
    {
      v23 = [v22 intValue];
    }

    else
    {
      v23 = 0;
    }

    [(CAMBurstImageStat *)v13 setAETarget:v23];
    v24 = [v19 objectForKey:@"4"];
    if (v24)
    {
      v25 = [v24 intValue] != 0;
    }

    else
    {
      v25 = 0;
    }

    [(CAMBurstImageStat *)v13 setAEStable:v25];
    v26 = [v19 objectForKey:@"7"];
    if (v26)
    {
      v27 = [v26 intValue] != 0;
    }

    else
    {
      v27 = 0;
    }

    [(CAMBurstImageStat *)v13 setAFStable:v27];
    v28 = [v19 objectForKey:@"2"];
    if (!v28 || [(CAMBurstImageStat *)v13 setAEMatrix:v28])
    {
      [(CAMBurstImageStat *)v13 computeAEMatrix:a3];
    }

    v29 = [v19 objectForKey:@"3"];
    if (v29)
    {
      memset(&v32, 0, sizeof(v32));
      CMTimeMakeFromDictionary(&v32, v29);
      time = v32;
      [(CAMBurstImageStat *)v13 setTimestamp:CMTimeGetSeconds(&time)];
    }

    goto LABEL_28;
  }

LABEL_12:
  BurstLoggingMessage("[CAMBurstThumbnailCluster initWithImageData] : metadata parsing error\n");
LABEL_29:
  [(NSMutableArray *)v12->burstImages addObject:v13];

  return v12;
}

- (void)dealloc
{
  burstImages = self->burstImages;
  if (burstImages)
  {

    self->burstImages = 0;
  }

  [(CAMBurstThumbnailCluster *)self releaseImage];
  v4.receiver = self;
  v4.super_class = CAMBurstThumbnailCluster;
  [(CAMBurstThumbnailCluster *)&v4 dealloc];
}

- (void)releaseImage
{
  image = self->image;
  if (image)
  {

    self->image = 0;
  }

  imageProps = self->imageProps;
  if (imageProps)
  {

    self->imageProps = 0;
  }

  if ([(CAMBurstThumbnailCluster *)self fullsizeJpegData])
  {
    CFRelease([(CAMBurstThumbnailCluster *)self fullsizeJpegData]);

    [(CAMBurstThumbnailCluster *)self setFullsizeJpegData:0];
  }
}

- (float)computeMergeCost:(id)a3 :(int *)a4 :(int)a5
{
  v36 = *MEMORY[0x1E69E9840];
  v9 = [(NSMutableArray *)self->burstImages count];
  v24 = a3;
  v10 = -1.0;
  if ((a5 / 1.5) >= ([*(a3 + 1) count] + v9))
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = self->burstImages;
    v25 = [(NSMutableArray *)obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v25)
    {
      v23 = *v31;
      v10 = 0.0;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v31 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v30 + 1) + 8 * i);
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v13 = v24[1];
          v14 = [v13 countByEnumeratingWithState:&v26 objects:v34 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v27;
            do
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v27 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v26 + 1) + 8 * j);
                v19 = [v12 temporalOrder];
                v20 = [v18 temporalOrder] + v19 * a5;
                if (v10 < a4[v20])
                {
                  v10 = a4[v20];
                }
              }

              v15 = [v13 countByEnumeratingWithState:&v26 objects:v34 count:16];
            }

            while (v15);
          }
        }

        v25 = [(NSMutableArray *)obj countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v25);
    }

    else
    {
      return 0.0;
    }
  }

  return v10;
}

@end