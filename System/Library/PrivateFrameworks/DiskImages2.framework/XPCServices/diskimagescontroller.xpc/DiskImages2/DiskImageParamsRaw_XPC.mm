@interface DiskImageParamsRaw_XPC
- (BOOL)isWritableFormat;
- (unint64_t)numBlocks;
- (unique_ptr<DiskImage,)createSinkDiskImage;
@end

@implementation DiskImageParamsRaw_XPC

- (unique_ptr<DiskImage,)createSinkDiskImage
{
  backendXPC = [(DiskImageParamsXPC *)self backendXPC];
  v4 = backendXPC;
  if (backendXPC)
  {
    [backendXPC backend];
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  sub_10019A824(&v9, &v11);
  sub_1000AC104(&v11, &v13);
  if (v12)
  {
    sub_10000367C(v12);
  }

  if (v10)
  {
    sub_10000367C(v10);
  }

  if (v13)
  {
    [(DiskImageParamsXPC *)self setBlockSize:*(v13[3] + 8)];
    backendXPC2 = [(DiskImageParamsXPC *)self backendXPC];
    if (backendXPC2)
    {
      [backendXPC2 backend];
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    [(DiskImageParamsXPC *)self blockSize];
    operator new();
  }

  if (v14)
  {
    sub_10000367C(v14);
  }

  backendXPC3 = [(DiskImageParamsXPC *)self backendXPC];
  v7 = backendXPC3;
  if (backendXPC3)
  {
    [backendXPC3 backend];
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  sub_1000AC188(&v11, &v13);
  if (v12)
  {
    sub_10000367C(v12);
  }

  if (v13)
  {
    sub_1001569B8(v13);
    sub_100139E80(v13[7] + 1);
    operator new();
  }

  if (v14)
  {
    sub_10000367C(v14);
  }

  backendXPC4 = [(DiskImageParamsXPC *)self backendXPC];
  if (backendXPC4)
  {
    [backendXPC4 backend];
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  [(DiskImageParamsXPC *)self blockSize];
  operator new();
}

- (BOOL)isWritableFormat
{
  backendXPC = [(DiskImageParamsXPC *)self backendXPC];
  v3 = backendXPC;
  if (backendXPC)
  {
    [backendXPC backend];
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  sub_10019A824(&v6, &v8);
  sub_1000AC104(&v8, &v10);
  v4 = v10;
  if (v11)
  {
    sub_10000367C(v11);
  }

  if (v9)
  {
    sub_10000367C(v9);
  }

  if (v7)
  {
    sub_10000367C(v7);
  }

  return v4 == 0;
}

- (unint64_t)numBlocks
{
  backendXPC = [(DiskImageParamsXPC *)self backendXPC];
  v4 = backendXPC;
  if (backendXPC)
  {
    [backendXPC backend];
    backendXPC = v8;
  }

  else
  {
    v9 = 0;
  }

  v5 = (*(*backendXPC + 40))(backendXPC);
  blockSize = [(DiskImageParamsXPC *)self blockSize];
  if (v9)
  {
    sub_10000367C(v9);
  }

  return v5 / blockSize;
}

@end