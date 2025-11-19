@interface BRShareCopyiWorkShareURLOperation
- (BRShareCopyiWorkShareURLOperation)initWithShare:(id)a3;
- (void)finishWithResult:(id)a3 error:(id)a4;
- (void)main;
@end

@implementation BRShareCopyiWorkShareURLOperation

- (BRShareCopyiWorkShareURLOperation)initWithShare:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v11.receiver = self;
    v11.super_class = BRShareCopyiWorkShareURLOperation;
    v5 = [(BROperation *)&v11 init];
    v6 = v5;
    if (v5)
    {
      [(BRShareCopyiWorkShareURLOperation *)v5 setShare:v4];
    }

    self = v6;
    v7 = self;
  }

  else
  {
    v8 = brc_bread_crumbs("[BRShareCopyiWorkShareURLOperation initWithShare:]", 813);
    v9 = brc_default_log(0, 0);
    if (os_log_type_enabled(v9, 0x90u))
    {
      [BRShareCopyiWorkShareURLOperation initWithShare:];
    }

    v7 = 0;
  }

  return v7;
}

- (void)main
{
  v3 = [(BROperation *)self remoteObject];
  v4 = [(CKShare *)self->_share copy];
  br_setShareAssociatedURL(v4, 0);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__BRShareCopyiWorkShareURLOperation_main__block_invoke;
  v5[3] = &unk_1E7A14C08;
  v5[4] = self;
  [v3 startOperation:self toCopyShareURLForShare:v4 reply:v5];
}

- (void)finishWithResult:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BRShareCopyiWorkShareURLOperation *)self shareCopyURLCompletionBlock];
  v9 = v8;
  if (v8)
  {
    (*(v8 + 16))(v8, v6, v7);
    [(BRShareCopyiWorkShareURLOperation *)self setShareCopyURLCompletionBlock:0];
  }

  v10.receiver = self;
  v10.super_class = BRShareCopyiWorkShareURLOperation;
  [(BROperation *)&v10 finishWithResult:v6 error:v7];
}

- (void)initWithShare:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7_0(&dword_1AE2A9000, v0, v1, "[ERROR] require a CKShare to craft share URL%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end