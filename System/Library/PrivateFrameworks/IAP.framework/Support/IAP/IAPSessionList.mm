@interface IAPSessionList
- (IAPSessionList)init;
- (id).cxx_construct;
- (id)copySessions;
- (id)copySessionsForClientID:(unsigned int)a3;
- (id)sessionWithProtocolID:(unsigned __int8)a3;
- (id)sessionWithSessionID:(unsigned __int16)a3;
- (void)addSession:(id)a3 withSessionID:(unsigned __int16)a4;
- (void)dealloc;
- (void)removeSessionWithSessionID:(unsigned __int16)a3;
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

- (void)addSession:(id)a3 withSessionID:(unsigned __int16)a4
{
  v7 = a4;
  p_iapSessionMap = &self->_iapSessionMap;
  if ((&self->_iapSessionMap & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    if (&self->_iapSessionMap.__tree_.__end_node_ != sub_100013610(&self->_iapSessionMap, &v7))
    {
      NSLog(@"%s::%s %d - replacing a session (sessionID=%d) in the session list", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAPSessionList.mm", "[IAPSessionList addSession:withSessionID:]", 43, v7);
    }

    v6 = a3;
    *sub_1000130F8(p_iapSessionMap, &v7) = v6;
  }
}

- (void)removeSessionWithSessionID:(unsigned __int16)a3
{
  v7 = a3;
  p_iapSessionMap = &self->_iapSessionMap;
  if ((&self->_iapSessionMap & 7) != 0)
  {
LABEL_8:
    __break(0x5516u);
    return;
  }

  v5 = sub_100013610(&self->_iapSessionMap, &v7);
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

  NSLog(@"%s::%s %d - session (sessionID=%d) was not found in the session list", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAPSessionList.mm", "[IAPSessionList removeSessionWithSessionID:]", 58, v7);
}

- (id)copySessions
{
  v2 = self;
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
      v3 = self;
      v4 = v2[1];
      v6 = v4;
      v5 = (v2 + 2);
      while (v4 != v5)
      {
        if (!v4 || (v4 & 7) != 0)
        {
          goto LABEL_10;
        }

        [v3 addObject:*(v4 + 40)];
        self = sub_100007D44(&v6);
        v4 = v6;
      }
    }

    else
    {
      v3 = 0;
    }

    return [v3 copy];
  }

  return self;
}

- (id)copySessionsForClientID:(unsigned int)a3
{
  v3 = self;
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
      v5 = self;
      v6 = v3[1];
      v8 = v6;
      v7 = (v3 + 2);
      while (v6 != v7)
      {
        if (!v6 || (v6 & 7) != 0)
        {
          goto LABEL_14;
        }

        self = [objc_msgSend(*(v6 + 40) "client")];
        if (self == a3)
        {
          if (!v8 || (v8 & 7) != 0)
          {
            goto LABEL_14;
          }

          [v5 addObject:*(v8 + 40)];
        }

        self = sub_100007D44(&v8);
        v6 = v8;
      }
    }

    else
    {
      v5 = 0;
    }

    return [v5 copy];
  }

  return self;
}

- (id)sessionWithSessionID:(unsigned __int16)a3
{
  v5 = a3;
  result = &self->_iapSessionMap;
  if ((result & 7) != 0)
  {
LABEL_8:
    __break(0x5516u);
    return result;
  }

  result = sub_100013610(result, &v5);
  if (&self->_iapSessionMap.__tree_.__end_node_ != result)
  {
    if (result && (result & 7) == 0)
    {
      return *(result + 5);
    }

    goto LABEL_8;
  }

  sub_1000DDE90(3u, @"%s::%s %d - session (sessionID=%d) was not found in the session list", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAPSessionList.mm", "[IAPSessionList sessionWithSessionID:]", 106, v5);
  return 0;
}

- (id)sessionWithProtocolID:(unsigned __int8)a3
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
    v5 = a3;
    v6 = 0;
    while (v3 && (v3 & 7) == 0)
    {
      self = [v3[5] protocolID];
      if (self == v5)
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