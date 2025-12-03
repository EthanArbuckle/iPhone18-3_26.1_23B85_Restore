@interface _IDSDataChannelLinkContext
- (id)description;
@end

@implementation _IDSDataChannelLinkContext

- (id)description
{
  linkID = self->_linkID;
  v26 = MEMORY[0x1E696AEC0];
  uUIDString = [(NSUUID *)self->_linkUUID UUIDString];
  uUIDString2 = [(NSUUID *)self->_QRSessionID UUIDString];
  v5 = self->_connectionType - 1;
  if (v5 > 4)
  {
    v6 = "---";
  }

  else
  {
    v6 = off_1E7442F78[v5];
  }

  v24 = v6;
  networkType = self->_networkType;
  maxMTU = self->_maxMTU;
  estimatedPerPacketConstantOverhead = self->_estimatedPerPacketConstantOverhead;
  RATType = self->_RATType;
  maxBitrate = self->_maxBitrate;
  remoteNetworkType = self->_remoteNetworkType;
  v11 = self->_remoteConnectionType - 1;
  if (v11 > 4)
  {
    v12 = "---";
  }

  else
  {
    v12 = off_1E7442F78[v11];
  }

  remoteRATType = self->_remoteRATType;
  relayServerProvider = self->_relayServerProvider;
  v15 = [(NSData *)self->_relaySessionToken length];
  v16 = @"NO";
  if (self->_serverIsDegraded)
  {
    v17 = @"YES";
  }

  else
  {
    v17 = @"NO";
  }

  if (self->_isVirtualRelayLink)
  {
    v18 = @"YES";
  }

  else
  {
    v18 = @"NO";
  }

  if (self->_isPartialTLEUPlusOneEnabled)
  {
    v19 = @"YES";
  }

  else
  {
    v19 = @"NO";
  }

  if (self->_isQualityMetadataEnabled)
  {
    v16 = @"YES";
  }

  v20 = [v26 stringWithFormat:@"<LinkContext %p> linkID %d (UUID:%@, QRSessionID:%@) networkType %u connectionType %s maxMTU %u estimatedConstantOverhead %u RATType %lu maxBitrate %u (remote networkType %u connectionType %s RATType %lu), relay(provider:%d, token:%dB) serverIsDegraded: %@ localLinkFlags 0x%x remoteLinkFlags 0x%x, localDataSoMask: %u, remoteDataSoMask: %u, virtualRelayLink: %@, delegatedLinkID %d, localInterfaceName: %@, relayProtocolStack: %@, isPartialTLEForUPlusOneEnabled: %@, quality metadata: %@, connections: %@, featureFlags: %@, qrExperiments: %@", self, linkID, uUIDString, uUIDString2, networkType, v24, maxMTU, estimatedPerPacketConstantOverhead, RATType, maxBitrate, remoteNetworkType, v12, remoteRATType, relayServerProvider, v15, v17, self->_localLinkFlags, self->_remoteLinkFlags, self->_localDataSoMask, self->_remoteDataSoMask, v18, self->_delegatedLinkID, self->_localInterfaceName, self->_relayProtocolStackDescription, v19, v16, self->_connections, self->_featureFlags, self->_qrExperiments];

  return v20;
}

@end