@interface IDSEndpointCapabilities
+ (id)allowedCapabilities;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToEndpointCapabilites:(id)capabilites;
- (IDSEndpointCapabilities)initWithCapabilitiesMap:(id)map;
- (IDSEndpointCapabilities)initWithCoder:(id)coder;
- (id)debugDescription;
- (int64_t)valueForCapability:(id)capability;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSEndpointCapabilities

+ (id)allowedCapabilities
{
  v4[117] = *MEMORY[0x1E69E9840];
  v4[0] = @"supports-key-sharing";
  v4[1] = @"supports-harmony";
  v4[2] = @"supports-fmd-v2";
  v4[3] = @"supports-fm-fence-v1";
  v4[4] = @"supports-location-sharing";
  v4[5] = @"supports-screen-time-v2";
  v4[6] = @"supports-incoming-fmd-v1";
  v4[7] = @"supports-secure-loc-v1";
  v4[8] = @"supports-activity-sharing-v1";
  v4[9] = @"supports-manatee-for-apple-cash";
  v4[10] = @"supports-region-for-apple-cash";
  v4[11] = @"supports-hk-resident";
  v4[12] = @"supports-maps-routing-path-leg";
  v4[13] = @"supports-maps-wgs84-elevation-model";
  v4[14] = @"supports-beacon-sharing-v2";
  v4[15] = @"supports-beneficiary-invites";
  v4[16] = @"supports-st-er";
  v4[17] = @"supports-maps-waypoint-route-sharing";
  v4[18] = @"supports-maps-protocol-v5";
  v4[19] = @"supports-cross-platform-sharing";
  v4[20] = @"supports-zelkova";
  v4[21] = @"supports-people-ranging-v1";
  v4[22] = @"supports-beacon-sharing-v3";
  v4[23] = @"supports-gft-relay";
  v4[24] = @"supports-manatee-activity-sharing";
  v4[25] = @"supports-restricted-guest";
  v4[26] = @"supports-adaptive-temperature-automations";
  v4[27] = @"supports-remote-atv-signin";
  v4[28] = @"supports-user-driven-call-activation";
  v4[29] = @"supports-legacy-contact-invites-v1";
  v4[30] = @"supports-legacy-contact-invites-v2";
  v4[31] = @"supports-legacy-contact-invites-v3";
  v4[32] = @"ec-version";
  v4[33] = @"is-c2k-equipment";
  v4[34] = @"show-peer-errors";
  v4[35] = @"nicknames-version";
  v4[36] = @"optionally-receive-typing-indicators";
  v4[37] = @"supports-inline-attachments";
  v4[38] = @"supports-keep-receipts";
  v4[39] = @"supports-st-v1";
  v4[40] = @"supports-ca-v1";
  v4[41] = @"supports-be-v1";
  v4[42] = @"supports-ack-v1";
  v4[43] = @"supports-fsm-v1";
  v4[44] = @"supports-fsm-v2";
  v4[45] = @"supports-fsm-v3";
  v4[46] = @"supports-ii-v1";
  v4[47] = @"supports-impact-v1";
  v4[48] = @"supports-update-attachments-v1";
  v4[49] = @"supports-autoloopvideo-v1";
  v4[50] = @"supports-media-v2";
  v4[51] = @"supports-photos-extension-v1";
  v4[52] = @"supports-photos-extension-v2";
  v4[53] = @"supports-audio-messaging-v2";
  v4[54] = @"supports-animoji-v2";
  v4[55] = @"supports-certified-delivery-v1";
  v4[56] = @"supports-original-timestamp-v1";
  v4[57] = @"supports-protobuf-payload-data-v2";
  v4[58] = @"supports-heif";
  v4[59] = @"supports-hdr";
  v4[60] = @"prefers-sdr";
  v4[61] = @"supports-qta";
  v4[62] = @"supports-sa-v1";
  v4[63] = @"supports-uwb";
  v4[64] = @"supports-dq-nr";
  v4[65] = @"supports-rem";
  v4[66] = @"supports-people-request-messages";
  v4[67] = @"supports-family-invite-message-bubble";
  v4[68] = @"supports-people-request-messages-v2";
  v4[69] = @"supports-askto";
  v4[70] = @"supports-askto-v2";
  v4[71] = @"supports-askto-responseUI";
  v4[72] = @"supports-emoji-stickers";
  v4[73] = @"supports-sticker-editing";
  v4[74] = @"supports-transcript-backgrounds";
  v4[75] = @"supports-polls";
  v4[76] = @"supports-lqm-hq";
  v4[77] = @"supports-gti";
  v4[78] = @"supports-aot";
  v4[79] = @"supports-hybrid-groups-v1";
  v4[80] = @"supports-findmy-plugin-messages";
  v4[81] = @"supports-sos-alerting";
  v4[82] = @"supports-people-request-messages-v3";
  v4[83] = @"supports-recurring-payment-bubbles";
  v4[84] = @"supports-group-apple-cash";
  v4[85] = @"supports-group-photo-refresh-version";
  v4[86] = @"supports-emoji-tapbacks";
  v4[87] = @"supports-send-later-messages";
  v4[88] = @"supports-emoji-images";
  v4[89] = @"supports-stick-moji-backs";
  v4[90] = @"supports-high-quality-photo-file-sizes";
  v4[91] = @"supports-stewie";
  v4[92] = @"sender-key-message-version";
  v4[93] = @"supports-sender-key-v1";
  v4[94] = @"supports-uriless-membership-updates";
  v4[95] = @"supports-sender-key-self-check";
  v4[96] = @"supports-recovery-contact-upsell";
  v4[97] = @"supports-rbm-chatbot";
  v4[98] = @"supports-queue-one-read-receipts";
  v4[99] = @"supports-queue-one-read-receipts-v2";
  v4[100] = @"supports-introductions-v1";
  v4[101] = @"supports-ckv-enforcement";
  v4[102] = @"supports-modern-gft";
  v4[103] = @"supports-co";
  v4[104] = @"is-green-tea";
  v4[105] = @"supports-gft-errors";
  v4[106] = @"supports-gft-calls";
  v4[107] = @"is-web-client";
  v4[108] = @"supports-avless";
  v4[109] = @"supports-self-one-to-one-invites";
  v4[110] = @"supports-hi-res-vid";
  v4[111] = @"supports-live-translation";
  v4[112] = @"supports-nearby-facetime";
  v4[113] = @"supports-ssrc";
  v4[114] = @"supports-calls-25";
  v4[115] = @"gs-supports-friending-via-push";
  v4[116] = @"gs-supports-message-transport-v2";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:117];

  return v2;
}

- (IDSEndpointCapabilities)initWithCapabilitiesMap:(id)map
{
  v137 = *MEMORY[0x1E69E9840];
  mapCopy = map;
  v135.receiver = self;
  v135.super_class = IDSEndpointCapabilities;
  v5 = [(IDSEndpointCapabilities *)&v135 init];

  if (v5)
  {
    v133 = 0u;
    v134 = 0u;
    v131 = 0u;
    v132 = 0u;
    v128 = mapCopy;
    v6 = mapCopy;
    v130 = [v6 countByEnumeratingWithState:&v131 objects:v136 count:16];
    if (v130)
    {
      v129 = *v132;
      do
      {
        for (i = 0; i != v130; ++i)
        {
          if (*v132 != v129)
          {
            objc_enumerationMutation(v6);
          }

          v8 = *(*(&v131 + 1) + 8 * i);
          if ([v8 isEqualToString:@"supports-key-sharing"])
          {
            v9 = [v6 objectForKey:@"supports-key-sharing"];
            v5->_supportsKeySharing = [v9 shortValue];
          }

          if ([v8 isEqualToString:@"supports-harmony"])
          {
            v10 = [v6 objectForKey:@"supports-harmony"];
            v5->_supportsHarmony = [v10 shortValue];
          }

          if ([v8 isEqualToString:@"supports-fmd-v2"])
          {
            v11 = [v6 objectForKey:@"supports-fmd-v2"];
            v5->_supportsFMDV2 = [v11 shortValue];
          }

          if ([v8 isEqualToString:@"supports-fm-fence-v1"])
          {
            v12 = [v6 objectForKey:@"supports-fm-fence-v1"];
            v5->_supportsFMFenceV1 = [v12 shortValue];
          }

          if ([v8 isEqualToString:@"supports-location-sharing"])
          {
            v13 = [v6 objectForKey:@"supports-location-sharing"];
            v5->_supportsLocationSharing = [v13 shortValue];
          }

          if ([v8 isEqualToString:@"supports-screen-time-v2"])
          {
            v14 = [v6 objectForKey:@"supports-screen-time-v2"];
            v5->_supportsScreenTimeV2 = [v14 shortValue];
          }

          if ([v8 isEqualToString:@"supports-incoming-fmd-v1"])
          {
            v15 = [v6 objectForKey:@"supports-incoming-fmd-v1"];
            v5->_supportsIncomingFindMyV1 = [v15 shortValue];
          }

          if ([v8 isEqualToString:@"supports-secure-loc-v1"])
          {
            v16 = [v6 objectForKey:@"supports-secure-loc-v1"];
            v5->_supportsSecureLocationsV1 = [v16 shortValue];
          }

          if ([v8 isEqualToString:@"supports-activity-sharing-v1"])
          {
            v17 = [v6 objectForKey:@"supports-activity-sharing-v1"];
            v5->_supportsActivitySharing = [v17 shortValue];
          }

          if ([v8 isEqualToString:@"supports-manatee-for-apple-cash"])
          {
            v18 = [v6 objectForKey:@"supports-manatee-for-apple-cash"];
            v5->_supportsManateeForAppleCash = [v18 shortValue];
          }

          if ([v8 isEqualToString:@"supports-region-for-apple-cash"])
          {
            v19 = [v6 objectForKey:@"supports-region-for-apple-cash"];
            v5->_supportsRegionForAppleCash = [v19 shortValue];
          }

          if ([v8 isEqualToString:@"supports-hk-resident"])
          {
            v20 = [v6 objectForKey:@"supports-hk-resident"];
            v5->_supportsHomeKitResident = [v20 shortValue];
          }

          if ([v8 isEqualToString:@"supports-maps-routing-path-leg"])
          {
            v21 = [v6 objectForKey:@"supports-maps-routing-path-leg"];
            v5->_supportsMapsRoutingPathLeg = [v21 shortValue];
          }

          if ([v8 isEqualToString:@"supports-maps-wgs84-elevation-model"])
          {
            v22 = [v6 objectForKey:@"supports-maps-wgs84-elevation-model"];
            v5->_supportsMapsWGS84ElevationModel = [v22 shortValue];
          }

          if ([v8 isEqualToString:@"supports-beacon-sharing-v2"])
          {
            v23 = [v6 objectForKey:@"supports-beacon-sharing-v2"];
            v5->_supportsBeaconSharingV2 = [v23 shortValue];
          }

          if ([v8 isEqualToString:@"supports-beneficiary-invites"])
          {
            v24 = [v6 objectForKey:@"supports-beneficiary-invites"];
            v5->_supportsBeneficiaryInvites = [v24 shortValue];
          }

          if ([v8 isEqualToString:@"supports-st-er"])
          {
            v25 = [v6 objectForKey:@"supports-st-er"];
            v5->_supportsScreenTimeErrors = [v25 shortValue];
          }

          if ([v8 isEqualToString:@"supports-maps-waypoint-route-sharing"])
          {
            v26 = [v6 objectForKey:@"supports-maps-waypoint-route-sharing"];
            v5->_supportsMapsWaypointRouteSharing = [v26 shortValue];
          }

          if ([v8 isEqualToString:@"supports-maps-protocol-v5"])
          {
            v27 = [v6 objectForKey:@"supports-maps-protocol-v5"];
            v5->_supportsMapsProtocolV5 = [v27 shortValue];
          }

          if ([v8 isEqualToString:@"supports-cross-platform-sharing"])
          {
            v28 = [v6 objectForKey:@"supports-cross-platform-sharing"];
            v5->_supportsCrossPlatformSharing = [v28 shortValue];
          }

          if ([v8 isEqualToString:@"supports-zelkova"])
          {
            v29 = [v6 objectForKey:@"supports-zelkova"];
            v5->_supportsZelkova = [v29 shortValue];
          }

          if ([v8 isEqualToString:@"supports-people-ranging-v1"])
          {
            v30 = [v6 objectForKey:@"supports-people-ranging-v1"];
            v5->_supportsPeopleRangingV1 = [v30 shortValue];
          }

          if ([v8 isEqualToString:@"supports-beacon-sharing-v3"])
          {
            v31 = [v6 objectForKey:@"supports-beacon-sharing-v3"];
            v5->_supportsBeaconSharingV3 = [v31 shortValue];
          }

          if ([v8 isEqualToString:@"supports-gft-relay"])
          {
            v32 = [v6 objectForKey:@"supports-gft-relay"];
            v5->_supportsGFTRelay = [v32 shortValue];
          }

          if ([v8 isEqualToString:@"supports-manatee-activity-sharing"])
          {
            v33 = [v6 objectForKey:@"supports-manatee-activity-sharing"];
            v5->_supportsManateeActivitySharing = [v33 shortValue];
          }

          if ([v8 isEqualToString:@"supports-restricted-guest"])
          {
            v34 = [v6 objectForKey:@"supports-restricted-guest"];
            v5->_supportsRestrictedGuest = [v34 shortValue];
          }

          if ([v8 isEqualToString:@"supports-adaptive-temperature-automations"])
          {
            v35 = [v6 objectForKey:@"supports-adaptive-temperature-automations"];
            v5->_supportsAdaptiveTemperatureAutomations = [v35 shortValue];
          }

          if ([v8 isEqualToString:@"supports-remote-atv-signin"])
          {
            v36 = [v6 objectForKey:@"supports-remote-atv-signin"];
            v5->_supportsRemoteATVSignIn = [v36 shortValue];
          }

          if ([v8 isEqualToString:@"supports-user-driven-call-activation"])
          {
            v37 = [v6 objectForKey:@"supports-user-driven-call-activation"];
            v5->_supportsUserDrivenCallActivation = [v37 shortValue];
          }

          if ([v8 isEqualToString:@"supports-legacy-contact-invites-v1"])
          {
            v38 = [v6 objectForKey:@"supports-legacy-contact-invites-v1"];
            v5->_supportsLegacyContactInvitesV1 = [v38 shortValue];
          }

          if ([v8 isEqualToString:@"supports-legacy-contact-invites-v2"])
          {
            v39 = [v6 objectForKey:@"supports-legacy-contact-invites-v2"];
            v5->_supportsLegacyContactInvitesV2 = [v39 shortValue];
          }

          if ([v8 isEqualToString:@"supports-legacy-contact-invites-v3"])
          {
            v40 = [v6 objectForKey:@"supports-legacy-contact-invites-v3"];
            v5->_supportsLegacyContactInvitesV3 = [v40 shortValue];
          }

          if ([v8 isEqualToString:@"ec-version"])
          {
            v41 = [v6 objectForKey:@"ec-version"];
            v5->_ecVersion = [v41 shortValue];
          }

          if ([v8 isEqualToString:@"is-c2k-equipment"])
          {
            v42 = [v6 objectForKey:@"is-c2k-equipment"];
            v5->_isC2KEquipment = [v42 shortValue];
          }

          if ([v8 isEqualToString:@"show-peer-errors"])
          {
            v43 = [v6 objectForKey:@"show-peer-errors"];
            v5->_showPeerErrors = [v43 shortValue];
          }

          if ([v8 isEqualToString:@"nicknames-version"])
          {
            v44 = [v6 objectForKey:@"nicknames-version"];
            v5->_nicknamesVersion = [v44 shortValue];
          }

          if ([v8 isEqualToString:@"optionally-receive-typing-indicators"])
          {
            v45 = [v6 objectForKey:@"optionally-receive-typing-indicators"];
            v5->_optionallyReceiveTypingIndicator = [v45 shortValue];
          }

          if ([v8 isEqualToString:@"supports-inline-attachments"])
          {
            v46 = [v6 objectForKey:@"supports-inline-attachments"];
            v5->_supportsInlineAttachments = [v46 shortValue];
          }

          if ([v8 isEqualToString:@"supports-keep-receipts"])
          {
            v47 = [v6 objectForKey:@"supports-keep-receipts"];
            v5->_supportsKeepReceipts = [v47 shortValue];
          }

          if ([v8 isEqualToString:@"supports-st-v1"])
          {
            v48 = [v6 objectForKey:@"supports-st-v1"];
            v5->_supportsStickersV1 = [v48 shortValue];
          }

          if ([v8 isEqualToString:@"supports-ca-v1"])
          {
            v49 = [v6 objectForKey:@"supports-ca-v1"];
            v5->_supportsChatAppsV1 = [v49 shortValue];
          }

          if ([v8 isEqualToString:@"supports-be-v1"])
          {
            v50 = [v6 objectForKey:@"supports-be-v1"];
            v5->_supportsBubbleEditingV1 = [v50 shortValue];
          }

          if ([v8 isEqualToString:@"supports-ack-v1"])
          {
            v51 = [v6 objectForKey:@"supports-ack-v1"];
            v5->_supportsAcknowledgementsV1 = [v51 shortValue];
          }

          if ([v8 isEqualToString:@"supports-fsm-v1"])
          {
            v52 = [v6 objectForKey:@"supports-fsm-v1"];
            v5->_supportsFullScreenMomentsV1 = [v52 shortValue];
          }

          if ([v8 isEqualToString:@"supports-fsm-v2"])
          {
            v53 = [v6 objectForKey:@"supports-fsm-v2"];
            v5->_supportsFullScreenMomentsV2 = [v53 shortValue];
          }

          if ([v8 isEqualToString:@"supports-fsm-v3"])
          {
            v54 = [v6 objectForKey:@"supports-fsm-v3"];
            v5->_supportsFullScreenMomentsV3 = [v54 shortValue];
          }

          if ([v8 isEqualToString:@"supports-ii-v1"])
          {
            v55 = [v6 objectForKey:@"supports-ii-v1"];
            v5->_supportsInvisibleInkV1 = [v55 shortValue];
          }

          if ([v8 isEqualToString:@"supports-impact-v1"])
          {
            v56 = [v6 objectForKey:@"supports-impact-v1"];
            v5->_supportsImpactEffectsV1 = [v56 shortValue];
          }

          if ([v8 isEqualToString:@"supports-update-attachments-v1"])
          {
            v57 = [v6 objectForKey:@"supports-update-attachments-v1"];
            v5->_supportsUpdateAttachmentsV1 = [v57 shortValue];
          }

          if ([v8 isEqualToString:@"supports-autoloopvideo-v1"])
          {
            v58 = [v6 objectForKey:@"supports-autoloopvideo-v1"];
            v5->_supportsAutoloopVideoV1 = [v58 shortValue];
          }

          if ([v8 isEqualToString:@"supports-media-v2"])
          {
            v59 = [v6 objectForKey:@"supports-media-v2"];
            v5->_supportsMediaV2 = [v59 shortValue];
          }

          if ([v8 isEqualToString:@"supports-photos-extension-v1"])
          {
            v60 = [v6 objectForKey:@"supports-photos-extension-v1"];
            v5->_supportsPhotosExtensionV1 = [v60 shortValue];
          }

          if ([v8 isEqualToString:@"supports-photos-extension-v2"])
          {
            v61 = [v6 objectForKey:@"supports-photos-extension-v2"];
            v5->_supportsPhotosExtensionV2 = [v61 shortValue];
          }

          if ([v8 isEqualToString:@"supports-audio-messaging-v2"])
          {
            v62 = [v6 objectForKey:@"supports-audio-messaging-v2"];
            v5->_supportsAudioMessagingV2 = [v62 shortValue];
          }

          if ([v8 isEqualToString:@"supports-animoji-v2"])
          {
            v63 = [v6 objectForKey:@"supports-animoji-v2"];
            v5->_supportsAnimojiV2 = [v63 shortValue];
          }

          if ([v8 isEqualToString:@"supports-certified-delivery-v1"])
          {
            v64 = [v6 objectForKey:@"supports-certified-delivery-v1"];
            v5->_supportsCertifiedDeliveryV1 = [v64 shortValue];
          }

          if ([v8 isEqualToString:@"supports-original-timestamp-v1"])
          {
            v65 = [v6 objectForKey:@"supports-original-timestamp-v1"];
            v5->_supportsOriginalTimestampOrderingV1 = [v65 shortValue];
          }

          if ([v8 isEqualToString:@"supports-protobuf-payload-data-v2"])
          {
            v66 = [v6 objectForKey:@"supports-protobuf-payload-data-v2"];
            v5->_supportsProtobufPayloadDataV2 = [v66 shortValue];
          }

          if ([v8 isEqualToString:@"supports-heif"])
          {
            v67 = [v6 objectForKey:@"supports-heif"];
            v5->_supportsHEIFEncoding = [v67 shortValue];
          }

          if ([v8 isEqualToString:@"supports-hdr"])
          {
            v68 = [v6 objectForKey:@"supports-hdr"];
            v5->_supportsHDRVideo = [v68 shortValue];
          }

          if ([v8 isEqualToString:@"prefers-sdr"])
          {
            v69 = [v6 objectForKey:@"prefers-sdr"];
            v5->_prefersSDRVideo = [v69 shortValue];
          }

          if ([v8 isEqualToString:@"supports-qta"])
          {
            v70 = [v6 objectForKey:@"supports-qta"];
            v5->_supportsQTAAudio = [v70 shortValue];
          }

          if ([v8 isEqualToString:@"supports-sa-v1"])
          {
            v71 = [v6 objectForKey:@"supports-sa-v1"];
            v5->_supportsSyndicationActionsV1 = [v71 shortValue];
          }

          if ([v8 isEqualToString:@"supports-uwb"])
          {
            v72 = [v6 objectForKey:@"supports-uwb"];
            v5->_supportsUWB = [v72 shortValue];
          }

          if ([v8 isEqualToString:@"supports-dq-nr"])
          {
            v73 = [v6 objectForKey:@"supports-dq-nr"];
            v5->_supportsDeliveredQuietlyAndNotifyRecipient = [v73 shortValue];
          }

          if ([v8 isEqualToString:@"supports-rem"])
          {
            v74 = [v6 objectForKey:@"supports-rem"];
            v5->_supportsRetractAndEditMessages = [v74 shortValue];
          }

          if ([v8 isEqualToString:@"supports-people-request-messages"])
          {
            v75 = [v6 objectForKey:@"supports-people-request-messages"];
            v5->_supportsPeopleRequestMessages = [v75 shortValue];
          }

          if ([v8 isEqualToString:@"supports-family-invite-message-bubble"])
          {
            v76 = [v6 objectForKey:@"supports-family-invite-message-bubble"];
            v5->_supportsFamilyInviteMessageBubble = [v76 shortValue];
          }

          if ([v8 isEqualToString:@"supports-people-request-messages-v2"])
          {
            v77 = [v6 objectForKey:@"supports-people-request-messages-v2"];
            v5->_supportsPeopleRequestMessagesV2 = [v77 shortValue];
          }

          if ([v8 isEqualToString:@"supports-askto"])
          {
            v78 = [v6 objectForKey:@"supports-askto"];
            v5->_supportsAskTo = [v78 shortValue];
          }

          if ([v8 isEqualToString:@"supports-askto-v2"])
          {
            v79 = [v6 objectForKey:@"supports-askto-v2"];
            v5->_supportsAskToV2 = [v79 shortValue];
          }

          if ([v8 isEqualToString:@"supports-askto-responseUI"])
          {
            v80 = [v6 objectForKey:@"supports-askto-responseUI"];
            v5->_supportsAskToResponseUI = [v80 shortValue];
          }

          if ([v8 isEqualToString:@"supports-emoji-stickers"])
          {
            v81 = [v6 objectForKey:@"supports-emoji-stickers"];
            v5->_supportsEmojiStickers = [v81 shortValue];
          }

          if ([v8 isEqualToString:@"supports-sticker-editing"])
          {
            v82 = [v6 objectForKey:@"supports-sticker-editing"];
            v5->_supportsStickerEditing = [v82 shortValue];
          }

          if ([v8 isEqualToString:@"supports-transcript-backgrounds"])
          {
            v83 = [v6 objectForKey:@"supports-transcript-backgrounds"];
            v5->_supportsTranscriptBackgrounds = [v83 shortValue];
          }

          if ([v8 isEqualToString:@"supports-polls"])
          {
            v84 = [v6 objectForKey:@"supports-polls"];
            v5->_supportsPolls = [v84 shortValue];
          }

          if ([v8 isEqualToString:@"supports-lqm-hq"])
          {
            v85 = [v6 objectForKey:@"supports-lqm-hq"];
            v5->_supportsLQMHQ = [v85 shortValue];
          }

          if ([v8 isEqualToString:@"supports-gti"])
          {
            v86 = [v6 objectForKey:@"supports-gti"];
            v5->_supportsGroupTypingIndicators = [v86 shortValue];
          }

          if ([v8 isEqualToString:@"supports-aot"])
          {
            v87 = [v6 objectForKey:@"supports-aot"];
            v5->_supportsAutomaticTranslation = [v87 shortValue];
          }

          if ([v8 isEqualToString:@"supports-hybrid-groups-v1"])
          {
            v88 = [v6 objectForKey:@"supports-hybrid-groups-v1"];
            v5->_supportsHybridGroupsV1 = [v88 shortValue];
          }

          if ([v8 isEqualToString:@"supports-findmy-plugin-messages"])
          {
            v89 = [v6 objectForKey:@"supports-findmy-plugin-messages"];
            v5->_supportsFindMyPluginMessages = [v89 shortValue];
          }

          if ([v8 isEqualToString:@"supports-sos-alerting"])
          {
            v90 = [v6 objectForKey:@"supports-sos-alerting"];
            v5->_supportsSOSAlerting = [v90 shortValue];
          }

          if ([v8 isEqualToString:@"supports-people-request-messages-v3"])
          {
            v91 = [v6 objectForKey:@"supports-people-request-messages-v3"];
            v5->_supportsPeopleRequestMessagesV3 = [v91 shortValue];
          }

          if ([v8 isEqualToString:@"supports-recurring-payment-bubbles"])
          {
            v92 = [v6 objectForKey:@"supports-recurring-payment-bubbles"];
            v5->_supportsRecurringPaymentBubbles = [v92 shortValue];
          }

          if ([v8 isEqualToString:@"supports-group-apple-cash"])
          {
            v93 = [v6 objectForKey:@"supports-group-apple-cash"];
            v5->_supportsGroupAppleCash = [v93 shortValue];
          }

          if ([v8 isEqualToString:@"supports-group-photo-refresh-version"])
          {
            v94 = [v6 objectForKey:@"supports-group-photo-refresh-version"];
            v5->_supportsGroupPhotoRefreshVersion = [v94 shortValue];
          }

          if ([v8 isEqualToString:@"supports-emoji-tapbacks"])
          {
            v95 = [v6 objectForKey:@"supports-emoji-tapbacks"];
            v5->_supportsEmojiTapbacks = [v95 shortValue];
          }

          if ([v8 isEqualToString:@"supports-send-later-messages"])
          {
            v96 = [v6 objectForKey:@"supports-send-later-messages"];
            v5->_supportsSendLaterMessages = [v96 shortValue];
          }

          if ([v8 isEqualToString:@"supports-emoji-images"])
          {
            v97 = [v6 objectForKey:@"supports-emoji-images"];
            v5->_supportsEmojiImages = [v97 shortValue];
          }

          if ([v8 isEqualToString:@"supports-stick-moji-backs"])
          {
            v98 = [v6 objectForKey:@"supports-stick-moji-backs"];
            v5->_supportsStickMojiBacks = [v98 shortValue];
          }

          if ([v8 isEqualToString:@"supports-high-quality-photo-file-sizes"])
          {
            v99 = [v6 objectForKey:@"supports-high-quality-photo-file-sizes"];
            v5->_supportsHighQualityPhotoFileSizes = [v99 shortValue];
          }

          if ([v8 isEqualToString:@"supports-stewie"])
          {
            v100 = [v6 objectForKey:@"supports-stewie"];
            v5->_supportsStewie = [v100 shortValue];
          }

          if ([v8 isEqualToString:@"sender-key-message-version"])
          {
            v101 = [v6 objectForKey:@"sender-key-message-version"];
            v5->_senderKeyMessageVersion = [v101 shortValue];
          }

          if ([v8 isEqualToString:@"supports-sender-key-v1"])
          {
            v102 = [v6 objectForKey:@"supports-sender-key-v1"];
            v5->_supportsSenderKey = [v102 shortValue];
          }

          if ([v8 isEqualToString:@"supports-uriless-membership-updates"])
          {
            v103 = [v6 objectForKey:@"supports-uriless-membership-updates"];
            v5->_supportsURIlessMembershipUpdates = [v103 shortValue];
          }

          if ([v8 isEqualToString:@"supports-sender-key-self-check"])
          {
            v104 = [v6 objectForKey:@"supports-sender-key-self-check"];
            v5->_supportsSenderKeySelfCheck = [v104 shortValue];
          }

          if ([v8 isEqualToString:@"supports-recovery-contact-upsell"])
          {
            v105 = [v6 objectForKey:@"supports-recovery-contact-upsell"];
            v5->_supportsRecoveryContactUpsell = [v105 shortValue];
          }

          if ([v8 isEqualToString:@"supports-rbm-chatbot"])
          {
            v106 = [v6 objectForKey:@"supports-rbm-chatbot"];
            v5->_supportsRBMChatBot = [v106 shortValue];
          }

          if ([v8 isEqualToString:@"supports-queue-one-read-receipts"])
          {
            v107 = [v6 objectForKey:@"supports-queue-one-read-receipts"];
            v5->_supportsQueueOneReadReceipts = [v107 shortValue];
          }

          if ([v8 isEqualToString:@"supports-queue-one-read-receipts-v2"])
          {
            v108 = [v6 objectForKey:@"supports-queue-one-read-receipts-v2"];
            v5->_supportsQueueOneReadReceiptsV2 = [v108 shortValue];
          }

          if ([v8 isEqualToString:@"supports-introductions-v1"])
          {
            v109 = [v6 objectForKey:@"supports-introductions-v1"];
            v5->_supportsIntroductions = [v109 shortValue];
          }

          if ([v8 isEqualToString:@"supports-ckv-enforcement"])
          {
            v110 = [v6 objectForKey:@"supports-ckv-enforcement"];
            v5->_supportConditionalCKVEnforcement = [v110 shortValue];
          }

          if ([v8 isEqualToString:@"supports-modern-gft"])
          {
            v111 = [v6 objectForKey:@"supports-modern-gft"];
            v5->_supportsModernGFT = [v111 shortValue];
          }

          if ([v8 isEqualToString:@"supports-co"])
          {
            v112 = [v6 objectForKey:@"supports-co"];
            v5->_supportsCo = [v112 shortValue];
          }

          if ([v8 isEqualToString:@"is-green-tea"])
          {
            v113 = [v6 objectForKey:@"is-green-tea"];
            v5->_isGreenTea = [v113 shortValue];
          }

          if ([v8 isEqualToString:@"supports-gft-errors"])
          {
            v114 = [v6 objectForKey:@"supports-gft-errors"];
            v5->_supportsGondola = [v114 shortValue];
          }

          if ([v8 isEqualToString:@"supports-gft-calls"])
          {
            v115 = [v6 objectForKey:@"supports-gft-calls"];
            v5->_doesNotSupportGFTCalls = [v115 shortValue];
          }

          if ([v8 isEqualToString:@"is-web-client"])
          {
            v116 = [v6 objectForKey:@"is-web-client"];
            v5->_isWebClient = [v116 shortValue];
          }

          if ([v8 isEqualToString:@"supports-avless"])
          {
            v117 = [v6 objectForKey:@"supports-avless"];
            v5->_supportsAVLess = [v117 shortValue];
          }

          if ([v8 isEqualToString:@"supports-self-one-to-one-invites"])
          {
            v118 = [v6 objectForKey:@"supports-self-one-to-one-invites"];
            v5->_supportsSelfOneToOneInvites = [v118 shortValue];
          }

          if ([v8 isEqualToString:@"supports-hi-res-vid"])
          {
            v119 = [v6 objectForKey:@"supports-hi-res-vid"];
            v5->_supportsHighResVideoMessaging = [v119 shortValue];
          }

          if ([v8 isEqualToString:@"supports-live-translation"])
          {
            v120 = [v6 objectForKey:@"supports-live-translation"];
            v5->_supportsLiveTranslation = [v120 shortValue];
          }

          if ([v8 isEqualToString:@"supports-nearby-facetime"])
          {
            v121 = [v6 objectForKey:@"supports-nearby-facetime"];
            v5->_supportsNearbyFaceTime = [v121 shortValue];
          }

          if ([v8 isEqualToString:@"supports-ssrc"])
          {
            v122 = [v6 objectForKey:@"supports-ssrc"];
            v5->_supportsSSRC = [v122 shortValue];
          }

          if ([v8 isEqualToString:@"supports-calls-25"])
          {
            v123 = [v6 objectForKey:@"supports-calls-25"];
            v5->_supportsCalls25 = [v123 shortValue];
          }

          if ([v8 isEqualToString:@"gs-supports-friending-via-push"])
          {
            v124 = [v6 objectForKey:@"gs-supports-friending-via-push"];
            v5->_supportsFriendingViaPush = [v124 shortValue];
          }

          if ([v8 isEqualToString:@"gs-supports-message-transport-v2"])
          {
            v125 = [v6 objectForKey:@"gs-supports-message-transport-v2"];
            v5->_supportsMessageTransportV2 = [v125 shortValue];
          }
        }

        v130 = [v6 countByEnumeratingWithState:&v131 objects:v136 count:16];
      }

      while (v130);
    }

    mapCopy = v128;
  }

  v126 = v5;

  return v126;
}

- (int64_t)valueForCapability:(id)capability
{
  capabilityCopy = capability;
  v5 = capabilityCopy;
  if (!capabilityCopy)
  {
    goto LABEL_237;
  }

  if (([capabilityCopy isEqualToString:@"supports-key-sharing"] & 1) == 0)
  {
    if ([v5 isEqualToString:@"supports-harmony"])
    {
      v6 = 9;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-fmd-v2"])
    {
      v6 = 10;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-fm-fence-v1"])
    {
      v6 = 11;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-location-sharing"])
    {
      v6 = 12;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-screen-time-v2"])
    {
      v6 = 13;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-incoming-fmd-v1"])
    {
      v6 = 14;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-secure-loc-v1"])
    {
      v6 = 15;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-activity-sharing-v1"])
    {
      v6 = 16;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-manatee-for-apple-cash"])
    {
      v6 = 17;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-region-for-apple-cash"])
    {
      v6 = 18;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-hk-resident"])
    {
      v6 = 19;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-maps-routing-path-leg"])
    {
      v6 = 20;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-maps-wgs84-elevation-model"])
    {
      v6 = 21;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-beacon-sharing-v2"])
    {
      v6 = 22;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-beneficiary-invites"])
    {
      v6 = 23;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-st-er"])
    {
      v6 = 24;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-maps-waypoint-route-sharing"])
    {
      v6 = 25;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-maps-protocol-v5"])
    {
      v6 = 26;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-cross-platform-sharing"])
    {
      v6 = 27;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-zelkova"])
    {
      v6 = 28;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-people-ranging-v1"])
    {
      v6 = 29;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-beacon-sharing-v3"])
    {
      v6 = 30;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-gft-relay"])
    {
      v6 = 31;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-manatee-activity-sharing"])
    {
      v6 = 32;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-restricted-guest"])
    {
      v6 = 33;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-adaptive-temperature-automations"])
    {
      v6 = 34;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-remote-atv-signin"])
    {
      v6 = 35;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-user-driven-call-activation"])
    {
      v6 = 36;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-legacy-contact-invites-v1"])
    {
      v6 = 37;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-legacy-contact-invites-v2"])
    {
      v6 = 38;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-legacy-contact-invites-v3"])
    {
      v6 = 39;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"ec-version"])
    {
      v6 = 40;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"is-c2k-equipment"])
    {
      v6 = 41;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"show-peer-errors"])
    {
      v6 = 42;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"nicknames-version"])
    {
      v6 = 43;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"optionally-receive-typing-indicators"])
    {
      v6 = 44;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-inline-attachments"])
    {
      v6 = 45;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-keep-receipts"])
    {
      v6 = 46;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-st-v1"])
    {
      v6 = 47;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-ca-v1"])
    {
      v6 = 48;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-be-v1"])
    {
      v6 = 49;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-ack-v1"])
    {
      v6 = 50;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-fsm-v1"])
    {
      v6 = 51;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-fsm-v2"])
    {
      v6 = 52;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-fsm-v3"])
    {
      v6 = 53;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-ii-v1"])
    {
      v6 = 54;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-impact-v1"])
    {
      v6 = 55;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-update-attachments-v1"])
    {
      v6 = 56;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-autoloopvideo-v1"])
    {
      v6 = 57;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-media-v2"])
    {
      v6 = 58;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-photos-extension-v1"])
    {
      v6 = 59;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-photos-extension-v2"])
    {
      v6 = 60;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-audio-messaging-v2"])
    {
      v6 = 61;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-animoji-v2"])
    {
      v6 = 62;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-certified-delivery-v1"])
    {
      v6 = 63;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-original-timestamp-v1"])
    {
      v6 = 64;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-protobuf-payload-data-v2"])
    {
      v6 = 65;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-heif"])
    {
      v6 = 66;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-hdr"])
    {
      v6 = 67;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"prefers-sdr"])
    {
      v6 = 68;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-qta"])
    {
      v6 = 69;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-sa-v1"])
    {
      v6 = 70;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-uwb"])
    {
      v6 = 71;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-dq-nr"])
    {
      v6 = 72;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-rem"])
    {
      v6 = 73;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-people-request-messages"])
    {
      v6 = 74;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-family-invite-message-bubble"])
    {
      v6 = 75;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-people-request-messages-v2"])
    {
      v6 = 76;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-askto"])
    {
      v6 = 77;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-askto-v2"])
    {
      v6 = 78;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-askto-responseUI"])
    {
      v6 = 79;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-emoji-stickers"])
    {
      v6 = 80;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-sticker-editing"])
    {
      v6 = 81;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-transcript-backgrounds"])
    {
      v6 = 82;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-polls"])
    {
      v6 = 83;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-lqm-hq"])
    {
      v6 = 84;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-gti"])
    {
      v6 = 85;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-aot"])
    {
      v6 = 86;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-hybrid-groups-v1"])
    {
      v6 = 87;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-findmy-plugin-messages"])
    {
      v6 = 88;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-sos-alerting"])
    {
      v6 = 89;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-people-request-messages-v3"])
    {
      v6 = 90;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-recurring-payment-bubbles"])
    {
      v6 = 91;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-group-apple-cash"])
    {
      v6 = 92;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-group-photo-refresh-version"])
    {
      v6 = 93;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-emoji-tapbacks"])
    {
      v6 = 94;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-send-later-messages"])
    {
      v6 = 95;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-emoji-images"])
    {
      v6 = 96;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-stick-moji-backs"])
    {
      v6 = 97;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-high-quality-photo-file-sizes"])
    {
      v6 = 98;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-stewie"])
    {
      v6 = 99;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"sender-key-message-version"])
    {
      v6 = 100;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-sender-key-v1"])
    {
      v6 = 101;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-uriless-membership-updates"])
    {
      v6 = 102;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-sender-key-self-check"])
    {
      v6 = 103;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-recovery-contact-upsell"])
    {
      v6 = 104;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-rbm-chatbot"])
    {
      v6 = 105;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-queue-one-read-receipts"])
    {
      v6 = 106;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-queue-one-read-receipts-v2"])
    {
      v6 = 107;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-introductions-v1"])
    {
      v6 = 108;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-ckv-enforcement"])
    {
      v6 = 109;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-modern-gft"])
    {
      v6 = 110;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-co"])
    {
      v6 = 111;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"is-green-tea"])
    {
      v6 = 112;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-gft-errors"])
    {
      v6 = 113;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-gft-calls"])
    {
      v6 = 114;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"is-web-client"])
    {
      v6 = 115;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-avless"])
    {
      v6 = 116;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-self-one-to-one-invites"])
    {
      v6 = 117;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-hi-res-vid"])
    {
      v6 = 118;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-live-translation"])
    {
      v6 = 119;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-nearby-facetime"])
    {
      v6 = 120;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-ssrc"])
    {
      v6 = 121;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"supports-calls-25"])
    {
      v6 = 122;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"gs-supports-friending-via-push"])
    {
      v6 = 123;
      goto LABEL_236;
    }

    if ([v5 isEqualToString:@"gs-supports-message-transport-v2"])
    {
      v6 = 124;
      goto LABEL_236;
    }

LABEL_237:
    v7 = 0;
    goto LABEL_238;
  }

  v6 = 8;
LABEL_236:
  v7 = *(&self->super.isa + v6);
LABEL_238:

  return v7;
}

- (id)debugDescription
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p", objc_opt_class(), self];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-key-sharing", self->_supportsKeySharing];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-harmony", self->_supportsHarmony];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-fmd-v2", self->_supportsFMDV2];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-fm-fence-v1", self->_supportsFMFenceV1];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-location-sharing", self->_supportsLocationSharing];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-screen-time-v2", self->_supportsScreenTimeV2];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-incoming-fmd-v1", self->_supportsIncomingFindMyV1];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-secure-loc-v1", self->_supportsSecureLocationsV1];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-activity-sharing-v1", self->_supportsActivitySharing];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-manatee-for-apple-cash", self->_supportsManateeForAppleCash];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-region-for-apple-cash", self->_supportsRegionForAppleCash];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-hk-resident", self->_supportsHomeKitResident];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-maps-routing-path-leg", self->_supportsMapsRoutingPathLeg];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-maps-wgs84-elevation-model", self->_supportsMapsWGS84ElevationModel];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-beacon-sharing-v2", self->_supportsBeaconSharingV2];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-beneficiary-invites", self->_supportsBeneficiaryInvites];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-st-er", self->_supportsScreenTimeErrors];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-maps-waypoint-route-sharing", self->_supportsMapsWaypointRouteSharing];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-maps-protocol-v5", self->_supportsMapsProtocolV5];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-cross-platform-sharing", self->_supportsCrossPlatformSharing];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-zelkova", self->_supportsZelkova];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-people-ranging-v1", self->_supportsPeopleRangingV1];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-beacon-sharing-v3", self->_supportsBeaconSharingV3];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-gft-relay", self->_supportsGFTRelay];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-manatee-activity-sharing", self->_supportsManateeActivitySharing];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-restricted-guest", self->_supportsRestrictedGuest];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-adaptive-temperature-automations", self->_supportsAdaptiveTemperatureAutomations];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-remote-atv-signin", self->_supportsRemoteATVSignIn];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-user-driven-call-activation", self->_supportsUserDrivenCallActivation];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-legacy-contact-invites-v1", self->_supportsLegacyContactInvitesV1];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-legacy-contact-invites-v2", self->_supportsLegacyContactInvitesV2];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-legacy-contact-invites-v3", self->_supportsLegacyContactInvitesV3];
  [v3 appendFormat:@", \n\t%@ = %d", @"ec-version", self->_ecVersion];
  [v3 appendFormat:@", \n\t%@ = %d", @"is-c2k-equipment", self->_isC2KEquipment];
  [v3 appendFormat:@", \n\t%@ = %d", @"show-peer-errors", self->_showPeerErrors];
  [v3 appendFormat:@", \n\t%@ = %d", @"nicknames-version", self->_nicknamesVersion];
  [v3 appendFormat:@", \n\t%@ = %d", @"optionally-receive-typing-indicators", self->_optionallyReceiveTypingIndicator];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-inline-attachments", self->_supportsInlineAttachments];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-keep-receipts", self->_supportsKeepReceipts];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-st-v1", self->_supportsStickersV1];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-ca-v1", self->_supportsChatAppsV1];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-be-v1", self->_supportsBubbleEditingV1];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-ack-v1", self->_supportsAcknowledgementsV1];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-fsm-v1", self->_supportsFullScreenMomentsV1];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-fsm-v2", self->_supportsFullScreenMomentsV2];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-fsm-v3", self->_supportsFullScreenMomentsV3];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-ii-v1", self->_supportsInvisibleInkV1];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-impact-v1", self->_supportsImpactEffectsV1];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-update-attachments-v1", self->_supportsUpdateAttachmentsV1];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-autoloopvideo-v1", self->_supportsAutoloopVideoV1];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-media-v2", self->_supportsMediaV2];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-photos-extension-v1", self->_supportsPhotosExtensionV1];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-photos-extension-v2", self->_supportsPhotosExtensionV2];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-audio-messaging-v2", self->_supportsAudioMessagingV2];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-animoji-v2", self->_supportsAnimojiV2];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-certified-delivery-v1", self->_supportsCertifiedDeliveryV1];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-original-timestamp-v1", self->_supportsOriginalTimestampOrderingV1];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-protobuf-payload-data-v2", self->_supportsProtobufPayloadDataV2];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-heif", self->_supportsHEIFEncoding];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-hdr", self->_supportsHDRVideo];
  [v3 appendFormat:@", \n\t%@ = %d", @"prefers-sdr", self->_prefersSDRVideo];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-qta", self->_supportsQTAAudio];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-sa-v1", self->_supportsSyndicationActionsV1];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-uwb", self->_supportsUWB];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-dq-nr", self->_supportsDeliveredQuietlyAndNotifyRecipient];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-rem", self->_supportsRetractAndEditMessages];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-people-request-messages", self->_supportsPeopleRequestMessages];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-family-invite-message-bubble", self->_supportsFamilyInviteMessageBubble];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-people-request-messages-v2", self->_supportsPeopleRequestMessagesV2];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-askto", self->_supportsAskTo];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-askto-v2", self->_supportsAskToV2];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-askto-responseUI", self->_supportsAskToResponseUI];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-emoji-stickers", self->_supportsEmojiStickers];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-sticker-editing", self->_supportsStickerEditing];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-transcript-backgrounds", self->_supportsTranscriptBackgrounds];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-polls", self->_supportsPolls];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-lqm-hq", self->_supportsLQMHQ];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-gti", self->_supportsGroupTypingIndicators];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-aot", self->_supportsAutomaticTranslation];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-hybrid-groups-v1", self->_supportsHybridGroupsV1];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-findmy-plugin-messages", self->_supportsFindMyPluginMessages];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-sos-alerting", self->_supportsSOSAlerting];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-people-request-messages-v3", self->_supportsPeopleRequestMessagesV3];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-recurring-payment-bubbles", self->_supportsRecurringPaymentBubbles];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-group-apple-cash", self->_supportsGroupAppleCash];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-group-photo-refresh-version", self->_supportsGroupPhotoRefreshVersion];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-emoji-tapbacks", self->_supportsEmojiTapbacks];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-send-later-messages", self->_supportsSendLaterMessages];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-emoji-images", self->_supportsEmojiImages];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-stick-moji-backs", self->_supportsStickMojiBacks];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-high-quality-photo-file-sizes", self->_supportsHighQualityPhotoFileSizes];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-stewie", self->_supportsStewie];
  [v3 appendFormat:@", \n\t%@ = %d", @"sender-key-message-version", self->_senderKeyMessageVersion];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-sender-key-v1", self->_supportsSenderKey];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-uriless-membership-updates", self->_supportsURIlessMembershipUpdates];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-sender-key-self-check", self->_supportsSenderKeySelfCheck];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-recovery-contact-upsell", self->_supportsRecoveryContactUpsell];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-rbm-chatbot", self->_supportsRBMChatBot];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-queue-one-read-receipts", self->_supportsQueueOneReadReceipts];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-queue-one-read-receipts-v2", self->_supportsQueueOneReadReceiptsV2];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-introductions-v1", self->_supportsIntroductions];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-ckv-enforcement", self->_supportConditionalCKVEnforcement];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-modern-gft", self->_supportsModernGFT];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-co", self->_supportsCo];
  [v3 appendFormat:@", \n\t%@ = %d", @"is-green-tea", self->_isGreenTea];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-gft-errors", self->_supportsGondola];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-gft-calls", self->_doesNotSupportGFTCalls];
  [v3 appendFormat:@", \n\t%@ = %d", @"is-web-client", self->_isWebClient];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-avless", self->_supportsAVLess];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-self-one-to-one-invites", self->_supportsSelfOneToOneInvites];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-hi-res-vid", self->_supportsHighResVideoMessaging];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-live-translation", self->_supportsLiveTranslation];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-nearby-facetime", self->_supportsNearbyFaceTime];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-ssrc", self->_supportsSSRC];
  [v3 appendFormat:@", \n\t%@ = %d", @"supports-calls-25", self->_supportsCalls25];
  [v3 appendFormat:@", \n\t%@ = %d", @"gs-supports-friending-via-push", self->_supportsFriendingViaPush];
  [v3 appendFormat:@", \n\t%@ = %d", @"gs-supports-message-transport-v2", self->_supportsMessageTransportV2];
  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(IDSEndpointCapabilities *)self isEqualToEndpointCapabilites:equalCopy];

  return v5;
}

- (BOOL)isEqualToEndpointCapabilites:(id)capabilites
{
  capabilitesCopy = capabilites;
  v5 = self == capabilitesCopy
    || self->_supportsKeySharing == capabilitesCopy->_supportsKeySharing
    && self->_supportsHarmony == capabilitesCopy->_supportsHarmony
    && self->_supportsFMDV2 == capabilitesCopy->_supportsFMDV2
    && self->_supportsFMFenceV1 == capabilitesCopy->_supportsFMFenceV1
    && self->_supportsLocationSharing == capabilitesCopy->_supportsLocationSharing
    && self->_supportsScreenTimeV2 == capabilitesCopy->_supportsScreenTimeV2
    && self->_supportsIncomingFindMyV1 == capabilitesCopy->_supportsIncomingFindMyV1
    && self->_supportsSecureLocationsV1 == capabilitesCopy->_supportsSecureLocationsV1
    && self->_supportsActivitySharing == capabilitesCopy->_supportsActivitySharing
    && self->_supportsManateeForAppleCash == capabilitesCopy->_supportsManateeForAppleCash
    && self->_supportsRegionForAppleCash == capabilitesCopy->_supportsRegionForAppleCash
    && self->_supportsHomeKitResident == capabilitesCopy->_supportsHomeKitResident
    && self->_supportsMapsRoutingPathLeg == capabilitesCopy->_supportsMapsRoutingPathLeg
    && self->_supportsMapsWGS84ElevationModel == capabilitesCopy->_supportsMapsWGS84ElevationModel
    && self->_supportsBeaconSharingV2 == capabilitesCopy->_supportsBeaconSharingV2
    && self->_supportsBeneficiaryInvites == capabilitesCopy->_supportsBeneficiaryInvites
    && self->_supportsScreenTimeErrors == capabilitesCopy->_supportsScreenTimeErrors
    && self->_supportsMapsWaypointRouteSharing == capabilitesCopy->_supportsMapsWaypointRouteSharing
    && self->_supportsMapsProtocolV5 == capabilitesCopy->_supportsMapsProtocolV5
    && self->_supportsCrossPlatformSharing == capabilitesCopy->_supportsCrossPlatformSharing
    && self->_supportsZelkova == capabilitesCopy->_supportsZelkova
    && self->_supportsPeopleRangingV1 == capabilitesCopy->_supportsPeopleRangingV1
    && self->_supportsBeaconSharingV3 == capabilitesCopy->_supportsBeaconSharingV3
    && self->_supportsGFTRelay == capabilitesCopy->_supportsGFTRelay
    && self->_supportsManateeActivitySharing == capabilitesCopy->_supportsManateeActivitySharing
    && self->_supportsRestrictedGuest == capabilitesCopy->_supportsRestrictedGuest
    && self->_supportsAdaptiveTemperatureAutomations == capabilitesCopy->_supportsAdaptiveTemperatureAutomations
    && self->_supportsRemoteATVSignIn == capabilitesCopy->_supportsRemoteATVSignIn
    && self->_supportsUserDrivenCallActivation == capabilitesCopy->_supportsUserDrivenCallActivation
    && self->_supportsLegacyContactInvitesV1 == capabilitesCopy->_supportsLegacyContactInvitesV1
    && self->_supportsLegacyContactInvitesV2 == capabilitesCopy->_supportsLegacyContactInvitesV2
    && self->_supportsLegacyContactInvitesV3 == capabilitesCopy->_supportsLegacyContactInvitesV3
    && self->_ecVersion == capabilitesCopy->_ecVersion
    && self->_isC2KEquipment == capabilitesCopy->_isC2KEquipment
    && self->_showPeerErrors == capabilitesCopy->_showPeerErrors
    && self->_nicknamesVersion == capabilitesCopy->_nicknamesVersion
    && self->_optionallyReceiveTypingIndicator == capabilitesCopy->_optionallyReceiveTypingIndicator
    && self->_supportsInlineAttachments == capabilitesCopy->_supportsInlineAttachments
    && self->_supportsKeepReceipts == capabilitesCopy->_supportsKeepReceipts
    && self->_supportsStickersV1 == capabilitesCopy->_supportsStickersV1
    && self->_supportsChatAppsV1 == capabilitesCopy->_supportsChatAppsV1
    && self->_supportsBubbleEditingV1 == capabilitesCopy->_supportsBubbleEditingV1
    && self->_supportsAcknowledgementsV1 == capabilitesCopy->_supportsAcknowledgementsV1
    && self->_supportsFullScreenMomentsV1 == capabilitesCopy->_supportsFullScreenMomentsV1
    && self->_supportsFullScreenMomentsV2 == capabilitesCopy->_supportsFullScreenMomentsV2
    && self->_supportsFullScreenMomentsV3 == capabilitesCopy->_supportsFullScreenMomentsV3
    && self->_supportsInvisibleInkV1 == capabilitesCopy->_supportsInvisibleInkV1
    && self->_supportsImpactEffectsV1 == capabilitesCopy->_supportsImpactEffectsV1
    && self->_supportsUpdateAttachmentsV1 == capabilitesCopy->_supportsUpdateAttachmentsV1
    && self->_supportsAutoloopVideoV1 == capabilitesCopy->_supportsAutoloopVideoV1
    && self->_supportsMediaV2 == capabilitesCopy->_supportsMediaV2
    && self->_supportsPhotosExtensionV1 == capabilitesCopy->_supportsPhotosExtensionV1
    && self->_supportsPhotosExtensionV2 == capabilitesCopy->_supportsPhotosExtensionV2
    && self->_supportsAudioMessagingV2 == capabilitesCopy->_supportsAudioMessagingV2
    && self->_supportsAnimojiV2 == capabilitesCopy->_supportsAnimojiV2
    && self->_supportsCertifiedDeliveryV1 == capabilitesCopy->_supportsCertifiedDeliveryV1
    && self->_supportsOriginalTimestampOrderingV1 == capabilitesCopy->_supportsOriginalTimestampOrderingV1
    && self->_supportsProtobufPayloadDataV2 == capabilitesCopy->_supportsProtobufPayloadDataV2
    && self->_supportsHEIFEncoding == capabilitesCopy->_supportsHEIFEncoding
    && self->_supportsHDRVideo == capabilitesCopy->_supportsHDRVideo
    && self->_prefersSDRVideo == capabilitesCopy->_prefersSDRVideo
    && self->_supportsQTAAudio == capabilitesCopy->_supportsQTAAudio
    && self->_supportsSyndicationActionsV1 == capabilitesCopy->_supportsSyndicationActionsV1
    && self->_supportsUWB == capabilitesCopy->_supportsUWB
    && self->_supportsDeliveredQuietlyAndNotifyRecipient == capabilitesCopy->_supportsDeliveredQuietlyAndNotifyRecipient
    && self->_supportsRetractAndEditMessages == capabilitesCopy->_supportsRetractAndEditMessages
    && self->_supportsPeopleRequestMessages == capabilitesCopy->_supportsPeopleRequestMessages
    && self->_supportsFamilyInviteMessageBubble == capabilitesCopy->_supportsFamilyInviteMessageBubble
    && self->_supportsPeopleRequestMessagesV2 == capabilitesCopy->_supportsPeopleRequestMessagesV2
    && self->_supportsAskTo == capabilitesCopy->_supportsAskTo
    && self->_supportsAskToV2 == capabilitesCopy->_supportsAskToV2
    && self->_supportsAskToResponseUI == capabilitesCopy->_supportsAskToResponseUI
    && self->_supportsEmojiStickers == capabilitesCopy->_supportsEmojiStickers
    && self->_supportsStickerEditing == capabilitesCopy->_supportsStickerEditing
    && self->_supportsTranscriptBackgrounds == capabilitesCopy->_supportsTranscriptBackgrounds
    && self->_supportsPolls == capabilitesCopy->_supportsPolls
    && self->_supportsLQMHQ == capabilitesCopy->_supportsLQMHQ
    && self->_supportsGroupTypingIndicators == capabilitesCopy->_supportsGroupTypingIndicators
    && self->_supportsAutomaticTranslation == capabilitesCopy->_supportsAutomaticTranslation
    && self->_supportsHybridGroupsV1 == capabilitesCopy->_supportsHybridGroupsV1
    && self->_supportsFindMyPluginMessages == capabilitesCopy->_supportsFindMyPluginMessages
    && self->_supportsSOSAlerting == capabilitesCopy->_supportsSOSAlerting
    && self->_supportsPeopleRequestMessagesV3 == capabilitesCopy->_supportsPeopleRequestMessagesV3
    && self->_supportsRecurringPaymentBubbles == capabilitesCopy->_supportsRecurringPaymentBubbles
    && self->_supportsGroupAppleCash == capabilitesCopy->_supportsGroupAppleCash
    && self->_supportsGroupPhotoRefreshVersion == capabilitesCopy->_supportsGroupPhotoRefreshVersion
    && self->_supportsEmojiTapbacks == capabilitesCopy->_supportsEmojiTapbacks
    && self->_supportsSendLaterMessages == capabilitesCopy->_supportsSendLaterMessages
    && self->_supportsEmojiImages == capabilitesCopy->_supportsEmojiImages
    && self->_supportsStickMojiBacks == capabilitesCopy->_supportsStickMojiBacks
    && self->_supportsHighQualityPhotoFileSizes == capabilitesCopy->_supportsHighQualityPhotoFileSizes
    && self->_supportsStewie == capabilitesCopy->_supportsStewie
    && self->_senderKeyMessageVersion == capabilitesCopy->_senderKeyMessageVersion
    && self->_supportsSenderKey == capabilitesCopy->_supportsSenderKey
    && self->_supportsURIlessMembershipUpdates == capabilitesCopy->_supportsURIlessMembershipUpdates
    && self->_supportsSenderKeySelfCheck == capabilitesCopy->_supportsSenderKeySelfCheck
    && self->_supportsRecoveryContactUpsell == capabilitesCopy->_supportsRecoveryContactUpsell
    && self->_supportsRBMChatBot == capabilitesCopy->_supportsRBMChatBot
    && self->_supportsQueueOneReadReceipts == capabilitesCopy->_supportsQueueOneReadReceipts
    && self->_supportsQueueOneReadReceiptsV2 == capabilitesCopy->_supportsQueueOneReadReceiptsV2
    && self->_supportsIntroductions == capabilitesCopy->_supportsIntroductions
    && self->_supportConditionalCKVEnforcement == capabilitesCopy->_supportConditionalCKVEnforcement
    && self->_supportsModernGFT == capabilitesCopy->_supportsModernGFT
    && self->_supportsCo == capabilitesCopy->_supportsCo
    && self->_isGreenTea == capabilitesCopy->_isGreenTea
    && self->_supportsGondola == capabilitesCopy->_supportsGondola
    && self->_doesNotSupportGFTCalls == capabilitesCopy->_doesNotSupportGFTCalls
    && self->_isWebClient == capabilitesCopy->_isWebClient
    && self->_supportsAVLess == capabilitesCopy->_supportsAVLess
    && self->_supportsSelfOneToOneInvites == capabilitesCopy->_supportsSelfOneToOneInvites
    && self->_supportsHighResVideoMessaging == capabilitesCopy->_supportsHighResVideoMessaging
    && self->_supportsLiveTranslation == capabilitesCopy->_supportsLiveTranslation
    && self->_supportsNearbyFaceTime == capabilitesCopy->_supportsNearbyFaceTime
    && self->_supportsSSRC == capabilitesCopy->_supportsSSRC
    && self->_supportsCalls25 == capabilitesCopy->_supportsCalls25
    && self->_supportsFriendingViaPush == capabilitesCopy->_supportsFriendingViaPush
    && self->_supportsMessageTransportV2 == capabilitesCopy->_supportsMessageTransportV2;

  return v5;
}

- (IDSEndpointCapabilities)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCapabilitiesMapKey"];
  if (v5)
  {
    v6 = [(IDSEndpointCapabilities *)self initWithCapabilitiesMap:v5];
  }

  else
  {
    v6 = [(IDSEndpointCapabilities *)self initWithCapabilitiesMap:MEMORY[0x1E695E0F8]];
    if (v6)
    {
      v6->_supportsKeySharing = [coderCopy decodeIntForKey:@"_supportsKeySharing"];
      v6->_supportsHarmony = [coderCopy decodeIntForKey:@"_supportsHarmony"];
      v6->_supportsFMDV2 = [coderCopy decodeIntForKey:@"_supportsFMDV2"];
      v6->_supportsFMFenceV1 = [coderCopy decodeIntForKey:@"_supportsFMFenceV1"];
      v6->_supportsLocationSharing = [coderCopy decodeIntForKey:@"_supportsLocationSharing"];
      v6->_supportsScreenTimeV2 = [coderCopy decodeIntForKey:@"_supportsScreenTimeV2"];
      v6->_supportsIncomingFindMyV1 = [coderCopy decodeIntForKey:@"_supportsIncomingFindMyV1"];
      v6->_supportsSecureLocationsV1 = [coderCopy decodeIntForKey:@"_supportsSecureLocationsV1"];
      v6->_supportsActivitySharing = [coderCopy decodeIntForKey:@"_supportsActivitySharing"];
      v6->_supportsManateeForAppleCash = [coderCopy decodeIntForKey:@"_supportsManateeForAppleCash"];
      v6->_supportsRegionForAppleCash = [coderCopy decodeIntForKey:@"_supportsRegionForAppleCash"];
      v6->_supportsHomeKitResident = [coderCopy decodeIntForKey:@"_supportsHomeKitResident"];
      v6->_supportsMapsRoutingPathLeg = [coderCopy decodeIntForKey:@"_supportsMapsRoutingPathLeg"];
      v6->_supportsMapsWGS84ElevationModel = [coderCopy decodeIntForKey:@"_supportsMapsWGS84ElevationModel"];
      v6->_supportsBeaconSharingV2 = [coderCopy decodeIntForKey:@"_supportsBeaconSharingV2"];
      v6->_supportsBeneficiaryInvites = [coderCopy decodeIntForKey:@"_supportsBeneficiaryInvites"];
      v6->_supportsScreenTimeErrors = [coderCopy decodeIntForKey:@"_supportsScreenTimeErrors"];
      v6->_supportsMapsWaypointRouteSharing = [coderCopy decodeIntForKey:@"_supportsMapsWaypointRouteSharing"];
      v6->_supportsMapsProtocolV5 = [coderCopy decodeIntForKey:@"_supportsMapsProtocolV5"];
      v6->_supportsCrossPlatformSharing = [coderCopy decodeIntForKey:@"_supportsCrossPlatformSharing"];
      v6->_supportsZelkova = [coderCopy decodeIntForKey:@"_supportsZelkova"];
      v6->_supportsPeopleRangingV1 = [coderCopy decodeIntForKey:@"_supportsPeopleRangingV1"];
      v6->_supportsBeaconSharingV3 = [coderCopy decodeIntForKey:@"_supportsBeaconSharingV3"];
      v6->_supportsGFTRelay = [coderCopy decodeIntForKey:@"_supportsGFTRelay"];
      v6->_supportsManateeActivitySharing = [coderCopy decodeIntForKey:@"_supportsManateeActivitySharing"];
      v6->_supportsRestrictedGuest = [coderCopy decodeIntForKey:@"_supportsRestrictedGuest"];
      v6->_supportsAdaptiveTemperatureAutomations = [coderCopy decodeIntForKey:@"_supportsAdaptiveTemperatureAutomations"];
      v6->_supportsRemoteATVSignIn = [coderCopy decodeIntForKey:@"_supportsRemoteATVSignIn"];
      v6->_supportsUserDrivenCallActivation = [coderCopy decodeIntForKey:@"_supportsUserDrivenCallActivation"];
      v6->_supportsLegacyContactInvitesV1 = [coderCopy decodeIntForKey:@"_supportsLegacyContactInvitesV1"];
      v6->_supportsLegacyContactInvitesV2 = [coderCopy decodeIntForKey:@"_supportsLegacyContactInvitesV2"];
      v6->_supportsLegacyContactInvitesV3 = [coderCopy decodeIntForKey:@"_supportsLegacyContactInvitesV3"];
      v6->_ecVersion = [coderCopy decodeIntForKey:@"_ecVersion"];
      v6->_isC2KEquipment = [coderCopy decodeIntForKey:@"_isC2KEquipment"];
      v6->_showPeerErrors = [coderCopy decodeIntForKey:@"_showPeerErrors"];
      v6->_nicknamesVersion = [coderCopy decodeIntForKey:@"_nicknamesVersion"];
      v6->_optionallyReceiveTypingIndicator = [coderCopy decodeIntForKey:@"_optionallyReceiveTypingIndicator"];
      v6->_supportsInlineAttachments = [coderCopy decodeIntForKey:@"_supportsInlineAttachments"];
      v6->_supportsKeepReceipts = [coderCopy decodeIntForKey:@"_supportsKeepReceipts"];
      v6->_supportsStickersV1 = [coderCopy decodeIntForKey:@"_supportsStickersV1"];
      v6->_supportsChatAppsV1 = [coderCopy decodeIntForKey:@"_supportsChatAppsV1"];
      v6->_supportsBubbleEditingV1 = [coderCopy decodeIntForKey:@"_supportsBubbleEditingV1"];
      v6->_supportsAcknowledgementsV1 = [coderCopy decodeIntForKey:@"_supportsAcknowledgementsV1"];
      v6->_supportsFullScreenMomentsV1 = [coderCopy decodeIntForKey:@"_supportsFullScreenMomentsV1"];
      v6->_supportsFullScreenMomentsV2 = [coderCopy decodeIntForKey:@"_supportsFullScreenMomentsV2"];
      v6->_supportsFullScreenMomentsV3 = [coderCopy decodeIntForKey:@"_supportsFullScreenMomentsV3"];
      v6->_supportsInvisibleInkV1 = [coderCopy decodeIntForKey:@"_supportsInvisibleInkV1"];
      v6->_supportsImpactEffectsV1 = [coderCopy decodeIntForKey:@"_supportsImpactEffectsV1"];
      v6->_supportsUpdateAttachmentsV1 = [coderCopy decodeIntForKey:@"_supportsUpdateAttachmentsV1"];
      v6->_supportsAutoloopVideoV1 = [coderCopy decodeIntForKey:@"_supportsAutoloopVideoV1"];
      v6->_supportsMediaV2 = [coderCopy decodeIntForKey:@"_supportsMediaV2"];
      v6->_supportsPhotosExtensionV1 = [coderCopy decodeIntForKey:@"_supportsPhotosExtensionV1"];
      v6->_supportsPhotosExtensionV2 = [coderCopy decodeIntForKey:@"_supportsPhotosExtensionV2"];
      v6->_supportsAudioMessagingV2 = [coderCopy decodeIntForKey:@"_supportsAudioMessagingV2"];
      v6->_supportsAnimojiV2 = [coderCopy decodeIntForKey:@"_supportsAnimojiV2"];
      v6->_supportsCertifiedDeliveryV1 = [coderCopy decodeIntForKey:@"_supportsCertifiedDeliveryV1"];
      v6->_supportsOriginalTimestampOrderingV1 = [coderCopy decodeIntForKey:@"_supportsOriginalTimestampOrderingV1"];
      v6->_supportsProtobufPayloadDataV2 = [coderCopy decodeIntForKey:@"_supportsProtobufPayloadDataV2"];
      v6->_supportsHEIFEncoding = [coderCopy decodeIntForKey:@"_supportsHEIFEncoding"];
      v6->_supportsHDRVideo = [coderCopy decodeIntForKey:@"_supportsHDRVideo"];
      v6->_prefersSDRVideo = [coderCopy decodeIntForKey:@"_prefersSDRVideo"];
      v6->_supportsQTAAudio = [coderCopy decodeIntForKey:@"_supportsQTAAudio"];
      v6->_supportsSyndicationActionsV1 = [coderCopy decodeIntForKey:@"_supportsSyndicationActionsV1"];
      v6->_supportsUWB = [coderCopy decodeIntForKey:@"_supportsUWB"];
      v6->_supportsDeliveredQuietlyAndNotifyRecipient = [coderCopy decodeIntForKey:@"_supportsDeliveredQuietlyAndNotifyRecipient"];
      v6->_supportsRetractAndEditMessages = [coderCopy decodeIntForKey:@"_supportsRetractAndEditMessages"];
      v6->_supportsPeopleRequestMessages = [coderCopy decodeIntForKey:@"_supportsPeopleRequestMessages"];
      v6->_supportsFamilyInviteMessageBubble = [coderCopy decodeIntForKey:@"_supportsFamilyInviteMessageBubble"];
      v6->_supportsPeopleRequestMessagesV2 = [coderCopy decodeIntForKey:@"_supportsPeopleRequestMessagesV2"];
      v6->_supportsAskTo = [coderCopy decodeIntForKey:@"_supportsAskTo"];
      v6->_supportsAskToV2 = [coderCopy decodeIntForKey:@"_supportsAskToV2"];
      v6->_supportsAskToResponseUI = [coderCopy decodeIntForKey:@"_supportsAskToResponseUI"];
      v6->_supportsEmojiStickers = [coderCopy decodeIntForKey:@"_supportsEmojiStickers"];
      v6->_supportsStickerEditing = [coderCopy decodeIntForKey:@"_supportsStickerEditing"];
      v6->_supportsTranscriptBackgrounds = [coderCopy decodeIntForKey:@"_supportsTranscriptBackgrounds"];
      v6->_supportsPolls = [coderCopy decodeIntForKey:@"_supportsPolls"];
      v6->_supportsLQMHQ = [coderCopy decodeIntForKey:@"_supportsLQMHQ"];
      v6->_supportsGroupTypingIndicators = [coderCopy decodeIntForKey:@"_supportsGroupTypingIndicators"];
      v6->_supportsAutomaticTranslation = [coderCopy decodeIntForKey:@"_supportsAutomaticTranslation"];
      v6->_supportsHybridGroupsV1 = [coderCopy decodeIntForKey:@"_supportsHybridGroupsV1"];
      v6->_supportsFindMyPluginMessages = [coderCopy decodeIntForKey:@"_supportsFindMyPluginMessages"];
      v6->_supportsSOSAlerting = [coderCopy decodeIntForKey:@"_supportsSOSAlerting"];
      v6->_supportsPeopleRequestMessagesV3 = [coderCopy decodeIntForKey:@"_supportsPeopleRequestMessagesV3"];
      v6->_supportsRecurringPaymentBubbles = [coderCopy decodeIntForKey:@"_supportsRecurringPaymentBubbles"];
      v6->_supportsGroupAppleCash = [coderCopy decodeIntForKey:@"_supportsGroupAppleCash"];
      v6->_supportsGroupPhotoRefreshVersion = [coderCopy decodeIntForKey:@"_supportsGroupPhotoRefreshVersion"];
      v6->_supportsEmojiTapbacks = [coderCopy decodeIntForKey:@"_supportsEmojiTapbacks"];
      v6->_supportsSendLaterMessages = [coderCopy decodeIntForKey:@"_supportsSendLaterMessages"];
      v6->_supportsEmojiImages = [coderCopy decodeIntForKey:@"_supportsEmojiImages"];
      v6->_supportsStickMojiBacks = [coderCopy decodeIntForKey:@"_supportsStickMojiBacks"];
      v6->_supportsHighQualityPhotoFileSizes = [coderCopy decodeIntForKey:@"_supportsHighQualityPhotoFileSizes"];
      v6->_supportsStewie = [coderCopy decodeIntForKey:@"_supportsStewie"];
      v6->_senderKeyMessageVersion = [coderCopy decodeIntForKey:@"_senderKeyMessageVersion"];
      v6->_supportsSenderKey = [coderCopy decodeIntForKey:@"_supportsSenderKey"];
      v6->_supportsURIlessMembershipUpdates = [coderCopy decodeIntForKey:@"_supportsURIlessMembershipUpdates"];
      v6->_supportsSenderKeySelfCheck = [coderCopy decodeIntForKey:@"_supportsSenderKeySelfCheck"];
      v6->_supportsRecoveryContactUpsell = [coderCopy decodeIntForKey:@"_supportsRecoveryContactUpsell"];
      v6->_supportsRBMChatBot = [coderCopy decodeIntForKey:@"_supportsRBMChatBot"];
      v6->_supportsQueueOneReadReceipts = [coderCopy decodeIntForKey:@"_supportsQueueOneReadReceipts"];
      v6->_supportsQueueOneReadReceiptsV2 = [coderCopy decodeIntForKey:@"_supportsQueueOneReadReceiptsV2"];
      v6->_supportsIntroductions = [coderCopy decodeIntForKey:@"_supportsIntroductions"];
      v6->_supportConditionalCKVEnforcement = [coderCopy decodeIntForKey:@"_supportConditionalCKVEnforcement"];
      v6->_supportsModernGFT = [coderCopy decodeIntForKey:@"_supportsModernGFT"];
      v6->_supportsCo = [coderCopy decodeIntForKey:@"_supportsCo"];
      v6->_isGreenTea = [coderCopy decodeIntForKey:@"_isGreenTea"];
      v6->_supportsGondola = [coderCopy decodeIntForKey:@"_supportsGondola"];
      v6->_doesNotSupportGFTCalls = [coderCopy decodeIntForKey:@"_doesNotSupportGFTCalls"];
      v6->_isWebClient = [coderCopy decodeIntForKey:@"_isWebClient"];
      v6->_supportsAVLess = [coderCopy decodeIntForKey:@"_supportsAVLess"];
      v6->_supportsSelfOneToOneInvites = [coderCopy decodeIntForKey:@"_supportsSelfOneToOneInvites"];
      v6->_supportsHighResVideoMessaging = [coderCopy decodeIntForKey:@"_supportsHighResVideoMessaging"];
      v6->_supportsLiveTranslation = [coderCopy decodeIntForKey:@"_supportsLiveTranslation"];
      v6->_supportsNearbyFaceTime = [coderCopy decodeIntForKey:@"_supportsNearbyFaceTime"];
      v6->_supportsSSRC = [coderCopy decodeIntForKey:@"_supportsSSRC"];
      v6->_supportsCalls25 = [coderCopy decodeIntForKey:@"_supportsCalls25"];
      v6->_supportsFriendingViaPush = [coderCopy decodeIntForKey:@"_supportsFriendingViaPush"];
      v6->_supportsMessageTransportV2 = [coderCopy decodeIntForKey:@"_supportsMessageTransportV2"];
    }
  }

  v7 = v6;

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  supportsKeySharing = self->_supportsKeySharing;
  coderCopy = coder;
  [coderCopy encodeInt:supportsKeySharing forKey:@"_supportsKeySharing"];
  [coderCopy encodeInt:self->_supportsHarmony forKey:@"_supportsHarmony"];
  [coderCopy encodeInt:self->_supportsFMDV2 forKey:@"_supportsFMDV2"];
  [coderCopy encodeInt:self->_supportsFMFenceV1 forKey:@"_supportsFMFenceV1"];
  [coderCopy encodeInt:self->_supportsLocationSharing forKey:@"_supportsLocationSharing"];
  [coderCopy encodeInt:self->_supportsScreenTimeV2 forKey:@"_supportsScreenTimeV2"];
  [coderCopy encodeInt:self->_supportsIncomingFindMyV1 forKey:@"_supportsIncomingFindMyV1"];
  [coderCopy encodeInt:self->_supportsSecureLocationsV1 forKey:@"_supportsSecureLocationsV1"];
  [coderCopy encodeInt:self->_supportsActivitySharing forKey:@"_supportsActivitySharing"];
  [coderCopy encodeInt:self->_supportsManateeForAppleCash forKey:@"_supportsManateeForAppleCash"];
  [coderCopy encodeInt:self->_supportsRegionForAppleCash forKey:@"_supportsRegionForAppleCash"];
  [coderCopy encodeInt:self->_supportsHomeKitResident forKey:@"_supportsHomeKitResident"];
  [coderCopy encodeInt:self->_supportsMapsRoutingPathLeg forKey:@"_supportsMapsRoutingPathLeg"];
  [coderCopy encodeInt:self->_supportsMapsWGS84ElevationModel forKey:@"_supportsMapsWGS84ElevationModel"];
  [coderCopy encodeInt:self->_supportsBeaconSharingV2 forKey:@"_supportsBeaconSharingV2"];
  [coderCopy encodeInt:self->_supportsBeneficiaryInvites forKey:@"_supportsBeneficiaryInvites"];
  [coderCopy encodeInt:self->_supportsScreenTimeErrors forKey:@"_supportsScreenTimeErrors"];
  [coderCopy encodeInt:self->_supportsMapsWaypointRouteSharing forKey:@"_supportsMapsWaypointRouteSharing"];
  [coderCopy encodeInt:self->_supportsMapsProtocolV5 forKey:@"_supportsMapsProtocolV5"];
  [coderCopy encodeInt:self->_supportsCrossPlatformSharing forKey:@"_supportsCrossPlatformSharing"];
  [coderCopy encodeInt:self->_supportsZelkova forKey:@"_supportsZelkova"];
  [coderCopy encodeInt:self->_supportsPeopleRangingV1 forKey:@"_supportsPeopleRangingV1"];
  [coderCopy encodeInt:self->_supportsBeaconSharingV3 forKey:@"_supportsBeaconSharingV3"];
  [coderCopy encodeInt:self->_supportsGFTRelay forKey:@"_supportsGFTRelay"];
  [coderCopy encodeInt:self->_supportsManateeActivitySharing forKey:@"_supportsManateeActivitySharing"];
  [coderCopy encodeInt:self->_supportsRestrictedGuest forKey:@"_supportsRestrictedGuest"];
  [coderCopy encodeInt:self->_supportsAdaptiveTemperatureAutomations forKey:@"_supportsAdaptiveTemperatureAutomations"];
  [coderCopy encodeInt:self->_supportsRemoteATVSignIn forKey:@"_supportsRemoteATVSignIn"];
  [coderCopy encodeInt:self->_supportsUserDrivenCallActivation forKey:@"_supportsUserDrivenCallActivation"];
  [coderCopy encodeInt:self->_supportsLegacyContactInvitesV1 forKey:@"_supportsLegacyContactInvitesV1"];
  [coderCopy encodeInt:self->_supportsLegacyContactInvitesV2 forKey:@"_supportsLegacyContactInvitesV2"];
  [coderCopy encodeInt:self->_supportsLegacyContactInvitesV3 forKey:@"_supportsLegacyContactInvitesV3"];
  [coderCopy encodeInt:self->_ecVersion forKey:@"_ecVersion"];
  [coderCopy encodeInt:self->_isC2KEquipment forKey:@"_isC2KEquipment"];
  [coderCopy encodeInt:self->_showPeerErrors forKey:@"_showPeerErrors"];
  [coderCopy encodeInt:self->_nicknamesVersion forKey:@"_nicknamesVersion"];
  [coderCopy encodeInt:self->_optionallyReceiveTypingIndicator forKey:@"_optionallyReceiveTypingIndicator"];
  [coderCopy encodeInt:self->_supportsInlineAttachments forKey:@"_supportsInlineAttachments"];
  [coderCopy encodeInt:self->_supportsKeepReceipts forKey:@"_supportsKeepReceipts"];
  [coderCopy encodeInt:self->_supportsStickersV1 forKey:@"_supportsStickersV1"];
  [coderCopy encodeInt:self->_supportsChatAppsV1 forKey:@"_supportsChatAppsV1"];
  [coderCopy encodeInt:self->_supportsBubbleEditingV1 forKey:@"_supportsBubbleEditingV1"];
  [coderCopy encodeInt:self->_supportsAcknowledgementsV1 forKey:@"_supportsAcknowledgementsV1"];
  [coderCopy encodeInt:self->_supportsFullScreenMomentsV1 forKey:@"_supportsFullScreenMomentsV1"];
  [coderCopy encodeInt:self->_supportsFullScreenMomentsV2 forKey:@"_supportsFullScreenMomentsV2"];
  [coderCopy encodeInt:self->_supportsFullScreenMomentsV3 forKey:@"_supportsFullScreenMomentsV3"];
  [coderCopy encodeInt:self->_supportsInvisibleInkV1 forKey:@"_supportsInvisibleInkV1"];
  [coderCopy encodeInt:self->_supportsImpactEffectsV1 forKey:@"_supportsImpactEffectsV1"];
  [coderCopy encodeInt:self->_supportsUpdateAttachmentsV1 forKey:@"_supportsUpdateAttachmentsV1"];
  [coderCopy encodeInt:self->_supportsAutoloopVideoV1 forKey:@"_supportsAutoloopVideoV1"];
  [coderCopy encodeInt:self->_supportsMediaV2 forKey:@"_supportsMediaV2"];
  [coderCopy encodeInt:self->_supportsPhotosExtensionV1 forKey:@"_supportsPhotosExtensionV1"];
  [coderCopy encodeInt:self->_supportsPhotosExtensionV2 forKey:@"_supportsPhotosExtensionV2"];
  [coderCopy encodeInt:self->_supportsAudioMessagingV2 forKey:@"_supportsAudioMessagingV2"];
  [coderCopy encodeInt:self->_supportsAnimojiV2 forKey:@"_supportsAnimojiV2"];
  [coderCopy encodeInt:self->_supportsCertifiedDeliveryV1 forKey:@"_supportsCertifiedDeliveryV1"];
  [coderCopy encodeInt:self->_supportsOriginalTimestampOrderingV1 forKey:@"_supportsOriginalTimestampOrderingV1"];
  [coderCopy encodeInt:self->_supportsProtobufPayloadDataV2 forKey:@"_supportsProtobufPayloadDataV2"];
  [coderCopy encodeInt:self->_supportsHEIFEncoding forKey:@"_supportsHEIFEncoding"];
  [coderCopy encodeInt:self->_supportsHDRVideo forKey:@"_supportsHDRVideo"];
  [coderCopy encodeInt:self->_prefersSDRVideo forKey:@"_prefersSDRVideo"];
  [coderCopy encodeInt:self->_supportsQTAAudio forKey:@"_supportsQTAAudio"];
  [coderCopy encodeInt:self->_supportsSyndicationActionsV1 forKey:@"_supportsSyndicationActionsV1"];
  [coderCopy encodeInt:self->_supportsUWB forKey:@"_supportsUWB"];
  [coderCopy encodeInt:self->_supportsDeliveredQuietlyAndNotifyRecipient forKey:@"_supportsDeliveredQuietlyAndNotifyRecipient"];
  [coderCopy encodeInt:self->_supportsRetractAndEditMessages forKey:@"_supportsRetractAndEditMessages"];
  [coderCopy encodeInt:self->_supportsPeopleRequestMessages forKey:@"_supportsPeopleRequestMessages"];
  [coderCopy encodeInt:self->_supportsFamilyInviteMessageBubble forKey:@"_supportsFamilyInviteMessageBubble"];
  [coderCopy encodeInt:self->_supportsPeopleRequestMessagesV2 forKey:@"_supportsPeopleRequestMessagesV2"];
  [coderCopy encodeInt:self->_supportsAskTo forKey:@"_supportsAskTo"];
  [coderCopy encodeInt:self->_supportsAskToV2 forKey:@"_supportsAskToV2"];
  [coderCopy encodeInt:self->_supportsAskToResponseUI forKey:@"_supportsAskToResponseUI"];
  [coderCopy encodeInt:self->_supportsEmojiStickers forKey:@"_supportsEmojiStickers"];
  [coderCopy encodeInt:self->_supportsStickerEditing forKey:@"_supportsStickerEditing"];
  [coderCopy encodeInt:self->_supportsTranscriptBackgrounds forKey:@"_supportsTranscriptBackgrounds"];
  [coderCopy encodeInt:self->_supportsPolls forKey:@"_supportsPolls"];
  [coderCopy encodeInt:self->_supportsLQMHQ forKey:@"_supportsLQMHQ"];
  [coderCopy encodeInt:self->_supportsGroupTypingIndicators forKey:@"_supportsGroupTypingIndicators"];
  [coderCopy encodeInt:self->_supportsAutomaticTranslation forKey:@"_supportsAutomaticTranslation"];
  [coderCopy encodeInt:self->_supportsHybridGroupsV1 forKey:@"_supportsHybridGroupsV1"];
  [coderCopy encodeInt:self->_supportsFindMyPluginMessages forKey:@"_supportsFindMyPluginMessages"];
  [coderCopy encodeInt:self->_supportsSOSAlerting forKey:@"_supportsSOSAlerting"];
  [coderCopy encodeInt:self->_supportsPeopleRequestMessagesV3 forKey:@"_supportsPeopleRequestMessagesV3"];
  [coderCopy encodeInt:self->_supportsRecurringPaymentBubbles forKey:@"_supportsRecurringPaymentBubbles"];
  [coderCopy encodeInt:self->_supportsGroupAppleCash forKey:@"_supportsGroupAppleCash"];
  [coderCopy encodeInt:self->_supportsGroupPhotoRefreshVersion forKey:@"_supportsGroupPhotoRefreshVersion"];
  [coderCopy encodeInt:self->_supportsEmojiTapbacks forKey:@"_supportsEmojiTapbacks"];
  [coderCopy encodeInt:self->_supportsSendLaterMessages forKey:@"_supportsSendLaterMessages"];
  [coderCopy encodeInt:self->_supportsEmojiImages forKey:@"_supportsEmojiImages"];
  [coderCopy encodeInt:self->_supportsStickMojiBacks forKey:@"_supportsStickMojiBacks"];
  [coderCopy encodeInt:self->_supportsHighQualityPhotoFileSizes forKey:@"_supportsHighQualityPhotoFileSizes"];
  [coderCopy encodeInt:self->_supportsStewie forKey:@"_supportsStewie"];
  [coderCopy encodeInt:self->_senderKeyMessageVersion forKey:@"_senderKeyMessageVersion"];
  [coderCopy encodeInt:self->_supportsSenderKey forKey:@"_supportsSenderKey"];
  [coderCopy encodeInt:self->_supportsURIlessMembershipUpdates forKey:@"_supportsURIlessMembershipUpdates"];
  [coderCopy encodeInt:self->_supportsSenderKeySelfCheck forKey:@"_supportsSenderKeySelfCheck"];
  [coderCopy encodeInt:self->_supportsRecoveryContactUpsell forKey:@"_supportsRecoveryContactUpsell"];
  [coderCopy encodeInt:self->_supportsRBMChatBot forKey:@"_supportsRBMChatBot"];
  [coderCopy encodeInt:self->_supportsQueueOneReadReceipts forKey:@"_supportsQueueOneReadReceipts"];
  [coderCopy encodeInt:self->_supportsQueueOneReadReceiptsV2 forKey:@"_supportsQueueOneReadReceiptsV2"];
  [coderCopy encodeInt:self->_supportsIntroductions forKey:@"_supportsIntroductions"];
  [coderCopy encodeInt:self->_supportConditionalCKVEnforcement forKey:@"_supportConditionalCKVEnforcement"];
  [coderCopy encodeInt:self->_supportsModernGFT forKey:@"_supportsModernGFT"];
  [coderCopy encodeInt:self->_supportsCo forKey:@"_supportsCo"];
  [coderCopy encodeInt:self->_isGreenTea forKey:@"_isGreenTea"];
  [coderCopy encodeInt:self->_supportsGondola forKey:@"_supportsGondola"];
  [coderCopy encodeInt:self->_doesNotSupportGFTCalls forKey:@"_doesNotSupportGFTCalls"];
  [coderCopy encodeInt:self->_isWebClient forKey:@"_isWebClient"];
  [coderCopy encodeInt:self->_supportsAVLess forKey:@"_supportsAVLess"];
  [coderCopy encodeInt:self->_supportsSelfOneToOneInvites forKey:@"_supportsSelfOneToOneInvites"];
  [coderCopy encodeInt:self->_supportsHighResVideoMessaging forKey:@"_supportsHighResVideoMessaging"];
  [coderCopy encodeInt:self->_supportsLiveTranslation forKey:@"_supportsLiveTranslation"];
  [coderCopy encodeInt:self->_supportsNearbyFaceTime forKey:@"_supportsNearbyFaceTime"];
  [coderCopy encodeInt:self->_supportsSSRC forKey:@"_supportsSSRC"];
  [coderCopy encodeInt:self->_supportsCalls25 forKey:@"_supportsCalls25"];
  [coderCopy encodeInt:self->_supportsFriendingViaPush forKey:@"_supportsFriendingViaPush"];
  [coderCopy encodeInt:self->_supportsMessageTransportV2 forKey:@"_supportsMessageTransportV2"];
}

@end