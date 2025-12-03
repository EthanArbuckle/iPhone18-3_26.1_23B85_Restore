@interface HMDMediaStreamConfig
- (void)addToDescription:(id)description;
@end

@implementation HMDMediaStreamConfig

- (void)addToDescription:(id)description
{
  descriptionCopy = description;
  [descriptionCopy appendFormat:@"\n"];
  [descriptionCopy appendFormat:@"direction             = %tu\n", -[AVCMediaStreamConfig direction](self, "direction")];
  localAddress = [(AVCMediaStreamConfig *)self localAddress];
  v6 = [localAddress ip];
  [descriptionCopy appendFormat:@"localAddress.ip       = %@\n", v6];

  localAddress2 = [(AVCMediaStreamConfig *)self localAddress];
  [descriptionCopy appendFormat:@"localAddress.port     = %hu\n", objc_msgSend(localAddress2, "port")];

  remoteAddress = [(AVCMediaStreamConfig *)self remoteAddress];
  v9 = [remoteAddress ip];
  [descriptionCopy appendFormat:@"remoteAddress.ip      = %@\n", v9];

  remoteAddress2 = [(AVCMediaStreamConfig *)self remoteAddress];
  [remoteAddress2 isIPv6];
  v11 = HMFBooleanToString();
  [descriptionCopy appendFormat:@"remoteAddress.ipv6    = %@\n", v11];

  remoteAddress3 = [(AVCMediaStreamConfig *)self remoteAddress];
  [descriptionCopy appendFormat:@"remoteAddress.port    = %hu\n", objc_msgSend(remoteAddress3, "port")];

  [descriptionCopy appendFormat:@"txPayloadType         = %tu\n", -[AVCMediaStreamConfig txPayloadType](self, "txPayloadType")];
  [descriptionCopy appendFormat:@"rxPayloadType         = %tu\n", -[AVCMediaStreamConfig rxPayloadType](self, "rxPayloadType")];
  sRTPCipherSuite = [(AVCMediaStreamConfig *)self SRTPCipherSuite];
  v14 = AVCCipherSuiteAsString([(AVCMediaStreamConfig *)self SRTPCipherSuite]);
  [descriptionCopy appendFormat:@"SRTPCipherSuite       = %tu, %@\n", sRTPCipherSuite, v14];

  sRTCPCipherSuite = [(AVCMediaStreamConfig *)self SRTCPCipherSuite];
  v16 = AVCCipherSuiteAsString([(AVCMediaStreamConfig *)self SRTCPCipherSuite]);
  [descriptionCopy appendFormat:@"SRTCPCipherSuite      = %tu, %@\n", sRTCPCipherSuite, v16];

  sendMasterKey = [(AVCMediaStreamConfig *)self sendMasterKey];
  [descriptionCopy appendFormat:@"sendMasterKey         = %@\n", sendMasterKey];

  receiveMasterKey = [(AVCMediaStreamConfig *)self receiveMasterKey];
  [descriptionCopy appendFormat:@"receiveMasterKey      = %@\n", receiveMasterKey];

  [(AVCMediaStreamConfig *)self isRTCPEnabled];
  v19 = HMFEnabledStatusToString();
  [descriptionCopy appendFormat:@"rtcpEnabled           = %@\n", v19];

  [(AVCMediaStreamConfig *)self rtcpSendInterval];
  [descriptionCopy appendFormat:@"rtcpSendInterval      = %lf\n", v20];
  [(AVCMediaStreamConfig *)self isRTCPTimeOutEnabled];
  v21 = HMFEnabledStatusToString();
  [descriptionCopy appendFormat:@"rtcpTimeOutEnabled    = %@\n", v21];

  [(AVCMediaStreamConfig *)self rtcpTimeOutInterval];
  [descriptionCopy appendFormat:@"rtcpTimeOutInterval   = %lf\n", v22];
  [(AVCMediaStreamConfig *)self isRTPTimeOutEnabled];
  v23 = HMFEnabledStatusToString();
  [descriptionCopy appendFormat:@"rtpTimeOutEnabled     = %@\n", v23];

  [(AVCMediaStreamConfig *)self rtpTimeOutInterval];
  [descriptionCopy appendFormat:@"rtpTimeOutInterval    = %lf\n", v24];
  [descriptionCopy appendFormat:@"rtcpRemotePort        = %hu\n", -[AVCMediaStreamConfig rtcpRemotePort](self, "rtcpRemotePort")];
  [descriptionCopy appendFormat:@"remoteSSRC            = %lu\n", -[AVCMediaStreamConfig remoteSSRC](self, "remoteSSRC")];
  [descriptionCopy appendFormat:@"deviceLocalSSRC       = %u\n", -[HMDMediaStreamConfig deviceLocalSSRC](self, "deviceLocalSSRC")];
  [(AVCMediaStreamConfig *)self isRateAdaptationEnabled];
  v25 = HMFEnabledStatusToString();
  [descriptionCopy appendFormat:@"rateAdaptationEnabled = %@\n", v25];
}

@end