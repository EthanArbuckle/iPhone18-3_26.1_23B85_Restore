@interface NSMutableData(OCMutableDataAdditions)
- (void)appendString:()OCMutableDataAdditions encoding:;
@end

@implementation NSMutableData(OCMutableDataAdditions)

- (void)appendString:()OCMutableDataAdditions encoding:
{
  v5 = [a3 dataUsingEncoding:a4 allowLossyConversion:1];
  [a1 appendData:?];
}

@end