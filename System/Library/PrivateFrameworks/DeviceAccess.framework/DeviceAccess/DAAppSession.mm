@interface DAAppSession
- (DAAppSession)initWithXPCObject:(id)object error:(id *)error;
@end

@implementation DAAppSession

- (DAAppSession)initWithXPCObject:(id)object error:(id *)error
{
  objectCopy = object;
  v24.receiver = self;
  v24.super_class = DAAppSession;
  v7 = [(DAAppSession *)&v24 init];
  if (!v7)
  {
    if (error)
    {
      v23 = objc_opt_class();
      DAErrorF(350001, "%@ init failed", v16, v17, v18, v19, v20, v21, v23);
LABEL_9:
      *error = v14 = 0;
      goto LABEL_4;
    }

LABEL_10:
    v14 = 0;
    goto LABEL_4;
  }

  if (MEMORY[0x24C1DC9E0](objectCopy) != MEMORY[0x277D86468])
  {
    if (error)
    {
      DAErrorF(350004, "XPC non-dict", v8, v9, v10, v11, v12, v13, v22);
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v14 = v7;
LABEL_4:

  return v14;
}

@end