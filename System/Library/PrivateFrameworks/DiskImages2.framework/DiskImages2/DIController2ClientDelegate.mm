@interface DIController2ClientDelegate
- (void)attachCompletedWithHandle:(id)handle reply:(id)reply;
@end

@implementation DIController2ClientDelegate

- (void)attachCompletedWithHandle:(id)handle reply:(id)reply
{
  v26 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  replyCopy = reply;
  v8 = *__error();
  if (DIForwardLogs())
  {
    v19[1] = 0;
    v9 = getDIOSLog();
    os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    *buf = 68158210;
    v21 = 63;
    v22 = 2080;
    v23 = "[DIController2ClientDelegate attachCompletedWithHandle:reply:]";
    v24 = 2114;
    v25 = handleCopy;
    LODWORD(v18) = 28;
    v17 = buf;
    v10 = _os_log_send_and_compose_impl();

    if (v10)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v10);
      free(v10);
    }
  }

  else
  {
    v11 = getDIOSLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68158210;
      v21 = 63;
      v22 = 2080;
      v23 = "[DIController2ClientDelegate attachCompletedWithHandle:reply:]";
      v24 = 2114;
      v25 = handleCopy;
      _os_log_impl(&dword_248DE0000, v11, OS_LOG_TYPE_DEFAULT, "%.*s: Received: %{public}@", buf, 0x1Cu);
    }
  }

  *__error() = v8;
  xpcEndpoint = [handleCopy xpcEndpoint];

  if (xpcEndpoint)
  {
    v19[0] = 0;
    v13 = [handleCopy addToRefCountWithError:v19];
    v14 = v19[0];
    v15 = v14;
    if ((v13 & 1) == 0)
    {
      replyCopy[2](replyCopy, v14);

      goto LABEL_12;
    }
  }

  [(DIController2ClientDelegate *)self setDeviceHandle:handleCopy, v17, v18];
  replyCopy[2](replyCopy, 0);
LABEL_12:

  v16 = *MEMORY[0x277D85DE8];
}

@end