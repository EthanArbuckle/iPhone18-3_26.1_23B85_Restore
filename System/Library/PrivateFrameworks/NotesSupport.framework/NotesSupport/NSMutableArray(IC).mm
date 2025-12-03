@interface NSMutableArray(IC)
+ (id)ic_arrayFromNonNilObject:()IC;
- (void)ic_addNonNilObject:()IC;
- (void)ic_addObjectsFromNonNilArray:()IC;
- (void)ic_insertNonNilObject:()IC atIndex:;
@end

@implementation NSMutableArray(IC)

+ (id)ic_arrayFromNonNilObject:()IC
{
  v4.receiver = self;
  v4.super_class = &off_1F4FE3DF8;
  v1 = objc_msgSendSuper2(&v4, sel_ic_arrayFromNonNilObject_);
  v2 = [v1 mutableCopy];

  return v2;
}

- (void)ic_addNonNilObject:()IC
{
  if (a3)
  {
    return [self addObject:?];
  }

  return self;
}

- (void)ic_addObjectsFromNonNilArray:()IC
{
  if (a3)
  {
    return [self addObjectsFromArray:?];
  }

  return self;
}

- (void)ic_insertNonNilObject:()IC atIndex:
{
  v8 = a3;
  if ((a4 & 0x8000000000000000) != 0)
  {
    [ICAssert handleFailedAssertWithCondition:"__objc_no" functionName:"[NSMutableArray(IC) ic_insertNonNilObject:atIndex:]" simulateCrash:1 showAlert:0 format:@"Trying to insert object in mutableArray at negative index %ld", a4, v7];
  }

  else if ([self count] >= a4)
  {
    v6 = v8;
    if (!v8)
    {
      goto LABEL_9;
    }

    [self insertObject:v8 atIndex:a4];
  }

  else
  {
    +[ICAssert handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:](ICAssert, "handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:", "__objc_no", "-[NSMutableArray(IC) ic_insertNonNilObject:atIndex:]", 1, 0, @"Trying to insert object in mutableArray at index (%ld) greater than count (%ld)", a4, [self count]);
  }

  v6 = v8;
LABEL_9:
}

@end