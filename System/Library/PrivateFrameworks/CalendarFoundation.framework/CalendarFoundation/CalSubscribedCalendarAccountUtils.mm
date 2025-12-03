@interface CalSubscribedCalendarAccountUtils
+ (id)hostStringFromURL:(id)l;
+ (id)hostStringFromURLString:(id)string;
@end

@implementation CalSubscribedCalendarAccountUtils

+ (id)hostStringFromURL:(id)l
{
  if (l)
  {
    v3 = [MEMORY[0x1E696AF20] componentsWithURL:l resolvingAgainstBaseURL:0];
    rangeOfHost = [v3 rangeOfHost];
    if (rangeOfHost == 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = 0;
    }

    else
    {
      v6 = rangeOfHost;
      string = [v3 string];
      v5 = [string substringFromIndex:v6];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)hostStringFromURLString:(id)string
{
  stringCopy = string;
  if (stringCopy)
  {
    v5 = [MEMORY[0x1E695DFF8] URLWithString:stringCopy];
    if (v5)
    {
      v6 = [self hostStringFromURL:v5];
    }

    else
    {
      v6 = stringCopy;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end