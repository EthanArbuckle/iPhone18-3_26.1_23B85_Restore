@interface IDSEndpointCapabilities
+ (id)allowedCapabilities;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToEndpointCapabilites:(id)a3;
- (IDSEndpointCapabilities)initWithCapabilitiesMap:(id)a3;
- (IDSEndpointCapabilities)initWithCoder:(id)a3;
- (id)debugDescription;
- (int64_t)valueForCapability:(id)a3;
- (void)encodeWithCoder:(id)a3;
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

- (IDSEndpointCapabilities)initWithCapabilitiesMap:(id)a3
{
  v137 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v135.receiver = self;
  v135.super_class = IDSEndpointCapabilities;
  v5 = [(IDSEndpointCapabilities *)&v135 init];

  if (v5)
  {
    v133 = 0u;
    v134 = 0u;
    v131 = 0u;
    v132 = 0u;
    v128 = v4;
    v6 = v4;
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

    v4 = v128;
  }

  v126 = v5;

  return v126;
}

- (int64_t)valueForCapability:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_237;
  }

  if (([v4 isEqualToString:@"supports-key-sharing"] & 1) == 0)
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(IDSEndpointCapabilities *)self isEqualToEndpointCapabilites:v4];

  return v5;
}

- (BOOL)isEqualToEndpointCapabilites:(id)a3
{
  v4 = a3;
  v5 = self == v4
    || self->_supportsKeySharing == v4->_supportsKeySharing
    && self->_supportsHarmony == v4->_supportsHarmony
    && self->_supportsFMDV2 == v4->_supportsFMDV2
    && self->_supportsFMFenceV1 == v4->_supportsFMFenceV1
    && self->_supportsLocationSharing == v4->_supportsLocationSharing
    && self->_supportsScreenTimeV2 == v4->_supportsScreenTimeV2
    && self->_supportsIncomingFindMyV1 == v4->_supportsIncomingFindMyV1
    && self->_supportsSecureLocationsV1 == v4->_supportsSecureLocationsV1
    && self->_supportsActivitySharing == v4->_supportsActivitySharing
    && self->_supportsManateeForAppleCash == v4->_supportsManateeForAppleCash
    && self->_supportsRegionForAppleCash == v4->_supportsRegionForAppleCash
    && self->_supportsHomeKitResident == v4->_supportsHomeKitResident
    && self->_supportsMapsRoutingPathLeg == v4->_supportsMapsRoutingPathLeg
    && self->_supportsMapsWGS84ElevationModel == v4->_supportsMapsWGS84ElevationModel
    && self->_supportsBeaconSharingV2 == v4->_supportsBeaconSharingV2
    && self->_supportsBeneficiaryInvites == v4->_supportsBeneficiaryInvites
    && self->_supportsScreenTimeErrors == v4->_supportsScreenTimeErrors
    && self->_supportsMapsWaypointRouteSharing == v4->_supportsMapsWaypointRouteSharing
    && self->_supportsMapsProtocolV5 == v4->_supportsMapsProtocolV5
    && self->_supportsCrossPlatformSharing == v4->_supportsCrossPlatformSharing
    && self->_supportsZelkova == v4->_supportsZelkova
    && self->_supportsPeopleRangingV1 == v4->_supportsPeopleRangingV1
    && self->_supportsBeaconSharingV3 == v4->_supportsBeaconSharingV3
    && self->_supportsGFTRelay == v4->_supportsGFTRelay
    && self->_supportsManateeActivitySharing == v4->_supportsManateeActivitySharing
    && self->_supportsRestrictedGuest == v4->_supportsRestrictedGuest
    && self->_supportsAdaptiveTemperatureAutomations == v4->_supportsAdaptiveTemperatureAutomations
    && self->_supportsRemoteATVSignIn == v4->_supportsRemoteATVSignIn
    && self->_supportsUserDrivenCallActivation == v4->_supportsUserDrivenCallActivation
    && self->_supportsLegacyContactInvitesV1 == v4->_supportsLegacyContactInvitesV1
    && self->_supportsLegacyContactInvitesV2 == v4->_supportsLegacyContactInvitesV2
    && self->_supportsLegacyContactInvitesV3 == v4->_supportsLegacyContactInvitesV3
    && self->_ecVersion == v4->_ecVersion
    && self->_isC2KEquipment == v4->_isC2KEquipment
    && self->_showPeerErrors == v4->_showPeerErrors
    && self->_nicknamesVersion == v4->_nicknamesVersion
    && self->_optionallyReceiveTypingIndicator == v4->_optionallyReceiveTypingIndicator
    && self->_supportsInlineAttachments == v4->_supportsInlineAttachments
    && self->_supportsKeepReceipts == v4->_supportsKeepReceipts
    && self->_supportsStickersV1 == v4->_supportsStickersV1
    && self->_supportsChatAppsV1 == v4->_supportsChatAppsV1
    && self->_supportsBubbleEditingV1 == v4->_supportsBubbleEditingV1
    && self->_supportsAcknowledgementsV1 == v4->_supportsAcknowledgementsV1
    && self->_supportsFullScreenMomentsV1 == v4->_supportsFullScreenMomentsV1
    && self->_supportsFullScreenMomentsV2 == v4->_supportsFullScreenMomentsV2
    && self->_supportsFullScreenMomentsV3 == v4->_supportsFullScreenMomentsV3
    && self->_supportsInvisibleInkV1 == v4->_supportsInvisibleInkV1
    && self->_supportsImpactEffectsV1 == v4->_supportsImpactEffectsV1
    && self->_supportsUpdateAttachmentsV1 == v4->_supportsUpdateAttachmentsV1
    && self->_supportsAutoloopVideoV1 == v4->_supportsAutoloopVideoV1
    && self->_supportsMediaV2 == v4->_supportsMediaV2
    && self->_supportsPhotosExtensionV1 == v4->_supportsPhotosExtensionV1
    && self->_supportsPhotosExtensionV2 == v4->_supportsPhotosExtensionV2
    && self->_supportsAudioMessagingV2 == v4->_supportsAudioMessagingV2
    && self->_supportsAnimojiV2 == v4->_supportsAnimojiV2
    && self->_supportsCertifiedDeliveryV1 == v4->_supportsCertifiedDeliveryV1
    && self->_supportsOriginalTimestampOrderingV1 == v4->_supportsOriginalTimestampOrderingV1
    && self->_supportsProtobufPayloadDataV2 == v4->_supportsProtobufPayloadDataV2
    && self->_supportsHEIFEncoding == v4->_supportsHEIFEncoding
    && self->_supportsHDRVideo == v4->_supportsHDRVideo
    && self->_prefersSDRVideo == v4->_prefersSDRVideo
    && self->_supportsQTAAudio == v4->_supportsQTAAudio
    && self->_supportsSyndicationActionsV1 == v4->_supportsSyndicationActionsV1
    && self->_supportsUWB == v4->_supportsUWB
    && self->_supportsDeliveredQuietlyAndNotifyRecipient == v4->_supportsDeliveredQuietlyAndNotifyRecipient
    && self->_supportsRetractAndEditMessages == v4->_supportsRetractAndEditMessages
    && self->_supportsPeopleRequestMessages == v4->_supportsPeopleRequestMessages
    && self->_supportsFamilyInviteMessageBubble == v4->_supportsFamilyInviteMessageBubble
    && self->_supportsPeopleRequestMessagesV2 == v4->_supportsPeopleRequestMessagesV2
    && self->_supportsAskTo == v4->_supportsAskTo
    && self->_supportsAskToV2 == v4->_supportsAskToV2
    && self->_supportsAskToResponseUI == v4->_supportsAskToResponseUI
    && self->_supportsEmojiStickers == v4->_supportsEmojiStickers
    && self->_supportsStickerEditing == v4->_supportsStickerEditing
    && self->_supportsTranscriptBackgrounds == v4->_supportsTranscriptBackgrounds
    && self->_supportsPolls == v4->_supportsPolls
    && self->_supportsLQMHQ == v4->_supportsLQMHQ
    && self->_supportsGroupTypingIndicators == v4->_supportsGroupTypingIndicators
    && self->_supportsAutomaticTranslation == v4->_supportsAutomaticTranslation
    && self->_supportsHybridGroupsV1 == v4->_supportsHybridGroupsV1
    && self->_supportsFindMyPluginMessages == v4->_supportsFindMyPluginMessages
    && self->_supportsSOSAlerting == v4->_supportsSOSAlerting
    && self->_supportsPeopleRequestMessagesV3 == v4->_supportsPeopleRequestMessagesV3
    && self->_supportsRecurringPaymentBubbles == v4->_supportsRecurringPaymentBubbles
    && self->_supportsGroupAppleCash == v4->_supportsGroupAppleCash
    && self->_supportsGroupPhotoRefreshVersion == v4->_supportsGroupPhotoRefreshVersion
    && self->_supportsEmojiTapbacks == v4->_supportsEmojiTapbacks
    && self->_supportsSendLaterMessages == v4->_supportsSendLaterMessages
    && self->_supportsEmojiImages == v4->_supportsEmojiImages
    && self->_supportsStickMojiBacks == v4->_supportsStickMojiBacks
    && self->_supportsHighQualityPhotoFileSizes == v4->_supportsHighQualityPhotoFileSizes
    && self->_supportsStewie == v4->_supportsStewie
    && self->_senderKeyMessageVersion == v4->_senderKeyMessageVersion
    && self->_supportsSenderKey == v4->_supportsSenderKey
    && self->_supportsURIlessMembershipUpdates == v4->_supportsURIlessMembershipUpdates
    && self->_supportsSenderKeySelfCheck == v4->_supportsSenderKeySelfCheck
    && self->_supportsRecoveryContactUpsell == v4->_supportsRecoveryContactUpsell
    && self->_supportsRBMChatBot == v4->_supportsRBMChatBot
    && self->_supportsQueueOneReadReceipts == v4->_supportsQueueOneReadReceipts
    && self->_supportsQueueOneReadReceiptsV2 == v4->_supportsQueueOneReadReceiptsV2
    && self->_supportsIntroductions == v4->_supportsIntroductions
    && self->_supportConditionalCKVEnforcement == v4->_supportConditionalCKVEnforcement
    && self->_supportsModernGFT == v4->_supportsModernGFT
    && self->_supportsCo == v4->_supportsCo
    && self->_isGreenTea == v4->_isGreenTea
    && self->_supportsGondola == v4->_supportsGondola
    && self->_doesNotSupportGFTCalls == v4->_doesNotSupportGFTCalls
    && self->_isWebClient == v4->_isWebClient
    && self->_supportsAVLess == v4->_supportsAVLess
    && self->_supportsSelfOneToOneInvites == v4->_supportsSelfOneToOneInvites
    && self->_supportsHighResVideoMessaging == v4->_supportsHighResVideoMessaging
    && self->_supportsLiveTranslation == v4->_supportsLiveTranslation
    && self->_supportsNearbyFaceTime == v4->_supportsNearbyFaceTime
    && self->_supportsSSRC == v4->_supportsSSRC
    && self->_supportsCalls25 == v4->_supportsCalls25
    && self->_supportsFriendingViaPush == v4->_supportsFriendingViaPush
    && self->_supportsMessageTransportV2 == v4->_supportsMessageTransportV2;

  return v5;
}

- (IDSEndpointCapabilities)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCapabilitiesMapKey"];
  if (v5)
  {
    v6 = [(IDSEndpointCapabilities *)self initWithCapabilitiesMap:v5];
  }

  else
  {
    v6 = [(IDSEndpointCapabilities *)self initWithCapabilitiesMap:MEMORY[0x1E695E0F8]];
    if (v6)
    {
      v6->_supportsKeySharing = [v4 decodeIntForKey:@"_supportsKeySharing"];
      v6->_supportsHarmony = [v4 decodeIntForKey:@"_supportsHarmony"];
      v6->_supportsFMDV2 = [v4 decodeIntForKey:@"_supportsFMDV2"];
      v6->_supportsFMFenceV1 = [v4 decodeIntForKey:@"_supportsFMFenceV1"];
      v6->_supportsLocationSharing = [v4 decodeIntForKey:@"_supportsLocationSharing"];
      v6->_supportsScreenTimeV2 = [v4 decodeIntForKey:@"_supportsScreenTimeV2"];
      v6->_supportsIncomingFindMyV1 = [v4 decodeIntForKey:@"_supportsIncomingFindMyV1"];
      v6->_supportsSecureLocationsV1 = [v4 decodeIntForKey:@"_supportsSecureLocationsV1"];
      v6->_supportsActivitySharing = [v4 decodeIntForKey:@"_supportsActivitySharing"];
      v6->_supportsManateeForAppleCash = [v4 decodeIntForKey:@"_supportsManateeForAppleCash"];
      v6->_supportsRegionForAppleCash = [v4 decodeIntForKey:@"_supportsRegionForAppleCash"];
      v6->_supportsHomeKitResident = [v4 decodeIntForKey:@"_supportsHomeKitResident"];
      v6->_supportsMapsRoutingPathLeg = [v4 decodeIntForKey:@"_supportsMapsRoutingPathLeg"];
      v6->_supportsMapsWGS84ElevationModel = [v4 decodeIntForKey:@"_supportsMapsWGS84ElevationModel"];
      v6->_supportsBeaconSharingV2 = [v4 decodeIntForKey:@"_supportsBeaconSharingV2"];
      v6->_supportsBeneficiaryInvites = [v4 decodeIntForKey:@"_supportsBeneficiaryInvites"];
      v6->_supportsScreenTimeErrors = [v4 decodeIntForKey:@"_supportsScreenTimeErrors"];
      v6->_supportsMapsWaypointRouteSharing = [v4 decodeIntForKey:@"_supportsMapsWaypointRouteSharing"];
      v6->_supportsMapsProtocolV5 = [v4 decodeIntForKey:@"_supportsMapsProtocolV5"];
      v6->_supportsCrossPlatformSharing = [v4 decodeIntForKey:@"_supportsCrossPlatformSharing"];
      v6->_supportsZelkova = [v4 decodeIntForKey:@"_supportsZelkova"];
      v6->_supportsPeopleRangingV1 = [v4 decodeIntForKey:@"_supportsPeopleRangingV1"];
      v6->_supportsBeaconSharingV3 = [v4 decodeIntForKey:@"_supportsBeaconSharingV3"];
      v6->_supportsGFTRelay = [v4 decodeIntForKey:@"_supportsGFTRelay"];
      v6->_supportsManateeActivitySharing = [v4 decodeIntForKey:@"_supportsManateeActivitySharing"];
      v6->_supportsRestrictedGuest = [v4 decodeIntForKey:@"_supportsRestrictedGuest"];
      v6->_supportsAdaptiveTemperatureAutomations = [v4 decodeIntForKey:@"_supportsAdaptiveTemperatureAutomations"];
      v6->_supportsRemoteATVSignIn = [v4 decodeIntForKey:@"_supportsRemoteATVSignIn"];
      v6->_supportsUserDrivenCallActivation = [v4 decodeIntForKey:@"_supportsUserDrivenCallActivation"];
      v6->_supportsLegacyContactInvitesV1 = [v4 decodeIntForKey:@"_supportsLegacyContactInvitesV1"];
      v6->_supportsLegacyContactInvitesV2 = [v4 decodeIntForKey:@"_supportsLegacyContactInvitesV2"];
      v6->_supportsLegacyContactInvitesV3 = [v4 decodeIntForKey:@"_supportsLegacyContactInvitesV3"];
      v6->_ecVersion = [v4 decodeIntForKey:@"_ecVersion"];
      v6->_isC2KEquipment = [v4 decodeIntForKey:@"_isC2KEquipment"];
      v6->_showPeerErrors = [v4 decodeIntForKey:@"_showPeerErrors"];
      v6->_nicknamesVersion = [v4 decodeIntForKey:@"_nicknamesVersion"];
      v6->_optionallyReceiveTypingIndicator = [v4 decodeIntForKey:@"_optionallyReceiveTypingIndicator"];
      v6->_supportsInlineAttachments = [v4 decodeIntForKey:@"_supportsInlineAttachments"];
      v6->_supportsKeepReceipts = [v4 decodeIntForKey:@"_supportsKeepReceipts"];
      v6->_supportsStickersV1 = [v4 decodeIntForKey:@"_supportsStickersV1"];
      v6->_supportsChatAppsV1 = [v4 decodeIntForKey:@"_supportsChatAppsV1"];
      v6->_supportsBubbleEditingV1 = [v4 decodeIntForKey:@"_supportsBubbleEditingV1"];
      v6->_supportsAcknowledgementsV1 = [v4 decodeIntForKey:@"_supportsAcknowledgementsV1"];
      v6->_supportsFullScreenMomentsV1 = [v4 decodeIntForKey:@"_supportsFullScreenMomentsV1"];
      v6->_supportsFullScreenMomentsV2 = [v4 decodeIntForKey:@"_supportsFullScreenMomentsV2"];
      v6->_supportsFullScreenMomentsV3 = [v4 decodeIntForKey:@"_supportsFullScreenMomentsV3"];
      v6->_supportsInvisibleInkV1 = [v4 decodeIntForKey:@"_supportsInvisibleInkV1"];
      v6->_supportsImpactEffectsV1 = [v4 decodeIntForKey:@"_supportsImpactEffectsV1"];
      v6->_supportsUpdateAttachmentsV1 = [v4 decodeIntForKey:@"_supportsUpdateAttachmentsV1"];
      v6->_supportsAutoloopVideoV1 = [v4 decodeIntForKey:@"_supportsAutoloopVideoV1"];
      v6->_supportsMediaV2 = [v4 decodeIntForKey:@"_supportsMediaV2"];
      v6->_supportsPhotosExtensionV1 = [v4 decodeIntForKey:@"_supportsPhotosExtensionV1"];
      v6->_supportsPhotosExtensionV2 = [v4 decodeIntForKey:@"_supportsPhotosExtensionV2"];
      v6->_supportsAudioMessagingV2 = [v4 decodeIntForKey:@"_supportsAudioMessagingV2"];
      v6->_supportsAnimojiV2 = [v4 decodeIntForKey:@"_supportsAnimojiV2"];
      v6->_supportsCertifiedDeliveryV1 = [v4 decodeIntForKey:@"_supportsCertifiedDeliveryV1"];
      v6->_supportsOriginalTimestampOrderingV1 = [v4 decodeIntForKey:@"_supportsOriginalTimestampOrderingV1"];
      v6->_supportsProtobufPayloadDataV2 = [v4 decodeIntForKey:@"_supportsProtobufPayloadDataV2"];
      v6->_supportsHEIFEncoding = [v4 decodeIntForKey:@"_supportsHEIFEncoding"];
      v6->_supportsHDRVideo = [v4 decodeIntForKey:@"_supportsHDRVideo"];
      v6->_prefersSDRVideo = [v4 decodeIntForKey:@"_prefersSDRVideo"];
      v6->_supportsQTAAudio = [v4 decodeIntForKey:@"_supportsQTAAudio"];
      v6->_supportsSyndicationActionsV1 = [v4 decodeIntForKey:@"_supportsSyndicationActionsV1"];
      v6->_supportsUWB = [v4 decodeIntForKey:@"_supportsUWB"];
      v6->_supportsDeliveredQuietlyAndNotifyRecipient = [v4 decodeIntForKey:@"_supportsDeliveredQuietlyAndNotifyRecipient"];
      v6->_supportsRetractAndEditMessages = [v4 decodeIntForKey:@"_supportsRetractAndEditMessages"];
      v6->_supportsPeopleRequestMessages = [v4 decodeIntForKey:@"_supportsPeopleRequestMessages"];
      v6->_supportsFamilyInviteMessageBubble = [v4 decodeIntForKey:@"_supportsFamilyInviteMessageBubble"];
      v6->_supportsPeopleRequestMessagesV2 = [v4 decodeIntForKey:@"_supportsPeopleRequestMessagesV2"];
      v6->_supportsAskTo = [v4 decodeIntForKey:@"_supportsAskTo"];
      v6->_supportsAskToV2 = [v4 decodeIntForKey:@"_supportsAskToV2"];
      v6->_supportsAskToResponseUI = [v4 decodeIntForKey:@"_supportsAskToResponseUI"];
      v6->_supportsEmojiStickers = [v4 decodeIntForKey:@"_supportsEmojiStickers"];
      v6->_supportsStickerEditing = [v4 decodeIntForKey:@"_supportsStickerEditing"];
      v6->_supportsTranscriptBackgrounds = [v4 decodeIntForKey:@"_supportsTranscriptBackgrounds"];
      v6->_supportsPolls = [v4 decodeIntForKey:@"_supportsPolls"];
      v6->_supportsLQMHQ = [v4 decodeIntForKey:@"_supportsLQMHQ"];
      v6->_supportsGroupTypingIndicators = [v4 decodeIntForKey:@"_supportsGroupTypingIndicators"];
      v6->_supportsAutomaticTranslation = [v4 decodeIntForKey:@"_supportsAutomaticTranslation"];
      v6->_supportsHybridGroupsV1 = [v4 decodeIntForKey:@"_supportsHybridGroupsV1"];
      v6->_supportsFindMyPluginMessages = [v4 decodeIntForKey:@"_supportsFindMyPluginMessages"];
      v6->_supportsSOSAlerting = [v4 decodeIntForKey:@"_supportsSOSAlerting"];
      v6->_supportsPeopleRequestMessagesV3 = [v4 decodeIntForKey:@"_supportsPeopleRequestMessagesV3"];
      v6->_supportsRecurringPaymentBubbles = [v4 decodeIntForKey:@"_supportsRecurringPaymentBubbles"];
      v6->_supportsGroupAppleCash = [v4 decodeIntForKey:@"_supportsGroupAppleCash"];
      v6->_supportsGroupPhotoRefreshVersion = [v4 decodeIntForKey:@"_supportsGroupPhotoRefreshVersion"];
      v6->_supportsEmojiTapbacks = [v4 decodeIntForKey:@"_supportsEmojiTapbacks"];
      v6->_supportsSendLaterMessages = [v4 decodeIntForKey:@"_supportsSendLaterMessages"];
      v6->_supportsEmojiImages = [v4 decodeIntForKey:@"_supportsEmojiImages"];
      v6->_supportsStickMojiBacks = [v4 decodeIntForKey:@"_supportsStickMojiBacks"];
      v6->_supportsHighQualityPhotoFileSizes = [v4 decodeIntForKey:@"_supportsHighQualityPhotoFileSizes"];
      v6->_supportsStewie = [v4 decodeIntForKey:@"_supportsStewie"];
      v6->_senderKeyMessageVersion = [v4 decodeIntForKey:@"_senderKeyMessageVersion"];
      v6->_supportsSenderKey = [v4 decodeIntForKey:@"_supportsSenderKey"];
      v6->_supportsURIlessMembershipUpdates = [v4 decodeIntForKey:@"_supportsURIlessMembershipUpdates"];
      v6->_supportsSenderKeySelfCheck = [v4 decodeIntForKey:@"_supportsSenderKeySelfCheck"];
      v6->_supportsRecoveryContactUpsell = [v4 decodeIntForKey:@"_supportsRecoveryContactUpsell"];
      v6->_supportsRBMChatBot = [v4 decodeIntForKey:@"_supportsRBMChatBot"];
      v6->_supportsQueueOneReadReceipts = [v4 decodeIntForKey:@"_supportsQueueOneReadReceipts"];
      v6->_supportsQueueOneReadReceiptsV2 = [v4 decodeIntForKey:@"_supportsQueueOneReadReceiptsV2"];
      v6->_supportsIntroductions = [v4 decodeIntForKey:@"_supportsIntroductions"];
      v6->_supportConditionalCKVEnforcement = [v4 decodeIntForKey:@"_supportConditionalCKVEnforcement"];
      v6->_supportsModernGFT = [v4 decodeIntForKey:@"_supportsModernGFT"];
      v6->_supportsCo = [v4 decodeIntForKey:@"_supportsCo"];
      v6->_isGreenTea = [v4 decodeIntForKey:@"_isGreenTea"];
      v6->_supportsGondola = [v4 decodeIntForKey:@"_supportsGondola"];
      v6->_doesNotSupportGFTCalls = [v4 decodeIntForKey:@"_doesNotSupportGFTCalls"];
      v6->_isWebClient = [v4 decodeIntForKey:@"_isWebClient"];
      v6->_supportsAVLess = [v4 decodeIntForKey:@"_supportsAVLess"];
      v6->_supportsSelfOneToOneInvites = [v4 decodeIntForKey:@"_supportsSelfOneToOneInvites"];
      v6->_supportsHighResVideoMessaging = [v4 decodeIntForKey:@"_supportsHighResVideoMessaging"];
      v6->_supportsLiveTranslation = [v4 decodeIntForKey:@"_supportsLiveTranslation"];
      v6->_supportsNearbyFaceTime = [v4 decodeIntForKey:@"_supportsNearbyFaceTime"];
      v6->_supportsSSRC = [v4 decodeIntForKey:@"_supportsSSRC"];
      v6->_supportsCalls25 = [v4 decodeIntForKey:@"_supportsCalls25"];
      v6->_supportsFriendingViaPush = [v4 decodeIntForKey:@"_supportsFriendingViaPush"];
      v6->_supportsMessageTransportV2 = [v4 decodeIntForKey:@"_supportsMessageTransportV2"];
    }
  }

  v7 = v6;

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  supportsKeySharing = self->_supportsKeySharing;
  v5 = a3;
  [v5 encodeInt:supportsKeySharing forKey:@"_supportsKeySharing"];
  [v5 encodeInt:self->_supportsHarmony forKey:@"_supportsHarmony"];
  [v5 encodeInt:self->_supportsFMDV2 forKey:@"_supportsFMDV2"];
  [v5 encodeInt:self->_supportsFMFenceV1 forKey:@"_supportsFMFenceV1"];
  [v5 encodeInt:self->_supportsLocationSharing forKey:@"_supportsLocationSharing"];
  [v5 encodeInt:self->_supportsScreenTimeV2 forKey:@"_supportsScreenTimeV2"];
  [v5 encodeInt:self->_supportsIncomingFindMyV1 forKey:@"_supportsIncomingFindMyV1"];
  [v5 encodeInt:self->_supportsSecureLocationsV1 forKey:@"_supportsSecureLocationsV1"];
  [v5 encodeInt:self->_supportsActivitySharing forKey:@"_supportsActivitySharing"];
  [v5 encodeInt:self->_supportsManateeForAppleCash forKey:@"_supportsManateeForAppleCash"];
  [v5 encodeInt:self->_supportsRegionForAppleCash forKey:@"_supportsRegionForAppleCash"];
  [v5 encodeInt:self->_supportsHomeKitResident forKey:@"_supportsHomeKitResident"];
  [v5 encodeInt:self->_supportsMapsRoutingPathLeg forKey:@"_supportsMapsRoutingPathLeg"];
  [v5 encodeInt:self->_supportsMapsWGS84ElevationModel forKey:@"_supportsMapsWGS84ElevationModel"];
  [v5 encodeInt:self->_supportsBeaconSharingV2 forKey:@"_supportsBeaconSharingV2"];
  [v5 encodeInt:self->_supportsBeneficiaryInvites forKey:@"_supportsBeneficiaryInvites"];
  [v5 encodeInt:self->_supportsScreenTimeErrors forKey:@"_supportsScreenTimeErrors"];
  [v5 encodeInt:self->_supportsMapsWaypointRouteSharing forKey:@"_supportsMapsWaypointRouteSharing"];
  [v5 encodeInt:self->_supportsMapsProtocolV5 forKey:@"_supportsMapsProtocolV5"];
  [v5 encodeInt:self->_supportsCrossPlatformSharing forKey:@"_supportsCrossPlatformSharing"];
  [v5 encodeInt:self->_supportsZelkova forKey:@"_supportsZelkova"];
  [v5 encodeInt:self->_supportsPeopleRangingV1 forKey:@"_supportsPeopleRangingV1"];
  [v5 encodeInt:self->_supportsBeaconSharingV3 forKey:@"_supportsBeaconSharingV3"];
  [v5 encodeInt:self->_supportsGFTRelay forKey:@"_supportsGFTRelay"];
  [v5 encodeInt:self->_supportsManateeActivitySharing forKey:@"_supportsManateeActivitySharing"];
  [v5 encodeInt:self->_supportsRestrictedGuest forKey:@"_supportsRestrictedGuest"];
  [v5 encodeInt:self->_supportsAdaptiveTemperatureAutomations forKey:@"_supportsAdaptiveTemperatureAutomations"];
  [v5 encodeInt:self->_supportsRemoteATVSignIn forKey:@"_supportsRemoteATVSignIn"];
  [v5 encodeInt:self->_supportsUserDrivenCallActivation forKey:@"_supportsUserDrivenCallActivation"];
  [v5 encodeInt:self->_supportsLegacyContactInvitesV1 forKey:@"_supportsLegacyContactInvitesV1"];
  [v5 encodeInt:self->_supportsLegacyContactInvitesV2 forKey:@"_supportsLegacyContactInvitesV2"];
  [v5 encodeInt:self->_supportsLegacyContactInvitesV3 forKey:@"_supportsLegacyContactInvitesV3"];
  [v5 encodeInt:self->_ecVersion forKey:@"_ecVersion"];
  [v5 encodeInt:self->_isC2KEquipment forKey:@"_isC2KEquipment"];
  [v5 encodeInt:self->_showPeerErrors forKey:@"_showPeerErrors"];
  [v5 encodeInt:self->_nicknamesVersion forKey:@"_nicknamesVersion"];
  [v5 encodeInt:self->_optionallyReceiveTypingIndicator forKey:@"_optionallyReceiveTypingIndicator"];
  [v5 encodeInt:self->_supportsInlineAttachments forKey:@"_supportsInlineAttachments"];
  [v5 encodeInt:self->_supportsKeepReceipts forKey:@"_supportsKeepReceipts"];
  [v5 encodeInt:self->_supportsStickersV1 forKey:@"_supportsStickersV1"];
  [v5 encodeInt:self->_supportsChatAppsV1 forKey:@"_supportsChatAppsV1"];
  [v5 encodeInt:self->_supportsBubbleEditingV1 forKey:@"_supportsBubbleEditingV1"];
  [v5 encodeInt:self->_supportsAcknowledgementsV1 forKey:@"_supportsAcknowledgementsV1"];
  [v5 encodeInt:self->_supportsFullScreenMomentsV1 forKey:@"_supportsFullScreenMomentsV1"];
  [v5 encodeInt:self->_supportsFullScreenMomentsV2 forKey:@"_supportsFullScreenMomentsV2"];
  [v5 encodeInt:self->_supportsFullScreenMomentsV3 forKey:@"_supportsFullScreenMomentsV3"];
  [v5 encodeInt:self->_supportsInvisibleInkV1 forKey:@"_supportsInvisibleInkV1"];
  [v5 encodeInt:self->_supportsImpactEffectsV1 forKey:@"_supportsImpactEffectsV1"];
  [v5 encodeInt:self->_supportsUpdateAttachmentsV1 forKey:@"_supportsUpdateAttachmentsV1"];
  [v5 encodeInt:self->_supportsAutoloopVideoV1 forKey:@"_supportsAutoloopVideoV1"];
  [v5 encodeInt:self->_supportsMediaV2 forKey:@"_supportsMediaV2"];
  [v5 encodeInt:self->_supportsPhotosExtensionV1 forKey:@"_supportsPhotosExtensionV1"];
  [v5 encodeInt:self->_supportsPhotosExtensionV2 forKey:@"_supportsPhotosExtensionV2"];
  [v5 encodeInt:self->_supportsAudioMessagingV2 forKey:@"_supportsAudioMessagingV2"];
  [v5 encodeInt:self->_supportsAnimojiV2 forKey:@"_supportsAnimojiV2"];
  [v5 encodeInt:self->_supportsCertifiedDeliveryV1 forKey:@"_supportsCertifiedDeliveryV1"];
  [v5 encodeInt:self->_supportsOriginalTimestampOrderingV1 forKey:@"_supportsOriginalTimestampOrderingV1"];
  [v5 encodeInt:self->_supportsProtobufPayloadDataV2 forKey:@"_supportsProtobufPayloadDataV2"];
  [v5 encodeInt:self->_supportsHEIFEncoding forKey:@"_supportsHEIFEncoding"];
  [v5 encodeInt:self->_supportsHDRVideo forKey:@"_supportsHDRVideo"];
  [v5 encodeInt:self->_prefersSDRVideo forKey:@"_prefersSDRVideo"];
  [v5 encodeInt:self->_supportsQTAAudio forKey:@"_supportsQTAAudio"];
  [v5 encodeInt:self->_supportsSyndicationActionsV1 forKey:@"_supportsSyndicationActionsV1"];
  [v5 encodeInt:self->_supportsUWB forKey:@"_supportsUWB"];
  [v5 encodeInt:self->_supportsDeliveredQuietlyAndNotifyRecipient forKey:@"_supportsDeliveredQuietlyAndNotifyRecipient"];
  [v5 encodeInt:self->_supportsRetractAndEditMessages forKey:@"_supportsRetractAndEditMessages"];
  [v5 encodeInt:self->_supportsPeopleRequestMessages forKey:@"_supportsPeopleRequestMessages"];
  [v5 encodeInt:self->_supportsFamilyInviteMessageBubble forKey:@"_supportsFamilyInviteMessageBubble"];
  [v5 encodeInt:self->_supportsPeopleRequestMessagesV2 forKey:@"_supportsPeopleRequestMessagesV2"];
  [v5 encodeInt:self->_supportsAskTo forKey:@"_supportsAskTo"];
  [v5 encodeInt:self->_supportsAskToV2 forKey:@"_supportsAskToV2"];
  [v5 encodeInt:self->_supportsAskToResponseUI forKey:@"_supportsAskToResponseUI"];
  [v5 encodeInt:self->_supportsEmojiStickers forKey:@"_supportsEmojiStickers"];
  [v5 encodeInt:self->_supportsStickerEditing forKey:@"_supportsStickerEditing"];
  [v5 encodeInt:self->_supportsTranscriptBackgrounds forKey:@"_supportsTranscriptBackgrounds"];
  [v5 encodeInt:self->_supportsPolls forKey:@"_supportsPolls"];
  [v5 encodeInt:self->_supportsLQMHQ forKey:@"_supportsLQMHQ"];
  [v5 encodeInt:self->_supportsGroupTypingIndicators forKey:@"_supportsGroupTypingIndicators"];
  [v5 encodeInt:self->_supportsAutomaticTranslation forKey:@"_supportsAutomaticTranslation"];
  [v5 encodeInt:self->_supportsHybridGroupsV1 forKey:@"_supportsHybridGroupsV1"];
  [v5 encodeInt:self->_supportsFindMyPluginMessages forKey:@"_supportsFindMyPluginMessages"];
  [v5 encodeInt:self->_supportsSOSAlerting forKey:@"_supportsSOSAlerting"];
  [v5 encodeInt:self->_supportsPeopleRequestMessagesV3 forKey:@"_supportsPeopleRequestMessagesV3"];
  [v5 encodeInt:self->_supportsRecurringPaymentBubbles forKey:@"_supportsRecurringPaymentBubbles"];
  [v5 encodeInt:self->_supportsGroupAppleCash forKey:@"_supportsGroupAppleCash"];
  [v5 encodeInt:self->_supportsGroupPhotoRefreshVersion forKey:@"_supportsGroupPhotoRefreshVersion"];
  [v5 encodeInt:self->_supportsEmojiTapbacks forKey:@"_supportsEmojiTapbacks"];
  [v5 encodeInt:self->_supportsSendLaterMessages forKey:@"_supportsSendLaterMessages"];
  [v5 encodeInt:self->_supportsEmojiImages forKey:@"_supportsEmojiImages"];
  [v5 encodeInt:self->_supportsStickMojiBacks forKey:@"_supportsStickMojiBacks"];
  [v5 encodeInt:self->_supportsHighQualityPhotoFileSizes forKey:@"_supportsHighQualityPhotoFileSizes"];
  [v5 encodeInt:self->_supportsStewie forKey:@"_supportsStewie"];
  [v5 encodeInt:self->_senderKeyMessageVersion forKey:@"_senderKeyMessageVersion"];
  [v5 encodeInt:self->_supportsSenderKey forKey:@"_supportsSenderKey"];
  [v5 encodeInt:self->_supportsURIlessMembershipUpdates forKey:@"_supportsURIlessMembershipUpdates"];
  [v5 encodeInt:self->_supportsSenderKeySelfCheck forKey:@"_supportsSenderKeySelfCheck"];
  [v5 encodeInt:self->_supportsRecoveryContactUpsell forKey:@"_supportsRecoveryContactUpsell"];
  [v5 encodeInt:self->_supportsRBMChatBot forKey:@"_supportsRBMChatBot"];
  [v5 encodeInt:self->_supportsQueueOneReadReceipts forKey:@"_supportsQueueOneReadReceipts"];
  [v5 encodeInt:self->_supportsQueueOneReadReceiptsV2 forKey:@"_supportsQueueOneReadReceiptsV2"];
  [v5 encodeInt:self->_supportsIntroductions forKey:@"_supportsIntroductions"];
  [v5 encodeInt:self->_supportConditionalCKVEnforcement forKey:@"_supportConditionalCKVEnforcement"];
  [v5 encodeInt:self->_supportsModernGFT forKey:@"_supportsModernGFT"];
  [v5 encodeInt:self->_supportsCo forKey:@"_supportsCo"];
  [v5 encodeInt:self->_isGreenTea forKey:@"_isGreenTea"];
  [v5 encodeInt:self->_supportsGondola forKey:@"_supportsGondola"];
  [v5 encodeInt:self->_doesNotSupportGFTCalls forKey:@"_doesNotSupportGFTCalls"];
  [v5 encodeInt:self->_isWebClient forKey:@"_isWebClient"];
  [v5 encodeInt:self->_supportsAVLess forKey:@"_supportsAVLess"];
  [v5 encodeInt:self->_supportsSelfOneToOneInvites forKey:@"_supportsSelfOneToOneInvites"];
  [v5 encodeInt:self->_supportsHighResVideoMessaging forKey:@"_supportsHighResVideoMessaging"];
  [v5 encodeInt:self->_supportsLiveTranslation forKey:@"_supportsLiveTranslation"];
  [v5 encodeInt:self->_supportsNearbyFaceTime forKey:@"_supportsNearbyFaceTime"];
  [v5 encodeInt:self->_supportsSSRC forKey:@"_supportsSSRC"];
  [v5 encodeInt:self->_supportsCalls25 forKey:@"_supportsCalls25"];
  [v5 encodeInt:self->_supportsFriendingViaPush forKey:@"_supportsFriendingViaPush"];
  [v5 encodeInt:self->_supportsMessageTransportV2 forKey:@"_supportsMessageTransportV2"];
}

@end