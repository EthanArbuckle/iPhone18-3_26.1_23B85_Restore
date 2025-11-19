@interface C2SessionGroup
- (BOOL)isEmpty;
- (BOOL)removeSession:(id)a3;
- (C2SessionGroup)initWithConfigurationName:(id)a3;
- (NSArray)sessions;
- (id)sessionForOptions:(id)a3;
- (void)sessions;
- (void)setSession:(id)a3 forOptions:(id)a4;
@end

@implementation C2SessionGroup

- (NSArray)sessions
{
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (!v4)
  {
    [(C2SessionGroup *)a2 sessions];
  }

  if (self->_pinnedSessionAllowingExpiredDNS)
  {
    [v4 addObject:?];
  }

  if (self->_pinnedSession)
  {
    [v4 addObject:?];
  }

  if (self->_unpinnedSession)
  {
    [v4 addObject:?];
  }

  return v4;
}

- (BOOL)isEmpty
{
  v2 = [(C2SessionGroup *)self sessions];
  v3 = [v2 count] == 0;

  return v3;
}

- (C2SessionGroup)initWithConfigurationName:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v10.receiver = self;
    v10.super_class = C2SessionGroup;
    v6 = [(C2SessionGroup *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_configurationName, a3);
    }

    self = v7;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)sessionForOptions:(id)a3
{
  v4 = a3;
  v5 = self->_pinnedSessionAllowingExpiredDNS;
  if (v5)
  {
    goto LABEL_2;
  }

  if (([v4 allowExpiredDNSBehavior] & 1) == 0)
  {
    v5 = self->_pinnedSession;
    if (v5)
    {
      goto LABEL_2;
    }
  }

  if (([v4 allowExpiredDNSBehavior] & 1) == 0 && (objc_msgSend(v4, "tlsPinning") & 1) == 0)
  {
    v5 = self->_unpinnedSession;
LABEL_2:
    v6 = v5;
    goto LABEL_3;
  }

  v6 = 0;
LABEL_3:

  return v6;
}

- (void)setSession:(id)a3 forOptions:(id)a4
{
  v9 = a3;
  v7 = a4;
  if ([v7 allowExpiredDNSBehavior])
  {
    p_pinnedSessionAllowingExpiredDNS = &self->_pinnedSessionAllowingExpiredDNS;
    if (self->_pinnedSessionAllowingExpiredDNS)
    {
      [C2SessionGroup setSession:forOptions:];
    }
  }

  else if ([v7 tlsPinning])
  {
    if (self->_pinnedSessionAllowingExpiredDNS)
    {
      [C2SessionGroup setSession:forOptions:];
    }

    p_pinnedSessionAllowingExpiredDNS = &self->_pinnedSession;
  }

  else
  {
    p_pinnedSessionAllowingExpiredDNS = &self->_unpinnedSession;
    if (self->_unpinnedSession)
    {
      [C2SessionGroup setSession:forOptions:];
    }
  }

  objc_storeStrong(p_pinnedSessionAllowingExpiredDNS, a3);
}

- (BOOL)removeSession:(id)a3
{
  v4 = a3;
  v5 = v4;
  p_pinnedSessionAllowingExpiredDNS = &self->_pinnedSessionAllowingExpiredDNS;
  pinnedSessionAllowingExpiredDNS = self->_pinnedSessionAllowingExpiredDNS;
  if (pinnedSessionAllowingExpiredDNS == v4)
  {
    goto LABEL_6;
  }

  p_pinnedSessionAllowingExpiredDNS = &self->_pinnedSession;
  pinnedSessionAllowingExpiredDNS = self->_pinnedSession;
  if (pinnedSessionAllowingExpiredDNS == v4)
  {
    goto LABEL_6;
  }

  unpinnedSession = self->_unpinnedSession;
  p_unpinnedSession = &self->_unpinnedSession;
  pinnedSessionAllowingExpiredDNS = unpinnedSession;
  if (unpinnedSession == v4)
  {
    p_pinnedSessionAllowingExpiredDNS = p_unpinnedSession;
LABEL_6:
    *p_pinnedSessionAllowingExpiredDNS = 0;

    v10 = 1;
    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

- (void)setSession:forOptions:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v3 = [MEMORY[0x277CCA890] currentHandler];
  [v3 handleFailureInMethod:v2 object:v1 file:@"C2SessionGroup.m" lineNumber:48 description:{@"_pinnedSession already present for options %@", v0}];
}

- (void)setSession:forOptions:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v3 = [MEMORY[0x277CCA890] currentHandler];
  [v3 handleFailureInMethod:v2 object:v1 file:@"C2SessionGroup.m" lineNumber:45 description:{@"_pinnedSession already present for options %@", v0}];
}

- (void)setSession:forOptions:.cold.3()
{
  OUTLINED_FUNCTION_0();
  v3 = [MEMORY[0x277CCA890] currentHandler];
  [v3 handleFailureInMethod:v2 object:v1 file:@"C2SessionGroup.m" lineNumber:42 description:{@"_pinnedSessionAllowingExpiredDNS already present for options %@", v0}];
}

- (void)sessions
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"C2SessionGroup.m" lineNumber:55 description:@"Failed to alloc sessions array"];
}

@end