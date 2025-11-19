@interface NSError(MOVStreamIO)
+ (id)mioPixelBufferPoolErrorWithMessage:()MOVStreamIO code:;
+ (id)movStreamIOErrorWithDomain:()MOVStreamIO message:code:;
+ (id)movStreamIOWarningWithDomain:()MOVStreamIO message:code:;
+ (void)populateReaderError:()MOVStreamIO message:code:;
+ (void)populateStreamError:()MOVStreamIO message:code:;
+ (void)populateWriterError:()MOVStreamIO message:code:;
- (id)errorByAddingStreamId:()MOVStreamIO;
@end

@implementation NSError(MOVStreamIO)

+ (void)populateReaderError:()MOVStreamIO message:code:
{
  v6 = [MEMORY[0x277CCA9B8] readerErrorWithMessage:a4 code:a5];
  if (a3)
  {
    v6 = v6;
    *a3 = v6;
  }
}

+ (void)populateWriterError:()MOVStreamIO message:code:
{
  v6 = [MEMORY[0x277CCA9B8] writerErrorWithMessage:a4 code:a5];
  if (a3)
  {
    v6 = v6;
    *a3 = v6;
  }
}

+ (void)populateStreamError:()MOVStreamIO message:code:
{
  v6 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:a4 code:a5];
  if (a3)
  {
    v6 = v6;
    *a3 = v6;
  }
}

+ (id)mioPixelBufferPoolErrorWithMessage:()MOVStreamIO code:
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v13 = *MEMORY[0x277CCA450];
    v14[0] = v5;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  }

  else
  {
    v7 = 0;
  }

  v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.videoeng.miopixelbufferpoolerror" code:a4 userInfo:v7];
  v9 = +[MIOLog defaultLog];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v11 = 138543362;
    v12 = v8;
    _os_log_impl(&dword_257883000, v9, OS_LOG_TYPE_ERROR, "⛔️⛔️⛔️ ERROR [MIOPixelBufferPool]: %{public}@ ⛔️⛔️⛔️", &v11, 0xCu);
  }

  return v8;
}

+ (id)movStreamIOErrorWithDomain:()MOVStreamIO message:code:
{
  v17[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v8)
  {
    v16 = *MEMORY[0x277CCA450];
    v17[0] = v8;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  }

  else
  {
    v10 = 0;
  }

  v11 = [MEMORY[0x277CCA9B8] errorWithDomain:v7 code:a5 userInfo:v10];
  v12 = +[MIOLog defaultLog];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v14 = 138543362;
    v15 = v11;
    _os_log_impl(&dword_257883000, v12, OS_LOG_TYPE_ERROR, "⛔️⛔️⛔️ ERROR [MOVStreamIO]: %{public}@ ⛔️⛔️⛔️", &v14, 0xCu);
  }

  return v11;
}

+ (id)movStreamIOWarningWithDomain:()MOVStreamIO message:code:
{
  v17[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v8)
  {
    v16 = *MEMORY[0x277CCA450];
    v17[0] = v8;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  }

  else
  {
    v10 = 0;
  }

  v11 = [MEMORY[0x277CCA9B8] errorWithDomain:v7 code:a5 userInfo:v10];
  if (+[MIOLog debugEnabled])
  {
    v12 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v14 = 138543362;
      v15 = v11;
      _os_log_impl(&dword_257883000, v12, OS_LOG_TYPE_DEBUG, "⚠️⚠️⚠️ WARNING [MOVStreamIO]: %{public}@ ⚠️⚠️⚠️", &v14, 0xCu);
    }
  }

  return v11;
}

- (id)errorByAddingStreamId:()MOVStreamIO
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"Unknown";
  }

  v6 = [a1 userInfo];
  v7 = [v6 mutableCopy];

  v8 = [a1 domain];
  v9 = [a1 code];
  if (!v7)
  {
    v7 = objc_opt_new();
  }

  [v7 setObject:v5 forKey:@"ErrorInfoStreamId"];
  v10 = [MEMORY[0x277CCA9B8] errorWithDomain:v8 code:v9 userInfo:v7];
  v11 = +[MIOLog defaultLog];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v13 = 138543362;
    v14 = v10;
    _os_log_impl(&dword_257883000, v11, OS_LOG_TYPE_ERROR, "⛔️⛔️⛔️ ERROR [MOVStreamIO]: %{public}@ ⛔️⛔️⛔️", &v13, 0xCu);
  }

  return v10;
}

@end