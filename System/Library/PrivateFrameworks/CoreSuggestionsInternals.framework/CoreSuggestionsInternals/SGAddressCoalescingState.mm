@interface SGAddressCoalescingState
- (SGAddressCoalescingState)init;
- (void)coalesceAddress:(__DDResult *)a3 orAppendMatch:(id)a4;
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

- (void)coalesceAddress:(__DDResult *)a3 orAppendMatch:(id)a4
{
  v24 = a4;
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
      v16 = [v15 range];
      v17 = v9 - [v15 range];
      v18 = [SGDataDetectorMatch alloc];
      v19 = [v15 matchType];
      v20 = [v15 labelRange];
      v22 = [(SGDataDetectorMatch *)v18 initWithMatchType:v19 range:v16 labelRange:v17 labelString:v20 valueRange:v21 valueString:0, v16, v17, 0];
      [(NSMutableArray *)self->_matches setObject:v22 atIndexedSubscript:self->_lastAddressIndex];
    }

    else
    {
      [(NSMutableArray *)self->_matches addObject:v24];
    }

    self->_lastAddressIndex = v11;
    self->_lastAddressEndPos = v9;
    v23 = self->_lastResult;
    if (v23)
    {
      CFRelease(v23);
    }

    self->_lastResult = CFRetain(a3);
  }

  else
  {
    [(NSMutableArray *)self->_matches addObject:v24];
  }
}

@end