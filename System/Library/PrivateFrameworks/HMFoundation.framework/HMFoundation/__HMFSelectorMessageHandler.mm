@interface __HMFSelectorMessageHandler
- (BOOL)invokeWithMessage:(id)message;
- (BOOL)isEqual:(id)equal;
- (SEL)selector;
@end

@implementation __HMFSelectorMessageHandler

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    isEqual = 1;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = __HMFSelectorMessageHandler;
    if ([(__HMFMessageHandler *)&v12 isEqual:equalCopy])
    {
      v5 = equalCopy;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }

      v7 = v6;

      if (v7)
      {
        if (self->_selector)
        {
          selector = self->_selector;
        }

        else
        {
          selector = 0;
        }

        if (v7->_selector)
        {
          v10 = v7->_selector;
        }

        else
        {
          v10 = 0;
        }

        isEqual = sel_isEqual(selector, v10);
      }

      else
      {
        isEqual = 1;
      }
    }

    else
    {
      isEqual = 0;
    }
  }

  return isEqual;
}

- (BOOL)invokeWithMessage:(id)message
{
  messageCopy = message;
  if (!messageCopy)
  {
    _HMFPreconditionFailure(@"message");
  }

  v5 = messageCopy;
  receiver = [(__HMFMessageHandler *)self receiver];
  if (receiver)
  {
    if (self->_selector)
    {
      selector = self->_selector;
    }

    else
    {
      selector = 0;
    }

    v8 = [[HMFActivity alloc] initWithName:@"SelectorMessage Invocation"];
    qualityOfService = [v5 qualityOfService];
    if (qualityOfService == -1)
    {
      v10 = 21;
    }

    else
    {
      v10 = 0;
    }

    if (qualityOfService <= 8)
    {
      v11 = v10;
    }

    else
    {
      v11 = 9;
    }

    if (qualityOfService <= 16)
    {
      v12 = v11;
    }

    else
    {
      v12 = 17;
    }

    if (qualityOfService <= 24)
    {
      v13 = v12;
    }

    else
    {
      v13 = 25;
    }

    if (qualityOfService <= 32)
    {
      v14 = v13;
    }

    else
    {
      v14 = QOS_CLASS_USER_INTERACTIVE;
    }

    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __49____HMFSelectorMessageHandler_invokeWithMessage___block_invoke;
    v23 = &unk_2786E7E50;
    v24 = receiver;
    v27 = selector;
    v25 = v5;
    v15 = v8;
    v26 = v15;
    v16 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v14, 0, &v20);
    v17 = [(__HMFMessageHandler *)self queue:v20];
    v18 = v17;
    if (v17)
    {
      dispatch_async(v17, v16);
    }

    else
    {
      v16[2](v16);
    }

    if (v15)
    {
      [(HMFActivity *)v15 end];
    }
  }

  return receiver != 0;
}

- (SEL)selector
{
  if (self->_selector)
  {
    return self->_selector;
  }

  else
  {
    return 0;
  }
}

@end