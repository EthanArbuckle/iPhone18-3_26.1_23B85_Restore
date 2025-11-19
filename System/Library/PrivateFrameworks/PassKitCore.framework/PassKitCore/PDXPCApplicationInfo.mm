@interface PDXPCApplicationInfo
- (PDXPCApplicationInfo)initWithPID:(int)a3;
@end

@implementation PDXPCApplicationInfo

- (PDXPCApplicationInfo)initWithPID:(int)a3
{
  v4 = [MEMORY[0x1E69C75E0] identifierWithPid:*&a3];
  if (v4)
  {
    v5 = [MEMORY[0x1E69C75D0] handleForIdentifier:v4 error:0];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 currentState];
      if (v7)
      {
        v22.receiver = self;
        v22.super_class = PDXPCApplicationInfo;
        v8 = [(PDXPCApplicationInfo *)&v22 init];
        if (v8)
        {
          v8->_running = [v7 taskState] == 4;
          v9 = [v7 endowmentNamespaces];
          v8->_visible = [v9 containsObject:*MEMORY[0x1E699F9D0]];

          v10 = [v6 identity];
          v11 = [v10 embeddedApplicationIdentifier];
          v12 = v11;
          if (v11)
          {
            v13 = v11;
            displayID = v8->_displayID;
            v8->_displayID = v13;
          }

          else
          {
            v16 = [v10 xpcServiceIdentifier];
            displayID = v16;
            if (v16)
            {
              v17 = v16;
              v18 = v8->_displayID;
              v8->_displayID = v17;
            }

            else
            {
              v18 = [v6 bundle];
              v19 = [v18 identifier];
              v20 = v8->_displayID;
              v8->_displayID = v19;
            }
          }
        }

        self = v8;
        v15 = self;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end