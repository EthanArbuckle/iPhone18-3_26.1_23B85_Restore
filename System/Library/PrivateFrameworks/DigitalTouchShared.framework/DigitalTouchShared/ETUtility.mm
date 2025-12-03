@interface ETUtility
+ (BOOL)shouldArchiveSentMessages;
+ (id)dateFormatWithMilliseconds:(id)milliseconds;
+ (id)destinationFromMessageIdentifier:(id)identifier keepPrefix:(BOOL)prefix;
+ (id)imageWithEllipseDiameter:(double)diameter strokeWidth:(double)width strokeColor:(id)color fillDiameter:(double)fillDiameter fillColor:(id)fillColor edgeOverlap:(double)overlap;
+ (id)removePrefixFromDestination:(id)destination;
+ (int64_t)lastInteractiveZoomLevel;
@end

@implementation ETUtility

+ (id)dateFormatWithMilliseconds:(id)milliseconds
{
  v3 = dateFormatterWithMilliseconds_createFormatterOnceToken;
  millisecondsCopy = milliseconds;
  if (v3 != -1)
  {
    +[ETUtility dateFormatWithMilliseconds:];
  }

  v5 = [dateFormatterWithMilliseconds_dateFormatter stringFromDate:millisecondsCopy];

  return v5;
}

+ (id)destinationFromMessageIdentifier:(id)identifier keepPrefix:(BOOL)prefix
{
  prefixCopy = prefix;
  pathComponents = [identifier pathComponents];
  if ([pathComponents count] == 2)
  {
    [pathComponents objectAtIndexedSubscript:0];
    if (prefixCopy)
      v6 = {;
    }

    else
      v7 = {;
      v6 = [ETUtility removePrefixFromDestination:v7];
    }
  }

  else
  {
    v6 = &stru_285BBA338;
  }

  return v6;
}

+ (id)removePrefixFromDestination:(id)destination
{
  destinationCopy = destination;
  v4 = [destinationCopy rangeOfString:@"mailto:"];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL && (v4 = [destinationCopy rangeOfString:@"tel:"], v4 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v6 = destinationCopy;
  }

  else
  {
    v6 = [destinationCopy substringFromIndex:v5 + v4];
  }

  v7 = v6;

  return v7;
}

+ (BOOL)shouldArchiveSentMessages
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults persistentDomainForName:@"com.apple.ET"];
  v4 = [v3 objectForKey:@"ETArchiveSentMessages"];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

+ (int64_t)lastInteractiveZoomLevel
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults persistentDomainForName:@"com.apple.ET"];
  v4 = [v3 objectForKey:@"ETLastInteractiveZoomLevel"];
  integerValue = [v4 integerValue];

  v6 = 3;
  if (integerValue < 3)
  {
    v6 = integerValue;
  }

  if (v6 <= 1)
  {
    return 1;
  }

  else
  {
    return v6;
  }
}

+ (id)imageWithEllipseDiameter:(double)diameter strokeWidth:(double)width strokeColor:(id)color fillDiameter:(double)fillDiameter fillColor:(id)fillColor edgeOverlap:(double)overlap
{
  colorCopy = color;
  fillColorCopy = fillColor;
  v15 = diameter + overlap;
  v22.width = v15;
  v22.height = v15;
  UIGraphicsBeginImageContextWithOptions(v22, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  v17 = CurrentContext;
  if (width != 0.0)
  {
    v18 = overlap * 0.5 + width;
    CGContextSetLineWidth(CurrentContext, v18);
    CGContextSetStrokeColorWithColor(v17, [colorCopy CGColor]);
    v23.origin.x = (v18 - overlap) * 0.5;
    v23.size.width = v15 - v18;
    v23.origin.y = v23.origin.x;
    v23.size.height = v15 - v18;
    CGContextAddEllipseInRect(v17, v23);
    CGContextStrokePath(v17);
  }

  if (fillDiameter != 0.0)
  {
    CGContextSetFillColorWithColor(v17, [fillColorCopy CGColor]);
    v24.origin.x = (v15 - overlap - fillDiameter) * 0.5;
    v24.origin.y = v24.origin.x;
    v24.size.width = fillDiameter;
    v24.size.height = fillDiameter;
    CGContextAddEllipseInRect(v17, v24);
    CGContextFillPath(v17);
  }

  v19 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v19;
}

@end