@interface NSString(MSVLyricsTTMLParser)
- (double)msvl_timeValue;
@end

@implementation NSString(MSVLyricsTTMLParser)

- (double)msvl_timeValue
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [self componentsSeparatedByString:@":"];
  lastObject = [v2 lastObject];
  [lastObject doubleValue];
  v5 = v4;

  if ([v2 count] >= 2)
  {
    v6 = [v2 objectAtIndexedSubscript:{objc_msgSend(v2, "count") - 2}];
    v5 = v5 + [v6 integerValue] * 60.0;

    if ([v2 count] >= 3)
    {
      v7 = os_log_create("com.apple.amp.MediaServices", "LyricsTTMLParser");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138412290;
        selfCopy = self;
        _os_log_impl(&dword_1AC81F000, v7, OS_LOG_TYPE_DEFAULT, "Warning: time format should specify [minutes:]seconds only; other components are ignored: %@", &v10, 0xCu);
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

@end