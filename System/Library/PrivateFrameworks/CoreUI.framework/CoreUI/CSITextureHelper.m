@interface CSITextureHelper
- (BOOL)expandIntoBuffer:(uint64_t)a1 error:(void *)a2;
- (void)dealloc;
@end

@implementation CSITextureHelper

- (void)dealloc
{
  CGColorSpaceRelease(self->colorspaceHint);
  v3.receiver = self;
  v3.super_class = CSITextureHelper;
  [(CSITextureHelper *)&v3 dealloc];
}

- (BOOL)expandIntoBuffer:(uint64_t)a1 error:(void *)a2
{
  if (a1)
  {
    v4 = *(a1 + 32);
    v5 = [_CSIRenditionBlockData alloc];
    v6 = [objc_msgSend(a2 "map")];
    v7 = *(a1 + 44);
    if (v7 == 1095911234)
    {
      v8 = 1;
    }

    else
    {
      v8 = -1;
    }

    if (v7 == 1380401717)
    {
      v9 = 6;
    }

    else
    {
      v9 = v8;
    }

    if (v7 == 1195456544)
    {
      v10 = 2;
    }

    else
    {
      v10 = v9;
    }

    if (v7 == 1195454774)
    {
      v11 = 5;
    }

    else
    {
      v11 = v10;
    }

    if (v7 == 1380401751)
    {
      v12 = 4;
    }

    else
    {
      v12 = v11;
    }

    v13 = [(_CSIRenditionBlockData *)v5 initWithBytes:v6 pixelWidth:*(a1 + 32) pixelHeight:*(a1 + 36) sourceRowbytes:*(a1 + 24) pixelFormat:v12];
    [(_CSIRenditionBlockData *)v13 setRowBytes:?];
    [(_CSIRenditionBlockData *)v13 expandCSIBitmapData:0 fromSlice:v4 makeReadOnly:0, v14, v15, v16];
    if (v13)
    {
      v17 = atomic_load(v13 + 5);
    }

    else
    {
      v17 = 0;
    }

    *(a1 + 40) = v17;
  }

  return a1 != 0;
}

@end