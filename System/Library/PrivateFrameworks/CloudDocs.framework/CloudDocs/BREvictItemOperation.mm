@interface BREvictItemOperation
- (BREvictItemOperation)initWithURL:(id)a3;
- (id)description;
- (void)finishWithResult:(id)a3 error:(id)a4;
- (void)main;
@end

@implementation BREvictItemOperation

- (BREvictItemOperation)initWithURL:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BREvictItemOperation;
  v6 = [(BROperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_url, a3);
  }

  return v7;
}

- (id)description
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = v2;
  v7.super_class = BREvictItemOperation;
  v4 = [(BROperation *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ url=%@", v4, v2->_url];

  objc_sync_exit(v2);

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
  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v6 = self->_url;
  v10 = 0;
  [v5 evictUbiquitousItemAtURL:v6 error:&v10];
  v7 = v10;

  [(BROperation *)self completedWithResult:0 error:v7];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)finishWithResult:(id)a3 error:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
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

  v10 = [(BREvictItemOperation *)self evictionCompletionBlock];
  v11 = v10;
  if (v10)
  {
    (*(v10 + 16))(v10, v7);
    [(BREvictItemOperation *)self setEvictionCompletionBlock:0];
  }

  v14.receiver = self;
  v14.super_class = BREvictItemOperation;
  [(BROperation *)&v14 finishWithResult:v6 error:v7];
  __brc_leave_section(&section);

  v12 = *MEMORY[0x1E69E9840];
}

@end