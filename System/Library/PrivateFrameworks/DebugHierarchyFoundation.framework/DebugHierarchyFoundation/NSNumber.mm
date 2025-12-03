@interface NSNumber
- (id)dbgStringForType:(id)type error:(id *)error;
@end

@implementation NSNumber

- (id)dbgStringForType:(id)type error:(id *)error
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"b"])
  {
    bOOLValue = [(NSNumber *)self BOOLValue];
LABEL_3:
    [NSString stringWithFormat:@"%d", bOOLValue];
    error = LABEL_9:;
    goto LABEL_10;
  }

  if ([typeCopy isEqualToString:@"CGf"])
  {
    goto LABEL_5;
  }

  if ([typeCopy isEqualToString:@"f"])
  {
    [(NSNumber *)self floatValue];
    [NSString stringWithFormat:@"%a", v9];
    goto LABEL_9;
  }

  if ([typeCopy isEqualToString:@"d"])
  {
LABEL_5:
    [(NSNumber *)self doubleValue];
    [NSString stringWithFormat:@"%la", v8];
    goto LABEL_9;
  }

  if ([typeCopy isEqualToString:@"integer"])
  {
    integerValue = [(NSNumber *)self integerValue];
LABEL_16:
    [NSString stringWithFormat:@"%ld", integerValue];
    goto LABEL_9;
  }

  if ([typeCopy isEqualToString:@"uinteger"])
  {
    unsignedIntegerValue = [(NSNumber *)self unsignedIntegerValue];
LABEL_19:
    [NSString stringWithFormat:@"%lx", unsignedIntegerValue];
    goto LABEL_9;
  }

  if ([typeCopy isEqualToString:@"i"])
  {
    bOOLValue = [(NSNumber *)self intValue];
    goto LABEL_3;
  }

  if ([typeCopy isEqualToString:@"ui"])
  {
    [NSString stringWithFormat:@"%u", [(NSNumber *)self unsignedIntValue]];
    goto LABEL_9;
  }

  if ([typeCopy isEqualToString:@"l"])
  {
    integerValue = [(NSNumber *)self longValue];
    goto LABEL_16;
  }

  if ([typeCopy isEqualToString:@"ul"])
  {
    unsignedIntegerValue = [(NSNumber *)self unsignedLongValue];
    goto LABEL_19;
  }

  if ([typeCopy isEqualToString:@"ll"])
  {
    longLongValue = [(NSNumber *)self longLongValue];
LABEL_32:
    [NSString stringWithFormat:@"%llx", longLongValue];
    goto LABEL_9;
  }

  if ([typeCopy isEqualToString:@"ull"])
  {
    longLongValue = [(NSNumber *)self unsignedLongLongValue];
    goto LABEL_32;
  }

  if (error)
  {
    typeCopy = [NSString stringWithFormat:@"Unknown type specifier: %@", typeCopy];
    v18 = NSLocalizedDescriptionKey;
    v19 = typeCopy;
    v15 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v16 = [NSError errorWithDomain:@"DebugHierarchyNumberStringEncodingErrorDomain" code:1 userInfo:v15];

    v17 = v16;
    *error = v16;

    error = 0;
  }

LABEL_10:

  return error;
}

@end