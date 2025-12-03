@interface BREvictItemOperation
- (BREvictItemOperation)initWithURL:(id)l;
- (id)description;
- (void)finishWithResult:(id)result error:(id)error;
- (void)main;
@end

@implementation BREvictItemOperation

- (BREvictItemOperation)initWithURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = BREvictItemOperation;
  v6 = [(BROperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_url, l);
  }

  return v7;
}

- (id)description
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = selfCopy;
  v7.super_class = BREvictItemOperation;
  v4 = [(BROperation *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ url=%@", v4, selfCopy->_url];

  objc_sync_exit(selfCopy);

  return v5;
}

- (void)main
{
  v19 = *MEMORY[0x1E69E9840];
  v11 = 0uLL;
  v12 = 0;
  __brc_create_section(0, "[BREvictItemOperation main]", 33, 0, &v11);
  v3 = brc_bread_crumbs("[BREvictItemOperation main]", 33);
  v4 = brc_default_log(1, 0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    url = self->_url;
    *buf = 134218498;
    v14 = v11;
    v15 = 2112;
    v16 = url;
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1AE2A9000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┣%llx evicting item at: %@%@", buf, 0x20u);
  }

  *&self->_section.sectionID = v11;
  *&self->_section.line = v12;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v6 = self->_url;
  v10 = 0;
  [defaultManager evictUbiquitousItemAtURL:v6 error:&v10];
  v7 = v10;

  [(BROperation *)self completedWithResult:0 error:v7];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)finishWithResult:(id)result error:(id)error
{
  v22 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  errorCopy = error;
  section = self->_section;
  v8 = brc_bread_crumbs("[BREvictItemOperation finishWithResult:error:]", 42);
  v9 = brc_default_log(1, 0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    url = self->_url;
    *buf = 134218498;
    sectionID = section.sectionID;
    v18 = 2112;
    v19 = url;
    v20 = 2112;
    v21 = v8;
    _os_log_debug_impl(&dword_1AE2A9000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx eviction for %@ finished%@", buf, 0x20u);
  }

  evictionCompletionBlock = [(BREvictItemOperation *)self evictionCompletionBlock];
  v11 = evictionCompletionBlock;
  if (evictionCompletionBlock)
  {
    (*(evictionCompletionBlock + 16))(evictionCompletionBlock, errorCopy);
    [(BREvictItemOperation *)self setEvictionCompletionBlock:0];
  }

  v14.receiver = self;
  v14.super_class = BREvictItemOperation;
  [(BROperation *)&v14 finishWithResult:resultCopy error:errorCopy];
  __brc_leave_section(&section);

  v12 = *MEMORY[0x1E69E9840];
}

@end