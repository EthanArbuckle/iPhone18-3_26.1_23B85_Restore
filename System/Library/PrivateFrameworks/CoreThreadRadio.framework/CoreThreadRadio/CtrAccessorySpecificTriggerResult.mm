@interface CtrAccessorySpecificTriggerResult
- (CtrAccessorySpecificTriggerResult)initWithAccessoryData:(id)data ip_addr:(id)ip_addr tx_total:(int64_t)tx_total tx_total_success:(int64_t)tx_total_success rx_total:(int64_t)rx_total rx_total_success:(int64_t)rx_total_success tx_icmp_total:(int64_t)tx_icmp_total rx_icmp_total:(int64_t)self0 last_known_role:(id)self1 is_current_node_parent:(BOOL)self2 is_link_loss_detected:(BOOL)self3 is_neighbor_table_removal_detected:(BOOL)self4 is_direct_link:(BOOL)self5 avg_rssi:(int64_t)self6 tx_success_perc:(int64_t)self7 rx_success_perc:(int64_t)self8 tx_delayavg:(int64_t)self9 tx_delaymin:(int64_t)tx_delaymin tx_delaymax:(int64_t)tx_delaymax;
@end

@implementation CtrAccessorySpecificTriggerResult

- (CtrAccessorySpecificTriggerResult)initWithAccessoryData:(id)data ip_addr:(id)ip_addr tx_total:(int64_t)tx_total tx_total_success:(int64_t)tx_total_success rx_total:(int64_t)rx_total rx_total_success:(int64_t)rx_total_success tx_icmp_total:(int64_t)tx_icmp_total rx_icmp_total:(int64_t)self0 last_known_role:(id)self1 is_current_node_parent:(BOOL)self2 is_link_loss_detected:(BOOL)self3 is_neighbor_table_removal_detected:(BOOL)self4 is_direct_link:(BOOL)self5 avg_rssi:(int64_t)self6 tx_success_perc:(int64_t)self7 rx_success_perc:(int64_t)self8 tx_delayavg:(int64_t)self9 tx_delaymin:(int64_t)tx_delaymin tx_delaymax:(int64_t)tx_delaymax
{
  dataCopy = data;
  ip_addrCopy = ip_addr;
  last_known_roleCopy = last_known_role;
  v34.receiver = self;
  v34.super_class = CtrAccessorySpecificTriggerResult;
  v30 = [(CtrAccessorySpecificTriggerResult *)&v34 init];
  v31 = v30;
  if (v30)
  {
    objc_storeStrong(&v30->_name, data);
    objc_storeStrong(&v31->_ip_addr, ip_addr);
    v31->_tx_total = tx_total;
    v31->_tx_total_success = tx_total_success;
    v31->_rx_total = rx_total;
    v31->_rx_total_success = rx_total_success;
    v31->_tx_icmp_total = tx_icmp_total;
    v31->_rx_icmp_total = rx_icmp_total;
    objc_storeStrong(&v31->_last_known_role, last_known_role);
    v31->_is_current_node_parent = is_current_node_parent;
    v31->_is_link_loss_detected = is_link_loss_detected;
    v31->_is_neighbor_table_removal_detected = is_neighbor_table_removal_detected;
    v31->_is_direct_link = is_direct_link;
    v31->_avg_rssi = avg_rssi;
    v31->_tx_success_perc = tx_success_perc;
    v31->_rx_success_perc = rx_success_perc;
    v31->_tx_delayavg = tx_delayavg;
    v31->_tx_delaymin = tx_delaymin;
    v31->_tx_delaymax = tx_delaymax;
  }

  return v31;
}

@end