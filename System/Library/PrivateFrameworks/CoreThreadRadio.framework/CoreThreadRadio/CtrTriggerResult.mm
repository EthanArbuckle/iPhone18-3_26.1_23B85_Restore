@interface CtrTriggerResult
- (CtrTriggerResult)initWithCoder:(id)a3;
- (CtrTriggerResult)initWithData:(int64_t)a3 num_thirdparty_BRs:(int64_t)a4 num_thread_networks:(int64_t)a5 max_simultaneous_prefixes:(int64_t)a6 tx_total:(int64_t)a7 tx_total_success:(int64_t)a8 tx_success_perc:(int64_t)a9 rx_total:(int64_t)a10 rx_total_success:(int64_t)a11 rx_success_perc:(int64_t)a12 tx_delayavg:(int64_t)a13 tx_delaymin:(int64_t)a14 tx_delaymax:(int64_t)a15 coex_tx_denied_reqs_perc:(int64_t)a16 coex_rx_denied_reqs_perc:(int64_t)a17 thirdparty_leader:(BOOL)a18 last_known_device_role:(id)a19 is_partition_id_change_detected:(BOOL)a20 leader_name:(id)a21 num_routers:(id)a22 thread_mesh_size:(id)a23 is_parent_change_detected:(BOOL)a24 is_threaddaemon_crash_detected:(BOOL)a25 is_threadfw_crash_detected:(BOOL)a26 is_role_detach_disable_detected:(BOOL)a27 is_border_router_advertised:(BOOL)a28 num_border_routers_advertised:(int64_t)a29 duration:(int64_t)a30;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CtrTriggerResult

- (CtrTriggerResult)initWithData:(int64_t)a3 num_thirdparty_BRs:(int64_t)a4 num_thread_networks:(int64_t)a5 max_simultaneous_prefixes:(int64_t)a6 tx_total:(int64_t)a7 tx_total_success:(int64_t)a8 tx_success_perc:(int64_t)a9 rx_total:(int64_t)a10 rx_total_success:(int64_t)a11 rx_success_perc:(int64_t)a12 tx_delayavg:(int64_t)a13 tx_delaymin:(int64_t)a14 tx_delaymax:(int64_t)a15 coex_tx_denied_reqs_perc:(int64_t)a16 coex_rx_denied_reqs_perc:(int64_t)a17 thirdparty_leader:(BOOL)a18 last_known_device_role:(id)a19 is_partition_id_change_detected:(BOOL)a20 leader_name:(id)a21 num_routers:(id)a22 thread_mesh_size:(id)a23 is_parent_change_detected:(BOOL)a24 is_threaddaemon_crash_detected:(BOOL)a25 is_threadfw_crash_detected:(BOOL)a26 is_role_detach_disable_detected:(BOOL)a27 is_border_router_advertised:(BOOL)a28 num_border_routers_advertised:(int64_t)a29 duration:(int64_t)a30
{
  v32 = a19;
  v33 = a21;
  v34 = a22;
  v35 = a23;
  v43.receiver = self;
  v43.super_class = CtrTriggerResult;
  v36 = [(CtrTriggerResult *)&v43 init];
  if (v36)
  {
    v36->_num_apple_BRs = a3;
    v36->_num_thirdparty_BRs = a4;
    v36->_num_thread_networks = a5;
    v36->_max_simultaneous_prefix_detected = a6;
    v36->_tx_total = a7;
    v36->_tx_total_success = a8;
    v36->_tx_success_perc = a9;
    v36->_rx_total = a10;
    v36->_rx_total_success = a11;
    v36->_rx_success_perc = a12;
    v36->_tx_delayavg = a13;
    v36->_tx_delaymin = a14;
    v36->_tx_delaymax = a15;
    v36->_coex_tx_denied_requests_percentage = a16;
    v36->_coex_rx_denied_requests_percentage = a17;
    v36->_is_leader_thirdparty = a18;
    objc_storeStrong(&v36->_last_known_device_role, a19);
    v36->_is_partition_id_change_detected = a20;
    objc_storeStrong(&v36->_leader_name, a21);
    objc_storeStrong(&v36->_num_routers, a22);
    objc_storeStrong(&v36->_thread_mesh_size, a23);
    v36->_is_parent_change_detected = a24;
    v36->_is_threaddaemon_crash_detected = a25;
    v36->_is_threadfw_crash_detected = a26;
    v36->_is_role_detach_disable_detected = a27;
    v36->_is_border_router_advertised = a28;
    v36->_num_border_routers_advertised = a29;
    v36->_duration = a30;
  }

  return v36;
}

- (CtrTriggerResult)initWithCoder:(id)a3
{
  v3 = a3;
  v31 = [v3 decodeInt64ForKey:@"numAppleBRs"];
  v30 = [v3 decodeInt64ForKey:@"thirdPartyBRs"];
  v29 = [v3 decodeInt64ForKey:@"threadNwsKey"];
  v28 = [v3 decodeInt64ForKey:@"prefixesDetected"];
  [v3 decodeInt64ForKey:@"txTotal"];
  [v3 decodeInt64ForKey:@"txTotalSuccess"];
  v26 = [v3 decodeInt64ForKey:@"txSuccessPerc"];
  v25 = [v3 decodeInt64ForKey:@"rxTotal"];
  v23 = [v3 decodeInt64ForKey:@"rxTotalSuccess"];
  v22 = [v3 decodeInt64ForKey:@"rxSuccessPerc"];
  v21 = [v3 decodeInt64ForKey:@"txDelayAvg"];
  v20 = [v3 decodeInt64ForKey:@"txDelayMin"];
  v19 = [v3 decodeInt64ForKey:@"txDelayMax"];
  v18 = [v3 decodeInt64ForKey:@"coexTxDeniedReqsPerc"];
  v17 = [v3 decodeInt64ForKey:@"coexRxDeniedReqsPerc"];
  v16 = [v3 decodeBoolForKey:@"leaderIsThirdParty"];
  v27 = [v3 decodeObjectForKey:@"lastKnownRole"];
  v15 = [v3 decodeBoolForKey:@"partitionChanged"];
  v24 = [v3 decodeObjectForKey:@"leaderName"];
  v4 = [v3 decodeObjectForKey:@"numRouters"];
  v5 = [v3 decodeObjectForKey:@"meshSize"];
  v6 = [v3 decodeBoolForKey:@"parentChanged"];
  v7 = [v3 decodeBoolForKey:@"daemonCrashed"];
  v8 = [v3 decodeBoolForKey:@"fwCrashed"];
  v9 = [v3 decodeBoolForKey:@"roleDisableDetached"];
  BYTE4(v14) = [v3 decodeBoolForKey:@"borderRouterFound"];
  BYTE3(v14) = v9;
  BYTE2(v14) = v8;
  BYTE1(v14) = v7;
  LOBYTE(v14) = v6;
  LOBYTE(v13) = v15;
  LOBYTE(v12) = v16;
  v10 = -[CtrTriggerResult initWithData:num_thirdparty_BRs:num_thread_networks:max_simultaneous_prefixes:tx_total:tx_total_success:tx_success_perc:rx_total:rx_total_success:rx_success_perc:tx_delayavg:tx_delaymin:tx_delaymax:coex_tx_denied_reqs_perc:coex_rx_denied_reqs_perc:thirdparty_leader:last_known_device_role:is_partition_id_change_detected:leader_name:num_routers:thread_mesh_size:is_parent_change_detected:is_threaddaemon_crash_detected:is_threadfw_crash_detected:is_role_detach_disable_detected:is_border_router_advertised:num_border_routers_advertised:duration:](self, "initWithData:num_thirdparty_BRs:num_thread_networks:max_simultaneous_prefixes:tx_total:tx_total_success:tx_success_perc:rx_total:rx_total_success:rx_success_perc:tx_delayavg:tx_delaymin:tx_delaymax:coex_tx_denied_reqs_perc:coex_rx_denied_reqs_perc:thirdparty_leader:last_known_device_role:is_partition_id_change_detected:leader_name:num_routers:thread_mesh_size:is_parent_change_detected:is_threaddaemon_crash_detected:is_threadfw_crash_detected:is_role_detach_disable_detected:is_border_router_advertised:num_border_routers_advertised:duration:", v31, v30, v29, v26, v25, v23, v22, v21, v20, v19, v18, v17, v12, v27, v13, v24, v4, v5, v14, v28, [v3 decodeInt64ForKey:@"duration"]);

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  [v8 encodeInt64:-[CtrTriggerResult num_apple_BRs](self forKey:{"num_apple_BRs"), @"numAppleBRs"}];
  [v8 encodeInt64:-[CtrTriggerResult num_thirdparty_BRs](self forKey:{"num_thirdparty_BRs"), @"thirdPartyBRs"}];
  [v8 encodeInt64:-[CtrTriggerResult num_thread_networks](self forKey:{"num_thread_networks"), @"threadNwsKey"}];
  [v8 encodeInt64:-[CtrTriggerResult max_simultaneous_prefix_detected](self forKey:{"max_simultaneous_prefix_detected"), @"prefixesDetected"}];
  [v8 encodeInt64:-[CtrTriggerResult tx_total](self forKey:{"tx_total"), @"txTotal"}];
  [v8 encodeInt64:-[CtrTriggerResult tx_total_success](self forKey:{"tx_total_success"), @"txTotalSuccess"}];
  [v8 encodeInt64:-[CtrTriggerResult tx_success_perc](self forKey:{"tx_success_perc"), @"txSuccessPerc"}];
  [v8 encodeInt64:-[CtrTriggerResult rx_total](self forKey:{"rx_total"), @"rxTotal"}];
  [v8 encodeInt64:-[CtrTriggerResult rx_total_success](self forKey:{"rx_total_success"), @"rxTotalSuccess"}];
  [v8 encodeInt64:-[CtrTriggerResult rx_success_perc](self forKey:{"rx_success_perc"), @"rxSuccessPerc"}];
  [v8 encodeInt64:-[CtrTriggerResult tx_delayavg](self forKey:{"tx_delayavg"), @"txDelayAvg"}];
  [v8 encodeInt64:-[CtrTriggerResult tx_delaymin](self forKey:{"tx_delaymin"), @"txDelayMin"}];
  [v8 encodeInt64:-[CtrTriggerResult tx_delaymax](self forKey:{"tx_delaymax"), @"txDelayMax"}];
  [v8 encodeInt64:-[CtrTriggerResult coex_tx_denied_requests_percentage](self forKey:{"coex_tx_denied_requests_percentage"), @"coexTxDeniedReqsPerc"}];
  [v8 encodeInt64:-[CtrTriggerResult coex_rx_denied_requests_percentage](self forKey:{"coex_rx_denied_requests_percentage"), @"coexRxDeniedReqsPerc"}];
  [v8 encodeBool:-[CtrTriggerResult is_leader_thirdparty](self forKey:{"is_leader_thirdparty"), @"leaderIsThirdParty"}];
  v4 = [(CtrTriggerResult *)self last_known_device_role];
  [v8 encodeObject:v4 forKey:@"lastKnownRole"];

  [v8 encodeBool:-[CtrTriggerResult is_partition_id_change_detected](self forKey:{"is_partition_id_change_detected"), @"partitionChanged"}];
  v5 = [(CtrTriggerResult *)self leader_name];
  [v8 encodeObject:v5 forKey:@"leaderName"];

  v6 = [(CtrTriggerResult *)self num_routers];
  [v8 encodeObject:v6 forKey:@"numRouters"];

  v7 = [(CtrTriggerResult *)self thread_mesh_size];
  [v8 encodeObject:v7 forKey:@"meshSize"];

  [v8 encodeBool:-[CtrTriggerResult is_parent_change_detected](self forKey:{"is_parent_change_detected"), @"parentChanged"}];
  [v8 encodeBool:-[CtrTriggerResult is_threaddaemon_crash_detected](self forKey:{"is_threaddaemon_crash_detected"), @"daemonCrashed"}];
  [v8 encodeBool:-[CtrTriggerResult is_threadfw_crash_detected](self forKey:{"is_threadfw_crash_detected"), @"fwCrashed"}];
  [v8 encodeBool:-[CtrTriggerResult is_role_detach_disable_detected](self forKey:{"is_role_detach_disable_detected"), @"roleDisableDetached"}];
  [v8 encodeBool:-[CtrTriggerResult is_border_router_advertised](self forKey:{"is_border_router_advertised"), @"borderRouterFound"}];
  [v8 encodeInt64:-[CtrTriggerResult duration](self forKey:{"duration"), @"duration"}];
}

@end