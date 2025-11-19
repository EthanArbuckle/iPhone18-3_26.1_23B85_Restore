@interface FSMessageSTDIODelegate
+ (id)delegateWithCompletionHandler:(id)a3;
- (void)completed:(id)a3 replyHandler:(id)a4;
- (void)logMessage:(id)a3;
- (void)prompt:(id)a3 replyHandler:(id)a4;
- (void)promptTrueFalse:(id)a3 replyHandler:(id)a4;
@end

@implementation FSMessageSTDIODelegate

+ (id)delegateWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  if (v5)
  {
    v6 = _Block_copy(v4);
    v7 = v5[1];
    v5[1] = v6;
  }

  return v5;
}

- (void)completed:(id)a3 replyHandler:(id)a4
{
  v7 = a4;
  delegate = self->_delegate;
  if (delegate)
  {
    delegate[2](delegate, a3);
  }

  (*(v7 + 2))(v7, 0, 0);
}

- (void)logMessage:(id)a3
{
  v3 = [a3 UTF8String];

  puts(v3);
}

- (void)prompt:(id)a3 replyHandler:(id)a4
{
  v14 = a3;
  v5 = a4;
  v6 = malloc_type_malloc(0x400uLL, 0x83ED5871uLL);
  if (!v6)
  {
    v10 = __error();
    v11 = fs_errorForPOSIXError(*v10);
    v5[2](v5, 0, v11);
LABEL_5:

    goto LABEL_8;
  }

  v7 = v6;
  fprintf(*MEMORY[0x277D85DF8], "%s\n", [v14 UTF8String]);
  v8 = MEMORY[0x277D85E00];
  if (fgets(v7, 1024, *MEMORY[0x277D85E00]))
  {
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:v7];
    free(v7);
    (v5)[2](v5, v9, 0);

    goto LABEL_8;
  }

  v12 = *__error();
  free(v7);
  v13 = feof(*v8);
  clearerr(*v8);
  if (!v13)
  {
    v11 = fs_errorForPOSIXError(v12);
    v5[2](v5, 0, v11);
    goto LABEL_5;
  }

  (v5)[2](v5, &stru_285DEFA28, 0);
LABEL_8:
}

- (void)promptTrueFalse:(id)a3 replyHandler:(id)a4
{
  v19 = a3;
  v5 = a4;
  v6 = malloc_type_malloc(0x400uLL, 0xB049E91BuLL);
  if (!v6)
  {
    v16 = __error();
    v17 = fs_errorForPOSIXError(*v16);
    v5[2](v5, 0, v17);
LABEL_14:

    goto LABEL_15;
  }

  v7 = v6;
  v8 = MEMORY[0x277D85DF8];
  fprintf(*MEMORY[0x277D85DF8], "%s\nY/N\n", [v19 UTF8String]);
  v9 = MEMORY[0x277D85E00];
  v10 = fgets(v7, 1024, *MEMORY[0x277D85E00]);
  if (!v10)
  {
LABEL_9:
    v13 = *__error();
    free(v7);
    v14 = feof(*v9);
    clearerr(*v9);
    if (v14)
    {
      v15 = 96;
    }

    else
    {
      v15 = v13;
    }

    v17 = fs_errorForPOSIXError(v15);
    v5[2](v5, 0, v17);
    goto LABEL_14;
  }

  while (1)
  {
    v11 = *v10;
    if ((v11 - 78) <= 0x2B && ((1 << (v11 - 78)) & 0x80100000801) != 0)
    {
      break;
    }

    fwrite("Y/N\n", 4uLL, 1uLL, *v8);
    v10 = fgets(v7, 1024, *v9);
    if (!v10)
    {
      goto LABEL_9;
    }
  }

  v18 = (v11 & 0xFFFFFFDF) == 89;
  free(v7);
  v5[2](v5, v18, 0);
LABEL_15:
}

@end