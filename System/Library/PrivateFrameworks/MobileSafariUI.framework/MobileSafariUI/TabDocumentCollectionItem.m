@interface TabDocumentCollectionItem
+ (id)placeholderItem;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (TabDocumentCollectionItem)init;
- (void)setIcon:(id)a3;
- (void)setMediaStateIcon:(unint64_t)a3;
- (void)setTitle:(id)a3;
@end

@implementation TabDocumentCollectionItem

- (TabDocumentCollectionItem)init
{
  v7.receiver = self;
  v7.super_class = TabDocumentCollectionItem;
  v2 = [(TabDocumentCollectionItem *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = v3;

    v5 = v2;
  }

  return v2;
}

+ (id)placeholderItem
{
  v2 = objc_alloc_init(a1);
  v3 = [MEMORY[0x277CCAD78] UUID];
  [v2 setUUID:v3];

  [v2 setIsPlaceholder:1];

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(TabDocumentCollectionItem *)v4 UUID];
      v6 = WBSIsEqual();
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)setIcon:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((WBSIsEqual() & 1) == 0)
  {
    objc_storeStrong(&self->_icon, a3);
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = self->_observers;
    v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v12 + 1) + 8 * v10);
          if (objc_opt_respondsToSelector())
          {
            [v11 tabCollectionItemDidChangeIcon:{self, v12}];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

- (void)setMediaStateIcon:(unint64_t)a3
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_mediaStateIcon != a3)
  {
    self->_mediaStateIcon = a3;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = self->_observers;
    v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

          v9 = *(*(&v10 + 1) + 8 * v8);
          if (objc_opt_respondsToSelector())
          {
            [v9 tabCollectionItemDidChangeMediaStateIcon:{self, v10}];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [(NSHashTable *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

- (void)setTitle:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ((WBSIsEqual() & 1) == 0)
  {
    v5 = [v4 copy];
    title = self->_title;
    self->_title = v5;

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = self->_observers;
    v8 = [(NSHashTable *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v13 + 1) + 8 * v11);
          if (objc_opt_respondsToSelector())
          {
            [v12 tabCollectionItemDidChangeTitle:{self, v13}];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [(NSHashTable *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p: UUID = %@ title = %@>", v5, self, self->_UUID, self->_title];;

  return v6;
}

@end