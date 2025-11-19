@interface MediaLibraryCache
- (MediaLibraryCache)init;
- (id)collectionsForProperty:(id)a3;
- (id)collectionsForPropertyNoQ:(id)a3;
- (id)description;
- (id)globalItemCountForProperty:(id)a3;
- (id)globalItemCountForPropertyNoQ:(id)a3;
- (id)itemCountForProperty:(id)a3;
- (id)itemCountForPropertyNoQ:(id)a3;
- (id)itemNamesForRange:(_NSRange)a3 forProperty:(id)a4;
- (id)itemNamesForRangeNoQ:(_NSRange)a3 forProperty:(id)a4;
- (void)dealloc;
- (void)invalidateMediaItem:(id)a3;
- (void)performOnQueue:(id)a3;
- (void)reset;
- (void)setCollections:(id)a3 forProperty:(id)a4;
- (void)setCollectionsNoQ:(id)a3 forProperty:(id)a4;
- (void)setGlobalItemCount:(unsigned int)a3 ForProperty:(id)a4;
- (void)setItemCount:(unsigned int)a3 forProperty:(id)a4;
- (void)setItemNames:(id)a3 forRange:(_NSRange)a4 forProperty:(id)a5;
- (void)setItemNamesNoQ:(id)a3 forRange:(_NSRange)a4 forProperty:(id)a5;
@end

@implementation MediaLibraryCache

- (MediaLibraryCache)init
{
  v4.receiver = self;
  v4.super_class = MediaLibraryCache;
  result = [(MediaLibraryCache *)&v4 init];
  v3 = result;
  if (!result)
  {
    return v3;
  }

  if (((result + 8) & 7) == 0)
  {
    result->_itemCaches = 0;
    result = dispatch_queue_create("com.apple.iapd.mediaLibraryCacheQ", 0);
    if ((&v3->_mediaLibraryCacheQ & 7) == 0)
    {
      v3->_mediaLibraryCacheQ = result;
      return v3;
    }
  }

  __break(0x5516u);
  return result;
}

- (void)dealloc
{
  if (((self + 8) & 7) != 0 || (self->_itemCaches, self->_itemCaches = 0, p_mediaLibraryCacheQ = &self->_mediaLibraryCacheQ, (&self->_mediaLibraryCacheQ & 7) != 0))
  {
    __break(0x5516u);
  }

  else if (*p_mediaLibraryCacheQ)
  {
    dispatch_release(*p_mediaLibraryCacheQ);
    v4.receiver = self;
    v4.super_class = MediaLibraryCache;
    [(MediaLibraryCache *)&v4 dealloc];
    return;
  }

  __break(0x5510u);
}

- (id)description
{
  if (((self + 8) & 7) == 0)
  {
    return [NSString stringWithFormat:@"<MediaLibraryCache %hhx> _itemCaches=%@", self, *(self + 1), v2, v3];
  }

  __break(0x5516u);
  return self;
}

- (void)reset
{
  if ((&self->_mediaLibraryCacheQ & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    mediaLibraryCacheQ = self->_mediaLibraryCacheQ;
    if (mediaLibraryCacheQ)
    {
      block[5] = v2;
      block[6] = v3;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100037598;
      block[3] = &unk_100111C88;
      block[4] = self;
      dispatch_sync(mediaLibraryCacheQ, block);
      return;
    }
  }

  __break(0x5510u);
}

- (void)setGlobalItemCount:(unsigned int)a3 ForProperty:(id)a4
{
  if ((&self->_mediaLibraryCacheQ & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    mediaLibraryCacheQ = self->_mediaLibraryCacheQ;
    if (mediaLibraryCacheQ)
    {
      v9 = v4;
      v10 = v5;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100037754;
      block[3] = &unk_100114490;
      v8 = a3;
      block[4] = self;
      block[5] = a4;
      dispatch_sync(mediaLibraryCacheQ, block);
      return;
    }
  }

  __break(0x5510u);
}

- (id)globalItemCountForProperty:(id)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_100037858;
  v10 = sub_100037868;
  v11 = 0xAAAAAAAAAAAAAAAALL;
  if (((self + 16) & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v3 = *(self + 2);
    if (v3)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100037874;
      block[3] = &unk_1001144B8;
      block[5] = a3;
      block[6] = &v6;
      block[4] = self;
      dispatch_sync(v3, block);
      v4 = v7[5];
      _Block_object_dispose(&v6, 8);
      return v4;
    }
  }

  __break(0x5510u);
  return self;
}

- (id)globalItemCountForPropertyNoQ:(id)a3
{
  v3 = sub_100037904(a3, &self->_itemCaches);

  return [v3 globalCount];
}

- (void)setItemCount:(unsigned int)a3 forProperty:(id)a4
{
  if ((&self->_mediaLibraryCacheQ & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    mediaLibraryCacheQ = self->_mediaLibraryCacheQ;
    if (mediaLibraryCacheQ)
    {
      v9 = v4;
      v10 = v5;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100037A58;
      block[3] = &unk_100114490;
      v8 = a3;
      block[4] = self;
      block[5] = a4;
      dispatch_sync(mediaLibraryCacheQ, block);
      return;
    }
  }

  __break(0x5510u);
}

- (void)setItemNames:(id)a3 forRange:(_NSRange)a4 forProperty:(id)a5
{
  p_mediaLibraryCacheQ = &self->_mediaLibraryCacheQ;
  if ((&self->_mediaLibraryCacheQ & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v9 = *p_mediaLibraryCacheQ;
    if (*p_mediaLibraryCacheQ)
    {
      v12 = v5;
      v13 = v6;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100037AFC;
      block[3] = &unk_1001144E0;
      block[4] = self;
      block[5] = a3;
      v11 = a4;
      block[6] = a5;
      dispatch_sync(v9, block);
      return;
    }
  }

  __break(0x5510u);
}

- (void)setItemNamesNoQ:(id)a3 forRange:(_NSRange)a4 forProperty:(id)a5
{
  length = a4.length;
  location = a4.location;
  v8 = sub_100037904(a5, &self->_itemCaches);

  [v8 setItemNames:a3 forRange:{location, length}];
}

- (id)itemCountForProperty:(id)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_100037858;
  v10 = sub_100037868;
  v11 = 0xAAAAAAAAAAAAAAAALL;
  if (((self + 16) & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v3 = *(self + 2);
    if (v3)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100037CB4;
      block[3] = &unk_1001144B8;
      block[5] = a3;
      block[6] = &v6;
      block[4] = self;
      dispatch_sync(v3, block);
      v4 = v7[5];
      _Block_object_dispose(&v6, 8);
      return v4;
    }
  }

  __break(0x5510u);
  return self;
}

- (id)itemNamesForRange:(_NSRange)a3 forProperty:(id)a4
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = sub_100037858;
  v12 = sub_100037868;
  v13 = 0;
  if (((self + 16) & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v4 = *(self + 2);
    if (v4)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100037DE0;
      block[3] = &unk_100114508;
      block[6] = &v8;
      v7 = a3;
      block[4] = self;
      block[5] = a4;
      dispatch_sync(v4, block);
      v5 = v9[5];
      _Block_object_dispose(&v8, 8);
      return v5;
    }
  }

  __break(0x5510u);
  return self;
}

- (id)itemCountForPropertyNoQ:(id)a3
{
  if ((&self->_itemCaches & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    self = [(NSMutableDictionary *)self->_itemCaches objectForKey:a3, v3];
  }

  return [(MediaLibraryCache *)self itemCount];
}

- (id)itemNamesForRangeNoQ:(_NSRange)a3 forProperty:(id)a4
{
  if ((&self->_itemCaches & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    length = a3.length;
    location = a3.location;
    self = [(NSMutableDictionary *)self->_itemCaches objectForKey:a4];
    a3.location = location;
    a3.length = length;
  }

  return [(MediaLibraryCache *)self itemNamesForRange:a3.location, a3.length];
}

- (void)setCollections:(id)a3 forProperty:(id)a4
{
  if ((&self->_mediaLibraryCacheQ & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    mediaLibraryCacheQ = self->_mediaLibraryCacheQ;
    if (mediaLibraryCacheQ)
    {
      block[7] = v4;
      block[8] = v5;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100037F40;
      block[3] = &unk_100114530;
      block[4] = self;
      block[5] = a3;
      block[6] = a4;
      dispatch_sync(mediaLibraryCacheQ, block);
      return;
    }
  }

  __break(0x5510u);
}

- (void)setCollectionsNoQ:(id)a3 forProperty:(id)a4
{
  v5 = sub_100037904(a4, &self->_itemCaches);

  [v5 setCollections:a3];
}

- (id)collectionsForProperty:(id)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_100037858;
  v10 = sub_100037868;
  v11 = 0;
  if (((self + 16) & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v3 = *(self + 2);
    if (v3)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100038080;
      block[3] = &unk_1001144B8;
      block[5] = a3;
      block[6] = &v6;
      block[4] = self;
      dispatch_sync(v3, block);
      v4 = v7[5];
      _Block_object_dispose(&v6, 8);
      return v4;
    }
  }

  __break(0x5510u);
  return self;
}

- (id)collectionsForPropertyNoQ:(id)a3
{
  if (((self + 8) & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v5 = [*(self + 1) objectForKey:{a3, v3}];

    return [v5 collections];
  }

  return self;
}

- (void)invalidateMediaItem:(id)a3
{
  if ((&self->_mediaLibraryCacheQ & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    mediaLibraryCacheQ = self->_mediaLibraryCacheQ;
    if (mediaLibraryCacheQ)
    {
      v6[6] = v3;
      v6[7] = v4;
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_100038180;
      v6[3] = &unk_100114558;
      v6[4] = a3;
      v6[5] = self;
      dispatch_sync(mediaLibraryCacheQ, v6);
      return;
    }
  }

  __break(0x5510u);
}

- (void)performOnQueue:(id)a3
{
  p_mediaLibraryCacheQ = &self->_mediaLibraryCacheQ;
  if ((&self->_mediaLibraryCacheQ & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v6 = *p_mediaLibraryCacheQ;
    if (*p_mediaLibraryCacheQ)
    {
      block[5] = v3;
      block[6] = v4;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100038368;
      block[3] = &unk_1001138C8;
      block[4] = a3;
      dispatch_sync(v6, block);
      return;
    }
  }

  __break(0x5510u);
}

@end