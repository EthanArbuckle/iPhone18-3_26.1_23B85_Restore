@interface _CDMDSearchQueryDelegate
- (_CDMDSearchQueryDelegate)init;
- (void)searchQuery:(id)a3 didFailWithError:(id)a4;
- (void)searchQuery:(id)a3 didReturnItems:(id)a4;
- (void)searchQuery:(id)a3 statusChanged:(unint64_t)a4;
@end

@implementation _CDMDSearchQueryDelegate

- (_CDMDSearchQueryDelegate)init
{
  v6.receiver = self;
  v6.super_class = _CDMDSearchQueryDelegate;
  v2 = [(_CDMDSearchQueryDelegate *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    recentMDSearchQueryResults = v2->_recentMDSearchQueryResults;
    v2->_recentMDSearchQueryResults = v3;
  }

  return v2;
}

- (void)searchQuery:(id)a3 didReturnItems:(id)a4
{
  if (a4)
  {
    [_CDMDSearchQueryDelegate searchQuery:a4 didReturnItems:?];
  }
}

- (void)searchQuery:(id)a3 didFailWithError:(id)a4
{
  v5 = a4;
  v6 = +[_CDLogging interactionChannel];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [_CDMDSearchQueryDelegate searchQuery:v5 didFailWithError:v6];
  }

  if (v5)
  {
    [_CDMDSearchQueryDelegate searchQuery:? didFailWithError:?];
  }
}

- (void)searchQuery:(id)a3 statusChanged:(unint64_t)a4
{
  if (a4 == 3)
  {
    [_CDMDSearchQueryDelegate searchQuery:? statusChanged:?];
  }
}

- (uint64_t)searchQuery:(void *)a1 didReturnItems:(uint64_t)a2 .cold.1(void *a1, uint64_t a2)
{
  if (a1)
  {
    a1 = a1[2];
  }

  return [a1 addObjectsFromArray:a2];
}

- (void)searchQuery:(uint64_t)a1 didFailWithError:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_191750000, a2, OS_LOG_TYPE_ERROR, "Search query failed: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (intptr_t)searchQuery:(NSObject *)isa didFailWithError:.cold.2(NSObject *isa)
{
  if (isa)
  {
    isa = isa[1].isa;
  }

  return dispatch_semaphore_signal(isa);
}

- (intptr_t)searchQuery:(NSObject *)isa statusChanged:.cold.1(NSObject *isa)
{
  if (isa)
  {
    isa = isa[1].isa;
  }

  return dispatch_semaphore_signal(isa);
}

@end