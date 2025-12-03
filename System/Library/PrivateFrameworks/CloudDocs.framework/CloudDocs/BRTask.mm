@interface BRTask
+ (id)sanitizeStringForFilename:(id)filename;
+ (id)taskWithCommand:(id)command;
+ (id)taskWithCommandWithArguments:(id)arguments;
- (BRTask)init;
- (int)exec;
- (void)resetRedirect;
- (void)setCommand:(id)command;
- (void)setCommandWithArguments:(id)arguments;
@end

@implementation BRTask

- (BRTask)init
{
  v3.receiver = self;
  v3.super_class = BRTask;
  result = [(BRTask *)&v3 init];
  if (result)
  {
    result->_redirectStdoutToFileDescriptor = -1;
    result->_redirectStderrToFileDescriptor = -1;
  }

  return result;
}

+ (id)taskWithCommand:(id)command
{
  v4 = MEMORY[0x1E696AEC0];
  commandCopy = command;
  v6 = [[v4 alloc] initWithFormat:commandCopy arguments:&v10];

  v7 = [self taskWithCommandWithArguments:v6];

  return v7;
}

+ (id)taskWithCommandWithArguments:(id)arguments
{
  argumentsCopy = arguments;
  v4 = objc_alloc_init(BRTask);
  [(BRTask *)v4 setCommandWithArguments:argumentsCopy];

  return v4;
}

+ (id)sanitizeStringForFilename:(id)filename
{
  filenameCopy = filename;
  if (filenameCopy)
  {
    v4 = filenameCopy;
    v5 = [filenameCopy stringByReplacingOccurrencesOfString:@"/" withString:@":"];

    v6 = [v5 stringByReplacingOccurrencesOfString:@" withString:@"'""];
    v7 = ;

    v8 = [v7 stringByReplacingOccurrencesOfString:@"’" withString:@"'"];

    if (![(__CFString *)v8 length])
    {

      v8 = @"empty-string";
    }
  }

  else
  {
    v8 = @"nil";
  }

  return v8;
}

- (void)setCommand:(id)command
{
  v4 = MEMORY[0x1E696AEC0];
  commandCopy = command;
  v6 = [[v4 alloc] initWithFormat:commandCopy arguments:&v7];

  [(BRTask *)self setCommandWithArguments:v6];
}

- (void)setCommandWithArguments:(id)arguments
{
  argumentsCopy = arguments;
  array = [MEMORY[0x1E695DF70] array];
  if (![argumentsCopy length])
  {
    goto LABEL_22;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = -1;
  v10 = 1;
  do
  {
    v11 = [argumentsCopy characterAtIndex:v6];
    if (v11 != 39 || (v8 & 1) != 0)
    {
      if ((v11 != 34) | v5 & 1)
      {
        v13 = v11 != 32;
        v12 = argumentsCopy;
        if ((v13 | v5 | v8))
        {
          goto LABEL_18;
        }
      }

      else
      {
        v12 = argumentsCopy;
        if ((v8 & 1) == 0)
        {
          v5 = 0;
          v8 = 1;
          goto LABEL_17;
        }
      }
    }

    else
    {
      v12 = argumentsCopy;
      if ((v5 & 1) == 0)
      {
        v8 = 0;
        v5 = 1;
LABEL_17:
        v9 = v6;
LABEL_18:
        v17 = v10;
        goto LABEL_19;
      }
    }

    if (v10 != 1)
    {
      v14 = [v12 substringWithRange:{v7, v10 - 1}];
      v15 = v14;
      if (v9 != -1)
      {
        v16 = [v14 stringByReplacingCharactersInRange:v9 - v7 withString:{1, &stru_1F23D4ED0}];

        v15 = v16;
      }

      [array addObject:v15];

      v12 = argumentsCopy;
    }

    v5 = 0;
    v8 = 0;
    v17 = 0;
    v7 += v10;
    v9 = -1;
LABEL_19:
    v10 = v17 + 1;
    ++v6;
  }

  while (v6 < [v12 length]);
  if (v17)
  {
    v18 = [argumentsCopy substringWithRange:{v7, v17}];
    [array addObject:v18];
  }

LABEL_22:
  [(BRTask *)self setArgv:array];
}

- (int)exec
{
  v76 = *MEMORY[0x1E69E9840];
  argv = [(BRTask *)self argv];
  if (![argv count])
  {
    [BRTask exec];
  }

  if ((os_variant_has_internal_content() & 1) == 0)
  {
    argv2 = [(BRTask *)self argv];
    v5 = [argv2 objectAtIndex:0];
    v6 = [v5 containsString:@"/usr/local/"];

    if (v6)
    {
      v7 = -1;
      goto LABEL_21;
    }
  }

  argv3 = [(BRTask *)self argv];
  v9 = malloc_type_malloc(8 * [argv3 count] + 8, 0x10040436913F5uLL);

  argv4 = [(BRTask *)self argv];
  v11 = [argv4 count];

  if (v11)
  {
    v12 = 0;
    do
    {
      argv5 = [(BRTask *)self argv];
      v14 = [argv5 objectAtIndex:v12];
      v9[v12] = strdup([v14 fileSystemRepresentation]);

      ++v12;
      argv6 = [(BRTask *)self argv];
      v16 = [argv6 count];
    }

    while (v12 < v16);
  }

  argv7 = [(BRTask *)self argv];
  v9[[argv7 count]] = 0;

  v18 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v19 = posix_spawn_file_actions_init(v18);
  if (!v19)
  {
    redirectStdoutToFileAtPath = [(BRTask *)self redirectStdoutToFileAtPath];
    v35 = [redirectStdoutToFileAtPath length];

    if (v35)
    {
      redirectStdoutToFileAtPath2 = [(BRTask *)self redirectStdoutToFileAtPath];
      v7 = posix_spawn_file_actions_addopen(v18, 1, [redirectStdoutToFileAtPath2 fileSystemRepresentation], 521, 0x1B6u);

      if (v7)
      {
        v20 = brc_bread_crumbs("[BRTask exec]", 191);
        v21 = brc_default_log(1, 0);
        if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_12;
        }

        v37 = __error();
        v38 = strerror(*v37);
        *buf = 136315394;
        v71 = v38;
        v72 = 2112;
        v73 = v20;
        v24 = "[WARNING] Unable to redirect stdin (%s).%@";
        goto LABEL_11;
      }
    }

    redirectStderrToFileAtPath = [(BRTask *)self redirectStderrToFileAtPath];
    v40 = [redirectStderrToFileAtPath length];

    if (v40)
    {
      redirectStderrToFileAtPath2 = [(BRTask *)self redirectStderrToFileAtPath];
      v7 = posix_spawn_file_actions_addopen(v18, 2, [redirectStderrToFileAtPath2 fileSystemRepresentation], 521, 0x1B6u);

      if (v7)
      {
        v20 = brc_bread_crumbs("[BRTask exec]", 197);
        v21 = brc_default_log(1, 0);
        if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_12;
        }

        v42 = __error();
        v43 = strerror(*v42);
        *buf = 136315394;
        v71 = v43;
        v72 = 2112;
        v73 = v20;
        v24 = "[WARNING] Unable to redirect stderr (%s).%@";
        goto LABEL_11;
      }
    }

    if ([(BRTask *)self redirectStdoutToFileDescriptor]== -1 || (v44 = posix_spawn_file_actions_adddup2(v18, [(BRTask *)self redirectStdoutToFileDescriptor], 1)) == 0)
    {
      if ([(BRTask *)self redirectStderrToFileDescriptor]== -1 || (v47 = posix_spawn_file_actions_adddup2(v18, [(BRTask *)self redirectStderrToFileDescriptor], 2)) == 0)
      {
        v69 = 0;
        argv8 = [(BRTask *)self argv];
        v49 = [argv8 objectAtIndex:0];
        fileSystemRepresentation = [v49 fileSystemRepresentation];
        v7 = posix_spawnp(&v69, fileSystemRepresentation, v18, 0, v9, *MEMORY[0x1E69E97E8]);

        if (v7)
        {
          v51 = brc_bread_crumbs("[BRTask exec]", 261);
          v52 = brc_default_log(1, 0);
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
          {
            argv9 = [(BRTask *)self argv];
            v54 = [argv9 componentsJoinedByString:{@", "}];
            v55 = strerror(v7);
            *buf = 138412802;
            v71 = v54;
            v72 = 2080;
            v73 = v55;
            v74 = 2112;
            v75 = v51;
            _os_log_impl(&dword_1AE2A9000, v52, OS_LOG_TYPE_DEFAULT, "[WARNING] Unable to spawn a new process (argv: [%@], error: %s).%@", buf, 0x20u);
          }

          self->_waitStatus = 0;
        }

        else
        {
          v56 = signal(2, 1);
          if (v56 == -1)
          {
            v65 = brc_bread_crumbs("[BRTask exec]", 223);
            v66 = brc_default_log(1, 0);
            if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v71 = v65;
              _os_log_impl(&dword_1AE2A9000, v66, OS_LOG_TYPE_DEFAULT, "[WARNING] Unable to retrieve handler for SIGINT.%@", buf, 0xCu);
            }

            waitpid(v69, &self->_waitStatus, 0);
          }

          else
          {
            v57 = v56;
            v58 = dispatch_get_global_queue(0, 0);
            v59 = dispatch_source_create(MEMORY[0x1E69E9700], 2uLL, 0, v58);

            v67[0] = MEMORY[0x1E69E9820];
            v67[1] = 3221225472;
            v67[2] = __14__BRTask_exec__block_invoke;
            v67[3] = &unk_1E7A165D0;
            v68 = v69;
            v67[4] = self;
            v60 = v59;
            v61 = v67;
            v62 = v61;
            v63 = v61;
            if (brc_block_remember_persona)
            {
              v63 = brc_block_remember_persona(v61);
            }

            v64 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, v63);
            dispatch_source_set_event_handler(v60, v64);

            dispatch_resume(v60);
            waitpid(v69, &self->_waitStatus, 0);
            signal(2, v57);
            dispatch_source_cancel(v60);
          }
        }

        goto LABEL_13;
      }

      v7 = v47;
      v20 = brc_bread_crumbs("[BRTask exec]", 209);
      v21 = brc_default_log(1, 0);
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }
    }

    else
    {
      v7 = v44;
      v20 = brc_bread_crumbs("[BRTask exec]", 203);
      v21 = brc_default_log(1, 0);
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }
    }

    v45 = __error();
    v46 = strerror(*v45);
    *buf = 136315394;
    v71 = v46;
    v72 = 2112;
    v73 = v20;
    v24 = "[WARNING] Unable to perform spawn action (%s).%@";
    goto LABEL_11;
  }

  v7 = v19;
  v20 = brc_bread_crumbs("[BRTask exec]", 186);
  v21 = brc_default_log(1, 0);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = __error();
    v23 = strerror(*v22);
    *buf = 136315394;
    v71 = v23;
    v72 = 2112;
    v73 = v20;
    v24 = "[WARNING] Unable to initialize the file actions properly (%s).%@";
LABEL_11:
    _os_log_impl(&dword_1AE2A9000, v21, OS_LOG_TYPE_DEFAULT, v24, buf, 0x16u);
  }

LABEL_12:

LABEL_13:
  v25 = *v9;
  if (*v9)
  {
    v26 = v9 + 1;
    do
    {
      free(v25);
      v27 = *v26++;
      v25 = v27;
    }

    while (v27);
  }

  free(v9);
  if (posix_spawn_file_actions_destroy(v18))
  {
    v28 = brc_bread_crumbs("[BRTask exec]", 272);
    v29 = brc_default_log(1, 0);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = __error();
      v31 = strerror(*v30);
      *buf = 136315394;
      v71 = v31;
      v72 = 2112;
      v73 = v28;
      _os_log_impl(&dword_1AE2A9000, v29, OS_LOG_TYPE_DEFAULT, "[WARNING] Unable to destroy the file actions properly (%s).%@", buf, 0x16u);
    }
  }

  free(v18);
LABEL_21:
  v32 = *MEMORY[0x1E69E9840];
  return v7;
}

void __14__BRTask_exec__block_invoke(uint64_t a1)
{
  fwrite("\b\b", 2uLL, 1uLL, *MEMORY[0x1E69E9848]);
  kill(*(a1 + 40), 9);
  v2 = [*(a1 + 32) redirectStderrToFileAtPath];
  if ([v2 length])
  {
  }

  else
  {
    v3 = [*(a1 + 32) redirectStderrToFileDescriptor];

    if (v3 == -1)
    {
      return;
    }
  }

  v4 = [*(a1 + 32) redirectStderrToFileAtPath];

  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = [v5 redirectStderrToFileAtPath];
    if (v6)
    {
LABEL_6:
      v10 = v6;
      v7 = fopen([v10 fileSystemRepresentation], "a+");
      if (v7)
      {
        v8 = v7;
        fwrite("\n\n === Aborted by user", 0x16uLL, 1uLL, v7);
        fclose(v8);
      }

      v6 = v10;
    }
  }

  else if ([v5 redirectStderrToFileDescriptor] == 1 && (objc_msgSend(*(a1 + 32), "redirectStdoutToFileAtPath"), v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    v6 = [*(a1 + 32) redirectStdoutToFileAtPath];
    if (v6)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
  }
}

- (void)resetRedirect
{
  [(BRTask *)self setRedirectStdoutToFileAtPath:0];
  [(BRTask *)self setRedirectStdoutToFileDescriptor:0xFFFFFFFFLL];
  [(BRTask *)self setRedirectStderrToFileAtPath:0];

  [(BRTask *)self setRedirectStderrToFileDescriptor:0xFFFFFFFFLL];
}

@end