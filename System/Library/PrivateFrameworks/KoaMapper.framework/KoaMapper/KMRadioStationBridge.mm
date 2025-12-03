@interface KMRadioStationBridge
+ (void)bootstrapListenerWithHandler:(id)handler;
- (BOOL)enumerateItemsWithError:(id *)error usingBlock:(id)block;
- (KMRadioStationBridge)init;
- (RadioListener)radioStore;
@end

@implementation KMRadioStationBridge

- (RadioListener)radioStore
{
  WeakRetained = objc_loadWeakRetained(&self->_radioStore);

  return WeakRetained;
}

- (BOOL)enumerateItemsWithError:(id *)error usingBlock:(id)block
{
  v30 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v6 = +[CarPlayConnectionManager shared];
  radioStore = [v6 radioStore];
  [(KMRadioStationBridge *)self setRadioStore:radioStore];

  radioStore2 = [(KMRadioStationBridge *)self radioStore];
  radioStations = [radioStore2 radioStations];

  v10 = KMLogContextCore;
  if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_DEBUG))
  {
    v20 = v10;
    *buf = 136315394;
    v27 = "[KMRadioStationBridge enumerateItemsWithError:usingBlock:]";
    v28 = 2048;
    v29 = [radioStations count];
    _os_log_debug_impl(&dword_2559DF000, v20, OS_LOG_TYPE_DEBUG, "%s #radio: %li radio stations found for donation.", buf, 0x16u);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = radioStations;
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        if (!*(*(&v21 + 1) + 8 * i) || (blockCopy[2](blockCopy) & 1) == 0)
        {
          v17 = KMLogContextCore;
          if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315138;
            v27 = "[KMRadioStationBridge enumerateItemsWithError:usingBlock:]";
            _os_log_error_impl(&dword_2559DF000, v17, OS_LOG_TYPE_ERROR, "%s #radio: Could not donate while enumerating over station list", buf, 0xCu);
          }

          v16 = 0;
          goto LABEL_17;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
      v16 = 1;
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v16 = 1;
  }

LABEL_17:

  v18 = *MEMORY[0x277D85DE8];
  return v16;
}

- (KMRadioStationBridge)init
{
  v7.receiver = self;
  v7.super_class = KMRadioStationBridge;
  v2 = [(KMRadioStationBridge *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D22D28]);
    builder = v2->_builder;
    v2->_builder = v3;

    v5 = v2;
  }

  return v2;
}

+ (void)bootstrapListenerWithHandler:(id)handler
{
  handlerCopy = handler;
  v4 = +[CarPlayConnectionManager shared];
  [v4 registerUpdateHandler:handlerCopy];
}

@end