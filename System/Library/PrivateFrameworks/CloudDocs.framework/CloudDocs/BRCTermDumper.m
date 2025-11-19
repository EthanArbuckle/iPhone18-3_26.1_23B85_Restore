@interface BRCTermDumper
+ (void)execPagerOnFileFd:(int)a3;
+ (void)setupPagerForFd:(int)a3;
- (BRCTermDumper)initWithFile:(__sFILE *)a3 forceColor:(BOOL)a4 darkMode:(BOOL)a5 closeOnDeinit:(BOOL)a6;
- (int)_transformToDarkMode:(int)a3;
- (unint64_t)remainingSpace;
- (void)_putsAndCrop:(const char *)a3 len:(unint64_t)a4;
- (void)cursorDown:(unsigned int)a3;
- (void)cursorGotoLineStart;
- (void)cursorLeft:(unsigned int)a3;
- (void)cursorRestore;
- (void)cursorRight:(unsigned int)a3;
- (void)cursorSave;
- (void)cursorUp:(unsigned int)a3;
- (void)dealloc;
- (void)endLine;
- (void)eraseEndOfLine;
- (void)eraseLine;
- (void)eraseScreenDown;
- (void)eraseScreenUp;
- (void)eraseStartOfLine;
- (void)put:(id)a3;
- (void)puts:(const char *)a3;
- (void)puts:(const char *)a3 len:(unint64_t)a4;
- (void)startNewLine;
- (void)startPager;
- (void)write:(const char *)a3;
@end

@implementation BRCTermDumper

- (BRCTermDumper)initWithFile:(__sFILE *)a3 forceColor:(BOOL)a4 darkMode:(BOOL)a5 closeOnDeinit:(BOOL)a6
{
  v18.receiver = self;
  v18.super_class = BRCTermDumper;
  v10 = [(BRCTermDumper *)&v18 init];
  v11 = v10;
  if (v10)
  {
    v10->_file = a3;
    v10->_fileNeedsClosing = a6;
    setvbuf(a3, 0, 2, 0x400uLL);
    v12 = fileno(a3);
    v13 = isatty(v12) != 0;
    v11->_isatty = v13;
    v14 = getenv("TERM");
    if (v14)
    {
      v15 = v13;
    }

    else
    {
      v15 = 0;
    }

    v11->_supportsEscapeSequences = v15;
    if (!a4 && v15)
    {
      v16 = v14;
      if (strcasestr(v14, "ansi"))
      {
        a4 = 1;
      }

      else
      {
        a4 = strstr(v16, "color") != 0;
      }
    }

    v11->_useColor = a4;
    v11->_curBg = 9;
    v11->_curFg = 9;
    v11->_darkMode = a5;
  }

  return v11;
}

- (void)dealloc
{
  if (self->_fileNeedsClosing)
  {
    file = self->_file;
    if (file)
    {
      fclose(file);
      self->_file = 0;
    }
  }

  v4.receiver = self;
  v4.super_class = BRCTermDumper;
  [(BRCTermDumper *)&v4 dealloc];
}

- (int)_transformToDarkMode:(int)a3
{
  if (a3 == 0 && self->_darkMode)
  {
    return 7;
  }

  else
  {
    return a3;
  }
}

+ (void)setupPagerForFd:(int)a3
{
  v3 = 0;
  ioctl(a3, 0x40087468uLL, &v3);
  if (!getenv("LESS"))
  {
    putenv("LESS=FRSX");
  }

  if (!getenv("LESSCHARSET"))
  {
    putenv("LESSCHARSET=utf-8");
  }
}

+ (void)execPagerOnFileFd:(int)a3
{
  [a1 setupPagerForFd:?];
  dup2(a3, 0);
  lseek(a3, 0, 0);
  if (execlp("less", "less", "-", 0) < 0)
  {
    perror("execvp");
    exit(1);
  }

  __break(1u);
}

- (void)startPager
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_isatty)
  {
    v3 = objc_opt_class();
    [v3 setupPagerForFd:fileno(self->_file)];
    if ((pipe(v9) & 0x80000000) == 0)
    {
      signal(13, 1);
      v4 = fork();
      if ((v4 & 0x80000000) == 0)
      {
        v5 = v4;
        if (v4)
        {
          signal(20, less_exit_handler);
          dup2(v9[1], 1);
          close(v9[1]);
          close(v9[0]);
          v7[0] = MEMORY[0x1E69E9820];
          v7[1] = 3221225472;
          v7[2] = __27__BRCTermDumper_startPager__block_invoke;
          v7[3] = &__block_descriptor_36_e5_v8__0l;
          v8 = v5;
          atexit_b(v7);
        }

        else
        {
          dup2(v9[0], 0);
          close(v9[0]);
          close(v9[1]);
          if (execlp("less", "less", "-", 0) < 0)
          {
            [BRCTermDumper startPager];
          }
        }
      }
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __27__BRCTermDumper_startPager__block_invoke(uint64_t a1)
{
  v2 = 0;
  fflush(*MEMORY[0x1E69E9858]);
  fflush(*MEMORY[0x1E69E9848]);
  close(1);
  close(2);
  if (waitpid(*(a1 + 32), &v2, 0) < 0)
  {
    perror("waitpid");
  }
}

- (void)eraseEndOfLine
{
  if (self->_supportsEscapeSequences)
  {
    fputs("\x1BK", self->_file);
  }
}

- (void)eraseStartOfLine
{
  if (self->_supportsEscapeSequences)
  {
    fputs("\x1B[1K", self->_file);
  }
}

- (void)eraseLine
{
  if (self->_supportsEscapeSequences)
  {
    fputs("\x1B[2K", self->_file);
  }
}

- (void)eraseScreenDown
{
  if (self->_supportsEscapeSequences)
  {
    fputs("\x1B[J", self->_file);
  }
}

- (void)eraseScreenUp
{
  if (self->_supportsEscapeSequences)
  {
    fputs("\x1B[1J", self->_file);
  }
}

- (void)cursorSave
{
  if (self->_supportsEscapeSequences)
  {
    fputs("\x1B[s", self->_file);
  }
}

- (void)cursorRestore
{
  if (self->_supportsEscapeSequences)
  {
    fputs("\x1B[u", self->_file);
  }
}

- (void)cursorUp:(unsigned int)a3
{
  if (self->_supportsEscapeSequences)
  {
    fprintf(self->_file, "\x1B[%d%c", a3, 65);
  }
}

- (void)cursorDown:(unsigned int)a3
{
  if (self->_supportsEscapeSequences)
  {
    fprintf(self->_file, "\x1B[%d%c", a3, 66);
  }
}

- (void)cursorRight:(unsigned int)a3
{
  if (self->_supportsEscapeSequences)
  {
    fprintf(self->_file, "\x1B[%d%c", a3, 67);
  }
}

- (void)cursorLeft:(unsigned int)a3
{
  if (self->_supportsEscapeSequences)
  {
    fprintf(self->_file, "\x1B[%d%c", a3, 68);
  }
}

- (void)cursorGotoLineStart
{
  if (self->_supportsEscapeSequences)
  {
    fputs("\r", self->_file);
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

  [(BRCTermDumper *)self cursorGotoLineStart];
  self->_usedTermWidth = 0;
}

- (void)endLine
{
  self->_usedTermWidth = 0;
  [(BRCTermDumper *)self forgetRemainingSpace];

  [(BRCTermDumper *)self puts:"\n" len:1];
}

- (unint64_t)remainingSpace
{
  v5 = 0;
  ioctl(1, 0x40087468uLL, &v5);
  v3 = WORD1(v5);
  self->_termWidth = WORD1(v5);
  return v3 - self->_usedTermWidth;
}

- (void)_putsAndCrop:(const char *)a3 len:(unint64_t)a4
{
  usedTermWidth = self->_usedTermWidth;
  if (self->_termWidth - usedTermWidth >= a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = self->_termWidth - usedTermWidth;
  }

  self->_usedTermWidth = v6 + usedTermWidth;
  fwrite(a3, 1uLL, v6, self->_file);
}

- (void)puts:(const char *)a3 len:(unint64_t)a4
{
  if (self->_termWidth)
  {
    [(BRCTermDumper *)self _putsAndCrop:a3 len:a4];
  }

  else
  {
    fwrite(a3, 1uLL, a4, self->_file);
  }
}

- (void)puts:(const char *)a3
{
  v5 = strlen(a3);

  [(BRCTermDumper *)self puts:a3 len:v5];
}

- (void)put:(id)a3
{
  v5 = a3;
  v6 = [a3 UTF8String];

  [(BRCTermDumper *)self puts:v6];
}

- (void)write:(const char *)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->_termWidth)
  {
    v4 = vsnprintf(__str, 0x800uLL, a3, &v9);
    if (v4 >= 0x800)
    {
      v5 = 2048;
    }

    else
    {
      v5 = v4;
    }

    [(BRCTermDumper *)self _putsAndCrop:__str len:v5, &v9];
  }

  else
  {
    *__str = &v9;
    vfprintf(self->_file, a3, &v9);
  }

  v6 = *MEMORY[0x1E69E9840];
}

@end