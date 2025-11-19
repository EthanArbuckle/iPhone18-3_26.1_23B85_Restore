@interface CtrAccessorySpecificTriggerResult
- (CtrAccessorySpecificTriggerResult)initWithAccessoryData:(id)a3 ip_addr:(id)a4 tx_total:(int64_t)a5 tx_total_success:(int64_t)a6 rx_total:(int64_t)a7 rx_total_success:(int64_t)a8 tx_icmp_total:(int64_t)a9 rx_icmp_total:(int64_t)a10 last_known_role:(id)a11 is_current_node_parent:(BOOL)a12 is_link_loss_detected:(BOOL)a13 is_neighbor_table_removal_detected:(BOOL)a14 is_direct_link:(BOOL)a15 avg_rssi:(int64_t)a16 tx_success_perc:(int64_t)a17 rx_success_perc:(int64_t)a18 tx_delayavg:(int64_t)a19 tx_delaymin:(int64_t)a20 tx_delaymax:(int64_t)a21;
@end

@implementation CtrAccessorySpecificTriggerResult

- (CtrAccessorySpecificTriggerResult)initWithAccessoryData:(id)a3 ip_addr:(id)a4 tx_total:(int64_t)a5 tx_total_success:(int64_t)a6 rx_total:(int64_t)a7 rx_total_success:(int64_t)a8 tx_icmp_total:(int64_t)a9 rx_icmp_total:(int64_t)a10 last_known_role:(id)a11 is_current_node_parent:(BOOL)a12 is_link_loss_detected:(BOOL)a13 is_neighbor_table_removal_detected:(BOOL)a14 is_direct_link:(BOOL)a15 avg_rssi:(int64_t)a16 tx_success_perc:(int64_t)a17 rx_success_perc:(int64_t)a18 tx_delayavg:(int64_t)a19 tx_delaymin:(int64_t)a20 tx_delaymax:(int64_t)a21
{
  v27 = a3;
  v28 = a4;
  v29 = a11;
  v34.receiver = self;
  v34.super_class = CtrAccessorySpecificTriggerResult;
  v30 = [(CtrAccessorySpecificTriggerResult *)&v34 init];
  v31 = v30;
  if (v30)
  {
    objc_storeStrong(&v30->_name, a3);
    objc_storeStrong(&v31->_ip_addr, a4);
    v31->_tx_total = a5;
    v31->_tx_total_success = a6;
    v31->_rx_total = a7;
    v31->_rx_total_success = a8;
    v31->_tx_icmp_total = a9;
    v31->_rx_icmp_total = a10;
    objc_storeStrong(&v31->_last_known_role, a11);
    v31->_is_current_node_parent = a12;
    v31->_is_link_loss_detected = a13;
    v31->_is_neighbor_table_removal_detected = a14;
    v31->_is_direct_link = a15;
    v31->_avg_rssi = a16;
    v31->_tx_success_perc = a17;
    v31->_rx_success_perc = a18;
    v31->_tx_delayavg = a19;
    v31->_tx_delaymin = a20;
    v31->_tx_delaymax = a21;
  }

  return v31;
}

@end