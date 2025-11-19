@interface GTIntKeyedDictionary
@end

@implementation GTIntKeyedDictionary

id __40__GTIntKeyedDictionary_encodeWithCoder___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%llu", a2];

  return [v4 encodeObject:a3 forKey:v5];
}

id __38__GTIntKeyedDictionary_initWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 longLongValue];
  v4 = [*(a1 + 32) decodeObjectOfClass:objc_opt_class() forKey:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%llu", v3)}];
  if (!v4)
  {
    __assert_rtn("[GTIntKeyedDictionary initWithCoder:]_block_invoke", ", 0, "obj"");
  }

  v5 = *(a1 + 40);

  return [v5 setObject:v4 forIntKey:v3];
}

@end