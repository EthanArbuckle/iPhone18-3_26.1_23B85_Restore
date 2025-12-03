@interface CPLOutput
- (id)openOutputToPagerWithInterruptionHandler:(id)handler;
- (int)remainingSpace;
- (unint64_t)_startInCString:(char)string[256] fgColor:(int)color bgColor:(int)bgColor attr:(int)attr force:(BOOL)force;
- (void)_putsAndCrop:(const char *)crop len:(unint64_t)len;
- (void)clearScreen;
- (void)closeOutput;
- (void)cursorDown:(unsigned int)down;
- (void)cursorGotoLineStart;
- (void)cursorLeft:(unsigned int)left;
- (void)cursorRestore;
- (void)cursorRight:(unsigned int)right;
- (void)cursorSave;
- (void)cursorToStartOfLine;
- (void)cursorToTopLeft;
- (void)cursorUp:(unsigned int)up;
- (void)endLine;
- (void)endLineIfNecessary;
- (void)eraseEndOfLine;
- (void)eraseLine;
- (void)eraseScreenDown;
- (void)eraseScreenUp;
- (void)eraseStartOfLine;
- (void)flush;
- (void)printError:(id)error arguments:(char *)arguments;
- (void)printFormat:(id)format arguments:(char *)arguments;
- (void)printHeaderIfNecessary:(char)necessary;
- (void)printJSONData:(id)data;
- (void)printJSONObject:(id)object;
- (void)put:(id)put;
- (void)putBright:(id)bright;
- (void)putBrightF:(id)f;
- (void)putF:(id)f arguments:(char *)arguments;
- (void)putHighlight:(id)highlight;
- (void)putUnderline:(id)underline;
- (void)puts:(const char *)puts;
- (void)puts:(const char *)puts len:(unint64_t)len;
- (void)setPrintHeader:(char)header;
- (void)startNewLine;
@end

@implementation CPLOutput

- (id)openOutputToPagerWithInterruptionHandler:(id)handler
{
  handlerCopy = handler;
  if (self->_fd != 1 || ![(CPLOutput *)self isATTY]|| (selfCopy = [[CPLPagerOutput alloc] initWithInputFromOutput:self interruptionHandler:handlerCopy]) == 0)
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (void)setPrintHeader:(char)header
{
  if (!header)
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

  self->_printHeader = header;
}

- (void)printFormat:(id)format arguments:(char *)arguments
{
  formatCopy = format;
  v7 = [[NSString alloc] initWithFormat:formatCopy arguments:arguments];

  [(CPLOutput *)self put:v7];
  [(CPLOutput *)self endLine];
}

- (void)printError:(id)error arguments:(char *)arguments
{
  v5 = __stderrp;
  errorCopy = error;
  v8 = [[NSString alloc] initWithFormat:errorCopy arguments:arguments];

  v7 = v8;
  fprintf(v5, "%s\n", [v8 UTF8String]);
}

- (unint64_t)_startInCString:(char)string[256] fgColor:(int)color bgColor:(int)bgColor attr:(int)attr force:(BOOL)force
{
  curAttrs = attr;
  curBg = bgColor;
  curFg = color;
  if (bgColor == -1)
  {
    curBg = self->_curBg;
  }

  if (color == -1)
  {
    curFg = self->_curFg;
  }

  if (attr == -1)
  {
    curAttrs = self->_curAttrs;
  }

  strcpy(string, "\x1B[");
  if (force || curAttrs != self->_curAttrs)
  {
    strcpy(string + 2, "0;");
    v14 = 4;
    for (i = 1; i != 32; ++i)
    {
      if ((curAttrs >> i))
      {
        v14 += snprintf(&string[v14], 256 - v14, "%zd;", i);
      }
    }

    self->_curAttrs = curAttrs;
    *&self->_curFg = 0x900000009;
    if (force)
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
  v14 += snprintf(&string[v14], 256 - v14, "%d;", curFg + 30);
  self->_curFg = curFg;
  if (!force)
  {
LABEL_18:
    if (curBg == self->_curBg)
    {
      goto LABEL_20;
    }
  }

  v14 += snprintf(&string[v14], 256 - v14, "%d;", curBg + 40);
  self->_curBg = curBg;
LABEL_20:
  if (v14 < 3)
  {
    return 0;
  }

  string[v14 - 1] = 109;
  return v14;
}

- (void)putBright:(id)bright
{
  brightCopy = bright;
  [(CPLOutput *)self startFgColor:0xFFFFFFFFLL bgColor:0xFFFFFFFFLL attr:2];
  [(CPLOutput *)self put:brightCopy];

  [(CPLOutput *)self resetColorsAndAttributes];
}

- (void)putHighlight:(id)highlight
{
  highlightCopy = highlight;
  [(CPLOutput *)self startFgColor:4 bgColor:0xFFFFFFFFLL attr:128];
  [(CPLOutput *)self put:highlightCopy];

  [(CPLOutput *)self resetColorsAndAttributes];
}

- (void)putUnderline:(id)underline
{
  underlineCopy = underline;
  [(CPLOutput *)self startFgColor:0xFFFFFFFFLL bgColor:0xFFFFFFFFLL attr:16];
  [(CPLOutput *)self put:underlineCopy];

  [(CPLOutput *)self resetColorsAndAttributes];
}

- (void)clearScreen
{
  selfCopy = self;
  v3 = selfCopy;
  if ((selfCopy->_fd & 0x80000000) == 0 && [(CPLOutput *)selfCopy supportsEscapeSequences])
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
  selfCopy = self;
  v3 = selfCopy;
  if ((selfCopy->_fd & 0x80000000) == 0 && [(CPLOutput *)selfCopy supportsEscapeSequences])
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
  selfCopy = self;
  v3 = selfCopy;
  if ((selfCopy->_fd & 0x80000000) == 0 && [(CPLOutput *)selfCopy supportsEscapeSequences])
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

- (void)cursorUp:(unsigned int)up
{
  selfCopy = self;
  if ((selfCopy->_fd & 0x80000000) == 0)
  {
    v5 = selfCopy;
    if ([(CPLOutput *)selfCopy supportsEscapeSequences])
    {
      dprintf(v5->_fd, "\x1B[%d%c", up, 65);
    }
  }

  _objc_release_x1();
}

- (void)cursorDown:(unsigned int)down
{
  selfCopy = self;
  if ((selfCopy->_fd & 0x80000000) == 0)
  {
    v5 = selfCopy;
    if ([(CPLOutput *)selfCopy supportsEscapeSequences])
    {
      dprintf(v5->_fd, "\x1B[%d%c", down, 66);
    }
  }

  _objc_release_x1();
}

- (void)cursorRight:(unsigned int)right
{
  selfCopy = self;
  if ((selfCopy->_fd & 0x80000000) == 0)
  {
    v5 = selfCopy;
    if ([(CPLOutput *)selfCopy supportsEscapeSequences])
    {
      dprintf(v5->_fd, "\x1B[%d%c", right, 67);
    }
  }

  _objc_release_x1();
}

- (void)cursorLeft:(unsigned int)left
{
  selfCopy = self;
  if ((selfCopy->_fd & 0x80000000) == 0)
  {
    v5 = selfCopy;
    if ([(CPLOutput *)selfCopy supportsEscapeSequences])
    {
      dprintf(v5->_fd, "\x1B[%d%c", left, 68);
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

- (void)_putsAndCrop:(const char *)crop len:(unint64_t)len
{
  fd = self->_fd;
  if ((fd & 0x80000000) == 0)
  {
    p_printHeader = &self->_printHeader;
    printHeader = self->_printHeader;
    usedTermWidth = self->_usedTermWidth;
    if (self->_termWidth - usedTermWidth >= len)
    {
      lenCopy = len;
    }

    else
    {
      lenCopy = self->_termWidth - usedTermWidth;
    }

    self->_usedTermWidth = lenCopy + usedTermWidth;
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

    while (lenCopy)
    {
      v13 = write(fd, crop, lenCopy);
      crop += v13;
      lenCopy -= v13;
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

- (void)puts:(const char *)puts len:(unint64_t)len
{
  if (len)
  {
    fd = self->_fd;
    if ((fd & 0x80000000) == 0)
    {
      lenCopy = len;
      putsCopy = puts;
      if (self->_termWidth)
      {

        [CPLOutput _putsAndCrop:"_putsAndCrop:len:" len:?];
      }

      else
      {
        p_printHeader = &self->_printHeader;
        if (self->_printHeader)
        {
          if (len == 1 && *puts == 10)
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

            write(fd, putsCopy, 1uLL);
            self->_needsHeader = 1;
          }

          else
          {
            v12 = strchr(puts, 10);
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

                v18 = v13 - putsCopy + 1;
                while (v18)
                {
                  v19 = write(v14, putsCopy, v18);
                  putsCopy += v19;
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
                putsCopy = v13 + 1;
                v13 = strchr(v13 + 1, 10);
              }

              while (v13);
            }

            if (*putsCopy)
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

              v23 = strlen(putsCopy);
              while (v23)
              {
                v11 = write(v20, putsCopy, v23);
                putsCopy += v11;
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
          while (lenCopy)
          {
            v11 = write(fd, putsCopy, lenCopy);
            putsCopy += v11;
            lenCopy -= v11;
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

- (void)puts:(const char *)puts
{
  v5 = strlen(puts);

  [(CPLOutput *)self puts:puts len:v5];
}

- (void)put:(id)put
{
  putCopy = put;
  if ([putCopy length])
  {
    if (self->_termWidth)
    {
      v4 = objc_autoreleasePoolPush();
      v5 = [putCopy stringByReplacingOccurrencesOfString:@"\t" withString:@"    "];

      -[CPLOutput puts:](self, "puts:", [v5 UTF8String]);
      objc_autoreleasePoolPop(v4);
      v6 = v5;
      goto LABEL_6;
    }

    v7 = putCopy;
    -[CPLOutput puts:](self, "puts:", [putCopy UTF8String]);
  }

  v6 = putCopy;
LABEL_6:
}

- (void)putBrightF:(id)f
{
  fCopy = f;
  [(CPLOutput *)self startFgColor:0xFFFFFFFFLL bgColor:0xFFFFFFFFLL attr:2];
  [(CPLOutput *)self putF:fCopy arguments:&v5];

  [(CPLOutput *)self resetColorsAndAttributes];
}

- (void)putF:(id)f arguments:(char *)arguments
{
  fCopy = f;
  v7 = [[NSString alloc] initWithFormat:fCopy arguments:arguments];

  [(CPLOutput *)self put:v7];
}

- (void)printHeaderIfNecessary:(char)necessary
{
  __buf = necessary;
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

- (void)printJSONObject:(id)object
{
  objectCopy = object;
  if (objectCopy)
  {
    v5 = objectCopy;
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

- (void)printJSONData:(id)data
{
  dataCopy = data;
  v4 = dataCopy;
  bytes = [dataCopy bytes];
  v6 = [dataCopy length];
  fd = self->_fd;
  if (self->_printHeader)
  {
    write(self->_fd, "[\n", 2uLL);
    if (v6)
    {
      while (1)
      {
        v8 = memchr(bytes, 10, v6);
        write(self->_fd, ".", 1uLL);
        if (!v8)
        {
          break;
        }

        v9 = v8 - bytes + 1;
        v10 = self->_fd;
        v11 = v9;
        while (v11)
        {
          v12 = write(v10, bytes, v11);
          bytes += v12;
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

        bytes = v8 + 1;
        v6 -= v9;
        if (!v6)
        {
          goto LABEL_10;
        }
      }

      v17 = self->_fd;
      while (v6)
      {
        v18 = write(v17, bytes, v6);
        bytes += v18;
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
      v16 = write(fd, bytes, v6);
      bytes += v16;
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