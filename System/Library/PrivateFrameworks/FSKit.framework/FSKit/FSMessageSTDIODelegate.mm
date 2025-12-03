@interface FSMessageSTDIODelegate
+ (id)delegateWithCompletionHandler:(id)handler;
- (void)completed:(id)completed replyHandler:(id)handler;
- (void)logMessage:(id)message;
- (void)prompt:(id)prompt replyHandler:(id)handler;
- (void)promptTrueFalse:(id)false replyHandler:(id)handler;
@end

@implementation FSMessageSTDIODelegate

+ (id)delegateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = objc_alloc_init(self);
  if (v5)
  {
    v6 = _Block_copy(handlerCopy);
    v7 = v5[1];
    v5[1] = v6;
  }

  return v5;
}

- (void)completed:(id)completed replyHandler:(id)handler
{
  handlerCopy = handler;
  delegate = self->_delegate;
  if (delegate)
  {
    delegate[2](delegate, completed);
  }

  (*(handlerCopy + 2))(handlerCopy, 0, 0);
}

- (void)logMessage:(id)message
{
  uTF8String = [message UTF8String];

  puts(uTF8String);
}

- (void)prompt:(id)prompt replyHandler:(id)handler
{
  promptCopy = prompt;
  handlerCopy = handler;
  v6 = malloc_type_malloc(0x400uLL, 0x83ED5871uLL);
  if (!v6)
  {
    v10 = __error();
    v11 = fs_errorForPOSIXError(*v10);
    handlerCopy[2](handlerCopy, 0, v11);
LABEL_5:

    goto LABEL_8;
  }

  v7 = v6;
  fprintf(*MEMORY[0x277D85DF8], "%s\n", [promptCopy UTF8String]);
  v8 = MEMORY[0x277D85E00];
  if (fgets(v7, 1024, *MEMORY[0x277D85E00]))
  {
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:v7];
    free(v7);
    (handlerCopy)[2](handlerCopy, v9, 0);

    goto LABEL_8;
  }

  v12 = *__error();
  free(v7);
  v13 = feof(*v8);
  clearerr(*v8);
  if (!v13)
  {
    v11 = fs_errorForPOSIXError(v12);
    handlerCopy[2](handlerCopy, 0, v11);
    goto LABEL_5;
  }

  (handlerCopy)[2](handlerCopy, &stru_285DEFA28, 0);
LABEL_8:
}

- (void)promptTrueFalse:(id)false replyHandler:(id)handler
{
  falseCopy = false;
  handlerCopy = handler;
  v6 = malloc_type_malloc(0x400uLL, 0xB049E91BuLL);
  if (!v6)
  {
    v16 = __error();
    v17 = fs_errorForPOSIXError(*v16);
    handlerCopy[2](handlerCopy, 0, v17);
LABEL_14:

    goto LABEL_15;
  }

  v7 = v6;
  v8 = MEMORY[0x277D85DF8];
  fprintf(*MEMORY[0x277D85DF8], "%s\nY/N\n", [falseCopy UTF8String]);
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
    handlerCopy[2](handlerCopy, 0, v17);
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
  handlerCopy[2](handlerCopy, v18, 0);
LABEL_15:
}

@end