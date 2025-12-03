@interface MTAHTSupport
+ (id)allDevices;
+ (id)allInterfaces;
+ (id)getDeviceInServiceTree:(unsigned int)tree;
+ (id)getInterfaceInServiceTree:(unsigned int)tree;
+ (id)sharedInstance;
- (MTAHTSupport)init;
@end

@implementation MTAHTSupport

- (MTAHTSupport)init
{
  v11.receiver = self;
  v11.super_class = MTAHTSupport;
  v2 = [(MTAHTSupport *)&v11 init];
  if (v2 && (v3 = [objc_alloc(MEMORY[0x277CCA8D8]) initWithPath:@"/System/Library/PrivateFrameworks/AppleHIDTransportSupport.framework"], bundle = v2->_bundle, v2->_bundle = v3, bundle, -[NSBundle load](v2->_bundle, "load")))
  {
    v5 = [(NSBundle *)v2->_bundle classNamed:@"AHTDevice"];
    AHTDevice = v2->_AHTDevice;
    v2->_AHTDevice = v5;

    v7 = [(NSBundle *)v2->_bundle classNamed:@"AHTInterface"];
    AHTInterface = v2->_AHTInterface;
    v2->_AHTInterface = v7;

    v9 = v2;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__MTAHTSupport_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_once != -1)
  {
    dispatch_once(&sharedInstance_once, block);
  }

  v2 = sharedInstance_instance;

  return v2;
}

uint64_t __30__MTAHTSupport_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_instance = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

+ (id)allDevices
{
  sharedInstance = [self sharedInstance];
  v3 = [objc_msgSend(sharedInstance "AHTDevice")];

  return v3;
}

+ (id)getDeviceInServiceTree:(unsigned int)tree
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = +[MTAHTSupport allDevices];
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v20;
LABEL_3:
    v9 = 0;
    v10 = v7;
    while (1)
    {
      if (*v20 != v8)
      {
        objc_enumerationMutation(v4);
      }

      v7 = *(*(&v19 + 1) + 8 * v9);

      parent = tree;
      treeCopy = tree;
      if (tree)
      {
        do
        {
          v17 = 0;
          IORegistryEntryGetParentEntry(treeCopy, "IOService", &parent);
          IORegistryEntryGetRegistryEntryID(parent, &v17);
          v12 = v17;
          registryID = [v7 registryID];
          treeCopy = parent;
        }

        while (v12 != registryID && parent != 0);
        if (parent)
        {
          break;
        }
      }

      ++v9;
      v10 = v7;
      if (v9 == v6)
      {
        v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_16;
      }
    }
  }

  else
  {
LABEL_16:
    v7 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)allInterfaces
{
  sharedInstance = [self sharedInstance];
  v3 = [objc_msgSend(sharedInstance "AHTInterface")];

  return v3;
}

+ (id)getInterfaceInServiceTree:(unsigned int)tree
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = +[MTAHTSupport allInterfaces];
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v20;
LABEL_3:
    v9 = 0;
    v10 = v7;
    while (1)
    {
      if (*v20 != v8)
      {
        objc_enumerationMutation(v4);
      }

      v7 = *(*(&v19 + 1) + 8 * v9);

      parent = tree;
      treeCopy = tree;
      if (tree)
      {
        do
        {
          v17 = 0;
          IORegistryEntryGetParentEntry(treeCopy, "IOService", &parent);
          IORegistryEntryGetRegistryEntryID(parent, &v17);
          v12 = v17;
          registryID = [v7 registryID];
          treeCopy = parent;
        }

        while (v12 != registryID && parent != 0);
        if (parent)
        {
          break;
        }
      }

      ++v9;
      v10 = v7;
      if (v9 == v6)
      {
        v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_16;
      }
    }
  }

  else
  {
LABEL_16:
    v7 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v7;
}

@end