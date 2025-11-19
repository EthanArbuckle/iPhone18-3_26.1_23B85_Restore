@interface DAAppSession
- (DAAppSession)initWithXPCObject:(id)a3 error:(id *)a4;
@end

@implementation DAAppSession

- (DAAppSession)initWithXPCObject:(id)a3 error:(id *)a4
{
  v6 = a3;
  v24.receiver = self;
  v24.super_class = DAAppSession;
  v7 = [(DAAppSession *)&v24 init];
  if (!v7)
  {
    if (a4)
    {
      v23 = objc_opt_class();
      DAErrorF(350001, "%@ init failed", v16, v17, v18, v19, v20, v21, v23);
LABEL_9:
      *a4 = v14 = 0;
      goto LABEL_4;
    }

LABEL_10:
    v14 = 0;
    goto LABEL_4;
  }

  if (MEMORY[0x24C1DC9E0](v6) != MEMORY[0x277D86468])
  {
    if (a4)
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