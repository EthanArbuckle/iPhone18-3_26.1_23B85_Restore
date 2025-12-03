@interface FMStopwatch
+ (id)illegalLabelCharacterSet;
+ (id)stopwatchWithLabel:(id)label;
+ (void)dumpBuffer:(id)buffer;
+ (void)eventWithLabel:(id)label comment:(id)comment;
+ (void)initialize;
- (FMStopwatch)initWithLabel:(id)label;
- (id)description;
- (id)descriptionAsData;
- (void)stopWithComment:(id)comment;
@end

@implementation FMStopwatch

+ (void)initialize
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = dumpDirectory;
  _os_log_debug_impl(&dword_24A2EE000, log, OS_LOG_TYPE_DEBUG, "Performance data dump directory: %@", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

+ (id)stopwatchWithLabel:(id)label
{
  if (_stopwatchEnabled == 1)
  {
    labelCopy = label;
    v4 = [objc_alloc(objc_opt_class()) initWithLabel:labelCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (void)eventWithLabel:(id)label comment:(id)comment
{
  labelCopy = label;
  commentCopy = comment;
  if (_stopwatchEnabled == 1)
  {
    v7 = [objc_alloc(objc_opt_class()) initWithLabel:labelCopy];
    [v7 setEndTime:{objc_msgSend(v7, "startTime")}];
    if ([commentCopy length])
    {
      v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:commentCopy arguments:&v10];
      [v7 setComment:v8];
    }

    v9 = buffer;
    objc_sync_enter(v9);
    [buffer addObject:v7];
    objc_sync_exit(v9);
  }
}

+ (void)dumpBuffer:(id)buffer
{
  v29 = *MEMORY[0x277D85DE8];
  if ([buffer count])
  {
    v3 = objc_alloc_init(MEMORY[0x277CCAA00]);
    date = [MEMORY[0x277CBEAA8] date];
    v5 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v5 setDateFormat:@"yyyyMMddHHmmss"];
    v6 = [MEMORY[0x277CBEBB0] timeZoneWithName:@"GMT"];
    [v5 setTimeZone:v6];

    v7 = MEMORY[0x277CCACA8];
    v8 = dumpDirectory;
    v9 = [v5 stringFromDate:date];
    v10 = [v7 stringWithFormat:@"%@/.%@.perftemp", v8, v9];

    v11 = MEMORY[0x277CCACA8];
    v12 = dumpDirectory;
    v23 = date;
    v13 = [v5 stringFromDate:date];
    v14 = [v11 stringWithFormat:@"%@/%@.perf", v12, v13];

    [v3 createDirectoryAtPath:dumpDirectory withIntermediateDirectories:1 attributes:0 error:0];
    [v3 createFileAtPath:v10 contents:0 attributes:0];
    v15 = [MEMORY[0x277CCA9F8] fileHandleForWritingAtPath:v10];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    bufferCopy = buffer;
    v17 = [bufferCopy countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v25;
      do
      {
        v20 = 0;
        do
        {
          if (*v25 != v19)
          {
            objc_enumerationMutation(bufferCopy);
          }

          descriptionAsData = [*(*(&v24 + 1) + 8 * v20) descriptionAsData];
          [v15 writeData:descriptionAsData];

          ++v20;
        }

        while (v18 != v20);
        v18 = [bufferCopy countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v18);
    }

    [v15 closeFile];
    [v3 linkItemAtPath:v10 toPath:v14 error:0];
    [v3 removeItemAtPath:v10 error:0];
    [buffer removeAllObjects];
  }

  v22 = *MEMORY[0x277D85DE8];
}

+ (id)illegalLabelCharacterSet
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!illegalLabelCharacterSet_illegalLabelCharacterSet)
  {
    v3 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:{@", "}];
    v4 = illegalLabelCharacterSet_illegalLabelCharacterSet;
    illegalLabelCharacterSet_illegalLabelCharacterSet = v3;
  }

  objc_sync_exit(selfCopy);

  v5 = illegalLabelCharacterSet_illegalLabelCharacterSet;

  return v5;
}

- (FMStopwatch)initWithLabel:(id)label
{
  labelCopy = label;
  v11.receiver = self;
  v11.super_class = FMStopwatch;
  v6 = [(FMStopwatch *)&v11 init];
  if (v6)
  {
    v7 = +[FMStopwatch illegalLabelCharacterSet];
    [labelCopy rangeOfCharacterFromSet:v7];
    v9 = v8;

    if (v9)
    {

      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"Illegal character in label: [%@]", labelCopy}];
      v6 = 0;
    }

    [(FMStopwatch *)v6 setLabel:labelCopy];
    objc_storeStrong(&v6->_label, label);
    v6->_startTime = nanosecondTimestamp();
    v6->_endTime = 0;
  }

  return v6;
}

- (void)stopWithComment:(id)comment
{
  commentCopy = comment;
  [(FMStopwatch *)self setEndTime:nanosecondTimestamp()];
  if ([commentCopy length])
  {
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:commentCopy arguments:&v7];
    [(FMStopwatch *)self setComment:v5];
  }

  v6 = buffer;
  objc_sync_enter(v6);
  [buffer addObject:self];
  objc_sync_exit(v6);
}

- (id)description
{
  endTime = [(FMStopwatch *)self endTime];
  startTime = [(FMStopwatch *)self startTime];
  endTime2 = [(FMStopwatch *)self endTime];
  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  [distantPast timeIntervalSinceReferenceDate];
  v8 = v7;

  if (v8 == endTime2)
  {
    v9 = MEMORY[0x277CCAB68];
    label = [(FMStopwatch *)self label];
    [v9 stringWithFormat:@"%@, %llu # STILL RUNNING", label, -[FMStopwatch startTime](self, "startTime")];
    v15 = LABEL_5:;
    v16 = 0;
    goto LABEL_6;
  }

  startTime2 = [(FMStopwatch *)self startTime];
  endTime3 = [(FMStopwatch *)self endTime];
  v13 = MEMORY[0x277CCAB68];
  label = [(FMStopwatch *)self label];
  startTime3 = [(FMStopwatch *)self startTime];
  if (startTime2 == endTime3)
  {
    [v13 stringWithFormat:@"%@, %llu", label, startTime3];
    goto LABEL_5;
  }

  v15 = [v13 stringWithFormat:@"%@, %llu, %llu", label, startTime3, -[FMStopwatch endTime](self, "endTime")];
  v16 = 1;
LABEL_6:

  comment = [(FMStopwatch *)self comment];

  if (comment)
  {
    comment2 = [(FMStopwatch *)self comment];
    [v15 appendFormat:@" # %@", comment2];
  }

  if (v16)
  {
    v19 = endTime - startTime;
    comment3 = [(FMStopwatch *)self comment];

    if (comment3)
    {
      v21 = @" [Δ=%lu ns]";
    }

    else
    {
      v21 = @" # [Δ=%lu ns]";
    }

    [v15 appendFormat:v21, v19];
  }

  return v15;
}

- (id)descriptionAsData
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(FMStopwatch *)self description];
  v4 = [v2 stringWithFormat:@"%@\n", v3];

  v5 = [v4 dataUsingEncoding:4];

  return v5;
}

@end