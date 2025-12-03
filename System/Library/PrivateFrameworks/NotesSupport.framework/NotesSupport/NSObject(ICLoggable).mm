@interface NSObject(ICLoggable)
+ (id)ic_loggingDescriptionFromLoggable:()ICLoggable isPretty:;
- (id)ic_loggingDescription;
- (id)ic_prettyLoggingDescription;
@end

@implementation NSObject(ICLoggable)

- (id)ic_loggingDescription
{
  if ([self conformsToProtocol:&unk_1F4FDC980])
  {
    [objc_opt_class() ic_loggingDescriptionFromLoggable:self isPretty:0];
  }

  else
  {
    [self description];
  }
  v2 = ;

  return v2;
}

- (id)ic_prettyLoggingDescription
{
  if ([self conformsToProtocol:&unk_1F4FDC980])
  {
    [objc_opt_class() ic_loggingDescriptionFromLoggable:self isPretty:1];
  }

  else
  {
    [self description];
  }
  v2 = ;

  return v2;
}

+ (id)ic_loggingDescriptionFromLoggable:()ICLoggable isPretty:
{
  v5 = a3;
  v6 = MEMORY[0x1E696AD60];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [v6 stringWithFormat:@"<%@ ", v8];

  ic_loggingIdentifier = [v5 ic_loggingIdentifier];
  if (!ic_loggingIdentifier)
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

  [v9 appendString:ic_loggingIdentifier];
  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  [v9 appendString:@"\n"];
  v11 = @"\t%@ = %@\n";
LABEL_6:
  ic_loggingValues = [v5 ic_loggingValues];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __67__NSObject_ICLoggable__ic_loggingDescriptionFromLoggable_isPretty___block_invoke;
  v17[3] = &unk_1E8484E48;
  v20 = a4;
  v13 = v9;
  v18 = v13;
  v19 = v11;
  [ic_loggingValues enumerateKeysAndObjectsUsingBlock:v17];
  [v13 appendString:@">"];
  v14 = v19;
  v15 = v13;

  return v13;
}

@end