@interface DMCVersioningUtilities
+ (BOOL)_allZerosArray:(id)a3 startingAtIndex:(unint64_t)a4;
+ (BOOL)versionString:(id)a3 isOlderThanVersionString:(id)a4;
@end

@implementation DMCVersioningUtilities

+ (BOOL)_allZerosArray:(id)a3 startingAtIndex:(unint64_t)a4
{
  v5 = a3;
  if ([v5 count] <= a4)
  {
    v8 = 1;
  }

  else
  {
    do
    {
      v6 = [v5 objectAtIndex:a4];
      v7 = [v6 intValue];
      v8 = v7 == 0;

      if (v7)
      {
        break;
      }

      ++a4;
    }

    while (a4 < [v5 count]);
  }

  return v8;
}

+ (BOOL)versionString:(id)a3 isOlderThanVersionString:(id)a4
{
  v5 = a4;
  v6 = [a3 componentsSeparatedByString:@"."];
  v7 = [v5 componentsSeparatedByString:@"."];
  v8 = 0;
  if ([v6 count])
  {
    while (v8 < [v7 count])
    {
      v9 = [v6 objectAtIndex:v8];
      v10 = [v9 intValue];
      v11 = [v7 objectAtIndex:v8];
      v12 = [v11 intValue];

      if (v10 < v12)
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
    v16 = ![DMCVersioningUtilities _allZerosArray:v14 startingAtIndex:v8];
  }

LABEL_10:

  return v16;
}

@end