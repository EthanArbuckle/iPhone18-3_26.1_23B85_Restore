@interface NSValue(WebViewGeometryExtras)
- (uint64_t)sf_webViewGeometryValue;
@end

@implementation NSValue(WebViewGeometryExtras)

- (uint64_t)sf_webViewGeometryValue
{
  x8_0[14] = 0u;
  x8_0[15] = 0u;
  x8_0[12] = 0u;
  x8_0[13] = 0u;
  x8_0[10] = 0u;
  x8_0[11] = 0u;
  x8_0[8] = 0u;
  x8_0[9] = 0u;
  x8_0[6] = 0u;
  x8_0[7] = 0u;
  x8_0[4] = 0u;
  x8_0[5] = 0u;
  x8_0[2] = 0u;
  x8_0[3] = 0u;
  *x8_0 = 0u;
  x8_0[1] = 0u;
  return [a1 getValue:x8_0];
}

@end