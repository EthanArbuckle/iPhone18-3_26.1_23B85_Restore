@interface NSURLSessionTask(FCOperationIdentifyingSupport)
- (id)longOperationDescription;
- (id)shortOperationDescription;
@end

@implementation NSURLSessionTask(FCOperationIdentifyingSupport)

- (id)shortOperationDescription
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = [self description];
  v3 = [v1 stringWithFormat:@"<NSURLSessionTask %@>", v2];

  return v3;
}

- (id)longOperationDescription
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [self description];
  [self priority];
  v5 = [v2 stringWithFormat:@"<NSURLSessionTask %@, priority=%.2f>", v3, v4];

  return v5;
}

@end