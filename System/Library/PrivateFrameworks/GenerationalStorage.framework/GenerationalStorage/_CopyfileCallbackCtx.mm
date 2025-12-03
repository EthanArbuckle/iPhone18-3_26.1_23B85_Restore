@interface _CopyfileCallbackCtx
- (_CopyfileCallbackCtx)initWithPath:(const char *)path error:(id *)error;
@end

@implementation _CopyfileCallbackCtx

- (_CopyfileCallbackCtx)initWithPath:(const char *)path error:(id *)error
{
  v16.receiver = self;
  v16.super_class = _CopyfileCallbackCtx;
  v6 = [(_CopyfileCallbackCtx *)&v16 init];
  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = +[NSProgress currentProgress];

  if (v7)
  {
    v8 = sub_10000B1E0(path, error);
    if ((v8 & 0x8000000000000000) == 0)
    {
      v9 = [NSProgress progressWithTotalUnitCount:v8];
      progress = v6->_progress;
      v6->_progress = v9;

      [(NSProgress *)v6->_progress setUserInfoObject:NSProgressFileOperationKindCopying forKey:NSProgressFileOperationKindKey];
      v11 = v6->_progress;
      v12 = [NSString gs_stringWithFileSystemRepresentation:path];
      v13 = [NSURL fileURLWithPath:v12];
      [(NSProgress *)v11 setUserInfoObject:v13 forKey:NSProgressFileURLKey];

      [(NSProgress *)v6->_progress setCancellable:1];
      [(NSProgress *)v6->_progress setKind:NSProgressKindFile];
      goto LABEL_5;
    }

LABEL_6:
    v14 = 0;
    goto LABEL_7;
  }

LABEL_5:
  v14 = v6;
LABEL_7:

  return v14;
}

@end