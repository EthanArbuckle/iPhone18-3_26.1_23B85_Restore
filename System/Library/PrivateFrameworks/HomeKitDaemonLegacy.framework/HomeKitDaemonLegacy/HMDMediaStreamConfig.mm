@interface HMDMediaStreamConfig
- (void)addToDescription:(id)a3;
@end

@implementation HMDMediaStreamConfig

- (void)addToDescription:(id)a3
{
  v4 = a3;
  [v4 appendFormat:@"\n"];
  [v4 appendFormat:@"direction             = %tu\n", -[AVCMediaStreamConfig direction](self, "direction")];
  v5 = [(AVCMediaStreamConfig *)self localAddress];
  v6 = [v5 ip];
  [v4 appendFormat:@"localAddress.ip       = %@\n", v6];

  v7 = [(AVCMediaStreamConfig *)self localAddress];
  [v4 appendFormat:@"localAddress.port     = %hu\n", objc_msgSend(v7, "port")];

  v8 = [(AVCMediaStreamConfig *)self remoteAddress];
  v9 = [v8 ip];
  [v4 appendFormat:@"remoteAddress.ip      = %@\n", v9];

  v10 = [(AVCMediaStreamConfig *)self remoteAddress];
  [v10 isIPv6];
  v11 = HMFBooleanToString();
  [v4 appendFormat:@"remoteAddress.ipv6    = %@\n", v11];

  v12 = [(AVCMediaStreamConfig *)self remoteAddress];
  [v4 appendFormat:@"remoteAddress.port    = %hu\n", objc_msgSend(v12, "port")];

  [v4 appendFormat:@"txPayloadType         = %tu\n", -[AVCMediaStreamConfig txPayloadType](self, "txPayloadType")];
  [v4 appendFormat:@"rxPayloadType         = %tu\n", -[AVCMediaStreamConfig rxPayloadType](self, "rxPayloadType")];
  v13 = [(AVCMediaStreamConfig *)self SRTPCipherSuite];
  v14 = AVCCipherSuiteAsString([(AVCMediaStreamConfig *)self SRTPCipherSuite]);
  [v4 appendFormat:@"SRTPCipherSuite       = %tu, %@\n", v13, v14];

  v15 = [(AVCMediaStreamConfig *)self SRTCPCipherSuite];
  v16 = AVCCipherSuiteAsString([(AVCMediaStreamConfig *)self SRTCPCipherSuite]);
  [v4 appendFormat:@"SRTCPCipherSuite      = %tu, %@\n", v15, v16];

  v17 = [(AVCMediaStreamConfig *)self sendMasterKey];
  [v4 appendFormat:@"sendMasterKey         = %@\n", v17];

  v18 = [(AVCMediaStreamConfig *)self receiveMasterKey];
  [v4 appendFormat:@"receiveMasterKey      = %@\n", v18];

  [(AVCMediaStreamConfig *)self isRTCPEnabled];
  v19 = HMFEnabledStatusToString();
  [v4 appendFormat:@"rtcpEnabled           = %@\n", v19];

  [(AVCMediaStreamConfig *)self rtcpSendInterval];
  [v4 appendFormat:@"rtcpSendInterval      = %lf\n", v20];
  [(AVCMediaStreamConfig *)self isRTCPTimeOutEnabled];
  v21 = HMFEnabledStatusToString();
  [v4 appendFormat:@"rtcpTimeOutEnabled    = %@\n", v21];

  [(AVCMediaStreamConfig *)self rtcpTimeOutInterval];
  [v4 appendFormat:@"rtcpTimeOutInterval   = %lf\n", v22];
  [(AVCMediaStreamConfig *)self isRTPTimeOutEnabled];
  v23 = HMFEnabledStatusToString();
  [v4 appendFormat:@"rtpTimeOutEnabled     = %@\n", v23];

  [(AVCMediaStreamConfig *)self rtpTimeOutInterval];
  [v4 appendFormat:@"rtpTimeOutInterval    = %lf\n", v24];
  [v4 appendFormat:@"rtcpRemotePort        = %hu\n", -[AVCMediaStreamConfig rtcpRemotePort](self, "rtcpRemotePort")];
  [v4 appendFormat:@"remoteSSRC            = %lu\n", -[AVCMediaStreamConfig remoteSSRC](self, "remoteSSRC")];
  [v4 appendFormat:@"deviceLocalSSRC       = %u\n", -[HMDMediaStreamConfig deviceLocalSSRC](self, "deviceLocalSSRC")];
  [(AVCMediaStreamConfig *)self isRateAdaptationEnabled];
  v25 = HMFEnabledStatusToString();
  [v4 appendFormat:@"rateAdaptationEnabled = %@\n", v25];
}

@end