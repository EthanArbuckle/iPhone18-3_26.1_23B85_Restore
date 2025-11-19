@interface NSNumber
- (id)dbgStringForType:(id)a3 error:(id *)a4;
@end

@implementation NSNumber

- (id)dbgStringForType:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([v6 isEqualToString:@"b"])
  {
    v7 = [(NSNumber *)self BOOLValue];
LABEL_3:
    [NSString stringWithFormat:@"%d", v7];
    a4 = LABEL_9:;
    goto LABEL_10;
  }

  if ([v6 isEqualToString:@"CGf"])
  {
    goto LABEL_5;
  }

  if ([v6 isEqualToString:@"f"])
  {
    [(NSNumber *)self floatValue];
    [NSString stringWithFormat:@"%a", v9];
    goto LABEL_9;
  }

  if ([v6 isEqualToString:@"d"])
  {
LABEL_5:
    [(NSNumber *)self doubleValue];
    [NSString stringWithFormat:@"%la", v8];
    goto LABEL_9;
  }

  if ([v6 isEqualToString:@"integer"])
  {
    v11 = [(NSNumber *)self integerValue];
LABEL_16:
    [NSString stringWithFormat:@"%ld", v11];
    goto LABEL_9;
  }

  if ([v6 isEqualToString:@"uinteger"])
  {
    v12 = [(NSNumber *)self unsignedIntegerValue];
LABEL_19:
    [NSString stringWithFormat:@"%lx", v12];
    goto LABEL_9;
  }

  if ([v6 isEqualToString:@"i"])
  {
    v7 = [(NSNumber *)self intValue];
    goto LABEL_3;
  }

  if ([v6 isEqualToString:@"ui"])
  {
    [NSString stringWithFormat:@"%u", [(NSNumber *)self unsignedIntValue]];
    goto LABEL_9;
  }

  if ([v6 isEqualToString:@"l"])
  {
    v11 = [(NSNumber *)self longValue];
    goto LABEL_16;
  }

  if ([v6 isEqualToString:@"ul"])
  {
    v12 = [(NSNumber *)self unsignedLongValue];
    goto LABEL_19;
  }

  if ([v6 isEqualToString:@"ll"])
  {
    v13 = [(NSNumber *)self longLongValue];
LABEL_32:
    [NSString stringWithFormat:@"%llx", v13];
    goto LABEL_9;
  }

  if ([v6 isEqualToString:@"ull"])
  {
    v13 = [(NSNumber *)self unsignedLongLongValue];
    goto LABEL_32;
  }

  if (a4)
  {
    v14 = [NSString stringWithFormat:@"Unknown type specifier: %@", v6];
    v18 = NSLocalizedDescriptionKey;
    v19 = v14;
    v15 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v16 = [NSError errorWithDomain:@"DebugHierarchyNumberStringEncodingErrorDomain" code:1 userInfo:v15];

    v17 = v16;
    *a4 = v16;

    a4 = 0;
  }

LABEL_10:

  return a4;
}

@end