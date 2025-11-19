@interface ASDraftEmailAction
- (ASDraftEmailAction)initWithItemChangeType:(unint64_t)a3 changedItem:(id)a4 send:(BOOL)a5;
- (void)appendApplicationDataForTask:(id)a3 toWBXMLData:(id)a4;
@end

@implementation ASDraftEmailAction

- (ASDraftEmailAction)initWithItemChangeType:(unint64_t)a3 changedItem:(id)a4 send:(BOOL)a5
{
  v7.receiver = self;
  v7.super_class = ASDraftEmailAction;
  result = [(ASDraftEmailAction *)&v7 initWithItemChangeType:a3 changedItem:a4 serverId:0];
  if (result)
  {
    result->_send = a5;
  }

  return result;
}

- (void)appendApplicationDataForTask:(id)a3 toWBXMLData:(id)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [(ASDraftEmailAction *)self changedItem];
  [v5 switchToCodePage:2];
  if ([v6 bodyType] != 4)
  {
    v7 = MEMORY[0x277D24F40];
    v8 = [v6 to];
    v9 = [v7 encodedDataForAddressList:v8 splittingAtLength:0 firstLineBuffer:0];

    [v5 appendTag:22 withStringContentAsData:v9];
    v10 = MEMORY[0x277D24F40];
    v11 = [v6 cc];
    v12 = [v10 encodedDataForAddressList:v11 splittingAtLength:0 firstLineBuffer:0];

    [v5 appendTag:23 withStringContentAsData:v12];
    [v5 switchToCodePage:22];
    v13 = MEMORY[0x277D24F40];
    v14 = [v6 bcc];
    v15 = [v13 encodedDataForAddressList:v14 splittingAtLength:0 firstLineBuffer:0];

    [v5 appendTag:22 withStringContentAsData:v15];
    [v5 switchToCodePage:2];
    v16 = [v6 subject];
    [v5 appendTag:20 withStringContent:v16];

    [v5 appendTag:18 withIntContent:{objc_msgSend(v6, "importance")}];
    [v5 appendTag:21 withIntContent:{objc_msgSend(v6, "read")}];
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v17 = [v6 replyTo];
    v18 = [v17 countByEnumeratingWithState:&v43 objects:v48 count:16];
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
            objc_enumerationMutation(v17);
          }

          [v5 appendTag:25 withStringContent:*(*(&v43 + 1) + 8 * i)];
        }

        v19 = [v17 countByEnumeratingWithState:&v43 objects:v48 count:16];
      }

      while (v19);
    }
  }

  [v5 switchToCodePage:17];
  [v5 openTag:10];
  [v5 appendTag:6 withIntContent:{objc_msgSend(v6, "bodyType")}];
  v22 = [v6 body];
  [v5 appendTag:11 withStringContent:v22];

  [v5 closeTag:10];
  v23 = [v6 attachments];
  v24 = [v23 count];

  if (v24)
  {
    [v5 openTag:14];
    [v5 switchToCodePage:0];
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v25 = [v6 attachments];
    v26 = [v25 countByEnumeratingWithState:&v39 objects:v47 count:16];
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
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v39 + 1) + 8 * j);
        v31 = [v30 changeType];
        if (v31 == 2)
        {
          v32 = 9;
          [v5 openTag:9];
          [v5 switchToCodePage:17];
          v36 = [v30 name];
          v37 = [v36 stringByAddingPercentEscapesUsingEncoding:4];
          [v5 appendTag:17 withStringContent:v37];
        }

        else
        {
          if (v31)
          {
            continue;
          }

          v32 = 7;
          [v5 openTag:7];
          v33 = [v30 clientId];
          [v5 appendTag:12 withStringContent:v33];

          [v5 switchToCodePage:17];
          v34 = [v30 contentType];
          [v5 appendTag:23 withStringContent:v34];

          v35 = [v30 data];
          [v5 appendTag:11 withStringContent:v35];

          [v5 appendTag:21 withIntContent:{objc_msgSend(v30, "isInline")}];
          [v5 appendTag:18 withIntContent:1];
        }

        [v5 switchToCodePage:0];
        [v5 closeTag:v32];
      }

      v27 = [v25 countByEnumeratingWithState:&v39 objects:v47 count:16];
      if (!v27)
      {
LABEL_23:

        [v5 switchToCodePage:17];
        [v5 closeTag:14];
        break;
      }
    }
  }

  [v5 switchToCodePage:22];
  if ([(ASDraftEmailAction *)self send]&& [(ASDraftEmailAction *)self itemChangeType]== 1)
  {
    [v5 appendEmptyTag:23];
  }

  v38 = *MEMORY[0x277D85DE8];
}

@end