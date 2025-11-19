@interface DDTextKitOperation
- (BOOL)_rangeValidForContainer;
- (BOOL)doURLificationOnDocument;
- (DDTextKitOperation)initWithContainer:(id)a3;
- (_NSRange)_addResultToAttributes:(id)a3 inStorage:(id)a4 editing:(BOOL)a5;
- (_NSRange)_addResultsToAttributesInStorage:(id)a3;
- (_NSRange)range;
- (__DDScanQuery)_createScanQueryForBackend;
- (id)newOperationForContinuation;
- (id)newOperationForStartingOver;
- (void)_createScanQueryForBackend;
- (void)cleanup;
- (void)dispatchContainerModificationBlock:(id)a3;
- (void)newOperationForContinuation;
@end

@implementation DDTextKitOperation

- (BOOL)_rangeValidForContainer
{
  location = self->_range.location;
  if (location == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 1;
  }

  v4 = self->_range.length + location;
  v5 = [(DDOperation *)self container];
  v6 = [v5 textStorage];
  LOBYTE(v4) = v4 <= [v6 length];

  return v4;
}

- (__DDScanQuery)_createScanQueryForBackend
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [(DDTextKitOperation *)self _createScanQueryForBackend];
  }

  v3 = [(DDOperation *)self container];
  v4 = [v3 textStorage];
  v5 = [v4 string];
  v6 = [v5 copy];

  if (v6)
  {
    p_range = &self->_range;
    location = self->_range.location;
    if (location == 0x7FFFFFFFFFFFFFFFLL)
    {
      length = [v6 length];
      p_range->location = 0;
      self->_range.length = length;
    }

    else
    {
      length = self->_range.length;
      if (location)
      {
        v11 = 100000;
        if (length <= 0x186A0)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }
    }

    v11 = 20000;
    if (length <= 0x4E20)
    {
LABEL_12:
      v10 = DDScanQueryCreateFromString();
      goto LABEL_13;
    }

LABEL_11:
    self->_range.length = v11;
    p_range->location = [v6 lineRangeForRange:?];
    self->_range.length = v12;
    [(DDOperation *)self setNeedContinuation:1];
    v13 = p_range->location;
    v14 = self->_range.length;
    goto LABEL_12;
  }

  v10 = 0;
LABEL_13:

  return v10;
}

- (void)cleanup
{
  [(DDOperation *)self setResults:0];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = DDTextKitOperation;
  [(DDOperation *)&v4 cleanup];
}

- (DDTextKitOperation)initWithContainer:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = DDTextKitOperation;
  v5 = [(DDOperation *)&v11 initWithContainer:v4];
  v6 = v5;
  if (v5)
  {
    v5->_range = xmmword_21ABCD900;
    v5->_editCount = 1;
    if (v4)
    {
      v7 = [MEMORY[0x277CCAB98] defaultCenter];
      v8 = *MEMORY[0x277D741D8];
      v9 = [v4 textStorage];
      [v7 addObserver:v6 selector:sel_textDidChange_ name:v8 object:v9];
    }
  }

  return v6;
}

- (_NSRange)_addResultToAttributes:(id)a3 inStorage:(id)a4 editing:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  [v7 coreResult];
  RangeForURLification = DDResultGetRangeForURLification();
  v11 = v10;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v12 = *MEMORY[0x277D740E8];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __63__DDTextKitOperation__addResultToAttributes_inStorage_editing___block_invoke;
  v15[3] = &unk_2782916D8;
  v15[4] = &v16;
  [v8 enumerateAttribute:v12 inRange:RangeForURLification options:v10 usingBlock:{0, v15}];
  if (v17[3])
  {
    v11 = 0;
    RangeForURLification = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (!a5)
    {
      [v8 beginEditing];
    }

    [v8 addAttribute:*MEMORY[0x277D041D8] value:v7 range:{RangeForURLification, v11}];
  }

  _Block_object_dispose(&v16, 8);

  v13 = RangeForURLification;
  v14 = v11;
  result.length = v14;
  result.location = v13;
  return result;
}

uint64_t __63__DDTextKitOperation__addResultToAttributes_inStorage_editing___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (a2)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    *a5 = 1;
  }

  return result;
}

- (_NSRange)_addResultsToAttributesInStorage:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(DDOperation *)self scannerResults];

  if (!v5)
  {
    v6 = [(DDOperation *)self results];
    if ([v6 count])
    {
      goto LABEL_3;
    }

LABEL_18:
    v22 = 0;
    location = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_21;
  }

  v6 = [(DDOperation *)self scannerResults];
  if (![v6 count])
  {
    goto LABEL_18;
  }

LABEL_3:
  v7 = [DDOperation shouldUrlifyBlockForTypes:[(DDOperation *)self detectionTypes]];
  v8 = [MEMORY[0x277CBEBB0] defaultTimeZone];
  v9 = [(DDOperation *)self context];
  v10 = [v9 objectForKey:@"ReferenceDate"];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v6;
  v11 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v11)
  {
    v12 = v11;
    v35 = self;
    v13 = *v38;
    if (v5)
    {
      range1 = 0;
      location = 0x7FFFFFFFFFFFFFFFLL;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v38 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v37 + 1) + 8 * i);
          v18 = [v17 coreResult];
          if (v17)
          {
            if ((v7)[2](v7, v18, v10, v8))
            {
              v19 = [(DDTextKitOperation *)v35 _addResultToAttributes:v17 inStorage:v4 editing:location != 0x7FFFFFFFFFFFFFFFLL];
              if (v19 != 0x7FFFFFFFFFFFFFFFLL)
              {
                v21.location = v19;
                v21.length = v20;
                if (location == 0x7FFFFFFFFFFFFFFFLL)
                {
                  range1 = v20;
                  location = v19;
                }

                else
                {
                  v43.location = location;
                  v43.length = range1;
                  v16 = NSUnionRange(v43, v21);
                  location = v16.location;
                  range1 = v16.length;
                }
              }
            }
          }
        }

        v12 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v12);
    }

    else
    {
      v33 = v4;
      range1 = 0;
      location = 0x7FFFFFFFFFFFFFFFLL;
      do
      {
        for (j = 0; j != v12; ++j)
        {
          if (*v38 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v28 = *(*(&v37 + 1) + 8 * j);
          v29 = [MEMORY[0x277D04218] resultFromCoreResult:v28];
          if (v29)
          {
            if ((v7)[2](v7, v28, v10, v8))
            {
              v30 = [(DDTextKitOperation *)v35 _addResultToAttributes:v29 inStorage:v33 editing:location != 0x7FFFFFFFFFFFFFFFLL];
              if (v30 != 0x7FFFFFFFFFFFFFFFLL)
              {
                v32.location = v30;
                v32.length = v31;
                if (location == 0x7FFFFFFFFFFFFFFFLL)
                {
                  range1 = v31;
                  location = v30;
                }

                else
                {
                  v44.location = location;
                  v44.length = range1;
                  v27 = NSUnionRange(v44, v32);
                  location = v27.location;
                  range1 = v27.length;
                }
              }
            }
          }
        }

        v12 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
        v4 = v33;
      }

      while (v12);
    }
  }

  else
  {
    range1 = 0;
    location = 0x7FFFFFFFFFFFFFFFLL;
  }

  v22 = range1;
LABEL_21:

  v23 = *MEMORY[0x277D85DE8];
  v24 = location;
  v25 = v22;
  result.length = v25;
  result.location = v24;
  return result;
}

- (void)dispatchContainerModificationBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__DDTextKitOperation_dispatchContainerModificationBlock___block_invoke;
  v6[3] = &unk_2782910B0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __57__DDTextKitOperation_dispatchContainerModificationBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) container];
  v3 = [v2 textStorage];

  if (v3)
  {
    v4 = [v2 textStorage];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __57__DDTextKitOperation_dispatchContainerModificationBlock___block_invoke_2;
    v5[3] = &unk_2782918F8;
    v6 = *(a1 + 40);
    [v4 coordinateAccess:v5];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (BOOL)doURLificationOnDocument
{
  v3 = [(DDOperation *)self container];
  v4 = [v3 textStorage];
  if (v4 && (v5 = [(DDTextKitOperation *)self _addResultsToAttributesInStorage:v4], v5 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v8 = v5;
    v9 = v6;
    v10 = [(DDOperation *)self detectionTypes];
    v11 = [(DDOperation *)self context];
    [v4 dd_makeLinksForResultsInAttributesOfType:v10 context:v11 range:{v8, v9}];

    [v4 endEditing];
    v12 = [v3 _containerView];
    [v12 setNeedsDisplay];

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)newOperationForStartingOver
{
  v7.receiver = self;
  v7.super_class = DDTextKitOperation;
  v3 = [(DDOperation *)&v7 newOperationForStartingOver];
  v4 = [(DDOperation *)self container];
  v5 = [v4 textStorage];
  [v3 setRange:{0, objc_msgSend(v5, "length")}];

  return v3;
}

- (id)newOperationForContinuation
{
  v13.receiver = self;
  v13.super_class = DDTextKitOperation;
  v3 = [(DDOperation *)&v13 newOperationForContinuation];
  v4 = [(DDTextKitOperation *)self range];
  v6 = v5;
  v7 = [(DDOperation *)self container];
  v8 = [v7 textStorage];
  v9 = [v8 length];
  v10 = [(DDTextKitOperation *)self range];
  [v3 setRange:{v4 + v6, v9 - (v11 + v10)}];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [(DDTextKitOperation *)v3 newOperationForContinuation];
  }

  return v3;
}

- (_NSRange)range
{
  objc_copyStruct(v4, &self->_range, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.length = v3;
  result.location = v2;
  return result;
}

- (void)_createScanQueryForBackend
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&dword_21AB70000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "operation %p", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)newOperationForContinuation
{
  v8 = *MEMORY[0x277D85DE8];
  v9.location = [a1 range];
  v2 = NSStringFromRange(v9);
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = v2;
  _os_log_debug_impl(&dword_21AB70000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Creating continuation %@. The new range is %@", &v4, 0x16u);

  v3 = *MEMORY[0x277D85DE8];
}

@end