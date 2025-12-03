@interface CtrTriggerResult
- (CtrTriggerResult)initWithCoder:(id)coder;
- (CtrTriggerResult)initWithData:(int64_t)data num_thirdparty_BRs:(int64_t)rs num_thread_networks:(int64_t)num_thread_networks max_simultaneous_prefixes:(int64_t)max_simultaneous_prefixes tx_total:(int64_t)tx_total tx_total_success:(int64_t)tx_total_success tx_success_perc:(int64_t)tx_success_perc rx_total:(int64_t)self0 rx_total_success:(int64_t)self1 rx_success_perc:(int64_t)self2 tx_delayavg:(int64_t)self3 tx_delaymin:(int64_t)self4 tx_delaymax:(int64_t)self5 coex_tx_denied_reqs_perc:(int64_t)self6 coex_rx_denied_reqs_perc:(int64_t)self7 thirdparty_leader:(BOOL)self8 last_known_device_role:(id)self9 is_partition_id_change_detected:(BOOL)is_partition_id_change_detected leader_name:(id)leader_name num_routers:(id)num_routers thread_mesh_size:(id)thread_mesh_size is_parent_change_detected:(BOOL)is_parent_change_detected is_threaddaemon_crash_detected:(BOOL)is_threaddaemon_crash_detected is_threadfw_crash_detected:(BOOL)is_threadfw_crash_detected is_role_detach_disable_detected:(BOOL)is_role_detach_disable_detected is_border_router_advertised:(BOOL)is_border_router_advertised num_border_routers_advertised:(int64_t)num_border_routers_advertised duration:(int64_t)data0;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CtrTriggerResult

- (CtrTriggerResult)initWithData:(int64_t)data num_thirdparty_BRs:(int64_t)rs num_thread_networks:(int64_t)num_thread_networks max_simultaneous_prefixes:(int64_t)max_simultaneous_prefixes tx_total:(int64_t)tx_total tx_total_success:(int64_t)tx_total_success tx_success_perc:(int64_t)tx_success_perc rx_total:(int64_t)self0 rx_total_success:(int64_t)self1 rx_success_perc:(int64_t)self2 tx_delayavg:(int64_t)self3 tx_delaymin:(int64_t)self4 tx_delaymax:(int64_t)self5 coex_tx_denied_reqs_perc:(int64_t)self6 coex_rx_denied_reqs_perc:(int64_t)self7 thirdparty_leader:(BOOL)self8 last_known_device_role:(id)self9 is_partition_id_change_detected:(BOOL)is_partition_id_change_detected leader_name:(id)leader_name num_routers:(id)num_routers thread_mesh_size:(id)thread_mesh_size is_parent_change_detected:(BOOL)is_parent_change_detected is_threaddaemon_crash_detected:(BOOL)is_threaddaemon_crash_detected is_threadfw_crash_detected:(BOOL)is_threadfw_crash_detected is_role_detach_disable_detected:(BOOL)is_role_detach_disable_detected is_border_router_advertised:(BOOL)is_border_router_advertised num_border_routers_advertised:(int64_t)num_border_routers_advertised duration:(int64_t)data0
{
  last_known_device_roleCopy = last_known_device_role;
  leader_nameCopy = leader_name;
  num_routersCopy = num_routers;
  thread_mesh_sizeCopy = thread_mesh_size;
  v43.receiver = self;
  v43.super_class = CtrTriggerResult;
  v36 = [(CtrTriggerResult *)&v43 init];
  if (v36)
  {
    v36->_num_apple_BRs = data;
    v36->_num_thirdparty_BRs = rs;
    v36->_num_thread_networks = num_thread_networks;
    v36->_max_simultaneous_prefix_detected = max_simultaneous_prefixes;
    v36->_tx_total = tx_total;
    v36->_tx_total_success = tx_total_success;
    v36->_tx_success_perc = tx_success_perc;
    v36->_rx_total = rx_total;
    v36->_rx_total_success = rx_total_success;
    v36->_rx_success_perc = rx_success_perc;
    v36->_tx_delayavg = tx_delayavg;
    v36->_tx_delaymin = tx_delaymin;
    v36->_tx_delaymax = tx_delaymax;
    v36->_coex_tx_denied_requests_percentage = coex_tx_denied_reqs_perc;
    v36->_coex_rx_denied_requests_percentage = coex_rx_denied_reqs_perc;
    v36->_is_leader_thirdparty = thirdparty_leader;
    objc_storeStrong(&v36->_last_known_device_role, last_known_device_role);
    v36->_is_partition_id_change_detected = is_partition_id_change_detected;
    objc_storeStrong(&v36->_leader_name, leader_name);
    objc_storeStrong(&v36->_num_routers, num_routers);
    objc_storeStrong(&v36->_thread_mesh_size, thread_mesh_size);
    v36->_is_parent_change_detected = is_parent_change_detected;
    v36->_is_threaddaemon_crash_detected = is_threaddaemon_crash_detected;
    v36->_is_threadfw_crash_detected = is_threadfw_crash_detected;
    v36->_is_role_detach_disable_detected = is_role_detach_disable_detected;
    v36->_is_border_router_advertised = is_border_router_advertised;
    v36->_num_border_routers_advertised = num_border_routers_advertised;
    v36->_duration = duration;
  }

  return v36;
}

- (CtrTriggerResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v31 = [coderCopy decodeInt64ForKey:@"numAppleBRs"];
  v30 = [coderCopy decodeInt64ForKey:@"thirdPartyBRs"];
  v29 = [coderCopy decodeInt64ForKey:@"threadNwsKey"];
  v28 = [coderCopy decodeInt64ForKey:@"prefixesDetected"];
  [coderCopy decodeInt64ForKey:@"txTotal"];
  [coderCopy decodeInt64ForKey:@"txTotalSuccess"];
  v26 = [coderCopy decodeInt64ForKey:@"txSuccessPerc"];
  v25 = [coderCopy decodeInt64ForKey:@"rxTotal"];
  v23 = [coderCopy decodeInt64ForKey:@"rxTotalSuccess"];
  v22 = [coderCopy decodeInt64ForKey:@"rxSuccessPerc"];
  v21 = [coderCopy decodeInt64ForKey:@"txDelayAvg"];
  v20 = [coderCopy decodeInt64ForKey:@"txDelayMin"];
  v19 = [coderCopy decodeInt64ForKey:@"txDelayMax"];
  v18 = [coderCopy decodeInt64ForKey:@"coexTxDeniedReqsPerc"];
  v17 = [coderCopy decodeInt64ForKey:@"coexRxDeniedReqsPerc"];
  v16 = [coderCopy decodeBoolForKey:@"leaderIsThirdParty"];
  v27 = [coderCopy decodeObjectForKey:@"lastKnownRole"];
  v15 = [coderCopy decodeBoolForKey:@"partitionChanged"];
  v24 = [coderCopy decodeObjectForKey:@"leaderName"];
  v4 = [coderCopy decodeObjectForKey:@"numRouters"];
  v5 = [coderCopy decodeObjectForKey:@"meshSize"];
  v6 = [coderCopy decodeBoolForKey:@"parentChanged"];
  v7 = [coderCopy decodeBoolForKey:@"daemonCrashed"];
  v8 = [coderCopy decodeBoolForKey:@"fwCrashed"];
  v9 = [coderCopy decodeBoolForKey:@"roleDisableDetached"];
  BYTE4(v14) = [coderCopy decodeBoolForKey:@"borderRouterFound"];
  BYTE3(v14) = v9;
  BYTE2(v14) = v8;
  BYTE1(v14) = v7;
  LOBYTE(v14) = v6;
  LOBYTE(v13) = v15;
  LOBYTE(v12) = v16;
  v10 = -[CtrTriggerResult initWithData:num_thirdparty_BRs:num_thread_networks:max_simultaneous_prefixes:tx_total:tx_total_success:tx_success_perc:rx_total:rx_total_success:rx_success_perc:tx_delayavg:tx_delaymin:tx_delaymax:coex_tx_denied_reqs_perc:coex_rx_denied_reqs_perc:thirdparty_leader:last_known_device_role:is_partition_id_change_detected:leader_name:num_routers:thread_mesh_size:is_parent_change_detected:is_threaddaemon_crash_detected:is_threadfw_crash_detected:is_role_detach_disable_detected:is_border_router_advertised:num_border_routers_advertised:duration:](self, "initWithData:num_thirdparty_BRs:num_thread_networks:max_simultaneous_prefixes:tx_total:tx_total_success:tx_success_perc:rx_total:rx_total_success:rx_success_perc:tx_delayavg:tx_delaymin:tx_delaymax:coex_tx_denied_reqs_perc:coex_rx_denied_reqs_perc:thirdparty_leader:last_known_device_role:is_partition_id_change_detected:leader_name:num_routers:thread_mesh_size:is_parent_change_detected:is_threaddaemon_crash_detected:is_threadfw_crash_detected:is_role_detach_disable_detected:is_border_router_advertised:num_border_routers_advertised:duration:", v31, v30, v29, v26, v25, v23, v22, v21, v20, v19, v18, v17, v12, v27, v13, v24, v4, v5, v14, v28, [coderCopy decodeInt64ForKey:@"duration"]);

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:-[CtrTriggerResult num_apple_BRs](self forKey:{"num_apple_BRs"), @"numAppleBRs"}];
  [coderCopy encodeInt64:-[CtrTriggerResult num_thirdparty_BRs](self forKey:{"num_thirdparty_BRs"), @"thirdPartyBRs"}];
  [coderCopy encodeInt64:-[CtrTriggerResult num_thread_networks](self forKey:{"num_thread_networks"), @"threadNwsKey"}];
  [coderCopy encodeInt64:-[CtrTriggerResult max_simultaneous_prefix_detected](self forKey:{"max_simultaneous_prefix_detected"), @"prefixesDetected"}];
  [coderCopy encodeInt64:-[CtrTriggerResult tx_total](self forKey:{"tx_total"), @"txTotal"}];
  [coderCopy encodeInt64:-[CtrTriggerResult tx_total_success](self forKey:{"tx_total_success"), @"txTotalSuccess"}];
  [coderCopy encodeInt64:-[CtrTriggerResult tx_success_perc](self forKey:{"tx_success_perc"), @"txSuccessPerc"}];
  [coderCopy encodeInt64:-[CtrTriggerResult rx_total](self forKey:{"rx_total"), @"rxTotal"}];
  [coderCopy encodeInt64:-[CtrTriggerResult rx_total_success](self forKey:{"rx_total_success"), @"rxTotalSuccess"}];
  [coderCopy encodeInt64:-[CtrTriggerResult rx_success_perc](self forKey:{"rx_success_perc"), @"rxSuccessPerc"}];
  [coderCopy encodeInt64:-[CtrTriggerResult tx_delayavg](self forKey:{"tx_delayavg"), @"txDelayAvg"}];
  [coderCopy encodeInt64:-[CtrTriggerResult tx_delaymin](self forKey:{"tx_delaymin"), @"txDelayMin"}];
  [coderCopy encodeInt64:-[CtrTriggerResult tx_delaymax](self forKey:{"tx_delaymax"), @"txDelayMax"}];
  [coderCopy encodeInt64:-[CtrTriggerResult coex_tx_denied_requests_percentage](self forKey:{"coex_tx_denied_requests_percentage"), @"coexTxDeniedReqsPerc"}];
  [coderCopy encodeInt64:-[CtrTriggerResult coex_rx_denied_requests_percentage](self forKey:{"coex_rx_denied_requests_percentage"), @"coexRxDeniedReqsPerc"}];
  [coderCopy encodeBool:-[CtrTriggerResult is_leader_thirdparty](self forKey:{"is_leader_thirdparty"), @"leaderIsThirdParty"}];
  last_known_device_role = [(CtrTriggerResult *)self last_known_device_role];
  [coderCopy encodeObject:last_known_device_role forKey:@"lastKnownRole"];

  [coderCopy encodeBool:-[CtrTriggerResult is_partition_id_change_detected](self forKey:{"is_partition_id_change_detected"), @"partitionChanged"}];
  leader_name = [(CtrTriggerResult *)self leader_name];
  [coderCopy encodeObject:leader_name forKey:@"leaderName"];

  num_routers = [(CtrTriggerResult *)self num_routers];
  [coderCopy encodeObject:num_routers forKey:@"numRouters"];

  thread_mesh_size = [(CtrTriggerResult *)self thread_mesh_size];
  [coderCopy encodeObject:thread_mesh_size forKey:@"meshSize"];

  [coderCopy encodeBool:-[CtrTriggerResult is_parent_change_detected](self forKey:{"is_parent_change_detected"), @"parentChanged"}];
  [coderCopy encodeBool:-[CtrTriggerResult is_threaddaemon_crash_detected](self forKey:{"is_threaddaemon_crash_detected"), @"daemonCrashed"}];
  [coderCopy encodeBool:-[CtrTriggerResult is_threadfw_crash_detected](self forKey:{"is_threadfw_crash_detected"), @"fwCrashed"}];
  [coderCopy encodeBool:-[CtrTriggerResult is_role_detach_disable_detected](self forKey:{"is_role_detach_disable_detected"), @"roleDisableDetached"}];
  [coderCopy encodeBool:-[CtrTriggerResult is_border_router_advertised](self forKey:{"is_border_router_advertised"), @"borderRouterFound"}];
  [coderCopy encodeInt64:-[CtrTriggerResult duration](self forKey:{"duration"), @"duration"}];
}

@end