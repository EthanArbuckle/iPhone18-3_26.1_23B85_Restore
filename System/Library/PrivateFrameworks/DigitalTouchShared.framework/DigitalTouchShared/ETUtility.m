@interface ETUtility
+ (BOOL)shouldArchiveSentMessages;
+ (id)dateFormatWithMilliseconds:(id)a3;
+ (id)destinationFromMessageIdentifier:(id)a3 keepPrefix:(BOOL)a4;
+ (id)imageWithEllipseDiameter:(double)a3 strokeWidth:(double)a4 strokeColor:(id)a5 fillDiameter:(double)a6 fillColor:(id)a7 edgeOverlap:(double)a8;
+ (id)removePrefixFromDestination:(id)a3;
+ (int64_t)lastInteractiveZoomLevel;
@end

@implementation ETUtility

+ (id)dateFormatWithMilliseconds:(id)a3
{
  v3 = dateFormatterWithMilliseconds_createFormatterOnceToken;
  v4 = a3;
  if (v3 != -1)
  {
    +[ETUtility dateFormatWithMilliseconds:];
  }

  v5 = [dateFormatterWithMilliseconds_dateFormatter stringFromDate:v4];

  return v5;
}

+ (id)destinationFromMessageIdentifier:(id)a3 keepPrefix:(BOOL)a4
{
  v4 = a4;
  v5 = [a3 pathComponents];
  if ([v5 count] == 2)
  {
    [v5 objectAtIndexedSubscript:0];
    if (v4)
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

+ (id)removePrefixFromDestination:(id)a3
{
  v3 = a3;
  v4 = [v3 rangeOfString:@"mailto:"];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL && (v4 = [v3 rangeOfString:@"tel:"], v4 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v6 = v3;
  }

  else
  {
    v6 = [v3 substringFromIndex:v5 + v4];
  }

  v7 = v6;

  return v7;
}

+ (BOOL)shouldArchiveSentMessages
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 persistentDomainForName:@"com.apple.ET"];
  v4 = [v3 objectForKey:@"ETArchiveSentMessages"];
  v5 = [v4 BOOLValue];

  return v5;
}

+ (int64_t)lastInteractiveZoomLevel
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 persistentDomainForName:@"com.apple.ET"];
  v4 = [v3 objectForKey:@"ETLastInteractiveZoomLevel"];
  v5 = [v4 integerValue];

  v6 = 3;
  if (v5 < 3)
  {
    v6 = v5;
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

+ (id)imageWithEllipseDiameter:(double)a3 strokeWidth:(double)a4 strokeColor:(id)a5 fillDiameter:(double)a6 fillColor:(id)a7 edgeOverlap:(double)a8
{
  v13 = a5;
  v14 = a7;
  v15 = a3 + a8;
  v22.width = v15;
  v22.height = v15;
  UIGraphicsBeginImageContextWithOptions(v22, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  v17 = CurrentContext;
  if (a4 != 0.0)
  {
    v18 = a8 * 0.5 + a4;
    CGContextSetLineWidth(CurrentContext, v18);
    CGContextSetStrokeColorWithColor(v17, [v13 CGColor]);
    v23.origin.x = (v18 - a8) * 0.5;
    v23.size.width = v15 - v18;
    v23.origin.y = v23.origin.x;
    v23.size.height = v15 - v18;
    CGContextAddEllipseInRect(v17, v23);
    CGContextStrokePath(v17);
  }

  if (a6 != 0.0)
  {
    CGContextSetFillColorWithColor(v17, [v14 CGColor]);
    v24.origin.x = (v15 - a8 - a6) * 0.5;
    v24.origin.y = v24.origin.x;
    v24.size.width = a6;
    v24.size.height = a6;
    CGContextAddEllipseInRect(v17, v24);
    CGContextFillPath(v17);
  }

  v19 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v19;
}

@end