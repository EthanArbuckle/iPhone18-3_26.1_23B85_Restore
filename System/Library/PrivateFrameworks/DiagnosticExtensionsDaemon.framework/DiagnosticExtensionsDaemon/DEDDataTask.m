@interface DEDDataTask
- (DEDDataTask)initWithDataTask:(id)a3;
- (id)description;
@end

@implementation DEDDataTask

- (DEDDataTask)initWithDataTask:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = DEDDataTask;
  v5 = [(DEDDataTask *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(DEDDataTask *)v5 setDataTask:v4];
    [v4 resume];
  }

  return v6;
}

- (id)description
{
  v16[4] = *MEMORY[0x277D85DE8];
  v15[0] = @"dataTask";
  v3 = [(DEDDataTask *)self dataTask];
  v16[0] = v3;
  v15[1] = @"data";
  v4 = [(DEDDataTask *)self data];
  v16[1] = v4;
  v15[2] = @"response";
  v5 = [(DEDDataTask *)self response];
  v16[2] = v5;
  v15[3] = @"isFinished";
  v6 = [(DEDDataTask *)self isFinished];
  v7 = @"false";
  if (v6)
  {
    v7 = @"true";
  }

  v16[3] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:4];

  v9 = MEMORY[0x277CCACA8];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [v9 stringWithFormat:@"%@: %@", v11, v8];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end