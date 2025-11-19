@interface IDSDMessageStoreMap
+ (id)sharedInstance;
- (IDSDMessageStoreMap)init;
- (NSArray)messageStores;
- (id)getOrCreateMessageStoreForDataProtectionClass:(unsigned int)a3;
- (void)dealloc;
@end

@implementation IDSDMessageStoreMap

+ (id)sharedInstance
{
  if (qword_100CBF310 != -1)
  {
    sub_10000CB34();
  }

  v3 = qword_100CBF308;

  return v3;
}

- (NSArray)messageStores
{
  pthread_mutex_lock(&self->_mutex);
  v3 = [(NSMutableDictionary *)self->_messageStores allValues];
  pthread_mutex_unlock(&self->_mutex);

  return v3;
}

- (IDSDMessageStoreMap)init
{
  v10.receiver = self;
  v10.super_class = IDSDMessageStoreMap;
  v2 = [(IDSDMessageStoreMap *)&v10 init];
  v3 = v2;
  if (v2)
  {
    pthread_mutex_init(&v2->_mutex, 0);
    v4 = objc_alloc_init(NSMutableDictionary);
    messageStores = v3->_messageStores;
    v3->_messageStores = v4;

    v6 = [(IDSDMessageStoreMap *)v3 getOrCreateMessageStoreForDataProtectionClass:1];
    v7 = [(IDSDMessageStoreMap *)v3 getOrCreateMessageStoreForDataProtectionClass:0];
    v8 = [(IDSDMessageStoreMap *)v3 getOrCreateMessageStoreForDataProtectionClass:2];
  }

  return v3;
}

- (void)dealloc
{
  pthread_mutex_destroy(&self->_mutex);
  v3.receiver = self;
  v3.super_class = IDSDMessageStoreMap;
  [(IDSDMessageStoreMap *)&v3 dealloc];
}

- (id)getOrCreateMessageStoreForDataProtectionClass:(unsigned int)a3
{
  v3 = *&a3;
  v5 = +[FTDeviceSupport sharedInstance];
  v6 = [v5 supportsHandoff];

  if (v3 <= 1 && !v6)
  {
    v7 = 0;
    goto LABEL_14;
  }

  v8 = IDSDataProtectionClassStringFromDataProtectionClass();
  pthread_mutex_lock(&self->_mutex);
  v9 = +[IMSystemMonitor sharedInstance];
  v10 = [v9 isUnderFirstDataProtectionLock];

  v11 = +[IMSystemMonitor sharedInstance];
  v12 = [v11 isUnderDataProtectionLock];

  v7 = [(NSMutableDictionary *)self->_messageStores objectForKey:v8];
  if (!v7)
  {
    v13 = v12 ^ 1;
    if (v3 != 1)
    {
      v13 = 1;
    }

    if ((v13 & 1) == 0)
    {
      goto LABEL_12;
    }

    v14 = v10 ^ 1;
    if (v3 == 2)
    {
      v14 = 1;
    }

    if ((v14 & 1) == 0)
    {
LABEL_12:
      pthread_mutex_unlock(&self->_mutex);
      v7 = 0;
      goto LABEL_13;
    }

    v7 = [[IDSDMessageStore alloc] initWithDataProtectionClass:v3];
    [(IDSDMessageStore *)v7 _performInitialHousekeeping];
    [(NSMutableDictionary *)self->_messageStores setObject:v7 forKey:v8];
    v16 = +[IMRGLog dataProtectionClass];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      messageStores = self->_messageStores;
      v18 = 138412290;
      v19 = messageStores;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Message store map %@", &v18, 0xCu);
    }
  }

  pthread_mutex_unlock(&self->_mutex);
LABEL_13:

LABEL_14:

  return v7;
}

@end