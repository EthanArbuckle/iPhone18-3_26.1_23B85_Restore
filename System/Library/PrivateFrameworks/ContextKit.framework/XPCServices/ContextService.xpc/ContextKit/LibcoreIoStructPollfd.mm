@interface LibcoreIoStructPollfd
- (id)description;
- (void)dealloc;
@end

@implementation LibcoreIoStructPollfd

- (id)description
{
  revents = self->revents_;
  events = self->events_;
  fd = self->fd_;
  return JreStrcat("$@$S$SC", a2, v2, v3, v4, v5, v6, v7, @"StructPollfd[fd=");
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = LibcoreIoStructPollfd;
  [(LibcoreIoStructPollfd *)&v3 dealloc];
}

@end