@interface DAIMAPNotesFolderSyncRequest
- (NoteContext)noteContext;
@end

@implementation DAIMAPNotesFolderSyncRequest

- (NoteContext)noteContext
{
  noteContext = self->_noteContext;
  if (!noteContext)
  {
    v4 = DALoggingwithCategory();
    v5 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v4, v5))
    {
      v6 = objc_opt_class();
      v7 = v6;
      v8 = +[NSThread currentThread];
      v12 = 138412546;
      v13 = v6;
      v14 = 2048;
      v15 = v8;
      _os_log_impl(&dword_0, v4, v5, "%@ creating noteContext on thread %p", &v12, 0x16u);
    }

    v9 = objc_opt_new();
    v10 = self->_noteContext;
    self->_noteContext = v9;

    noteContext = self->_noteContext;
  }

  return noteContext;
}

@end