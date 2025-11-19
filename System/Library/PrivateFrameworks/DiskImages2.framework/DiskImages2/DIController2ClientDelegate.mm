@interface DIController2ClientDelegate
- (void)attachCompletedWithHandle:(id)a3 reply:(id)a4;
@end

@implementation DIController2ClientDelegate

- (void)attachCompletedWithHandle:(id)a3 reply:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
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
    v25 = v6;
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
      v25 = v6;
      _os_log_impl(&dword_248DE0000, v11, OS_LOG_TYPE_DEFAULT, "%.*s: Received: %{public}@", buf, 0x1Cu);
    }
  }

  *__error() = v8;
  v12 = [v6 xpcEndpoint];

  if (v12)
  {
    v19[0] = 0;
    v13 = [v6 addToRefCountWithError:v19];
    v14 = v19[0];
    v15 = v14;
    if ((v13 & 1) == 0)
    {
      v7[2](v7, v14);

      goto LABEL_12;
    }
  }

  [(DIController2ClientDelegate *)self setDeviceHandle:v6, v17, v18];
  v7[2](v7, 0);
LABEL_12:

  v16 = *MEMORY[0x277D85DE8];
}

@end