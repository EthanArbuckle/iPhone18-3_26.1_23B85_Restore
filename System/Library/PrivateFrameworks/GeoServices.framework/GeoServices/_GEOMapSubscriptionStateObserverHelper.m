@interface _GEOMapSubscriptionStateObserverHelper
- (void)_broadcastState:(id)a3 forIdentifier:(id)a4 fromPairedDevice:(BOOL)a5 toPeer:(id)a6;
- (void)geoXPCConnectionIsReadyToSend:(id)a3;
@end

@implementation _GEOMapSubscriptionStateObserverHelper

- (void)_broadcastState:(id)a3 forIdentifier:(id)a4 fromPairedDevice:(BOOL)a5 toPeer:(id)a6
{
  v7 = a5;
  v16 = a3;
  v10 = a4;
  v11 = a6;
  isolater = self->_isolater;
  geo_assert_isolated();
  if (!v7)
  {
    if (![(NSMutableArray *)self->_observingIdentifiers containsObject:v10])
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (([(NSMutableArray *)self->_observingPairedDeviceIdentifiers containsObject:v10]& 1) != 0)
  {
LABEL_5:
    v13 = xpc_dictionary_create(0, 0, 0);
    [v16 encodeToXPCDictionary:v13];
    v14 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v14, "message", "subscription_state_did_change");
    xpc_dictionary_set_value(v14, "state", v13);
    xpc_dictionary_set_string(v14, "id", [v10 UTF8String]);
    xpc_dictionary_set_BOOL(v14, "paired_device", v7);
    v15 = [v11 connection];
    [v15 sendMessage:v14];
  }

LABEL_6:
}

- (void)geoXPCConnectionIsReadyToSend:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_peer);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained connection];

    if (v7 == v4)
    {
      v15 = self->_isolater;
      _geo_isolate_lock();
      pendingStateUpdates = self->_pendingStateUpdates;
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10002A670;
      v13[3] = &unk_100082720;
      v13[4] = self;
      v9 = v6;
      v14 = v9;
      [(NSMutableDictionary *)pendingStateUpdates enumerateKeysAndObjectsUsingBlock:v13];
      [(NSMutableDictionary *)self->_pendingStateUpdates removeAllObjects];
      pendingPairedDeviceStateUpdates = self->_pendingPairedDeviceStateUpdates;
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10002A684;
      v11[3] = &unk_100082720;
      v11[4] = self;
      v12 = v9;
      [(NSMutableDictionary *)pendingPairedDeviceStateUpdates enumerateKeysAndObjectsUsingBlock:v11];
      [(NSMutableDictionary *)self->_pendingPairedDeviceStateUpdates removeAllObjects];

      _geo_isolate_unlock();
    }
  }
}

@end