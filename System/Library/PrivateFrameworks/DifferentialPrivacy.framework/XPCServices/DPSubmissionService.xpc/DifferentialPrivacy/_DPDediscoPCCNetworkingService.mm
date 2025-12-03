@interface _DPDediscoPCCNetworkingService
- (id)submitSyncronouslyWithSerializedPayload:(id)payload baaCertificateChain:(id)chain baaSignature:(id)signature options:(int64_t)options;
@end

@implementation _DPDediscoPCCNetworkingService

- (id)submitSyncronouslyWithSerializedPayload:(id)payload baaCertificateChain:(id)chain baaSignature:(id)signature options:(int64_t)options
{
  payloadCopy = payload;
  chainCopy = chain;
  signatureCopy = signature;
  selfCopy = self;
  v13 = sub_100050300();
  v15 = v14;

  v16 = sub_100050300();
  v18 = v17;

  v19 = _s19DPSubmissionService023_DPDediscoPCCNetworkingB0C18submitSyncronously17serializedPayload19baaCertificateChain0I9Signature7optionsSo7NSErrorCSg10Foundation4DataV_AA017_DPBAACertificateK0CANSo24DediscoNetworkingOptionsVtF_0(v13, v15, chainCopy, v16, v18);
  sub_100013E20(v16, v18);
  sub_100013E20(v13, v15);

  return v19;
}

@end