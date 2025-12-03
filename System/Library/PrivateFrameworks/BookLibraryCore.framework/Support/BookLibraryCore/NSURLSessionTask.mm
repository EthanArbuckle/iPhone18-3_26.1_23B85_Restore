@interface NSURLSessionTask
- (int64_t)bl_cancelReason;
- (void)bl_cancelWithReason:(int64_t)reason error:(id)error;
@end

@implementation NSURLSessionTask

- (void)bl_cancelWithReason:(int64_t)reason error:(id)error
{
  errorCopy = error;
  value = [NSNumber numberWithInteger:reason];
  objc_setAssociatedObject(self, "com.apple.bookassetd.cancelError", errorCopy, 0x301);

  objc_setAssociatedObject(self, "com.apple.bookassetd.cancelReason", value, 0x301);
  [(NSURLSessionTask *)self cancel];
}

- (int64_t)bl_cancelReason
{
  v2 = objc_getAssociatedObject(self, "com.apple.bookassetd.cancelReason");
  integerValue = [v2 integerValue];

  return integerValue;
}

@end