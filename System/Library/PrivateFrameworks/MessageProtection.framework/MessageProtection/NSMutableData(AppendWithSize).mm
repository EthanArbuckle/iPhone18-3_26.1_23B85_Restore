@interface NSMutableData(AppendWithSize)
- (void)appendDataAndSize:()AppendWithSize;
@end

@implementation NSMutableData(AppendWithSize)

- (void)appendDataAndSize:()AppendWithSize
{
  v4 = a3;
  v5 = bswap32([v4 length]) >> 16;
  [self appendBytes:&v5 length:2];
  [self appendData:v4];
}

@end