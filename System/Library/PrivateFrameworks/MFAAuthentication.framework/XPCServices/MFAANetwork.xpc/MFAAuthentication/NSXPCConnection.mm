@interface NSXPCConnection
- (BOOL)hasCategory:(id)a3 forEntitlement:(id)a4;
- (BOOL)hasEntitlement:(id)a3;
@end

@implementation NSXPCConnection

- (BOOL)hasEntitlement:(id)a3
{
  v3 = [(NSXPCConnection *)self valueForEntitlement:a3];
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([v3 BOOLValue] & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      isKindOfClass = 1;
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (BOOL)hasCategory:(id)a3 forEntitlement:(id)a4
{
  v6 = a3;
  v7 = [(NSXPCConnection *)self valueForEntitlement:a4];
  if (!v7)
  {
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v7 containsObject:v6])
  {
    v8 = 1;
    goto LABEL_14;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_9:
    v8 = 0;
    goto LABEL_14;
  }

  v9 = [v7 objectForKey:v6];
  if (v9)
  {
    v10 = [v7 objectForKey:v6];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v7 objectForKey:v6];
      v8 = [v11 BOOLValue];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_14:
  return v8;
}

@end