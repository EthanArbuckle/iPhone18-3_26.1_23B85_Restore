@interface CNAutocompleteContactsSearchTaskContext
+ (id)contextWithConsumer:(id)a3 text:(id)a4 operations:(id)a5 searchQueries:(id)a6;
- (BOOL)consumerRespondsToCallbacks;
@end

@implementation CNAutocompleteContactsSearchTaskContext

+ (id)contextWithConsumer:(id)a3 text:(id)a4 operations:(id)a5 searchQueries:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = objc_alloc_init(a1);
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(v15 + 1, a3);
    v17 = [v12 copy];
    v18 = v16[2];
    v16[2] = v17;

    if (v13)
    {
      v19 = v13;
    }

    else
    {
      v19 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    }

    v20 = v16[3];
    v16[3] = v19;

    if (v14)
    {
      v21 = v14;
    }

    else
    {
      v21 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    }

    v22 = v16[4];
    v16[4] = v21;
  }

  return v16;
}

- (BOOL)consumerRespondsToCallbacks
{
  if (objc_opt_respondsToSelector())
  {
    v2 = objc_opt_respondsToSelector();
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

@end