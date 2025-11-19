@interface EMGroupedSenderChange
+ (id)changeForKeyPaths:(id)a3 ofItem:(id)a4;
+ (id)changeFrom:(id)a3 to:(id)a4;
- (BOOL)applyToMessageListItem:(id)a3;
- (EMGroupedSenderChange)initWithCoder:(id)a3;
- (void)addChange:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EMGroupedSenderChange

+ (id)changeFrom:(id)a3 to:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(a1);
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v9 = v6;
    v10 = v7;
    v11 = [v10 unreadCount];
    v12 = [v9 unreadCount];
    v13 = v11 != v12;
    if (v11 != v12)
    {
      v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v11];
      [v8 setUnreadCount:v14];
    }

    v15 = [v10 unseenCount];
    if (v15 != [v9 unseenCount])
    {
      v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v15];
      [v8 setUnseenCount:v16];

      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  v17 = [EMMessageListItemChange changeFrom:v6 to:v7 with:v8 hasChanges:v13];

  return v17;
}

+ (id)changeForKeyPaths:(id)a3 ofItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 containsObject:@"unseenCount"] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v8 = objc_alloc_init(a1);
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v7, "unseenCount")}];
    [v8 setUnseenCount:v9];

    v10 = [v6 mutableCopy];
    [v10 removeObject:@"unseenCount"];

    v6 = v10;
  }

  else
  {
    v8 = 0;
  }

  v16.receiver = a1;
  v16.super_class = &OBJC_METACLASS___EMGroupedSenderChange;
  v11 = objc_msgSendSuper2(&v16, sel_changeForKeyPaths_ofItem_, v6, v7);
  v12 = v11;
  if (v8 && v11)
  {
    [v8 addChange:v11];
  }

  if (v8)
  {
    v13 = v8;
  }

  else
  {
    v13 = v12;
  }

  v14 = v13;

  return v13;
}

- (void)addChange:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = EMGroupedSenderChange;
  [(EMMessageListItemChange *)&v10 addChange:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 unreadCount];

    if (v6)
    {
      v7 = [v5 unreadCount];
      [(EMGroupedSenderChange *)self setUnreadCount:v7];
    }

    v8 = [v5 unseenCount];

    if (v8)
    {
      v9 = [v5 unseenCount];
      [(EMGroupedSenderChange *)self setUnseenCount:v9];
    }
  }
}

- (BOOL)applyToMessageListItem:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = EMGroupedSenderChange;
  v5 = [(EMMessageListItemChange *)&v13 applyToMessageListItem:v4];
  v6 = [(EMGroupedSenderChange *)self unreadCount];
  if (v6)
  {
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(EMGroupedSenderChange *)self unreadCount];
      [v4 setUnreadCount:{objc_msgSend(v8, "unsignedIntegerValue")}];

      v5 = 1;
    }
  }

  v9 = [(EMGroupedSenderChange *)self unreadCount];
  if (v9)
  {
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [(EMGroupedSenderChange *)self unseenCount];
      [v4 setUnseenCount:{objc_msgSend(v11, "unsignedIntegerValue")}];

      v5 = 1;
    }
  }

  return v5;
}

- (EMGroupedSenderChange)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = EMGroupedSenderChange;
  v5 = [(EMMessageListItemChange *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_unreadCount"];
    unreadCount = v5->_unreadCount;
    v5->_unreadCount = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_unseenCount"];
    unseenCount = v5->_unseenCount;
    v5->_unseenCount = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = EMGroupedSenderChange;
  [(EMMessageListItemChange *)&v7 encodeWithCoder:v4];
  v5 = [(EMGroupedSenderChange *)self unreadCount];
  [v4 encodeObject:v5 forKey:@"EFPropertyKey_unreadCount"];

  v6 = [(EMGroupedSenderChange *)self unseenCount];
  [v4 encodeObject:v6 forKey:@"EFPropertyKey_unseenCount"];
}

@end