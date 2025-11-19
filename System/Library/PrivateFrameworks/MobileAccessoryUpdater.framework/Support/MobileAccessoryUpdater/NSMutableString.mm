@interface NSMutableString
- (void)appendWithTabDepth:(unint64_t)a3 format:(id)a4;
@end

@implementation NSMutableString

- (void)appendWithTabDepth:(unint64_t)a3 format:(id)a4
{
  for (i = CFStringCreateWithFormatAndArguments(kCFAllocatorDefault, 0, a4, &v7); a3; --a3)
  {
    [(NSMutableString *)self appendString:@"\t"];
  }

  [(NSMutableString *)self appendString:i];
  CFRelease(i);
}

@end