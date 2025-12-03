@interface ReplayPagesTestRunner
- (BOOL)loadTestSuiteFile:(id)file;
- (void)dealloc;
- (void)finishedTestPage:(id)page;
- (void)startNextPage;
@end

@implementation ReplayPagesTestRunner

- (void)dealloc
{
  suiteFile = self->_suiteFile;
  if (suiteFile)
  {
    fclose(suiteFile);
    self->_suiteFile = 0;
  }

  v4.receiver = self;
  v4.super_class = ReplayPagesTestRunner;
  [(PageLoadTestRunner *)&v4 dealloc];
}

- (BOOL)loadTestSuiteFile:(id)file
{
  fileCopy = file;
  suiteFile = self->_suiteFile;
  if (suiteFile)
  {
    fclose(suiteFile);
  }

  v6 = fopen([fileCopy UTF8String], "r");
  self->_suiteFile = v6;
  if (!v6)
  {
    v7 = *__error();
    v8 = __error();
    [(PageLoadTestRunner *)self log:@"Error %d, could not open %@: %s", v7, fileCopy, strerror(*v8)];
  }

  return v6 != 0;
}

- (void)finishedTestPage:(id)page
{
  pageCopy = page;
  ++self->_attemptCount;
  v6 = pageCopy;
  if ([pageCopy status] == 5)
  {
    ++self->_successCount;
  }

  [(PageLoadTestRunner *)self log:@"%4lu: %@", self->_attemptCount, v6];
  if (self->_suiteFile)
  {
    v5 = [(NSMutableArray *)self->super.super._pageLoadArray objectAtIndexedSubscript:self->super.super._currentTestIteration];
    [v5 removeObject:v6];
  }
}

- (void)startNextPage
{
  suiteFile = self->_suiteFile;
  if (suiteFile)
  {
    v4 = MEMORY[0x277D85DE0];
    while (1)
    {
      v22 = 0;
      v5 = fgetln(suiteFile, &v22);
      if (!v5)
      {
        break;
      }

      v6 = v5;
      if ([(PageLoadTestRunner *)self skipCount])
      {
        [(PageLoadTestRunner *)self setSkipCount:[(PageLoadTestRunner *)self skipCount]- 1];
        goto LABEL_9;
      }

      if (v22)
      {
        for (i = v22 - 1; i != -1; --i)
        {
          v9 = v6[i];
          if ((v9 & 0x80000000) != 0)
          {
            if (!__maskrune(v9, 0x4000uLL))
            {
LABEL_19:
              if (v22 && *v6 != 35)
              {
                v10 = objc_alloc(MEMORY[0x277CCACA8]);
                v11 = [v10 initWithBytesNoCopy:v6 length:v22 encoding:4 freeWhenDone:0];
                v12 = [MEMORY[0x277CBEBC0] URLWithString:v11];
                [(PageLoadTestRunner *)self addPageURL:v12 withProcessSwap:0];

                goto LABEL_28;
              }

              break;
            }
          }

          else if ((*(v4 + 4 * v9 + 60) & 0x4000) == 0)
          {
            goto LABEL_19;
          }

          v22 = i;
        }
      }

LABEL_9:
      suiteFile = self->_suiteFile;
      if (!suiteFile)
      {
        goto LABEL_29;
      }
    }

    if (self->_eternal)
    {
      v7 = self->_suiteFile;
      if (!ferror(v7))
      {
        rewind(v7);
        goto LABEL_9;
      }
    }
  }

  else
  {
    v13 = [(NSMutableArray *)self->super.super._pageLoadArray objectAtIndexedSubscript:self->super.super._currentTestIteration];
    v11 = v13;
    if (self->_eternal)
    {
      attemptCount = self->_attemptCount;
      if (attemptCount)
      {
        if (!(attemptCount % [v13 count]))
        {
          v15 = [v11 count];
          if (v15)
          {
            v16 = v15 - 1;
            do
            {
              v17 = [v11 objectAtIndex:v16];
              v18 = [PageLoad alloc];
              v19 = [v17 URL];
              v20 = [(PageLoad *)v18 initWithURL:v19 withProcessSwap:0];

              [v11 replaceObjectAtIndex:v16 withObject:v20];
              --v16;
            }

            while (v16 != -1);
          }
        }
      }
    }

LABEL_28:
  }

LABEL_29:
  v21.receiver = self;
  v21.super_class = ReplayPagesTestRunner;
  [(PageLoadTestRunner *)&v21 startNextPage];
}

@end