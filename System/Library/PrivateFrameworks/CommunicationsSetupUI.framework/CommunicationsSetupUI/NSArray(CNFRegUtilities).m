@interface NSArray(CNFRegUtilities)
- (id)CNFRegArrayPassingTest:()CNFRegUtilities;
- (id)CNFRegArrayPassingTests:()CNFRegUtilities;
@end

@implementation NSArray(CNFRegUtilities)

- (id)CNFRegArrayPassingTests:()CNFRegUtilities
{
  v4 = a3;
  v5 = [a1 count];
  if (v4 && (v6 = v5, [v4 count]) && v6)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v6];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __52__NSArray_CNFRegUtilities__CNFRegArrayPassingTests___block_invoke;
    v12[3] = &unk_278DE7F30;
    v13 = v4;
    v8 = v7;
    v14 = v8;
    [a1 enumerateObjectsUsingBlock:v12];
    v9 = v14;
    v10 = v8;
  }

  else
  {
    v10 = a1;
  }

  return v10;
}

- (id)CNFRegArrayPassingTest:()CNFRegUtilities
{
  if (a3)
  {
    v4 = MEMORY[0x277CBEA60];
    v5 = a3;
    v6 = [v4 alloc];
    v7 = MEMORY[0x245D4D850](v5);

    v8 = [v6 initWithObjects:{v7, 0}];
    v9 = [a1 CNFRegArrayPassingTests:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end