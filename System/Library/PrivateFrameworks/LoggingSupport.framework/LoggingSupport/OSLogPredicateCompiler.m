@interface OSLogPredicateCompiler
@end

@implementation OSLogPredicateCompiler

uint64_t __52___OSLogPredicateCompiler_compileKeyPathExpression___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 processIdentifier];

  return [v2 numberWithInt:v3];
}

uint64_t __52___OSLogPredicateCompiler_compileKeyPathExpression___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 logType];

  return [v2 numberWithUnsignedInteger:v3];
}

uint64_t __52___OSLogPredicateCompiler_compileKeyPathExpression___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 type];

  return [v2 numberWithUnsignedInteger:v3];
}

id __61___OSLogPredicateCompiler_expressionForOSLogEventProxyBlock___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (([v3 conformsToProtocol:&unk_2841BABC0] & 1) == 0)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    v7 = a1[5];
    v8 = a1[6];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [v6 handleFailureInMethod:v7 object:v8 file:@"PredicateMapper.m" lineNumber:404 description:{@"%@ passed into log predicate is not an OSLogEventProvider, but %@", v3, v10}];
  }

  v4 = (*(a1[4] + 16))();

  return v4;
}

@end