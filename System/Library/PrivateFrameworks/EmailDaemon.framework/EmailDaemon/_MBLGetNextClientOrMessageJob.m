@interface _MBLGetNextClientOrMessageJob
- (id)initForMBLMailbox:(id)a3;
- (void)run;
@end

@implementation _MBLGetNextClientOrMessageJob

- (void)run
{
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_100044EB0;
  v49[3] = &unk_100157940;
  v27 = objc_loadWeakRetained(&self->_messageBodyLoader);
  v50 = v27;
  v31 = objc_retainBlock(v49);
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = (v31[2])();
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_100044F3C;
  v44[3] = &unk_100157968;
  v44[4] = self;
  v44[5] = &v45;
  v30 = objc_retainBlock(v44);
  v29 = +[MailAccount activeAccounts];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = self->_clients;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v40 objects:v53 count:16];
  if (v3)
  {
    v4 = *v41;
LABEL_3:
    v5 = 0;
    while (1)
    {
      if (*v41 != v4)
      {
        objc_enumerationMutation(obj);
      }

      v6 = *(*(&v40 + 1) + 8 * v5);
      if (((v30[2])(v30, v6) & 1) == 0)
      {
        v7 = [v6 message];
        v8 = [v7 account];
        v9 = [v29 containsObject:v8];

        if (v9)
        {
          objc_storeStrong(&self->_nextClient, v6);
        }

        [v27 removeSingleMessageClient:v6];
      }

      *(v46 + 24) = (v31[2])();
      if (self->_nextClient)
      {
        break;
      }

      if (v3 == ++v5)
      {
        v3 = [(NSArray *)obj countByEnumeratingWithState:&v40 objects:v53 count:16];
        if (v3)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if (!self->_nextClient && (v46[3] & 1) == 0)
  {
    v10 = +[NSMutableArray array];
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v11 = self->_messages;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v36 objects:v52 count:16];
    if (v12)
    {
      v13 = *v37;
      while (2)
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v37 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v36 + 1) + 8 * i);
          if (!sub_100044FFC([v10 addObject:v15], v15))
          {
            v16 = [v15 account];
            v17 = [v29 containsObject:v16];

            if (v17)
            {
              objc_storeStrong(&self->_nextMessage, v15);
              goto LABEL_26;
            }
          }
        }

        v12 = [(NSArray *)v11 countByEnumeratingWithState:&v36 objects:v52 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_26:

    v18 = [NSArray arrayWithArray:v10];
    [v27 _removeNewMessages:v18];

    [v10 removeAllObjects];
    p_nextMessage = &self->_nextMessage;
    if (!self->_nextMessage && (v46[3] & 1) == 0)
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v20 = self->_viewingMessages;
      v21 = [(NSArray *)v20 countByEnumeratingWithState:&v32 objects:v51 count:16];
      if (v21)
      {
        v22 = *v33;
        while (2)
        {
          for (j = 0; j != v21; j = j + 1)
          {
            if (*v33 != v22)
            {
              objc_enumerationMutation(v20);
            }

            v24 = *(*(&v32 + 1) + 8 * j);
            [v10 addObject:v24];
            v25 = [v24 account];
            v26 = [v29 containsObject:v25];

            if (v26)
            {
              objc_storeStrong(p_nextMessage, v24);
              goto LABEL_38;
            }
          }

          v21 = [(NSArray *)v20 countByEnumeratingWithState:&v32 objects:v51 count:16];
          if (v21)
          {
            continue;
          }

          break;
        }
      }

LABEL_38:

      [v27 _removeViewingMessages:v10];
    }
  }

  _Block_object_dispose(&v45, 8);
}

- (id)initForMBLMailbox:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _MBLGetNextClientOrMessageJob;
  v5 = [(_MBLGetNextClientOrMessageJob *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_messageBodyLoader, v4);
  }

  return v6;
}

@end