@interface _OSLogDirectoryReference
- (_OSLogDirectoryReference)initWithDescriptor:(int)a3 sandboxExtensionToken:(const char *)a4;
- (void)close;
- (void)dealloc;
@end

@implementation _OSLogDirectoryReference

- (void)dealloc
{
  fd = self->_fd;
  if (fd == -1)
  {
    v7 = v2;
    v8 = v3;
    if (self->_etk != -1)
    {
      sandbox_extension_release();
      self->_etk = -1;
    }

    v6.receiver = self;
    v6.super_class = _OSLogDirectoryReference;
    [(_OSLogDirectoryReference *)&v6 dealloc];
  }

  else
  {
    qword_27DA52778 = "BUG IN LIBTRACE: _OSLogDirectoryReference released before close";
    qword_27DA527A8 = fd;
    __break(1u);
  }
}

- (void)close
{
  fd = self->_fd;
  if (fd < 0 || close(fd) != -1)
  {
    goto LABEL_3;
  }

  v4 = *__error();
  v5 = *__error();
  if (v4 != 9)
  {
    _os_assumes_log();
LABEL_3:
    self->_fd = -1;
    return;
  }

  qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
  qword_27DA527A8 = v5;
  __break(1u);
}

- (_OSLogDirectoryReference)initWithDescriptor:(int)a3 sandboxExtensionToken:(const char *)a4
{
  v8.receiver = self;
  v8.super_class = _OSLogDirectoryReference;
  v6 = [(_OSLogDirectoryReference *)&v8 init];
  if (v6)
  {
    v6->_fd = dup(a3);
    v6->_etk = -1;
    if (a4)
    {
      v6->_etk = sandbox_extension_consume();
    }
  }

  return v6;
}

@end