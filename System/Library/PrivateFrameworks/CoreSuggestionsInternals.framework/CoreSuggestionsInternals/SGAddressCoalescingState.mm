@interface SGAddressCoalescingState
- (SGAddressCoalescingState)init;
- (void)coalesceAddress:(__DDResult *)address orAppendMatch:(id)match;
- (void)dealloc;
@end

@implementation SGAddressCoalescingState

- (SGAddressCoalescingState)init
{
  v6.receiver = self;
  v6.super_class = SGAddressCoalescingState;
  v2 = [(SGAddressCoalescingState *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    matches = v2->_matches;
    v2->_matches = v3;

    v2->_lastAddressIndex = -1;
    v2->_lastAddressEndPos = -1;
  }

  return v2;
}

- (void)dealloc
{
  lastResult = self->_lastResult;
  if (lastResult)
  {
    CFRelease(lastResult);
  }

  v4.receiver = self;
  v4.super_class = SGAddressCoalescingState;
  [(SGAddressCoalescingState *)&v4 dealloc];
}

- (void)coalesceAddress:(__DDResult *)address orAppendMatch:(id)match
{
  matchCopy = match;
  v6 = *MEMORY[0x277D040E0];
  if (DDResultHasType())
  {
    Range = DDResultGetRange();
    v9 = Range + v8;
    v10 = [(NSMutableArray *)self->_matches count];
    v11 = v10;
    lastAddressIndex = self->_lastAddressIndex;
    v13 = lastAddressIndex != -1 && v10 == lastAddressIndex + 1;
    if (v13 && Range - self->_lastAddressEndPos <= 19 && (lastResult = self->_lastResult, DDAddressResultCanBeMergedWith()))
    {
      v15 = [(NSMutableArray *)self->_matches objectAtIndexedSubscript:self->_lastAddressIndex];
      range = [v15 range];
      v17 = v9 - [v15 range];
      v18 = [SGDataDetectorMatch alloc];
      matchType = [v15 matchType];
      labelRange = [v15 labelRange];
      v22 = [(SGDataDetectorMatch *)v18 initWithMatchType:matchType range:range labelRange:v17 labelString:labelRange valueRange:v21 valueString:0, range, v17, 0];
      [(NSMutableArray *)self->_matches setObject:v22 atIndexedSubscript:self->_lastAddressIndex];
    }

    else
    {
      [(NSMutableArray *)self->_matches addObject:matchCopy];
    }

    self->_lastAddressIndex = v11;
    self->_lastAddressEndPos = v9;
    v23 = self->_lastResult;
    if (v23)
    {
      CFRelease(v23);
    }

    self->_lastResult = CFRetain(address);
  }

  else
  {
    [(NSMutableArray *)self->_matches addObject:matchCopy];
  }
}

@end