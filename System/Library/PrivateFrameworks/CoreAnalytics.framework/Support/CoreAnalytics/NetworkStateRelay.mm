@interface NetworkStateRelay
- (NetworkStateRelay)initWithMonitoring:(NetworkingStateDelegate *)monitoring withWiFiStateRelay:(id)relay withTelephonyStateRelay:(id)stateRelay;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)registerForNetworkChanges;
- (void)updatePrimaryNetworkInterfaceType:(optional<NWInterfaceType>)type;
@end

@implementation NetworkStateRelay

- (NetworkStateRelay)initWithMonitoring:(NetworkingStateDelegate *)monitoring withWiFiStateRelay:(id)relay withTelephonyStateRelay:(id)stateRelay
{
  relayCopy = relay;
  stateRelayCopy = stateRelay;
  v16.receiver = self;
  v16.super_class = NetworkStateRelay;
  v11 = [(NetworkStateRelay *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->delegate = monitoring;
    objc_storeStrong(&v11->_wiFiStateRelay, relay);
    objc_storeStrong(&v12->_telephonyStateRelay, stateRelay);
    v13 = dispatch_queue_create("analyticsd.NetworkingStateResolver.NetworkStateRelay.myQueue", 0);
    fObj = v12->_stateRelayQueue.fObj.fObj;
    v12->_stateRelayQueue.fObj.fObj = v13;

    [(NetworkStateRelay *)v12 registerForNetworkChanges];
  }

  return v12;
}

- (void)dealloc
{
  fObj = self->_stateRelayQueue.fObj.fObj;
  p_stateRelayQueue = &self->_stateRelayQueue;
  if (fObj)
  {
    v5 = sub_100006020(&p_stateRelayQueue->fObj.fObj);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000BFDDC;
    block[3] = &unk_100184CB0;
    block[4] = self;
    dispatch_sync(v5, block);
  }

  v6.receiver = self;
  v6.super_class = NetworkStateRelay;
  [(NetworkStateRelay *)&v6 dealloc];
}

- (void)registerForNetworkChanges
{
  v5 = objc_alloc_init(NWParameters);
  [v5 prohibitNetworkAgentsWithDomain:@"NetworkExtension" type:@"VPN"];
  [v5 prohibitNetworkAgentsWithDomain:@"NetworkExtension" type:@"AOVPN"];
  [v5 prohibitNetworkAgentsWithDomain:@"NetworkExtension" type:@"AppVPN"];
  v3 = [[NWPathEvaluator alloc] initWithEndpoint:0 parameters:v5];
  primaryPathEvaluator = self->_primaryPathEvaluator;
  self->_primaryPathEvaluator = v3;

  [(NWPathEvaluator *)self->_primaryPathEvaluator addObserver:self forKeyPath:@"path" options:5 context:0];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  objectCopy = object;
  objc_initWeak(&location, self);
  v8 = sub_100006020(&self->_stateRelayQueue.fObj.fObj);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000C0004;
  v10[3] = &unk_100187E88;
  objc_copyWeak(&v12, &location);
  v11 = objectCopy;
  v9 = objectCopy;
  dispatch_async(v8, v10);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)updatePrimaryNetworkInterfaceType:(optional<NWInterfaceType>)type
{
  var1 = type.var1;
  v4 = type.var0.var1;
  memset(&v11, 170, sizeof(v11));
  sub_10000459C(&v11, "<unknown>");
  if (!var1)
  {
    goto LABEL_16;
  }

  if (v4 <= 1)
  {
    if (v4)
    {
      if (v4 != 1)
      {
        goto LABEL_16;
      }

      std::string::assign(&v11, "WiFi");
      wiFiStateRelay = self->_wiFiStateRelay;
      if (!wiFiStateRelay || ![(WiFiStateRelay *)wiFiStateRelay wiFiActiveAndUsingPersonalHotspot])
      {
        goto LABEL_16;
      }

      v6 = "PersonalHotspot";
    }

    else
    {
      v6 = "Other";
    }
  }

  else
  {
    switch(v4)
    {
      case 4:
        v6 = "Loopback";
        break;
      case 3:
        v6 = "WiredEthernet";
        break;
      case 2:
        v6 = "Cellular";
        break;
      default:
        goto LABEL_16;
    }
  }

  std::string::assign(&v11, v6);
LABEL_16:
  delegate = self->delegate;
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_1000078D8(&__p, v11.__r_.__value_.__l.__data_, v11.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v11;
  }

  v13 = 1;
  (*(delegate->var0 + 2))(&v10, delegate, &__p);
  v9 = v10;
  v10 = 0;

  if (v13 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }
}

@end