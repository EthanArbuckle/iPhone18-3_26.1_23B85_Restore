@interface MCVersioningUtilities
+ (BOOL)_allZerosArray:(id)array startingAtIndex:(unint64_t)index;
+ (BOOL)versionString:(id)string isOlderThanVersionString:(id)versionString;
@end

@implementation MCVersioningUtilities

+ (BOOL)_allZerosArray:(id)array startingAtIndex:(unint64_t)index
{
  arrayCopy = array;
  if ([arrayCopy count] <= index)
  {
    v8 = 1;
  }

  else
  {
    do
    {
      v6 = [arrayCopy objectAtIndex:index];
      intValue = [v6 intValue];
      v8 = intValue == 0;

      if (intValue)
      {
        break;
      }

      ++index;
    }

    while (index < [arrayCopy count]);
  }

  return v8;
}

+ (BOOL)versionString:(id)string isOlderThanVersionString:(id)versionString
{
  versionStringCopy = versionString;
  v6 = [string componentsSeparatedByString:@"."];
  v7 = [versionStringCopy componentsSeparatedByString:@"."];
  v8 = 0;
  if ([v6 count])
  {
    while (v8 < [v7 count])
    {
      v9 = [v6 objectAtIndex:v8];
      intValue = [v9 intValue];
      v11 = [v7 objectAtIndex:v8];
      intValue2 = [v11 intValue];

      if (intValue < intValue2)
      {
        LOBYTE(v16) = 1;
        goto LABEL_10;
      }

      if (++v8 >= [v6 count])
      {
        break;
      }
    }
  }

  v13 = [v6 count];
  v14 = v6;
  if (v8 >= v13 && (v15 = [v7 count], v14 = v7, v8 >= v15))
  {
    LOBYTE(v16) = 0;
  }

  else
  {
    v16 = ![MCVersioningUtilities _allZerosArray:v14 startingAtIndex:v8];
  }

LABEL_10:

  return v16;
}

@end