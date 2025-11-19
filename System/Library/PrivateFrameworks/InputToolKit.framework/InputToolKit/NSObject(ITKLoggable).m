@interface NSObject(ITKLoggable)
+ (id)ITK_loggingDescriptionFromLoggable:()ITKLoggable isPretty:;
- (id)ITK_loggingDescription;
- (id)ITK_prettyLoggingDescription;
@end

@implementation NSObject(ITKLoggable)

- (id)ITK_loggingDescription
{
  if ([a1 conformsToProtocol:&unk_2867157E0])
  {
    [objc_opt_class() ITK_loggingDescriptionFromLoggable:a1 isPretty:0];
  }

  else
  {
    [a1 description];
  }
  v2 = ;

  return v2;
}

- (id)ITK_prettyLoggingDescription
{
  if ([a1 conformsToProtocol:&unk_2867157E0])
  {
    [objc_opt_class() ITK_loggingDescriptionFromLoggable:a1 isPretty:1];
  }

  else
  {
    [a1 description];
  }
  v2 = ;

  return v2;
}

+ (id)ITK_loggingDescriptionFromLoggable:()ITKLoggable isPretty:
{
  v5 = a3;
  v6 = MEMORY[0x277CCAB68];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [v6 stringWithFormat:@"<%@ ", v8];

  v10 = [v5 ITK_loggingIdentifier];
  if (!v10)
  {
    [v9 appendFormat:@"%p", v5];
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = @" %@=%@";
    goto LABEL_6;
  }

  [v9 appendString:v10];
  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  [v9 appendString:@"\n"];
  v11 = @"\t%@ = %@\n";
LABEL_6:
  v12 = [v5 ITK_loggingValues];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __69__NSObject_ITKLoggable__ITK_loggingDescriptionFromLoggable_isPretty___block_invoke;
  v17[3] = &unk_2797AF288;
  v20 = a4;
  v13 = v9;
  v18 = v13;
  v19 = v11;
  [v12 enumerateKeysAndObjectsUsingBlock:v17];
  [v13 appendString:@">"];
  v14 = v19;
  v15 = v13;

  return v13;
}

@end