@interface IAPGroupedCommandManager
+ (id)sharedManager;
- (BOOL)isGrouping:(void *)grouping;
- (void)applyAndCancelGrouping:(void *)grouping;
- (void)cancelGrouping:(void *)grouping;
- (void)dealloc;
- (void)startGrouping:(void *)grouping;
- (void)videoOutSettingsChanged:(void *)changed;
@end

@implementation IAPGroupedCommandManager

+ (id)sharedManager
{
  result = qword_10012B8A8;
  if (!qword_10012B8A8)
  {
    result = objc_alloc_init(IAPGroupedCommandManager);
    qword_10012B8A8 = result;
  }

  return result;
}

- (void)dealloc
{
  if (((self + 8) & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {

    self->_iapGroupedCommands = 0;
    v3.receiver = self;
    v3.super_class = IAPGroupedCommandManager;
    [(IAPGroupedCommandManager *)&v3 dealloc];
  }
}

- (void)startGrouping:(void *)grouping
{
  if (grouping)
  {
    v5 = [[NSNumber alloc] initWithUnsignedInteger:grouping];
    p_iapGroupedCommands = &self->_iapGroupedCommands;
    if ((p_iapGroupedCommands & 7) != 0)
    {
      __break(0x5516u);
    }

    else
    {
      v8 = v5;
      if ([*p_iapGroupedCommands objectForKey:v5])
      {
        NSLog(@"ERROR - %s:%s - %d grouping already enabled for %hhx", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAPGroupedCommandManager.mm", "[IAPGroupedCommandManager startGrouping:]", 75, grouping);
      }

      else
      {
        if (!*p_iapGroupedCommands)
        {
          *p_iapGroupedCommands = objc_alloc_init(NSMutableDictionary);
        }

        v7 = objc_alloc_init(IAPGroupedCommands);
        [*p_iapGroupedCommands setObject:v7 forKey:v8];
      }
    }
  }
}

- (void)applyAndCancelGrouping:(void *)grouping
{
  if (!grouping)
  {
    return;
  }

  v9 = [[NSNumber alloc] initWithUnsignedInteger:grouping];
  p_iapGroupedCommands = &self->_iapGroupedCommands;
  if ((&self->_iapGroupedCommands & 7) != 0)
  {
    goto LABEL_18;
  }

  v6 = [(NSMutableDictionary *)*p_iapGroupedCommands objectForKey:v9];
  if (v6)
  {
    v7 = v6;
    [v6 setCancelled:1];
    if ([v7 lineOutChanged])
    {
      v8 = sub_100045A94();
      if (!v8 || (v8 & 7) != 0)
      {
        goto LABEL_18;
      }

      (*(*v8 + 176))(v8, grouping, [v7 lineOutEnabled]);
      [v7 setLineOutChanged:0];
    }

    if (![v7 videoOutSettingChanged])
    {
      goto LABEL_11;
    }

    if ((sub_10004B1AC() & 7) == 0)
    {
      sub_10004D334(grouping);
      [v7 setVideoOutSettingChanged:0];
LABEL_11:
      [(NSMutableDictionary *)*p_iapGroupedCommands removeObjectForKey:v9];
      if (![(NSMutableDictionary *)*p_iapGroupedCommands count])
      {

        *p_iapGroupedCommands = 0;
      }

      goto LABEL_15;
    }

LABEL_18:
    __break(0x5516u);
    return;
  }

  NSLog(@"ERROR - %s:%s - %d grouping not enabled for %hhx", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAPGroupedCommandManager.mm", "[IAPGroupedCommandManager applyAndCancelGrouping:]", 110, grouping);
LABEL_15:
}

- (void)cancelGrouping:(void *)grouping
{
  if (grouping)
  {
    v5 = [[NSNumber alloc] initWithUnsignedInteger:grouping];
    p_iapGroupedCommands = &self->_iapGroupedCommands;
    if ((p_iapGroupedCommands & 7) != 0)
    {
      __break(0x5516u);
    }

    else
    {
      v7 = v5;
      if ([(NSMutableDictionary *)*p_iapGroupedCommands objectForKey:v5])
      {
        [(NSMutableDictionary *)*p_iapGroupedCommands removeObjectForKey:v7];
        if (![(NSMutableDictionary *)*p_iapGroupedCommands count])
        {

          *p_iapGroupedCommands = 0;
        }
      }

      else
      {
        NSLog(@"ERROR - %s:%s - %d grouping not enabled for %hhx", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAPGroupedCommandManager.mm", "[IAPGroupedCommandManager cancelGrouping:]", 132, grouping);
      }
    }
  }
}

- (void)videoOutSettingsChanged:(void *)changed
{
  v5 = [[NSNumber alloc] initWithUnsignedInteger:changed];
  if ((&self->_iapGroupedCommands & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v7 = v5;
    v6 = [(NSMutableDictionary *)self->_iapGroupedCommands objectForKey:v5];
    if (v6)
    {
      [v6 setVideoOutSettingChanged:1];
    }

    else
    {
      NSLog(@"ERROR - %s:%s - %d grouping not enabled for %hhx", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAPGroupedCommandManager.mm", "[IAPGroupedCommandManager videoOutSettingsChanged:]", 147, changed);
    }
  }
}

- (BOOL)isGrouping:(void *)grouping
{
  v4 = [[NSNumber alloc] initWithUnsignedInteger:grouping];
  if ((&self->_iapGroupedCommands & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v5 = v4;
    v6 = [(NSMutableDictionary *)self->_iapGroupedCommands objectForKey:v4];
    if (v6)
    {
      v7 = [v6 cancelled] ^ 1;
    }

    else
    {
      LOBYTE(v7) = 0;
    }

    LOBYTE(v4) = v7;
  }

  return v4;
}

@end