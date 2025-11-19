@interface _MFMessageCollector
- (BOOL)shouldCancel;
- (_MFMessageCollector)init;
- (void)newMessagesAvailable:(id)a3;
@end

@implementation _MFMessageCollector

- (_MFMessageCollector)init
{
  v7.receiver = self;
  v7.super_class = _MFMessageCollector;
  v2 = [(_MFMessageCollector *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    messages = v2->_messages;
    v2->_messages = v3;

    v5 = v2;
  }

  return v2;
}

- (void)newMessagesAvailable:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (self->_transmogrifier)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          v11 = (*(self->_transmogrifier + 2))(self->_transmogrifier);
          if (v11)
          {
            [(NSMutableArray *)self->_messages addObject:v11, v13];
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  else
  {
    [(NSMutableArray *)self->_messages addObjectsFromArray:v4];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)shouldCancel
{
  monitor = self->_monitor;
  if (!monitor)
  {
    v4 = +[MFActivityMonitor currentMonitor];
    v5 = self->_monitor;
    self->_monitor = v4;

    monitor = self->_monitor;
  }

  return [(MFActivityMonitor *)monitor shouldCancel];
}

@end