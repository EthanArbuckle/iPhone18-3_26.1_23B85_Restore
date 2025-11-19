@interface NSMutableURLRequest(WFFormEncoding)
- (void)wf_setBodyWithQueryItems:()WFFormEncoding;
@end

@implementation NSMutableURLRequest(WFFormEncoding)

- (void)wf_setBodyWithQueryItems:()WFFormEncoding
{
  v4 = a3;
  [a1 setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
  v5 = WFHTTPBodyFromQueryItems(v4);

  [a1 setHTTPBody:v5];
}

@end