@interface NavdVehicleBluetoothNotificationHandler
- (NavdVehicleBluetoothNotificationHandler)initWithCiruitBoard:(id)a3 connectTriggers:(id)a4 connectConditions:(id)a5 disconnectTriggers:(id)a6 disconnectConditions:(id)a7 resourceDepot:(id)a8 notifier:(id)a9;
- (id).cxx_construct;
@end

@implementation NavdVehicleBluetoothNotificationHandler

- (NavdVehicleBluetoothNotificationHandler)initWithCiruitBoard:(id)a3 connectTriggers:(id)a4 connectConditions:(id)a5 disconnectTriggers:(id)a6 disconnectConditions:(id)a7 resourceDepot:(id)a8 notifier:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v57 = a8;
  v58 = a9;
  v20 = GEOConfigNavdVehicleBTNotificationEnabled[1];
  if (GEOConfigGetBOOL())
  {
    v73.receiver = self;
    v73.super_class = NavdVehicleBluetoothNotificationHandler;
    v21 = [(NavdVehicleBluetoothNotificationHandler *)&v73 init];
    if (v21)
    {
      v56 = v19;
      objc_initWeak(&location, v21);
      v22 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      sub_10001A824(&v70, @"NavdVehicleBluetoothNotificationHandlerQueue", v22);
      v23 = v70;
      v70 = 0;
      innerQueue = v21->_queue._innerQueue;
      v21->_queue._innerQueue = v23;

      v25 = v71;
      v71 = 0;
      name = v21->_queue._name;
      v21->_queue._name = v25;

      v55 = v18;
      sub_100024668(v21);
      v27 = [MapsSuggestionsActionCircuit alloc];
      v28 = [MapsSuggestionsBlockAction alloc];
      v66[0] = _NSConcreteStackBlock;
      v66[1] = 3221225472;
      v66[2] = sub_1000247A8;
      v66[3] = &unk_100065F88;
      objc_copyWeak(&v69, &location);
      v29 = v56;
      v67 = v29;
      v30 = v58;
      v68 = v30;
      v31 = [v28 initWithName:@"BTDisconnectAction" block:v66];
      v32 = [v27 initWithTriggers:v55 conditions:v29 action:v31];

      v54 = v32;
      v33 = [MapsSuggestionsActionCircuit alloc];
      v34 = [MapsSuggestionsBlockAction alloc];
      v63[0] = _NSConcreteStackBlock;
      v63[1] = 3221225472;
      v63[2] = sub_100024B7C;
      v63[3] = &unk_100065FB0;
      objc_copyWeak(&v65, &location);
      v35 = v30;
      v64 = v35;
      v36 = [v34 initWithName:@"BTClearAction" block:v63];
      v37 = [v33 initWithTriggers:&__NSArray0__struct conditions:&__NSArray0__struct action:v36];
      clearCircuit = v21->_clearCircuit;
      v21->_clearCircuit = v37;

      v39 = [v15 addCircuit:v21->_clearCircuit];
      v40 = [v15 addCircuit:v32];
      v41 = [MapsSuggestionsBlockCondition alloc];
      v42 = v21->_queue._innerQueue;
      v61[0] = _NSConcreteStackBlock;
      v61[1] = 3221225472;
      v61[2] = sub_100024D28;
      v61[3] = &unk_100065B50;
      objc_copyWeak(&v62, &location);
      v43 = [v41 initWithName:@"locationBudgetCondition" queue:v42 block:v61];
      locationBudgetCondition = v21->_locationBudgetCondition;
      v21->_locationBudgetCondition = v43;

      v45 = [v17 mutableCopy];
      [v45 addObject:v21->_locationBudgetCondition];
      v46 = [MapsSuggestionsActionCircuit alloc];
      v47 = [v45 copy];
      v48 = [NavdVehicleBluetoothConnectAction alloc];
      v59[0] = _NSConcreteStackBlock;
      v59[1] = 3221225472;
      v59[2] = sub_10002501C;
      v59[3] = &unk_100065548;
      objc_copyWeak(&v60, &location);
      v49 = [(NavdVehicleBluetoothConnectAction *)v48 initWithConditions:v17 resourceDepot:v57 notifier:v35 completionHandler:v59];
      v50 = [v46 initWithTriggers:v16 conditions:v47 type:2 action:v49];

      v51 = [v15 addCircuit:v50];
      objc_destroyWeak(&v60);

      objc_destroyWeak(&v62);
      objc_destroyWeak(&v65);

      objc_destroyWeak(&v69);
      objc_destroyWeak(&location);
      v18 = v55;
      v19 = v56;
    }

    self = v21;
    v52 = self;
  }

  else
  {
    v52 = 0;
  }

  return v52;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end