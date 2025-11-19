@interface NSURLSessionTask
- (int64_t)bl_cancelReason;
- (void)bl_cancelWithReason:(int64_t)a3 error:(id)a4;
@end

@implementation NSURLSessionTask

- (void)bl_cancelWithReason:(int64_t)a3 error:(id)a4
{
  v6 = a4;
  value = [NSNumber numberWithInteger:a3];
  objc_setAssociatedObject(self, "com.apple.bookassetd.cancelError", v6, 0x301);

  objc_setAssociatedObject(self, "com.apple.bookassetd.cancelReason", value, 0x301);
  [(NSURLSessionTask *)self cancel];
}

- (int64_t)bl_cancelReason
{
  v2 = objc_getAssociatedObject(self, "com.apple.bookassetd.cancelReason");
  v3 = [v2 integerValue];

  return v3;
}

@end