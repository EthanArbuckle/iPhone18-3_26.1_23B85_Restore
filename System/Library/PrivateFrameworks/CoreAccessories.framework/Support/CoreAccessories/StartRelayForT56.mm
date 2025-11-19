@interface StartRelayForT56
@end

@implementation StartRelayForT56

uint64_t __mfi4Auth_relay_StartRelayForT56_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogObjects && gNumLogObjects >= 56)
  {
    v6 = *(gLogObjects + 440);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
    }

    v6 = &_os_log_default;
    v7 = &_os_log_default;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v9 = 138412546;
    v10 = a2;
    v11 = 2112;
    v12 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "processOutgoingSecureTunnelDataForClient: %@, data %@", &v9, 0x16u);
  }

  return acc_manager_processIncomingDataForEndpointWithUUID(*(a1 + 32), a3);
}

@end