@interface IAPSessionList
- (IAPSessionList)init;
- (id).cxx_construct;
- (id)copySessions;
- (id)copySessionsForClientID:(unsigned int)d;
- (id)sessionWithProtocolID:(unsigned __int8)d;
- (id)sessionWithSessionID:(unsigned __int16)d;
- (void)addSession:(id)session withSessionID:(unsigned __int16)d;
- (void)dealloc;
- (void)removeSessionWithSessionID:(unsigned __int16)d;
@end

@implementation IAPSessionList

- (IAPSessionList)init
{
  v4.receiver = self;
  v4.super_class = IAPSessionList;
  v2 = [(IAPSessionList *)&v4 init];
  if (v2)
  {
    sub_1000DDE90(3u, @"%s:%s", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAPSessionList.mm", "[IAPSessionList init]");
  }

  return v2;
}

- (void)dealloc
{
  sub_1000DDE90(3u, @"%s:%s", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAPSessionList.mm", "[IAPSessionList dealloc]");
  v5 = 0xAAAAAAAAAAAAAAAALL;
  if ((&self->_iapSessionMap & 7) != 0)
  {
LABEL_8:
    __break(0x5516u);
  }

  else
  {
    begin_node = self->_iapSessionMap.__tree_.__begin_node_;
    v5 = begin_node;
    while (begin_node != &self->_iapSessionMap.__tree_.__end_node_)
    {
      if (!begin_node || (begin_node & 7) != 0)
      {
        goto LABEL_8;
      }

      sub_100007D44(&v5);
      begin_node = v5;
    }

    sub_100007DB0(&self->_iapSessionMap);
    v4.receiver = self;
    v4.super_class = IAPSessionList;
    [(IAPSessionList *)&v4 dealloc];
  }
}

- (void)addSession:(id)session withSessionID:(unsigned __int16)d
{
  dCopy = d;
  p_iapSessionMap = &self->_iapSessionMap;
  if ((&self->_iapSessionMap & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    if (&self->_iapSessionMap.__tree_.__end_node_ != sub_100013610(&self->_iapSessionMap, &dCopy))
    {
      NSLog(@"%s::%s %d - replacing a session (sessionID=%d) in the session list", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAPSessionList.mm", "[IAPSessionList addSession:withSessionID:]", 43, dCopy);
    }

    sessionCopy = session;
    *sub_1000130F8(p_iapSessionMap, &dCopy) = sessionCopy;
  }
}

- (void)removeSessionWithSessionID:(unsigned __int16)d
{
  dCopy = d;
  p_iapSessionMap = &self->_iapSessionMap;
  if ((&self->_iapSessionMap & 7) != 0)
  {
LABEL_8:
    __break(0x5516u);
    return;
  }

  v5 = sub_100013610(&self->_iapSessionMap, &dCopy);
  if (&self->_iapSessionMap.__tree_.__end_node_ != v5)
  {
    v6 = v5;
    if (v5 && (v5 & 7) == 0)
    {

      sub_1000083F0(p_iapSessionMap, v6);
      return;
    }

    goto LABEL_8;
  }

  NSLog(@"%s::%s %d - session (sessionID=%d) was not found in the session list", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAPSessionList.mm", "[IAPSessionList removeSessionWithSessionID:]", 58, dCopy);
}

- (id)copySessions
{
  selfCopy = self;
  if (((self + 8) & 7) != 0)
  {
LABEL_10:
    __break(0x5516u);
  }

  else
  {
    if (*(self + 6))
    {
      self = [NSMutableArray arrayWithCapacity:?];
      selfCopy2 = self;
      v4 = selfCopy[1];
      v6 = v4;
      v5 = (selfCopy + 2);
      while (v4 != v5)
      {
        if (!v4 || (v4 & 7) != 0)
        {
          goto LABEL_10;
        }

        [selfCopy2 addObject:*(v4 + 40)];
        self = sub_100007D44(&v6);
        v4 = v6;
      }
    }

    else
    {
      selfCopy2 = 0;
    }

    return [selfCopy2 copy];
  }

  return self;
}

- (id)copySessionsForClientID:(unsigned int)d
{
  selfCopy = self;
  if (((self + 8) & 7) != 0)
  {
LABEL_14:
    __break(0x5516u);
  }

  else
  {
    if (*(self + 6))
    {
      self = [NSMutableArray arrayWithCapacity:?];
      selfCopy2 = self;
      v6 = selfCopy[1];
      v8 = v6;
      v7 = (selfCopy + 2);
      while (v6 != v7)
      {
        if (!v6 || (v6 & 7) != 0)
        {
          goto LABEL_14;
        }

        self = [objc_msgSend(*(v6 + 40) "client")];
        if (self == d)
        {
          if (!v8 || (v8 & 7) != 0)
          {
            goto LABEL_14;
          }

          [selfCopy2 addObject:*(v8 + 40)];
        }

        self = sub_100007D44(&v8);
        v6 = v8;
      }
    }

    else
    {
      selfCopy2 = 0;
    }

    return [selfCopy2 copy];
  }

  return self;
}

- (id)sessionWithSessionID:(unsigned __int16)d
{
  dCopy = d;
  result = &self->_iapSessionMap;
  if ((result & 7) != 0)
  {
LABEL_8:
    __break(0x5516u);
    return result;
  }

  result = sub_100013610(result, &dCopy);
  if (&self->_iapSessionMap.__tree_.__end_node_ != result)
  {
    if (result && (result & 7) == 0)
    {
      return *(result + 5);
    }

    goto LABEL_8;
  }

  sub_1000DDE90(3u, @"%s::%s %d - session (sessionID=%d) was not found in the session list", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAPSessionList.mm", "[IAPSessionList sessionWithSessionID:]", 106, dCopy);
  return 0;
}

- (id)sessionWithProtocolID:(unsigned __int8)d
{
  v7 = 0xAAAAAAAAAAAAAAAALL;
  if (((self + 8) & 7) != 0)
  {
LABEL_14:
    __break(0x5516u);
    return self;
  }

  v3 = *(self + 1);
  v7 = v3;
  v4 = self + 16;
  if (v3 != (self + 16))
  {
    dCopy = d;
    v6 = 0;
    while (v3 && (v3 & 7) == 0)
    {
      self = [v3[5] protocolID];
      if (self == dCopy)
      {
        if (!v7 || (v7 & 7) != 0)
        {
          goto LABEL_14;
        }

        v6 = *(v7 + 40);
      }

      self = sub_100007D44(&v7);
      v3 = v7;
      if (v7 == v4)
      {
        return v6;
      }
    }

    goto LABEL_14;
  }

  return 0;
}

- (id).cxx_construct
{
  if (((self + 8) & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    *(self + 3) = 0;
    *(self + 2) = 0;
    *(self + 1) = self + 16;
  }

  return self;
}

@end