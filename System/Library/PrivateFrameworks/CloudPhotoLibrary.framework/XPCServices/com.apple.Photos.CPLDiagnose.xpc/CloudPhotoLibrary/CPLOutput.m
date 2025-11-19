@interface CPLOutput
- (id)openOutputToPagerWithInterruptionHandler:(id)a3;
- (int)remainingSpace;
- (unint64_t)_startInCString:(char)a3[256] fgColor:(int)a4 bgColor:(int)a5 attr:(int)a6 force:(BOOL)a7;
- (void)_putsAndCrop:(const char *)a3 len:(unint64_t)a4;
- (void)clearScreen;
- (void)closeOutput;
- (void)cursorDown:(unsigned int)a3;
- (void)cursorGotoLineStart;
- (void)cursorLeft:(unsigned int)a3;
- (void)cursorRestore;
- (void)cursorRight:(unsigned int)a3;
- (void)cursorSave;
- (void)cursorToStartOfLine;
- (void)cursorToTopLeft;
- (void)cursorUp:(unsigned int)a3;
- (void)endLine;
- (void)endLineIfNecessary;
- (void)eraseEndOfLine;
- (void)eraseLine;
- (void)eraseScreenDown;
- (void)eraseScreenUp;
- (void)eraseStartOfLine;
- (void)flush;
- (void)printError:(id)a3 arguments:(char *)a4;
- (void)printFormat:(id)a3 arguments:(char *)a4;
- (void)printHeaderIfNecessary:(char)a3;
- (void)printJSONData:(id)a3;
- (void)printJSONObject:(id)a3;
- (void)put:(id)a3;
- (void)putBright:(id)a3;
- (void)putBrightF:(id)a3;
- (void)putF:(id)a3 arguments:(char *)a4;
- (void)putHighlight:(id)a3;
- (void)putUnderline:(id)a3;
- (void)puts:(const char *)a3;
- (void)puts:(const char *)a3 len:(unint64_t)a4;
- (void)setPrintHeader:(char)a3;
- (void)startNewLine;
@end

@implementation CPLOutput

- (id)openOutputToPagerWithInterruptionHandler:(id)a3
{
  v4 = a3;
  if (self->_fd != 1 || ![(CPLOutput *)self isATTY]|| (v5 = [[CPLPagerOutput alloc] initWithInputFromOutput:self interruptionHandler:v4]) == 0)
  {
    v5 = self;
  }

  return v5;
}

- (void)setPrintHeader:(char)a3
{
  if (!a3)
  {
    v3 = 0;
    goto LABEL_5;
  }

  if (!self->_printHeader)
  {
    v3 = 1;
LABEL_5:
    self->_needsHeader = v3;
  }

  self->_printHeader = a3;
}

- (void)printFormat:(id)a3 arguments:(char *)a4
{
  v6 = a3;
  v7 = [[NSString alloc] initWithFormat:v6 arguments:a4];

  [(CPLOutput *)self put:v7];
  [(CPLOutput *)self endLine];
}

- (void)printError:(id)a3 arguments:(char *)a4
{
  v5 = __stderrp;
  v6 = a3;
  v8 = [[NSString alloc] initWithFormat:v6 arguments:a4];

  v7 = v8;
  fprintf(v5, "%s\n", [v8 UTF8String]);
}

- (unint64_t)_startInCString:(char)a3[256] fgColor:(int)a4 bgColor:(int)a5 attr:(int)a6 force:(BOOL)a7
{
  curAttrs = a6;
  curBg = a5;
  curFg = a4;
  if (a5 == -1)
  {
    curBg = self->_curBg;
  }

  if (a4 == -1)
  {
    curFg = self->_curFg;
  }

  if (a6 == -1)
  {
    curAttrs = self->_curAttrs;
  }

  strcpy(a3, "\x1B[");
  if (a7 || curAttrs != self->_curAttrs)
  {
    strcpy(a3 + 2, "0;");
    v14 = 4;
    for (i = 1; i != 32; ++i)
    {
      if ((curAttrs >> i))
      {
        v14 += snprintf(&a3[v14], 256 - v14, "%zd;", i);
      }
    }

    self->_curAttrs = curAttrs;
    *&self->_curFg = 0x900000009;
    if (a7)
    {
      goto LABEL_17;
    }

    v13 = 9;
  }

  else
  {
    v13 = self->_curFg;
    v14 = 2;
  }

  if (curFg == v13)
  {
    goto LABEL_18;
  }

LABEL_17:
  v14 += snprintf(&a3[v14], 256 - v14, "%d;", curFg + 30);
  self->_curFg = curFg;
  if (!a7)
  {
LABEL_18:
    if (curBg == self->_curBg)
    {
      goto LABEL_20;
    }
  }

  v14 += snprintf(&a3[v14], 256 - v14, "%d;", curBg + 40);
  self->_curBg = curBg;
LABEL_20:
  if (v14 < 3)
  {
    return 0;
  }

  a3[v14 - 1] = 109;
  return v14;
}

- (void)putBright:(id)a3
{
  v4 = a3;
  [(CPLOutput *)self startFgColor:0xFFFFFFFFLL bgColor:0xFFFFFFFFLL attr:2];
  [(CPLOutput *)self put:v4];

  [(CPLOutput *)self resetColorsAndAttributes];
}

- (void)putHighlight:(id)a3
{
  v4 = a3;
  [(CPLOutput *)self startFgColor:4 bgColor:0xFFFFFFFFLL attr:128];
  [(CPLOutput *)self put:v4];

  [(CPLOutput *)self resetColorsAndAttributes];
}

- (void)putUnderline:(id)a3
{
  v4 = a3;
  [(CPLOutput *)self startFgColor:0xFFFFFFFFLL bgColor:0xFFFFFFFFLL attr:16];
  [(CPLOutput *)self put:v4];

  [(CPLOutput *)self resetColorsAndAttributes];
}

- (void)clearScreen
{
  v2 = self;
  v3 = v2;
  if ((v2->_fd & 0x80000000) == 0 && [(CPLOutput *)v2 supportsEscapeSequences])
  {
    fd = v3->_fd;
    if (fd != -1)
    {
      p_printHeader = &v3->_printHeader;
      if (v3->_printHeader)
      {
        if (v3->_needsHeader)
        {
          v6 = 1;
          while (v6)
          {
            v7 = write(fd, p_printHeader, v6);
            p_printHeader += v7;
            v6 -= v7;
            if (v7 <= 0)
            {
              if (v7 < 0)
              {
                [(CPLOutput *)v3 _fdIsInvalid];
              }

              break;
            }
          }

          v3->_needsHeader = 0;
          fd = v3->_fd;
        }
      }
    }

    v8 = "\x1B[2J";
    v9 = 4;
    while (v9)
    {
      v10 = write(fd, v8, v9);
      v8 += v10;
      v9 -= v10;
      if (v10 <= 0)
      {
        if (v10 < 0)
        {
          [(CPLOutput *)v3 _fdIsInvalid];
        }

        break;
      }
    }
  }

  [(CPLOutput *)v3 cursorToTopLeft];
}

- (void)eraseEndOfLine
{
  __buf = self;
  if ((__buf->_fd & 0x80000000) == 0 && [(CPLOutput *)__buf supportsEscapeSequences])
  {
    fd = __buf->_fd;
    if (fd != -1)
    {
      p_printHeader = &__buf->_printHeader;
      if (__buf->_printHeader)
      {
        if (__buf->_needsHeader)
        {
          v4 = 1;
          while (v4)
          {
            v5 = write(fd, p_printHeader, v4);
            p_printHeader += v5;
            v4 -= v5;
            if (v5 <= 0)
            {
              if (v5 < 0)
              {
                [(CPLOutput *)__buf _fdIsInvalid];
              }

              break;
            }
          }

          __buf->_needsHeader = 0;
          fd = __buf->_fd;
        }
      }
    }

    v6 = "\x1BK";
    v7 = 2;
    while (v7)
    {
      v8 = write(fd, v6, v7);
      v6 += v8;
      v7 -= v8;
      if (v8 <= 0)
      {
        if (v8 < 0)
        {
          [(CPLOutput *)__buf _fdIsInvalid];
        }

        break;
      }
    }
  }
}

- (void)eraseStartOfLine
{
  v2 = self;
  v3 = v2;
  if ((v2->_fd & 0x80000000) == 0 && [(CPLOutput *)v2 supportsEscapeSequences])
  {
    fd = v3->_fd;
    if (fd != -1)
    {
      p_printHeader = &v3->_printHeader;
      if (v3->_printHeader)
      {
        if (v3->_needsHeader)
        {
          v6 = 1;
          while (v6)
          {
            v7 = write(fd, p_printHeader, v6);
            p_printHeader += v7;
            v6 -= v7;
            if (v7 <= 0)
            {
              if (v7 < 0)
              {
                [(CPLOutput *)v3 _fdIsInvalid];
              }

              break;
            }
          }

          v3->_needsHeader = 0;
          fd = v3->_fd;
        }
      }
    }

    v8 = "\x1B[1K";
    v9 = 4;
    while (v9)
    {
      v10 = write(fd, v8, v9);
      v8 += v10;
      v9 -= v10;
      if (v10 <= 0)
      {
        if (v10 < 0)
        {
          [(CPLOutput *)v3 _fdIsInvalid];
        }

        break;
      }
    }
  }

  v3->_needsHeader = 1;
}

- (void)eraseLine
{
  v2 = self;
  v3 = v2;
  if ((v2->_fd & 0x80000000) == 0 && [(CPLOutput *)v2 supportsEscapeSequences])
  {
    fd = v3->_fd;
    if (fd != -1)
    {
      p_printHeader = &v3->_printHeader;
      if (v3->_printHeader)
      {
        if (v3->_needsHeader)
        {
          v6 = 1;
          while (v6)
          {
            v7 = write(fd, p_printHeader, v6);
            p_printHeader += v7;
            v6 -= v7;
            if (v7 <= 0)
            {
              if (v7 < 0)
              {
                [(CPLOutput *)v3 _fdIsInvalid];
              }

              break;
            }
          }

          v3->_needsHeader = 0;
          fd = v3->_fd;
        }
      }
    }

    v8 = "\x1B[2K";
    v9 = 4;
    while (v9)
    {
      v10 = write(fd, v8, v9);
      v8 += v10;
      v9 -= v10;
      if (v10 <= 0)
      {
        if (v10 < 0)
        {
          [(CPLOutput *)v3 _fdIsInvalid];
        }

        break;
      }
    }
  }

  v3->_needsHeader = 1;
}

- (void)eraseScreenDown
{
  __buf = self;
  if ((__buf->_fd & 0x80000000) == 0 && [(CPLOutput *)__buf supportsEscapeSequences])
  {
    fd = __buf->_fd;
    if (fd != -1)
    {
      p_printHeader = &__buf->_printHeader;
      if (__buf->_printHeader)
      {
        if (__buf->_needsHeader)
        {
          v4 = 1;
          while (v4)
          {
            v5 = write(fd, p_printHeader, v4);
            p_printHeader += v5;
            v4 -= v5;
            if (v5 <= 0)
            {
              if (v5 < 0)
              {
                [(CPLOutput *)__buf _fdIsInvalid];
              }

              break;
            }
          }

          __buf->_needsHeader = 0;
          fd = __buf->_fd;
        }
      }
    }

    v6 = "\x1B[J";
    v7 = 3;
    while (v7)
    {
      v8 = write(fd, v6, v7);
      v6 += v8;
      v7 -= v8;
      if (v8 <= 0)
      {
        if (v8 < 0)
        {
          [(CPLOutput *)__buf _fdIsInvalid];
        }

        break;
      }
    }
  }
}

- (void)eraseScreenUp
{
  __buf = self;
  if ((__buf->_fd & 0x80000000) == 0 && [(CPLOutput *)__buf supportsEscapeSequences])
  {
    fd = __buf->_fd;
    if (fd != -1)
    {
      p_printHeader = &__buf->_printHeader;
      if (__buf->_printHeader)
      {
        if (__buf->_needsHeader)
        {
          v4 = 1;
          while (v4)
          {
            v5 = write(fd, p_printHeader, v4);
            p_printHeader += v5;
            v4 -= v5;
            if (v5 <= 0)
            {
              if (v5 < 0)
              {
                [(CPLOutput *)__buf _fdIsInvalid];
              }

              break;
            }
          }

          __buf->_needsHeader = 0;
          fd = __buf->_fd;
        }
      }
    }

    v6 = "\x1B[1J";
    v7 = 4;
    while (v7)
    {
      v8 = write(fd, v6, v7);
      v6 += v8;
      v7 -= v8;
      if (v8 <= 0)
      {
        if (v8 < 0)
        {
          [(CPLOutput *)__buf _fdIsInvalid];
        }

        break;
      }
    }
  }
}

- (void)cursorSave
{
  __buf = self;
  if ((__buf->_fd & 0x80000000) == 0 && [(CPLOutput *)__buf supportsEscapeSequences])
  {
    fd = __buf->_fd;
    if (fd != -1)
    {
      p_printHeader = &__buf->_printHeader;
      if (__buf->_printHeader)
      {
        if (__buf->_needsHeader)
        {
          v4 = 1;
          while (v4)
          {
            v5 = write(fd, p_printHeader, v4);
            p_printHeader += v5;
            v4 -= v5;
            if (v5 <= 0)
            {
              if (v5 < 0)
              {
                [(CPLOutput *)__buf _fdIsInvalid];
              }

              break;
            }
          }

          __buf->_needsHeader = 0;
          fd = __buf->_fd;
        }
      }
    }

    v6 = "\x1B[s";
    v7 = 3;
    while (v7)
    {
      v8 = write(fd, v6, v7);
      v6 += v8;
      v7 -= v8;
      if (v8 <= 0)
      {
        if (v8 < 0)
        {
          [(CPLOutput *)__buf _fdIsInvalid];
        }

        break;
      }
    }
  }
}

- (void)cursorRestore
{
  __buf = self;
  if ((__buf->_fd & 0x80000000) == 0 && [(CPLOutput *)__buf supportsEscapeSequences])
  {
    fd = __buf->_fd;
    if (fd != -1)
    {
      p_printHeader = &__buf->_printHeader;
      if (__buf->_printHeader)
      {
        if (__buf->_needsHeader)
        {
          v4 = 1;
          while (v4)
          {
            v5 = write(fd, p_printHeader, v4);
            p_printHeader += v5;
            v4 -= v5;
            if (v5 <= 0)
            {
              if (v5 < 0)
              {
                [(CPLOutput *)__buf _fdIsInvalid];
              }

              break;
            }
          }

          __buf->_needsHeader = 0;
          fd = __buf->_fd;
        }
      }
    }

    v6 = "\x1B[u";
    v7 = 3;
    while (v7)
    {
      v8 = write(fd, v6, v7);
      v6 += v8;
      v7 -= v8;
      if (v8 <= 0)
      {
        if (v8 < 0)
        {
          [(CPLOutput *)__buf _fdIsInvalid];
        }

        break;
      }
    }
  }
}

- (void)cursorToStartOfLine
{
  if (self->_usedTermWidth)
  {
    [(CPLOutput *)self cursorLeft:?];
  }
}

- (void)cursorToTopLeft
{
  __buf = self;
  if ((__buf->_fd & 0x80000000) == 0 && [(CPLOutput *)__buf supportsEscapeSequences])
  {
    fd = __buf->_fd;
    if (fd != -1)
    {
      p_printHeader = &__buf->_printHeader;
      if (__buf->_printHeader)
      {
        if (__buf->_needsHeader)
        {
          v4 = 1;
          while (v4)
          {
            v5 = write(fd, p_printHeader, v4);
            p_printHeader += v5;
            v4 -= v5;
            if (v5 <= 0)
            {
              if (v5 < 0)
              {
                [(CPLOutput *)__buf _fdIsInvalid];
              }

              break;
            }
          }

          __buf->_needsHeader = 0;
          fd = __buf->_fd;
        }
      }
    }

    v6 = "\x1B[0;0H";
    v7 = 6;
    while (v7)
    {
      v8 = write(fd, v6, v7);
      v6 += v8;
      v7 -= v8;
      if (v8 <= 0)
      {
        if (v8 < 0)
        {
          [(CPLOutput *)__buf _fdIsInvalid];
        }

        break;
      }
    }
  }
}

- (void)cursorUp:(unsigned int)a3
{
  v4 = self;
  if ((v4->_fd & 0x80000000) == 0)
  {
    v5 = v4;
    if ([(CPLOutput *)v4 supportsEscapeSequences])
    {
      dprintf(v5->_fd, "\x1B[%d%c", a3, 65);
    }
  }

  _objc_release_x1();
}

- (void)cursorDown:(unsigned int)a3
{
  v4 = self;
  if ((v4->_fd & 0x80000000) == 0)
  {
    v5 = v4;
    if ([(CPLOutput *)v4 supportsEscapeSequences])
    {
      dprintf(v5->_fd, "\x1B[%d%c", a3, 66);
    }
  }

  _objc_release_x1();
}

- (void)cursorRight:(unsigned int)a3
{
  v4 = self;
  if ((v4->_fd & 0x80000000) == 0)
  {
    v5 = v4;
    if ([(CPLOutput *)v4 supportsEscapeSequences])
    {
      dprintf(v5->_fd, "\x1B[%d%c", a3, 67);
    }
  }

  _objc_release_x1();
}

- (void)cursorLeft:(unsigned int)a3
{
  v4 = self;
  if ((v4->_fd & 0x80000000) == 0)
  {
    v5 = v4;
    if ([(CPLOutput *)v4 supportsEscapeSequences])
    {
      dprintf(v5->_fd, "\x1B[%d%c", a3, 68);
    }
  }

  _objc_release_x1();
}

- (void)cursorGotoLineStart
{
  __buf = self;
  if ((__buf->_fd & 0x80000000) == 0 && [(CPLOutput *)__buf supportsEscapeSequences])
  {
    fd = __buf->_fd;
    if (fd != -1)
    {
      p_printHeader = &__buf->_printHeader;
      if (__buf->_printHeader)
      {
        if (__buf->_needsHeader)
        {
          v4 = 1;
          while (v4)
          {
            v5 = write(fd, p_printHeader, v4);
            p_printHeader += v5;
            v4 -= v5;
            if (v5 <= 0)
            {
              if (v5 < 0)
              {
                [(CPLOutput *)__buf _fdIsInvalid];
              }

              break;
            }
          }

          __buf->_needsHeader = 0;
          fd = __buf->_fd;
        }
      }
    }

    v6 = "\r";
    v7 = 1;
    while (v7)
    {
      v8 = write(fd, v6, v7);
      v6 += v8;
      v7 -= v8;
      if (v8 <= 0)
      {
        if (v8 < 0)
        {
          [(CPLOutput *)__buf _fdIsInvalid];
        }

        break;
      }
    }
  }
}

- (void)startNewLine
{
  if (!self->_termWidth)
  {
    v3 = 0;
    ioctl(1, 0x40087468uLL, &v3);
    self->_termWidth = WORD1(v3);
  }

  [(CPLOutput *)self cursorGotoLineStart];
  self->_usedTermWidth = 0;
}

- (void)endLine
{
  self->_usedTermWidth = 0;
  if (self->_fd >= 1)
  {
    [(CPLOutput *)self forgetRemainingSpace];
    [(CPLOutput *)self puts:"\n" len:1];
    fd = self->_fd;

    fsync(fd);
  }
}

- (void)endLineIfNecessary
{
  if (self->_usedTermWidth || self->_termWidth)
  {
    [(CPLOutput *)self endLine];
  }
}

- (void)flush
{
  fd = self->_fd;
  if (fd >= 1)
  {
    fsync(fd);
  }
}

- (int)remainingSpace
{
  v5 = 0;
  ioctl(1, 0x40087468uLL, &v5);
  v3 = WORD1(v5);
  self->_termWidth = WORD1(v5);
  return v3 - LODWORD(self->_usedTermWidth);
}

- (void)_putsAndCrop:(const char *)a3 len:(unint64_t)a4
{
  fd = self->_fd;
  if ((fd & 0x80000000) == 0)
  {
    p_printHeader = &self->_printHeader;
    printHeader = self->_printHeader;
    usedTermWidth = self->_usedTermWidth;
    if (self->_termWidth - usedTermWidth >= a4)
    {
      v10 = a4;
    }

    else
    {
      v10 = self->_termWidth - usedTermWidth;
    }

    self->_usedTermWidth = v10 + usedTermWidth;
    if (printHeader && self->_needsHeader)
    {
      v11 = 1;
      do
      {
        if (!v11)
        {
          goto LABEL_12;
        }

        v12 = write(fd, p_printHeader, v11);
        p_printHeader += v12;
        v11 -= v12;
      }

      while (v12 > 0);
      if (v12 < 0)
      {
        [(CPLOutput *)self _fdIsInvalid];
      }

LABEL_12:
      self->_needsHeader = 0;
      fd = self->_fd;
    }

    while (v10)
    {
      v13 = write(fd, a3, v10);
      a3 += v13;
      v10 -= v13;
      if (v13 <= 0)
      {
        if (v13 < 0)
        {

          [(CPLOutput *)self _fdIsInvalid];
        }

        return;
      }
    }
  }
}

- (void)puts:(const char *)a3 len:(unint64_t)a4
{
  if (a4)
  {
    fd = self->_fd;
    if ((fd & 0x80000000) == 0)
    {
      v6 = a4;
      v7 = a3;
      if (self->_termWidth)
      {

        [CPLOutput _putsAndCrop:"_putsAndCrop:len:" len:?];
      }

      else
      {
        p_printHeader = &self->_printHeader;
        if (self->_printHeader)
        {
          if (a4 == 1 && *a3 == 10)
          {
            if (self->_needsHeader)
            {
              v9 = 1;
              while (v9)
              {
                v10 = write(fd, p_printHeader, v9);
                p_printHeader += v10;
                v9 -= v10;
                if (v10 <= 0)
                {
                  if (v10 < 0)
                  {
                    [(CPLOutput *)self _fdIsInvalid];
                  }

                  break;
                }
              }

              self->_needsHeader = 0;
              fd = self->_fd;
            }

            write(fd, v7, 1uLL);
            self->_needsHeader = 1;
          }

          else
          {
            v12 = strchr(a3, 10);
            if (v12)
            {
              v13 = v12;
              do
              {
                v14 = self->_fd;
                if (v14 != -1 && *p_printHeader && self->_needsHeader)
                {
                  v15 = &self->_printHeader;
                  v16 = 1;
                  while (v16)
                  {
                    v17 = write(v14, v15, v16);
                    v15 += v17;
                    v16 -= v17;
                    if (v17 <= 0)
                    {
                      if (v17 < 0)
                      {
                        [(CPLOutput *)self _fdIsInvalid];
                      }

                      break;
                    }
                  }

                  self->_needsHeader = 0;
                  v14 = self->_fd;
                }

                v18 = v13 - v7 + 1;
                while (v18)
                {
                  v19 = write(v14, v7, v18);
                  v7 += v19;
                  v18 -= v19;
                  if (v19 <= 0)
                  {
                    if (v19 < 0)
                    {
                      [(CPLOutput *)self _fdIsInvalid];
                    }

                    break;
                  }
                }

                self->_needsHeader = 1;
                v7 = v13 + 1;
                v13 = strchr(v13 + 1, 10);
              }

              while (v13);
            }

            if (*v7)
            {
              v20 = self->_fd;
              if (v20 != -1 && *p_printHeader && self->_needsHeader)
              {
                v21 = 1;
                while (v21)
                {
                  v22 = write(v20, p_printHeader, v21);
                  p_printHeader += v22;
                  v21 -= v22;
                  if (v22 <= 0)
                  {
                    if (v22 < 0)
                    {
                      [(CPLOutput *)self _fdIsInvalid];
                    }

                    break;
                  }
                }

                self->_needsHeader = 0;
                v20 = self->_fd;
              }

              v23 = strlen(v7);
              while (v23)
              {
                v11 = write(v20, v7, v23);
                v7 += v11;
                v23 -= v11;
                if (v11 <= 0)
                {
                  goto LABEL_51;
                }
              }
            }
          }
        }

        else
        {
          while (v6)
          {
            v11 = write(fd, v7, v6);
            v7 += v11;
            v6 -= v11;
            if (v11 <= 0)
            {
LABEL_51:
              if (v11 < 0)
              {

                [(CPLOutput *)self _fdIsInvalid];
              }

              return;
            }
          }
        }
      }
    }
  }
}

- (void)puts:(const char *)a3
{
  v5 = strlen(a3);

  [(CPLOutput *)self puts:a3 len:v5];
}

- (void)put:(id)a3
{
  v8 = a3;
  if ([v8 length])
  {
    if (self->_termWidth)
    {
      v4 = objc_autoreleasePoolPush();
      v5 = [v8 stringByReplacingOccurrencesOfString:@"\t" withString:@"    "];

      -[CPLOutput puts:](self, "puts:", [v5 UTF8String]);
      objc_autoreleasePoolPop(v4);
      v6 = v5;
      goto LABEL_6;
    }

    v7 = v8;
    -[CPLOutput puts:](self, "puts:", [v8 UTF8String]);
  }

  v6 = v8;
LABEL_6:
}

- (void)putBrightF:(id)a3
{
  v4 = a3;
  [(CPLOutput *)self startFgColor:0xFFFFFFFFLL bgColor:0xFFFFFFFFLL attr:2];
  [(CPLOutput *)self putF:v4 arguments:&v5];

  [(CPLOutput *)self resetColorsAndAttributes];
}

- (void)putF:(id)a3 arguments:(char *)a4
{
  v6 = a3;
  v7 = [[NSString alloc] initWithFormat:v6 arguments:a4];

  [(CPLOutput *)self put:v7];
}

- (void)printHeaderIfNecessary:(char)a3
{
  __buf = a3;
  if (self->_needsHeader)
  {
    fd = self->_fd;
    if (fd != -1)
    {
      write(fd, &__buf, 1uLL);
      self->_needsHeader = 0;
    }
  }
}

- (void)printJSONObject:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    v6 = objc_autoreleasePoolPush();
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v9 = @"value";
        v10 = v5;
        v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];

        v5 = v7;
      }
    }

    v8 = [NSJSONSerialization dataWithJSONObject:v5 options:0 error:0];
    if (v8)
    {
      [(CPLOutput *)self printJSONData:v8];
    }

    objc_autoreleasePoolPop(v6);
  }
}

- (void)printJSONData:(id)a3
{
  v19 = a3;
  v4 = v19;
  v5 = [v19 bytes];
  v6 = [v19 length];
  fd = self->_fd;
  if (self->_printHeader)
  {
    write(self->_fd, "[\n", 2uLL);
    if (v6)
    {
      while (1)
      {
        v8 = memchr(v5, 10, v6);
        write(self->_fd, ".", 1uLL);
        if (!v8)
        {
          break;
        }

        v9 = v8 - v5 + 1;
        v10 = self->_fd;
        v11 = v9;
        while (v11)
        {
          v12 = write(v10, v5, v11);
          v5 += v12;
          v11 -= v12;
          if (v12 <= 0)
          {
            if (v12 < 0)
            {
              [(CPLOutput *)self _fdIsInvalid];
            }

            break;
          }
        }

        v5 = v8 + 1;
        v6 -= v9;
        if (!v6)
        {
          goto LABEL_10;
        }
      }

      v17 = self->_fd;
      while (v6)
      {
        v18 = write(v17, v5, v6);
        v5 += v18;
        v6 -= v18;
        if (v18 <= 0)
        {
          if (v18 < 0)
          {
            [(CPLOutput *)self _fdIsInvalid];
          }

          break;
        }
      }

      v13 = self->_fd;
      v14 = "\n]\n";
      v15 = 3;
    }

    else
    {
LABEL_10:
      v13 = self->_fd;
      v14 = "]\n";
      v15 = 2;
    }

    write(v13, v14, v15);
    self->_needsHeader = 1;
  }

  else
  {
    while (v6)
    {
      v16 = write(fd, v5, v6);
      v5 += v16;
      v6 -= v16;
      if (v16 <= 0)
      {
        if (v16 < 0)
        {
          [(CPLOutput *)self _fdIsInvalid];
        }

        break;
      }
    }
  }
}

- (void)closeOutput
{
  fd = self->_fd;
  if ((fd - 1) >= 2)
  {
    close(fd);
    self->_fd = -1;
  }
}

@end