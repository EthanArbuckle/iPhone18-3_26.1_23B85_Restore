@interface JavaNetInetSocketAddress
- (BOOL)isEqual:(id)equal;
- (id)description;
- (id)getHostName;
- (id)getHostString;
- (unint64_t)hash;
- (void)dealloc;
- (void)readObjectWithJavaIoObjectInputStream:(id)stream;
@end

@implementation JavaNetInetSocketAddress

- (id)getHostName
{
  if (self->addr_)
  {
    return [(JavaNetInetAddress *)self->addr_ getHostName];
  }

  else
  {
    return self->hostname_;
  }
}

- (id)getHostString
{
  if (self->hostname_)
  {
    return self->hostname_;
  }

  addr = self->addr_;
  if (!addr)
  {
    JreThrowNullPointerException();
  }

  return [(JavaNetInetAddress *)addr getHostAddress];
}

- (id)description
{
  addr = self->addr_;
  if (addr)
  {
    hostname = [(JavaNetInetAddress *)addr description];
  }

  else
  {
    hostname = self->hostname_;
  }

  port = self->port_;
  return JreStrcat("$CI", a2, v2, v3, v4, v5, v6, v7, hostname);
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  objc_opt_class();
  if (!equal)
  {
    goto LABEL_16;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  if (self->port_ != *(equal + 6))
  {
    return 0;
  }

  addr = self->addr_;
  v6 = *(equal + 1);
  if (!addr)
  {
    if (v6)
    {
      return 0;
    }

    addr = self->hostname_;
    if (addr)
    {
      v6 = *(equal + 2);
      goto LABEL_7;
    }

LABEL_16:
    JreThrowNullPointerException();
  }

LABEL_7:

  return [(JavaNetInetAddress *)addr isEqual:v6];
}

- (unint64_t)hash
{
  addr = self->addr_;
  if (!addr)
  {
    addr = self->hostname_;
    if (!addr)
    {
      JreThrowNullPointerException();
    }
  }

  return (self->port_ + [(JavaNetInetAddress *)addr hash]);
}

- (void)readObjectWithJavaIoObjectInputStream:(id)stream
{
  if (!stream)
  {
    JreThrowNullPointerException();
  }

  [stream defaultReadObject];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaNetInetSocketAddress;
  [(JavaNetInetSocketAddress *)&v3 dealloc];
}

@end