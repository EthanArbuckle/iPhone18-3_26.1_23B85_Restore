@interface NSArray(CMSCoding)
- (id)cmsCoded;
@end

@implementation NSArray(CMSCoding)

- (id)cmsCoded
{
  v2 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(a1, "count")}];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __30__NSArray_CMSCoding__cmsCoded__block_invoke;
  v6[3] = &unk_278DDCBF0;
  v3 = v2;
  v7 = v3;
  [a1 enumerateObjectsUsingBlock:v6];
  if ([v3 count])
  {
    v4 = [v3 copy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end