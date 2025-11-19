@interface NSData
@end

@implementation NSData

id __54__NSData_ClipStrokeKeyframes__encodedSubpathKeyframes__block_invoke(void *a1, uint64_t a2, void *a3)
{
  v9 = 4;
  v6 = [*(*(a1[4] + 8) + 40) objectForKey:a2];
  if (v6)
  {
    v9 = [v6 unsignedIntValue];
  }

  v7 = [a3 length];
  [a3 replaceBytesInRange:a1[5] withBytes:{a1[6], &v9}];
  return [*(*(a1[4] + 8) + 40) setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKey:{"numberWithUnsignedInt:", v7), a2}];
}

@end