@interface AVTimedMetadataGroup(MIOExtensions)
+ (id)attachmentsMIOTimedMetadataGroupForDictionary:()MIOExtensions pts:error:;
+ (id)attachmentsMIOTimedMetadataGroupForPixelBuffer:()MIOExtensions pts:error:;
+ (id)attachmentsMIOTimedMetadataGroupForSampleBuffer:()MIOExtensions pts:error:;
+ (id)metadataGroupForMetadataStreamFromData:()MIOExtensions timeStamp:copyData:;
@end

@implementation AVTimedMetadataGroup(MIOExtensions)

+ (id)attachmentsMIOTimedMetadataGroupForSampleBuffer:()MIOExtensions pts:error:
{
  v13[1] = *MEMORY[0x277D85DE8];
  *&v12.start.value = *&a4->value;
  v12.start.epoch = a4->epoch;
  v5 = [MEMORY[0x277CE6520] attachmentsMIOTimedMetadataItemForSampleBuffer:a3 pts:&v12 error:?];
  v6 = objc_alloc(MEMORY[0x277CE6648]);
  v13[0] = v5;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  start = *a4;
  v10 = **&MEMORY[0x277CC0890];
  CMTimeRangeMake(&v12, &start, &v10);
  v8 = [v6 initWithItems:v7 timeRange:&v12];

  return v8;
}

+ (id)attachmentsMIOTimedMetadataGroupForPixelBuffer:()MIOExtensions pts:error:
{
  v13[1] = *MEMORY[0x277D85DE8];
  *&v12.start.value = *&a4->value;
  v12.start.epoch = a4->epoch;
  v5 = [MEMORY[0x277CE6520] attachmentsMIOMetadataItemForPixelBuffer:a3 pts:&v12 error:?];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CE6648]);
    v13[0] = v5;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    start = *a4;
    v10 = **&MEMORY[0x277CC0890];
    CMTimeRangeMake(&v12, &start, &v10);
    v8 = [v6 initWithItems:v7 timeRange:&v12];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)attachmentsMIOTimedMetadataGroupForDictionary:()MIOExtensions pts:error:
{
  v13[1] = *MEMORY[0x277D85DE8];
  *&v12.start.value = *&a4->value;
  v12.start.epoch = a4->epoch;
  v5 = [MEMORY[0x277CE6520] attachmentsMIOMetadataItemForDictionary:a3 pts:&v12 error:?];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CE6648]);
    v13[0] = v5;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    start = *a4;
    v10 = **&MEMORY[0x277CC0890];
    CMTimeRangeMake(&v12, &start, &v10);
    v8 = [v6 initWithItems:v7 timeRange:&v12];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)metadataGroupForMetadataStreamFromData:()MIOExtensions timeStamp:copyData:
{
  v6 = [MEMORY[0x277CE6520] metadataItemsForMetadataStreamFromData:a3 copyData:a5];
  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x277CE6648]);
    start = *a4;
    v10 = **&MEMORY[0x277CC0890];
    CMTimeRangeMake(&v12, &start, &v10);
    v8 = [v7 initWithItems:v6 timeRange:&v12];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end