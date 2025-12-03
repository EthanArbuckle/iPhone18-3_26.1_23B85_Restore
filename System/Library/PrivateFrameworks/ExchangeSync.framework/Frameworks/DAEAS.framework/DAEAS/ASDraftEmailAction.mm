@interface ASDraftEmailAction
- (ASDraftEmailAction)initWithItemChangeType:(unint64_t)type changedItem:(id)item send:(BOOL)send;
- (void)appendApplicationDataForTask:(id)task toWBXMLData:(id)data;
@end

@implementation ASDraftEmailAction

- (ASDraftEmailAction)initWithItemChangeType:(unint64_t)type changedItem:(id)item send:(BOOL)send
{
  v7.receiver = self;
  v7.super_class = ASDraftEmailAction;
  result = [(ASDraftEmailAction *)&v7 initWithItemChangeType:type changedItem:item serverId:0];
  if (result)
  {
    result->_send = send;
  }

  return result;
}

- (void)appendApplicationDataForTask:(id)task toWBXMLData:(id)data
{
  v49 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  changedItem = [(ASDraftEmailAction *)self changedItem];
  [dataCopy switchToCodePage:2];
  if ([changedItem bodyType] != 4)
  {
    v7 = MEMORY[0x277D24F40];
    v8 = [changedItem to];
    v9 = [v7 encodedDataForAddressList:v8 splittingAtLength:0 firstLineBuffer:0];

    [dataCopy appendTag:22 withStringContentAsData:v9];
    v10 = MEMORY[0x277D24F40];
    v11 = [changedItem cc];
    v12 = [v10 encodedDataForAddressList:v11 splittingAtLength:0 firstLineBuffer:0];

    [dataCopy appendTag:23 withStringContentAsData:v12];
    [dataCopy switchToCodePage:22];
    v13 = MEMORY[0x277D24F40];
    v14 = [changedItem bcc];
    v15 = [v13 encodedDataForAddressList:v14 splittingAtLength:0 firstLineBuffer:0];

    [dataCopy appendTag:22 withStringContentAsData:v15];
    [dataCopy switchToCodePage:2];
    subject = [changedItem subject];
    [dataCopy appendTag:20 withStringContent:subject];

    [dataCopy appendTag:18 withIntContent:{objc_msgSend(changedItem, "importance")}];
    [dataCopy appendTag:21 withIntContent:{objc_msgSend(changedItem, "read")}];
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    replyTo = [changedItem replyTo];
    v18 = [replyTo countByEnumeratingWithState:&v43 objects:v48 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v44;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v44 != v20)
          {
            objc_enumerationMutation(replyTo);
          }

          [dataCopy appendTag:25 withStringContent:*(*(&v43 + 1) + 8 * i)];
        }

        v19 = [replyTo countByEnumeratingWithState:&v43 objects:v48 count:16];
      }

      while (v19);
    }
  }

  [dataCopy switchToCodePage:17];
  [dataCopy openTag:10];
  [dataCopy appendTag:6 withIntContent:{objc_msgSend(changedItem, "bodyType")}];
  body = [changedItem body];
  [dataCopy appendTag:11 withStringContent:body];

  [dataCopy closeTag:10];
  attachments = [changedItem attachments];
  v24 = [attachments count];

  if (v24)
  {
    [dataCopy openTag:14];
    [dataCopy switchToCodePage:0];
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    attachments2 = [changedItem attachments];
    v26 = [attachments2 countByEnumeratingWithState:&v39 objects:v47 count:16];
    if (!v26)
    {
      goto LABEL_23;
    }

    v27 = v26;
    v28 = *v40;
    while (1)
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v40 != v28)
        {
          objc_enumerationMutation(attachments2);
        }

        v30 = *(*(&v39 + 1) + 8 * j);
        changeType = [v30 changeType];
        if (changeType == 2)
        {
          v32 = 9;
          [dataCopy openTag:9];
          [dataCopy switchToCodePage:17];
          name = [v30 name];
          v37 = [name stringByAddingPercentEscapesUsingEncoding:4];
          [dataCopy appendTag:17 withStringContent:v37];
        }

        else
        {
          if (changeType)
          {
            continue;
          }

          v32 = 7;
          [dataCopy openTag:7];
          clientId = [v30 clientId];
          [dataCopy appendTag:12 withStringContent:clientId];

          [dataCopy switchToCodePage:17];
          contentType = [v30 contentType];
          [dataCopy appendTag:23 withStringContent:contentType];

          data = [v30 data];
          [dataCopy appendTag:11 withStringContent:data];

          [dataCopy appendTag:21 withIntContent:{objc_msgSend(v30, "isInline")}];
          [dataCopy appendTag:18 withIntContent:1];
        }

        [dataCopy switchToCodePage:0];
        [dataCopy closeTag:v32];
      }

      v27 = [attachments2 countByEnumeratingWithState:&v39 objects:v47 count:16];
      if (!v27)
      {
LABEL_23:

        [dataCopy switchToCodePage:17];
        [dataCopy closeTag:14];
        break;
      }
    }
  }

  [dataCopy switchToCodePage:22];
  if ([(ASDraftEmailAction *)self send]&& [(ASDraftEmailAction *)self itemChangeType]== 1)
  {
    [dataCopy appendEmptyTag:23];
  }

  v38 = *MEMORY[0x277D85DE8];
}

@end