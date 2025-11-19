@interface NWSSnapshotSource
- (NWSSnapshotSource)init;
- (int64_t)recv:(void *)a3 length:(unint64_t)a4 err:(int *)a5;
- (int64_t)send:(void *)a3 length:(unint64_t)a4 err:(int *)a5;
- (void)dealloc;
@end

@implementation NWSSnapshotSource

- (NWSSnapshotSource)init
{
  v16 = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = NWSSnapshotSource;
  v2 = [(NWSSnapshotSource *)&v13 init];
  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = socket(32, 2, 2);
  if (v3 != -1)
  {
    v4 = v3;
    v9 = 1;
    if (!setsockopt(v3, 0xFFFF, 4130, &v9, 4u))
    {
      v15 = 0;
      memset(v14, 0, sizeof(v14));
      __strlcpy_chk();
      if (ioctl(v4, 0xC0644E03uLL, v14) != -1)
      {
        v11 = 0;
        *&v10[12] = 0;
        v12 = 0;
        *v10 = 139296;
        *&v10[4] = v14[0];
        *&v10[8] = 0;
        if (!connect(v4, v10, 0x20u))
        {
          v6 = fcntl(v4, 3, 0);
          if (fcntl(v4, 4, v6 | 4u) != -1)
          {
            v2->_sockFd = v4;
LABEL_10:
            v5 = v2;
            goto LABEL_11;
          }
        }
      }
    }

    close(v4);
  }

  v5 = 0;
LABEL_11:

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)dealloc
{
  close(self->_sockFd);
  v3.receiver = self;
  v3.super_class = NWSSnapshotSource;
  [(NWSSnapshotSource *)&v3 dealloc];
}

- (int64_t)send:(void *)a3 length:(unint64_t)a4 err:(int *)a5
{
  v6 = send(self->_sockFd, a3, a4, 0);
  v7 = v6;
  if (a5)
  {
    if (v6 < 0)
    {
      v8 = *__error();
    }

    else
    {
      v8 = 0;
    }

    *a5 = v8;
  }

  return v7;
}

- (int64_t)recv:(void *)a3 length:(unint64_t)a4 err:(int *)a5
{
  v6 = recv(self->_sockFd, a3, a4, 0);
  v7 = v6;
  if (a5)
  {
    if (v6 < 0)
    {
      v8 = *__error();
    }

    else
    {
      v8 = 0;
    }

    *a5 = v8;
  }

  return v7;
}

@end