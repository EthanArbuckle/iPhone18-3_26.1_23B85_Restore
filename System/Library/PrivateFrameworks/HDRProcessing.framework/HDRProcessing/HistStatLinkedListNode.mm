@interface HistStatLinkedListNode
- (HistStatLinkedListNode)initWithStreamId:(int64_t)id bufferSize:(unsigned __int16)size;
- (void)dealloc;
- (void)detachAllNodes;
@end

@implementation HistStatLinkedListNode

- (HistStatLinkedListNode)initWithStreamId:(int64_t)id bufferSize:(unsigned __int16)size
{
  sizeCopy = size;
  v34 = *MEMORY[0x277D85DE8];
  v27.receiver = self;
  v27.super_class = HistStatLinkedListNode;
  v6 = [(HistStatLinkedListNode *)&v27 init];
  v7 = v6;
  if (v6)
  {
    v6->_streamId = id;
    v6->_numOfProcessedFrames = 0;
    next = v6->_next;
    v6->_next = 0;

    prev = v7->_prev;
    v7->_prev = 0;

    v10 = malloc_type_calloc(sizeCopy, 4uLL, 0x100004052888210uLL);
    v7->_minValBuffer = v10;
    if (v10)
    {
      v11 = malloc_type_calloc(sizeCopy, 4uLL, 0x100004052888210uLL);
      v7->_maxValBuffer = v11;
      if (v11)
      {
        v12 = malloc_type_calloc(sizeCopy, 4uLL, 0x100004052888210uLL);
        v7->_avgValBuffer = v12;
        if (v12)
        {
          v13 = malloc_type_calloc(sizeCopy, 4uLL, 0x100004052888210uLL);
          v7->_stdValBuffer = v13;
          if (v13)
          {
            v14 = malloc_type_calloc(0xFuLL, 8uLL, 0x80040B8603338uLL);
            v7->_prctValBuffer = v14;
            if (v14)
            {
              for (i = 0; i != 15; ++i)
              {
                v7->_prctValBuffer[i] = malloc_type_calloc(sizeCopy, 4uLL, 0x100004052888210uLL);
                if (!v7->_prctValBuffer[i])
                {
                  if (enableLogInstance)
                  {
                    if (logInstanceID)
                    {
                      v19 = logInstanceID;
                    }

                    else
                    {
                      v19 = prevLogInstanceID;
                    }

                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 134217984;
                      v29 = WORD1(v19);
                      v20 = MEMORY[0x277D86220];
                      v21 = " [1.450.54] #%04llx Memory allocation for prctValBuffer[i] failed";
                      goto LABEL_73;
                    }

                    goto LABEL_74;
                  }

                  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_87;
                  }

                  *buf = 0;
                  v22 = MEMORY[0x277D86220];
                  v23 = " [1.450.54] Memory allocation for prctValBuffer[i] failed";
                  goto LABEL_79;
                }
              }

              v7->_prevAvgVal = -1.0;
              v16 = malloc_type_calloc(0x80uLL, 4uLL, 0x100004052888210uLL);
              v7->_prevNormHistHeight = v16;
              if (v16)
              {
                v17 = malloc_type_calloc(sizeCopy, 8uLL, 0x100004000313F17uLL);
                v7->_targetMaxBuffer = v17;
                if (v17)
                {
                  v18 = v7;
                  goto LABEL_90;
                }

                if (enableLogInstance)
                {
                  if (logInstanceID)
                  {
                    v19 = logInstanceID;
                  }

                  else
                  {
                    v19 = prevLogInstanceID;
                  }

                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 134217984;
                    v29 = WORD1(v19);
                    v20 = MEMORY[0x277D86220];
                    v21 = " [1.450.54] #%04llx Memory allocation for targetMaxBuffer failed";
                    goto LABEL_73;
                  }

                  goto LABEL_74;
                }

                if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_87;
                }

                *buf = 0;
                v22 = MEMORY[0x277D86220];
                v23 = " [1.450.54] Memory allocation for targetMaxBuffer failed";
              }

              else
              {
                if (enableLogInstance)
                {
                  if (logInstanceID)
                  {
                    v19 = logInstanceID;
                  }

                  else
                  {
                    v19 = prevLogInstanceID;
                  }

                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 134217984;
                    v29 = WORD1(v19);
                    v20 = MEMORY[0x277D86220];
                    v21 = " [1.450.54] #%04llx Memory allocation for prevNormHistHeight failed";
                    goto LABEL_73;
                  }

                  goto LABEL_74;
                }

                if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_87;
                }

                *buf = 0;
                v22 = MEMORY[0x277D86220];
                v23 = " [1.450.54] Memory allocation for prevNormHistHeight failed";
              }

LABEL_79:
              _os_log_impl(&dword_250836000, v22, OS_LOG_TYPE_DEFAULT, v23, buf, 2u);
              goto LABEL_80;
            }

            if (!enableLogInstance)
            {
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_87;
              }

              *buf = 0;
              v22 = MEMORY[0x277D86220];
              v23 = " [1.450.54] Memory allocation for prctValBuffer failed";
              goto LABEL_79;
            }

            if (logInstanceID)
            {
              v19 = logInstanceID;
            }

            else
            {
              v19 = prevLogInstanceID;
            }

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134217984;
              v29 = WORD1(v19);
              v20 = MEMORY[0x277D86220];
              v21 = " [1.450.54] #%04llx Memory allocation for prctValBuffer failed";
              goto LABEL_73;
            }

LABEL_74:
            prevLogInstanceID = v19;
            goto LABEL_80;
          }

          if (!enableLogInstance)
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_87;
            }

            *buf = 0;
            v22 = MEMORY[0x277D86220];
            v23 = " [1.450.54] Memory allocation for stdValBuffer failed";
            goto LABEL_79;
          }

          if (logInstanceID)
          {
            v19 = logInstanceID;
          }

          else
          {
            v19 = prevLogInstanceID;
          }

          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_74;
          }

          *buf = 134217984;
          v29 = WORD1(v19);
          v20 = MEMORY[0x277D86220];
          v21 = " [1.450.54] #%04llx Memory allocation for stdValBuffer failed";
        }

        else
        {
          if (!enableLogInstance)
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_87;
            }

            *buf = 0;
            v22 = MEMORY[0x277D86220];
            v23 = " [1.450.54] Memory allocation for avgValBuffer failed";
            goto LABEL_79;
          }

          if (logInstanceID)
          {
            v19 = logInstanceID;
          }

          else
          {
            v19 = prevLogInstanceID;
          }

          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_74;
          }

          *buf = 134217984;
          v29 = WORD1(v19);
          v20 = MEMORY[0x277D86220];
          v21 = " [1.450.54] #%04llx Memory allocation for avgValBuffer failed";
        }
      }

      else
      {
        if (!enableLogInstance)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_87;
          }

          *buf = 0;
          v22 = MEMORY[0x277D86220];
          v23 = " [1.450.54] Memory allocation for maxValBuffer failed";
          goto LABEL_79;
        }

        if (logInstanceID)
        {
          v19 = logInstanceID;
        }

        else
        {
          v19 = prevLogInstanceID;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_74;
        }

        *buf = 134217984;
        v29 = WORD1(v19);
        v20 = MEMORY[0x277D86220];
        v21 = " [1.450.54] #%04llx Memory allocation for maxValBuffer failed";
      }
    }

    else
    {
      if (!enableLogInstance)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_87;
        }

        *buf = 0;
        v22 = MEMORY[0x277D86220];
        v23 = " [1.450.54] Memory allocation for minValBuffer failed";
        goto LABEL_79;
      }

      if (logInstanceID)
      {
        v19 = logInstanceID;
      }

      else
      {
        v19 = prevLogInstanceID;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_74;
      }

      *buf = 134217984;
      v29 = WORD1(v19);
      v20 = MEMORY[0x277D86220];
      v21 = " [1.450.54] #%04llx Memory allocation for minValBuffer failed";
    }

LABEL_73:
    _os_log_impl(&dword_250836000, v20, OS_LOG_TYPE_DEFAULT, v21, buf, 0xCu);
    goto LABEL_74;
  }

LABEL_80:
  if (enableLogInstance)
  {
    if (logInstanceID)
    {
      v24 = logInstanceID;
    }

    else
    {
      v24 = prevLogInstanceID;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      v29 = WORD1(v24);
      v30 = 2080;
      v31 = "[HistStatLinkedListNode initWithStreamId:bufferSize:]";
      v32 = 2048;
      v33 = v7;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx %s : Initialization Failed, self=%p\n", buf, 0x20u);
    }

    v18 = 0;
    prevLogInstanceID = v24;
    goto LABEL_90;
  }

LABEL_87:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v29 = "[HistStatLinkedListNode initWithStreamId:bufferSize:]";
    v30 = 2048;
    v31 = v7;
    _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] %s : Initialization Failed, self=%p\n", buf, 0x16u);
  }

  v18 = 0;
LABEL_90:

  v25 = *MEMORY[0x277D85DE8];
  return v18;
}

- (void)dealloc
{
  minValBuffer = self->_minValBuffer;
  if (minValBuffer)
  {
    free(minValBuffer);
    self->_minValBuffer = 0;
  }

  maxValBuffer = self->_maxValBuffer;
  if (maxValBuffer)
  {
    free(maxValBuffer);
    self->_maxValBuffer = 0;
  }

  avgValBuffer = self->_avgValBuffer;
  if (avgValBuffer)
  {
    free(avgValBuffer);
    self->_avgValBuffer = 0;
  }

  stdValBuffer = self->_stdValBuffer;
  if (stdValBuffer)
  {
    free(stdValBuffer);
    self->_stdValBuffer = 0;
  }

  if (self->_prctValBuffer)
  {
    for (i = 0; i != 15; ++i)
    {
      v8 = self->_prctValBuffer[i];
      if (v8)
      {
        free(v8);
        self->_prctValBuffer[i] = 0;
      }
    }

    free(self->_prctValBuffer);
    self->_prctValBuffer = 0;
  }

  prevNormHistHeight = self->_prevNormHistHeight;
  if (prevNormHistHeight)
  {
    free(prevNormHistHeight);
    self->_prevNormHistHeight = 0;
  }

  targetMaxBuffer = self->_targetMaxBuffer;
  if (targetMaxBuffer)
  {
    free(targetMaxBuffer);
    self->_targetMaxBuffer = 0;
  }

  v11.receiver = self;
  v11.super_class = HistStatLinkedListNode;
  [(HistStatLinkedListNode *)&v11 dealloc];
}

- (void)detachAllNodes
{
  selfCopy = self;
  if (selfCopy)
  {
    v3 = selfCopy;
    do
    {
      prev = [v3 prev];
      next = [v3 next];
      [v3 setNext:0];
      [v3 setPrev:0];

      v3 = next;
    }

    while (next);
  }
}

@end