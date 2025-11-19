@interface IDSAccount
+ (id)mr_activeGroupSessionAccount;
+ (id)mr_localGroupSessionHandle;
@end

@implementation IDSAccount

+ (id)mr_activeGroupSessionAccount
{
  v2 = +[IDSService mr_sharedGroupSessionService];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [v2 accounts];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        if ([v7 accountType] == 1)
        {
          if ([v7 isActive])
          {
            v8 = [v7 accountRegisteredURIs];
            v9 = [v8 count];

            if (v9)
            {
              v4 = v7;
              goto LABEL_13;
            }
          }
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v4;
}

+ (id)mr_localGroupSessionHandle
{
  v2 = +[IDSAccount mr_activeGroupSessionAccount];
  v3 = [v2 loginID];

  if (v3)
  {
    v4 = IDSCopyIDForEmailAddress();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end