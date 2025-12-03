@interface PDXPCApplicationInfo
- (PDXPCApplicationInfo)initWithPID:(int)d;
@end

@implementation PDXPCApplicationInfo

- (PDXPCApplicationInfo)initWithPID:(int)d
{
  v4 = [MEMORY[0x1E69C75E0] identifierWithPid:*&d];
  if (v4)
  {
    v5 = [MEMORY[0x1E69C75D0] handleForIdentifier:v4 error:0];
    v6 = v5;
    if (v5)
    {
      currentState = [v5 currentState];
      if (currentState)
      {
        v22.receiver = self;
        v22.super_class = PDXPCApplicationInfo;
        v8 = [(PDXPCApplicationInfo *)&v22 init];
        if (v8)
        {
          v8->_running = [currentState taskState] == 4;
          endowmentNamespaces = [currentState endowmentNamespaces];
          v8->_visible = [endowmentNamespaces containsObject:*MEMORY[0x1E699F9D0]];

          identity = [v6 identity];
          embeddedApplicationIdentifier = [identity embeddedApplicationIdentifier];
          v12 = embeddedApplicationIdentifier;
          if (embeddedApplicationIdentifier)
          {
            v13 = embeddedApplicationIdentifier;
            displayID = v8->_displayID;
            v8->_displayID = v13;
          }

          else
          {
            xpcServiceIdentifier = [identity xpcServiceIdentifier];
            displayID = xpcServiceIdentifier;
            if (xpcServiceIdentifier)
            {
              v17 = xpcServiceIdentifier;
              bundle = v8->_displayID;
              v8->_displayID = v17;
            }

            else
            {
              bundle = [v6 bundle];
              identifier = [bundle identifier];
              v20 = v8->_displayID;
              v8->_displayID = identifier;
            }
          }
        }

        self = v8;
        selfCopy = self;
      }

      else
      {
        selfCopy = 0;
      }
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end