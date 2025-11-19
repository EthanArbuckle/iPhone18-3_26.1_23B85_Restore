size_t _CLIHelp_PrintSummary(int a1)
{
  v2 = a1 == 0;
  _CLIHelp_PrintUsageLine(gRootOptions);
  v3 = MEMORY[0x1E69E9858];
  fputc(10, *MEMORY[0x1E69E9858]);
  result = _CLIHelp_PrintOptions(gRootOptions, "Global options:", (4 * v2), v4, v5, v6, v7, v8);
  v10 = result;
  v11 = 0;
  for (i = gRootOptions; *i == 3; i += 104)
  {
    if (a1 || (*(i + 49) & 1) == 0)
    {
      result = strlen(*(i + 8));
      if (v11 <= result)
      {
        v11 = result;
      }
    }

LABEL_9:
    ;
  }

  if (*i)
  {
    goto LABEL_9;
  }

  v13 = *gRootOptions;
  v24 = v10;
  if (*gRootOptions)
  {
    v14 = (gRootOptions + 104);
    v15 = *gRootOptions;
    while (a1 || v15 != 3 || (*(v14 - 55) & 1) == 0)
    {
      v16 = *v14;
      v14 += 26;
      v15 = v16;
      if (!v16)
      {
        goto LABEL_16;
      }
    }

    v17 = 0;
  }

  else
  {
LABEL_16:
    v17 = 1;
  }

  v18 = 0;
  v23 = v17;
  if (a1)
  {
    v17 = 1;
  }

  if (v17)
  {
    v19 = "Commands";
  }

  else
  {
    v19 = "Commonly used commands";
  }

  v20 = (gRootOptions + 104);
  while (2)
  {
    if (v13 == 3)
    {
      if (a1 || (*(v20 - 55) & 1) == 0)
      {
        if (!v18)
        {
          fprintf(*v3, "%s:\n", v19);
        }

        result = fprintf(*v3, "%*s%-*s    %s\n", 4, "", v11, *(v20 - 12), *(v20 - 2));
        ++v18;
      }

      goto LABEL_32;
    }

    if (v13)
    {
LABEL_32:
      v21 = *v20;
      v20 += 13;
      v13 = v21;
      continue;
    }

    break;
  }

  if (v24 | v18)
  {
    result = fputc(10, *v3);
  }

  if (v23)
  {
    if (!v18)
    {
      return result;
    }

    return fprintf(*v3, "See '%s help <command>' for more info about a command.\n\n", gProgramName);
  }

  fprintf(*v3, "See '%s help' for a full list of commands.\n", gProgramName);
  if (v18)
  {
    return fprintf(*v3, "See '%s help <command>' for more info about a command.\n\n", gProgramName);
  }

  v22 = *v3;

  return fputc(10, v22);
}

uint64_t _CLIHelp_PrintOptionName(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 4))
  {
    v10 = FPrintF(a2, "-%c", a3, a4, a5, a6, a7, a8, *(a1 + 4));
    if (*(a1 + 8))
    {
      v10 = FPrintF(a2, ", ", a3, a4, a5, a6, a7, a8, v21) + v10;
    }
  }

  else
  {
    v10 = 0;
  }

  if (*a1 == 4)
  {
    v11 = 91;
    if ((*(a1 + 48) & 2) == 0)
    {
      v11 = 60;
    }

    v12 = FPrintF(a2, "%c%s%c", a3, a4, a5, a6, a7, a8, v11);
    return (v12 + v10);
  }

  if (*(a1 + 8))
  {
    v10 = FPrintF(a2, "--%s", a3, a4, a5, a6, a7, a8, *(a1 + 8)) + v10;
  }

  v13 = *(a1 + 48);
  if ((v13 & 1) == 0)
  {
    if ((v13 & 8) != 0)
    {
      v14 = 1;
      if ((v13 & 2) != 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v14 = *(a1 + 40) == 0;
      if ((v13 & 2) != 0)
      {
LABEL_14:
        v15 = "[<%s>]";
        v16 = !v14;
        v17 = "[=<%s>]";
        if (!v16)
        {
          v15 = "[%s]";
          v17 = "[=%s]";
        }

        if (*(a1 + 8))
        {
          v18 = v17;
        }

        else
        {
          v18 = v15;
        }

        goto LABEL_23;
      }
    }

    if (v14)
    {
      v18 = " %s";
    }

    else
    {
      v18 = " <%s>";
    }

LABEL_23:
    v19 = *(a1 + 40);
    if (!v19)
    {
      v19 = "...";
    }

    v12 = FPrintF(a2, v18, a3, a4, a5, a6, a7, a8, v19);
    return (v12 + v10);
  }

  return v10;
}

uint64_t _CLIPrintCommandNotFound(uint64_t a1, uint64_t a2)
{
  v2 = *MEMORY[0x1E69E9848];
  if (a2)
  {
    return fprintf(v2, "error: unknown %s command '%s'. See '%s help %s' for a list of commands.\n");
  }

  else
  {
    return fprintf(v2, "error: unknown command '%s'. See '%s help' for a list of commands.\n");
  }
}

uint64_t _CLIInteractiveReset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  FPrintF(*MEMORY[0x1E69E9858], "\r", a3, a4, a5, a6, a7, a8, v16);
  if (gCLIInteractivePrompt)
  {
    softLinkrl_callback_handler_remove[0]();
    (softLinkrl_callback_handler_install[0])(gCLIInteractivePrompt, _CLIInteractiveHandleLine);
  }

  else
  {
    v17 = 0;
    ASPrintF(&v17, "%s> ", v8, v9, v10, v11, v12, v13, gProgramName);
    v14 = v17;
    if (!v17)
    {
      gCLIInteractiveMode = 0;
      return 4294960568;
    }

    softLinkrl_callback_handler_remove[0]();
    (softLinkrl_callback_handler_install[0])(v14, _CLIInteractiveHandleLine);
    free(v14);
  }

  return 0;
}

uint64_t inithistory_truncate_file(uint64_t a1, uint64_t a2)
{
  if (editLibrary_sOnce != -1)
  {
    dispatch_once(&editLibrary_sOnce, &__block_literal_global_457);
  }

  v4 = dlsym(editLibrary_sLib, "history_truncate_file");
  softLinkhistory_truncate_file[0] = v4;

  return (v4)(a1, a2);
}

void *__editLibrary_block_invoke()
{
  result = dlopen("/usr/lib/libedit.dylib", 2);
  editLibrary_sLib = result;
  return result;
}

uint64_t initwrite_history(uint64_t a1)
{
  if (editLibrary_sOnce != -1)
  {
    dispatch_once(&editLibrary_sOnce, &__block_literal_global_457);
  }

  v2 = dlsym(editLibrary_sLib, "write_history");
  softLinkwrite_history[0] = v2;

  return (v2)(a1);
}

uint64_t initrl_callback_handler_remove()
{
  if (editLibrary_sOnce != -1)
  {
    dispatch_once(&editLibrary_sOnce, &__block_literal_global_457);
  }

  v0 = dlsym(editLibrary_sLib, "rl_callback_handler_remove");
  softLinkrl_callback_handler_remove[0] = v0;

  return v0();
}

void _CLIInteractiveHandleLine(void *a1)
{
  __s2 = 0;
  v16 = 0;
  v15 = 0;
  if (!a1)
  {
    goto LABEL_21;
  }

  if (_CLIInteractiveLineHook(a1, 0))
  {
LABEL_3:
    v2 = 0;
    goto LABEL_4;
  }

  v4 = (softLinkhistory_expand[0])(a1, &__s2);
  if (v4 && *__s2)
  {
    fprintf(*MEMORY[0x1E69E9848], "%s\n", __s2);
  }

  v2 = 0;
  if ((v4 & 0x80000000) == 0 && v4 != 2)
  {
    v3 = __s2;
    if (!__s2)
    {
      v2 = 0;
      goto LABEL_24;
    }

    if (!strcasecmp(__s2, "q"))
    {
      v2 = -6752;
      goto LABEL_23;
    }

    if (strcasecmp(v3, "quit") && strcasecmp(v3, "exit"))
    {
      v2 = strcasecmp(v3, "history");
      if (v2)
      {
        if (!strcasecmp(v3, "?"))
        {
          free(v3);
          __s2 = strdup("help");
          if (!__s2)
          {
            v2 = -6752;
            goto LABEL_24;
          }
        }
      }

      else if (*var_history_length[0]() >= 1)
      {
        v5 = 0;
        v6 = MEMORY[0x1E69E9848];
        do
        {
          v7 = var_history_base[0]();
          v8 = (softLinkhistory_get[0])((*v7 + v5++));
          if (v8)
          {
            fprintf(*v6, "%d: %s\n", v5, *v8);
          }
        }

        while (v5 < *var_history_length[0]());
      }

      if (*var_history_length[0]() <= 0)
      {
        v12 = __s2;
      }

      else
      {
        v9 = *var_history_base[0]();
        v10 = var_history_length[0]();
        v11 = (softLinkhistory_get[0])((v9 + *v10 - 1));
        v12 = __s2;
        if (v11 && !strcmp(*v11, __s2))
        {
LABEL_41:
          if (v2)
          {
            v2 = ParseCommandLineIntoArgV(__s2, &v16, &v15);
            if (!v2)
            {
              gArgC = 0;
              if (gArgVAlt)
              {
                free(gArgVAlt);
                gArgVAlt = 0;
              }

              gMutableArgC = 0;
              if (gMutableArgV)
              {
                free(gMutableArgV);
                gMutableArgV = 0;
              }

              if (gCLIInteractivePrompt)
              {
                free(gCLIInteractivePrompt);
                gCLIInteractivePrompt = 0;
              }

              gArgI = 0;
              gArgC = v16;
              v13 = v15;
              gArgV = v15;
              v14 = gRootOptions;
              if (gRootOptions)
              {
                v14 = CLIParse(gRootOptions, 0);
              }

              FreeCommandLineArgV(v14, v13);
              goto LABEL_3;
            }
          }

          goto LABEL_4;
        }
      }

      (softLinkadd_history[0])(v12);
      goto LABEL_41;
    }

LABEL_21:
    v2 = -6752;
  }

LABEL_4:
  v3 = __s2;
  if (!__s2)
  {
    if (!a1)
    {
      goto LABEL_6;
    }

LABEL_24:
    free(a1);
    if (!v2)
    {
      goto LABEL_25;
    }

LABEL_28:
    gCLIInteractiveMode = 0;
    return;
  }

LABEL_23:
  free(v3);
  if (a1)
  {
    goto LABEL_24;
  }

LABEL_6:
  if (v2)
  {
    goto LABEL_28;
  }

LABEL_25:
  if (gCLIInteractiveBeginning == 1)
  {
    gCLIInteractiveBeginning = 0;
    return;
  }

  if (_CLIInteractiveReset())
  {
    goto LABEL_28;
  }
}

uint64_t _CLIInteractiveLineHook(uint64_t a1, uint64_t a2)
{
  v4 = gCLIInteractiveLineHandler_f;
  if (gCLIInteractiveLineHandler_f)
  {
    v5 = gCLIInteractiveLineHandler_ctx;
    gCLIInteractiveLineHandler_f = 0;
    gCLIInteractiveLineHandler_ctx = 0;
    if (gCLIInteractivePrompt)
    {
      free(gCLIInteractivePrompt);
      gCLIInteractivePrompt = 0;
    }

    v4(a1, a2, v5);
  }

  else
  {
    result = gCLIInteractiveLineHandler_b;
    if (!gCLIInteractiveLineHandler_b)
    {
      return result;
    }

    v7 = _Block_copy(gCLIInteractiveLineHandler_b);
    v8 = gCLIInteractiveLineHandler_b;
    gCLIInteractiveLineHandler_b = 0;

    if (gCLIInteractivePrompt)
    {
      free(gCLIInteractivePrompt);
      gCLIInteractivePrompt = 0;
    }

    v7[2](v7, a1, a2);
  }

  return 1;
}

uint64_t initadd_history(uint64_t a1)
{
  if (editLibrary_sOnce != -1)
  {
    dispatch_once(&editLibrary_sOnce, &__block_literal_global_457);
  }

  v2 = dlsym(editLibrary_sLib, "add_history");
  softLinkadd_history[0] = v2;

  return (v2)(a1);
}

uint64_t inithistory_get(uint64_t a1)
{
  if (editLibrary_sOnce != -1)
  {
    dispatch_once(&editLibrary_sOnce, &__block_literal_global_457);
  }

  v2 = dlsym(editLibrary_sLib, "history_get");
  softLinkhistory_get[0] = v2;

  return (v2)(a1);
}

void *initValhistory_base()
{
  if (editLibrary_sOnce != -1)
  {
    dispatch_once(&editLibrary_sOnce, &__block_literal_global_457);
  }

  result = dlsym(editLibrary_sLib, "history_base");
  variableValhistory_base = result;
  var_history_base[0] = history_baseFunction;
  return result;
}

void *initValhistory_length()
{
  if (editLibrary_sOnce != -1)
  {
    dispatch_once(&editLibrary_sOnce, &__block_literal_global_457);
  }

  result = dlsym(editLibrary_sLib, "history_length");
  variableValhistory_length = result;
  var_history_length[0] = history_lengthFunction;
  return result;
}

uint64_t inithistory_expand(uint64_t a1, uint64_t a2)
{
  if (editLibrary_sOnce != -1)
  {
    dispatch_once(&editLibrary_sOnce, &__block_literal_global_457);
  }

  v4 = dlsym(editLibrary_sLib, "history_expand");
  softLinkhistory_expand[0] = v4;

  return (v4)(a1, a2);
}

uint64_t initrl_callback_handler_install(uint64_t a1, uint64_t a2)
{
  if (editLibrary_sOnce != -1)
  {
    dispatch_once(&editLibrary_sOnce, &__block_literal_global_457);
  }

  v4 = dlsym(editLibrary_sLib, "rl_callback_handler_install");
  softLinkrl_callback_handler_install[0] = v4;

  return (v4)(a1, a2);
}

void _CLIInteractiveHandleSigIntDirect()
{
  if (!gCLIInteractiveSigIntTimerSource)
  {
    v0 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
    v1 = gCLIInteractiveSigIntTimerSource;
    gCLIInteractiveSigIntTimerSource = v0;

    if (gCLIInteractiveSigIntTimerSource)
    {
      dispatch_source_set_event_handler_f(gCLIInteractiveSigIntTimerSource, _CLIInteractiveHandleSigIntDeferred);
      v2 = gCLIInteractiveSigIntTimerSource;
      v3 = dispatch_time(0, 50000000);
      dispatch_source_set_timer(v2, v3, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
      v4 = gCLIInteractiveSigIntTimerSource;

      dispatch_resume(v4);
    }

    else
    {

      _CLIInteractiveHandleSigIntDeferred();
    }
  }
}

uint64_t _CLIInteractiveHandleSigIntDeferred()
{
  if (gCLIInteractiveSigIntTimerSource)
  {
    v0 = gCLIInteractiveSigIntTimerSource;
    dispatch_source_cancel(v0);
    v1 = gCLIInteractiveSigIntTimerSource;
    gCLIInteractiveSigIntTimerSource = 0;
  }

  v2 = MEMORY[0x1E69E9848];
  fputc(10, *MEMORY[0x1E69E9848]);
  if (!_CLIInteractiveLineHook(0, 1))
  {
    v3 = gCLIInteractiveSigIntCount++;
    if (v3 >= 1)
    {
      fwrite("Enter 'q', 'quit', or 'exit' to exit interactive mode.\n", 0x37uLL, 1uLL, *v2);
      gCLIInteractiveSigIntCount = 0;
    }
  }

  **var_rl_line_buffer[0]() = 0;

  return _CLIInteractiveReset();
}

void *initValrl_line_buffer()
{
  if (editLibrary_sOnce != -1)
  {
    dispatch_once(&editLibrary_sOnce, &__block_literal_global_457);
  }

  result = dlsym(editLibrary_sLib, "rl_line_buffer");
  variableValrl_line_buffer = result;
  var_rl_line_buffer[0] = rl_line_bufferFunction;
  return result;
}

uint64_t initrl_callback_read_char()
{
  if (editLibrary_sOnce != -1)
  {
    dispatch_once(&editLibrary_sOnce, &__block_literal_global_457);
  }

  v0 = dlsym(editLibrary_sLib, "rl_callback_read_char");
  softLinkrl_callback_read_char[0] = v0;

  return v0();
}

void *initValrl_instream()
{
  if (editLibrary_sOnce != -1)
  {
    dispatch_once(&editLibrary_sOnce, &__block_literal_global_457);
  }

  result = dlsym(editLibrary_sLib, "rl_instream");
  variableValrl_instream = result;
  var_rl_instream[0] = rl_instreamFunction;
  return result;
}

uint64_t initread_history(uint64_t a1)
{
  if (editLibrary_sOnce != -1)
  {
    dispatch_once(&editLibrary_sOnce, &__block_literal_global_457);
  }

  v2 = dlsym(editLibrary_sLib, "read_history");
  softLinkread_history[0] = v2;

  return (v2)(a1);
}

uint64_t _CLIInteractiveCompleter(uint64_t a1, int a2)
{
  if (a2)
  {
    return 0;
  }

  else
  {
    return (softLinkrl_completion_matches[0])(a1, _CLIInteractiveGenerator);
  }
}

char *_CLIInteractiveGenerator(const char *a1, int a2)
{
  v4 = strlen(a1);
  v5 = &gRootOptions;
  if (a2)
  {
    v5 = &gCLIInteractiveNextCommand;
  }

  v6 = *v5;
  v7 = **v5;
  if (!v7)
  {
    return 0;
  }

  v8 = v4;
  for (i = v6 + 26; ; i += 26)
  {
    gCLIInteractiveNextCommand = i;
    if (v7 == 3)
    {
      v10 = *(i - 12);
      if (!strncasecmp(v10, a1, v8))
      {
        break;
      }
    }

    v11 = *i;
    v7 = v11;
    if (!v11)
    {
      return 0;
    }
  }

  return strdup(v10);
}

uint64_t initrl_completion_matches(uint64_t a1, uint64_t a2)
{
  if (editLibrary_sOnce != -1)
  {
    dispatch_once(&editLibrary_sOnce, &__block_literal_global_457);
  }

  v4 = dlsym(editLibrary_sLib, "rl_completion_matches");
  softLinkrl_completion_matches[0] = v4;

  return (v4)(a1, a2);
}

void *initValrl_attempted_completion_function()
{
  if (editLibrary_sOnce != -1)
  {
    dispatch_once(&editLibrary_sOnce, &__block_literal_global_457);
  }

  result = dlsym(editLibrary_sLib, "rl_attempted_completion_function");
  variableValrl_attempted_completion_function = result;
  var_rl_attempted_completion_function[0] = rl_attempted_completion_functionFunction;
  return result;
}

void *initValrl_readline_name()
{
  if (editLibrary_sOnce != -1)
  {
    dispatch_once(&editLibrary_sOnce, &__block_literal_global_457);
  }

  result = dlsym(editLibrary_sLib, "rl_readline_name");
  variableValrl_readline_name = result;
  var_rl_readline_name[0] = rl_readline_nameFunction;
  return result;
}

uint64_t _CLIHelp_PrintUsageLine(uint64_t a1)
{
  v2 = gRootOptions;
  v3 = gRootOptions != a1;
  v4 = MEMORY[0x1E69E9858];
  fprintf(*MEMORY[0x1E69E9858], "%s%*s%s", "\nUsage: ", 0, "", gProgramName);
  if (_CLIFindOption(gRootOptions, 5, v3, 0))
  {
    fwrite(" [global options]", 0x11uLL, 1uLL, *v4);
  }

  if (v2 == a1)
  {
    if (!_CLIFindOption(gRootOptions, 3, 0, 0))
    {
      goto LABEL_14;
    }

    v8 = *v4;
    v9 = " <command> [options] [args]";
    v10 = 27;
    goto LABEL_13;
  }

  v5 = *(a1 + 80);
  if (v5)
  {
    fprintf(*v4, " %s", *(v5 + 8));
    v6 = *(*(a1 + 80) + 72);
    if (v6)
    {
      if (_CLIFindOption(v6, 5, 0, 0))
      {
        fwrite(" [parent options]", 0x11uLL, 1uLL, *v4);
      }
    }
  }

  fprintf(*v4, " %s", *(a1 + 8));
  v7 = *(a1 + 72);
  if (v7)
  {
    if (!_CLIFindOption(v7, 3, 0, 0))
    {
      if (_CLIFindOption(*(a1 + 72), 5, 0, 0))
      {
        fwrite(" [options]", 0xAuLL, 1uLL, *v4);
      }

      for (i = *(a1 + 72); ; i += 104)
      {
        if (*i == 4)
        {
          if ((*(i + 48) & 2) != 0)
          {
            v14 = 93;
          }

          else
          {
            v14 = 62;
          }

          v16 = v14;
          if ((*(i + 48) & 2) != 0)
          {
            v15 = 91;
          }

          else
          {
            v15 = 60;
          }

          fprintf(*v4, " %c%s%c", v15, *(i + 8), v16);
        }

        else if (!*i)
        {
          goto LABEL_14;
        }
      }
    }

    v8 = *v4;
    v9 = " [options] <command> [sub-options] [args]";
    v10 = 41;
LABEL_13:
    fwrite(v9, v10, 1uLL, v8);
  }

LABEL_14:
  v11 = *v4;

  return fputc(10, v11);
}

uint64_t _CLIHelp_PrintOptions(int *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v9 = a3;
  v11 = a1;
  v12 = 0;
  v13 = 0;
  v14 = MEMORY[0x1E69E9858];
  v15 = a1;
  do
  {
    if ((v8 == 4 || (v8 - 6) <= 9) && ((v9 & 2) == 0 || (*(v15 + 48) & 0x40) == 0) && ((v9 & 4) == 0 || (*(v15 + 49) & 1) == 0))
    {
      if (a2 && !v12)
      {
        fputs(a2, *v14);
        v12 = 1;
      }

      v16 = _CLIHelp_PrintOptionName(v15, 0, a3, a4, a5, a6, a7, a8);
      if (v16 > v13)
      {
        v13 = v16;
      }
    }

    v17 = *(v15 + 104);
    v15 += 104;
    v8 = v17;
  }

  while (v17);
  v18 = *v11;
  if (!*v11)
  {
    v19 = 0;
    if (v12)
    {
      goto LABEL_52;
    }

    return v19;
  }

  v19 = 0;
  do
  {
    if (((v9 & 2) == 0 || (*(v11 + 48) & 0x40) == 0) && ((v9 & 4) == 0 || (*(v11 + 49) & 1) == 0))
    {
      if (v18 == 2)
      {
        fputc(10, *v14);
        v20 = *(v11 + 88);
        if (*v20)
        {
          fprintf(*v14, "%*s%s\n", 4, "", v20);
        }

        goto LABEL_46;
      }

      if (v18 == 4 || (v18 - 6) <= 9)
      {
        if (!v19)
        {
          fputc(10, *v14);
        }

        fprintf(*v14, "%*s", 4, "");
        v27 = _CLIHelp_PrintOptionName(v11, *v14, v21, v22, v23, v24, v25, v26);
        if ((*v11 - 13) >= 2)
        {
          if (*v11 == 15)
          {
            fprintf(*v14, "%*s    %s: ", v13 - v27, "", *(v11 + 88));
            if ((v9 & 8) == 0)
            {
              v41 = *v14;
              v42 = "Use help <command> to see all values.\n";
              v43 = 38;
              goto LABEL_39;
            }

            _CLIPrintNameValueDescriptors(*(v11 + 24), *v14, v35, v36, v37, v38, v39, v40, v53);
            if ((v9 & 1) == 0)
            {
LABEL_46:
              v19 = (v19 + 1);
              goto LABEL_47;
            }
          }

          else
          {
            fprintf(*v14, "%*s    %s\n", v13 - v27, "", *(v11 + 88));
            if ((v9 & 1) == 0)
            {
              goto LABEL_46;
            }
          }
        }

        else
        {
          v28 = *v14;
          if (*(v11 + 88))
          {
            fprintf(v28, "%*s    %s: ");
          }

          else
          {
            fprintf(v28, "%*s    ");
          }

          if ((v9 & 8) != 0)
          {
            _CLIPrintFlagDescriptors(*(v11 + 24), *v14, v29, v30, v31, v32, v33, v34, v52);
            if ((v9 & 1) == 0)
            {
              goto LABEL_46;
            }
          }

          else
          {
            v41 = *v14;
            v42 = "Use help <command> to see all flags.\n";
            v43 = 37;
LABEL_39:
            fwrite(v42, v43, 1uLL, v41);
            if ((v9 & 1) == 0)
            {
              goto LABEL_46;
            }
          }
        }

        if (*(v11 + 96))
        {
          FPrintF(*v14, "%*{text}", v44, v45, v46, v47, v48, v49, 2);
        }

        goto LABEL_46;
      }
    }

LABEL_47:
    v50 = *(v11 + 104);
    v11 += 104;
    v18 = v50;
  }

  while (v50);
  if (!v12)
  {
    return v19;
  }

LABEL_52:
  fputc(10, *v14);
  return v19;
}

uint64_t _CLIPrintFlagDescriptors(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  for (i = a1; ; i += 1 + v19 + 1)
  {
    v12 = strlen((i + 1));
    if (!v12)
    {
      break;
    }

    v19 = v12;
    if (i == a1)
    {
      v20 = "all, ";
    }

    else
    {
      v20 = ", ";
    }

    FPrintF(a2, "%s%s", v13, v14, v15, v16, v17, v18, v20);
  }

  return FPrintF(a2, ".\n", v13, v14, v15, v16, v17, v18, a9);
}

uint64_t _CLIPrintNameValueDescriptors(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*a1)
  {
    v10 = a1 + 2;
    v11 = -1;
    do
    {
      v12 = *v10;
      v10 += 2;
      ++v11;
    }

    while (v12);
    v13 = 0;
    v14 = a1 + 2;
    do
    {
      v15 = v13 + 1;
      if (v11 == v13)
      {
        v16 = ", or ";
      }

      else
      {
        v16 = ", ";
      }

      if (v11 < 2)
      {
        v16 = " or ";
      }

      if (v13)
      {
        v17 = v16;
      }

      else
      {
        v17 = "";
      }

      FPrintF(a2, "%s%s", a3, a4, a5, a6, a7, a8, v17);
      v18 = *v14;
      v14 += 2;
      v13 = v15;
    }

    while (v18);
  }

  return FPrintF(a2, ".\n", a3, a4, a5, a6, a7, a8, a9);
}

uint64_t _CLIOptionError(uint64_t a1, const char *a2, char a3)
{
  v5 = MEMORY[0x1E69E9848];
  fwrite("error: option ", 0xEuLL, 1uLL, *MEMORY[0x1E69E9848]);
  if (a3)
  {
    fprintf(*v5, "'%c' ");
  }

  else
  {
    v6 = *v5;
    if ((a3 & 2) != 0)
    {
      fprintf(v6, "'no-%s' ");
    }

    else
    {
      fprintf(v6, "'%s' ");
    }
  }

  return fprintf(*v5, "%s.\n", a2);
}

uint64_t _CLIGetArg(uint64_t a1, char a2, void *a3)
{
  if (gOptionPtr)
  {
    result = 0;
    *a3 = gOptionPtr;
    gOptionPtr = 0;
  }

  else
  {
    v4 = gArgI + 1;
    if (v4 >= gArgC)
    {
      _CLIOptionError(a1, "requires a value", a2);
      return 129;
    }

    else
    {
      result = 0;
      ++gArgI;
      *a3 = *(gArgV + 8 * v4);
    }
  }

  return result;
}

uint64_t CLIFlagsToValueEx(uint64_t a1, char *__s, uint64_t a3, int *a4)
{
  v5 = __s;
  v53 = 0;
  v54 = 0;
  v59 = 0;
  v7 = &__s[strlen(__s)];
  v56 = a3;
  while (2)
  {
    v8 = v5;
    do
    {
      if (v8 < v7)
      {
        v9 = v8;
        while (2)
        {
          v10 = 0;
          v11 = 44;
          do
          {
            if (*v9 == v11)
            {
              v5 = (v9 + 1);
              goto LABEL_12;
            }

            v11 = asc_191FF055B[++v10];
          }

          while (v10 != 2);
          if (++v9 != v7)
          {
            continue;
          }

          break;
        }
      }

      v9 = v7;
      v5 = v7;
      if (v8 == v7)
      {
        v41 = v59;
        if (!v59)
        {
          v41 = a1;
        }

        result = (v41 | v54) & ~v53;
        v43 = a4;
        if (a4)
        {
          v44 = 0;
          goto LABEL_55;
        }

        return result;
      }

LABEL_12:
      v12 = v9 - v8;
      v13 = strnicmp_prefix(v8, v9 - v8, "+");
      if (v13)
      {
        v14 = strnicmp_prefix(v8, v12, "-");
        if (v14)
        {
          v15 = v8;
        }

        else
        {
          v15 = v8 + 1;
        }

        if (!v14)
        {
          --v12;
        }

        v16 = v14 == 0;
      }

      else
      {
        v16 = 0;
        v15 = v8 + 1;
        --v12;
      }

      v8 = v5;
    }

    while (!v12);
    v17 = strnicmpx(v15, v12, "none");
    v24 = v17 == 0;
    if (!v17)
    {
      a1 = 0;
    }

    if (*a3 > 0x3Fu)
    {
      a3 = *a3;
      goto LABEL_58;
    }

    v57 = a1;
    v25 = 0;
    v26 = a3;
    LOBYTE(a3) = *a3;
LABEL_25:
    v61 = v24;
    v27 = (v26 + 1);
    v62 = strlen(v26 + 1);
    if (v62)
    {
      v34 = strnicmpx(v15, v12, "all");
      v24 = v34 == 0;
      if (!v34)
      {
        v25 |= 1 << a3;
        goto LABEL_41;
      }

      v58 = a3;
      v60 = v25;
      v35 = &v27[v62];
      v36 = v27;
      while (1)
      {
        v37 = v36;
        if (v36 >= v35)
        {
LABEL_32:
          v38 = &v27[v62];
          v36 = &v27[v62];
          if (v37 == v35)
          {
            v25 = v60;
            v24 = 0;
            if (v61)
            {
              goto LABEL_43;
            }

LABEL_41:
            v26 = &v27[v62 + 1];
            a3 = *v26;
            if (*v26 > 0x3Fu)
            {
LABEL_58:
              FPrintF(*MEMORY[0x1E69E9848], "error: Flag bit out-of-range: %u\n", v18, v19, v20, v21, v22, v23, a3);
              result = 0;
              v43 = a4;
              if (a4)
              {
                v44 = -6710;
                goto LABEL_55;
              }

              return result;
            }

            goto LABEL_25;
          }
        }

        else
        {
          v38 = v36;
          v39 = v36;
          while (1)
          {
            v40 = *v39++;
            if (v40 == 47)
            {
              break;
            }

            v38 = v39;
            if (v39 == v35)
            {
              goto LABEL_32;
            }
          }

          v36 = v38 + 1;
        }

        if (v38 - v37 == v12 && !memicmp(v37, v15, v12))
        {
          v25 = (1 << v58) | v60;
          goto LABEL_43;
        }
      }
    }

    if (v61)
    {
LABEL_43:
      a1 = v57;
      if (v13)
      {
        if (v16)
        {
          v53 |= v25;
        }

        else
        {
          v59 |= v25;
        }

        a3 = v56;
      }

      else
      {
        v54 |= v25;
        a3 = v56;
      }

      continue;
    }

    break;
  }

  v45 = MEMORY[0x1E69E9848];
  FPrintF(*MEMORY[0x1E69E9848], "error: Unknown flag '%.*s'. Valid flags: ", v28, v29, v30, v31, v32, v33, v12);
  _CLIPrintFlagDescriptors(v56, *v45, v46, v47, v48, v49, v50, v51, v52);
  result = 0;
  v43 = a4;
  if (a4)
  {
    v44 = -6735;
LABEL_55:
    *v43 = v44;
  }

  return result;
}

uint64_t CLIArgNameValueParse(uint64_t a1, char *a2, int *a3, const char **a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a2;
  if (!a2)
  {
    v12 = gArgI;
    if (gArgI >= gArgC || (++gArgI, (v10 = *(gArgV + 8 * v12)) == 0))
    {
      FPrintF(*MEMORY[0x1E69E9848], "error: No %s specified. Valid values: ", a3, a4, a5, a6, a7, a8, a1);
      goto LABEL_12;
    }
  }

  v13 = *a4;
  if (!*a4)
  {
LABEL_8:
    FPrintF(*MEMORY[0x1E69E9848], "error: Bad %s: '%s'. Valid values: ", a3, a4, a5, a6, a7, a8, a1);
LABEL_12:
    _CLIPrintNameValueDescriptors(a4, *MEMORY[0x1E69E9848], v16, v17, v18, v19, v20, v21, v24);
    result = 0;
    if (!a3)
    {
      return result;
    }

    v23 = -6705;
    goto LABEL_14;
  }

  v14 = a4;
  while (strcasecmp(v10, v13))
  {
    v15 = v14[2];
    v14 += 2;
    v13 = v15;
    if (!v15)
    {
      goto LABEL_8;
    }
  }

  result = *(v14 + 2);
  if (a3)
  {
    v23 = 0;
LABEL_14:
    *a3 = v23;
  }

  return result;
}

const char **CLIHelpCommand(char *a1)
{
  if (a1)
  {
    v2 = _CLIFindOption(gRootOptions, 3, 0, a1);
    if (v2)
    {

      return _CLIHelp_PrintCommand(v2, 1, 8);
    }

    else
    {
      v4 = *(gRootOptions + 80);

      return _CLIPrintCommandNotFound(a1, v4);
    }
  }

  else
  {

    return _CLIHelp_PrintSummary(1);
  }
}

const char **_CLIHelpCommand()
{
  v0 = gArgI;
  if (gArgI >= gArgC)
  {
    return CLIHelpCommand(0);
  }

  ++gArgI;
  return CLIHelpCommand(*(gArgV + 8 * v0));
}

uint64_t _CLIHelpOption(int a1, char *a2)
{
  v2 = a2;
  if (a2 || (v4 = gArgI + 1, v4 < gArgC) && (++gArgI, (v2 = *(gArgV + 8 * v4)) != 0))
  {
    v3 = _CLIFindOption(gRootOptions, 3, 0, v2);
    if (!v3)
    {
      _CLIPrintCommandNotFound(v2, *(gRootOptions + 80));
      return 4294960544;
    }
  }

  else
  {
    v3 = gCLICurrentCommand;
    if (!gCLICurrentCommand || *(gCLICurrentCommand + 64) == _CLIHelpCommand)
    {
      _CLIHelp_PrintSummary(1);
      return 4294960544;
    }
  }

  _CLIHelp_PrintCommand(v3, 0, 0);
  return 4294960544;
}

uint64_t _CLIVersionOption(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (*(a1 + 16))
  {
    v2 = v1 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (!v2 && !strcmp(*(a1 + 16), v1))
  {
    fprintf(*MEMORY[0x1E69E9858], "%s version %s\n");
  }

  else
  {
    fprintf(*MEMORY[0x1E69E9858], "%s version %s (%s)\n");
  }

  return 4294960544;
}

uint64_t _CLIInteractiveOption()
{
  if (!gCLIInteractiveMode)
  {
    gCLIInteractiveMode = 1;
    gCLIInteractivePending = 1;
  }

  return 0;
}

uint64_t CLIInteractiveReadLine(const char *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v10 = strdup(a1);
    if (!v10)
    {
      return 4294960568;
    }

    v11 = v10;
    a1 = gCLIInteractivePrompt;
    if (gCLIInteractivePrompt)
    {
      free(gCLIInteractivePrompt);
    }

    gCLIInteractivePrompt = v11;
  }

  gCLIInteractiveLineHandler_f = a3;
  gCLIInteractiveLineHandler_ctx = a4;

  return _CLIInteractiveReset(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t CLIInteractiveReadLine_b(const char *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (a1)
  {
    v5 = strdup(a1);
    if (!v5)
    {
      v17 = 4294960568;
      goto LABEL_7;
    }

    v6 = v5;
    if (gCLIInteractivePrompt)
    {
      free(gCLIInteractivePrompt);
    }

    gCLIInteractivePrompt = v6;
  }

  v7 = _Block_copy(v4);
  v8 = gCLIInteractiveLineHandler_b;
  gCLIInteractiveLineHandler_b = v7;

  v17 = _CLIInteractiveReset(v9, v10, v11, v12, v13, v14, v15, v16);
LABEL_7:

  return v17;
}

uint64_t CLIArgToValue(uint64_t a1, unsigned __int8 *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9, uint64_t a10)
{
  v10 = a2;
  v44 = 0;
  v43 = 0;
  if (!a2)
  {
    v11 = gArgI;
    if (gArgI >= gArgC || (++gArgI, (v10 = *(gArgV + 8 * v11)) == 0))
    {
      FPrintF(*MEMORY[0x1E69E9848], "error: no %s specified. Valid values: ", a3, a4, a5, a6, a7, a8, a1);
      goto LABEL_31;
    }
  }

  v44 = &a10;
  v12 = a9;
  if (!a9)
  {
LABEL_24:
    FPrintF(*MEMORY[0x1E69E9848], "error: bad %s: '%s'. Valid values: ", a3, a4, a5, a6, a7, a8, a1);
LABEL_31:
    v44 = &a10;
    v27 = 0;
    v28 = a9;
    if (a9)
    {
      v29 = a9;
      do
      {
        if (strcasecmp(v29, "<any-true-ish>") && strcasecmp(v29, "<any-false-ish>") && strcasecmp(v29, "<any-int>"))
        {
          ++v44;
        }

        ++v27;
        v30 = v44++;
        v29 = *v30;
      }

      while (*v30);
    }

    v44 = &a10;
    if (a9)
    {
      v31 = 0;
      do
      {
        if (strcasecmp(v28, "<any-true-ish>") && strcasecmp(v28, "<any-false-ish>") && strcasecmp(v28, "<any-int>"))
        {
          ++v44;
        }

        if (v27 - 1 == v31)
        {
          v38 = ", or ";
        }

        else
        {
          v38 = ", ";
        }

        if (v27 < 3)
        {
          v38 = " or ";
        }

        if (!v31)
        {
          v38 = "";
        }

        FPrintF(*MEMORY[0x1E69E9848], "%s%s", v32, v33, v34, v35, v36, v37, v38);
        v39 = v44++;
        v28 = *v39;
        ++v31;
      }

      while (*v39);
    }

    FPrintF(*MEMORY[0x1E69E9848], "\n", v20, v21, v22, v23, v24, v25, v40);
    result = 0;
    if (a3)
    {
      *a3 = -6705;
    }

    return result;
  }

  while (!strcasecmp(v12, "<any-true-ish>"))
  {
    if (!strnicmpx(v10, -1, "true") || !strnicmpx(v10, -1, "yes") || !strnicmpx(v10, -1, "y") || !strnicmpx(v10, -1, "on") || !strnicmpx(v10, -1, "1"))
    {
      v43 = 1;
      goto LABEL_27;
    }

LABEL_23:
    v19 = v44++;
    v12 = *v19;
    if (!*v19)
    {
      goto LABEL_24;
    }
  }

  if (strcasecmp(v12, "<any-false-ish>"))
  {
    if (!strcasecmp(v12, "<any-int>"))
    {
      if (SNScanF(v10, 0xFFFFFFFFFFFFFFFFLL, "%i", v13, v14, v15, v16, v17, &v43) == 1)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v18 = v44++;
      v43 = *v18;
      if (!strcasecmp(v10, v12))
      {
        goto LABEL_27;
      }
    }

    goto LABEL_23;
  }

  if (strnicmpx(v10, -1, "false") && strnicmpx(v10, -1, "no") && strnicmpx(v10, -1, "n") && strnicmpx(v10, -1, "off") && strnicmpx(v10, -1, "0"))
  {
    goto LABEL_23;
  }

  v43 = 0;
LABEL_27:
  if (a3)
  {
    *a3 = 0;
  }

  return v43;
}

void CLIOutputBegin()
{
  if (gCLIInteractiveMode)
  {
    gCLIInteractiveBeginning = 1;
  }
}

uint64_t CLIOutputEnd(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  gCLIInteractiveBeginning = 0;
  if (gCLIInteractiveMode)
  {
    return _CLIInteractiveReset(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return a1;
}

uint64_t CLIProgressClear(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (gCLIProgressMax >= 1)
  {
    result = FPrintF(*MEMORY[0x1E69E9848], "\r%*s\r", a3, a4, a5, a6, a7, a8, gCLIProgressMax);
    gCLIProgressMax = 0;
  }

  return result;
}

uint64_t CLIProgressUpdate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = MEMORY[0x1E69E9848];
  FPrintF(*MEMORY[0x1E69E9848], "\r", a3, a4, a5, a6, a7, a8, v25);
  v22 = FPrintF(*v9, "%V", v10, v11, v12, v13, v14, v15, a1);
  v23 = *v9;
  if (gCLIProgressMax <= v22)
  {
    result = FPrintF(v23, "\r", v16, v17, v18, v19, v20, v21, v26);
  }

  else
  {
    result = FPrintF(v23, "%*s\r", v16, v17, v18, v19, v20, v21, (gCLIProgressMax - v22));
  }

  gCLIProgressMax = v22;
  return result;
}

void CLIPromptForPIN(int a1, int a2, void *a3)
{
  v11 = a3;
  v12 = MEMORY[0x1E69E9848];
  if ((a1 & 0x10000) != 0)
  {
    FPrintF(*MEMORY[0x1E69E9848], "### PIN incorrect.\n", v5, v6, v7, v8, v9, v10, v24);
  }

  if (a2 >= 1)
  {
    v13 = mach_absolute_time();
    if (SecondsToUpTicks_sOnce != -1)
    {
      dispatch_once_f(&SecondsToUpTicks_sOnce, &SecondsToUpTicks_sMultiplier, _SecondsToUpTicksInit);
    }

    v14 = v13 + SecondsToUpTicks_sMultiplier * a2;
    if (gCLIPINTimer)
    {
      v15 = gCLIPINTimer;
      dispatch_source_cancel(v15);
      v16 = gCLIPINTimer;
      gCLIPINTimer = 0;
    }

    v17 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
    v18 = gCLIPINTimer;
    gCLIPINTimer = v17;

    v19 = gCLIPINTimer;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __CLIPromptForPIN_block_invoke;
    handler[3] = &unk_1E73A2A18;
    v29 = v14;
    v28 = v11;
    dispatch_source_set_event_handler(v19, handler);
    v20 = gCLIPINTimer;
    v21 = dispatch_time(0, 1000000000);
    dispatch_source_set_timer(v20, v21, 0x3B9ACA00uLL, 0x5F5E100uLL);
    dispatch_resume(gCLIPINTimer);
  }

  if (gCLIProgressMax >= 1)
  {
    FPrintF(*v12, "\r%*s\r", v5, v6, v7, v8, v9, v10, gCLIProgressMax);
    gCLIProgressMax = 0;
  }

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __CLIPromptForPIN_block_invoke_2;
  v25[3] = &unk_1E73A2A40;
  v26 = v11;
  v22 = v11;
  CLIInteractiveReadLine_b("Enter PIN: ", v23, v25);
}

uint64_t __CLIPromptForPIN_block_invoke(uint64_t a1)
{
  v2 = mach_absolute_time();
  v3 = *(a1 + 40);
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (v5 != 0 && v4)
  {
    UpTicksToSeconds(v5);
    return CLIProgressUpdate("Throttling for %llu seconds...", v6, v7, v8, v9, v10, v11, v12);
  }

  else
  {
    if (gCLIPINTimer)
    {
      v14 = gCLIPINTimer;
      dispatch_source_cancel(v14);
      v15 = gCLIPINTimer;
      gCLIPINTimer = 0;
    }

    v16 = *(a1 + 32);

    return CLIPromptForPIN(0, 0xFFFFFFFFLL, v16);
  }
}

void __CLIPromptForPIN_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2 || (a3 & 1) != 0)
  {
    FPrintF(*MEMORY[0x1E69E9848], "User canceled\n", a3, a4, a5, a6, a7, a8, v13);
    if (gCLIPINTimer)
    {
      v10 = gCLIPINTimer;
      dispatch_source_cancel(v10);
      v11 = gCLIPINTimer;
      gCLIPINTimer = 0;
    }

    v12 = *(*(a1 + 32) + 16);

    v12();
  }

  else
  {
    v9 = *(a1 + 32);
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
    (*(v9 + 16))(v9, v14);
  }
}

uint64_t CLIScheduleExit(uint64_t result)
{
  if (!gCLIInteractiveMode)
  {
    exit(result);
  }

  gExitCode = result;
  gCLIInteractiveMode = 0;
  return result;
}

void CUCLIPrefs(void *a1, const char *a2, void *a3)
{
  v206 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v182 = a3;
  SwitchToMobileUser();
  v6 = &constantValkAppleIDValidatedItemsRecordDataCertificateType;
  v7 = gArgI;
  v8 = gArgC;
  v9 = "";
  if (gArgI >= gArgC)
  {
    v10 = "";
  }

  else
  {
    v10 = *(gArgV + 8 * gArgI++);
    ++v7;
  }

  if (*v10 && strcasecmp(v10, "read") && strcasecmp(v10, "get"))
  {
    if (strcasecmp(v10, "write") && strcasecmp(v10, "set"))
    {
      if (strcasecmp(v10, "delete") && strcasecmp(v10, "remove"))
      {
        if (!strcasecmp(v10, "keys"))
        {
          v150 = MEMORY[0x1E69E9858];
          v151 = fileno(*MEMORY[0x1E69E9858]);
          v152 = isatty(v151);
          v186 = 0u;
          v187 = 0u;
          v188 = 0u;
          v189 = 0u;
          v153 = v182;
          v154 = [v153 countByEnumeratingWithState:&v186 objects:v202 count:16];
          if (v154)
          {
            v155 = v154;
            v180 = v5;
            v156 = 0;
            v157 = *v187;
            if (v152)
            {
              v158 = "\x1B[35m";
            }

            else
            {
              v158 = "";
            }

            do
            {
              v159 = 0;
              v160 = v156;
              do
              {
                if (*v187 != v157)
                {
                  objc_enumerationMutation(v153);
                }

                v156 = *(*(&v186 + 1) + 8 * v159);

                FPrintF(*v150, "%s%@%s\n", v161, v162, v163, v164, v165, v166, v158);
                ++v159;
                v160 = v156;
              }

              while (v155 != v159);
              v155 = [v153 countByEnumeratingWithState:&v186 objects:v202 count:16];
            }

            while (v155);

            v5 = v180;
          }
        }

        else
        {
          FPrintF(*MEMORY[0x1E69E9848], "error: Bad command '%s'. Must be 'read', 'write', 'delete', or 'keys'.\n", v17, v18, v19, v20, v21, v22, v10);
        }

        goto LABEL_120;
      }

      if (!gCUCLIFilePath)
      {
        cf = 0;
LABEL_93:
        if (v7 < v8 && !strcasecmp(*(gArgV + 8 * v7), "*"))
        {
          gArgI = v7 + 1;
          if (cf)
          {
            v167 = [(__CFString *)cf allKeys];
          }

          else
          {
            v167 = CFPrefs_CopyKeys(v5, 0);
          }

          v192 = 0u;
          v193 = 0u;
          v190 = 0u;
          v191 = 0u;
          v168 = v167;
          v169 = [v168 countByEnumeratingWithState:&v190 objects:v203 count:16];
          if (v169)
          {
            v170 = v169;
            v171 = 0;
            v172 = v5;
            v173 = *v191;
            v181 = v172;
            if (v172)
            {
              v174 = v172;
            }

            else
            {
              v174 = *MEMORY[0x1E695E8A8];
            }

            do
            {
              v175 = 0;
              v176 = v171;
              do
              {
                if (*v191 != v173)
                {
                  objc_enumerationMutation(v168);
                }

                v171 = *(*(&v190 + 1) + 8 * v175);

                if (cf)
                {
                  [(__CFString *)cf removeObjectForKey:v171];
                }

                else
                {
                  CFPreferencesSetAppValue(v171, 0, v174);
                }

                ++v175;
                v176 = v171;
              }

              while (v170 != v175);
              v170 = [v168 countByEnumeratingWithState:&v190 objects:v203 count:16];
            }

            while (v170);

            v5 = v181;
          }

          v147 = v168;

          v7 = gArgI;
          v8 = gArgC;
        }

        else
        {
          v147 = 0;
        }

        if (v7 < v8)
        {
          if (v5)
          {
            v148 = v5;
          }

          else
          {
            v148 = *MEMORY[0x1E695E8A8];
          }

          do
          {
            gArgI = v7 + 1;
            v149 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(gArgV + 8 * v7)];
            if (cf)
            {
              [(__CFString *)cf setObject:0 forKeyedSubscript:v149];
            }

            else
            {
              CFPreferencesSetAppValue(v149, 0, v148);
            }

            v7 = gArgI;
          }

          while (gArgI < gArgC);
        }

        if (!gCUCLIFilePath)
        {
          CFPreferencesAppSynchronize(v5);
          notify_post(a2);
          v32 = 0;
          v35 = 0;
          v31 = v147;
          goto LABEL_80;
        }

        v140 = CFPropertyListWriteToFilePath(cf, "binary1", gCUCLIFilePath);
        v32 = 0;
        v31 = v147;
        if (!v140)
        {
          v35 = 0;
          goto LABEL_80;
        }

LABEL_106:
        FPrintF(*MEMORY[0x1E69E9848], "error: %#m\n", v141, v142, v143, v144, v145, v146, v140);
        goto LABEL_107;
      }

      v135 = CFPropertyListCreateFromFilePath(gCUCLIFilePath, 1uLL, 0);
      if (!v135)
      {
LABEL_120:
        v31 = 0;
        v32 = 0;
LABEL_121:
        v35 = 0;
        cf = 0;
        goto LABEL_80;
      }

      v136 = v135;
      objc_opt_class();
      cf = v136;
      if (objc_opt_isKindOfClass())
      {
        v7 = gArgI;
        v8 = gArgC;
        goto LABEL_93;
      }

LABEL_16:
      FPrintF(*MEMORY[0x1E69E9848], "error: Prefs file is not a dictionary\n", v25, v26, v27, v28, v29, v30, v177);
      v31 = 0;
      v32 = 0;
LABEL_107:
      v35 = 0;
      gExitCode = 1;
      goto LABEL_80;
    }

    if (v7 >= v8)
    {
      FPrintF(*MEMORY[0x1E69E9848], "error: No key specified\n", v11, v12, v13, v14, v15, v16, v177);
      v31 = 0;
      v32 = 0;
    }

    else
    {
      gArgI = v7 + 1;
      v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(gArgV + 8 * v7)];
      v44 = gArgI;
      if (gArgI < gArgC)
      {
        ++gArgI;
        v45 = *(gArgV + 8 * v44);
        if (!gCUCLIFilePath)
        {
          v137 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v45];
          if (v5)
          {
            v138 = v5;
          }

          else
          {
            v138 = *MEMORY[0x1E695E8A8];
          }

          CFPreferencesSetAppValue(v32, v137, v138);
          CFPreferencesAppSynchronize(v5);
          notify_post(a2);
          v31 = 0;
          goto LABEL_121;
        }

        v46 = CFPropertyListCreateFromFilePath(gCUCLIFilePath, 1uLL, 0);
        if (v46)
        {
          v47 = v46;
          objc_opt_class();
          cf = v47;
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            FPrintF(*MEMORY[0x1E69E9848], "error: Prefs file is not a dictionary\n", v48, v49, v50, v51, v52, v53, v177);
            v31 = 0;
            goto LABEL_107;
          }
        }

        else
        {
          v47 = [MEMORY[0x1E695DF90] dictionary];
        }

        v139 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v45];
        [(__CFString *)v47 setObject:v139 forKeyedSubscript:v32];

        cf = v47;
        v140 = CFPropertyListWriteToFilePath(v47, "binary1", gCUCLIFilePath);
        v31 = 0;
        if (v140)
        {
          goto LABEL_106;
        }

        v35 = 0;
        goto LABEL_80;
      }

      FPrintF(*MEMORY[0x1E69E9848], "error: No value specified\n", v38, v39, v40, v41, v42, v43, v177);
      v31 = 0;
    }

    cf = 0;
    goto LABEL_107;
  }

  if (gCUCLIFilePath)
  {
    v23 = CFPropertyListCreateFromFilePath(gCUCLIFilePath, 1uLL, 0);
    if (v23)
    {
      v24 = v23;
      objc_opt_class();
      cf = v24;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      cf = [MEMORY[0x1E695DF90] dictionary];
    }
  }

  else
  {
    cf = 0;
  }

  v33 = fileno(*MEMORY[0x1E69E9858]);
  v34 = isatty(v33);
  v179 = v5;
  if (gArgI >= gArgC)
  {
    v36 = v34;
    if (cf)
    {
      v37 = [(__CFString *)cf allKeys];
    }

    else
    {
      v37 = CFPrefs_CopyKeys(v5, 0);
    }

    v54 = v37;
    v55 = [v37 sortedArrayUsingSelector:sel_localizedCaseInsensitiveCompare_];

    v200 = 0u;
    v201 = 0u;
    v198 = 0u;
    v199 = 0u;
    v56 = v55;
    v57 = [v56 countByEnumeratingWithState:&v198 objects:v205 count:16];
    if (v57)
    {
      v58 = v57;
      v59 = 0;
      LODWORD(v60) = 0;
      v61 = *v199;
      do
      {
        v62 = 0;
        v63 = v59;
        do
        {
          if (*v199 != v61)
          {
            objc_enumerationMutation(v56);
          }

          v59 = *(*(&v198 + 1) + 8 * v62);

          v64 = [v59 length];
          if (v60 <= v64)
          {
            v60 = v64;
          }

          else
          {
            v60 = v60;
          }

          ++v62;
          v63 = v59;
        }

        while (v58 != v62);
        v58 = [v56 countByEnumeratingWithState:&v198 objects:v205 count:16];
      }

      while (v58);

      v6 = &constantValkAppleIDValidatedItemsRecordDataCertificateType;
    }

    else
    {
      v60 = 0;
    }

    v196 = 0u;
    v197 = 0u;
    v194 = 0u;
    v195 = 0u;
    v31 = v56;
    v65 = [v31 countByEnumeratingWithState:&v194 objects:v204 count:16];
    if (v65)
    {
      v66 = v65;
      v67 = 0;
      v35 = 0;
      v68 = *v195;
      if (v36)
      {
        v9 = "\x1B[0m";
      }

      v69 = *MEMORY[0x1E695E8A8];
      if (v179)
      {
        v69 = v179;
      }

      applicationID = v69;
      obj = v31;
      do
      {
        v70 = 0;
        v71 = v67;
        v72 = v35;
        do
        {
          if (*v195 != v68)
          {
            objc_enumerationMutation(obj);
          }

          v67 = *(*(&v194 + 1) + 8 * v70);

          if (cf)
          {
            v73 = [(__CFString *)cf objectForKeyedSubscript:v67];
          }

          else
          {
            v73 = CFPreferencesCopyAppValue(v67, applicationID);
          }

          v35 = v73;

          v74 = MEMORY[0x1E69E9858];
          FPrintF(*MEMORY[0x1E69E9858], "%-*@ : %s", v75, v76, v77, v78, v79, v80, v60);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v35 length] <= 0x80)
          {
            v87 = *v74;
            v88 = [v35 bytes];
            [v35 length];
            v178 = v88;
            v74 = MEMORY[0x1E69E9858];
            FPrintF(v87, "%.3H", v89, v90, v91, v92, v93, v94, v178);
          }

          else
          {
            FPrintF(*v74, "%@", v81, v82, v83, v84, v85, v86, v35);
          }

          FPrintF(*v74, "%s\n", v95, v96, v97, v98, v99, v100, v9);
          ++v70;
          v71 = v67;
          v72 = v35;
        }

        while (v66 != v70);
        v31 = obj;
        v66 = [obj countByEnumeratingWithState:&v194 objects:v204 count:16];
      }

      while (v66);

      v6 = &constantValkAppleIDValidatedItemsRecordDataCertificateType;
    }

    else
    {
      v35 = 0;
    }

    v5 = v179;
    if (![v31 count])
    {
      FPrintF(*MEMORY[0x1E69E9848], "No prefs found\n", v101, v102, v103, v104, v105, v106, v177);
    }
  }

  else
  {
    v31 = 0;
    v35 = 0;
  }

  v107 = *(v6 + 642);
  if (v107 >= gArgC)
  {
    v32 = 0;
  }

  else
  {
    if (v5)
    {
      v108 = v5;
    }

    else
    {
      v108 = *MEMORY[0x1E695E8A8];
    }

    do
    {
      v109 = gArgV;
      *(v6 + 642) = v107 + 1;
      v110 = *(v109 + 8 * v107);
      v111 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v110];
      if (cf)
      {
        v112 = [(__CFString *)cf objectForKeyedSubscript:v111];
      }

      else
      {
        v112 = CFPreferencesCopyAppValue(v111, v108);
      }

      v113 = v112;

      if (v113)
      {
        v35 = v113;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v113 length] <= 0x80)
        {
          v126 = *MEMORY[0x1E69E9858];
          v127 = [v113 bytes];
          [v113 length];
          v128 = v126;
          v6 = &constantValkAppleIDValidatedItemsRecordDataCertificateType;
          FPrintF(v128, "%.3H\n", v129, v130, v131, v132, v133, v134, v127);
        }

        else
        {
          FPrintF(*MEMORY[0x1E69E9858], "%@\n", v120, v121, v122, v123, v124, v125, v113);
        }
      }

      else
      {
        FPrintF(*MEMORY[0x1E69E9848], "error: Key '%s' does not exist.\n", v114, v115, v116, v117, v118, v119, v110);
        v35 = 0;
      }

      v107 = *(v6 + 642);
    }

    while (v107 < gArgC);
    v32 = 0;
    v5 = v179;
  }

LABEL_80:
}

uint64_t CoreAudioCopyDataSourceName(uint64_t a1, int a2, uint64_t a3)
{
  v7 = 0;
  v8 = a2;
  v6 = 0x6F7574706C73636ELL;
  v5[0] = &v8;
  v5[1] = 4;
  v5[2] = a3;
  v5[3] = 8;
  v4 = 32;
  return softLinkAudioObjectGetPropertyData_606(a1, &v6, 0, 0, &v4, v5);
}

uint64_t initAudioObjectGetPropertyData_608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (CoreAudioLibrary_sOnce_609 != -1)
  {
    dispatch_once(&CoreAudioLibrary_sOnce_609, &__block_literal_global_610);
  }

  v12 = dlsym(CoreAudioLibrary_sLib_611, "AudioObjectGetPropertyData");
  softLinkAudioObjectGetPropertyData_606 = v12;

  return (v12)(a1, a2, a3, a4, a5, a6);
}

void *__CoreAudioLibrary_block_invoke_616()
{
  result = dlopen("/System/Library/Frameworks/CoreAudio.framework/CoreAudio", 2);
  CoreAudioLibrary_sLib_611 = result;
  return result;
}

uint64_t CoreAudioCopyPropertyData(uint64_t a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  v13 = 0;
  size_4[0] = a2;
  size_4[1] = a3;
  size_4[2] = a4;
  size = 0;
  v14 = 100;
  while (1)
  {
    v15 = (softLinkAudioObjectGetPropertyDataSize[0])(a1, size_4, a6, a5, &size);
    if (v15)
    {
      v18 = v15;
      goto LABEL_14;
    }

    if (!size)
    {
      if (v13)
      {
        free(v13);
        v13 = 0;
      }

LABEL_10:
      v18 = 0;
      *a7 = v13;
      *a8 = size;
      return v18;
    }

    v16 = malloc_type_realloc(v13, size, 0x1C589BF0uLL);
    if (!v16)
    {
      break;
    }

    v13 = v16;
    PropertyData_606 = softLinkAudioObjectGetPropertyData_606(a1, size_4, a6, a5, &size, v16);
    if (!PropertyData_606)
    {
      goto LABEL_10;
    }

    v18 = PropertyData_606;
    if (!--v14)
    {
      goto LABEL_7;
    }
  }

  v18 = 4294960568;
LABEL_14:
  if (v13)
  {
LABEL_7:
    free(v13);
  }

  return v18;
}

uint64_t initAudioObjectGetPropertyDataSize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (CoreAudioLibrary_sOnce_609 != -1)
  {
    dispatch_once(&CoreAudioLibrary_sOnce_609, &__block_literal_global_610);
  }

  v10 = dlsym(CoreAudioLibrary_sLib_611, "AudioObjectGetPropertyDataSize");
  softLinkAudioObjectGetPropertyDataSize[0] = v10;

  return (v10)(a1, a2, a3, a4, a5);
}

uint64_t CoreAudioGetPropertyData(uint64_t a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, void *a9)
{
  v12[0] = a2;
  v12[1] = a3;
  v12[2] = a4;
  v11 = a8;
  result = softLinkAudioObjectGetPropertyData_606(a1, v12, a6, a5, &v11, a7);
  if (a9)
  {
    v10 = result == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    *a9 = v11;
  }

  return result;
}

uint64_t CoreAudioSetPropertyData(uint64_t a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[0] = a2;
  v9[1] = a3;
  v9[2] = a4;
  return softLinkAudioObjectSetPropertyData(a1, v9, a6, a5, a8, a7);
}

uint64_t initAudioObjectSetPropertyData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (CoreAudioLibrary_sOnce_609 != -1)
  {
    dispatch_once(&CoreAudioLibrary_sOnce_609, &__block_literal_global_610);
  }

  v12 = dlsym(CoreAudioLibrary_sLib_611, "AudioObjectSetPropertyData");
  softLinkAudioObjectSetPropertyData = v12;

  return (v12)(a1, a2, a3, a4, a5, a6);
}

uint64_t CoreAudioFindDeviceByUID(uint64_t a1, uint64_t a2)
{
  v6 = a1;
  v4 = 0x676C6F6272756964;
  v5 = 0;
  v3 = 4;
  return softLinkAudioObjectGetPropertyData_606(1, &v4, 8, &v6, &v3, a2);
}

uint64_t CoreAudioGetDefaultAudioDevice(uint64_t a1)
{
  v3 = 0x676C6F62644F7574;
  v4 = 0;
  v2 = 4;
  return softLinkAudioObjectGetPropertyData_606(1, &v3, 0, 0, &v2, a1);
}

uint64_t CoreAudioSetDefaultAudioDevice(int a1, int a2, _DWORD *a3)
{
  v12 = a1;
  v8 = 0;
  v10 = 0x676C6F62644F7574;
  v11 = 0;
  if (a3)
  {
    v9 = 4;
    if (softLinkAudioObjectGetPropertyData_606(1, &v10, 0, 0, &v9, a3))
    {
      *a3 = 0;
    }
  }

  if (a2)
  {
    v8 = 1;
    v5 = 4;
    v6 = &v8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v9 = 4;
  return softLinkAudioObjectSetPropertyData(1, &v10, v5, v6, 4, &v12);
}

uint64_t CoreAudioRampParameterStart(NSObject **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, NSObject *a7, uint64_t a8, float a9, double a10)
{
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2000000000;
  v40 = 0;
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x2000000000;
  v36 = 0;
  v20 = (softLinkAudioUnitGetParameter_622[0])(a2, a3, a4, a5, &v40);
  if (!v20)
  {
    v21 = v38[6];
    if (a7)
    {
      v22 = a7;
    }

    else
    {
      v22 = MEMORY[0x1E69E96A0];
    }

    v23 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v22);
    if (v23)
    {
      v24 = v23;
      v25 = (a10 * 1000000000.0 / a6);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 0x40000000;
      handler[2] = __CoreAudioRampParameterStart_block_invoke;
      handler[3] = &unk_1E73A2A68;
      v29 = (a9 - v21) / a6;
      v30 = v15;
      v31 = v14;
      handler[6] = v35;
      handler[7] = a2;
      v32 = v13;
      v33 = a6;
      v34 = a9;
      handler[4] = a8;
      handler[5] = &v37;
      handler[8] = v23;
      handler[9] = a1;
      dispatch_source_set_event_handler(v23, handler);
      v26 = dispatch_time(0, v25);
      dispatch_source_set_timer(v24, v26, v25, 0x4C4B40uLL);
      if (a1)
      {
        *a1 = v24;
      }

      dispatch_resume(v24);
      v20 = 0;
    }

    else
    {
      v20 = 4294960596;
    }
  }

  _Block_object_dispose(v35, 8);
  _Block_object_dispose(&v37, 8);
  return v20;
}

void __CoreAudioRampParameterStart_block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = *(a1 + 80) + *(*(*(a1 + 40) + 8) + 24);
  (softLinkAudioUnitSetParameter_624[0])(*(a1 + 56), *(a1 + 84), *(a1 + 88), *(a1 + 92), 0, *(*(*(a1 + 40) + 8) + 24));
  v2 = *(*(a1 + 48) + 8);
  v3 = *(v2 + 24) + 1;
  *(v2 + 24) = v3;
  if (v3 >= *(a1 + 96) || *(*(*(a1 + 40) + 8) + 24) == *(a1 + 100))
  {
    dispatch_source_cancel(*(a1 + 64));
    v4 = *(a1 + 100);
    if (*(*(*(a1 + 40) + 8) + 24) != v4)
    {
      (softLinkAudioUnitSetParameter_624[0])(*(a1 + 56), *(a1 + 84), *(a1 + 88), *(a1 + 92), 0, v4);
    }

    v5 = *(a1 + 32);
    if (v5)
    {
      (*(v5 + 16))();
    }

    if (!*(a1 + 72))
    {
      v6 = *(a1 + 64);

      dispatch_release(v6);
    }
  }
}

uint64_t initAudioUnitSetParameter_626(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, float a6)
{
  if (AudioToolboxLibrary_sOnce_627 != -1)
  {
    dispatch_once(&AudioToolboxLibrary_sOnce_627, &__block_literal_global_9);
  }

  v12 = dlsym(AudioToolboxLibrary_sLib_628, "AudioUnitSetParameter");
  softLinkAudioUnitSetParameter_624[0] = v12;
  v13.n128_f32[0] = a6;

  return (v12)(a1, a2, a3, a4, a5, v13);
}

void *__AudioToolboxLibrary_block_invoke_631()
{
  result = dlopen("/System/Library/Frameworks/AudioToolbox.framework/AudioToolbox", 2);
  AudioToolboxLibrary_sLib_628 = result;
  return result;
}

uint64_t initAudioUnitGetParameter_634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (AudioToolboxLibrary_sOnce_627 != -1)
  {
    dispatch_once(&AudioToolboxLibrary_sOnce_627, &__block_literal_global_9);
  }

  v10 = dlsym(AudioToolboxLibrary_sLib_628, "AudioUnitGetParameter");
  softLinkAudioUnitGetParameter_622[0] = v10;

  return (v10)(a1, a2, a3, a4, a5);
}

uint64_t _AESGCMCoreCryptoDecryptMessageOneShot(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  result = 4294960591;
  if (a3 == 32 && a5 == 12 && a12 == 16)
  {
    ccaes_gcm_decrypt_mode();
    return ccgcm_one_shot();
  }

  return result;
}

uint64_t _AESGCMCoreCryptoEncryptMessageOneShot(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a3 != 32 || a5 != 12 || a12 != 16)
  {
    return 4294960591;
  }

  ccaes_gcm_encrypt_mode();

  return ccgcm_one_shot();
}

uint64_t _AESGCMCoreCryptoDecryptMessage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  result = 4294960591;
  if (a3 == 12 && a10 == 16)
  {
    result = ccgcm_reset();
    if (!result)
    {
      result = ccgcm_set_iv();
      if (!result)
      {
        if (!a5 || (result = ccgcm_aad(), !result))
        {
          if (!a7)
          {
            return ccgcm_finalize();
          }

          result = ccgcm_update();
          if (!result)
          {
            return ccgcm_finalize();
          }
        }
      }
    }
  }

  return result;
}

uint64_t _AESGCMCoreCryptoEncryptMessage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  result = 4294960591;
  if (a3 == 12 && a10 == 16)
  {
    result = ccgcm_reset();
    if (!result)
    {
      result = ccgcm_set_iv();
      if (!result)
      {
        if (!a5 || (result = ccgcm_aad(), !result))
        {
          if (!a7 || (result = ccgcm_update(), !result))
          {

            return ccgcm_finalize();
          }
        }
      }
    }
  }

  return result;
}

void _AESGCMCoreCryptoFinalize(uint64_t a1)
{
  v2 = (a1 + 32);
  v1 = *(a1 + 32);
  v3 = (v2 - 1);
  if (!v1)
  {
    --v2;
    goto LABEL_6;
  }

  if (!*v3 || (memset_s(v1, **v3, 0, **v3), v1 = *v2, *v3 = 0, v1))
  {
    free(v1);
LABEL_6:
    *v2 = 0;
  }
}

uint64_t _AESGCMCoreCryptoInitialize(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 32)
  {
    goto LABEL_5;
  }

  if (a2 != 2)
  {
    if (a2 == 1)
    {
      v5 = ccaes_gcm_encrypt_mode();
      goto LABEL_7;
    }

LABEL_5:
    v6 = 4294960591;
    goto LABEL_10;
  }

  v5 = ccaes_gcm_decrypt_mode();
LABEL_7:
  *(a1 + 24) = v5;
  if (!*v5)
  {
    v6 = 4294960553;
    goto LABEL_10;
  }

  v7 = malloc_type_calloc(1uLL, *v5, 0x1000040451B5BE8uLL);
  *(a1 + 32) = v7;
  if (!v7)
  {
    v6 = 4294960568;
    goto LABEL_10;
  }

  v6 = ccgcm_init();
  if (v6)
  {
LABEL_10:
    _AESGCMCoreCryptoFinalize(a1);
  }

  return v6;
}

uint64_t _ChaCha20Poly1305DecryptMessageOneShot(uint64_t a1, __int32 *a2, uint64_t a3, __int32 *a4, uint64_t a5, unsigned int *a6, unint64_t a7, int8x16_t *a8, unint64_t a9, int8x16_t *a10, uint64_t a11, uint64_t a12)
{
  if (a3 == 32 && a5 == 12 && a12 == 16)
  {
    return _chacha20_poly1305_decrypt_all(a2, a4, 12, a6, a7, a8, a9, a10, a11, 16);
  }

  else
  {
    return 4294960591;
  }
}

uint64_t _ChaCha20Poly1305EncryptMessageOneShot(uint64_t a1, __int32 *a2, uint64_t a3, __int32 *a4, uint64_t a5, unsigned int *a6, unint64_t a7, int8x16_t *a8, unint64_t a9, int8x16_t *a10, uint64_t a11, uint64_t a12)
{
  result = 4294960591;
  if (a3 == 32 && a5 == 12 && a12 == 16)
  {
    _chacha20_poly1305_encrypt_all(a2, a4, 12, a6, a7, a8, a9, a10, a11);
    return 0;
  }

  return result;
}

uint64_t _ChaCha20Poly1305Initialize(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  if (a4 != 32)
  {
    return 4294960591;
  }

  result = 0;
  v6 = *a3;
  *(a1 + 40) = a3[1];
  *(a1 + 24) = v6;
  return result;
}

const void *CryptoAEADCreate(uint64_t (**a1)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  if (gCryptoAEADInitOnce != -1)
  {
    dispatch_once_f(&gCryptoAEADInitOnce, 0, _CryptoAEADGetTypeID);
  }

  Instance = _CFRuntimeCreateInstance();
  v11 = Instance;
  if (!Instance)
  {
    v12 = -6728;
    if (!a5)
    {
      return v11;
    }

    goto LABEL_7;
  }

  *(Instance + 248) = 0u;
  *(Instance + 232) = 0u;
  *(Instance + 216) = 0u;
  *(Instance + 200) = 0u;
  *(Instance + 184) = 0u;
  *(Instance + 168) = 0u;
  *(Instance + 152) = 0u;
  *(Instance + 136) = 0u;
  *(Instance + 120) = 0u;
  *(Instance + 104) = 0u;
  *(Instance + 88) = 0u;
  *(Instance + 72) = 0u;
  *(Instance + 56) = 0u;
  *(Instance + 24) = 0u;
  *(Instance + 40) = 0u;
  *(Instance + 280) = 0u;
  *(Instance + 296) = 0u;
  *(Instance + 264) = 0u;
  *(Instance + 16) = a1;
  v12 = (*a1)(Instance, a2, a3, a4);
  if (v12)
  {
    CFRelease(v11);
    v11 = 0;
  }

  if (a5)
  {
LABEL_7:
    *a5 = v12;
  }

  return v11;
}

uint64_t _CryptoAEADGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gCryptoAEADTypeID = result;
  return result;
}

uint64_t CryptoAEADEncryptMessageOneShot(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v17 = *(a1 + 32);
  if (!v17)
  {
    v20 = 0;
    v19 = CryptoAEADCreate(a1, 1, a2, a3, &v20);
    result = v20;
    if (v20)
    {
      if (!v19)
      {
        return result;
      }
    }

    else
    {
      if (!v19)
      {
        return 4294960534;
      }

      v20 = (*(v19[2] + 16))(v19, a4, a5, a6, a7, a8, a9, a10, a11, a12);
    }

    CFRelease(v19);
    return v20;
  }

  return v17();
}

uint64_t CryptoAEADDecryptMessageOneShot(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v17 = *(a1 + 40);
  if (!v17)
  {
    v20 = 0;
    v19 = CryptoAEADCreate(a1, 2, a2, a3, &v20);
    result = v20;
    if (v20)
    {
      if (!v19)
      {
        return result;
      }
    }

    else
    {
      if (!v19)
      {
        return 4294960534;
      }

      v20 = (*(v19[2] + 24))(v19, a4, a5, a6, a7, a8, a9, a10, a11, a12);
    }

    CFRelease(v19);
    return v20;
  }

  return v17();
}

uint64_t CryptoHashOneShot(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v9 = a1;
  (*a1)(&v9);
  (*(a1 + 8))(&v9, a2, a3);
  return (*(a1 + 16))(&v9, a4);
}

uint64_t CryptoHMACInit(_BYTE *a1, uint64_t a2, char *a3, unint64_t a4)
{
  v4 = a4;
  v15 = *MEMORY[0x1E69E9840];
  if (*(a2 + 32) < a4)
  {
    *a1 = a2;
    (*a2)(a1);
    (*(*a1 + 8))(a1, a3, v4);
    a3 = v13;
    (*(*a1 + 16))(a1, v13);
    v4 = *(a2 + 24);
  }

  if (v4)
  {
    v8 = a1 + 216;
    v9 = v14;
    v10 = v4;
    do
    {
      v11 = *a3++;
      *v9++ = v11 ^ 0x36;
      *v8++ = v11 ^ 0x5C;
      --v10;
    }

    while (v10);
  }

  for (; v4 < *(a2 + 32); ++v4)
  {
    v14[v4] = 54;
    a1[v4 + 216] = 92;
  }

  *a1 = a2;
  (*a2)(a1);
  return (*(*a1 + 8))(a1, v14, *(a2 + 32));
}

uint64_t CryptoHMACFinal(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  (*(*a1 + 16))(a1);
  *a1 = v4;
  (*v4)(a1);
  (*(*a1 + 8))(a1, a1 + 27, *(v4 + 32));
  (*(*a1 + 8))(a1, a2, *(v4 + 24));
  v5 = *(*a1 + 16);

  return v5(a1, a2);
}

uint64_t CryptoHMACOneShot(uint64_t a1, char *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  CryptoHMACInit(v10, a1, a2, a3);
  (*(*&v10[0] + 8))(v10, a4, a5);
  return CryptoHMACFinal(v10, a6);
}

uint64_t cstr_setn(uint64_t a1, const void *a2, int a3)
{
  result = cstr_alloc(a1, a3 + 1);
  if ((result & 0x80000000) == 0)
  {
    *(*a1 + a3) = 0;
    if (a2)
    {
      if (a3 >= 1)
      {
        result = memmove(*a1, a2, a3);
      }
    }

    *(a1 + 8) = a3;
  }

  return result;
}

uint64_t cstr_alloc(uint64_t a1, int a2)
{
  v2 = *(a1 + 12);
  if (v2 >= a2)
  {
    return 0;
  }

  v4 = 2 * v2;
  if (v4 <= a2)
  {
    v4 = a2;
  }

  if (v4 <= 4)
  {
    v5 = 4;
  }

  else
  {
    v5 = v4;
  }

  v6 = malloc_type_malloc(v5, 0x100004077774924uLL);
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = v6;
  if (*a1)
  {
    v6[*(a1 + 8)] = 0;
    if (*(a1 + 12) >= 1)
    {
      v8 = *(a1 + 8);
      if (v8 >= 1)
      {
        memcpy(v6, *a1, v8);
      }

      free(*a1);
    }
  }

  *a1 = v7;
  *(a1 + 12) = v5;
  return 1;
}

void cstr_clear_free(void **a1)
{
  v2 = *(a1 + 4) - 1;
  *(a1 + 4) = v2;
  if (!v2)
  {
    v4 = *(a1 + 3);
    if (v4 >= 1)
    {
      bzero(*a1, v4);
      free(*a1);
    }

    free(a1);
  }
}

void cstr_free(void **a1)
{
  v2 = *(a1 + 4) - 1;
  *(a1 + 4) = v2;
  if (!v2)
  {
    if (*(a1 + 3) >= 1)
    {
      free(*a1);
    }

    free(a1);
  }
}

uint64_t cstr_set_length(uint64_t a1, int a2)
{
  v4 = *(a1 + 8);
  if (v4 > a2)
  {
    *(*a1 + a2) = 0;
LABEL_7:
    *(a1 + 8) = a2;
    return 1;
  }

  if (v4 >= a2)
  {
    return 0;
  }

  v5 = a2 + 1;
  if ((cstr_alloc(a1, a2 + 1) & 0x80000000) == 0)
  {
    bzero((*a1 + *(a1 + 8)), v5 - *(a1 + 8));
    goto LABEL_7;
  }

  return 0xFFFFFFFFLL;
}

Class initAKAccountManager()
{
  if (AuthKitLibrary_sOnce != -1)
  {
    dispatch_once(&AuthKitLibrary_sOnce, &__block_literal_global_169);
  }

  result = objc_getClass("AKAccountManager");
  classAKAccountManager = result;
  getAKAccountManagerClass[0] = AKAccountManagerFunction;
  return result;
}

void *__AuthKitLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/AuthKit.framework/AuthKit", 2);
  AuthKitLibrary_sLib = result;
  return result;
}

Class initACAccountStore()
{
  if (AccountsLibrary_sOnce != -1)
  {
    dispatch_once(&AccountsLibrary_sOnce, &__block_literal_global_159);
  }

  result = objc_getClass("ACAccountStore");
  classACAccountStore = result;
  getACAccountStoreClass[0] = ACAccountStoreFunction;
  return result;
}

void *__AccountsLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/Accounts.framework/Accounts", 2);
  AccountsLibrary_sLib = result;
  return result;
}

void *__AppleAccountLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/AppleAccount.framework/AppleAccount", 2);
  AppleAccountLibrary_sLib = result;
  return result;
}

uint64_t init_AppleIDAuthenticationCopyCertificateInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (MobileCoreServicesLibrary_sOnce_791 != -1)
  {
    dispatch_once(&MobileCoreServicesLibrary_sOnce_791, &__block_literal_global_163);
  }

  v8 = dlsym(MobileCoreServicesLibrary_sLib_792, "_AppleIDAuthenticationCopyCertificateInfo");
  softLink_AppleIDAuthenticationCopyCertificateInfo[0] = v8;

  return (v8)(a1, a2, a3, a4);
}

void *__MobileCoreServicesLibrary_block_invoke_795()
{
  result = dlopen("/System/Library/Frameworks/MobileCoreServices.framework/MobileCoreServices", 2);
  MobileCoreServicesLibrary_sLib_792 = result;
  return result;
}

uint64_t initValkAppleIDValidatedItemsRecordDataCertificateType()
{
  if (MobileCoreServicesLibrary_sOnce_791 != -1)
  {
    dispatch_once(&MobileCoreServicesLibrary_sOnce_791, &__block_literal_global_163);
  }

  v0 = dlsym(MobileCoreServicesLibrary_sLib_792, "kAppleIDValidatedItemsRecordDataCertificateType");
  if (v0)
  {
    result = *v0;
    constantValkAppleIDValidatedItemsRecordDataCertificateType = result;
  }

  else
  {
    result = constantValkAppleIDValidatedItemsRecordDataCertificateType;
  }

  getkAppleIDValidatedItemsRecordDataCertificateType[0] = kAppleIDValidatedItemsRecordDataCertificateTypeFunction;
  return result;
}

uint64_t init_AppleIDCopySecIdentityForAppleIDAccount(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (MobileCoreServicesLibrary_sOnce_791 != -1)
  {
    dispatch_once(&MobileCoreServicesLibrary_sOnce_791, &__block_literal_global_163);
  }

  v6 = dlsym(MobileCoreServicesLibrary_sLib_792, "_AppleIDCopySecIdentityForAppleIDAccount");
  softLink_AppleIDCopySecIdentityForAppleIDAccount[0] = v6;

  return (v6)(a1, a2, a3);
}

void sub_191EF4928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void initSFAppleIDParseValidationRecordData(void *a1, void *a2, void *a3)
{
  v5 = SharingLibrary_sOnce;
  v6 = a3;
  v7 = a2;
  v8 = a1;
  if (v5 != -1)
  {
    dispatch_once(&SharingLibrary_sOnce, &__block_literal_global_832);
  }

  softLinkSFAppleIDParseValidationRecordData[0] = dlsym(SharingLibrary_sLib, "SFAppleIDParseValidationRecordData");
  (softLinkSFAppleIDParseValidationRecordData[0])(v8, v7, v6);
}

void *__SharingLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/Sharing.framework/Sharing", 2);
  SharingLibrary_sLib = result;
  return result;
}

id CUAltDSIDPrimary()
{
  if (AppleAccountLibrary_sOnce != -1)
  {
    dispatch_once(&AppleAccountLibrary_sOnce, &__block_literal_global_155);
  }

  v0 = objc_alloc_init(getACAccountStoreClass[0]());
  v1 = [v0 aa_primaryAppleAccount];
  v2 = [v1 aa_altDSID];

  return v2;
}

Class initAVAudioPlayer()
{
  if (AVFoundationLibrary_sOnce != -1)
  {
    dispatch_once(&AVFoundationLibrary_sOnce, &__block_literal_global_884);
  }

  result = objc_getClass("AVAudioPlayer");
  classAVAudioPlayer = result;
  getAVAudioPlayerClass[0] = AVAudioPlayerFunction;
  return result;
}

void *__AVFoundationLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/AVFoundation.framework/AVFoundation", 2);
  AVFoundationLibrary_sLib = result;
  return result;
}

id initValAVAudioSessionInterruptionNotification()
{
  if (softLinkOnceAVAudioSessionInterruptionNotification != -1)
  {
    dispatch_once(&softLinkOnceAVAudioSessionInterruptionNotification, &__block_literal_global_196);
  }

  v1 = constantValAVAudioSessionInterruptionNotification;

  return v1;
}

void __initValAVAudioSessionInterruptionNotification_block_invoke()
{
  if (AVFoundationLibrary_sOnce != -1)
  {
    dispatch_once(&AVFoundationLibrary_sOnce, &__block_literal_global_884);
  }

  v0 = dlsym(AVFoundationLibrary_sLib, "AVAudioSessionInterruptionNotification");
  if (v0)
  {
    objc_storeStrong(&constantValAVAudioSessionInterruptionNotification, *v0);
  }

  getAVAudioSessionInterruptionNotification = AVAudioSessionInterruptionNotificationFunction;
}

id initValAVAudioSessionCategoryAmbient()
{
  if (softLinkOnceAVAudioSessionCategoryAmbient != -1)
  {
    dispatch_once(&softLinkOnceAVAudioSessionCategoryAmbient, &__block_literal_global_199);
  }

  v1 = constantValAVAudioSessionCategoryAmbient;

  return v1;
}

void __initValAVAudioSessionCategoryAmbient_block_invoke()
{
  if (AVFoundationLibrary_sOnce != -1)
  {
    dispatch_once(&AVFoundationLibrary_sOnce, &__block_literal_global_884);
  }

  v0 = dlsym(AVFoundationLibrary_sLib, "AVAudioSessionCategoryAmbient");
  if (v0)
  {
    objc_storeStrong(&constantValAVAudioSessionCategoryAmbient, *v0);
  }

  getAVAudioSessionCategoryAmbient = AVAudioSessionCategoryAmbientFunction;
}

Class initAVAudioSession()
{
  if (AVFoundationLibrary_sOnce != -1)
  {
    dispatch_once(&AVFoundationLibrary_sOnce, &__block_literal_global_884);
  }

  result = objc_getClass("AVAudioSession");
  classAVAudioSession = result;
  getAVAudioSessionClass[0] = AVAudioSessionFunction;
  return result;
}

id initValCBAdvertisementDataIsConnectable()
{
  if (softLinkOnceCBAdvertisementDataIsConnectable != -1)
  {
    dispatch_once(&softLinkOnceCBAdvertisementDataIsConnectable, &__block_literal_global_198);
  }

  v1 = constantValCBAdvertisementDataIsConnectable;

  return v1;
}

void __initValCBAdvertisementDataIsConnectable_block_invoke()
{
  if (CoreBluetoothLibrary_sOnce != -1)
  {
    dispatch_once(&CoreBluetoothLibrary_sOnce, &__block_literal_global_1013);
  }

  v0 = dlsym(CoreBluetoothLibrary_sLib, "CBAdvertisementDataIsConnectable");
  if (v0)
  {
    objc_storeStrong(&constantValCBAdvertisementDataIsConnectable, *v0);
  }

  getCBAdvertisementDataIsConnectable = CBAdvertisementDataIsConnectableFunction;
}

void *__CoreBluetoothLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/CoreBluetooth.framework/CoreBluetooth", 2);
  CoreBluetoothLibrary_sLib = result;
  return result;
}

id initValCBAdvertisementDataAppleMfgData()
{
  if (softLinkOnceCBAdvertisementDataAppleMfgData != -1)
  {
    dispatch_once(&softLinkOnceCBAdvertisementDataAppleMfgData, &__block_literal_global_195);
  }

  v1 = constantValCBAdvertisementDataAppleMfgData;

  return v1;
}

void __initValCBAdvertisementDataAppleMfgData_block_invoke()
{
  if (CoreBluetoothLibrary_sOnce != -1)
  {
    dispatch_once(&CoreBluetoothLibrary_sOnce, &__block_literal_global_1013);
  }

  v0 = dlsym(CoreBluetoothLibrary_sLib, "CBAdvertisementDataAppleMfgData");
  if (v0)
  {
    objc_storeStrong(&constantValCBAdvertisementDataAppleMfgData, *v0);
  }

  getCBAdvertisementDataAppleMfgData = CBAdvertisementDataAppleMfgDataFunction;
}

id initValCBManagerIsPrivilegedDaemonKey()
{
  if (softLinkOnceCBManagerIsPrivilegedDaemonKey != -1)
  {
    dispatch_once(&softLinkOnceCBManagerIsPrivilegedDaemonKey, &__block_literal_global_201);
  }

  v1 = constantValCBManagerIsPrivilegedDaemonKey;

  return v1;
}

void __initValCBManagerIsPrivilegedDaemonKey_block_invoke()
{
  if (CoreBluetoothLibrary_sOnce != -1)
  {
    dispatch_once(&CoreBluetoothLibrary_sOnce, &__block_literal_global_1013);
  }

  v0 = dlsym(CoreBluetoothLibrary_sLib, "CBManagerIsPrivilegedDaemonKey");
  if (v0)
  {
    objc_storeStrong(&constantValCBManagerIsPrivilegedDaemonKey, *v0);
  }

  getCBManagerIsPrivilegedDaemonKey = CBManagerIsPrivilegedDaemonKeyFunction;
}

Class initCBPeripheralManager()
{
  if (CoreBluetoothLibrary_sOnce != -1)
  {
    dispatch_once(&CoreBluetoothLibrary_sOnce, &__block_literal_global_1013);
  }

  result = objc_getClass("CBPeripheralManager");
  classCBPeripheralManager = result;
  getCBPeripheralManagerClass[0] = CBPeripheralManagerFunction;
  return result;
}

id initValCBConnectPeripheralOptionConnectionUseCase()
{
  if (softLinkOnceCBConnectPeripheralOptionConnectionUseCase != -1)
  {
    dispatch_once(&softLinkOnceCBConnectPeripheralOptionConnectionUseCase, &__block_literal_global_317);
  }

  v1 = constantValCBConnectPeripheralOptionConnectionUseCase;

  return v1;
}

void __initValCBConnectPeripheralOptionConnectionUseCase_block_invoke()
{
  if (CoreBluetoothLibrary_sOnce_1144 != -1)
  {
    dispatch_once(&CoreBluetoothLibrary_sOnce_1144, &__block_literal_global_1145);
  }

  v0 = dlsym(CoreBluetoothLibrary_sLib_1146, "CBConnectPeripheralOptionConnectionUseCase");
  if (v0)
  {
    objc_storeStrong(&constantValCBConnectPeripheralOptionConnectionUseCase, *v0);
  }

  getCBConnectPeripheralOptionConnectionUseCase = CBConnectPeripheralOptionConnectionUseCaseFunction;
}

void *__CoreBluetoothLibrary_block_invoke_1149()
{
  result = dlopen("/System/Library/Frameworks/CoreBluetooth.framework/CoreBluetooth", 2);
  CoreBluetoothLibrary_sLib_1146 = result;
  return result;
}

id initValCBConnectPeripheralOptionClientBundleID()
{
  if (softLinkOnceCBConnectPeripheralOptionClientBundleID != -1)
  {
    dispatch_once(&softLinkOnceCBConnectPeripheralOptionClientBundleID, &__block_literal_global_314);
  }

  v1 = constantValCBConnectPeripheralOptionClientBundleID;

  return v1;
}

void __initValCBConnectPeripheralOptionClientBundleID_block_invoke()
{
  if (CoreBluetoothLibrary_sOnce_1144 != -1)
  {
    dispatch_once(&CoreBluetoothLibrary_sOnce_1144, &__block_literal_global_1145);
  }

  v0 = dlsym(CoreBluetoothLibrary_sLib_1146, "CBConnectPeripheralOptionClientBundleID");
  if (v0)
  {
    objc_storeStrong(&constantValCBConnectPeripheralOptionClientBundleID, *v0);
  }

  getCBConnectPeripheralOptionClientBundleID = CBConnectPeripheralOptionClientBundleIDFunction;
}

id initValCBManagerNeedsRestrictedStateOperation()
{
  if (softLinkOnceCBManagerNeedsRestrictedStateOperation != -1)
  {
    dispatch_once(&softLinkOnceCBManagerNeedsRestrictedStateOperation, &__block_literal_global_300);
  }

  v1 = constantValCBManagerNeedsRestrictedStateOperation;

  return v1;
}

void __initValCBManagerNeedsRestrictedStateOperation_block_invoke()
{
  if (CoreBluetoothLibrary_sOnce_1144 != -1)
  {
    dispatch_once(&CoreBluetoothLibrary_sOnce_1144, &__block_literal_global_1145);
  }

  v0 = dlsym(CoreBluetoothLibrary_sLib_1146, "CBManagerNeedsRestrictedStateOperation");
  if (v0)
  {
    objc_storeStrong(&constantValCBManagerNeedsRestrictedStateOperation, *v0);
  }

  getCBManagerNeedsRestrictedStateOperation = CBManagerNeedsRestrictedStateOperationFunction;
}

Class initCBCentralManager()
{
  if (CoreBluetoothLibrary_sOnce_1144 != -1)
  {
    dispatch_once(&CoreBluetoothLibrary_sOnce_1144, &__block_literal_global_1145);
  }

  result = objc_getClass("CBCentralManager");
  classCBCentralManager = result;
  getCBCentralManagerClass[0] = CBCentralManagerFunction;
  return result;
}

id initValCBAdvertisementDataManufacturerDataKey()
{
  if (softLinkOnceCBAdvertisementDataManufacturerDataKey != -1)
  {
    dispatch_once(&softLinkOnceCBAdvertisementDataManufacturerDataKey, &__block_literal_global_473);
  }

  v1 = constantValCBAdvertisementDataManufacturerDataKey;

  return v1;
}

void __initValCBAdvertisementDataManufacturerDataKey_block_invoke()
{
  if (CoreBluetoothLibrary_sOnce_1322 != -1)
  {
    dispatch_once(&CoreBluetoothLibrary_sOnce_1322, &__block_literal_global_1323);
  }

  v0 = dlsym(CoreBluetoothLibrary_sLib_1324, "CBAdvertisementDataManufacturerDataKey");
  if (v0)
  {
    objc_storeStrong(&constantValCBAdvertisementDataManufacturerDataKey, *v0);
  }

  getCBAdvertisementDataManufacturerDataKey = CBAdvertisementDataManufacturerDataKeyFunction;
}

void *__CoreBluetoothLibrary_block_invoke_1327()
{
  result = dlopen("/System/Library/Frameworks/CoreBluetooth.framework/CoreBluetooth", 2);
  CoreBluetoothLibrary_sLib_1324 = result;
  return result;
}

id initValCBAdvertisementDataDeviceAddress()
{
  if (softLinkOnceCBAdvertisementDataDeviceAddress != -1)
  {
    dispatch_once(&softLinkOnceCBAdvertisementDataDeviceAddress, &__block_literal_global_470);
  }

  v1 = constantValCBAdvertisementDataDeviceAddress;

  return v1;
}

void __initValCBAdvertisementDataDeviceAddress_block_invoke()
{
  if (CoreBluetoothLibrary_sOnce_1322 != -1)
  {
    dispatch_once(&CoreBluetoothLibrary_sOnce_1322, &__block_literal_global_1323);
  }

  v0 = dlsym(CoreBluetoothLibrary_sLib_1324, "CBAdvertisementDataDeviceAddress");
  if (v0)
  {
    objc_storeStrong(&constantValCBAdvertisementDataDeviceAddress, *v0);
  }

  getCBAdvertisementDataDeviceAddress = CBAdvertisementDataDeviceAddressFunction;
}

id initValCBCentralManagerScanOptionMatchingRuleMaskKey()
{
  if (softLinkOnceCBCentralManagerScanOptionMatchingRuleMaskKey != -1)
  {
    dispatch_once(&softLinkOnceCBCentralManagerScanOptionMatchingRuleMaskKey, &__block_literal_global_444);
  }

  v1 = constantValCBCentralManagerScanOptionMatchingRuleMaskKey;

  return v1;
}

void __initValCBCentralManagerScanOptionMatchingRuleMaskKey_block_invoke()
{
  if (CoreBluetoothLibrary_sOnce_1322 != -1)
  {
    dispatch_once(&CoreBluetoothLibrary_sOnce_1322, &__block_literal_global_1323);
  }

  v0 = dlsym(CoreBluetoothLibrary_sLib_1324, "CBCentralManagerScanOptionMatchingRuleMaskKey");
  if (v0)
  {
    objc_storeStrong(&constantValCBCentralManagerScanOptionMatchingRuleMaskKey, *v0);
  }

  getCBCentralManagerScanOptionMatchingRuleMaskKey = CBCentralManagerScanOptionMatchingRuleMaskKeyFunction;
}

id initValCBCentralManagerScanOptionMatchingRulePayloadKey()
{
  if (softLinkOnceCBCentralManagerScanOptionMatchingRulePayloadKey != -1)
  {
    dispatch_once(&softLinkOnceCBCentralManagerScanOptionMatchingRulePayloadKey, &__block_literal_global_441);
  }

  v1 = constantValCBCentralManagerScanOptionMatchingRulePayloadKey;

  return v1;
}

void __initValCBCentralManagerScanOptionMatchingRulePayloadKey_block_invoke()
{
  if (CoreBluetoothLibrary_sOnce_1322 != -1)
  {
    dispatch_once(&CoreBluetoothLibrary_sOnce_1322, &__block_literal_global_1323);
  }

  v0 = dlsym(CoreBluetoothLibrary_sLib_1324, "CBCentralManagerScanOptionMatchingRulePayloadKey");
  if (v0)
  {
    objc_storeStrong(&constantValCBCentralManagerScanOptionMatchingRulePayloadKey, *v0);
  }

  getCBCentralManagerScanOptionMatchingRulePayloadKey = CBCentralManagerScanOptionMatchingRulePayloadKeyFunction;
}

id initValCBCentralManagerScanOptionMatchingRuleRSSIKey()
{
  if (softLinkOnceCBCentralManagerScanOptionMatchingRuleRSSIKey != -1)
  {
    dispatch_once(&softLinkOnceCBCentralManagerScanOptionMatchingRuleRSSIKey, &__block_literal_global_438);
  }

  v1 = constantValCBCentralManagerScanOptionMatchingRuleRSSIKey;

  return v1;
}

void __initValCBCentralManagerScanOptionMatchingRuleRSSIKey_block_invoke()
{
  if (CoreBluetoothLibrary_sOnce_1322 != -1)
  {
    dispatch_once(&CoreBluetoothLibrary_sOnce_1322, &__block_literal_global_1323);
  }

  v0 = dlsym(CoreBluetoothLibrary_sLib_1324, "CBCentralManagerScanOptionMatchingRuleRSSIKey");
  if (v0)
  {
    objc_storeStrong(&constantValCBCentralManagerScanOptionMatchingRuleRSSIKey, *v0);
  }

  getCBCentralManagerScanOptionMatchingRuleRSSIKey = CBCentralManagerScanOptionMatchingRuleRSSIKeyFunction;
}

id initValCBCentralManagerScanOptionMatchingRuleTypeKey()
{
  if (softLinkOnceCBCentralManagerScanOptionMatchingRuleTypeKey != -1)
  {
    dispatch_once(&softLinkOnceCBCentralManagerScanOptionMatchingRuleTypeKey, &__block_literal_global_416);
  }

  v1 = constantValCBCentralManagerScanOptionMatchingRuleTypeKey;

  return v1;
}

void __initValCBCentralManagerScanOptionMatchingRuleTypeKey_block_invoke()
{
  if (CoreBluetoothLibrary_sOnce_1322 != -1)
  {
    dispatch_once(&CoreBluetoothLibrary_sOnce_1322, &__block_literal_global_1323);
  }

  v0 = dlsym(CoreBluetoothLibrary_sLib_1324, "CBCentralManagerScanOptionMatchingRuleTypeKey");
  if (v0)
  {
    objc_storeStrong(&constantValCBCentralManagerScanOptionMatchingRuleTypeKey, *v0);
  }

  getCBCentralManagerScanOptionMatchingRuleTypeKey = CBCentralManagerScanOptionMatchingRuleTypeKeyFunction;
}

id initValCBCentralManagerScanOptionAllowDuplicatesKey()
{
  if (softLinkOnceCBCentralManagerScanOptionAllowDuplicatesKey != -1)
  {
    dispatch_once(&softLinkOnceCBCentralManagerScanOptionAllowDuplicatesKey, &__block_literal_global_401);
  }

  v1 = constantValCBCentralManagerScanOptionAllowDuplicatesKey;

  return v1;
}

void __initValCBCentralManagerScanOptionAllowDuplicatesKey_block_invoke()
{
  if (CoreBluetoothLibrary_sOnce_1322 != -1)
  {
    dispatch_once(&CoreBluetoothLibrary_sOnce_1322, &__block_literal_global_1323);
  }

  v0 = dlsym(CoreBluetoothLibrary_sLib_1324, "CBCentralManagerScanOptionAllowDuplicatesKey");
  if (v0)
  {
    objc_storeStrong(&constantValCBCentralManagerScanOptionAllowDuplicatesKey, *v0);
  }

  getCBCentralManagerScanOptionAllowDuplicatesKey = CBCentralManagerScanOptionAllowDuplicatesKeyFunction;
}

id initValCBCentralManagerScanOptionMatchingRuleKey()
{
  if (softLinkOnceCBCentralManagerScanOptionMatchingRuleKey != -1)
  {
    dispatch_once(&softLinkOnceCBCentralManagerScanOptionMatchingRuleKey, &__block_literal_global_413);
  }

  v1 = constantValCBCentralManagerScanOptionMatchingRuleKey;

  return v1;
}

void __initValCBCentralManagerScanOptionMatchingRuleKey_block_invoke()
{
  if (CoreBluetoothLibrary_sOnce_1322 != -1)
  {
    dispatch_once(&CoreBluetoothLibrary_sOnce_1322, &__block_literal_global_1323);
  }

  v0 = dlsym(CoreBluetoothLibrary_sLib_1324, "CBCentralManagerScanOptionMatchingRuleKey");
  if (v0)
  {
    objc_storeStrong(&constantValCBCentralManagerScanOptionMatchingRuleKey, *v0);
  }

  getCBCentralManagerScanOptionMatchingRuleKey = CBCentralManagerScanOptionMatchingRuleKeyFunction;
}

id initValCBCentralManagerScanOptionScanWindow()
{
  if (softLinkOnceCBCentralManagerScanOptionScanWindow != -1)
  {
    dispatch_once(&softLinkOnceCBCentralManagerScanOptionScanWindow, &__block_literal_global_407);
  }

  v1 = constantValCBCentralManagerScanOptionScanWindow;

  return v1;
}

void __initValCBCentralManagerScanOptionScanWindow_block_invoke()
{
  if (CoreBluetoothLibrary_sOnce_1322 != -1)
  {
    dispatch_once(&CoreBluetoothLibrary_sOnce_1322, &__block_literal_global_1323);
  }

  v0 = dlsym(CoreBluetoothLibrary_sLib_1324, "CBCentralManagerScanOptionScanWindow");
  if (v0)
  {
    objc_storeStrong(&constantValCBCentralManagerScanOptionScanWindow, *v0);
  }

  getCBCentralManagerScanOptionScanWindow = CBCentralManagerScanOptionScanWindowFunction;
}

id initValCBCentralManagerScanOptionScanInterval()
{
  if (softLinkOnceCBCentralManagerScanOptionScanInterval != -1)
  {
    dispatch_once(&softLinkOnceCBCentralManagerScanOptionScanInterval, &__block_literal_global_404);
  }

  v1 = constantValCBCentralManagerScanOptionScanInterval;

  return v1;
}

void __initValCBCentralManagerScanOptionScanInterval_block_invoke()
{
  if (CoreBluetoothLibrary_sOnce_1322 != -1)
  {
    dispatch_once(&CoreBluetoothLibrary_sOnce_1322, &__block_literal_global_1323);
  }

  v0 = dlsym(CoreBluetoothLibrary_sLib_1324, "CBCentralManagerScanOptionScanInterval");
  if (v0)
  {
    objc_storeStrong(&constantValCBCentralManagerScanOptionScanInterval, *v0);
  }

  getCBCentralManagerScanOptionScanInterval = CBCentralManagerScanOptionScanIntervalFunction;
}

id initValCBManagerIsPrivilegedDaemonKey_1345()
{
  if (softLinkOnceCBManagerIsPrivilegedDaemonKey_1346 != -1)
  {
    dispatch_once(&softLinkOnceCBManagerIsPrivilegedDaemonKey_1346, &__block_literal_global_410);
  }

  v1 = constantValCBManagerIsPrivilegedDaemonKey_1347;

  return v1;
}

void __initValCBManagerIsPrivilegedDaemonKey_block_invoke_1349()
{
  if (CoreBluetoothLibrary_sOnce_1322 != -1)
  {
    dispatch_once(&CoreBluetoothLibrary_sOnce_1322, &__block_literal_global_1323);
  }

  v0 = dlsym(CoreBluetoothLibrary_sLib_1324, "CBManagerIsPrivilegedDaemonKey");
  if (v0)
  {
    objc_storeStrong(&constantValCBManagerIsPrivilegedDaemonKey_1347, *v0);
  }

  getCBManagerIsPrivilegedDaemonKey_1343 = CBManagerIsPrivilegedDaemonKeyFunction_1351;
}

id initValCBCentralManagerScanOptionActive()
{
  if (softLinkOnceCBCentralManagerScanOptionActive != -1)
  {
    dispatch_once(&softLinkOnceCBCentralManagerScanOptionActive, &__block_literal_global_398);
  }

  v1 = constantValCBCentralManagerScanOptionActive;

  return v1;
}

void __initValCBCentralManagerScanOptionActive_block_invoke()
{
  if (CoreBluetoothLibrary_sOnce_1322 != -1)
  {
    dispatch_once(&CoreBluetoothLibrary_sOnce_1322, &__block_literal_global_1323);
  }

  v0 = dlsym(CoreBluetoothLibrary_sLib_1324, "CBCentralManagerScanOptionActive");
  if (v0)
  {
    objc_storeStrong(&constantValCBCentralManagerScanOptionActive, *v0);
  }

  getCBCentralManagerScanOptionActive = CBCentralManagerScanOptionActiveFunction;
}

id initValCBManagerNeedsRestrictedStateOperation_1362()
{
  if (softLinkOnceCBManagerNeedsRestrictedStateOperation_1363 != -1)
  {
    dispatch_once(&softLinkOnceCBManagerNeedsRestrictedStateOperation_1363, &__block_literal_global_387);
  }

  v1 = constantValCBManagerNeedsRestrictedStateOperation_1364;

  return v1;
}

void __initValCBManagerNeedsRestrictedStateOperation_block_invoke_1366()
{
  if (CoreBluetoothLibrary_sOnce_1322 != -1)
  {
    dispatch_once(&CoreBluetoothLibrary_sOnce_1322, &__block_literal_global_1323);
  }

  v0 = dlsym(CoreBluetoothLibrary_sLib_1324, "CBManagerNeedsRestrictedStateOperation");
  if (v0)
  {
    objc_storeStrong(&constantValCBManagerNeedsRestrictedStateOperation_1364, *v0);
  }

  getCBManagerNeedsRestrictedStateOperation_1353 = CBManagerNeedsRestrictedStateOperationFunction_1368;
}

Class initCBCentralManager_1370()
{
  if (CoreBluetoothLibrary_sOnce_1322 != -1)
  {
    dispatch_once(&CoreBluetoothLibrary_sOnce_1322, &__block_literal_global_1323);
  }

  result = objc_getClass("CBCentralManager");
  classCBCentralManager_1371 = result;
  getCBCentralManagerClass_1352[0] = CBCentralManagerFunction_1373;
  return result;
}

Class initCBPeripheralManager_1529()
{
  if (CoreBluetoothLibrary_sOnce_1530 != -1)
  {
    dispatch_once(&CoreBluetoothLibrary_sOnce_1530, &__block_literal_global_1531);
  }

  result = objc_getClass("CBPeripheralManager");
  classCBPeripheralManager_1533 = result;
  getCBPeripheralManagerClass_1525[0] = CBPeripheralManagerFunction_1535;
  return result;
}

void *__CoreBluetoothLibrary_block_invoke_1538()
{
  result = dlopen("/System/Library/Frameworks/CoreBluetooth.framework/CoreBluetooth", 2);
  CoreBluetoothLibrary_sLib_1540 = result;
  return result;
}

uint64_t initBTSessionDetachWithQueue(uint64_t a1)
{
  if (MobileBluetoothLibrary_sOnce != -1)
  {
    dispatch_once(&MobileBluetoothLibrary_sOnce, &__block_literal_global_1743);
  }

  v2 = dlsym(MobileBluetoothLibrary_sLib, "BTSessionDetachWithQueue");
  softLinkBTSessionDetachWithQueue[0] = v2;

  return (v2)(a1);
}

void *__MobileBluetoothLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/MobileBluetooth.framework/MobileBluetooth", 2);
  MobileBluetoothLibrary_sLib = result;
  return result;
}

void _btServiceEventHandler(uint64_t a1, uint64_t a2, int a3, int a4, int a5, void *a6)
{
  v45 = *MEMORY[0x1E69E9840];
  v12 = objc_autoreleasePoolPush();
  v13 = a6;
  dispatch_assert_queue_V2(*(v13 + 23));
  if (*(v13 + 67) != 1)
  {
    goto LABEL_32;
  }

  if (a3)
  {
    v14 = *(v13 + 19);
    if (*v14 <= 30)
    {
      if (*v14 != -1)
      {
LABEL_5:
        BTServiceSpecificEventToString(a4);
        v42 = a2;
        v19 = "BTService event type: %#{flags}, %d, %d %s, %#m\n";
        v20 = v14;
LABEL_6:
        LogPrintF(v20, "void _btServiceEventHandler(BTDevice _Nonnull, BTServiceID, BTServiceEventType, BTServiceSpecificEvent, BTResult, void * _Nonnull)", 0x1Eu, v19, v15, v16, v17, v18, v42);
        goto LABEL_32;
      }

      if (_LogCategory_Initialize(*(v13 + 19), 0x1Eu))
      {
        v14 = *(v13 + 19);
        goto LABEL_5;
      }
    }

    goto LABEL_32;
  }

  if (a5)
  {
    v21 = (a5 + 310000);
  }

  else
  {
    v21 = 0;
  }

  v22 = *(v13 + 19);
  if (*v22 <= 30)
  {
    if (*v22 != -1)
    {
LABEL_13:
      BTServiceSpecificEventToString(a4);
      LogPrintF(v22, "void _btServiceEventHandler(BTDevice _Nonnull, BTServiceID, BTServiceEventType, BTServiceSpecificEvent, BTResult, void * _Nonnull)", 0x1Eu, "BTService connect: %#{flags}, %d %s, %#m\n", v23, v24, v25, v26, a2);
      goto LABEL_17;
    }

    if (_LogCategory_Initialize(*(v13 + 19), 0x1Eu))
    {
      v22 = *(v13 + 19);
      goto LABEL_13;
    }
  }

LABEL_17:
  if (a4 != 11)
  {
    goto LABEL_32;
  }

  __s1[0] = 0;
  v27 = (softLinkBTDeviceGetAddressString[0])(a1, __s1, 32);
  if (v27)
  {
    v32 = (v27 + 310000);
    if (v27 != -310000)
    {
      v40 = *(v13 + 19);
      if (*v40 <= 90)
      {
        if (*v40 == -1)
        {
          if (!_LogCategory_Initialize(v40, 0x5Au))
          {
            goto LABEL_32;
          }

          v40 = *(v13 + 19);
        }

        LogPrintF(v40, "void _btServiceEventHandler(BTDevice _Nonnull, BTServiceID, BTServiceEventType, BTServiceSpecificEvent, BTResult, void * _Nonnull)", 0x5Au, "### BTDeviceGetAddressString failed: %#m\n", v28, v29, v30, v31, v32);
      }

      goto LABEL_32;
    }
  }

  if (strcmp(__s1, v13 + 17))
  {
    v20 = *(v13 + 19);
    if (*v20 <= 30)
    {
      if (*v20 == -1)
      {
        if (!_LogCategory_Initialize(v20, 0x1Eu))
        {
          goto LABEL_32;
        }

        v20 = *(v13 + 19);
      }

      v42 = __s1;
      v19 = "BTService connect, ignoring device: %s vs %s\n";
      goto LABEL_6;
    }

    goto LABEL_32;
  }

  if (v21)
  {
    v34 = NSErrorF_safe(*MEMORY[0x1E696A768], v21, "BTService connect failed", v33, v15, v16, v17, v18, v41);
    [v13 _reportError:v34];

    goto LABEL_32;
  }

  if (!*(v13 + 41))
  {
LABEL_31:
    *(v13 + 16) = 1;
    [v13 _run];
    goto LABEL_32;
  }

  v43 = 0;
  v35 = (softLinkBTDeviceGetConnectedServices[0])(a1, &v43);
  if (v35)
  {
    v36 = (v35 + 310000);
    if (v35 != -310000)
    {
      v37 = *(v13 + 19);
      if (*v37 <= 90)
      {
        if (*v37 == -1)
        {
          if (!_LogCategory_Initialize(v37, 0x5Au))
          {
            goto LABEL_30;
          }

          v37 = *(v13 + 19);
        }

        LogPrintF(v37, "void _btServiceEventHandler(BTDevice _Nonnull, BTServiceID, BTServiceEventType, BTServiceSpecificEvent, BTResult, void * _Nonnull)", 0x5Au, "### BTDeviceGetConnectedServices failed: %#m\n", v15, v16, v17, v18, v36);
      }
    }
  }

LABEL_30:
  v38 = v43;
  v39 = *(v13 + 41);
  if ((v39 & ~v43) == 0)
  {
    goto LABEL_31;
  }

  v20 = *(v13 + 19);
  if (*v20 <= 30)
  {
    if (*v20 == -1)
    {
      if (!_LogCategory_Initialize(v20, 0x1Eu))
      {
        goto LABEL_32;
      }

      v20 = *(v13 + 19);
      v39 = *(v13 + 41);
      v38 = v43;
    }

    v42 = (v39 & ~v38);
    v19 = "BTService connect waiting for more services: %#{flags}\n";
    goto LABEL_6;
  }

LABEL_32:

  objc_autoreleasePoolPop(v12);
}

const char *BTServiceSpecificEventToString(int a1)
{
  if (a1 <= 502)
  {
    if (a1 > 103)
    {
      if (a1 > 301)
      {
        if (a1 > 500)
        {
          if (a1 == 501)
          {
            return "BT_SERVICE_REMOTE_PLAY";
          }

          else
          {
            return "BT_SERVICE_REMOTE_PAUSE";
          }
        }

        if (a1 == 302)
        {
          return "BT_SERVICE_PHONE_BOOK_SEND_COMPLETE";
        }

        if (a1 == 303)
        {
          return "BT_SERVICE_PHONE_BOOK_SYNC_SUPPORTED";
        }
      }

      else if (a1 > 201)
      {
        if (a1 == 202)
        {
          return "BT_SERVICE_A2DP_AUDIO_DISCONNECTED";
        }

        if (a1 == 301)
        {
          return "BT_SERVICE_PHONE_BOOK_SEND_INITIATED";
        }
      }

      else
      {
        if (a1 == 104)
        {
          return "BT_SERVICE_HANDSFREE_END_VOICE_COMMAND";
        }

        if (a1 == 201)
        {
          return "BT_SERVICE_A2DP_AUDIO_CONNECTED";
        }
      }
    }

    else if (a1 > 11)
    {
      if (a1 > 101)
      {
        if (a1 == 102)
        {
          return "BT_SERVICE_HANDSFREE_AUDIO_DISCONNECTED";
        }

        else
        {
          return "BT_SERVICE_HANDSFREE_START_VOICE_COMMAND";
        }
      }

      if (a1 == 12)
      {
        return "BT_SERVICE_DISCONNECTION_RESULT";
      }

      if (a1 == 101)
      {
        return "BT_SERVICE_HANDSFREE_AUDIO_CONNECTED";
      }
    }

    else if (a1 > 1)
    {
      if (a1 == 2)
      {
        return "BT_SERVICE_DISCONNECTION_ATTEMPT";
      }

      if (a1 == 11)
      {
        return "BT_SERVICE_CONNECTION_RESULT";
      }
    }

    else
    {
      if (!a1)
      {
        return "BT_SERVICE_SDP";
      }

      if (a1 == 1)
      {
        return "BT_SERVICE_CONNECTION_ATTEMPT";
      }
    }

    return "?";
  }

  if (a1 > 510)
  {
    if (a1 <= 701)
    {
      if (a1 > 600)
      {
        if (a1 == 601)
        {
          return "BT_SERVICE_SENSOR_RSSI";
        }

        if (a1 == 701)
        {
          return "BT_SERVICE_LMP_NAME_CHANGED";
        }
      }

      else
      {
        if (a1 == 511)
        {
          return "BT_SERVICE_REMOTE_REWIND_START";
        }

        if (a1 == 512)
        {
          return "BT_SERVICE_REMOTE_REWIND_STOP";
        }
      }
    }

    else if (a1 <= 800)
    {
      if (a1 == 702)
      {
        return "BT_SERVICE_HIGH_POWER_ENABLED";
      }

      if (a1 == 703)
      {
        return "BT_SERVICE_HIGH_POWER_DISABLED";
      }
    }

    else
    {
      switch(a1)
      {
        case 801:
          return "BT_SERVICE_LEA_AUDIO_CONNECTED";
        case 802:
          return "BT_SERVICE_LEA_AUDIO_DISCONNECTED";
        case 901:
          return "BT_UI_INITIATED_CONNECTION_REQUEST";
      }
    }

    return "?";
  }

  if (a1 > 506)
  {
    if (a1 > 508)
    {
      if (a1 == 509)
      {
        return "BT_SERVICE_REMOTE_FASTFORWARD_START";
      }

      else
      {
        return "BT_SERVICE_REMOTE_FASTFORWARD_STOP";
      }
    }

    else if (a1 == 507)
    {
      return "BT_SERVICE_REMOTE_VOL_DOWN";
    }

    else
    {
      return "BT_SERVICE_REMOTE_MUTE";
    }
  }

  else if (a1 > 504)
  {
    if (a1 == 505)
    {
      return "BT_SERVICE_REMOTE_NEXT";
    }

    else
    {
      return "BT_SERVICE_REMOTE_VOL_UP";
    }
  }

  else if (a1 == 503)
  {
    return "BT_SERVICE_REMOTE_STOP";
  }

  else
  {
    return "BT_SERVICE_REMOTE_PREVIOUS";
  }
}

uint64_t initBTDeviceGetConnectedServices(uint64_t a1, uint64_t a2)
{
  if (MobileBluetoothLibrary_sOnce != -1)
  {
    dispatch_once(&MobileBluetoothLibrary_sOnce, &__block_literal_global_1743);
  }

  v4 = dlsym(MobileBluetoothLibrary_sLib, "BTDeviceGetConnectedServices");
  softLinkBTDeviceGetConnectedServices[0] = v4;

  return (v4)(a1, a2);
}

uint64_t initBTDeviceGetAddressString(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (MobileBluetoothLibrary_sOnce != -1)
  {
    dispatch_once(&MobileBluetoothLibrary_sOnce, &__block_literal_global_1743);
  }

  v6 = dlsym(MobileBluetoothLibrary_sLib, "BTDeviceGetAddressString");
  softLinkBTDeviceGetAddressString[0] = v6;

  return (v6)(a1, a2, a3);
}

uint64_t initBTServiceRemoveCallbacks(uint64_t a1, uint64_t a2)
{
  if (MobileBluetoothLibrary_sOnce != -1)
  {
    dispatch_once(&MobileBluetoothLibrary_sOnce, &__block_literal_global_1743);
  }

  v4 = dlsym(MobileBluetoothLibrary_sLib, "BTServiceRemoveCallbacks");
  softLinkBTServiceRemoveCallbacks[0] = v4;

  return (v4)(a1, a2);
}

uint64_t initBTDeviceFromAddress(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (MobileBluetoothLibrary_sOnce != -1)
  {
    dispatch_once(&MobileBluetoothLibrary_sOnce, &__block_literal_global_1743);
  }

  v6 = dlsym(MobileBluetoothLibrary_sLib, "BTDeviceFromAddress");
  softLinkBTDeviceFromAddress[0] = v6;

  return (v6)(a1, a2, a3);
}

uint64_t initBTDeviceFromIdentifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (MobileBluetoothLibrary_sOnce != -1)
  {
    dispatch_once(&MobileBluetoothLibrary_sOnce, &__block_literal_global_1743);
  }

  v6 = dlsym(MobileBluetoothLibrary_sLib, "BTDeviceFromIdentifier");
  softLinkBTDeviceFromIdentifier[0] = v6;

  return (v6)(a1, a2, a3);
}

uint64_t initBTDeviceConnectServices(uint64_t a1, uint64_t a2)
{
  if (MobileBluetoothLibrary_sOnce != -1)
  {
    dispatch_once(&MobileBluetoothLibrary_sOnce, &__block_literal_global_1743);
  }

  v4 = dlsym(MobileBluetoothLibrary_sLib, "BTDeviceConnectServices");
  softLinkBTDeviceConnectServices[0] = v4;

  return (v4)(a1, a2);
}

uint64_t initBTDeviceConnectServicesWithParameters(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (MobileBluetoothLibrary_sOnce != -1)
  {
    dispatch_once(&MobileBluetoothLibrary_sOnce, &__block_literal_global_1743);
  }

  v8 = dlsym(MobileBluetoothLibrary_sLib, "BTDeviceConnectServicesWithParameters");
  softLinkBTDeviceConnectServicesWithParameters[0] = v8;

  return (v8)(a1, a2, a3, a4);
}

uint64_t initBTServiceAddCallbacks(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (MobileBluetoothLibrary_sOnce != -1)
  {
    dispatch_once(&MobileBluetoothLibrary_sOnce, &__block_literal_global_1743);
  }

  v6 = dlsym(MobileBluetoothLibrary_sLib, "BTServiceAddCallbacks");
  softLinkBTServiceAddCallbacks[0] = v6;

  return (v6)(a1, a2, a3);
}

uint64_t initBTSessionAttachWithQueue(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = MobileBluetoothLibrary_sOnce;
  v8 = a4;
  if (v7 != -1)
  {
    dispatch_once(&MobileBluetoothLibrary_sOnce, &__block_literal_global_1743);
  }

  softLinkBTSessionAttachWithQueue[0] = dlsym(MobileBluetoothLibrary_sLib, "BTSessionAttachWithQueue");
  v9 = (softLinkBTSessionAttachWithQueue[0])(a1, a2, a3, v8);

  return v9;
}

void _btSessionEventCallback(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v8 = objc_autoreleasePoolPush();
  v9 = a4;
  dispatch_assert_queue_V2(*(v9 + 23));
  if (a3)
  {
    v17 = (a3 + 310000);
  }

  else
  {
    v17 = 0;
  }

  if (a2 == 2)
  {
    *(v9 + 7) = 0;
    *(v9 + 64) = 0;
    [v9 _btEnsureStopped];
    CFRelease(v9);
    v27 = *MEMORY[0x1E696A768];
    v35 = NSPrintF("%#m", v28, v29, v30, v31, v32, v33, v34, v17);
    NSErrorF_safe(v27, 4294960560, "BTSession crashed: %@", v36, v37, v38, v39, v40, v35);
    goto LABEL_19;
  }

  if (a2 == 1)
  {
    *(v9 + 7) = 0;
    *(v9 + 64) = 0;
    [v9 _btEnsureStopped];
    CFRelease(v9);
    if (*(v9 + 68) == 1)
    {
      v26 = *(v9 + 19);
      if (*v26 <= 30)
      {
        if (*v26 == -1)
        {
          if (!_LogCategory_Initialize(v26, 0x1Eu))
          {
            goto LABEL_27;
          }

          v26 = *(v9 + 19);
        }

        LogPrintF(v26, "void _btSessionEventCallback(BTSession _Nonnull, BTSessionEvent, BTResult, void * _Nonnull)", 0x1Eu, "BTSession detached: %#m\n", v22, v23, v24, v25, v17);
      }

LABEL_27:
      [v9 _invalidated];
      goto LABEL_28;
    }

    v46 = *MEMORY[0x1E696A768];
    v35 = NSPrintF("%#m", v19, v20, v21, v22, v23, v24, v25, v17);
    NSErrorF_safe(v46, 4294960560, "BTSession detached: %@", v47, v48, v49, v50, v51, v35);
    v52 = LABEL_19:;
    [v9 _reportError:v52];

    goto LABEL_28;
  }

  if (a2)
  {
    v41 = *(v9 + 19);
    if (*v41 > 40)
    {
      goto LABEL_28;
    }

    if (*v41 == -1)
    {
      if (!_LogCategory_Initialize(*(v9 + 19), 0x28u))
      {
        goto LABEL_28;
      }

      v41 = *(v9 + 19);
    }

    v53 = NSPrintF("%#m", v10, v11, v12, v13, v14, v15, v16, v17);
    LogPrintF(v41, "void _btSessionEventCallback(BTSession _Nonnull, BTSessionEvent, BTResult, void * _Nonnull)", 0x28u, "BTSession unknown event %d, result %@", v42, v43, v44, v45, a2);

    goto LABEL_28;
  }

  v18 = *(v9 + 19);
  if (*v18 > 30)
  {
    goto LABEL_21;
  }

  if (*v18 == -1)
  {
    if (!_LogCategory_Initialize(v18, 0x1Eu))
    {
      goto LABEL_21;
    }

    v18 = *(v9 + 19);
  }

  LogPrintF(v18, "void _btSessionEventCallback(BTSession _Nonnull, BTSessionEvent, BTResult, void * _Nonnull)", 0x1Eu, "BTSession attached: %#m\n", v13, v14, v15, v16, v17);
LABEL_21:
  *(v9 + 7) = a1;
  *(v9 + 64) = 0;
  if ((*(v9 + 66) & 1) == 0)
  {
    [v9 _btEnsureStopped];
  }

  [v9 _run];
LABEL_28:

  objc_autoreleasePoolPop(v8);
}

uint64_t initBTDeviceIsWirelessSplitterSupported(uint64_t a1, uint64_t a2)
{
  if (MobileBluetoothLibrary_sOnce_1942 != -1)
  {
    dispatch_once(&MobileBluetoothLibrary_sOnce_1942, &__block_literal_global_640);
  }

  v4 = dlsym(MobileBluetoothLibrary_sLib_1943, "BTDeviceIsWirelessSplitterSupported");
  softLinkBTDeviceIsWirelessSplitterSupported[0] = v4;

  return (v4)(a1, a2);
}

void *__MobileBluetoothLibrary_block_invoke_1947()
{
  result = dlopen("/System/Library/PrivateFrameworks/MobileBluetooth.framework/MobileBluetooth", 2);
  MobileBluetoothLibrary_sLib_1943 = result;
  return result;
}

uint64_t initBTDeviceIsTemporaryPaired(uint64_t a1, uint64_t a2)
{
  if (MobileBluetoothLibrary_sOnce_1942 != -1)
  {
    dispatch_once(&MobileBluetoothLibrary_sOnce_1942, &__block_literal_global_640);
  }

  v4 = dlsym(MobileBluetoothLibrary_sLib_1943, "BTDeviceIsTemporaryPaired");
  softLinkBTDeviceIsTemporaryPaired[0] = v4;

  return (v4)(a1, a2);
}

uint64_t initBTDeviceGetSupportedServices(uint64_t a1, uint64_t a2)
{
  if (MobileBluetoothLibrary_sOnce_1942 != -1)
  {
    dispatch_once(&MobileBluetoothLibrary_sOnce_1942, &__block_literal_global_640);
  }

  v4 = dlsym(MobileBluetoothLibrary_sLib_1943, "BTDeviceGetSupportedServices");
  softLinkBTDeviceGetSupportedServices[0] = v4;

  return (v4)(a1, a2);
}

uint64_t initBTDeviceGetDeviceId(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (MobileBluetoothLibrary_sOnce_1942 != -1)
  {
    dispatch_once(&MobileBluetoothLibrary_sOnce_1942, &__block_literal_global_640);
  }

  v10 = dlsym(MobileBluetoothLibrary_sLib_1943, "BTDeviceGetDeviceId");
  softLinkBTDeviceGetDeviceId[0] = v10;

  return (v10)(a1, a2, a3, a4, a5);
}

uint64_t initBTAccessoryManagerGetInEarStatus(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (MobileBluetoothLibrary_sOnce_1942 != -1)
  {
    dispatch_once(&MobileBluetoothLibrary_sOnce_1942, &__block_literal_global_640);
  }

  v8 = dlsym(MobileBluetoothLibrary_sLib_1943, "BTAccessoryManagerGetInEarStatus");
  softLinkBTAccessoryManagerGetInEarStatus[0] = v8;

  return (v8)(a1, a2, a3, a4);
}

uint64_t initBTAccessoryManagerGetInEarDetectionEnable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (MobileBluetoothLibrary_sOnce_1942 != -1)
  {
    dispatch_once(&MobileBluetoothLibrary_sOnce_1942, &__block_literal_global_640);
  }

  v6 = dlsym(MobileBluetoothLibrary_sLib_1943, "BTAccessoryManagerGetInEarDetectionEnable");
  softLinkBTAccessoryManagerGetInEarDetectionEnable[0] = v6;

  return (v6)(a1, a2, a3);
}

uint64_t initBTDeviceGetName(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (MobileBluetoothLibrary_sOnce_1942 != -1)
  {
    dispatch_once(&MobileBluetoothLibrary_sOnce_1942, &__block_literal_global_640);
  }

  v6 = dlsym(MobileBluetoothLibrary_sLib_1943, "BTDeviceGetName");
  softLinkBTDeviceGetName[0] = v6;

  return (v6)(a1, a2, a3);
}

uint64_t initBTDeviceGetMagicPairingStatus(uint64_t a1, uint64_t a2)
{
  if (MobileBluetoothLibrary_sOnce_1942 != -1)
  {
    dispatch_once(&MobileBluetoothLibrary_sOnce_1942, &__block_literal_global_640);
  }

  v4 = dlsym(MobileBluetoothLibrary_sLib_1943, "BTDeviceGetMagicPairingStatus");
  softLinkBTDeviceGetMagicPairingStatus[0] = v4;

  return (v4)(a1, a2);
}

uint64_t initBTAccessoryManagerGetFeatureCapability(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (MobileBluetoothLibrary_sOnce_1942 != -1)
  {
    dispatch_once(&MobileBluetoothLibrary_sOnce_1942, &__block_literal_global_640);
  }

  v8 = dlsym(MobileBluetoothLibrary_sLib_1943, "BTAccessoryManagerGetFeatureCapability");
  softLinkBTAccessoryManagerGetFeatureCapability[0] = v8;

  return (v8)(a1, a2, a3, a4);
}

uint64_t initBTDeviceGetDeviceType(uint64_t a1, uint64_t a2)
{
  if (MobileBluetoothLibrary_sOnce_1942 != -1)
  {
    dispatch_once(&MobileBluetoothLibrary_sOnce_1942, &__block_literal_global_640);
  }

  v4 = dlsym(MobileBluetoothLibrary_sLib_1943, "BTDeviceGetDeviceType");
  softLinkBTDeviceGetDeviceType[0] = v4;

  return (v4)(a1, a2);
}

uint64_t initBTAccessoryManagerGetDeviceColor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (MobileBluetoothLibrary_sOnce_1942 != -1)
  {
    dispatch_once(&MobileBluetoothLibrary_sOnce_1942, &__block_literal_global_640);
  }

  v6 = dlsym(MobileBluetoothLibrary_sLib_1943, "BTAccessoryManagerGetDeviceColor");
  softLinkBTAccessoryManagerGetDeviceColor[0] = v6;

  return (v6)(a1, a2, a3);
}

uint64_t initBTDeviceGetConnectedServices_1950(uint64_t a1, uint64_t a2)
{
  if (MobileBluetoothLibrary_sOnce_1942 != -1)
  {
    dispatch_once(&MobileBluetoothLibrary_sOnce_1942, &__block_literal_global_640);
  }

  v4 = dlsym(MobileBluetoothLibrary_sLib_1943, "BTDeviceGetConnectedServices");
  softLinkBTDeviceGetConnectedServices_1932[0] = v4;

  return (v4)(a1, a2);
}

uint64_t initBTAccessoryManagerGetAccessoryInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (MobileBluetoothLibrary_sOnce_1942 != -1)
  {
    dispatch_once(&MobileBluetoothLibrary_sOnce_1942, &__block_literal_global_640);
  }

  v10 = dlsym(MobileBluetoothLibrary_sLib_1943, "BTAccessoryManagerGetAccessoryInfo");
  softLinkBTAccessoryManagerGetAccessoryInfo[0] = v10;

  return (v10)(a1, a2, a3, a4, a5);
}

uint64_t initBTAccessoryManagerReadDeviceVersionInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (MobileBluetoothLibrary_sOnce_1942 != -1)
  {
    dispatch_once(&MobileBluetoothLibrary_sOnce_1942, &__block_literal_global_640);
  }

  v18 = dlsym(MobileBluetoothLibrary_sLib_1943, "BTAccessoryManagerReadDeviceVersionInfo");
  softLinkBTAccessoryManagerReadDeviceVersionInfo = v18;

  return v18(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
}

uint64_t initBTAccessoryManagerGetDefault(uint64_t a1, uint64_t a2)
{
  if (MobileBluetoothLibrary_sOnce_1942 != -1)
  {
    dispatch_once(&MobileBluetoothLibrary_sOnce_1942, &__block_literal_global_640);
  }

  v4 = dlsym(MobileBluetoothLibrary_sLib_1943, "BTAccessoryManagerGetDefault");
  softLinkBTAccessoryManagerGetDefault[0] = v4;

  return (v4)(a1, a2);
}

uint64_t initBTDeviceAddressFromString(uint64_t a1, uint64_t a2)
{
  if (MobileBluetoothLibrary_sOnce_1942 != -1)
  {
    dispatch_once(&MobileBluetoothLibrary_sOnce_1942, &__block_literal_global_640);
  }

  v4 = dlsym(MobileBluetoothLibrary_sLib_1943, "BTDeviceAddressFromString");
  softLinkBTDeviceAddressFromString[0] = v4;

  return (v4)(a1, a2);
}

uint64_t initBTDeviceGetAddressString_1982(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (MobileBluetoothLibrary_sOnce_1942 != -1)
  {
    dispatch_once(&MobileBluetoothLibrary_sOnce_1942, &__block_literal_global_640);
  }

  v6 = dlsym(MobileBluetoothLibrary_sLib_1943, "BTDeviceGetAddressString");
  softLinkBTDeviceGetAddressString_1961[0] = v6;

  return (v6)(a1, a2, a3);
}

uint64_t initBTLocalDeviceGetPairedDevices(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (MobileBluetoothLibrary_sOnce_1942 != -1)
  {
    dispatch_once(&MobileBluetoothLibrary_sOnce_1942, &__block_literal_global_640);
  }

  v8 = dlsym(MobileBluetoothLibrary_sLib_1943, "BTLocalDeviceGetPairedDevices");
  softLinkBTLocalDeviceGetPairedDevices[0] = v8;

  return (v8)(a1, a2, a3, a4);
}

uint64_t initBTLocalDeviceGetConnectedDevices(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (MobileBluetoothLibrary_sOnce_1942 != -1)
  {
    dispatch_once(&MobileBluetoothLibrary_sOnce_1942, &__block_literal_global_640);
  }

  v8 = dlsym(MobileBluetoothLibrary_sLib_1943, "BTLocalDeviceGetConnectedDevices");
  softLinkBTLocalDeviceGetConnectedDevices[0] = v8;

  return (v8)(a1, a2, a3, a4);
}

uint64_t initBTDeviceFromAddress_2007(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (MobileBluetoothLibrary_sOnce_1942 != -1)
  {
    dispatch_once(&MobileBluetoothLibrary_sOnce_1942, &__block_literal_global_640);
  }

  v6 = dlsym(MobileBluetoothLibrary_sLib_1943, "BTDeviceFromAddress");
  softLinkBTDeviceFromAddress_2004[0] = v6;

  return (v6)(a1, a2, a3);
}

uint64_t initBTDeviceFromIdentifier_2009(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (MobileBluetoothLibrary_sOnce_1942 != -1)
  {
    dispatch_once(&MobileBluetoothLibrary_sOnce_1942, &__block_literal_global_640);
  }

  v6 = dlsym(MobileBluetoothLibrary_sLib_1943, "BTDeviceFromIdentifier");
  softLinkBTDeviceFromIdentifier_2001[0] = v6;

  return (v6)(a1, a2, a3);
}

uint64_t initBTSessionDetachWithQueue_2036(uint64_t a1)
{
  if (MobileBluetoothLibrary_sOnce_1942 != -1)
  {
    dispatch_once(&MobileBluetoothLibrary_sOnce_1942, &__block_literal_global_640);
  }

  v2 = dlsym(MobileBluetoothLibrary_sLib_1943, "BTSessionDetachWithQueue");
  softLinkBTSessionDetachWithQueue_2033[0] = v2;

  return (v2)(a1);
}

void _btServiceEventHandler_2037(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, void *a6)
{
  v12 = objc_autoreleasePoolPush();
  v13 = a6;
  v18 = v13;
  if (v13[27])
  {
    goto LABEL_2;
  }

  if (a3 == 3)
  {
    v29 = v13[28];
    if (*v29 <= 10)
    {
      if (*v29 == -1)
      {
        if (!_LogCategory_Initialize(v13[28], 0xAu))
        {
          goto LABEL_21;
        }

        v29 = v18[28];
      }

      BTServiceSpecificEventToString(a4);
      LogPrintF(v29, "void _btServiceEventHandler(BTDevice _Nonnull, BTServiceID, BTServiceEventType, BTServiceSpecificEvent, BTResult, void * _Nonnull)", 0xAu, "BTService independent event: %#{flags}, %d %s, %#m\n", v30, v31, v32, v33, a2);
    }

LABEL_21:
    [v18 _handleDeviceEvent:a4 device:a1];
    goto LABEL_2;
  }

  if (a3 == 1)
  {
    v24 = v13[28];
    if (*v24 <= 10)
    {
      if (*v24 == -1)
      {
        if (!_LogCategory_Initialize(v13[28], 0xAu))
        {
          goto LABEL_16;
        }

        v24 = v18[28];
      }

      BTServiceSpecificEventToString(a4);
      LogPrintF(v24, "void _btServiceEventHandler(BTDevice _Nonnull, BTServiceID, BTServiceEventType, BTServiceSpecificEvent, BTResult, void * _Nonnull)", 0xAu, "BTService disconnect: %#{flags}, %d %s, %#m\n", v25, v26, v27, v28, a2);
    }

LABEL_16:
    if (a5)
    {
      v34 = (a5 + 310000);
    }

    else
    {
      v34 = 0;
    }

    [v18 _handleDeviceDisconnected:a1 reason:v34];
    goto LABEL_2;
  }

  if (a3)
  {
    goto LABEL_2;
  }

  v19 = v13[28];
  if (*v19 <= 10)
  {
    if (*v19 != -1)
    {
LABEL_8:
      BTServiceSpecificEventToString(a4);
      LogPrintF(v19, "void _btServiceEventHandler(BTDevice _Nonnull, BTServiceID, BTServiceEventType, BTServiceSpecificEvent, BTResult, void * _Nonnull)", 0xAu, "BTService connect: %#{flags}, %d %s, %#m\n", v20, v21, v22, v23, a2);
      goto LABEL_23;
    }

    if (_LogCategory_Initialize(v13[28], 0xAu))
    {
      v19 = v18[28];
      goto LABEL_8;
    }
  }

LABEL_23:
  if (a4 != 11)
  {
    goto LABEL_2;
  }

  if (!a5)
  {
    if (!*(v18 + 60))
    {
      goto LABEL_39;
    }

    v46 = 0;
    v36 = (softLinkBTDeviceGetConnectedServices_1932[0])(a1, &v46);
    if (v36)
    {
      v41 = (v36 + 310000);
      if (v36 != -310000)
      {
        v42 = v18[28];
        if (*v42 <= 90)
        {
          if (*v42 != -1)
          {
LABEL_34:
            LogPrintF(v42, "void _btServiceEventHandler(BTDevice _Nonnull, BTServiceID, BTServiceEventType, BTServiceSpecificEvent, BTResult, void * _Nonnull)", 0x5Au, "### BTDeviceGetConnectedServices failed: %#m\n", v37, v38, v39, v40, v41);
            goto LABEL_38;
          }

          if (_LogCategory_Initialize(v42, 0x5Au))
          {
            v42 = v18[28];
            goto LABEL_34;
          }
        }
      }
    }

LABEL_38:
    v43 = v46;
    v44 = *(v18 + 60);
    if ((v44 & ~v46) != 0)
    {
      v45 = v18[28];
      if (*v45 <= 30)
      {
        if (*v45 == -1)
        {
          if (!_LogCategory_Initialize(v45, 0x1Eu))
          {
            goto LABEL_2;
          }

          v45 = v18[28];
          v44 = *(v18 + 60);
          v43 = v46;
        }

        LogPrintF(v45, "void _btServiceEventHandler(BTDevice _Nonnull, BTServiceID, BTServiceEventType, BTServiceSpecificEvent, BTResult, void * _Nonnull)", 0x1Eu, "BTService connect waiting for more services: %#{flags}\n", v37, v38, v39, v40, v44 & ~v43);
      }

      goto LABEL_2;
    }

LABEL_39:
    [v18 _handleDeviceConnected:a1];
    goto LABEL_2;
  }

  v35 = v18[28];
  if (*v35 <= 60)
  {
    if (*v35 == -1)
    {
      if (!_LogCategory_Initialize(v35, 0x3Cu))
      {
        goto LABEL_2;
      }

      v35 = v18[28];
    }

    LogPrintF(v35, "void _btServiceEventHandler(BTDevice _Nonnull, BTServiceID, BTServiceEventType, BTServiceSpecificEvent, BTResult, void * _Nonnull)", 0x3Cu, "### BTService connect failed: %#m\n", v14, v15, v16, v17, (a5 + 310000));
  }

LABEL_2:

  objc_autoreleasePoolPop(v12);
}

uint64_t initBTServiceRemoveCallbacks_2040(uint64_t a1, uint64_t a2)
{
  if (MobileBluetoothLibrary_sOnce_1942 != -1)
  {
    dispatch_once(&MobileBluetoothLibrary_sOnce_1942, &__block_literal_global_640);
  }

  v4 = dlsym(MobileBluetoothLibrary_sLib_1943, "BTServiceRemoveCallbacks");
  softLinkBTServiceRemoveCallbacks_2030[0] = v4;

  return (v4)(a1, a2);
}

uint64_t initBTPairingAgentDestroy(uint64_t a1)
{
  if (MobileBluetoothLibrary_sOnce_1942 != -1)
  {
    dispatch_once(&MobileBluetoothLibrary_sOnce_1942, &__block_literal_global_640);
  }

  v2 = dlsym(MobileBluetoothLibrary_sLib_1943, "BTPairingAgentDestroy");
  softLinkBTPairingAgentDestroy[0] = v2;

  return (v2)(a1);
}

uint64_t initBTPairingAgentStop(uint64_t a1)
{
  if (MobileBluetoothLibrary_sOnce_1942 != -1)
  {
    dispatch_once(&MobileBluetoothLibrary_sOnce_1942, &__block_literal_global_640);
  }

  v2 = dlsym(MobileBluetoothLibrary_sLib_1943, "BTPairingAgentStop");
  softLinkBTPairingAgentStop[0] = v2;

  return (v2)(a1);
}

uint64_t initBTLocalDeviceRemoveCallbacks(uint64_t a1, uint64_t a2)
{
  if (MobileBluetoothLibrary_sOnce_1942 != -1)
  {
    dispatch_once(&MobileBluetoothLibrary_sOnce_1942, &__block_literal_global_640);
  }

  v4 = dlsym(MobileBluetoothLibrary_sLib_1943, "BTLocalDeviceRemoveCallbacks");
  softLinkBTLocalDeviceRemoveCallbacks[0] = v4;

  return (v4)(a1, a2);
}

uint64_t initBTAccessoryManagerRemoveCallbacks(uint64_t a1, uint64_t a2)
{
  if (MobileBluetoothLibrary_sOnce_1942 != -1)
  {
    dispatch_once(&MobileBluetoothLibrary_sOnce_1942, &__block_literal_global_640);
  }

  v4 = dlsym(MobileBluetoothLibrary_sLib_1943, "BTAccessoryManagerRemoveCallbacks");
  softLinkBTAccessoryManagerRemoveCallbacks = v4;

  return (v4)(a1, a2);
}

uint64_t initBTAccessoryManagerAddCallbacks(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (MobileBluetoothLibrary_sOnce_1942 != -1)
  {
    dispatch_once(&MobileBluetoothLibrary_sOnce_1942, &__block_literal_global_640);
  }

  v6 = dlsym(MobileBluetoothLibrary_sLib_1943, "BTAccessoryManagerAddCallbacks");
  softLinkBTAccessoryManagerAddCallbacks[0] = v6;

  return (v6)(a1, a2, a3);
}

void _btAccessoryEventCallback(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = objc_autoreleasePoolPush();
  v10 = a5;
  v11 = v10;
  if (a2 <= 9)
  {
    if (a2 == 4)
    {
      [v10 _btAccessoryNameChanged:a3];
      goto LABEL_14;
    }

    if (a2 != 6)
    {
      if (a2 != 9)
      {
        goto LABEL_14;
      }

      v12 = 1;
      goto LABEL_13;
    }

LABEL_9:
    [v10 _btAccessoryPlacementChanged:a1 device:a3];
    goto LABEL_14;
  }

  switch(a2)
  {
    case 10:
      v12 = 2;
      break;
    case 11:
      v12 = 3;
      break;
    case 12:
      goto LABEL_9;
    default:
      goto LABEL_14;
  }

LABEL_13:
  [v10 _btAccessoryStreamStateChanged:v12 device:a3];
LABEL_14:

  objc_autoreleasePoolPop(v9);
}

uint64_t initBTPairingAgentStart(uint64_t a1)
{
  if (MobileBluetoothLibrary_sOnce_1942 != -1)
  {
    dispatch_once(&MobileBluetoothLibrary_sOnce_1942, &__block_literal_global_640);
  }

  v2 = dlsym(MobileBluetoothLibrary_sLib_1943, "BTPairingAgentStart");
  softLinkBTPairingAgentStart[0] = v2;

  return (v2)(a1);
}

uint64_t initBTPairingAgentCreate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (MobileBluetoothLibrary_sOnce_1942 != -1)
  {
    dispatch_once(&MobileBluetoothLibrary_sOnce_1942, &__block_literal_global_640);
  }

  v8 = dlsym(MobileBluetoothLibrary_sLib_1943, "BTPairingAgentCreate");
  softLinkBTPairingAgentCreate[0] = v8;

  return (v8)(a1, a2, a3, a4);
}

void _btPairingAgentStatusCallback(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  v8 = objc_autoreleasePoolPush();
  v13 = a5;
  v14 = v13[28];
  v15 = *v14;
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        if (v15 > 30)
        {
          goto LABEL_32;
        }

        if (v15 != -1)
        {
          goto LABEL_6;
        }

        if (_LogCategory_Initialize(v14, 0x1Eu))
        {
          v14 = v13[28];
LABEL_6:
          LogPrintF(v14, "void _btPairingAgentStatusCallback(BTPairingAgent _Nonnull, BTPairingEvent, BTDevice _Nonnull, BTResult, void * _Nonnull)", 0x1Eu, "BTPairingAgent stopped: %#m\n", v9, v10, v11, v12, (a4 + 310000));
          goto LABEL_32;
        }

        goto LABEL_32;
      }

LABEL_12:
      if (v15 > 30)
      {
        goto LABEL_32;
      }

      if (v15 == -1)
      {
        if (!_LogCategory_Initialize(v14, 0x1Eu))
        {
          goto LABEL_32;
        }

        v14 = v13[28];
      }

      LogPrintF(v14, "void _btPairingAgentStatusCallback(BTPairingAgent _Nonnull, BTPairingEvent, BTDevice _Nonnull, BTResult, void * _Nonnull)", 0x1Eu, "BTPairingAgent unknown event: %d, %#m\n", v9, v10, v11, v12, a2);
      goto LABEL_32;
    }

    if (v15 <= 30)
    {
      if (v15 != -1)
      {
LABEL_17:
        LogPrintF(v14, "void _btPairingAgentStatusCallback(BTPairingAgent _Nonnull, BTPairingEvent, BTDevice _Nonnull, BTResult, void * _Nonnull)", 0x1Eu, "BTPairingAgent started: %#m\n", v9, v10, v11, v12, (a4 + 310000));
        goto LABEL_29;
      }

      if (_LogCategory_Initialize(v14, 0x1Eu))
      {
        v14 = v13[28];
        goto LABEL_17;
      }
    }

LABEL_29:
    if (*(v13 + 107) == 1)
    {
      *(v13 + 177) = 1;
      [v13 _btEnsureStarted];
    }

    goto LABEL_32;
  }

  if (a2 != 2)
  {
    if (a2 == 3)
    {
      if (v15 > 30)
      {
        goto LABEL_32;
      }

      if (v15 == -1)
      {
        if (!_LogCategory_Initialize(v14, 0x1Eu))
        {
          goto LABEL_32;
        }

        v14 = v13[28];
      }

      LogPrintF(v14, "void _btPairingAgentStatusCallback(BTPairingAgent _Nonnull, BTPairingEvent, BTDevice _Nonnull, BTResult, void * _Nonnull)", 0x1Eu, "BTPairingAgent attempt complete: %#m\n", v9, v10, v11, v12, (a4 + 310000));
      goto LABEL_32;
    }

    goto LABEL_12;
  }

  if (v15 > 30)
  {
    goto LABEL_32;
  }

  if (v15 == -1)
  {
    if (!_LogCategory_Initialize(v14, 0x1Eu))
    {
      goto LABEL_32;
    }

    v14 = v13[28];
  }

  LogPrintF(v14, "void _btPairingAgentStatusCallback(BTPairingAgent _Nonnull, BTPairingEvent, BTDevice _Nonnull, BTResult, void * _Nonnull)", 0x1Eu, "BTPairingAgent attempt started: %#m\n", v9, v10, v11, v12, (a4 + 310000));
LABEL_32:

  objc_autoreleasePoolPop(v8);
}

uint64_t initBTLocalDeviceAddCallbacks(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (MobileBluetoothLibrary_sOnce_1942 != -1)
  {
    dispatch_once(&MobileBluetoothLibrary_sOnce_1942, &__block_literal_global_640);
  }

  v6 = dlsym(MobileBluetoothLibrary_sLib_1943, "BTLocalDeviceAddCallbacks");
  softLinkBTLocalDeviceAddCallbacks[0] = v6;

  return (v6)(a1, a2, a3);
}

void _btLocalDeviceStatusCallback(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v6 = objc_autoreleasePoolPush();
  v7 = a4;
  v12 = v7;
  if (a2 == 11)
  {
    v13 = v7[28];
    if (*v13 <= 30)
    {
      if (*v13 == -1)
      {
        if (!_LogCategory_Initialize(v13, 0x1Eu))
        {
          goto LABEL_13;
        }

        v13 = v12[28];
      }

      v14 = "Bluetooth first unlock completed";
LABEL_9:
      LogPrintF(v13, "void _btLocalDeviceStatusCallback(BTLocalDevice _Nonnull, BTLocalDeviceEvent, BTResult, void * _Nonnull)", 0x1Eu, v14, v8, v9, v10, v11, v15);
    }
  }

  else
  {
    if (a2 != 4)
    {
      goto LABEL_14;
    }

    v13 = v7[28];
    if (*v13 <= 30)
    {
      if (*v13 == -1)
      {
        if (!_LogCategory_Initialize(v13, 0x1Eu))
        {
          goto LABEL_13;
        }

        v13 = v12[28];
      }

      v14 = "Pairing status changed\n";
      goto LABEL_9;
    }
  }

LABEL_13:
  [v12 _handlePairingStatusChanged];
LABEL_14:

  objc_autoreleasePoolPop(v6);
}

uint64_t initBTLocalDeviceGetAddressString(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (MobileBluetoothLibrary_sOnce_1942 != -1)
  {
    dispatch_once(&MobileBluetoothLibrary_sOnce_1942, &__block_literal_global_640);
  }

  v6 = dlsym(MobileBluetoothLibrary_sLib_1943, "BTLocalDeviceGetAddressString");
  softLinkBTLocalDeviceGetAddressString[0] = v6;

  return (v6)(a1, a2, a3);
}

uint64_t initBTLocalDeviceGetDefault(uint64_t a1, uint64_t a2)
{
  if (MobileBluetoothLibrary_sOnce_1942 != -1)
  {
    dispatch_once(&MobileBluetoothLibrary_sOnce_1942, &__block_literal_global_640);
  }

  v4 = dlsym(MobileBluetoothLibrary_sLib_1943, "BTLocalDeviceGetDefault");
  softLinkBTLocalDeviceGetDefault[0] = v4;

  return (v4)(a1, a2);
}

uint64_t initBTServiceAddCallbacks_2066(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (MobileBluetoothLibrary_sOnce_1942 != -1)
  {
    dispatch_once(&MobileBluetoothLibrary_sOnce_1942, &__block_literal_global_640);
  }

  v6 = dlsym(MobileBluetoothLibrary_sLib_1943, "BTServiceAddCallbacks");
  softLinkBTServiceAddCallbacks_2051[0] = v6;

  return (v6)(a1, a2, a3);
}

uint64_t initBTSessionAttachWithQueue_2068(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = MobileBluetoothLibrary_sOnce_1942;
  v8 = a4;
  if (v7 != -1)
  {
    dispatch_once(&MobileBluetoothLibrary_sOnce_1942, &__block_literal_global_640);
  }

  softLinkBTSessionAttachWithQueue_2048[0] = dlsym(MobileBluetoothLibrary_sLib_1943, "BTSessionAttachWithQueue");
  v9 = (softLinkBTSessionAttachWithQueue_2048[0])(a1, a2, a3, v8);

  return v9;
}

void _btSessionEventCallback_2069(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v8 = objc_autoreleasePoolPush();
  v13 = a4;
  v14 = v13[28];
  v15 = *v14;
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        if (v15 <= 30)
        {
          if (v15 == -1)
          {
            if (!_LogCategory_Initialize(v14, 0x1Eu))
            {
              goto LABEL_25;
            }

            v14 = v13[28];
          }

          LogPrintF(v14, "void _btSessionEventCallback(BTSession _Nonnull, BTSessionEvent, BTResult, void * _Nonnull)", 0x1Eu, "BTSession detached: %#m\n", v9, v10, v11, v12, (a3 + 310000));
        }

LABEL_25:
        v13[12] = 0;
        *(v13 + 105) = 0;
        [v13 _btEnsureStopped];
LABEL_35:
        CFRelease(v13);
        goto LABEL_36;
      }

      goto LABEL_12;
    }

    if (v15 <= 30)
    {
      if (v15 != -1)
      {
LABEL_18:
        LogPrintF(v14, "void _btSessionEventCallback(BTSession _Nonnull, BTSessionEvent, BTResult, void * _Nonnull)", 0x1Eu, "BTSession attached: %#m\n", v9, v10, v11, v12, (a3 + 310000));
        goto LABEL_29;
      }

      if (_LogCategory_Initialize(v14, 0x1Eu))
      {
        v14 = v13[28];
        goto LABEL_18;
      }
    }

LABEL_29:
    v13[12] = a1;
    *(v13 + 105) = 0;
    if (*(v13 + 107) == 1)
    {
      [v13 _btEnsureStarted];
    }

    else
    {
      [v13 _btEnsureStopped];
    }

    goto LABEL_36;
  }

  if (a2 == 2)
  {
    if (v15 > 60)
    {
      goto LABEL_33;
    }

    if (v15 == -1)
    {
      if (!_LogCategory_Initialize(v14, 0x3Cu))
      {
LABEL_33:
        v13[12] = 0;
        *(v13 + 105) = 0;
        v16 = *(v13 + 107);
        [v13 _btEnsureStopped];
        if (v16 == 1)
        {
          [v13 _btEnsureStarted];
        }

        goto LABEL_35;
      }

      v14 = v13[28];
    }

    LogPrintF(v14, "void _btSessionEventCallback(BTSession _Nonnull, BTSessionEvent, BTResult, void * _Nonnull)", 0x3Cu, "### BTSession terminated (bluetoothd crash)...re-attaching\n", v9, v10, v11, v12, v17);
    goto LABEL_33;
  }

  if (a2 == 3)
  {
    if (v15 > 60)
    {
      goto LABEL_36;
    }

    if (v15 == -1)
    {
      if (!_LogCategory_Initialize(v14, 0x3Cu))
      {
        goto LABEL_36;
      }

      v14 = v13[28];
    }

    LogPrintF(v14, "void _btSessionEventCallback(BTSession _Nonnull, BTSessionEvent, BTResult, void * _Nonnull)", 0x3Cu, "### BTSession failed: %#m\n", v9, v10, v11, v12, (a3 + 310000));
    goto LABEL_36;
  }

LABEL_12:
  if (v15 > 40)
  {
    goto LABEL_36;
  }

  if (v15 == -1)
  {
    if (!_LogCategory_Initialize(v14, 0x28u))
    {
      goto LABEL_36;
    }

    v14 = v13[28];
  }

  LogPrintF(v14, "void _btSessionEventCallback(BTSession _Nonnull, BTSessionEvent, BTResult, void * _Nonnull)", 0x28u, "BTSession unknown event %d, result %#m\n", v9, v10, v11, v12, a2);
LABEL_36:

  objc_autoreleasePoolPop(v8);
}

Class initCBPeripheralManager_2072()
{
  if (CoreBluetoothLibrary_sOnce_2073 != -1)
  {
    dispatch_once(&CoreBluetoothLibrary_sOnce_2073, &__block_literal_global_541);
  }

  result = objc_getClass("CBPeripheralManager");
  classCBPeripheralManager_2074 = result;
  getCBPeripheralManagerClass_2045[0] = CBPeripheralManagerFunction_2076;
  return result;
}

void *__CoreBluetoothLibrary_block_invoke_2078()
{
  result = dlopen("/System/Library/Frameworks/CoreBluetooth.framework/CoreBluetooth", 2);
  CoreBluetoothLibrary_sLib_2079 = result;
  return result;
}

id initValCBPeripheralManagerOptionShowPowerAlertKey()
{
  if (softLinkOnceCBPeripheralManagerOptionShowPowerAlertKey != -1)
  {
    dispatch_once(&softLinkOnceCBPeripheralManagerOptionShowPowerAlertKey, &__block_literal_global_545);
  }

  v1 = constantValCBPeripheralManagerOptionShowPowerAlertKey;

  return v1;
}

void __initValCBPeripheralManagerOptionShowPowerAlertKey_block_invoke()
{
  if (CoreBluetoothLibrary_sOnce_2073 != -1)
  {
    dispatch_once(&CoreBluetoothLibrary_sOnce_2073, &__block_literal_global_541);
  }

  v0 = dlsym(CoreBluetoothLibrary_sLib_2079, "CBPeripheralManagerOptionShowPowerAlertKey");
  if (v0)
  {
    objc_storeStrong(&constantValCBPeripheralManagerOptionShowPowerAlertKey, *v0);
  }

  getCBPeripheralManagerOptionShowPowerAlertKey = CBPeripheralManagerOptionShowPowerAlertKeyFunction;
}

Class initCBCentralManager_2081()
{
  if (CoreBluetoothLibrary_sOnce_2073 != -1)
  {
    dispatch_once(&CoreBluetoothLibrary_sOnce_2073, &__block_literal_global_541);
  }

  result = objc_getClass("CBCentralManager");
  classCBCentralManager_2082 = result;
  getCBCentralManagerClass_2043[0] = CBCentralManagerFunction_2084;
  return result;
}

id initValCBCentralManagerOptionShowPowerAlertKey()
{
  if (softLinkOnceCBCentralManagerOptionShowPowerAlertKey != -1)
  {
    dispatch_once(&softLinkOnceCBCentralManagerOptionShowPowerAlertKey, &__block_literal_global_538);
  }

  v1 = constantValCBCentralManagerOptionShowPowerAlertKey;

  return v1;
}

void __initValCBCentralManagerOptionShowPowerAlertKey_block_invoke()
{
  if (CoreBluetoothLibrary_sOnce_2073 != -1)
  {
    dispatch_once(&CoreBluetoothLibrary_sOnce_2073, &__block_literal_global_541);
  }

  v0 = dlsym(CoreBluetoothLibrary_sLib_2079, "CBCentralManagerOptionShowPowerAlertKey");
  if (v0)
  {
    objc_storeStrong(&constantValCBCentralManagerOptionShowPowerAlertKey, *v0);
  }

  getCBCentralManagerOptionShowPowerAlertKey = CBCentralManagerOptionShowPowerAlertKeyFunction;
}

id initValCBScalablePipeOptionTransport()
{
  if (softLinkOnceCBScalablePipeOptionTransport != -1)
  {
    dispatch_once(&softLinkOnceCBScalablePipeOptionTransport, &__block_literal_global_287);
  }

  v1 = constantValCBScalablePipeOptionTransport;

  return v1;
}

void __initValCBScalablePipeOptionTransport_block_invoke()
{
  if (CoreBluetoothLibrary_sOnce_2327 != -1)
  {
    dispatch_once(&CoreBluetoothLibrary_sOnce_2327, &__block_literal_global_2328);
  }

  v0 = dlsym(CoreBluetoothLibrary_sLib_2329, "CBScalablePipeOptionTransport");
  if (v0)
  {
    objc_storeStrong(&constantValCBScalablePipeOptionTransport, *v0);
  }

  getCBScalablePipeOptionTransport = CBScalablePipeOptionTransportFunction;
}

void *__CoreBluetoothLibrary_block_invoke_2332()
{
  result = dlopen("/System/Library/Frameworks/CoreBluetooth.framework/CoreBluetooth", 2);
  CoreBluetoothLibrary_sLib_2329 = result;
  return result;
}

Class initCBScalablePipeManager()
{
  if (CoreBluetoothLibrary_sOnce_2327 != -1)
  {
    dispatch_once(&CoreBluetoothLibrary_sOnce_2327, &__block_literal_global_2328);
  }

  result = objc_getClass("CBScalablePipeManager");
  classCBScalablePipeManager = result;
  getCBScalablePipeManagerClass[0] = CBScalablePipeManagerFunction;
  return result;
}

uint64_t SerialStreamGetTypeID()
{
  if (gSerialStreamInitOnce != -1)
  {
    dispatch_once_f(&gSerialStreamInitOnce, 0, _SerialStreamGetTypeID);
  }

  return gSerialStreamTypeID;
}

uint64_t _SerialStreamGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gSerialStreamTypeID = result;
  return result;
}

void _SerialStreamFinalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    dispatch_release(v2);
    *(a1 + 16) = 0;
  }
}

uint64_t SerialStreamCreate(uint64_t *a1)
{
  if (gSerialStreamInitOnce != -1)
  {
    dispatch_once_f(&gSerialStreamInitOnce, 0, _SerialStreamGetTypeID);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    return 4294960568;
  }

  v3 = Instance;
  bzero((Instance + 24), 0x478uLL);
  v4 = MEMORY[0x1E69E96A0];
  *(v3 + 16) = MEMORY[0x1E69E96A0];
  dispatch_retain(v4);
  result = 0;
  *(v3 + 24) = -1;
  *(v3 + 104) = v3 + 96;
  *(v3 + 120) = v3 + 112;
  *a1 = v3;
  return result;
}

uint64_t SerialStreamSetConfig(uint64_t a1, uint64_t a2)
{
  if (!*a2)
  {
    return 4294960592;
  }

  __strlcpy_chk();
  result = 0;
  *(a1 + 1156) = *(a2 + 8);
  *(a1 + 1164) = *(a2 + 16);
  return result;
}

void SerialStreamSetDispatchQueue(uint64_t a1, NSObject *a2)
{
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = MEMORY[0x1E69E96A0];
  }

  dispatch_retain(v3);
  v4 = *(a1 + 16);
  if (v4)
  {
    dispatch_release(v4);
  }

  *(a1 + 16) = v3;
}

void SerialStreamInvalidate(void *a1)
{
  CFRetain(a1);
  v2 = a1[2];

  dispatch_async_f(v2, a1, _SerialStreamInvalidate);
}

void _SerialStreamInvalidate(const void *a1)
{
  _SerialStreamErrorHandler(a1, 4294960573);

  CFRelease(a1);
}

void _SerialStreamErrorHandler(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    dispatch_source_cancel(v4);
    if (*(a1 + 40))
    {
      dispatch_resume(*(a1 + 32));
      *(a1 + 40) = 0;
    }

    dispatch_release(*(a1 + 32));
    *(a1 + 32) = 0;
  }

  v5 = *(a1 + 80);
  if (v5)
  {
    dispatch_source_cancel(v5);
    if (*(a1 + 88))
    {
      dispatch_resume(*(a1 + 80));
      *(a1 + 88) = 0;
    }

    dispatch_release(*(a1 + 80));
    *(a1 + 80) = 0;
  }

  while (1)
  {
    v6 = *(a1 + 96);
    if (!v6)
    {
      break;
    }

    v6[5] = 0;
    _SerialStreamReadCompleted(a1, v6, a2);
  }

  while (1)
  {
    v7 = *(a1 + 112);
    if (!v7)
    {
      break;
    }

    _SerialStreamWriteCompleted(a1, v7, a2);
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    free(v8);
    *(a1 + 48) = 0;
  }
}

void _SerialStreamReadCompleted(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *a2;
  *(a1 + 96) = *a2;
  if (!v4)
  {
    *(a1 + 104) = a1 + 96;
  }

  (*(a2 + 7))(a3, *(a2 + 6), *(a2 + 5), *(a2 + 8));
  CFRelease(*(a2 + 1));

  free(a2);
}

void _SerialStreamWriteCompleted(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  *(a1 + 112) = *a2;
  if (!v4)
  {
    *(a1 + 120) = a1 + 112;
  }

  v5 = a2[6];
  if (v5)
  {
    v5(a3, a2[7]);
  }

  CFRelease(a2[1]);

  free(a2);
}

uint64_t SerialStreamRead(dispatch_queue_t *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  if (a4)
  {
    v12 = 72;
  }

  else
  {
    v12 = a3 + 72;
  }

  v13 = malloc_type_malloc(v12, 0x10B004092F53E23uLL);
  if (!v13)
  {
    return 4294960568;
  }

  v14 = v13;
  CFRetain(a1);
  v14[1] = a1;
  *(v14 + 4) = 0;
  v14[3] = a2;
  v14[4] = a3;
  v15 = (v14 + 9);
  if (a4)
  {
    v15 = a4;
  }

  v14[5] = 0;
  v14[6] = v15;
  v14[7] = a5;
  v14[8] = a6;
  dispatch_async_f(a1[2], v14, _SerialStreamRead);
  return 0;
}

void _SerialStreamRead(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1[1];
  *a1 = 0;
  **(v8 + 104) = a1;
  *(v8 + 104) = a1;
  v9 = _SerialStreamEnsureSetUp(v8, a2, a3, a4, a5, a6, a7, a8);
  if (v9)
  {

    _SerialStreamErrorHandler(v8, v9);
  }

  else
  {

    _SerialStreamReadHandler(v8);
  }
}

uint64_t _SerialStreamEnsureSetUp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 24) & 0x80000000) == 0)
  {
    return 0;
  }

  if (gLogCategory_SerialUtils <= 20 && (gLogCategory_SerialUtils != -1 || _LogCategory_Initialize(&gLogCategory_SerialUtils, 0x14u)))
  {
    LogPrintF(&gLogCategory_SerialUtils, "OSStatus _SerialStreamEnsureSetUp(SerialStreamRef)", 0x14u, "Opening serial port '%s'\n", a5, a6, a7, a8, a1 + 128);
  }

  memset(&v28, 0, sizeof(v28));
  v9 = 1;
  while (1)
  {
    v10 = open((a1 + 128), 131078);
    *(a1 + 24) = v10;
    if ((v10 & 0x80000000) == 0)
    {
      break;
    }

    if (*__error())
    {
      v15 = *__error();
      if (!v15)
      {
        break;
      }
    }

    else
    {
      v15 = 4294960596;
    }

    if (gLogCategory_SerialUtils <= 50 && (gLogCategory_SerialUtils != -1 || _LogCategory_Initialize(&gLogCategory_SerialUtils, 0x32u)))
    {
      v25 = v9;
      v26 = v15;
      LogPrintF(&gLogCategory_SerialUtils, "OSStatus _SerialStreamEnsureSetUp(SerialStreamRef)", 0x32u, "### Open '%s' error %d of 10: %#m\n", v11, v12, v13, v14, a1 + 128);
    }

    if (v15 != 16)
    {
      goto LABEL_49;
    }

    usleep(0x186A0u);
    v9 = (v9 + 1);
    if (v9 == 10)
    {
      v9 = 10;
      goto LABEL_20;
    }
  }

  if (v9 < 2)
  {
    goto LABEL_24;
  }

LABEL_20:
  if (gLogCategory_SerialUtils <= 50 && (gLogCategory_SerialUtils != -1 || _LogCategory_Initialize(&gLogCategory_SerialUtils, 0x32u)))
  {
    v25 = v9;
    LogPrintF(&gLogCategory_SerialUtils, "OSStatus _SerialStreamEnsureSetUp(SerialStreamRef)", 0x32u, "Opened '%s' after %d attempts\n", v11, v12, v13, v14, a1 + 128);
  }

LABEL_24:
  if ((*(a1 + 1164) & 8) == 0 && ioctl(*(a1 + 24), 0x2000740DuLL))
  {
    if (!*__error())
    {
      goto LABEL_48;
    }

    v15 = *__error();
    if (v15)
    {
      goto LABEL_49;
    }
  }

  v16 = *(a1 + 24);
  v17 = fcntl(v16, 3, 0, v25, v26);
  if (fcntl(v16, 4, v17 | 4u) == -1)
  {
    if (!*__error())
    {
      goto LABEL_48;
    }

    v15 = *__error();
    if (v15)
    {
      goto LABEL_49;
    }
  }

  memset(&v28, 0, sizeof(v28));
  if (tcgetattr(*(a1 + 24), &v28))
  {
    if (!*__error())
    {
      goto LABEL_48;
    }

    v15 = *__error();
    if (v15)
    {
      goto LABEL_49;
    }
  }

  v18 = vandq_s8(*&v28.c_iflag, xmmword_191FF94F0);
  *&v28.c_iflag = v18;
  v19 = *(a1 + 1160);
  if (v19 == 2)
  {
    v20 = v28.c_cflag | 0x38800;
  }

  else
  {
    v20 = v28.c_cflag & 0xFFFFFFFFFFFC77FFLL | 0x8800;
    if (v19 == 1)
    {
      v28.c_iflag = v18.i64[0] | 0xE00;
    }
  }

  v28.c_cflag = v20 & 0xFFFFFFFFFFFF88FFLL | 0x4300;
  v28.c_lflag &= 0xFFFFFFFFFFFFFE75;
  *&v28.c_cc[16] = 0;
  if (tcsetattr(*(a1 + 24), 0, &v28))
  {
    if (!*__error())
    {
      goto LABEL_48;
    }

    v15 = *__error();
    if (v15)
    {
      goto LABEL_49;
    }
  }

  v27 = *(a1 + 1156);
  if (!ioctl(*(a1 + 24), 0x80085402uLL, &v27))
  {
LABEL_45:
    v21 = dispatch_source_create(MEMORY[0x1E69E96F8], *(a1 + 24), 0, *(a1 + 16));
    *(a1 + 32) = v21;
    if (v21)
    {
      ++*(a1 + 28);
      CFRetain(a1);
      dispatch_set_context(*(a1 + 32), a1);
      dispatch_source_set_event_handler_f(*(a1 + 32), _SerialStreamReadHandler);
      dispatch_source_set_cancel_handler_f(*(a1 + 32), _SerialStreamCancelHandler);
      *(a1 + 40) = 1;
      v22 = dispatch_source_create(MEMORY[0x1E69E9730], *(a1 + 24), 0, *(a1 + 16));
      *(a1 + 80) = v22;
      if (v22)
      {
        ++*(a1 + 28);
        CFRetain(a1);
        dispatch_set_context(*(a1 + 80), a1);
        dispatch_source_set_event_handler_f(*(a1 + 80), _SerialStreamWriteHandler);
        dispatch_source_set_cancel_handler_f(*(a1 + 80), _SerialStreamCancelHandler);
        v15 = 0;
        *(a1 + 88) = 1;
        return v15;
      }
    }

    goto LABEL_48;
  }

  if (*__error())
  {
    v15 = *__error();
    if (v15)
    {
      goto LABEL_49;
    }

    goto LABEL_45;
  }

LABEL_48:
  v15 = 4294960596;
LABEL_49:
  if (!*(a1 + 28))
  {
    v23 = *(a1 + 24);
    if ((v23 & 0x80000000) == 0)
    {
      if (close(v23) && *__error())
      {
        __error();
      }

      *(a1 + 24) = -1;
    }
  }

  _SerialStreamErrorHandler(a1, v15);
  return v15;
}

void _SerialStreamReadHandler(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (!v2)
  {
LABEL_72:
    if (!*(a1 + 40))
    {
      *(a1 + 40) = 1;
      v29 = *(a1 + 32);

      dispatch_suspend(v29);
    }

    return;
  }

  while (1)
  {
    v3 = *(a1 + 64);
    v4 = *(a1 + 72);
    v5 = *(v2 + 16);
    if ((v5 & 0x10000) != 0)
    {
      break;
    }

    if (v4 == v3)
    {
      v6 = *(v2 + 40);
    }

    else
    {
      v12 = *(v2 + 40);
      if (*(v2 + 32) - v12 >= (v4 - v3))
      {
        v13 = v4 - v3;
      }

      else
      {
        v13 = *(v2 + 32) - v12;
      }

      memcpy((*(v2 + 48) + v12), (*(a1 + 48) + v3), v13);
      *(a1 + 64) += v13;
      v6 = *(v2 + 40) + v13;
      *(v2 + 40) = v6;
    }

    if (v6 >= *(v2 + 24))
    {
      goto LABEL_49;
    }

    v14 = *(v2 + 32) - v6;
    v15 = *(v2 + 48);
    while (1)
    {
      v16 = read(*(a1 + 24), (v15 + v6), v14);
      if ((v16 & 0x8000000000000000) == 0)
      {
        v17 = 0;
        goto LABEL_43;
      }

      if (!*__error())
      {
        break;
      }

      v17 = *__error();
      if (v17 != 4)
      {
        goto LABEL_43;
      }
    }

    v17 = -6700;
LABEL_43:
    if (v16)
    {
      v23 = v17;
    }

    else
    {
      v23 = 35;
    }

    if (v23 == 35)
    {
      goto LABEL_68;
    }

    if (v23)
    {
      goto LABEL_79;
    }

    v24 = *(v2 + 40) + v16;
    *(v2 + 40) = v24;
    if (v24 >= *(v2 + 24))
    {
      goto LABEL_49;
    }

LABEL_50:
    v2 = *(a1 + 96);
    if (!v2)
    {
      goto LABEL_72;
    }
  }

  v7 = *(a1 + 48);
  v8 = &v7[v3];
  if ((v5 & 4) != 0)
  {
    if (v4 > v3)
    {
      v18 = &v7[v3];
      while (1)
      {
        v19 = *v18;
        if (v19 == 7 || v19 == 13)
        {
          break;
        }

        if (++v18 >= &v7[v4])
        {
          goto LABEL_31;
        }
      }

      *(a1 + 64) = v18 - v7 + 1;
      *(v2 + 48) = v8;
      if (*v18 == 7)
      {
        v11 = &v18[-v8 + 1];
      }

      else
      {
        v11 = &v18[-v8];
      }

      goto LABEL_41;
    }
  }

  else
  {
    if ((v5 & 2) != 0)
    {
      v9 = 13;
    }

    else
    {
      v9 = 10;
    }

    v10 = memchr(&v7[v3], v9, v4 - v3);
    if (v10)
    {
      *(a1 + 64) = v10 - v7 + 1;
      if (v10 > v8 && *(v10 - 1) == 13)
      {
        --v10;
      }

      *(v2 + 48) = v8;
      v11 = &v10[-v8];
LABEL_41:
      *(v2 + 40) = v11;
LABEL_49:
      _SerialStreamReadCompleted(a1, v2, 0);
      goto LABEL_50;
    }
  }

LABEL_31:
  if (v4 == v3)
  {
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    v21 = *(a1 + 56);
    if (v21)
    {
      v4 = 0;
      goto LABEL_55;
    }
  }

  else
  {
    v22 = *(a1 + 56);
    v21 = v22 - v4;
    if (v22 != v4)
    {
      goto LABEL_55;
    }

    if (v3)
    {
      memmove(v7, &v7[v3], v4 - v3);
      v21 = *(a1 + 64);
      v4 = *(a1 + 72) - v21;
      *(a1 + 64) = 0;
      *(a1 + 72) = v4;
      v7 = *(a1 + 48);
      goto LABEL_55;
    }
  }

  if (v7)
  {
    v23 = 4294960533;
LABEL_79:

    _SerialStreamErrorHandler(a1, v23);
    return;
  }

  *(a1 + 56) = 4096;
  v25 = malloc_type_malloc(0x1000uLL, 0x98DF1489uLL);
  *(a1 + 48) = v25;
  if (!v25)
  {
    v23 = 4294960568;
    goto LABEL_79;
  }

  v7 = v25;
  v21 = *(a1 + 56);
  v4 = *(a1 + 72);
  while (1)
  {
LABEL_55:
    v26 = read(*(a1 + 24), &v7[v4], v21);
    if ((v26 & 0x8000000000000000) == 0)
    {
      v27 = 0;
      goto LABEL_61;
    }

    if (!*__error())
    {
      break;
    }

    v27 = *__error();
    if (v27 != 4)
    {
      goto LABEL_61;
    }
  }

  v27 = -6700;
LABEL_61:
  if (v26)
  {
    v23 = v27;
  }

  else
  {
    v23 = 35;
  }

  if (v23 != 35)
  {
    if (v23)
    {
      goto LABEL_79;
    }

    *(a1 + 72) += v26;
    goto LABEL_50;
  }

LABEL_68:
  if (*(a1 + 40))
  {
    *(a1 + 40) = 0;
    v28 = *(a1 + 32);

    dispatch_resume(v28);
  }
}

void _SerialStreamWriteHandler(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (!v2)
  {
LABEL_24:
    if (!*(a1 + 88))
    {
      *(a1 + 88) = 1;
      v8 = *(a1 + 80);

      dispatch_suspend(v8);
    }

    return;
  }

  while (1)
  {
    do
    {
      v3 = writev(*(a1 + 24), *(v2 + 40), *(v2 + 32));
      if ((v3 & 0x8000000000000000) == 0)
      {
        v4 = 0;
        break;
      }

      if (!*__error())
      {
        v4 = -6700;
        break;
      }

      v4 = *__error();
    }

    while (v4 == 4);
    if (v3)
    {
      v5 = v4;
    }

    else
    {
      v5 = 35;
    }

    if (v5 == 35)
    {
      goto LABEL_20;
    }

    if (v5)
    {
      goto LABEL_18;
    }

    updated = UpdateIOVec((v2 + 40), (v2 + 32), v3);
    if (updated != 35)
    {
      break;
    }

LABEL_16:
    v2 = *(a1 + 112);
    if (!v2)
    {
      goto LABEL_24;
    }
  }

  v5 = updated;
  if (!updated)
  {
    _SerialStreamWriteCompleted(a1, v2, 0);
    goto LABEL_16;
  }

LABEL_18:
  if (!v5)
  {
    goto LABEL_24;
  }

  if (v5 == 35)
  {
LABEL_20:
    if (*(a1 + 88))
    {
      *(a1 + 88) = 0;
      v7 = *(a1 + 80);

      dispatch_resume(v7);
    }

    return;
  }

  _SerialStreamErrorHandler(a1, v5);
}

void _SerialStreamCancelHandler(_DWORD *cf)
{
  v2 = cf[7] - 1;
  cf[7] = v2;
  if (!v2)
  {
    v3 = cf[6];
    if ((v3 & 0x80000000) == 0)
    {
      if (close(v3) && *__error())
      {
        __error();
      }

      cf[6] = -1;
    }
  }

  CFRelease(cf);
}

uint64_t SerialStreamReadLine(dispatch_queue_t *a1, int a2, uint64_t a3, uint64_t a4)
{
  v8 = malloc_type_malloc(0x48uLL, 0x10B004092F53E23uLL);
  if (!v8)
  {
    return 4294960568;
  }

  v9 = v8;
  CFRetain(a1);
  *(v9 + 1) = a1;
  *(v9 + 4) = a2 | 0x10000;
  *(v9 + 24) = 0u;
  *(v9 + 40) = 0u;
  *(v9 + 7) = a3;
  *(v9 + 8) = a4;
  dispatch_async_f(a1[2], v9, _SerialStreamRead);
  return 0;
}

uint64_t SerialStreamReadLineSync(dispatch_queue_t *a1, int a2, void *a3, void *a4)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  dsema = dispatch_semaphore_create(0);
  if (dsema)
  {
    v11 = 0;
    v12 = 0;
    LODWORD(v10) = SerialStreamReadLine(a1, a2, _SerialStreamReadLineSyncCompletion, &dsema);
    if (!v10)
    {
      dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
      *a3 = v11;
      if (a4)
      {
        *a4 = v12;
      }
    }

    if (dsema)
    {
      dispatch_release(dsema);
    }
  }

  else
  {
    LODWORD(v10) = -6700;
  }

  return v10;
}

intptr_t _SerialStreamReadLineSyncCompletion(int a1, const void *a2, size_t a3, uint64_t a4)
{
  if (a1)
  {
    v6 = 0;
  }

  else
  {
    v8 = malloc_type_malloc(a3 + 1, 0x100004077774924uLL);
    v6 = v8;
    if (v8)
    {
      if (a3)
      {
        memcpy(v8, a2, a3);
      }

      a1 = 0;
      v6[a3] = 0;
    }

    else
    {
      a1 = -6728;
    }
  }

  *(a4 + 8) = a1;
  *(a4 + 16) = v6;
  *(a4 + 24) = a3;
  v9 = *a4;

  return dispatch_semaphore_signal(v9);
}

uint64_t SerialStreamReadSync(dispatch_queue_t *a1, uint64_t a2, uint64_t a3, char *a4, void *a5)
{
  dsema = dispatch_semaphore_create(0);
  if (!dsema)
  {
    return 4294960596;
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  result = SerialStreamRead(a1, a2, a3, a4, _SerialStreamReadSyncCompletion, &dsema);
  LODWORD(v12) = result;
  if (!result)
  {
    dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
    result = v12;
    if (a5)
    {
      if (!v12)
      {
        *a5 = v14;
      }
    }
  }

  if (dsema)
  {
    dispatch_release(dsema);
    return v12;
  }

  return result;
}

intptr_t _SerialStreamReadSyncCompletion(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 8) = a1;
  *(a4 + 24) = a3;
  return dispatch_semaphore_signal(*a4);
}

uint64_t SerialStreamWrite(dispatch_queue_t *a1, char a2, char *a3, int a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v9 = a3;
  if ((a2 & 1) == 0)
  {
    v11 = malloc_type_malloc(0x40uLL, 0x10A00404E3CEA80uLL);
    if (!v11)
    {
      return 4294960568;
    }

LABEL_14:
    v11[8] = v8;
    *(v11 + 5) = v9;
    CFRetain(a1);
    *(v11 + 1) = a1;
    *(v11 + 6) = a5;
    *(v11 + 7) = a6;
    dispatch_async_f(a1[2], v11, _SerialStreamWrite);
    return 0;
  }

  if (a4 >= 1)
  {
    v12 = a4;
    v13 = (a3 + 8);
    v14 = 64;
    v15 = a4;
    do
    {
      v16 = *v13;
      v13 += 2;
      v14 += v16;
      --v15;
    }

    while (v15);
    v17 = malloc_type_malloc(v14, 0x10A00404E3CEA80uLL);
    if (!v17)
    {
      return 4294960568;
    }

    v11 = v17;
    v18 = 0;
    v19 = v17 + 64;
    v20 = (v9 + 8);
    do
    {
      v21 = *v20;
      memcpy(&v19[v18], *(v20 - 1), *v20);
      v18 += v21;
      v20 += 2;
      --v12;
    }

    while (v12);
    goto LABEL_13;
  }

  v22 = malloc_type_malloc(0x40uLL, 0x10A00404E3CEA80uLL);
  if (v22)
  {
    v11 = v22;
    v18 = 0;
LABEL_13:
    *(v11 + 2) = v11 + 16;
    *(v11 + 3) = v18;
    v9 = (v11 + 4);
    v8 = 1;
    goto LABEL_14;
  }

  return 4294960568;
}

void _SerialStreamWrite(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1[1];
  *a1 = 0;
  **(v8 + 120) = a1;
  *(v8 + 120) = a1;
  v9 = _SerialStreamEnsureSetUp(v8, a2, a3, a4, a5, a6, a7, a8);
  if (v9)
  {

    _SerialStreamErrorHandler(v8, v9);
  }

  else
  {

    _SerialStreamWriteHandler(v8);
  }
}

uint64_t SerialStreamWriteSync(dispatch_queue_t *a1, char *a2, int a3)
{
  v8 = 0;
  dsema = dispatch_semaphore_create(0);
  if (dsema)
  {
    LODWORD(v8) = SerialStreamWrite(a1, 0, a2, a3, _SerialStreamWriteSyncCompletion, &dsema);
    if (!v8)
    {
      dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
    }

    if (dsema)
    {
      dispatch_release(dsema);
    }
  }

  else
  {
    LODWORD(v8) = -6700;
  }

  return v8;
}

void sub_191F1451C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v10 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2719(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t CUBonjourDeviceReconfirm(void *a1)
{
  v1 = [a1 deviceInfo];
  v2 = v1;
  if (v1)
  {
    BonjourDevice_Reconfirm(v1);
    v3 = 0;
  }

  else
  {
    v3 = 4294960554;
  }

  return v3;
}

void initAnalyticsSendEvent(void *a1, void *a2)
{
  v3 = CoreAnalyticsLibrary_sOnce;
  v4 = a2;
  v5 = a1;
  if (v3 != -1)
  {
    dispatch_once(&CoreAnalyticsLibrary_sOnce, &__block_literal_global_2814);
  }

  softLinkAnalyticsSendEvent[0] = dlsym(CoreAnalyticsLibrary_sLib, "AnalyticsSendEvent");
  (softLinkAnalyticsSendEvent[0])(v5, v4);
}

void *__CoreAnalyticsLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/CoreAnalytics.framework/CoreAnalytics", 2);
  CoreAnalyticsLibrary_sLib = result;
  return result;
}

void sub_191F15D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  (*(v9 + 16))(v9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2972(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

Class initRPCompanionLinkDevice()
{
  if (RapportLibrary_sOnce != -1)
  {
    dispatch_once(&RapportLibrary_sOnce, &__block_literal_global_321);
  }

  result = objc_getClass("RPCompanionLinkDevice");
  classRPCompanionLinkDevice = result;
  getRPCompanionLinkDeviceClass[0] = RPCompanionLinkDeviceFunction;
  return result;
}

void *__RapportLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/Rapport.framework/Rapport", 2);
  RapportLibrary_sLib = result;
  return result;
}

Class initRPCompanionLinkClient()
{
  if (RapportLibrary_sOnce != -1)
  {
    dispatch_once(&RapportLibrary_sOnce, &__block_literal_global_321);
  }

  result = objc_getClass("RPCompanionLinkClient");
  classRPCompanionLinkClient = result;
  getRPCompanionLinkClientClass[0] = RPCompanionLinkClientFunction;
  return result;
}

id initValRPOptionTimeoutSeconds()
{
  if (softLinkOnceRPOptionTimeoutSeconds != -1)
  {
    dispatch_once(&softLinkOnceRPOptionTimeoutSeconds, &__block_literal_global_3001);
  }

  v1 = constantValRPOptionTimeoutSeconds;

  return v1;
}

void __initValRPOptionTimeoutSeconds_block_invoke()
{
  if (RapportLibrary_sOnce != -1)
  {
    dispatch_once(&RapportLibrary_sOnce, &__block_literal_global_321);
  }

  v0 = dlsym(RapportLibrary_sLib, "RPOptionTimeoutSeconds");
  if (v0)
  {
    objc_storeStrong(&constantValRPOptionTimeoutSeconds, *v0);
  }

  getRPOptionTimeoutSeconds = RPOptionTimeoutSecondsFunction;
}

void sub_191F175B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_191F17C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_191F183AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  (*(a14 + 16))();
  _Block_object_dispose((v14 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_191F18A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  (*(a12 + 16))();
  _Block_object_dispose((v12 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_191F18FBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_191F19320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_191F1A234(_Unwind_Exception *a1)
{
  (*(v1 + 16))(v1);
  _Block_object_dispose((v2 - 128), 8);
  _Unwind_Resume(a1);
}

Class initHAPSystemKeychainStore()
{
  if (CoreHAPLibrary_sOnce != -1)
  {
    dispatch_once(&CoreHAPLibrary_sOnce, &__block_literal_global_772);
  }

  result = objc_getClass("HAPSystemKeychainStore");
  classHAPSystemKeychainStore = result;
  getHAPSystemKeychainStoreClass[0] = HAPSystemKeychainStoreFunction;
  return result;
}

void *__CoreHAPLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/CoreHAP.framework/CoreHAP", 2);
  CoreHAPLibrary_sLib = result;
  return result;
}

Class initHMHomeManager()
{
  if (HomeKitLibrary_sOnce != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce, &__block_literal_global_756);
  }

  result = objc_getClass("HMHomeManager");
  classHMHomeManager = result;
  getHMHomeManagerClass[0] = HMHomeManagerFunction;
  return result;
}

void *__HomeKitLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/HomeKit.framework/HomeKit", 2);
  HomeKitLibrary_sLib = result;
  return result;
}

Class initHMHomeManagerConfiguration()
{
  if (HomeKitLibrary_sOnce != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce, &__block_literal_global_756);
  }

  result = objc_getClass("HMHomeManagerConfiguration");
  classHMHomeManagerConfiguration = result;
  getHMHomeManagerConfigurationClass[0] = HMHomeManagerConfigurationFunction;
  return result;
}

Class initHMClientConnection()
{
  if (HomeKitLibrary_sOnce != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce, &__block_literal_global_756);
  }

  result = objc_getClass("HMClientConnection");
  classHMClientConnection = result;
  getHMClientConnectionClass[0] = HMClientConnectionFunction;
  return result;
}

uint64_t initValHMHomeManagerPreferencesChangedNotification()
{
  if (HomeKitLibrary_sOnce != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce, &__block_literal_global_756);
  }

  v0 = dlsym(HomeKitLibrary_sLib, "HMHomeManagerPreferencesChangedNotification");
  if (v0)
  {
    result = *v0;
    constantValHMHomeManagerPreferencesChangedNotification = result;
  }

  else
  {
    result = constantValHMHomeManagerPreferencesChangedNotification;
  }

  getHMHomeManagerPreferencesChangedNotification[0] = HMHomeManagerPreferencesChangedNotificationFunction;
  return result;
}

id logger()
{
  if (sCUOSLogCreateOnce_logger != -1)
  {
    dispatch_once(&sCUOSLogCreateOnce_logger, &__block_literal_global_4571);
  }

  v1 = sCUOSLogHandle_logger;

  return v1;
}

uint64_t __logger_block_invoke()
{
  v0 = os_log_create("com.apple.CoreUtils", "CUNANDataSession");
  v1 = sCUOSLogHandle_logger;
  sCUOSLogHandle_logger = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

Class initWiFiAwareInternetSharingConfiguration()
{
  if (WiFiPeerToPeerLibrary_sOnce != -1)
  {
    dispatch_once(&WiFiPeerToPeerLibrary_sOnce, &__block_literal_global_286);
  }

  result = objc_getClass("WiFiAwareInternetSharingConfiguration");
  classWiFiAwareInternetSharingConfiguration = result;
  getWiFiAwareInternetSharingConfigurationClass[0] = WiFiAwareInternetSharingConfigurationFunction;
  return result;
}

void *__WiFiPeerToPeerLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/WiFiPeerToPeer.framework/WiFiPeerToPeer", 2);
  WiFiPeerToPeerLibrary_sLib = result;
  return result;
}

Class initWiFiAwarePairingMetadata()
{
  if (WiFiPeerToPeerLibrary_sOnce != -1)
  {
    dispatch_once(&WiFiPeerToPeerLibrary_sOnce, &__block_literal_global_286);
  }

  result = objc_getClass("WiFiAwarePairingMetadata");
  classWiFiAwarePairingMetadata = result;
  getWiFiAwarePairingMetadataClass[0] = WiFiAwarePairingMetadataFunction;
  return result;
}

Class initWiFiAwareDataSession()
{
  if (WiFiPeerToPeerLibrary_sOnce != -1)
  {
    dispatch_once(&WiFiPeerToPeerLibrary_sOnce, &__block_literal_global_286);
  }

  result = objc_getClass("WiFiAwareDataSession");
  classWiFiAwareDataSession = result;
  getWiFiAwareDataSessionClass[0] = WiFiAwareDataSessionFunction;
  return result;
}

void CUNANMockRemovePublisher(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  os_unfair_lock_lock(&gCUNANMockLock);
  v5 = [gCUNANMockPublishers objectForKeyedSubscript:v3];
  if ([v5 containsObject:v4])
  {
    [v5 removeObject:v4];
    if (![v5 count])
    {
      [gCUNANMockPublishers setObject:0 forKeyedSubscript:v3];
    }

    v6 = [v4 mockEndpoint];
    if (v6)
    {
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v7 = [gCUNANMockSubscribers objectForKeyedSubscript:{v3, 0}];
      v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v13;
        do
        {
          v11 = 0;
          do
          {
            if (*v13 != v10)
            {
              objc_enumerationMutation(v7);
            }

            [*(*(&v12 + 1) + 8 * v11++) reportMockEndpointLost:v6];
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v9);
      }
    }

    os_unfair_lock_unlock(&gCUNANMockLock);
  }

  else
  {
    os_unfair_lock_unlock(&gCUNANMockLock);
  }
}

void CUNANMockRemoveSubscriber(void *a1, void *a2)
{
  v5 = a1;
  v3 = a2;
  os_unfair_lock_lock(&gCUNANMockLock);
  v4 = [gCUNANMockSubscribers objectForKeyedSubscript:v5];
  [v4 removeObject:v3];

  if (![v4 count])
  {
    [gCUNANMockSubscribers setObject:0 forKeyedSubscript:v5];
  }

  os_unfair_lock_unlock(&gCUNANMockLock);
}

id _WiFiAwareCreateEndpointIdentifier(void *a1)
{
  v1 = a1;
  if ([v1 length] == 6)
  {
    v2 = [v1 bytes];
    v10 = NSPrintF("%.6a-%u", v3, v4, v5, v6, v7, v8, v9, v2);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id logger_4859()
{
  if (sCUOSLogCreateOnce_logger_4860 != -1)
  {
    dispatch_once(&sCUOSLogCreateOnce_logger_4860, &__block_literal_global_283);
  }

  v1 = sCUOSLogHandle_logger_4861;

  return v1;
}

uint64_t __logger_block_invoke_4863()
{
  v0 = os_log_create("com.apple.CoreUtils", "CUNANPublisher");
  v1 = sCUOSLogHandle_logger_4861;
  sCUOSLogHandle_logger_4861 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

Class initWiFiAwarePublishServiceSpecificInfo()
{
  if (WiFiPeerToPeerLibrary_sOnce_4876 != -1)
  {
    dispatch_once(&WiFiPeerToPeerLibrary_sOnce_4876, &__block_literal_global_288);
  }

  result = objc_getClass("WiFiAwarePublishServiceSpecificInfo");
  classWiFiAwarePublishServiceSpecificInfo = result;
  getWiFiAwarePublishServiceSpecificInfoClass[0] = WiFiAwarePublishServiceSpecificInfoFunction;
  return result;
}

void *__WiFiPeerToPeerLibrary_block_invoke_4879()
{
  result = dlopen("/System/Library/PrivateFrameworks/WiFiPeerToPeer.framework/WiFiPeerToPeer", 2);
  WiFiPeerToPeerLibrary_sLib_4881 = result;
  return result;
}

void sub_191F30C8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  (*(v17 + 16))(v17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4884(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

Class initWiFiAwarePublisher()
{
  if (WiFiPeerToPeerLibrary_sOnce_4876 != -1)
  {
    dispatch_once(&WiFiPeerToPeerLibrary_sOnce_4876, &__block_literal_global_288);
  }

  result = objc_getClass("WiFiAwarePublisher");
  classWiFiAwarePublisher = result;
  getWiFiAwarePublisherClass[0] = WiFiAwarePublisherFunction;
  return result;
}

Class initWiFiAwarePublishDatapathServiceSpecificInfo()
{
  if (WiFiPeerToPeerLibrary_sOnce_4876 != -1)
  {
    dispatch_once(&WiFiPeerToPeerLibrary_sOnce_4876, &__block_literal_global_288);
  }

  result = objc_getClass("WiFiAwarePublishDatapathServiceSpecificInfo");
  classWiFiAwarePublishDatapathServiceSpecificInfo = result;
  getWiFiAwarePublishDatapathServiceSpecificInfoClass[0] = WiFiAwarePublishDatapathServiceSpecificInfoFunction;
  return result;
}

Class initWiFiAwarePublishDatapathConfiguration()
{
  if (WiFiPeerToPeerLibrary_sOnce_4876 != -1)
  {
    dispatch_once(&WiFiPeerToPeerLibrary_sOnce_4876, &__block_literal_global_288);
  }

  result = objc_getClass("WiFiAwarePublishDatapathConfiguration");
  classWiFiAwarePublishDatapathConfiguration = result;
  getWiFiAwarePublishDatapathConfigurationClass[0] = WiFiAwarePublishDatapathConfigurationFunction;
  return result;
}

Class initWiFiAwarePairingMetadata_4923()
{
  if (WiFiPeerToPeerLibrary_sOnce_4876 != -1)
  {
    dispatch_once(&WiFiPeerToPeerLibrary_sOnce_4876, &__block_literal_global_288);
  }

  result = objc_getClass("WiFiAwarePairingMetadata");
  classWiFiAwarePairingMetadata_4924 = result;
  getWiFiAwarePairingMetadataClass_4914[0] = WiFiAwarePairingMetadataFunction_4926;
  return result;
}

Class initWiFiAwarePublishDatapathSecurityConfiguration()
{
  if (WiFiPeerToPeerLibrary_sOnce_4876 != -1)
  {
    dispatch_once(&WiFiPeerToPeerLibrary_sOnce_4876, &__block_literal_global_288);
  }

  result = objc_getClass("WiFiAwarePublishDatapathSecurityConfiguration");
  classWiFiAwarePublishDatapathSecurityConfiguration = result;
  getWiFiAwarePublishDatapathSecurityConfigurationClass[0] = WiFiAwarePublishDatapathSecurityConfigurationFunction;
  return result;
}

Class initWiFiAwarePairingConfiguration()
{
  if (WiFiPeerToPeerLibrary_sOnce_4876 != -1)
  {
    dispatch_once(&WiFiPeerToPeerLibrary_sOnce_4876, &__block_literal_global_288);
  }

  result = objc_getClass("WiFiAwarePairingConfiguration");
  classWiFiAwarePairingConfiguration = result;
  getWiFiAwarePairingConfigurationClass[0] = WiFiAwarePairingConfigurationFunction;
  return result;
}

Class initWiFiAwareInternetSharingConfiguration_4932()
{
  if (WiFiPeerToPeerLibrary_sOnce_4876 != -1)
  {
    dispatch_once(&WiFiPeerToPeerLibrary_sOnce_4876, &__block_literal_global_288);
  }

  result = objc_getClass("WiFiAwareInternetSharingConfiguration");
  classWiFiAwareInternetSharingConfiguration_4934 = result;
  getWiFiAwareInternetSharingConfigurationClass_4908[0] = WiFiAwareInternetSharingConfigurationFunction_4936;
  return result;
}

Class initWiFiAwarePublishConfiguration()
{
  if (WiFiPeerToPeerLibrary_sOnce_4876 != -1)
  {
    dispatch_once(&WiFiPeerToPeerLibrary_sOnce_4876, &__block_literal_global_288);
  }

  result = objc_getClass("WiFiAwarePublishConfiguration");
  classWiFiAwarePublishConfiguration = result;
  getWiFiAwarePublishConfigurationClass[0] = WiFiAwarePublishConfigurationFunction;
  return result;
}

id logger_5122()
{
  if (sCUOSLogCreateOnce_logger_5124 != -1)
  {
    dispatch_once(&sCUOSLogCreateOnce_logger_5124, &__block_literal_global_5125);
  }

  v1 = sCUOSLogHandle_logger_5126;

  return v1;
}

uint64_t __logger_block_invoke_5129()
{
  v0 = os_log_create("com.apple.CoreUtils", "CUNANSubscriber");
  v1 = sCUOSLogHandle_logger_5126;
  sCUOSLogHandle_logger_5126 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

Class initWiFiMACAddress()
{
  if (WiFiPeerToPeerLibrary_sOnce_5210 != -1)
  {
    dispatch_once(&WiFiPeerToPeerLibrary_sOnce_5210, &__block_literal_global_276);
  }

  result = objc_getClass("WiFiMACAddress");
  classWiFiMACAddress = result;
  getWiFiMACAddressClass[0] = WiFiMACAddressFunction;
  return result;
}

void *__WiFiPeerToPeerLibrary_block_invoke_5213()
{
  result = dlopen("/System/Library/PrivateFrameworks/WiFiPeerToPeer.framework/WiFiPeerToPeer", 2);
  WiFiPeerToPeerLibrary_sLib_5215 = result;
  return result;
}

void sub_191F34808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  (*(v17 + 16))(v17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5238(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

Class initWiFiAwareSubscriber()
{
  if (WiFiPeerToPeerLibrary_sOnce_5210 != -1)
  {
    dispatch_once(&WiFiPeerToPeerLibrary_sOnce_5210, &__block_literal_global_276);
  }

  result = objc_getClass("WiFiAwareSubscriber");
  classWiFiAwareSubscriber = result;
  getWiFiAwareSubscriberClass[0] = WiFiAwareSubscriberFunction;
  return result;
}

Class initWiFiAwareSubscribeConfiguration()
{
  if (WiFiPeerToPeerLibrary_sOnce_5210 != -1)
  {
    dispatch_once(&WiFiPeerToPeerLibrary_sOnce_5210, &__block_literal_global_276);
  }

  result = objc_getClass("WiFiAwareSubscribeConfiguration");
  classWiFiAwareSubscribeConfiguration = result;
  getWiFiAwareSubscribeConfigurationClass[0] = WiFiAwareSubscribeConfigurationFunction;
  return result;
}

void sub_191F36EF0(_Unwind_Exception *a1)
{
  (*(v2 + 16))(v2);
  (*(v1 + 16))(v1);
  _Unwind_Resume(a1);
}

void sub_191F37254(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_191F3B84C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5769(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_191F3D76C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_191F3E014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

Class initHAPSystemKeychainStore_5804()
{
  if (CoreHAPLibrary_sOnce_5805 != -1)
  {
    dispatch_once(&CoreHAPLibrary_sOnce_5805, &__block_literal_global_375);
  }

  result = objc_getClass("HAPSystemKeychainStore");
  classHAPSystemKeychainStore_5806 = result;
  getHAPSystemKeychainStoreClass_5802[0] = HAPSystemKeychainStoreFunction_5808;
  return result;
}

void *__CoreHAPLibrary_block_invoke_5810()
{
  result = dlopen("/System/Library/PrivateFrameworks/CoreHAP.framework/CoreHAP", 2);
  CoreHAPLibrary_sLib_5811 = result;
  return result;
}

Class initRPClient()
{
  if (RapportLibrary_sOnce_5822 != -1)
  {
    dispatch_once(&RapportLibrary_sOnce_5822, &__block_literal_global_5823);
  }

  result = objc_getClass("RPClient");
  classRPClient = result;
  getRPClientClass[0] = RPClientFunction;
  return result;
}

void *__RapportLibrary_block_invoke_5826()
{
  result = dlopen("/System/Library/PrivateFrameworks/Rapport.framework/Rapport", 2);
  RapportLibrary_sLib_5827 = result;
  return result;
}

uint64_t __Block_byref_object_copy__6094(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void _hidePIN(void *a1)
{
  v8 = a1;
  dispatch_assert_queue_V2(v8[14]);
  v5 = v8[3];
  if (*v5 <= 30)
  {
    if (*v5 != -1)
    {
LABEL_3:
      LogPrintF(v5, "void _hidePIN(void * _Nonnull)", 0x1Eu, "Hide PIN\n", v1, v2, v3, v4, v7);
      goto LABEL_5;
    }

    if (_LogCategory_Initialize(v5, 0x1Eu))
    {
      v5 = v8[3];
      goto LABEL_3;
    }
  }

LABEL_5:
  v6 = v8[34];
  if (v6)
  {
    (v6[2].isa)();
  }
}

uint64_t _showPIN(uint64_t a1, _BYTE *a2, unint64_t a3, void *a4)
{
  v7 = a4;
  dispatch_assert_queue_V2(*(v7 + 14));
  v12 = *(v7 + 11);
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = 2;
  }

  if (v13 > 5)
  {
    if (v13 != 6)
    {
      if (v13 == 7)
      {
        v16 = a3 >= 6;
        v17 = 6;
      }

      else
      {
        if (v13 != 8)
        {
LABEL_18:
          v19 = *(v7 + 3);
          if (*v19 <= 90)
          {
            if (*v19 == -1)
            {
              if (!_LogCategory_Initialize(v19, 0x5Au))
              {
                goto LABEL_51;
              }

              v19 = *(v7 + 3);
            }

            LogPrintF(v19, "OSStatus _showPIN(PairingFlags, char * _Nonnull, size_t, void * _Nonnull)", 0x5Au, "### Unsupported PIN type %u\n", v8, v9, v10, v11, v13);
          }

LABEL_51:
          v30 = 4294960564;
          goto LABEL_49;
        }

        v16 = a3 >= 0x10;
        v17 = 16;
      }

      if (v16)
      {
        v14 = v17;
      }

      else
      {
        v14 = a3;
      }

      v15 = v14;
      goto LABEL_28;
    }

    if (a3 >= 8)
    {
      RandomString("123456789", 9uLL, 1, 1, a2);
      v18 = a2 + 1;
      v14 = 6;
      v15 = 6;
      goto LABEL_29;
    }

LABEL_52:
    v30 = 4294960553;
    goto LABEL_49;
  }

  if (v13 == 1)
  {
    if (a3 >= 5)
    {
      v14 = 4;
      v15 = 4;
      goto LABEL_28;
    }

    goto LABEL_52;
  }

  if (v13 == 2)
  {
    if (a3 >= 7)
    {
      v14 = 6;
      v15 = 6;
      goto LABEL_28;
    }

    goto LABEL_52;
  }

  if (v13 != 3)
  {
    goto LABEL_18;
  }

  if (a3 < 9)
  {
    goto LABEL_52;
  }

  v14 = 8;
  v15 = 8;
LABEL_28:
  v18 = a2;
LABEL_29:
  RandomString("0123456789", 0xAuLL, v14, v15, v18);
  *(v7 + 12) = v13;
  v24 = *(v7 + 3);
  if (*v24 > 30)
  {
    goto LABEL_38;
  }

  if (*v24 == -1)
  {
    if (!_LogCategory_Initialize(*(v7 + 3), 0x1Eu))
    {
      goto LABEL_38;
    }

    v24 = *(v7 + 3);
  }

  if (IsAppleInternalBuild_sOnce != -1)
  {
    dispatch_once(&IsAppleInternalBuild_sOnce, &__block_literal_global_116);
  }

  if (IsAppleInternalBuild_sIsInternal)
  {
    v25 = a2;
  }

  else
  {
    v25 = "*";
  }

  LogPrintF(v24, "OSStatus _showPIN(PairingFlags, char * _Nonnull, size_t, void * _Nonnull)", 0x1Eu, "Show PIN '%s'\n", v20, v21, v22, v23, v25);
LABEL_38:
  v26 = *(v7 + 32);
  if (v26)
  {
    v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
    v28 = v27;
    if (v27)
    {
      v29 = v27;
    }

    else
    {
      v29 = @"?";
    }

    (*(v26 + 16))(v26, a1, v29);
LABEL_48:

    v30 = 0;
    goto LABEL_49;
  }

  v30 = *(v7 + 33);
  if (v30)
  {
    v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
    v28 = v31;
    if (v31)
    {
      v32 = v31;
    }

    else
    {
      v32 = @"?";
    }

    (*(v30 + 16))(v30, v32);
    goto LABEL_48;
  }

LABEL_49:

  return v30;
}

uint64_t _promptForPIN(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  dispatch_assert_queue_V2(*(v5 + 14));
  v6 = PairingSessionCopyProperty(*(v5 + 1), @"setupCodeType", 0);
  v17 = 0;
  v7 = CFGetInt64(v6, &v17);
  if (v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = 2;
  }

  *(v5 + 12) = v12;
  if (v6)
  {
    CFRelease(v6);
  }

  v13 = *(v5 + 3);
  if (*v13 <= 30)
  {
    if (*v13 == -1)
    {
      if (!_LogCategory_Initialize(v13, 0x1Eu))
      {
        goto LABEL_11;
      }

      v13 = *(v5 + 3);
    }

    LogPrintF(v13, "OSStatus _promptForPIN(PairingFlags, int32_t, void * _Nonnull)", 0x1Eu, "Prompt for PIN: %#{flags}, Type %s, %d throttle seconds\n", v8, v9, v10, v11, a1);
  }

LABEL_11:
  v14 = _Block_copy(*(v5 + 31));
  v15 = v14;
  if (v14)
  {
    (*(v14 + 2))(v14, a1, a2);
  }

  return 0;
}

Class initPRTrustedContact()
{
  if (ProximityLibrary_sOnce != -1)
  {
    dispatch_once(&ProximityLibrary_sOnce, &__block_literal_global_7327);
  }

  result = objc_getClass("PRTrustedContact");
  classPRTrustedContact = result;
  getPRTrustedContactClass[0] = PRTrustedContactFunction;
  return result;
}

void *__ProximityLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/Proximity.framework/Proximity", 2);
  ProximityLibrary_sLib = result;
  return result;
}

Class initPRContactAllowlist()
{
  if (ProximityLibrary_sOnce != -1)
  {
    dispatch_once(&ProximityLibrary_sOnce, &__block_literal_global_7327);
  }

  result = objc_getClass("PRContactAllowlist");
  classPRContactAllowlist = result;
  getPRContactAllowlistClass[0] = PRContactAllowlistFunction;
  return result;
}

Class initPRSharingSession()
{
  if (ProximityLibrary_sOnce != -1)
  {
    dispatch_once(&ProximityLibrary_sOnce, &__block_literal_global_7327);
  }

  result = objc_getClass("PRSharingSession");
  classPRSharingSession = result;
  getPRSharingSessionClass[0] = PRSharingSessionFunction;
  return result;
}

id logger_7532()
{
  if (sCUOSLogCreateOnce_logger_7534 != -1)
  {
    dispatch_once(&sCUOSLogCreateOnce_logger_7534, &__block_literal_global_7535);
  }

  v1 = sCUOSLogHandle_logger_7536;

  return v1;
}

uint64_t __logger_block_invoke_7539()
{
  v0 = os_log_create("com.apple.CoreUtils", "CUReachability");
  v1 = sCUOSLogHandle_logger_7536;
  sCUOSLogHandle_logger_7536 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_191F51520(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_191F51B20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

int8x8_t curve25519_donna(uint64_t a1, __int128 *a2, void *a3, double a4, double a5, __n128 a6, __n128 a7)
{
  v15 = 0;
  v1445[5] = *MEMORY[0x1E69E9840];
  v16 = a2[1];
  v1425 = *a2;
  v1426 = v16;
  v17 = &kCurve25519BasePoint;
  if (a3)
  {
    v17 = a3;
  }

  LOBYTE(v1425) = v1425 & 0xF8;
  HIBYTE(v1426) = HIBYTE(v1426) & 0x3F | 0x40;
  v18 = *v17 & 0x7FFFFFFFFFFFFLL;
  v19 = (*(v17 + 6) >> 3) & 0x7FFFFFFFFFFFFLL;
  v20 = (*(v17 + 12) >> 6) & 0x7FFFFFFFFFFFFLL;
  v21 = (*(v17 + 19) >> 1) & 0x7FFFFFFFFFFFFLL;
  v22 = (v17[3] >> 12) & 0x7FFFFFFFFFFFFLL;
  v23 = 0;
  v1444 = 0u;
  v1443 = 0u;
  v1442 = 1;
  v1440 = 0u;
  v1441 = 0u;
  v1439 = 1;
  v1438 = 0;
  memset(v1437, 0, sizeof(v1437));
  v1436 = 0;
  memset(v1435, 0, sizeof(v1435));
  v1434 = 0u;
  v1433 = 0u;
  v1432 = 1;
  v1431 = 0;
  memset(v1430, 0, sizeof(v1430));
  v1260 = 19 * v19;
  v1261 = 19 * v22;
  v1429 = 0u;
  v1258 = 19 * v21;
  v1259 = 19 * v20;
  v24 = &v1442;
  v1428 = 0u;
  v25 = &v1439;
  v26 = v1437;
  v1427 = 1;
  v27 = v1435;
  v28 = &v1432;
  v29 = v1430;
  v30 = &v1427;
  v1265 = v19;
  v1266 = v18;
  v1445[0] = v18;
  v1445[1] = v19;
  v31 = v1445;
  v1263 = v21;
  v1264 = v20;
  v1445[2] = v20;
  v1445[3] = v21;
  v1262 = v22;
  v1445[4] = v22;
  do
  {
    v32 = 0;
    v1257 = v15;
    v33 = (&v1425 - v15)[31];
    v34 = v31;
    v35 = v30;
    v36 = v29;
    v37 = v28;
    do
    {
      v1339 = v32;
      v38 = 0;
      v39 = v24;
      v40 = v25;
      v1410 = v27;
      v41 = v37;
      v42 = v36;
      v43 = v35;
      v44 = v34;
      v45 = v33 >> 7;
      do
      {
        v46 = v25[v38];
        v47 = v44[v38];
        v48 = (v47 ^ v46) & v45;
        v25[v38] = v48 ^ v46;
        v44[v38++] = v48 ^ v47;
      }

      while (v38 != 5);
      v1337 = v33;
      v1345 = v41;
      v1347 = v43;
      v1350 = v42;
      for (i = 0; i != 5; ++i)
      {
        v50 = v26[i];
        v51 = v24[i];
        v52 = (v51 ^ v50) & v45;
        v26[i] = v52 ^ v50;
        v24[i] = v52 ^ v51;
      }

      v53 = 0;
      v54 = v25[1];
      v55 = v26[1];
      v56 = *v26 + *v25;
      v57 = v44[1];
      v1399 = *v44;
      v1405 = *v25;
      v58 = v24[1];
      v1395 = *v24;
      v59 = *v44 + 0x3FFFFFFFFFFF68 - *v24;
      v1341 = (v59 * v56) >> 64;
      v1320 = v59 * v56;
      v1364 = v57 - v58;
      v1370 = v59;
      v60 = v57 - v58 + 0x3FFFFFFFFFFFF8;
      v61 = v44[2];
      v62 = v44[3];
      v1333 = v33 >> 7;
      v64 = v24[2];
      v63 = v39[3];
      v1355 = v61 - v64;
      v65 = v61 - v64 + 0x3FFFFFFFFFFFF8;
      v1415 = v40;
      v66 = v40[2];
      v67 = v40[3];
      v68 = v40[4];
      v69 = v55 + v54;
      v71 = v26[2];
      v70 = v26[3];
      v1267 = v26;
      v72 = v71 + v66;
      v73 = v70 + v67;
      v1406 = v1405 + 0x3FFFFFFFFFFF68 - *v26;
      v74 = v26[4];
      v1330 = v54 - v55;
      v75 = v74 + v68;
      v76 = v66 - v71;
      v77 = v67 - v70;
      v1325 = v68 - v74;
      v1352 = v62 - v63;
      v78 = v62 - v63 + 0x3FFFFFFFFFFFF8;
      v79 = v58 + v57;
      v80 = v64 + v61;
      v81 = v63 + v62;
      v82 = v44[4];
      v83 = ((19 * v60) * (v74 + v68) + __PAIR128__(v1341, v1320)) >> 64;
      v84 = 19 * v60 * (v74 + v68) + v1320;
      v85 = v39[4];
      v1296 = v82 - v85;
      v1311 = v82 - v85 + 0x3FFFFFFFFFFFF8;
      v86 = 19 * v1311;
      v1307 = (__PAIR128__(v83, v84) + (19 * v65) * v73 + (19 * v78) * v72 + (19 * v1311) * v69) >> 51;
      v87 = v75;
      v89 = (v60 * v56 + v1370 * v69 + (19 * v65) * v75 + (19 * v78) * v73 + (19 * v1311) * v72) >> 64;
      v88 = v60 * v56 + v1370 * v69 + 19 * v65 * v75 + 19 * v78 * v73 + 19 * v1311 * v72;
      v90 = __CFADD__(v88, v1307);
      v91 = v88 + v1307;
      if (v90)
      {
        ++v89;
      }

      *(&v92 + 1) = v89;
      *&v92 = v91;
      v1342 = v92 >> 51;
      v93 = v85 + v82;
      v1387 = v73;
      v95 = (v60 * v69 + v1370 * v72 + v65 * v56 + (19 * v78) * v75 + v86 * v73) >> 64;
      v94 = v60 * v69 + v1370 * v72 + v65 * v56 + 19 * v78 * v75 + v86 * v73;
      v90 = __CFADD__(v94, v1342);
      v96 = v94 + v1342;
      if (v90)
      {
        ++v95;
      }

      *(&v97 + 1) = v95;
      *&v97 = v96;
      v1300 = v97 >> 51;
      v98 = v1395 + v1399;
      v1273 = v1399 - v1395;
      v1378 = v69;
      v1421 = v56;
      v99 = v60 * v72 + v1370 * v73 + v65 * v69 + v78 * v56 + v86 * v75;
      v100 = v1330 + 0x3FFFFFFFFFFFF8;
      v101 = v76 + 0x3FFFFFFFFFFFF8;
      v102 = v77 + 0x3FFFFFFFFFFFF8;
      v103 = v1325 + 0x3FFFFFFFFFFFF8;
      if (__CFADD__(v99, v1300))
      {
        v104 = *(&v99 + 1) + 1;
      }

      else
      {
        v104 = *(&v99 + 1);
      }

      *(&v105 + 1) = v104;
      *&v105 = v99 + v1300;
      v1290 = v105 >> 51;
      v1269 = v98 * v103;
      v1396 = v77 + 0x3FFFFFFFFFFFF8;
      v1400 = v1325 + 0x3FFFFFFFFFFFF8;
      v1270 = v81 * v100;
      v1271 = v79 * v102 + v98 * v103 + v80 * v101 + v81 * v100;
      v1288 = v79 * v101;
      v1293 = v98 * v102;
      v1282 = v80 * v100;
      v1326 = 19 * v103;
      v1278 = v93 * 19 * v103;
      v106 = v79 * v101 + v98 * v102 + v80 * v100 + v81 * v1406 + v93 * (19 * v103);
      v1303 = v98 * v101;
      v1285 = v79 * v100;
      v1331 = 19 * v102;
      v107 = (v79 * v100 + v98 * v101 + v80 * v1406 + v81 * (19 * v103) + v93 * (19 * v102)) >> 64;
      v108 = v79 * v100 + v98 * v101 + v80 * v1406 + v81 * 19 * v103 + v93 * 19 * v102;
      v1276 = v79 * v1406;
      v1277 = v98 * v100;
      v109 = v100;
      v111 = (v79 * v1406 + v98 * v100 + v80 * v1326 + v81 * (19 * v102) + v93 * (19 * v101)) >> 64;
      v110 = v79 * v1406 + v98 * v100 + v80 * v1326 + v81 * 19 * v102 + v93 * 19 * v101;
      v1272 = (v79 * v1326 + v98 * v1406 + v80 * (19 * v102) + v81 * (19 * v101) + v93 * (19 * v109)) >> 51;
      v90 = __CFADD__(v110, v1272);
      v112 = v110 + v1272;
      if (v90)
      {
        ++v111;
      }

      *(&v113 + 1) = v111;
      *&v113 = v112;
      v1275 = v113 >> 51;
      v90 = __CFADD__(v108, v1275);
      v114 = v108 + v1275;
      if (v90)
      {
        ++v107;
      }

      *(&v115 + 1) = v107;
      *&v115 = v114;
      v1268 = v115 >> 51;
      if (__CFADD__(v106, v1268))
      {
        v116 = *(&v106 + 1) + 1;
      }

      else
      {
        v116 = *(&v106 + 1);
      }

      *(&v118 + 1) = v116;
      *&v118 = v106 + v1268;
      v117 = v118 >> 51;
      v119 = v1352 + 0x7FFFFFFFFFFF8;
      v120 = v1296 + 0x7FFFFFFFFFFF8;
      v121 = v1355 + 0x7FFFFFFFFFFF8;
      v122 = v1364 + 0x7FFFFFFFFFFF8;
      v123 = v1273 + 0x7FFFFFFFFFF68;
      v1297 = (v1273 + 0x7FFFFFFFFFF68) * v1421 + 19 * ((v1364 + 0x7FFFFFFFFFFF8) * v87 + (v1355 + 0x7FFFFFFFFFFF8) * v1387 + (v1352 + 0x7FFFFFFFFFFF8) * v72 + (v1296 + 0x7FFFFFFFFFFF8) * v1378);
      v1321 = v109;
      v124 = __PAIR128__(((v98 * v1400) >> 64) + __CFADD__(v79 * v102, v1269) + ((v79 * (v77 + 0x3FFFFFFFFFFFF8)) >> 64), v79 * v102 + v1269) + v80 * v101 + __PAIR128__((v81 * v109) >> 64, v1270) + v93 * v1406;
      v1353 = v1271 + v93 * v1406 + v117;
      v90 = __CFADD__(v124, v117);
      v125 = v124 + v117;
      if (v90)
      {
        v126 = *(&v124 + 1) + 1;
      }

      else
      {
        v126 = (__PAIR128__(((v98 * v1400) >> 64) + __CFADD__(v79 * v102, v1269) + ((v79 * (v77 + 0x3FFFFFFFFFFFF8)) >> 64), v79 * v102 + v1269) + v80 * v101 + __PAIR128__((v81 * v109) >> 64, v1270) + v93 * v1406) >> 64;
      }

      *(&v127 + 1) = v126;
      *&v127 = v125;
      v1274 = v127 >> 51;
      *v39 = v1370;
      v39[1] = v60;
      v39[2] = v65;
      v39[3] = v78;
      v39[4] = v1311;
      v129 = (v60 * v1387 + v1370 * v87 + v65 * v72 + v78 * v1378 + v1311 * v1421) >> 64;
      v128 = v60 * v1387 + v1370 * v87 + v65 * v72 + v78 * v1378 + v1311 * v1421;
      v1356 = v123 * v87 + v122 * v1387 + v121 * v72 + v119 * v1378 + v120 * v1421 + v1290;
      v90 = __CFADD__(v128, v1290);
      v130 = v128 + v1290;
      if (v90)
      {
        ++v129;
      }

      *(&v131 + 1) = v129;
      *&v131 = v130;
      *v44 = v98;
      v44[1] = v79;
      v132 = v98 * v1406 + 19 * (v79 * v1400 + v80 * v1396 + v81 * v101 + v93 * v109);
      v1312 = 19 * v87;
      v133 = v123 * v1387 + v122 * v72 + v121 * v1378 + v119 * v1421 + 19 * v87 * v120 + v1300;
      v1365 = v1288 + v1293 + v1282 + v81 * v1406 + v1278 + v1268;
      v1390 = v87;
      v134 = v123 * v1378 + v122 * v1421 + 19 * (v121 * v87 + v119 * v1387 + v120 * v72) + v1307;
      v135 = 19 * (v131 >> 51);
      v1371 = v135 + v1297;
      v136 = v135 + (v1297 & 0x7FFFFFFFFFFFFLL);
      v137 = 19 * v1274 + v132;
      v138 = 19 * v1274 + (v132 & 0x7FFFFFFFFFFFFLL);
      v139 = v1276 + v1277 + 19 * (v80 * v1400 + v81 * v1396 + v93 * v101) + v1272;
      v1298 = (v139 & 0x7FFFFFFFFFFFFLL) + (v138 >> 51);
      v1301 = (v134 & 0x7FFFFFFFFFFFFLL) + (v136 >> 51);
      v140 = v123 * v72 + v122 * v1378 + v121 * v1421 + 19 * (v119 * v87 + v120 * v1387) + v1342;
      v1308 = v140;
      v44[2] = v80;
      v44[3] = v81;
      v1343 = v44;
      v44[4] = v93;
      v1304 = v1285 + v1303 + v80 * v1406 + 19 * (v81 * v1400 + v93 * v1396) + v1275;
      v1284 = (v1304 & 0x7FFFFFFFFFFFFLL) + (v1298 >> 51);
      v1286 = (v140 & 0x7FFFFFFFFFFFFLL) + (v1301 >> 51);
      v141 = v1286 + v1284;
      v1280 = (v134 + (v136 >> 51)) & 0x7FFFFFFFFFFFFLL;
      v142 = v134 + (v136 >> 51);
      v1291 = v133;
      v143 = (v139 + (v138 >> 51)) & 0x7FFFFFFFFFFFFLL;
      v144 = v139 + (v138 >> 51);
      v1283 = v144;
      v145 = (v1353 & 0x7FFFFFFFFFFFFLL) + (v1356 & 0x7FFFFFFFFFFFFLL);
      v1279 = v133 & 0x7FFFFFFFFFFFFLL;
      v146 = (v1365 & 0x7FFFFFFFFFFFFLL) + (v133 & 0x7FFFFFFFFFFFFLL);
      v147 = v137;
      v1294 = v137;
      v1281 = v137 & 0x7FFFFFFFFFFFFLL;
      v148 = (v1371 & 0x7FFFFFFFFFFFFLL) + (v137 & 0x7FFFFFFFFFFFFLL);
      v149 = ((v1286 + v1284) * v146 + (v1280 + v143) * v145) * 0x26 + v148 * v148;
      v150 = v149 >> 51;
      *(&v131 + 1) = ((2 * v148) * (v1280 + v143) + v146 * v146 * 0x13 + (38 * v145) * (v1286 + v1284) + (v149 >> 51)) >> 64;
      *&v131 = 2 * v148 * (v1280 + v143) + 19 * v146 * v146 + 38 * v145 * (v1286 + v1284) + v150;
      v151 = v131 >> 51;
      v152 = v133 + v1365;
      v153 = 19 * (v1356 + v1353) * (v1356 + v1353) + 2 * ((v1371 + v137) * (v133 + v1365) + (v142 + v144) * (v1286 + v1284));
      v154 = v145 * v145 * 0x13 + ((v1286 + v1284) * (v1280 + v143) + v148 * v146) * 2;
      v155 = ((v1280 + v143) * (v1280 + v143) + (38 * v145) * v146 + (2 * v148) * (v1286 + v1284) + (v131 >> 51)) >> 51;
      v156 = (v154 + (((v1280 + v143) * (v1280 + v143) + (38 * v145) * v146 + (2 * v148) * (v1286 + v1284) + (v131 >> 51)) >> 51)) >> 64;
      v157 = (v1280 + v143) * v146 + v148 * v145;
      v158 = v141 * v141 + 2 * ((v1371 + v137) * (v1356 + v1353) + (v142 + v144) * v152);
      v159 = 38 * (v1356 + v1353);
      v160 = 19 * v152 * v152 + (v142 + v144) * 2 * (v1371 + v147) + v159 * (v1286 + v1284);
      v161 = v159 * v152 + (v142 + v144) * (v142 + v144) + 2 * (v1371 + v147) * (v1286 + v1284);
      *(&v131 + 1) = v156;
      *&v131 = v154 + v155;
      v162 = v131 >> 51;
      *(&v131 + 1) = (v141 * v141 + v157 * 2 + (v131 >> 51)) >> 64;
      *&v131 = v141 * v141 + 2 * v157 + v162;
      v163 = (v1371 + v147) * (v1371 + v147) + 38 * ((v142 + v144) * (v1356 + v1353) + v152 * (v1286 + v1284));
      v164 = v160 + v150;
      v165 = 19 * (v131 >> 51);
      v166 = v165 + v163;
      v167 = v165 + (v163 & 0x7FFFFFFFFFFFFLL);
      *v1410 = v166 & 0x7FFFFFFFFFFFFLL;
      v1410[1] = (v164 + (v167 >> 51)) & 0x7FFFFFFFFFFFFLL;
      v1410[2] = ((v161 + v151) & 0x7FFFFFFFFFFFFLL) + (((v164 & 0x7FFFFFFFFFFFFLL) + (v167 >> 51)) >> 51);
      v1410[3] = (v153 + v155) & 0x7FFFFFFFFFFFFLL;
      v1410[4] = (v158 + v162) & 0x7FFFFFFFFFFFFLL;
      v168 = v143 - v1280 + 0x3FFFFFFFFFFFF8;
      v169 = (v1353 & 0x7FFFFFFFFFFFFLL) - (v1356 & 0x7FFFFFFFFFFFFLL) + 0x3FFFFFFFFFFFF8;
      v170 = v1284 - v1286 + 0x3FFFFFFFFFFFF8;
      v171 = (v1365 & 0x7FFFFFFFFFFFFLL) - v1279 + 0x3FFFFFFFFFFFF8;
      v172 = v1281 + 0x3FFFFFFFFFFF68 - (v1371 & 0x7FFFFFFFFFFFFLL);
      v173 = ((v168 * v169 + v170 * v171) * 0x26 + v172 * v172) >> 51;
      v174 = (v169 * 0x26uLL * v170 + v171 * v171 * 0x13 + (2 * v172) * v168 + (((v168 * v169 + v170 * v171) * 0x26 + v172 * v172) >> 51)) >> 51;
      v175 = v169 * v169 * 0x13 + (v168 * v170 + v172 * v171) * 2 + (((2 * v172) * v170 + v169 * 0x26uLL * v171 + v168 * v168 + ((v169 * 0x26uLL * v170 + v171 * v171 * 0x13 + (2 * v172) * v168 + (((v168 * v169 + v170 * v171) * 0x26 + v172 * v172) >> 51)) >> 51)) >> 51);
      v176 = v170 * v170 + (v168 * v171 + v172 * v169) * 2 + (v175 >> 51);
      *v1415 = v1421;
      v1415[1] = v1378;
      v1415[2] = v72;
      v1415[3] = v1387;
      v1415[4] = v1390;
      v177 = v1283 - v142 + 0x7FFFFFFFFFFF8;
      v178 = v1353 - v1356 + 0x7FFFFFFFFFFF8;
      v179 = v1304 + (v1298 >> 51) - (v1308 + (v1301 >> 51)) + 0x7FFFFFFFFFFF8;
      v180 = v1365 - v1291 + 0x7FFFFFFFFFFF8;
      v181 = v1294 - v1371 + 0x7FFFFFFFFFF68;
      v182 = v181 * v181 + 38 * (v177 * v178 + v179 * v180);
      v183 = 19 * (v176 >> 51);
      v184 = v183 + v182;
      v178 *= 38;
      v181 *= 2;
      v185 = 19 * v180 * v180 + v177 * v181 + v178 * v179 + v173;
      v186 = v183 + (v182 & 0x7FFFFFFFFFFFFLL);
      v187 = v185 + (v186 >> 51);
      v188 = ((v178 * v180 + v177 * v177 + v179 * v181 + v174) & 0x7FFFFFFFFFFFFLL) + (((v185 & 0x7FFFFFFFFFFFFLL) + (v186 >> 51)) >> 51);
      v189 = v184 & 0x7FFFFFFFFFFFFLL;
      v190 = ((v184 & 0x7FFFFFFFFFFFFLL) * v1266) >> 64;
      v191 = (v184 & 0x7FFFFFFFFFFFFLL) * v1266;
      v192 = v187 & 0x7FFFFFFFFFFFFLL;
      v193 = ((v187 & 0x7FFFFFFFFFFFFLL) * v1266) >> 64;
      v194 = (v187 & 0x7FFFFFFFFFFFFLL) * v1266;
      v195 = ((v184 & 0x7FFFFFFFFFFFFLL) * v1265) >> 64;
      v196 = (v184 & 0x7FFFFFFFFFFFFLL) * v1265;
      v197 = ((v184 & 0x7FFFFFFFFFFFFLL) * v1264) >> 64;
      v198 = v175 & 0x7FFFFFFFFFFFFLL;
      v199 = v176 & 0x7FFFFFFFFFFFFLL;
      v200 = (v176 & 0x7FFFFFFFFFFFFLL) * v1260 + (v175 & 0x7FFFFFFFFFFFFLL) * v1259;
      v201 = v200 + v191 + v192 * v1261 + v188 * v1258;
      v202 = (v176 & 0x7FFFFFFFFFFFFLL) * v1259 + (v175 & 0x7FFFFFFFFFFFFLL) * v1258;
      v203 = ((v175 & 0x7FFFFFFFFFFFFLL) * v1261) >> 64;
      v205 = v202 + v196 + v194 + v188 * v1261;
      v204 = (__PAIR128__(v195 + __CFADD__(v202, v196) + *(&v202 + 1), v202 + v196) + __PAIR128__(v193, v194) + v188 * v1261) >> 64;
      v206 = (v175 & 0x7FFFFFFFFFFFFLL) * v1261;
      v207 = (__PAIR128__(v190 + __CFADD__(v200, v191) + *(&v200 + 1), v200 + v191) + v192 * v1261 + v188 * v1258) >> 51;
      v90 = __CFADD__(v205, v207);
      v208 = v205 + v207;
      if (v90)
      {
        ++v204;
      }

      v209 = v189 * v1263;
      v210 = (v188 * v1265) >> 64;
      *(&v215 + 1) = v204;
      *&v215 = v208;
      v214 = v215 >> 51;
      v213 = __PAIR128__(v197 + __CFADD__(v199 * v1258 + v206, v189 * v1264) + v203 + __CFADD__(v199 * v1258, v206) + ((v199 * v1258) >> 64), v199 * v1258 + v206 + v189 * v1264) + v192 * v1265 + v188 * v1266;
      v211 = v213 >> 64;
      v212 = v213;
      v216 = (v192 * v1264) >> 64;
      v90 = __CFADD__(v212, v214);
      v217 = v212 + v214;
      if (v90)
      {
        ++v211;
      }

      v218 = v199 * v1261 + v198 * v1266;
      v90 = __CFADD__(v218, v209);
      v219 = v218 + v209;
      v220 = (v199 * v1266) >> 64;
      v221 = v199 * v1266;
      v222 = ((v189 * v1263) >> 64) + v90 + *(&v218 + 1);
      v223 = (v189 * v1262) >> 64;
      v224 = v189 * v1262;
      v90 = __CFADD__(v219, v192 * v1264);
      v225 = v219 + v192 * v1264;
      v226 = (v192 * v1263) >> 64;
      v227 = v192 * v1263;
      v228 = v216 + v90 + v222;
      v229 = (v198 * v1265) >> 64;
      v230 = v198 * v1265;
      v231 = v188 * v1265;
      v232 = (v188 * v1264) >> 64;
      v233 = v188 * v1264;
      v234 = v201 & 0x7FFFFFFFFFFFFLL;
      v235 = v208 & 0x7FFFFFFFFFFFFLL;
      *(&v237 + 1) = v211;
      *&v237 = v217;
      v236 = v237 >> 51;
      v238 = v217 & 0x7FFFFFFFFFFFFLL;
      v90 = __CFADD__(v225 + v231, v236);
      v239 = v225 + v231 + v236;
      if (v90)
      {
        v240 = ((__PAIR128__(v228, v225) + __PAIR128__(v210, v231)) >> 64) + 1;
      }

      else
      {
        v240 = (__PAIR128__(v228, v225) + __PAIR128__(v210, v231)) >> 64;
      }

      v241 = v239 & 0x7FFFFFFFFFFFFLL;
      *(&v243 + 1) = v240;
      *&v243 = v239;
      v242 = v243 >> 51;
      v245 = v221 + v230 + v224 + v227 + v233;
      v244 = (__PAIR128__(v220, v221) + __PAIR128__(v229, v230) + __PAIR128__(v223, v224) + __PAIR128__(v226, v227) + __PAIR128__(v232, v233)) >> 64;
      if (__CFADD__(v245, v242))
      {
        ++v244;
      }

      *(&v246 + 1) = v244;
      *&v246 = v245 + v242;
      v247 = v234 + 19 * (v246 >> 51);
      v248 = v247 & 0x7FFFFFFFFFFFFLL;
      v249 = v235 + (v247 >> 51);
      v24 = v1345;
      *v1345 = v248;
      v1345[1] = v249 & 0x7FFFFFFFFFFFFLL;
      v1345[2] = v238 + (v249 >> 51);
      v1345[3] = v241;
      v1345[4] = (v245 + v242) & 0x7FFFFFFFFFFFFLL;
      v250 = v1421;
      v251 = 2 * v1421;
      v252 = 2 * v1378;
      v253 = 38 * v1390;
      v254 = (v1387 * (38 * v72) + v250 * v250 + 38 * v1390 * v1378) >> 51;
      v255 = v1378 * 2 * v1421;
      v256 = (19 * v1387 * v1387 + v1378 * (2 * v1421) + 38 * v1390 * v72) >> 64;
      v257 = 19 * v1387 * v1387 + v255 + 38 * v1390 * v72;
      if (__CFADD__(v257, v254))
      {
        ++v256;
      }

      *(&v259 + 1) = v256;
      *&v259 = v257 + v254;
      v258 = v259 >> 51;
      v260 = (v253 * v1387) >> 64;
      v261 = v253 * v1387;
      v262 = (v72 * (2 * v1421) + v1378 * v1378 + __PAIR128__(v260, v261)) >> 64;
      if (__CFADD__(v72 * v251 + v1378 * v1378 + v261, v258))
      {
        ++v262;
      }

      *(&v264 + 1) = v262;
      *&v264 = v72 * v251 + v1378 * v1378 + v261 + v258;
      v263 = v264 >> 51;
      v265 = v1387 * (2 * v1421) + v72 * v252 + v1312 * v1390;
      v266 = v265 + v263;
      if (__CFADD__(v265, v263))
      {
        v267 = *(&v265 + 1) + 1;
      }

      else
      {
        v267 = (v1387 * (2 * v1421) + v72 * v252 + v1312 * v1390) >> 64;
      }

      v1372 = v1312 * v1390 + 2 * (v72 * v1378 + v1387 * v1421) + v263;
      v269 = v1387 * v252 + v72 * v72 + v1390 * v251;
      v268 = *(&v269 + 1);
      *(&v271 + 1) = v267;
      *&v271 = v265 + v263;
      v270 = v271 >> 51;
      v272 = v269 + v270;
      if (__CFADD__(v269, v270))
      {
        v268 = *(&v269 + 1) + 1;
      }

      v1422 = v72 * v72 + 2 * (v1387 * v1378 + v1390 * v1421) + v270;
      *(&v273 + 1) = v268;
      *&v273 = v269 + v270;
      v274 = 19 * (v273 >> 51);
      v275 = v250 * v250 + 38 * (v1387 * v72 + v1390 * v1378);
      v1383 = v274 + v275;
      v276 = v274 + (v275 & 0x7FFFFFFFFFFFFLL);
      v277 = 19 * v1387 * v1387 + v255 + 38 * v1390 * v72 + v254;
      v1388 = (v277 & 0x7FFFFFFFFFFFFLL) + (v276 >> 51);
      v1391 = v277 + (v276 >> 51);
      v278 = v72 * v251 + v1378 * v1378 + v261 + v258;
      v279 = 2 * v1406;
      v280 = 38 * v1400;
      v281 = (v1396 * (38 * v101) + v1406 * v1406 + (38 * v1400) * v1321) >> 51;
      v282 = (v1331 * v1396 + v1321 * (2 * v1406) + (38 * v1400) * v101) >> 64;
      v283 = v1331 * v1396 + v1321 * 2 * v1406 + 38 * v1400 * v101;
      if (__CFADD__(v283, v281))
      {
        ++v282;
      }

      *(&v285 + 1) = v282;
      *&v285 = v283 + v281;
      v284 = v285 >> 51;
      v286 = v101 * v279;
      v287 = v280 * v1396;
      v289 = (v101 * (2 * v1406) + v1321 * v1321 + v280 * v1396) >> 64;
      v288 = v101 * 2 * v1406 + v1321 * v1321 + v280 * v1396;
      v290 = 2 * v1321;
      v90 = __CFADD__(v288, v284);
      v291 = v288 + v284;
      if (v90)
      {
        ++v289;
      }

      *(&v293 + 1) = v289;
      *&v293 = v291;
      v292 = v293 >> 51;
      v294 = (v1396 * (2 * v1406) + v101 * v290 + v1326 * v1400) >> 64;
      v295 = v1396 * 2 * v1406 + v101 * v290 + v1326 * v1400;
      v296 = v295 + v292;
      if (__CFADD__(v295, v292))
      {
        ++v294;
      }

      v297 = v1326 * v1400 + 2 * (v101 * v1321 + v1396 * v1406) + v292;
      v299 = v1396 * v290 + v101 * v101 + v1400 * v279;
      v298 = *(&v299 + 1);
      *(&v301 + 1) = v294;
      *&v301 = v296;
      v300 = v301 >> 51;
      v90 = __CFADD__(v299, v300);
      v302 = v299 + v300;
      v303 = v101 * v101 + 2 * (v1396 * v1321 + v1400 * v1406) + v300;
      v1267[2] = v101;
      v1267[3] = v1396;
      *v1267 = v1406;
      v1267[1] = v1321;
      v30 = v1267;
      if (v90)
      {
        v298 = *(&v299 + 1) + 1;
      }

      *(&v304 + 1) = v298;
      *&v304 = v302;
      v305 = 19 * (v304 >> 51);
      v306 = v1406 * v1406 + 38 * (v1396 * v101 + v1400 * v1321);
      v307 = v305 + v306;
      v308 = v305 + (v306 & 0x7FFFFFFFFFFFFLL);
      v1267[4] = v1400;
      v309 = v1331 * v1396 + v1321 * 2 * v1406 + v1400 * 38 * v101 + v281;
      v310 = (v286 + v1321 * v1321 + v287 + v284) & 0x7FFFFFFFFFFFFLL;
      v311 = (v278 & 0x7FFFFFFFFFFFFLL) + (v1388 >> 51);
      v312 = (v309 + (v308 >> 51)) & 0x7FFFFFFFFFFFFLL;
      v313 = v310 + (((v309 & 0x7FFFFFFFFFFFFLL) + (v308 >> 51)) >> 51);
      v314 = v266 & 0x7FFFFFFFFFFFFLL;
      v315 = 19 * (v303 & 0x7FFFFFFFFFFFFLL);
      v316 = 19 * (v297 & 0x7FFFFFFFFFFFFLL);
      v317 = (v1391 & 0x7FFFFFFFFFFFFLL) * v315 + (v307 & 0x7FFFFFFFFFFFFLL) * (v1383 & 0x7FFFFFFFFFFFFLL) + v311 * v316 + (v272 & 0x7FFFFFFFFFFFFLL) * (19 * v312) + v314 * (19 * v313);
      v318 = (v1391 & 0x7FFFFFFFFFFFFLL) * (v307 & 0x7FFFFFFFFFFFFLL) + v314 * v316 + v312 * (v1383 & 0x7FFFFFFFFFFFFLL) + v311 * v315 + (v272 & 0x7FFFFFFFFFFFFLL) * (19 * v313);
      v319 = v296 & 0x7FFFFFFFFFFFFLL;
      *(&v304 + 1) = (v318 + (v317 >> 51)) >> 64;
      *&v304 = v318 + (v317 >> 51);
      v320 = v314 * v315 + (v272 & 0x7FFFFFFFFFFFFLL) * v316 + v312 * (v1391 & 0x7FFFFFFFFFFFFLL) + v311 * (v307 & 0x7FFFFFFFFFFFFLL) + v313 * (v1383 & 0x7FFFFFFFFFFFFLL) + (v304 >> 51);
      v323 = v319 * (v1383 & 0x7FFFFFFFFFFFFLL) + (v272 & 0x7FFFFFFFFFFFFLL) * v315 + v314 * (v307 & 0x7FFFFFFFFFFFFLL) + v311 * v312 + v313 * (v1391 & 0x7FFFFFFFFFFFFLL) + (v320 >> 51);
      v322 = v323 >> 64;
      v321 = v323;
      v324 = (v272 & 0x7FFFFFFFFFFFFLL) * (v307 & 0x7FFFFFFFFFFFFLL) + (v302 & 0x7FFFFFFFFFFFFLL) * (v1383 & 0x7FFFFFFFFFFFFLL) + v319 * (v1391 & 0x7FFFFFFFFFFFFLL);
      v325 = v1372 & 0x7FFFFFFFFFFFFLL;
      v326 = v324 + v314 * v312 + v313 * v311 + (__PAIR128__(v322, v321) >> 51);
      v327 = (v317 & 0x7FFFFFFFFFFFFLL) + 19 * (v326 >> 51);
      v328 = v327 & 0x7FFFFFFFFFFFFLL;
      v329 = (v304 & 0x7FFFFFFFFFFFFLL) + (v327 >> 51);
      v25 = v1350;
      *v1350 = v328;
      v1350[1] = v329 & 0x7FFFFFFFFFFFFLL;
      v1350[2] = (v320 & 0x7FFFFFFFFFFFFLL) + (v329 >> 51);
      v1350[3] = v321 & 0x7FFFFFFFFFFFFLL;
      v1350[4] = v326 & 0x7FFFFFFFFFFFFLL;
      v330 = (v1383 & 0x7FFFFFFFFFFFFLL) + 0x3FFFFFFFFFFF68 - (v307 & 0x7FFFFFFFFFFFFLL);
      v331 = (v1391 & 0x7FFFFFFFFFFFFLL) - v312 + 0x3FFFFFFFFFFFF8;
      v332 = v311 - v313 + 0x3FFFFFFFFFFFF8;
      v333 = (v1372 & 0x7FFFFFFFFFFFFLL) - (v297 & 0x7FFFFFFFFFFFFLL) + 0x3FFFFFFFFFFFF8;
      v334 = (v1422 & 0x7FFFFFFFFFFFFLL) - (v303 & 0x7FFFFFFFFFFFFLL) + 0x3FFFFFFFFFFFF8;
      v335 = (v330 * 0x1DB41uLL) >> 51;
      v90 = __CFADD__(121665 * v331, v335);
      v336 = 121665 * v331 + v335;
      if (v90)
      {
        v337 = ((v331 * 0x1DB41uLL) >> 64) + 1;
      }

      else
      {
        v337 = (v331 * 0x1DB41uLL) >> 64;
      }

      v338 = v336 & 0x7FFFFFFFFFFFFLL;
      *(&v340 + 1) = v337;
      *&v340 = v336;
      v339 = v340 >> 51;
      v90 = __CFADD__(v339, 121665 * v332);
      v341 = v339 + 121665 * v332;
      if (v90)
      {
        v342 = ((v332 * 0x1DB41uLL) >> 64) + 1;
      }

      else
      {
        v342 = (v332 * 0x1DB41uLL) >> 64;
      }

      v343 = v341 & 0x7FFFFFFFFFFFFLL;
      *(&v345 + 1) = v342;
      *&v345 = v341;
      v344 = v345 >> 51;
      v90 = __CFADD__(v344, 121665 * v333);
      v346 = v344 + 121665 * v333;
      if (v90)
      {
        v347 = ((v333 * 0x1DB41uLL) >> 64) + 1;
      }

      else
      {
        v347 = (v333 * 0x1DB41uLL) >> 64;
      }

      v348 = v346 & 0x7FFFFFFFFFFFFLL;
      *(&v350 + 1) = v347;
      *&v350 = v346;
      v349 = v350 >> 51;
      v90 = __CFADD__(v349, 121665 * v334);
      v351 = v349 + 121665 * v334;
      if (v90)
      {
        v352 = ((v334 * 0x1DB41uLL) >> 64) + 1;
      }

      else
      {
        v352 = (v334 * 0x1DB41uLL) >> 64;
      }

      *(&v353 + 1) = v352;
      *&v353 = v351;
      v354 = v351 & 0x7FFFFFFFFFFFFLL;
      v355 = ((121665 * v330) & 0x7FFFFFFFFFFFFLL) + (v1383 & 0x7FFFFFFFFFFFFLL) + 19 * (v353 >> 51);
      v356 = v338 + (v1391 & 0x7FFFFFFFFFFFFLL);
      v357 = v343 + v311;
      v358 = v348 + v325;
      v359 = v354 + (v1422 & 0x7FFFFFFFFFFFFLL);
      v360 = (19 * v357) * v333 + (19 * v356) * v334 + (19 * (v348 + v325)) * v332 + (19 * v359) * v331 + v355 * v330;
      v361 = (19 * v357) * v334 + v356 * v330 + (19 * (v348 + v325)) * v333 + (19 * v359) * v332 + v355 * v331 + (v360 >> 51);
      v363 = (v357 * v330 + v356 * v331 + (19 * (v348 + v325)) * v334 + (19 * v359) * v333 + v355 * v332 + (v361 >> 51)) >> 64;
      v362 = v357 * v330 + v356 * v331 + 19 * (v348 + v325) * v334 + 19 * v359 * v333 + v355 * v332 + (v361 >> 51);
      v364 = v357 * v331 + v356 * v332 + v358 * v330 + (19 * v359) * v334 + v355 * v333;
      v365 = v357 * v332 + v356 * v333 + v358 * v331 + v359 * v330;
      v31 = v1410;
      *(&v353 + 1) = (v364 + (__PAIR128__(v363, v362) >> 51)) >> 64;
      *&v353 = v364 + (__PAIR128__(v363, v362) >> 51);
      v366 = v365 + v355 * v334 + (v353 >> 51);
      v367 = (v360 & 0x7FFFFFFFFFFFFLL) + 19 * (v366 >> 51);
      v368 = (v361 & 0x7FFFFFFFFFFFFLL) + (v367 >> 51);
      v26 = v1347;
      *v1347 = v367 & 0x7FFFFFFFFFFFFLL;
      v1347[1] = v368 & 0x7FFFFFFFFFFFFLL;
      v1347[2] = (v362 & 0x7FFFFFFFFFFFFLL) + (v368 >> 51);
      v1347[3] = v353 & 0x7FFFFFFFFFFFFLL;
      v1347[4] = v366 & 0x7FFFFFFFFFFFFLL;
      do
      {
        v369 = v1350[v53];
        v370 = v1410[v53];
        v371 = (v370 ^ v369) & v1333;
        v1350[v53] = v371 ^ v369;
        v1410[v53++] = v371 ^ v370;
      }

      while (v53 != 5);
      for (j = 0; j != 5; ++j)
      {
        v373 = v1347[j];
        v374 = v1345[j];
        v375 = (v374 ^ v373) & v1333;
        v1347[j] = v375 ^ v373;
        v1345[j] = v375 ^ v374;
      }

      v33 = 2 * v1337;
      v32 = v1339 + 1;
      v34 = v1410;
      v35 = v1267;
      v29 = v1415;
      v28 = v39;
      v36 = v1415;
      v37 = v39;
      v27 = v1343;
    }

    while (v1339 != 7);
    v15 = v1257 + 1;
  }

  while (v1257 != 31);
  v377 = v1347[3];
  v376 = v1347[4];
  v378 = 19 * v376;
  v379 = *v1347;
  v380 = v1347[1];
  v381 = v1347[2];
  v382 = 2 * *v1347;
  v1348 = *v1350;
  v1354 = v1350[1];
  v383 = v380 * v380;
  v384 = 38 * v376;
  v385 = (v377 * (38 * v381) + v379 * v379 + (38 * v376) * v380) >> 51;
  v1366 = 19 * v377;
  v386 = v382 * v380;
  v387 = ((19 * v377) * v377 + v380 * v382 + (38 * v376) * v381) >> 64;
  v388 = 19 * v377 * v377 + v380 * v382 + 38 * v376 * v381;
  if (__CFADD__(v388, v385))
  {
    ++v387;
  }

  *(&v390 + 1) = v387;
  *&v390 = v388 + v385;
  v389 = v390 >> 51;
  v391 = v382 * v381;
  v392 = (v384 * v377) >> 64;
  v393 = v384 * v377;
  v394 = (v381 * v382 + v380 * v380 + __PAIR128__(v392, v393)) >> 64;
  if (__CFADD__(v382 * v381 + v383 + v393, v389))
  {
    ++v394;
  }

  *(&v396 + 1) = v394;
  *&v396 = v381 * v382 + v380 * v380 + v393 + v389;
  v395 = v396 >> 51;
  v397 = v377 * v382 + v381 * (2 * v380);
  v1407 = 19 * v376;
  v400 = v397 + (19 * v376) * v376;
  v398 = v400 >> 64;
  v399 = v400;
  if (__CFADD__(v397 + v378 * v376, v395))
  {
    ++v398;
  }

  v1344 = v1350[2];
  v1346 = v1350[3];
  *(&v404 + 1) = v398;
  *&v404 = v399 + v395;
  v403 = v404 >> 51;
  v402 = v377 * (2 * v380) + v381 * v381 + v376 * v382;
  v401 = *(&v402 + 1);
  if (__CFADD__(v402, v403))
  {
    v401 = *(&v402 + 1) + 1;
  }

  v405 = v381 * v381 + 2 * (v377 * v380 + v376 * v379);
  v1338 = v399 + v395;
  v1340 = v402 + v403;
  *(&v406 + 1) = v401;
  *&v406 = v402 + v403;
  v1379 = v379;
  v407 = v379 * v379 + 38 * (v377 * v381 + v376 * v380);
  v408 = 19 * (v406 >> 51);
  v409 = v408 + v407;
  v410 = v408 + (v407 & 0x7FFFFFFFFFFFFLL);
  v1411 = v381;
  v1401 = v380;
  v1373 = v377;
  v1302 = v381 * v380 + v377 * v379;
  v1322 = v395;
  v1357 = v403;
  v411 = 19 * v377 * v377 + v386 + 38 * v376 * v381 + v385;
  v1305 = v391 + v383 + v393 + v389;
  v1332 = v378 * v376 + 2 * v1302 + v395;
  v1334 = v405 + v403;
  v412 = v409 & 0x7FFFFFFFFFFFFLL;
  v413 = (v411 + (v410 >> 51)) & 0x7FFFFFFFFFFFFLL;
  v1309 = (v411 & 0x7FFFFFFFFFFFFLL) + (v410 >> 51);
  v1313 = v405;
  v414 = (v1305 & 0x7FFFFFFFFFFFFLL) + (v1309 >> 51);
  v415 = -2;
  v1389 = v413;
  v1392 = v412;
  v1351 = v1350[4];
  v1397 = v414;
  v1317 = v1332 & 0x7FFFFFFFFFFFFLL;
  v416 = v1332 & 0x7FFFFFFFFFFFFLL;
  v1327 = (v405 + v403) & 0x7FFFFFFFFFFFFLL;
  v417 = v1327;
  do
  {
    v418 = v417;
    v419 = v416;
    v420 = v414;
    v421 = v413;
    v422 = v412;
    v423 = 2 * v412;
    v424 = 2 * v413;
    v425 = 38 * v414;
    v426 = 19 * v417;
    v427 = 38 * v417;
    v428 = v412 * v412;
    v429 = (38 * v414) * v416 + v412 * v412;
    v430 = (v429 + (38 * v417) * v413) >> 64;
    v431 = v429 + 38 * v417 * v413;
    v432 = ((2 * v412) * v413) >> 64;
    v433 = 19 * v416;
    v1416 = (v413 * v413) >> 64;
    v1418 = v413 * v413;
    v434 = v420 * (2 * v412) + v413 * v413 + v427 * v416;
    v435 = 2 * v413 * v420;
    v436 = (v416 * (2 * v412) + (2 * v413) * v420 + v426 * v418) >> 64;
    v437 = v416 * 2 * v412 + v435 + v426 * v418;
    v1423 = 2 * v412 * v413;
    v439 = v418 * 2 * v412;
    v440 = __PAIR128__(v430, v431) >> 51;
    v438 = (19 * v419) * v419 + (2 * v412) * v413 + v427 * v420;
    v90 = __CFADD__(v438, v440);
    v441 = v438 + v440;
    if (v90)
    {
      v442 = *(&v438 + 1) + 1;
    }

    else
    {
      v442 = ((19 * v419) * v419 + (2 * v412) * v413 + v427 * v420) >> 64;
    }

    *(&v444 + 1) = v442;
    *&v444 = v441;
    v443 = v444 >> 51;
    v445 = v434 + v443;
    if (__CFADD__(v434, v443))
    {
      v446 = *(&v434 + 1) + 1;
    }

    else
    {
      v446 = *(&v434 + 1);
    }

    *(&v448 + 1) = v446;
    *&v448 = v445;
    v447 = v448 >> 51;
    v90 = __CFADD__(v437, v447);
    v449 = v437 + v447;
    if (v90)
    {
      ++v436;
    }

    v450 = v419 * v424 + v420 * v420 + __PAIR128__((v418 * v423) >> 64, v439);
    *(&v452 + 1) = v436;
    *&v452 = v449;
    v451 = v452 >> 51;
    v90 = __CFADD__(v450, v451);
    v453 = v450 + v451;
    v454 = v431 & 0x7FFFFFFFFFFFFLL;
    if (v90)
    {
      v455 = *(&v450 + 1) + 1;
    }

    else
    {
      v455 = (v419 * v424 + v420 * v420 + __PAIR128__((v418 * v423) >> 64, v439)) >> 64;
    }

    *(&v456 + 1) = v455;
    *&v456 = v453;
    v457 = v454 + 19 * (v456 >> 51);
    v458 = v445 & 0x7FFFFFFFFFFFFLL;
    v416 = v449 & 0x7FFFFFFFFFFFFLL;
    v417 = v453 & 0x7FFFFFFFFFFFFLL;
    v459 = (v441 & 0x7FFFFFFFFFFFFLL) + (v457 >> 51);
    v412 = v457 & 0x7FFFFFFFFFFFFLL;
    v414 = v458 + (v459 >> 51);
    v413 = v459 & 0x7FFFFFFFFFFFFLL;
    v90 = __CFADD__(v415++, 1);
  }

  while (!v90);
  v1314 = v1313 + v1357;
  v1306 = v1305 + (v1309 >> 51);
  v1287 = 19 * v1411;
  v1289 = 19 * v1401;
  v460 = v417 * (19 * v1401) + v416 * (19 * v1411) + v412 * v1379 + v413 * v1407;
  v1358 = v460 + v414 * v1366;
  v461 = v417 * (19 * v1411) + v416 * v1366 + v412 * v1401 + v413 * v1379 + v414 * v1407;
  v462 = (v460 + v414 * v1366) >> 51;
  v463 = v461 + v462;
  v1299 = v461 + v462;
  if (__CFADD__(v461, v462))
  {
    v464 = *(&v461 + 1) + 1;
  }

  else
  {
    v464 = (v417 * (19 * v1411) + v416 * v1366 + v412 * v1401 + v413 * v1379 + v414 * v1407) >> 64;
  }

  v465 = v417 * v1366 + v416 * v1407 + v412 * v1411 + v413 * v1401 + v414 * v1379;
  *(&v467 + 1) = v464;
  *&v467 = v463;
  v466 = v467 >> 51;
  v90 = __CFADD__(v465, v466);
  v468 = v465 + v466;
  v1295 = v468;
  if (v90)
  {
    v469 = *(&v465 + 1) + 1;
  }

  else
  {
    v469 = (v417 * v1366 + v416 * v1407 + v412 * v1411 + v413 * v1401 + v414 * v1379) >> 64;
  }

  v470 = v417 * v1407 + v416 * v1379 + v412 * v1373 + v413 * v1411 + v414 * v1401;
  *(&v472 + 1) = v469;
  *&v472 = v468;
  v471 = v472 >> 51;
  v473 = v470 + v471;
  v1292 = v470 + v471;
  if (__CFADD__(v470, v471))
  {
    v474 = *(&v470 + 1) + 1;
  }

  else
  {
    v474 = (v417 * v1407 + v416 * v1379 + v412 * v1373 + v413 * v1411 + v414 * v1401) >> 64;
  }

  v476 = v417 * v1379 + v416 * v1401 + v412 * v376 + v413 * v1373 + v414 * v1411;
  v475 = *(&v476 + 1);
  *(&v478 + 1) = v474;
  *&v478 = v473;
  v477 = v478 >> 51;
  v1310 = v476 + v477;
  if (__CFADD__(v476, v477))
  {
    v475 = *(&v476 + 1) + 1;
  }

  *(&v479 + 1) = v475;
  *&v479 = v476 + v477;
  v1359 = (v1358 & 0x7FFFFFFFFFFFFLL) + 19 * (v479 >> 51);
  v480 = (v429 + v418 * 0x26uLL * v421) >> 51;
  v481 = v422 >> 63;
  v483 = 19 * v419 * v419 + v1423 + 38 * v418 * v420;
  v482 = (__PAIR128__(v432 + v481 * v421 + __CFADD__(19 * v419 * v419, v1423) + ((v419 * v419 * 0x13) >> 64), 19 * v419 * v419 + v1423) + v418 * 0x26uLL * v420) >> 64;
  if (__CFADD__(v483, v480))
  {
    ++v482;
  }

  *(&v485 + 1) = v482;
  *&v485 = v483 + v480;
  v484 = v485 >> 51;
  v486 = (__PAIR128__(v481, v423) * v420 + __PAIR128__(v1416, v1418) + v418 * 0x26uLL * v419) >> 64;
  if (__CFADD__(v423 * v420 + v1418 + 38 * v418 * v419, v484))
  {
    ++v486;
  }

  *(&v488 + 1) = v486;
  *&v488 = v423 * v420 + v1418 + 38 * v418 * v419 + v484;
  v487 = v488 >> 51;
  v489 = __PAIR128__(v481, v423) * v419 + __PAIR128__(((v424 * v420) >> 64) + (v421 >> 63) * v420, v435);
  v490 = 19 * v418 * v418;
  v491 = (v489 + v418 * v418 * 0x13) >> 64;
  if (__CFADD__(v489 + v490, v487))
  {
    ++v491;
  }

  *(&v493 + 1) = v491;
  *&v493 = v489 + v490 + v487;
  v492 = v493 >> 51;
  v494 = v423 * v419 + v435 + v490 + v487;
  v495 = (__PAIR128__(v421 >> 63, v424) * v419) >> 64;
  v496 = (__PAIR128__(v481, v423) * v418) >> 64;
  v497 = v428 + v425 * v419 + v427 * v421;
  v498 = v1423 + v433 * v419;
  v499 = v424 * v419;
  v500 = v1418 + v420 * v423 + v427 * v419;
  v501 = v498 + v427 * v420;
  v504 = __PAIR128__(v495, v499) + v420 * v420 + __PAIR128__(v496, v423 * v418);
  v503 = v504 >> 64;
  v502 = v504;
  v505 = v499 + v420 * v420 + v423 * v418 + v492;
  v90 = __CFADD__(v502, v492);
  v506 = v502 + v492;
  if (v90)
  {
    v507 = v503 + 1;
  }

  else
  {
    v507 = v503;
  }

  *(&v508 + 1) = v507;
  *&v508 = v506;
  v509 = v501 + v480;
  v510 = 19 * (v508 >> 51);
  v511 = v500 + v484;
  v512 = v510 + (v497 & 0x7FFFFFFFFFFFFLL);
  v513 = (v509 & 0x7FFFFFFFFFFFFLL) + (v512 >> 51);
  v514 = v509 + (v512 >> 51);
  v515 = v510 + v497;
  v516 = (v505 & 0x7FFFFFFFFFFFFLL) * v1379 + (v494 & 0x7FFFFFFFFFFFFLL) * v1401;
  v517 = (v505 & 0x7FFFFFFFFFFFFLL) * v1407 + (v494 & 0x7FFFFFFFFFFFFLL) * v1379;
  v518 = (v505 & 0x7FFFFFFFFFFFFLL) * v1366 + (v494 & 0x7FFFFFFFFFFFFLL) * v1407;
  v519 = v515 & 0x7FFFFFFFFFFFFLL;
  v520 = v514 & 0x7FFFFFFFFFFFFLL;
  v521 = (v511 & 0x7FFFFFFFFFFFFLL) + (v513 >> 51);
  v522 = ((v505 & 0x7FFFFFFFFFFFFLL) * v1289 + (v494 & 0x7FFFFFFFFFFFFLL) * v1287 + (v515 & 0x7FFFFFFFFFFFFLL) * v1379 + (v514 & 0x7FFFFFFFFFFFFLL) * v1407 + v521 * v1366) >> 51;
  v524 = ((v505 & 0x7FFFFFFFFFFFFLL) * v1287 + (v494 & 0x7FFFFFFFFFFFFLL) * v1366 + (v515 & 0x7FFFFFFFFFFFFLL) * v1401 + (v514 & 0x7FFFFFFFFFFFFLL) * v1379 + v521 * v1407) >> 64;
  v523 = (v505 & 0x7FFFFFFFFFFFFLL) * v1287 + (v494 & 0x7FFFFFFFFFFFFLL) * v1366 + (v515 & 0x7FFFFFFFFFFFFLL) * v1401 + (v514 & 0x7FFFFFFFFFFFFLL) * v1379 + v521 * v1407;
  v90 = __CFADD__(v523, v522);
  v525 = v523 + v522;
  if (v90)
  {
    ++v524;
  }

  *(&v527 + 1) = v524;
  *&v527 = v525;
  v526 = v527 >> 51;
  v529 = (v518 + v519 * v1411 + v520 * v1401 + v521 * v1379) >> 64;
  v528 = v518 + v519 * v1411 + v520 * v1401 + v521 * v1379;
  v90 = __CFADD__(v528, v526);
  v530 = v528 + v526;
  if (v90)
  {
    ++v529;
  }

  *(&v532 + 1) = v529;
  *&v532 = v530;
  v531 = v532 >> 51;
  v534 = (v517 + v519 * v1373 + v520 * v1411 + v521 * v1401) >> 64;
  v533 = v517 + v519 * v1373 + v520 * v1411 + v521 * v1401;
  v90 = __CFADD__(v533, v531);
  v535 = v533 + v531;
  if (v90)
  {
    ++v534;
  }

  *(&v537 + 1) = v534;
  *&v537 = v535;
  v536 = v537 >> 51;
  v538 = v511 + (v513 >> 51);
  v540 = (v516 + v519 * v376 + v520 * v1373 + v521 * v1411) >> 64;
  v539 = v516 + v519 * v376 + v520 * v1373 + v521 * v1411;
  v90 = __CFADD__(v539, v536);
  v541 = v539 + v536;
  if (v90)
  {
    ++v540;
  }

  *(&v542 + 1) = v540;
  *&v542 = v541;
  v543 = 19 * v376 * v376 + 2 * v1302 + v1322;
  v544 = v494 * 19 * v1373 + v505 * v1287 + v515 * v1401 + v514 * v1379 + v538 * 19 * v376 + v522;
  v545 = v494 * v1287 + v1289 * v505 + v515 * v1379 + v514 * 19 * v376 + v538 * 19 * v1373;
  v546 = 19 * (v542 >> 51);
  v547 = v546 + v545;
  v548 = v546 + (v545 & 0x7FFFFFFFFFFFFLL);
  v549 = v494 * 19 * v376 + v505 * 19 * v1373 + v515 * v1411 + v514 * v1401 + v538 * v1379 + v526;
  v550 = v544 + (v548 >> 51);
  v551 = (v544 & 0x7FFFFFFFFFFFFLL) + (v548 >> 51);
  v552 = v494 * v1379 + v505 * 19 * v376 + v515 * v1373 + v514 * v1411 + v538 * v1401 + v531;
  v553 = v549 + (v551 >> 51);
  v554 = v494 * v1401 + v505 * v1379 + v515 * v376 + v514 * v1373 + v538 * v1411 + v536;
  v555 = (v549 & 0x7FFFFFFFFFFFFLL) + (v551 >> 51);
  v556 = v550 & 0x7FFFFFFFFFFFFLL;
  v1367 = v550;
  v557 = ((19 * v1397) * (v554 & 0x7FFFFFFFFFFFFLL) + (v552 & 0x7FFFFFFFFFFFFLL) * (19 * v1317) + (v547 & 0x7FFFFFFFFFFFFLL) * v1389 + (v550 & 0x7FFFFFFFFFFFFLL) * v1392 + v555 * (19 * v1327) + ((v1389 * (v554 & 0x7FFFFFFFFFFFFLL) * 0x13 + (19 * v1397) * (v552 & 0x7FFFFFFFFFFFFLL) + (v547 & 0x7FFFFFFFFFFFFLL) * v1392 + (v550 & 0x7FFFFFFFFFFFFLL) * (19 * v1327) + v555 * (19 * v1317)) >> 51)) >> 51;
  v1412 = 19 * v1317;
  v558 = (v554 & 0x7FFFFFFFFFFFFLL) * (19 * v1317) + (v552 & 0x7FFFFFFFFFFFFLL) * (19 * v1327) + (v547 & 0x7FFFFFFFFFFFFLL) * v1397 + (v550 & 0x7FFFFFFFFFFFFLL) * v1389 + v555 * v1392 + (((19 * v1397) * (v554 & 0x7FFFFFFFFFFFFLL) + (v552 & 0x7FFFFFFFFFFFFLL) * (19 * v1317) + (v547 & 0x7FFFFFFFFFFFFLL) * v1389 + (v550 & 0x7FFFFFFFFFFFFLL) * v1392 + v555 * (19 * v1327) + ((v1389 * (v554 & 0x7FFFFFFFFFFFFLL) * 0x13 + (19 * v1397) * (v552 & 0x7FFFFFFFFFFFFLL) + (v547 & 0x7FFFFFFFFFFFFLL) * v1392 + (v550 & 0x7FFFFFFFFFFFFLL) * (19 * v1327) + v555 * (19 * v1317)) >> 51)) >> 51);
  v1408 = 19 * v1327;
  v559 = ((v554 & 0x7FFFFFFFFFFFFLL) * (19 * v1327) + (v552 & 0x7FFFFFFFFFFFFLL) * v1392 + (v547 & 0x7FFFFFFFFFFFFLL) * (v543 & 0x7FFFFFFFFFFFFLL) + (v550 & 0x7FFFFFFFFFFFFLL) * v1397 + v555 * v1389 + (v558 >> 51)) >> 64;
  v560 = v552 * 19 * v1332 + v554 * 19 * v1306 + v547 * v1389 + v550 * v1392 + v553 * 19 * v1334 + ((v1389 * (v554 & 0x7FFFFFFFFFFFFLL) * 0x13 + (19 * v1397) * (v552 & 0x7FFFFFFFFFFFFLL) + (v547 & 0x7FFFFFFFFFFFFLL) * v1392 + (v550 & 0x7FFFFFFFFFFFFLL) * (19 * v1327) + v555 * (19 * v1317)) >> 51);
  v561 = (v1299 & 0x7FFFFFFFFFFFFLL) + (v1359 >> 51);
  v1424 = (v1295 & 0x7FFFFFFFFFFFFLL) + (v561 >> 51);
  v562 = v561 & 0x7FFFFFFFFFFFFLL;
  v1419 = v1292 & 0x7FFFFFFFFFFFFLL;
  v563 = ((v554 & 0x7FFFFFFFFFFFFLL) * (19 * v1327) + (v552 & 0x7FFFFFFFFFFFFLL) * v1392 + (v547 & 0x7FFFFFFFFFFFFLL) * (v543 & 0x7FFFFFFFFFFFFLL) + (v550 & 0x7FFFFFFFFFFFFLL) * v1397 + v555 * v1389 + (v558 >> 51)) >> 51;
  v564 = v552 * v1389 + v554 * v1392 + v547 * v1314 + v1367 * v543 + v553 * v1306 + v563;
  v565 = 38 * (v564 & 0x7FFFFFFFFFFFFLL);
  v566 = 19 * (((v554 & 0x7FFFFFFFFFFFFLL) * v1392 + (v552 & 0x7FFFFFFFFFFFFLL) * v1389 + (v547 & 0x7FFFFFFFFFFFFLL) * (v1314 & 0x7FFFFFFFFFFFFLL) + v556 * (v543 & 0x7FFFFFFFFFFFFLL) + v555 * v1397 + __PAIR128__(v559 >> 51, v563)) >> 51);
  v567 = v552 * 19 * v1306 + 19 * v1389 * v554 + v547 * v1392 + v1367 * 19 * v1334 + v553 * 19 * v1332;
  v568 = v566 + (v567 & 0x7FFFFFFFFFFFFLL);
  v569 = v560 + (v568 >> 51);
  v570 = (v560 & 0x7FFFFFFFFFFFFLL) + (v568 >> 51);
  v571 = v552 * 19 * v1334 + v554 * 19 * v1332 + v547 * v1306 + v1367 * v1389 + v553 * v1392 + v557;
  v572 = (v571 & 0x7FFFFFFFFFFFFLL) + (v570 >> 51);
  v573 = v552 * v1392 + v554 * 19 * v1334 + v547 * (19 * v376 * v376 + 2 * v1302 + v1322) + v1367 * v1306 + v553 * v1389 + (v558 >> 51);
  v574 = (v566 + v567) & 0x7FFFFFFFFFFFFLL;
  v575 = v565 * (v569 & 0x7FFFFFFFFFFFFLL) + v574 * v574 + (v573 & 0x7FFFFFFFFFFFFLL) * v572 * 0x26;
  v576 = v575 >> 51;
  *(&v542 + 1) = ((2 * v574) * (v569 & 0x7FFFFFFFFFFFFLL) + (v573 & 0x7FFFFFFFFFFFFLL) * (v573 & 0x7FFFFFFFFFFFFLL) * 0x13 + v565 * v572 + (v575 >> 51)) >> 64;
  *&v542 = 2 * v574 * (v569 & 0x7FFFFFFFFFFFFLL) + 19 * (v573 & 0x7FFFFFFFFFFFFLL) * (v573 & 0x7FFFFFFFFFFFFLL) + v565 * v572 + v576;
  v577 = 2 * (v573 & 0x7FFFFFFFFFFFFLL);
  v578 = v577 * v574 + (v564 & 0x7FFFFFFFFFFFFLL) * (v564 & 0x7FFFFFFFFFFFFLL) * 0x13 + (v569 & 0x7FFFFFFFFFFFFLL) * v572 * 2 + (((v569 & 0x7FFFFFFFFFFFFLL) * (v569 & 0x7FFFFFFFFFFFFLL) + v565 * (v573 & 0x7FFFFFFFFFFFFLL) + (2 * v574) * v572 + (v542 >> 51)) >> 51);
  v579 = v577 * (v569 & 0x7FFFFFFFFFFFFLL) + (v564 & 0x7FFFFFFFFFFFFLL) * v574 * 2 + v572 * v572 + (v578 >> 51);
  v1417 = v1310 & 0x7FFFFFFFFFFFFLL;
  v580 = v571 + (v570 >> 51);
  v564 *= 38;
  v581 = (v566 + v567) * (v566 + v567) + v569 * v564 + 38 * v573 * v580;
  v582 = 19 * (v579 >> 51);
  v583 = v582 + v581;
  v584 = 2 * (v566 + v567);
  v585 = 19 * v573 * v573 + v569 * v584 + v580 * v564 + v576;
  v586 = v582 + (v581 & 0x7FFFFFFFFFFFFLL);
  v587 = ((v564 * v573 + v569 * v569 + v580 * v584 + (v542 >> 51)) & 0x7FFFFFFFFFFFFLL) + (((v585 & 0x7FFFFFFFFFFFFLL) + (v586 >> 51)) >> 51);
  v588 = (v585 + (v586 >> 51)) & 0x7FFFFFFFFFFFFLL;
  v589 = 19 * (v1310 & 0x7FFFFFFFFFFFFLL);
  v590 = 19 * (v1292 & 0x7FFFFFFFFFFFFLL);
  v591 = (v579 & 0x7FFFFFFFFFFFFLL) * (19 * v562) + (v578 & 0x7FFFFFFFFFFFFLL) * (19 * v1424) + (v583 & 0x7FFFFFFFFFFFFLL) * (v1359 & 0x7FFFFFFFFFFFFLL) + v588 * v589 + v587 * v590;
  v592 = (v579 & 0x7FFFFFFFFFFFFLL) * (19 * v1424) + (v578 & 0x7FFFFFFFFFFFFLL) * v590 + (v583 & 0x7FFFFFFFFFFFFLL) * v562 + v588 * (v1359 & 0x7FFFFFFFFFFFFLL) + v587 * v589 + (v591 >> 51);
  v593 = (v579 & 0x7FFFFFFFFFFFFLL) * v590 + (v578 & 0x7FFFFFFFFFFFFLL) * v589 + (v583 & 0x7FFFFFFFFFFFFLL) * v1424 + v588 * v562 + v587 * (v1359 & 0x7FFFFFFFFFFFFLL) + (v592 >> 51);
  v594 = (v579 & 0x7FFFFFFFFFFFFLL) * v589 + (v578 & 0x7FFFFFFFFFFFFLL) * (v1359 & 0x7FFFFFFFFFFFFLL) + (v1292 & 0x7FFFFFFFFFFFFLL) * (v583 & 0x7FFFFFFFFFFFFLL) + v588 * v1424 + v587 * v562 + (((v579 & 0x7FFFFFFFFFFFFLL) * v590 + (v578 & 0x7FFFFFFFFFFFFLL) * v589 + (v583 & 0x7FFFFFFFFFFFFLL) * v1424 + v588 * v562 + v587 * (v1359 & 0x7FFFFFFFFFFFFLL) + (v592 >> 51)) >> 51);
  v595 = v594 & 0x7FFFFFFFFFFFFLL;
  v1384 = v1359 & 0x7FFFFFFFFFFFFLL;
  v1402 = v562;
  v596 = (v579 & 0x7FFFFFFFFFFFFLL) * (v1359 & 0x7FFFFFFFFFFFFLL) + (v578 & 0x7FFFFFFFFFFFFLL) * v562 + (v1310 & 0x7FFFFFFFFFFFFLL) * (v583 & 0x7FFFFFFFFFFFFLL) + (v1292 & 0x7FFFFFFFFFFFFLL) * v588 + v587 * v1424 + (v594 >> 51);
  v597 = v596 & 0x7FFFFFFFFFFFFLL;
  v598 = (v591 & 0x7FFFFFFFFFFFFLL) + 19 * (v596 >> 51);
  v599 = v598 & 0x7FFFFFFFFFFFFLL;
  v600 = (v592 & 0x7FFFFFFFFFFFFLL) + (v598 >> 51);
  v601 = v600 & 0x7FFFFFFFFFFFFLL;
  v602 = (v593 & 0x7FFFFFFFFFFFFLL) + (v600 >> 51);
  v603 = -5;
  v604 = v599;
  v605 = v601;
  v606 = v602;
  v607 = v594 & 0x7FFFFFFFFFFFFLL;
  v608 = v596 & 0x7FFFFFFFFFFFFLL;
  do
  {
    v609 = (38 * v606) * v607 + v604 * v604 + (38 * v608) * v605;
    v610 = ((2 * v604) * v605) >> 64;
    v611 = 2 * v604 * v605;
    v612 = ((38 * v608) * v606) >> 64;
    v613 = 38 * v608 * v606;
    v614 = ((19 * v607) * v607) >> 64;
    v615 = 19 * v607 * v607;
    v616 = v606 * (2 * v604) + v605 * v605 + (38 * v608) * v607;
    v617 = v607 * (2 * v604) + (2 * v605) * v606 + (19 * v608) * v608;
    v618 = (v608 * (2 * v604)) >> 64;
    v619 = v608 * 2 * v604;
    v620 = (v607 * (2 * v605)) >> 64;
    v621 = v607 * 2 * v605;
    v622 = v609 >> 51;
    v623 = (v606 * v606) >> 64;
    v625 = v615 + v611 + v613;
    v624 = (__PAIR128__(v614, v615) + __PAIR128__(v610, v611) + __PAIR128__(v612, v613)) >> 64;
    v626 = v606 * v606;
    v90 = __CFADD__(v625, v622);
    v627 = v625 + v622;
    if (v90)
    {
      ++v624;
    }

    v628 = v627 & 0x7FFFFFFFFFFFFLL;
    *(&v630 + 1) = v624;
    *&v630 = v627;
    v629 = v630 >> 51;
    v90 = __CFADD__(v616, v629);
    v631 = v616 + v629;
    if (v90)
    {
      v632 = *(&v616 + 1) + 1;
    }

    else
    {
      v632 = *(&v616 + 1);
    }

    v633 = v631 & 0x7FFFFFFFFFFFFLL;
    *(&v635 + 1) = v632;
    *&v635 = v631;
    v634 = v635 >> 51;
    v636 = v617 + v634;
    if (__CFADD__(v617, v634))
    {
      v637 = *(&v617 + 1) + 1;
    }

    else
    {
      v637 = *(&v617 + 1);
    }

    v607 = v636 & 0x7FFFFFFFFFFFFLL;
    *(&v639 + 1) = v637;
    *&v639 = v636;
    v638 = v639 >> 51;
    v640 = __PAIR128__(v620, v621) + __PAIR128__(v623, v626) + __PAIR128__(v618, v619);
    v90 = __CFADD__(v640, v638);
    v641 = v640 + v638;
    if (v90)
    {
      v642 = *(&v640 + 1) + 1;
    }

    else
    {
      v642 = (__PAIR128__(v620, v621) + __PAIR128__(v623, v626) + __PAIR128__(v618, v619)) >> 64;
    }

    v608 = v641 & 0x7FFFFFFFFFFFFLL;
    *(&v643 + 1) = v642;
    *&v643 = v641;
    v644 = (v609 & 0x7FFFFFFFFFFFFLL) + 19 * (v643 >> 51);
    v604 = v644 & 0x7FFFFFFFFFFFFLL;
    v645 = v628 + (v644 >> 51);
    v605 = v645 & 0x7FFFFFFFFFFFFLL;
    v606 = v633 + (v645 >> 51);
    v90 = __CFADD__(v603++, 1);
  }

  while (!v90);
  v646 = v608 * (19 * v601) + v607 * (19 * v602) + v604 * v599 + v605 * (19 * v597) + v606 * (19 * v595);
  v647 = (v608 * (19 * v602) + v607 * (19 * v595) + v604 * v601 + v605 * v599 + v606 * (19 * v597)) >> 64;
  if (__CFADD__(v608 * 19 * v602 + v607 * 19 * v595 + v604 * v601 + v605 * v599 + v606 * 19 * v597, (v646 >> 51)))
  {
    ++v647;
  }

  v649 = (v608 * (19 * v595) + v607 * (19 * v597) + v604 * v602 + v605 * v601 + v606 * v599) >> 64;
  v648 = v608 * 19 * v595 + v607 * 19 * v597 + v604 * v602 + v605 * v601 + v606 * v599;
  *(&v651 + 1) = v647;
  *&v651 = v596;
  v650 = v651 >> 51;
  v90 = __CFADD__(v648, v650);
  v652 = v648 + v650;
  if (v90)
  {
    ++v649;
  }

  *(&v654 + 1) = v649;
  *&v654 = v652;
  v653 = v654 >> 51;
  v655 = v608 * (19 * v597) + v607 * v599 + (v594 & 0x7FFFFFFFFFFFFLL) * v604 + v605 * v602 + v606 * v601;
  v656 = v655 + v653;
  if (__CFADD__(v655, v653))
  {
    v657 = *(&v655 + 1) + 1;
  }

  else
  {
    v657 = (v608 * (19 * v597) + v607 * v599 + (v594 & 0x7FFFFFFFFFFFFLL) * v604 + v605 * v602 + v606 * v601) >> 64;
  }

  v658 = v652 & 0x7FFFFFFFFFFFFLL;
  v660 = v608 * v599 + v607 * v601;
  v659 = (v608 * v599 + v607 * v601) >> 64;
  v661 = v656 & 0x7FFFFFFFFFFFFLL;
  v1380 = v655 + v653;
  *(&v663 + 1) = v657;
  *&v663 = v655 + v653;
  v662 = v663 >> 51;
  v665 = __PAIR128__(v659, v660) + (v596 & 0x7FFFFFFFFFFFFLL) * v604 + (v594 & 0x7FFFFFFFFFFFFLL) * v605 + v606 * v602;
  v664 = *(&v665 + 1);
  v666 = v665 + v662;
  if (__CFADD__(v665, v662))
  {
    v664 = *(&v665 + 1) + 1;
  }

  *(&v667 + 1) = v664;
  *&v667 = v665 + v662;
  v668 = (v646 & 0x7FFFFFFFFFFFFLL) + 19 * (v667 >> 51);
  v669 = v668 & 0x7FFFFFFFFFFFFLL;
  v670 = (v596 & 0x7FFFFFFFFFFFFLL) + (v668 >> 51);
  v671 = v670 & 0x7FFFFFFFFFFFFLL;
  v672 = v658 + (v670 >> 51);
  v673 = -10;
  v674 = v668 & 0x7FFFFFFFFFFFFLL;
  v675 = v670 & 0x7FFFFFFFFFFFFLL;
  v676 = v672;
  v677 = v656 & 0x7FFFFFFFFFFFFLL;
  v678 = v666 & 0x7FFFFFFFFFFFFLL;
  do
  {
    v679 = (38 * v676) * v677 + v674 * v674 + (38 * v678) * v675;
    v680 = ((38 * v678) * v676) >> 64;
    v681 = 38 * v678 * v676;
    v682 = ((19 * v677) * v677) >> 64;
    v683 = 19 * v677 * v677;
    v684 = v676 * (2 * v674) + v675 * v675 + (38 * v678) * v677;
    v685 = v677 * (2 * v674) + (2 * v675) * v676 + (19 * v678) * v678;
    v686 = (v678 * (2 * v674)) >> 64;
    v687 = v678 * 2 * v674;
    v688 = (v677 * (2 * v675)) >> 64;
    v689 = v677 * 2 * v675;
    v690 = v679 >> 51;
    v691 = (v676 * v676) >> 64;
    v692 = (__PAIR128__((((2 * v674) * v675) >> 64) + __CFADD__(v683, 2 * v674 * v675) + v682, v683 + 2 * v674 * v675) + __PAIR128__(v680, v681)) >> 64;
    v693 = v676 * v676;
    v90 = __CFADD__(v683 + 2 * v674 * v675 + v681, v690);
    v694 = v683 + 2 * v674 * v675 + v681 + v690;
    if (v90)
    {
      ++v692;
    }

    v695 = v694 & 0x7FFFFFFFFFFFFLL;
    *(&v697 + 1) = v692;
    *&v697 = v694;
    v696 = v697 >> 51;
    v90 = __CFADD__(v684, v696);
    v698 = v684 + v696;
    if (v90)
    {
      v699 = *(&v684 + 1) + 1;
    }

    else
    {
      v699 = *(&v684 + 1);
    }

    v700 = v698 & 0x7FFFFFFFFFFFFLL;
    *(&v702 + 1) = v699;
    *&v702 = v698;
    v701 = v702 >> 51;
    v703 = v685 + v701;
    if (__CFADD__(v685, v701))
    {
      v704 = *(&v685 + 1) + 1;
    }

    else
    {
      v704 = *(&v685 + 1);
    }

    v677 = v703 & 0x7FFFFFFFFFFFFLL;
    *(&v706 + 1) = v704;
    *&v706 = v703;
    v705 = v706 >> 51;
    v707 = __PAIR128__(v688, v689) + __PAIR128__(v691, v693) + __PAIR128__(v686, v687);
    v708 = v707 + v705;
    if (__CFADD__(v707, v705))
    {
      v709 = *(&v707 + 1) + 1;
    }

    else
    {
      v709 = *(&v707 + 1);
    }

    v678 = v708 & 0x7FFFFFFFFFFFFLL;
    *(&v710 + 1) = v709;
    *&v710 = v708;
    v711 = (v679 & 0x7FFFFFFFFFFFFLL) + 19 * (v710 >> 51);
    v674 = v711 & 0x7FFFFFFFFFFFFLL;
    v712 = v695 + (v711 >> 51);
    v675 = v712 & 0x7FFFFFFFFFFFFLL;
    v676 = v700 + (v712 >> 51);
    v90 = __CFADD__(v673++, 1);
  }

  while (!v90);
  v713 = 19 * (v666 & 0x7FFFFFFFFFFFFLL);
  v714 = 19 * v661;
  v1335 = 19 * v672;
  v715 = v678 * 19 * v671 + v677 * 19 * v672 + v674 * v669 + v675 * v713 + v676 * 19 * v661;
  v717 = (v678 * (19 * v672) + v677 * v714 + v674 * v671 + v675 * v669 + v676 * v713) >> 64;
  v716 = v678 * 19 * v672 + v677 * v714 + v674 * v671 + v675 * v669 + v676 * v713;
  v718 = (v678 * (19 * v671) + v677 * (19 * v672) + v674 * v669 + v675 * v713 + v676 * v714) >> 51;
  v90 = __CFADD__(v716, v718);
  v719 = v716 + v718;
  if (v90)
  {
    ++v717;
  }

  v1374 = v714;
  v721 = (v678 * v714 + v677 * v713 + v674 * v672 + v675 * v671 + v676 * v669) >> 64;
  v720 = v678 * v714 + v677 * v713 + v674 * v672 + v675 * v671 + v676 * v669;
  *(&v723 + 1) = v717;
  *&v723 = v719;
  v722 = v723 >> 51;
  v90 = __CFADD__(v720, v722);
  v724 = v720 + v722;
  if (v90)
  {
    ++v721;
  }

  v725 = v666 & 0x7FFFFFFFFFFFFLL;
  v726 = v715 & 0x7FFFFFFFFFFFFLL;
  v727 = v719 & 0x7FFFFFFFFFFFFLL;
  *(&v729 + 1) = v721;
  *&v729 = v724;
  v728 = v729 >> 51;
  v730 = v724 & 0x7FFFFFFFFFFFFLL;
  v731 = v678 * v713 + v677 * v669 + (v656 & 0x7FFFFFFFFFFFFLL) * v674 + v675 * v672 + v676 * v671;
  v732 = v731 + v728;
  if (__CFADD__(v731, v728))
  {
    v733 = *(&v731 + 1) + 1;
  }

  else
  {
    v733 = (v678 * v713 + v677 * v669 + (v1380 & 0x7FFFFFFFFFFFFLL) * v674 + v675 * v672 + v676 * v671) >> 64;
  }

  v1323 = v731 + v728;
  *(&v735 + 1) = v733;
  *&v735 = v731 + v728;
  v734 = v735 >> 51;
  v1360 = v725;
  v1368 = v656 & 0x7FFFFFFFFFFFFLL;
  v736 = v678 * v669 + v677 * v671 + v725 * v674 + (v656 & 0x7FFFFFFFFFFFFLL) * v675;
  v1381 = v672;
  v738 = v736 + v676 * v672;
  v737 = *(&v738 + 1);
  v739 = v738 + v734;
  if (__CFADD__(v738, v734))
  {
    v737 = *(&v738 + 1) + 1;
  }

  v740 = v739 & 0x7FFFFFFFFFFFFLL;
  v1328 = v739;
  *(&v741 + 1) = v737;
  *&v741 = v739;
  v742 = v726 + 19 * (v741 >> 51);
  v743 = v742 & 0x7FFFFFFFFFFFFLL;
  v744 = v727 + (v742 >> 51);
  v745 = v744 & 0x7FFFFFFFFFFFFLL;
  v746 = v730 + (v744 >> 51);
  v747 = -20;
  v748 = v743;
  v749 = v745;
  v750 = v746;
  v1315 = v739 & 0x7FFFFFFFFFFFFLL;
  v1318 = v732 & 0x7FFFFFFFFFFFFLL;
  v751 = v732 & 0x7FFFFFFFFFFFFLL;
  do
  {
    v752 = 2 * v748;
    v753 = (38 * v750) * v751 + v748 * v748 + (38 * v740) * v749;
    v754 = ((2 * v748) * v749) >> 64;
    v755 = 2 * v748 * v749;
    v756 = ((38 * v740) * v750) >> 64;
    v757 = 38 * v740 * v750;
    v758 = v750 * v752 + v749 * v749 + (38 * v740) * v751;
    v759 = v751 * v752 + (2 * v749) * v750 + (19 * v740) * v740;
    v760 = (v740 * v752) >> 64;
    v761 = v740 * v752;
    v762 = (v751 * (2 * v749)) >> 64;
    v763 = v751 * 2 * v749;
    v764 = v753 >> 51;
    v765 = (v750 * v750) >> 64;
    v766 = v750 * v750;
    v90 = __CFADD__(19 * v751 * v751 + v755 + v757, v764);
    v767 = 19 * v751 * v751 + v755 + v757 + v764;
    if (v90)
    {
      v768 = ((__PAIR128__(v754 + __CFADD__(19 * v751 * v751, v755) + (((19 * v751) * v751) >> 64), 19 * v751 * v751 + v755) + __PAIR128__(v756, v757)) >> 64) + 1;
    }

    else
    {
      v768 = (__PAIR128__(v754 + __CFADD__(19 * v751 * v751, v755) + (((19 * v751) * v751) >> 64), 19 * v751 * v751 + v755) + __PAIR128__(v756, v757)) >> 64;
    }

    v769 = v767 & 0x7FFFFFFFFFFFFLL;
    *(&v771 + 1) = v768;
    *&v771 = v767;
    v770 = v771 >> 51;
    v90 = __CFADD__(v758, v770);
    v772 = v758 + v770;
    if (v90)
    {
      v773 = *(&v758 + 1) + 1;
    }

    else
    {
      v773 = *(&v758 + 1);
    }

    v774 = v772 & 0x7FFFFFFFFFFFFLL;
    *(&v776 + 1) = v773;
    *&v776 = v772;
    v775 = v776 >> 51;
    v90 = __CFADD__(v759, v775);
    v777 = v759 + v775;
    if (v90)
    {
      v778 = *(&v759 + 1) + 1;
    }

    else
    {
      v778 = *(&v759 + 1);
    }

    v751 = v777 & 0x7FFFFFFFFFFFFLL;
    *(&v780 + 1) = v778;
    *&v780 = v777;
    v779 = v780 >> 51;
    v781 = __PAIR128__(v762, v763) + __PAIR128__(v765, v766) + __PAIR128__(v760, v761);
    v90 = __CFADD__(v781, v779);
    v782 = v781 + v779;
    if (v90)
    {
      v783 = *(&v781 + 1) + 1;
    }

    else
    {
      v783 = (__PAIR128__(v762, v763) + __PAIR128__(v765, v766) + __PAIR128__(v760, v761)) >> 64;
    }

    v740 = v782 & 0x7FFFFFFFFFFFFLL;
    *(&v784 + 1) = v783;
    *&v784 = v782;
    v785 = (v753 & 0x7FFFFFFFFFFFFLL) + 19 * (v784 >> 51);
    v748 = v785 & 0x7FFFFFFFFFFFFLL;
    v786 = v769 + (v785 >> 51);
    v749 = v786 & 0x7FFFFFFFFFFFFLL;
    v750 = v774 + (v786 >> 51);
    v90 = __CFADD__(v747++, 1);
  }

  while (!v90);
  v787 = v740 * (19 * v745) + v751 * (19 * v746) + v748 * v743 + v749 * (19 * v1315) + v750 * (19 * v1318);
  v789 = (v740 * (19 * v746) + v751 * (19 * v1318) + v748 * v745 + v749 * v743 + v750 * (19 * v1315)) >> 64;
  v788 = v740 * 19 * v746 + v751 * 19 * v1318 + v748 * v745 + v749 * v743 + v750 * 19 * v1315;
  v790 = v787 >> 51;
  v791 = v788 + v790;
  if (__CFADD__(v788, v790))
  {
    ++v789;
  }

  *(&v793 + 1) = v789;
  *&v793 = v788 + v790;
  v792 = v793 >> 51;
  v794 = (v740 * (19 * v1318) + v751 * (19 * v1315) + v748 * v746 + v749 * v745 + v750 * v743) >> 64;
  v795 = v740 * 19 * v1318 + v751 * 19 * v1315 + v748 * v746 + v749 * v745 + v750 * v743;
  v90 = __CFADD__(v795, v792);
  v796 = v795 + v792;
  if (v90)
  {
    ++v794;
  }

  v797 = v740 * (19 * v1315) + v751 * v743 + (v1323 & 0x7FFFFFFFFFFFFLL) * v748 + v749 * v746 + v750 * v745;
  *(&v799 + 1) = v794;
  *&v799 = v796;
  v798 = v799 >> 51;
  v800 = v797 + v798;
  if (__CFADD__(v797, v798))
  {
    v801 = *(&v797 + 1) + 1;
  }

  else
  {
    v801 = (v740 * (19 * v1315) + v751 * v743 + (v1323 & 0x7FFFFFFFFFFFFLL) * v748 + v749 * v746 + v750 * v745) >> 64;
  }

  v803 = v740 * v743 + v751 * v745 + (v1328 & 0x7FFFFFFFFFFFFLL) * v748 + (v1323 & 0x7FFFFFFFFFFFFLL) * v749 + v750 * v746;
  v802 = *(&v803 + 1);
  *(&v805 + 1) = v801;
  *&v805 = v800;
  v804 = v805 >> 51;
  v806 = v796 & 0x7FFFFFFFFFFFFLL;
  v90 = __CFADD__(v803, v804);
  v807 = v803 + v804;
  if (v90)
  {
    v802 = *(&v803 + 1) + 1;
  }

  *(&v808 + 1) = v802;
  *&v808 = v807;
  v809 = (v787 & 0x7FFFFFFFFFFFFLL) + 19 * (v808 >> 51);
  v810 = v809 & 0x7FFFFFFFFFFFFLL;
  v811 = (v791 & 0x7FFFFFFFFFFFFLL) + (v809 >> 51);
  v812 = v811 & 0x7FFFFFFFFFFFFLL;
  v813 = v806 + (v811 >> 51);
  v814 = -10;
  do
  {
    v815 = v807 & 0x7FFFFFFFFFFFFLL;
    v816 = v800 & 0x7FFFFFFFFFFFFLL;
    v817 = (v800 & 0x7FFFFFFFFFFFFLL) * (38 * v813) + v810 * v810 + (38 * v815) * v812;
    v818 = ((2 * v810) * v812) >> 64;
    v819 = 2 * v810 * v812;
    v820 = ((38 * v815) * v813) >> 64;
    v821 = 38 * v815 * v813;
    v822 = 19 * (v800 & 0x7FFFFFFFFFFFFLL);
    v823 = (v822 * v816) >> 64;
    v824 = v822 * v816;
    v825 = v813 * (2 * v810) + v812 * v812 + (38 * v815) * v816;
    v826 = v816 * (2 * v810) + (2 * v812) * v813 + (19 * v815) * v815;
    v827 = (v815 * (2 * v810)) >> 64;
    v828 = v815 * 2 * v810;
    v829 = (v816 * (2 * v812)) >> 64;
    v830 = v816 * 2 * v812;
    v831 = (v813 * v813) >> 64;
    v832 = v817 >> 51;
    v833 = v813 * v813;
    v90 = __CFADD__(v824 + v819 + v821, v832);
    v834 = v824 + v819 + v821 + v832;
    if (v90)
    {
      v835 = ((__PAIR128__(v818 + __CFADD__(v824, v819) + v823, v824 + v819) + __PAIR128__(v820, v821)) >> 64) + 1;
    }

    else
    {
      v835 = (__PAIR128__(v818 + __CFADD__(v824, v819) + v823, v824 + v819) + __PAIR128__(v820, v821)) >> 64;
    }

    *(&v837 + 1) = v835;
    *&v837 = v834;
    v836 = v837 >> 51;
    v838 = v834 & 0x7FFFFFFFFFFFFLL;
    v839 = v825 + v836;
    if (__CFADD__(v825, v836))
    {
      v840 = *(&v825 + 1) + 1;
    }

    else
    {
      v840 = *(&v825 + 1);
    }

    v841 = v839 & 0x7FFFFFFFFFFFFLL;
    *(&v843 + 1) = v840;
    *&v843 = v839;
    v842 = v843 >> 51;
    v800 = v826 + v842;
    if (__CFADD__(v826, v842))
    {
      v844 = *(&v826 + 1) + 1;
    }

    else
    {
      v844 = *(&v826 + 1);
    }

    *(&v846 + 1) = v844;
    *&v846 = v800;
    v845 = v846 >> 51;
    v847 = __PAIR128__(v829, v830) + __PAIR128__(v831, v833) + __PAIR128__(v827, v828);
    v807 = v847 + v845;
    if (__CFADD__(v847, v845))
    {
      v848 = *(&v847 + 1) + 1;
    }

    else
    {
      v848 = *(&v847 + 1);
    }

    *(&v849 + 1) = v848;
    *&v849 = v847 + v845;
    v850 = (v817 & 0x7FFFFFFFFFFFFLL) + 19 * (v849 >> 51);
    v810 = v850 & 0x7FFFFFFFFFFFFLL;
    v851 = v838 + (v850 >> 51);
    v812 = v851 & 0x7FFFFFFFFFFFFLL;
    v813 = v841 + (v851 >> 51);
    v90 = __CFADD__(v814++, 1);
  }

  while (!v90);
  v852 = v800 & 0x7FFFFFFFFFFFFLL;
  v853 = v807 & 0x7FFFFFFFFFFFFLL;
  v854 = (v807 & 0x7FFFFFFFFFFFFLL) * (19 * v671) + (v800 & 0x7FFFFFFFFFFFFLL) * v1335 + v810 * v669 + v812 * v713 + v813 * v1374;
  v855 = ((v807 & 0x7FFFFFFFFFFFFLL) * v1335 + (v800 & 0x7FFFFFFFFFFFFLL) * v1374 + v810 * v671 + v812 * v669 + v813 * v713) >> 64;
  v856 = (v807 & 0x7FFFFFFFFFFFFLL) * v1335 + (v800 & 0x7FFFFFFFFFFFFLL) * v1374 + v810 * v671 + v812 * v669 + v813 * v713;
  v857 = v854 >> 51;
  v90 = __CFADD__(v856, v857);
  v858 = v856 + v857;
  if (v90)
  {
    ++v855;
  }

  *(&v860 + 1) = v855;
  *&v860 = v858;
  v859 = v860 >> 51;
  v862 = (v853 * v1374 + (v800 & 0x7FFFFFFFFFFFFLL) * v713 + v810 * v1381 + v812 * v671 + v813 * v669) >> 64;
  v861 = v853 * v1374 + (v800 & 0x7FFFFFFFFFFFFLL) * v713 + v810 * v1381 + v812 * v671 + v813 * v669;
  v90 = __CFADD__(v861, v859);
  v863 = v861 + v859;
  if (v90)
  {
    ++v862;
  }

  *(&v865 + 1) = v862;
  *&v865 = v863;
  v864 = v865 >> 51;
  v866 = (v853 * v713 + v852 * v669 + v1368 * v810 + v812 * v1381 + v813 * v671) >> 64;
  v867 = v853 * v713 + v852 * v669 + v1368 * v810 + v812 * v1381 + v813 * v671;
  v90 = __CFADD__(v867, v864);
  v868 = v867 + v864;
  if (v90)
  {
    ++v866;
  }

  v869 = v858 & 0x7FFFFFFFFFFFFLL;
  v870 = v863 & 0x7FFFFFFFFFFFFLL;
  v871 = v868 & 0x7FFFFFFFFFFFFLL;
  v1336 = v868;
  *(&v873 + 1) = v866;
  *&v873 = v868;
  v872 = v873 >> 51;
  v874 = v853 * v669 + v852 * v671 + v1360 * v810 + v1368 * v812 + v813 * v1381;
  v875 = v874 + v872;
  if (__CFADD__(v874, v872))
  {
    v876 = *(&v874 + 1) + 1;
  }

  else
  {
    v876 = *(&v874 + 1);
  }

  *(&v877 + 1) = v876;
  *&v877 = v874 + v872;
  v878 = (v854 & 0x7FFFFFFFFFFFFLL) + 19 * (v877 >> 51);
  v879 = v878 & 0x7FFFFFFFFFFFFLL;
  v880 = v869 + (v878 >> 51);
  v881 = v880 & 0x7FFFFFFFFFFFFLL;
  v882 = v870 + (v880 >> 51);
  v883 = -50;
  v884 = v879;
  v885 = v880 & 0x7FFFFFFFFFFFFLL;
  v886 = v882;
  v887 = v868 & 0x7FFFFFFFFFFFFLL;
  v888 = v875 & 0x7FFFFFFFFFFFFLL;
  do
  {
    v889 = (38 * v886) * v887 + v884 * v884 + (38 * v888) * v885;
    v890 = ((38 * v888) * v886) >> 64;
    v891 = 38 * v888 * v886;
    v892 = ((19 * v887) * v887) >> 64;
    v893 = 19 * v887 * v887;
    v894 = v886 * (2 * v884) + v885 * v885 + (38 * v888) * v887;
    v895 = v887 * (2 * v884) + (2 * v885) * v886 + (19 * v888) * v888;
    v896 = (v888 * (2 * v884)) >> 64;
    v897 = v888 * 2 * v884;
    v898 = (v887 * (2 * v885)) >> 64;
    v899 = v887 * 2 * v885;
    v900 = v889 >> 51;
    v901 = (v886 * v886) >> 64;
    v902 = (__PAIR128__((((2 * v884) * v885) >> 64) + __CFADD__(v893, 2 * v884 * v885) + v892, v893 + 2 * v884 * v885) + __PAIR128__(v890, v891)) >> 64;
    v903 = v886 * v886;
    v90 = __CFADD__(v893 + 2 * v884 * v885 + v891, v900);
    v904 = v893 + 2 * v884 * v885 + v891 + v900;
    if (v90)
    {
      ++v902;
    }

    v905 = v904 & 0x7FFFFFFFFFFFFLL;
    *(&v907 + 1) = v902;
    *&v907 = v904;
    v906 = v907 >> 51;
    v90 = __CFADD__(v894, v906);
    v908 = v894 + v906;
    if (v90)
    {
      v909 = *(&v894 + 1) + 1;
    }

    else
    {
      v909 = *(&v894 + 1);
    }

    v910 = v908 & 0x7FFFFFFFFFFFFLL;
    *(&v912 + 1) = v909;
    *&v912 = v908;
    v911 = v912 >> 51;
    v913 = v895 + v911;
    if (__CFADD__(v895, v911))
    {
      v914 = *(&v895 + 1) + 1;
    }

    else
    {
      v914 = *(&v895 + 1);
    }

    v887 = v913 & 0x7FFFFFFFFFFFFLL;
    *(&v916 + 1) = v914;
    *&v916 = v913;
    v915 = v916 >> 51;
    v917 = __PAIR128__(v898, v899) + __PAIR128__(v901, v903) + __PAIR128__(v896, v897);
    v90 = __CFADD__(v917, v915);
    v918 = v917 + v915;
    if (v90)
    {
      v919 = *(&v917 + 1) + 1;
    }

    else
    {
      v919 = (__PAIR128__(v898, v899) + __PAIR128__(v901, v903) + __PAIR128__(v896, v897)) >> 64;
    }

    v888 = v918 & 0x7FFFFFFFFFFFFLL;
    *(&v920 + 1) = v919;
    *&v920 = v918;
    v921 = (v889 & 0x7FFFFFFFFFFFFLL) + 19 * (v920 >> 51);
    v884 = v921 & 0x7FFFFFFFFFFFFLL;
    v922 = v905 + (v921 >> 51);
    v885 = v922 & 0x7FFFFFFFFFFFFLL;
    v886 = v910 + (v922 >> 51);
    v90 = __CFADD__(v883++, 1);
  }

  while (!v90);
  v923 = 19 * (v875 & 0x7FFFFFFFFFFFFLL);
  v924 = 19 * v871;
  v925 = (v888 * (19 * v881) + v887 * (19 * v882) + v884 * v879 + v885 * v923 + v886 * (19 * v871)) >> 64;
  v926 = v888 * 19 * v881 + v887 * 19 * v882 + v884 * v879 + v885 * v923 + v886 * 19 * v871;
  v1361 = 19 * v882;
  v928 = v888 * (19 * v882) + v887 * (19 * v871) + v884 * v881 + v885 * v879 + v886 * v923;
  v927 = *(&v928 + 1);
  v929 = __PAIR128__(v925, v926) >> 51;
  v90 = __CFADD__(v928, v929);
  v930 = v928 + v929;
  if (v90)
  {
    v927 = *(&v928 + 1) + 1;
  }

  v1375 = v924;
  v932 = v888 * v924 + v887 * v923 + v884 * v882 + v885 * v881 + v886 * v879;
  v931 = *(&v932 + 1);
  *(&v934 + 1) = v927;
  *&v934 = v930;
  v933 = v934 >> 51;
  v90 = __CFADD__(v932, v933);
  v935 = v932 + v933;
  if (v90)
  {
    v931 = *(&v932 + 1) + 1;
  }

  v936 = v875 & 0x7FFFFFFFFFFFFLL;
  v937 = v926 & 0x7FFFFFFFFFFFFLL;
  v938 = v930 & 0x7FFFFFFFFFFFFLL;
  *(&v940 + 1) = v931;
  *&v940 = v935;
  v939 = v940 >> 51;
  v941 = v935 & 0x7FFFFFFFFFFFFLL;
  v942 = v888 * v923 + v887 * v879 + (v1336 & 0x7FFFFFFFFFFFFLL) * v884 + v885 * v882 + v886 * v881;
  v943 = v942 + v939;
  if (__CFADD__(v942, v939))
  {
    v944 = *(&v942 + 1) + 1;
  }

  else
  {
    v944 = (v888 * v923 + v887 * v879 + (v1336 & 0x7FFFFFFFFFFFFLL) * v884 + v885 * v882 + v886 * v881) >> 64;
  }

  v1324 = v942 + v939;
  *(&v946 + 1) = v944;
  *&v946 = v942 + v939;
  v945 = v946 >> 51;
  v1369 = v1336 & 0x7FFFFFFFFFFFFLL;
  v1382 = v882;
  v948 = v888 * v879 + v887 * v881 + v936 * v884 + (v1336 & 0x7FFFFFFFFFFFFLL) * v885 + v886 * v882;
  v947 = *(&v948 + 1);
  v90 = __CFADD__(v948, v945);
  v949 = v948 + v945;
  if (v90)
  {
    v947 = *(&v948 + 1) + 1;
  }

  v950 = v949 & 0x7FFFFFFFFFFFFLL;
  v1329 = v949;
  *(&v951 + 1) = v947;
  *&v951 = v949;
  v952 = v937 + 19 * (v951 >> 51);
  v953 = v952 & 0x7FFFFFFFFFFFFLL;
  v954 = v938 + (v952 >> 51);
  v955 = v954 & 0x7FFFFFFFFFFFFLL;
  v956 = v941 + (v954 >> 51);
  v957 = -100;
  v958 = v953;
  v959 = v955;
  v960 = v956;
  v1316 = v949 & 0x7FFFFFFFFFFFFLL;
  v1319 = v943 & 0x7FFFFFFFFFFFFLL;
  v961 = v943 & 0x7FFFFFFFFFFFFLL;
  do
  {
    v962 = 2 * v958;
    v963 = (38 * v960) * v961 + v958 * v958 + (38 * v950) * v959;
    v964 = ((2 * v958) * v959) >> 64;
    v965 = 2 * v958 * v959;
    v966 = ((38 * v950) * v960) >> 64;
    v967 = 38 * v950 * v960;
    v968 = v960 * v962 + v959 * v959 + (38 * v950) * v961;
    v969 = v961 * v962 + (2 * v959) * v960 + (19 * v950) * v950;
    v970 = (v950 * v962) >> 64;
    v971 = v950 * v962;
    v972 = (v961 * (2 * v959)) >> 64;
    v973 = v961 * 2 * v959;
    v974 = v963 >> 51;
    v975 = (v960 * v960) >> 64;
    v976 = v960 * v960;
    v90 = __CFADD__(19 * v961 * v961 + v965 + v967, v974);
    v977 = 19 * v961 * v961 + v965 + v967 + v974;
    if (v90)
    {
      v978 = ((__PAIR128__(v964 + __CFADD__(19 * v961 * v961, v965) + (((19 * v961) * v961) >> 64), 19 * v961 * v961 + v965) + __PAIR128__(v966, v967)) >> 64) + 1;
    }

    else
    {
      v978 = (__PAIR128__(v964 + __CFADD__(19 * v961 * v961, v965) + (((19 * v961) * v961) >> 64), 19 * v961 * v961 + v965) + __PAIR128__(v966, v967)) >> 64;
    }

    v979 = v977 & 0x7FFFFFFFFFFFFLL;
    *(&v981 + 1) = v978;
    *&v981 = v977;
    v980 = v981 >> 51;
    v90 = __CFADD__(v968, v980);
    v982 = v968 + v980;
    if (v90)
    {
      v983 = *(&v968 + 1) + 1;
    }

    else
    {
      v983 = *(&v968 + 1);
    }

    v984 = v982 & 0x7FFFFFFFFFFFFLL;
    *(&v986 + 1) = v983;
    *&v986 = v982;
    v985 = v986 >> 51;
    v90 = __CFADD__(v969, v985);
    v987 = v969 + v985;
    if (v90)
    {
      v988 = *(&v969 + 1) + 1;
    }

    else
    {
      v988 = *(&v969 + 1);
    }

    v961 = v987 & 0x7FFFFFFFFFFFFLL;
    *(&v990 + 1) = v988;
    *&v990 = v987;
    v989 = v990 >> 51;
    v991 = __PAIR128__(v972, v973) + __PAIR128__(v975, v976) + __PAIR128__(v970, v971);
    v90 = __CFADD__(v991, v989);
    v992 = v991 + v989;
    if (v90)
    {
      v993 = *(&v991 + 1) + 1;
    }

    else
    {
      v993 = (__PAIR128__(v972, v973) + __PAIR128__(v975, v976) + __PAIR128__(v970, v971)) >> 64;
    }

    v950 = v992 & 0x7FFFFFFFFFFFFLL;
    *(&v994 + 1) = v993;
    *&v994 = v992;
    v995 = (v963 & 0x7FFFFFFFFFFFFLL) + 19 * (v994 >> 51);
    v958 = v995 & 0x7FFFFFFFFFFFFLL;
    v996 = v979 + (v995 >> 51);
    v959 = v996 & 0x7FFFFFFFFFFFFLL;
    v960 = v984 + (v996 >> 51);
    v90 = __CFADD__(v957++, 1);
  }

  while (!v90);
  v997 = v950 * (19 * v955) + v961 * (19 * v956) + v958 * v953 + v959 * (19 * v1316) + v960 * (19 * v1319);
  v999 = (v950 * (19 * v956) + v961 * (19 * v1319) + v958 * v955 + v959 * v953 + v960 * (19 * v1316)) >> 64;
  v998 = v950 * 19 * v956 + v961 * 19 * v1319 + v958 * v955 + v959 * v953 + v960 * 19 * v1316;
  v1000 = v997 >> 51;
  v1001 = v998 + v1000;
  if (__CFADD__(v998, v1000))
  {
    ++v999;
  }

  *(&v1003 + 1) = v999;
  *&v1003 = v998 + v1000;
  v1002 = v1003 >> 51;
  v1004 = (v950 * (19 * v1319) + v961 * (19 * v1316) + v958 * v956 + v959 * v955 + v960 * v953) >> 64;
  v1005 = v950 * 19 * v1319 + v961 * 19 * v1316 + v958 * v956 + v959 * v955 + v960 * v953;
  v90 = __CFADD__(v1005, v1002);
  v1006 = v1005 + v1002;
  if (v90)
  {
    ++v1004;
  }

  v1007 = v950 * (19 * v1316) + v961 * v953 + (v1324 & 0x7FFFFFFFFFFFFLL) * v958 + v959 * v956 + v960 * v955;
  *(&v1009 + 1) = v1004;
  *&v1009 = v1006;
  v1008 = v1009 >> 51;
  v1010 = v1007 + v1008;
  if (__CFADD__(v1007, v1008))
  {
    v1011 = *(&v1007 + 1) + 1;
  }

  else
  {
    v1011 = (v950 * (19 * v1316) + v961 * v953 + (v1324 & 0x7FFFFFFFFFFFFLL) * v958 + v959 * v956 + v960 * v955) >> 64;
  }

  v1013 = v950 * v953 + v961 * v955 + (v1329 & 0x7FFFFFFFFFFFFLL) * v958 + (v1324 & 0x7FFFFFFFFFFFFLL) * v959 + v960 * v956;
  v1012 = *(&v1013 + 1);
  *(&v1015 + 1) = v1011;
  *&v1015 = v1010;
  v1014 = v1015 >> 51;
  v1016 = v1006 & 0x7FFFFFFFFFFFFLL;
  v90 = __CFADD__(v1013, v1014);
  v1017 = v1013 + v1014;
  if (v90)
  {
    v1012 = *(&v1013 + 1) + 1;
  }

  *(&v1018 + 1) = v1012;
  *&v1018 = v1017;
  v1019 = (v997 & 0x7FFFFFFFFFFFFLL) + 19 * (v1018 >> 51);
  v1020 = v1019 & 0x7FFFFFFFFFFFFLL;
  v1021 = (v1001 & 0x7FFFFFFFFFFFFLL) + (v1019 >> 51);
  v1022 = v1021 & 0x7FFFFFFFFFFFFLL;
  v1023 = v1016 + (v1021 >> 51);
  v1024 = -50;
  do
  {
    v1025 = v1017 & 0x7FFFFFFFFFFFFLL;
    v1026 = v1010 & 0x7FFFFFFFFFFFFLL;
    v1027 = (v1010 & 0x7FFFFFFFFFFFFLL) * (38 * v1023) + v1020 * v1020 + (38 * v1025) * v1022;
    v1028 = ((2 * v1020) * v1022) >> 64;
    v1029 = 2 * v1020 * v1022;
    v1030 = ((38 * v1025) * v1023) >> 64;
    v1031 = 38 * v1025 * v1023;
    v1032 = 19 * (v1010 & 0x7FFFFFFFFFFFFLL);
    v1033 = (v1032 * v1026) >> 64;
    v1034 = v1032 * v1026;
    v1035 = v1023 * (2 * v1020) + v1022 * v1022 + (38 * v1025) * v1026;
    v1036 = v1026 * (2 * v1020) + (2 * v1022) * v1023 + (19 * v1025) * v1025;
    v1037 = (v1025 * (2 * v1020)) >> 64;
    v1038 = v1025 * 2 * v1020;
    v1039 = (v1026 * (2 * v1022)) >> 64;
    v1040 = v1026 * 2 * v1022;
    v1041 = (v1023 * v1023) >> 64;
    v1042 = v1027 >> 51;
    v1043 = v1023 * v1023;
    v90 = __CFADD__(v1034 + v1029 + v1031, v1042);
    v1044 = v1034 + v1029 + v1031 + v1042;
    if (v90)
    {
      v1045 = ((__PAIR128__(v1028 + __CFADD__(v1034, v1029) + v1033, v1034 + v1029) + __PAIR128__(v1030, v1031)) >> 64) + 1;
    }

    else
    {
      v1045 = (__PAIR128__(v1028 + __CFADD__(v1034, v1029) + v1033, v1034 + v1029) + __PAIR128__(v1030, v1031)) >> 64;
    }

    *(&v1047 + 1) = v1045;
    *&v1047 = v1044;
    v1046 = v1047 >> 51;
    v1048 = v1044 & 0x7FFFFFFFFFFFFLL;
    v1049 = v1035 + v1046;
    if (__CFADD__(v1035, v1046))
    {
      v1050 = *(&v1035 + 1) + 1;
    }

    else
    {
      v1050 = *(&v1035 + 1);
    }

    v1051 = v1049 & 0x7FFFFFFFFFFFFLL;
    *(&v1053 + 1) = v1050;
    *&v1053 = v1049;
    v1052 = v1053 >> 51;
    v1010 = v1036 + v1052;
    if (__CFADD__(v1036, v1052))
    {
      v1054 = *(&v1036 + 1) + 1;
    }

    else
    {
      v1054 = *(&v1036 + 1);
    }

    *(&v1056 + 1) = v1054;
    *&v1056 = v1010;
    v1055 = v1056 >> 51;
    v1057 = __PAIR128__(v1039, v1040) + __PAIR128__(v1041, v1043) + __PAIR128__(v1037, v1038);
    v1017 = v1057 + v1055;
    if (__CFADD__(v1057, v1055))
    {
      v1058 = *(&v1057 + 1) + 1;
    }

    else
    {
      v1058 = *(&v1057 + 1);
    }

    *(&v1059 + 1) = v1058;
    *&v1059 = v1057 + v1055;
    v1060 = (v1027 & 0x7FFFFFFFFFFFFLL) + 19 * (v1059 >> 51);
    v1020 = v1060 & 0x7FFFFFFFFFFFFLL;
    v1061 = v1048 + (v1060 >> 51);
    v1022 = v1061 & 0x7FFFFFFFFFFFFLL;
    v1023 = v1051 + (v1061 >> 51);
    v90 = __CFADD__(v1024++, 1);
  }

  while (!v90);
  v1062 = v1010 & 0x7FFFFFFFFFFFFLL;
  v1063 = v1017 & 0x7FFFFFFFFFFFFLL;
  v1064 = (v1017 & 0x7FFFFFFFFFFFFLL) * (19 * v881) + (v1010 & 0x7FFFFFFFFFFFFLL) * v1361 + v1020 * v879 + v1022 * v923 + v1023 * v1375;
  v1065 = (v1017 & 0x7FFFFFFFFFFFFLL) * v1361 + (v1010 & 0x7FFFFFFFFFFFFLL) * v1375 + v1020 * v881 + v1022 * v879 + v1023 * v923;
  v1066 = v1064 >> 51;
  v1067 = v1065 + v1066;
  if (__CFADD__(v1065, v1066))
  {
    v1068 = *(&v1065 + 1) + 1;
  }

  else
  {
    v1068 = ((v1017 & 0x7FFFFFFFFFFFFLL) * v1361 + (v1010 & 0x7FFFFFFFFFFFFLL) * v1375 + v1020 * v881 + v1022 * v879 + v1023 * v923) >> 64;
  }

  v1070 = (v1063 * v1375 + (v1010 & 0x7FFFFFFFFFFFFLL) * v923 + v1020 * v1382 + v1022 * v881 + v1023 * v879) >> 64;
  v1069 = v1063 * v1375 + (v1010 & 0x7FFFFFFFFFFFFLL) * v923 + v1020 * v1382 + v1022 * v881 + v1023 * v879;
  *(&v1072 + 1) = v1068;
  *&v1072 = v1067;
  v1071 = v1072 >> 51;
  v90 = __CFADD__(v1069, v1071);
  v1073 = v1069 + v1071;
  if (v90)
  {
    ++v1070;
  }

  v1074 = (v1063 * v923 + v1062 * v879 + v1369 * v1020 + v1022 * v1382 + v1023 * v881) >> 64;
  v1075 = v1063 * v923 + v1062 * v879 + v1369 * v1020 + v1022 * v1382 + v1023 * v881;
  *(&v1077 + 1) = v1070;
  *&v1077 = v1073;
  v1076 = v1077 >> 51;
  v90 = __CFADD__(v1075, v1076);
  v1078 = v1075 + v1076;
  if (v90)
  {
    ++v1074;
  }

  v1079 = v1063 * v879 + v1062 * v881 + v936 * v1020 + v1369 * v1022;
  *(&v1083 + 1) = v1074;
  *&v1083 = v1078;
  v1082 = v1083 >> 51;
  v1081 = v1079 + v1023 * v1382;
  v1080 = *(&v1081 + 1);
  v90 = __CFADD__(v1081, v1082);
  v1084 = v1081 + v1082;
  if (v90)
  {
    v1080 = *(&v1081 + 1) + 1;
  }

  *(&v1085 + 1) = v1080;
  *&v1085 = v1084;
  v1086 = (v1064 & 0x7FFFFFFFFFFFFLL) + 19 * (v1085 >> 51);
  v1087 = v1086 & 0x7FFFFFFFFFFFFLL;
  v1088 = (v1067 & 0x7FFFFFFFFFFFFLL) + (v1086 >> 51);
  v1089 = v1088 & 0x7FFFFFFFFFFFFLL;
  v1090 = (v1073 & 0x7FFFFFFFFFFFFLL) + (v1088 >> 51);
  v1091 = -5;
  do
  {
    v1092 = v1084 & 0x7FFFFFFFFFFFFLL;
    v1093 = v1078 & 0x7FFFFFFFFFFFFLL;
    v1094 = v1093 * (38 * v1090) + v1087 * v1087 + (38 * v1092) * v1089;
    v1095 = ((38 * v1092) * v1090) >> 64;
    v1096 = 38 * v1092 * v1090;
    v1097 = ((19 * v1093) * v1093) >> 64;
    v1098 = 19 * v1093 * v1093;
    v1099 = v1090 * (2 * v1087) + v1089 * v1089 + (38 * v1092) * v1093;
    v1100 = v1093 * (2 * v1087) + (2 * v1089) * v1090 + (19 * v1092) * v1092;
    v1101 = (v1092 * (2 * v1087)) >> 64;
    v1102 = v1092 * 2 * v1087;
    v1103 = (v1093 * (2 * v1089)) >> 64;
    v1104 = v1093 * 2 * v1089;
    v1105 = (v1090 * v1090) >> 64;
    v1106 = v1094 >> 51;
    v1107 = v1090 * v1090;
    v1108 = __PAIR128__(v1097, v1098) + (2 * v1087) * v1089 + __PAIR128__(v1095, v1096);
    v90 = __CFADD__(v1108, v1106);
    v1109 = v1108 + v1106;
    if (v90)
    {
      v1110 = *(&v1108 + 1) + 1;
    }

    else
    {
      v1110 = (__PAIR128__(v1097, v1098) + (2 * v1087) * v1089 + __PAIR128__(v1095, v1096)) >> 64;
    }

    *(&v1112 + 1) = v1110;
    *&v1112 = v1109;
    v1111 = v1112 >> 51;
    v1113 = v1109 & 0x7FFFFFFFFFFFFLL;
    if (__CFADD__(v1099, v1111))
    {
      v1114 = *(&v1099 + 1) + 1;
    }

    else
    {
      v1114 = *(&v1099 + 1);
    }

    v1115 = (v1099 + v1111) & 0x7FFFFFFFFFFFFLL;
    *(&v1117 + 1) = v1114;
    *&v1117 = v1099 + v1111;
    v1116 = v1117 >> 51;
    v1078 = v1100 + v1116;
    if (__CFADD__(v1100, v1116))
    {
      v1118 = *(&v1100 + 1) + 1;
    }

    else
    {
      v1118 = *(&v1100 + 1);
    }

    *(&v1120 + 1) = v1118;
    *&v1120 = v1078;
    v1119 = v1120 >> 51;
    v1121 = __PAIR128__(v1103, v1104) + __PAIR128__(v1105, v1107) + __PAIR128__(v1101, v1102);
    v1084 = v1121 + v1119;
    if (__CFADD__(v1121, v1119))
    {
      v1122 = *(&v1121 + 1) + 1;
    }

    else
    {
      v1122 = *(&v1121 + 1);
    }

    *(&v1123 + 1) = v1122;
    *&v1123 = v1121 + v1119;
    v1124 = (v1094 & 0x7FFFFFFFFFFFFLL) + 19 * (v1123 >> 51);
    v1087 = v1124 & 0x7FFFFFFFFFFFFLL;
    v1125 = v1113 + (v1124 >> 51);
    v1089 = v1125 & 0x7FFFFFFFFFFFFLL;
    v1090 = v1115 + (v1125 >> 51);
    v90 = __CFADD__(v1091++, 1);
  }

  while (!v90);
  v1127 = (v1417 * v1408 + v1419 * v1392 + (v1338 & 0x7FFFFFFFFFFFFLL) * v1384 + v1402 * v1397 + v1424 * v1389) >> 64;
  v1126 = v1417 * v1408 + v1419 * v1392 + (v1338 & 0x7FFFFFFFFFFFFLL) * v1384 + v1402 * v1397 + v1424 * v1389;
  v1128 = (v1417 * v1412 + v1419 * v1408 + v1384 * v1397 + v1402 * v1389 + v1424 * v1392) >> 64;
  v1129 = v1417 * v1412 + v1419 * v1408 + v1384 * v1397 + v1402 * v1389 + v1424 * v1392;
  v1130 = v1417 * (19 * v1397) + v1419 * v1412 + v1384 * v1389 + v1402 * v1392 + v1424 * v1408;
  v1131 = (v1417 * (19 * v1389) + v1419 * (19 * v1397) + v1384 * v1392 + v1402 * v1408 + v1424 * v1412) >> 51;
  v90 = __CFADD__(v1130, v1131);
  v1132 = v1130 + v1131;
  if (v90)
  {
    v1133 = *(&v1130 + 1) + 1;
  }

  else
  {
    v1133 = (v1417 * (19 * v1397) + v1419 * v1412 + v1384 * v1389 + v1402 * v1392 + v1424 * v1408) >> 64;
  }

  *(&v1135 + 1) = v1133;
  *&v1135 = v1132;
  v1134 = v1135 >> 51;
  v90 = __CFADD__(v1129, v1134);
  v1136 = v1129 + v1134;
  if (v90)
  {
    ++v1128;
  }

  *(&v1138 + 1) = v1128;
  *&v1138 = v1136;
  v1137 = v1138 >> 51;
  v90 = __CFADD__(v1126, v1137);
  v1139 = v1126 + v1137;
  if (v90)
  {
    ++v1127;
  }

  v1140 = v1139 & 0x7FFFFFFFFFFFFLL;
  v1141 = v1417 * v1392 + v1419 * v1389 + (v1340 & 0x7FFFFFFFFFFFFLL) * v1384 + (v1338 & 0x7FFFFFFFFFFFFLL) * v1402 + v1424 * v1397;
  *(&v1143 + 1) = v1127;
  *&v1143 = v1139;
  v1142 = v1143 >> 51;
  v1144 = v1141 + v1142;
  if (__CFADD__(v1141, v1142))
  {
    v1145 = *(&v1141 + 1) + 1;
  }

  else
  {
    v1145 = (v1417 * v1392 + v1419 * v1389 + (v1340 & 0x7FFFFFFFFFFFFLL) * v1384 + (v1338 & 0x7FFFFFFFFFFFFLL) * v1402 + v1424 * v1397) >> 64;
  }

  *(&v1146 + 1) = v1145;
  *&v1146 = v1144;
  v1147 = ((v1417 * 19 * v1389 + v1419 * 19 * v1397 + v1384 * v1392 + v1402 * v1408 + v1424 * v1412) & 0x7FFFFFFFFFFFFLL) + 19 * (v1146 >> 51);
  v1148 = v1147 & 0x7FFFFFFFFFFFFLL;
  v1149 = (v1132 & 0x7FFFFFFFFFFFFLL) + (v1147 >> 51);
  v1150 = (v1136 & 0x7FFFFFFFFFFFFLL) + (v1149 >> 51);
  v1403 = (v1089 * v1148) >> 64;
  v1393 = v1089 * v1148;
  v1385 = v1087 * (v1149 & 0x7FFFFFFFFFFFFLL);
  v1413 = v1087 * v1150;
  v1151 = v1084 & 0x7FFFFFFFFFFFFLL;
  v1152 = 19 * v1150;
  v1409 = ((v1144 & 0x7FFFFFFFFFFFFLL) * v1087) >> 64;
  v1398 = (v1144 & 0x7FFFFFFFFFFFFLL) * v1087;
  v1153 = 19 * (v1144 & 0x7FFFFFFFFFFFFLL);
  v1154 = (v1084 & 0x7FFFFFFFFFFFFLL) * (19 * (v1149 & 0x7FFFFFFFFFFFFLL)) + (v1078 & 0x7FFFFFFFFFFFFLL) * (19 * v1150) + v1087 * v1148 + v1089 * v1153 + v1090 * (19 * v1140);
  v1376 = v1140 * v1089;
  v1155 = (v1089 * (v1149 & 0x7FFFFFFFFFFFFLL)) >> 64;
  v1156 = v1089 * (v1149 & 0x7FFFFFFFFFFFFLL);
  v1157 = (v1089 * v1150) >> 64;
  v1158 = v1089 * v1150;
  v1159 = (v1090 * v1148) >> 64;
  v1160 = v1090 * v1148;
  v1161 = ((v1078 & 0x7FFFFFFFFFFFFLL) * v1148) >> 64;
  v1162 = (v1078 & 0x7FFFFFFFFFFFFLL) * v1148;
  v1362 = (v1084 & 0x7FFFFFFFFFFFFLL) * v1148;
  v1163 = (v1090 * (v1149 & 0x7FFFFFFFFFFFFLL)) >> 64;
  v1164 = v1090 * (v1149 & 0x7FFFFFFFFFFFFLL);
  v1165 = ((v1078 & 0x7FFFFFFFFFFFFLL) * (v1149 & 0x7FFFFFFFFFFFFLL)) >> 64;
  v1166 = (v1078 & 0x7FFFFFFFFFFFFLL) * (v1149 & 0x7FFFFFFFFFFFFLL);
  v1167 = (v1090 * v1150) >> 64;
  v1168 = v1090 * v1150;
  v1170 = ((v1084 & 0x7FFFFFFFFFFFFLL) * v1152 + (v1078 & 0x7FFFFFFFFFFFFLL) * (19 * v1140) + v1385 + __PAIR128__(v1403, v1393) + v1090 * v1153 + (v1154 >> 51)) >> 64;
  v1169 = (v1084 & 0x7FFFFFFFFFFFFLL) * v1152 + (v1078 & 0x7FFFFFFFFFFFFLL) * 19 * v1140 + v1385 + v1393 + v1090 * v1153 + (v1154 >> 51);
  v1171 = (v1084 & 0x7FFFFFFFFFFFFLL) * (19 * v1140) + (v1078 & 0x7FFFFFFFFFFFFLL) * v1153 + v1413 + __PAIR128__(v1155, v1156) + __PAIR128__(v1159, v1160);
  v1172 = __PAIR128__(v1170, v1169) >> 51;
  *(&v1146 + 1) = (v1171 + (__PAIR128__(v1170, v1169) >> 51)) >> 64;
  *&v1146 = v1171 + v1172;
  v1173 = v1146 >> 51;
  v1175 = (v1151 * v1153 + __PAIR128__(v1161, v1162) + v1140 * v1087 + __PAIR128__(v1157, v1158) + __PAIR128__(v1163, v1164)) >> 64;
  v1174 = v1151 * v1153 + v1162 + v1140 * v1087 + v1158 + v1164;
  v90 = __CFADD__(v1174, v1173);
  v1176 = v1174 + v1173;
  v1177 = v1176 & 0x7FFFFFFFFFFFFLL;
  *(&v1146 + 1) = (*(&v1146 + 1) >> 51) + v90 + v1175;
  *&v1146 = v1176;
  v1179 = (v1362 + __PAIR128__(v1165, v1166) + __PAIR128__(v1409, v1398) + v1376 + __PAIR128__(v1167, v1168) + (v1146 >> 51)) >> 64;
  v1178 = v1362 + v1166 + v1398 + v1376 + v1168 + (v1146 >> 51);
  v1180 = v1178 & 0x7FFFFFFFFFFFFLL;
  v1181 = (v1154 & 0x7FFFFFFFFFFFFLL) + 19 * (__PAIR128__(v1179, v1178) >> 51);
  v1182 = v1181 & 0x7FFFFFFFFFFFFLL;
  v1183 = (v1169 & 0x7FFFFFFFFFFFFLL) + (v1181 >> 51);
  v1184 = ((v1171 + v1172) & 0x7FFFFFFFFFFFFLL) + (v1183 >> 51);
  v1377 = v1354 * v1182;
  *(&v1362 + 1) = (v1348 * (v1183 & 0x7FFFFFFFFFFFFLL)) >> 64;
  v1185 = v1348 * (v1183 & 0x7FFFFFFFFFFFFLL);
  v1404 = v1344 * v1182;
  v1394 = v1348 * v1184;
  v1386 = v1354 * (v1183 & 0x7FFFFFFFFFFFFLL);
  v1414 = v1177 * v1348;
  v1420 = v1180 * v1348;
  v1186 = 19 * v1184;
  v1187 = 19 * v1177;
  v1188 = (v1354 * v1184) >> 64;
  v1189 = v1354 * (19 * v1180) + v1348 * v1182 + v1344 * (19 * v1177) + v1346 * (19 * v1184) + v1351 * (19 * (v1183 & 0x7FFFFFFFFFFFFLL));
  v1349 = (v1177 * v1354) >> 64;
  v1190 = v1177 * v1354;
  v1191 = v1354 * v1184;
  v1192 = (v1346 * v1182) >> 64;
  v1193 = v1346 * v1182;
  v1363 = (v1351 * v1182) >> 64;
  v1194 = v1351 * v1182;
  v1195 = (v1344 * (v1183 & 0x7FFFFFFFFFFFFLL)) >> 64;
  v1196 = v1344 * (v1183 & 0x7FFFFFFFFFFFFLL);
  v1197 = (v1346 * (v1183 & 0x7FFFFFFFFFFFFLL)) >> 64;
  v1198 = v1346 * (v1183 & 0x7FFFFFFFFFFFFLL);
  v1199 = (v1344 * v1184) >> 64;
  v1200 = v1344 * v1184;
  v1201 = (v1346 * v1187) >> 64;
  v1202 = v1346 * v1187;
  v1203 = (v1351 * v1187) >> 64;
  v1204 = v1351 * v1187;
  v1205 = (v1377 + __PAIR128__(*(&v1362 + 1), v1185) + v1344 * (19 * v1180) + __PAIR128__(v1201, v1202) + v1351 * v1186) >> 64;
  v1206 = v1377 + v1185 + v1344 * 19 * v1180 + v1202 + v1351 * v1186;
  v1207 = v1189 >> 51;
  v90 = __CFADD__(v1206, v1207);
  v1208 = v1206 + v1207;
  if (v90)
  {
    ++v1205;
  }

  v1209 = v1386 + v1394 + v1404 + v1346 * (19 * v1180) + __PAIR128__(v1203, v1204);
  *(&v1211 + 1) = v1205;
  *&v1211 = v1208;
  v1210 = v1211 >> 51;
  v90 = __CFADD__(v1209, v1210);
  v1212 = v1209 + v1210;
  if (v90)
  {
    v1213 = *(&v1209 + 1) + 1;
  }

  else
  {
    v1213 = (v1386 + v1394 + v1404 + v1346 * (19 * v1180) + __PAIR128__(v1203, v1204)) >> 64;
  }

  v1214 = __PAIR128__(v1188, v1191) + v1414 + __PAIR128__(v1195, v1196) + __PAIR128__(v1192, v1193) + v1351 * (19 * v1180);
  *(&v1216 + 1) = v1213;
  *&v1216 = v1212;
  v1215 = v1216 >> 51;
  v90 = __CFADD__(v1214, v1215);
  v1217 = v1214 + v1215;
  if (v90)
  {
    v1218 = *(&v1214 + 1) + 1;
  }

  else
  {
    v1218 = (__PAIR128__(v1188, v1191) + v1414 + __PAIR128__(v1195, v1196) + __PAIR128__(v1192, v1193) + v1351 * (19 * v1180)) >> 64;
  }

  v1220 = (__PAIR128__(v1349, v1190) + v1420 + __PAIR128__(v1199, v1200) + __PAIR128__(v1197, v1198) + __PAIR128__(v1363, v1194)) >> 64;
  v1219 = v1190 + v1420 + v1200 + v1198 + v1194;
  *(&v1222 + 1) = v1218;
  *&v1222 = v1217;
  v1221 = v1222 >> 51;
  v90 = __CFADD__(v1219, v1221);
  v1223 = v1219 + v1221;
  v1224 = v1208 & 0x7FFFFFFFFFFFFLL;
  v1225 = v1212 & 0x7FFFFFFFFFFFFLL;
  if (v90)
  {
    ++v1220;
  }

  *(&v1226 + 1) = v1220;
  *&v1226 = v1223;
  v1227 = (v1189 & 0x7FFFFFFFFFFFFLL) + 19 * (v1226 >> 51);
  v1228 = v1227 & 0x7FFFFFFFFFFFFLL;
  v1229 = v1224 + (v1227 >> 51);
  v1230 = v1229 & 0x7FFFFFFFFFFFFLL;
  v1231 = v1225 + (v1229 >> 51);
  v1232 = (v1217 & 0x7FFFFFFFFFFFFLL) + (v1231 >> 51);
  v1233 = (v1223 & 0x7FFFFFFFFFFFFLL) + (v1232 >> 51);
  v1234 = v1228 + 19 * (v1233 >> 51);
  v1235 = v1230 + (v1234 >> 51);
  v1236 = (v1231 & 0x7FFFFFFFFFFFFLL) + (v1235 >> 51);
  v1237 = (v1232 & 0x7FFFFFFFFFFFFLL) + (v1236 >> 51);
  v1238 = (v1233 & 0x7FFFFFFFFFFFFLL) + (v1237 >> 51);
  v1239 = (v1234 & 0x7FFFFFFFFFFFFLL) + 19 * (v1238 >> 51) + 19;
  v1240 = (v1235 & 0x7FFFFFFFFFFFFLL) + (v1239 >> 51);
  v1241 = (v1236 & 0x7FFFFFFFFFFFFLL) + (v1240 >> 51);
  v1242 = (v1237 & 0x7FFFFFFFFFFFFLL) + (v1241 >> 51);
  v1243 = (v1238 & 0x7FFFFFFFFFFFFLL) + (v1242 >> 51);
  v1244 = (v1239 & 0x7FFFFFFFFFFFFLL) + 19 * (v1243 >> 51);
  v1245 = v1240 & 0x7FFFFFFFFFFFFLL;
  v1246 = v1244 + 0x7FFFFFFFFFFEDLL;
  v1247 = v1245 + ((v1244 + 0x7FFFFFFFFFFEDLL) >> 51) + 0x7FFFFFFFFFFFFLL;
  v1248 = (v1241 & 0x7FFFFFFFFFFFFLL) + (v1247 >> 51) + 0x7FFFFFFFFFFFFLL;
  v1249 = (v1242 & 0x7FFFFFFFFFFFFLL) + (v1248 >> 51) + 0x7FFFFFFFFFFFFLL;
  v1250 = v1243 + (v1249 >> 51) + 0x7FFFFFFFFFFFFLL;
  a7.n128_u64[0] = HIDWORD(v1246);
  a6.n128_u64[0] = v1246 >> 24;
  *&v16 = v1246 >> 16;
  v1251 = v1246 >> 8;
  *(a1 + 5) = BYTE5(v1246);
  *a1 = v1246;
  *(a1 + 6) = (v1246 & 0x7000000000000 | (v1247 << 51)) >> 48;
  *(a1 + 7) = v1247 >> 5;
  *(a1 + 9) = v1247 >> 21;
  *(a1 + 10) = v1247 >> 29;
  *(a1 + 11) = v1247 >> 37;
  v1252 = (v1247 >> 13) & 0x3FFFFFFFFFLL;
  *(a1 + 8) = v1252;
  *(a1 + 12) = (v1252 | (v1248 << 38)) >> 32;
  *(a1 + 13) = v1248 >> 2;
  *(a1 + 14) = v1248 >> 10;
  *(a1 + 15) = v1248 >> 18;
  *(a1 + 17) = v1248 >> 34;
  *(a1 + 18) = v1248 >> 42;
  v1253 = (v1248 >> 26) & 0x1FFFFFF;
  *(a1 + 16) = v1253;
  *(a1 + 19) = (v1253 | (v1249 << 25)) >> 24;
  *&v10 = v1249 >> 31;
  *&v9 = v1249 >> 23;
  *&v8 = v1249 >> 15;
  *&v7 = v1249 >> 7;
  v1254 = (v1249 >> 39) & 0xFFF;
  *(a1 + 24) = v1254;
  *(a1 + 25) = (v1254 | (v1250 << 12)) >> 8;
  *&v14 = v1250 >> 28;
  *&v13 = v1250 >> 20;
  *&v12 = v1250 >> 12;
  *&v11 = v1250 >> 4;
  *(a1 + 30) = v1250 >> 36;
  *(a1 + 1) = vmovn_s16(vqtbl4q_s8(*(&a6 - 2), xmmword_191FF9570)).u32[0];
  *(a1 + 20) = vmovn_s16(vqtbl4q_s8(*&v7, xmmword_191FF9570)).u32[0];
  result = vmovn_s16(vqtbl4q_s8(*&v11, xmmword_191FF9570));
  *(a1 + 26) = result.i32[0];
  *(a1 + 31) = (v1250 >> 44) & 0x7F;
  return result;
}