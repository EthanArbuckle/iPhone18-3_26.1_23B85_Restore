@interface NSXPCConnection
- (BOOL)hasCategory:(id)category forEntitlement:(id)entitlement;
- (BOOL)hasEntitlement:(id)entitlement;
@end

@implementation NSXPCConnection

- (BOOL)hasEntitlement:(id)entitlement
{
  v3 = [(NSXPCConnection *)self valueForEntitlement:entitlement];
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

- (BOOL)hasCategory:(id)category forEntitlement:(id)entitlement
{
  categoryCopy = category;
  v7 = [(NSXPCConnection *)self valueForEntitlement:entitlement];
  if (!v7)
  {
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v7 containsObject:categoryCopy])
  {
    bOOLValue = 1;
    goto LABEL_14;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_9:
    bOOLValue = 0;
    goto LABEL_14;
  }

  v9 = [v7 objectForKey:categoryCopy];
  if (v9)
  {
    v10 = [v7 objectForKey:categoryCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v7 objectForKey:categoryCopy];
      bOOLValue = [v11 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }
  }

  else
  {
    bOOLValue = 0;
  }

LABEL_14:
  return bOOLValue;
}

@end