@interface FMStopwatch
+ (id)illegalLabelCharacterSet;
+ (id)stopwatchWithLabel:(id)a3;
+ (void)dumpBuffer:(id)a3;
+ (void)eventWithLabel:(id)a3 comment:(id)a4;
+ (void)initialize;
- (FMStopwatch)initWithLabel:(id)a3;
- (id)description;
- (id)descriptionAsData;
- (void)stopWithComment:(id)a3;
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

+ (id)stopwatchWithLabel:(id)a3
{
  if (_stopwatchEnabled == 1)
  {
    v3 = a3;
    v4 = [objc_alloc(objc_opt_class()) initWithLabel:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (void)eventWithLabel:(id)a3 comment:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (_stopwatchEnabled == 1)
  {
    v7 = [objc_alloc(objc_opt_class()) initWithLabel:v5];
    [v7 setEndTime:{objc_msgSend(v7, "startTime")}];
    if ([v6 length])
    {
      v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v6 arguments:&v10];
      [v7 setComment:v8];
    }

    v9 = buffer;
    objc_sync_enter(v9);
    [buffer addObject:v7];
    objc_sync_exit(v9);
  }
}

+ (void)dumpBuffer:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  if ([buffer count])
  {
    v3 = objc_alloc_init(MEMORY[0x277CCAA00]);
    v4 = [MEMORY[0x277CBEAA8] date];
    v5 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v5 setDateFormat:@"yyyyMMddHHmmss"];
    v6 = [MEMORY[0x277CBEBB0] timeZoneWithName:@"GMT"];
    [v5 setTimeZone:v6];

    v7 = MEMORY[0x277CCACA8];
    v8 = dumpDirectory;
    v9 = [v5 stringFromDate:v4];
    v10 = [v7 stringWithFormat:@"%@/.%@.perftemp", v8, v9];

    v11 = MEMORY[0x277CCACA8];
    v12 = dumpDirectory;
    v23 = v4;
    v13 = [v5 stringFromDate:v4];
    v14 = [v11 stringWithFormat:@"%@/%@.perf", v12, v13];

    [v3 createDirectoryAtPath:dumpDirectory withIntermediateDirectories:1 attributes:0 error:0];
    [v3 createFileAtPath:v10 contents:0 attributes:0];
    v15 = [MEMORY[0x277CCA9F8] fileHandleForWritingAtPath:v10];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v16 = buffer;
    v17 = [v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
            objc_enumerationMutation(v16);
          }

          v21 = [*(*(&v24 + 1) + 8 * v20) descriptionAsData];
          [v15 writeData:v21];

          ++v20;
        }

        while (v18 != v20);
        v18 = [v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
  v2 = a1;
  objc_sync_enter(v2);
  if (!illegalLabelCharacterSet_illegalLabelCharacterSet)
  {
    v3 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:{@", "}];
    v4 = illegalLabelCharacterSet_illegalLabelCharacterSet;
    illegalLabelCharacterSet_illegalLabelCharacterSet = v3;
  }

  objc_sync_exit(v2);

  v5 = illegalLabelCharacterSet_illegalLabelCharacterSet;

  return v5;
}

- (FMStopwatch)initWithLabel:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = FMStopwatch;
  v6 = [(FMStopwatch *)&v11 init];
  if (v6)
  {
    v7 = +[FMStopwatch illegalLabelCharacterSet];
    [v5 rangeOfCharacterFromSet:v7];
    v9 = v8;

    if (v9)
    {

      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"Illegal character in label: [%@]", v5}];
      v6 = 0;
    }

    [(FMStopwatch *)v6 setLabel:v5];
    objc_storeStrong(&v6->_label, a3);
    v6->_startTime = nanosecondTimestamp();
    v6->_endTime = 0;
  }

  return v6;
}

- (void)stopWithComment:(id)a3
{
  v4 = a3;
  [(FMStopwatch *)self setEndTime:nanosecondTimestamp()];
  if ([v4 length])
  {
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v4 arguments:&v7];
    [(FMStopwatch *)self setComment:v5];
  }

  v6 = buffer;
  objc_sync_enter(v6);
  [buffer addObject:self];
  objc_sync_exit(v6);
}

- (id)description
{
  v3 = [(FMStopwatch *)self endTime];
  v4 = [(FMStopwatch *)self startTime];
  v5 = [(FMStopwatch *)self endTime];
  v6 = [MEMORY[0x277CBEAA8] distantPast];
  [v6 timeIntervalSinceReferenceDate];
  v8 = v7;

  if (v8 == v5)
  {
    v9 = MEMORY[0x277CCAB68];
    v10 = [(FMStopwatch *)self label];
    [v9 stringWithFormat:@"%@, %llu # STILL RUNNING", v10, -[FMStopwatch startTime](self, "startTime")];
    v15 = LABEL_5:;
    v16 = 0;
    goto LABEL_6;
  }

  v11 = [(FMStopwatch *)self startTime];
  v12 = [(FMStopwatch *)self endTime];
  v13 = MEMORY[0x277CCAB68];
  v10 = [(FMStopwatch *)self label];
  v14 = [(FMStopwatch *)self startTime];
  if (v11 == v12)
  {
    [v13 stringWithFormat:@"%@, %llu", v10, v14];
    goto LABEL_5;
  }

  v15 = [v13 stringWithFormat:@"%@, %llu, %llu", v10, v14, -[FMStopwatch endTime](self, "endTime")];
  v16 = 1;
LABEL_6:

  v17 = [(FMStopwatch *)self comment];

  if (v17)
  {
    v18 = [(FMStopwatch *)self comment];
    [v15 appendFormat:@" # %@", v18];
  }

  if (v16)
  {
    v19 = v3 - v4;
    v20 = [(FMStopwatch *)self comment];

    if (v20)
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