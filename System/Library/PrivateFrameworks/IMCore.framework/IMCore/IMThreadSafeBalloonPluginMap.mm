@interface IMThreadSafeBalloonPluginMap
- (IMThreadSafeBalloonPluginMap)initWithConcurrentDataQueue:(id)a3;
- (NSArray)allIdentifiers;
- (NSArray)allPlugins;
- (NSDictionary)dictionaryMapCopy;
- (id)pluginForIdentifier:(id)a3;
- (unint64_t)count;
- (void)removePluginWithIdentifier:(id)a3;
- (void)removePluginsWithIdentifiers:(id)a3;
- (void)setPlugin:(id)a3 forIdentifier:(id)a4;
- (void)updateWithMap:(id)a3;
@end

@implementation IMThreadSafeBalloonPluginMap

- (NSArray)allIdentifiers
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1A8259B00;
  v12 = sub_1A825AEAC;
  v13 = 0;
  v4 = objc_msgSend_dataQueue(self, a2, v2);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A825E744;
  v7[3] = &unk_1E7810D58;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v4, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (NSDictionary)dictionaryMapCopy
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1A8259B00;
  v12 = sub_1A825AEAC;
  v13 = 0;
  v4 = objc_msgSend_dataQueue(self, a2, v2);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A825E48C;
  v7[3] = &unk_1E7810D58;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v4, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (NSArray)allPlugins
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1A8259B00;
  v12 = sub_1A825AEAC;
  v13 = 0;
  v4 = objc_msgSend_dataQueue(self, a2, v2);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A825F3B0;
  v7[3] = &unk_1E7810D58;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v4, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (IMThreadSafeBalloonPluginMap)initWithConcurrentDataQueue:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = IMThreadSafeBalloonPluginMap;
  v8 = [(IMThreadSafeBalloonPluginMap *)&v12 init];
  if (v8)
  {
    v9 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v6, v7);
    map = v8->_map;
    v8->_map = v9;

    objc_storeStrong(&v8->_dataQueue, a3);
  }

  return v8;
}

- (id)pluginForIdentifier:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_1A8259B00;
  v18 = sub_1A825AEAC;
  v19 = 0;
  v7 = objc_msgSend_dataQueue(self, v5, v6);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A82AA4F0;
  block[3] = &unk_1E7810CE0;
  v12 = v4;
  v13 = &v14;
  block[4] = self;
  v8 = v4;
  dispatch_sync(v7, block);

  v9 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v9;
}

- (void)setPlugin:(id)a3 forIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend_dataQueue(self, v8, v9);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A82AA634;
  block[3] = &unk_1E7810D08;
  block[4] = self;
  v14 = v6;
  v15 = v7;
  v11 = v7;
  v12 = v6;
  dispatch_barrier_sync(v10, block);
}

- (void)updateWithMap:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_dataQueue(self, v5, v6);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1A82AA73C;
  v9[3] = &unk_1E7810140;
  v10 = v4;
  v11 = self;
  v8 = v4;
  dispatch_barrier_sync(v7, v9);
}

- (void)removePluginWithIdentifier:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_dataQueue(self, v5, v6);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1A82AA8E0;
  v9[3] = &unk_1E7810140;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  dispatch_barrier_sync(v7, v9);
}

- (void)removePluginsWithIdentifiers:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_dataQueue(self, v5, v6);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1A82AA9E8;
  v9[3] = &unk_1E7810140;
  v10 = v4;
  v11 = self;
  v8 = v4;
  dispatch_barrier_sync(v7, v9);
}

- (unint64_t)count
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4 = objc_msgSend_dataQueue(self, a2, v2);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A82AABD0;
  v7[3] = &unk_1E7810D58;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v4, v7);

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

@end