@interface _SUUIVideoPreviewNotificationObserver
- (_SUUIVideoPreviewNotificationObserver)initWithObservers:(id)a3;
- (void)dealloc;
@end

@implementation _SUUIVideoPreviewNotificationObserver

- (_SUUIVideoPreviewNotificationObserver)initWithObservers:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _SUUIVideoPreviewNotificationObserver;
  v5 = [(_SUUIVideoPreviewNotificationObserver *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    observers = v5->_observers;
    v5->_observers = v6;
  }

  return v5;
}

- (void)dealloc
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_observers;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 removeObserver:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9.receiver = self;
  v9.super_class = _SUUIVideoPreviewNotificationObserver;
  [(_SUUIVideoPreviewNotificationObserver *)&v9 dealloc];
}

@end