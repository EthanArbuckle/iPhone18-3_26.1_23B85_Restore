@interface NSMutableString
- (void)appendWithTabDepth:(unint64_t)depth format:(id)format;
@end

@implementation NSMutableString

- (void)appendWithTabDepth:(unint64_t)depth format:(id)format
{
  for (i = CFStringCreateWithFormatAndArguments(kCFAllocatorDefault, 0, format, &v7); depth; --depth)
  {
    [(NSMutableString *)self appendString:@"\t"];
  }

  [(NSMutableString *)self appendString:i];
  CFRelease(i);
}

@end