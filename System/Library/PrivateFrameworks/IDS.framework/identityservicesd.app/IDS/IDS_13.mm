void sub_1003B185C(uint64_t a1)
{
  v6 = objc_alloc_init(IMMessageContext);
  [v6 setShouldBoost:1];
  v2 = +[IDSDaemon sharedInstance];
  v3 = [*(a1 + 32) sharedState];
  v4 = [v3 pushTopic];
  v5 = [v2 broadcasterForTopic:v4 entitlement:kIDSSessionEntitlement command:0 messageContext:v6];

  [v5 groupSessionDidDisconnectUnderlyingLinks:*(a1 + 40)];
}

void sub_1003B442C(uint64_t a1)
{
  v2 = +[IDSFoundationLog IDSDSession];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) sharedState];
    v4 = [v3 uniqueID];
    v5 = *(a1 + 56);
    v6 = *(a1 + 40);
    *buf = 138412802;
    v11 = v4;
    v12 = 1024;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Sending server message QR metrics report for session %@ end reason %d, ua: %@", buf, 0x1Cu);
  }

  v7 = [[IDSServerMessage alloc] initWithPayload:*(a1 + 48) command:&off_100C3BCB0];
  v8 = +[IDSDeliveryController sharedInstance];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1003B45C8;
  v9[3] = &unk_100BD9D10;
  v9[4] = *(a1 + 32);
  [v8 sendIDSMessage:v7 service:0 topic:kIDSQuickRelayPushTopic completionBlock:v9];
}

void sub_1003B45C8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 idsResponseCode];
  v5 = +[IDSFoundationLog IDSDSession];
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = [*(a1 + 32) sharedState];
      v8 = [v7 uniqueID];
      v9 = [v3 deliveryError];
      v11 = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      v10 = "Failed sending server message QR metrics report for session %@, delivery error %@";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v10, &v11, 0x16u);
    }
  }

  else if (v6)
  {
    v7 = [*(a1 + 32) sharedState];
    v8 = [v7 uniqueID];
    v9 = [v3 deliveryError];
    v11 = 138412546;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v10 = "Finished sending server message QR metrics report for session %@ delivery error %@";
    goto LABEL_6;
  }
}

void sub_1003B50F4(uint64_t a1)
{
  v8 = objc_alloc_init(IMMessageContext);
  [v8 setShouldBoost:1];
  v2 = +[IDSDaemon sharedInstance];
  v3 = [*(a1 + 32) sharedState];
  v4 = [v3 pushTopic];
  v5 = [v2 broadcasterForTopic:v4 entitlement:kIDSSessionEntitlement command:0 messageContext:v8];

  v6 = [*(a1 + 32) sharedState];
  v7 = [v6 uniqueID];
  [v5 session:v7 didReceiveBlockedParticipantIDs:*(a1 + 40) withCode:0 withType:*(a1 + 48) isTruncated:*(a1 + 50)];
}

void sub_1003B5200(uint64_t a1)
{
  v11 = objc_alloc_init(IMMessageContext);
  [v11 setShouldBoost:1];
  v2 = +[IDSDaemon sharedInstance];
  v3 = [*(a1 + 32) sharedState];
  v4 = [v3 pushTopic];
  v5 = [v2 broadcasterForTopic:v4 entitlement:kIDSSessionEntitlement command:0 messageContext:v11];

  v6 = *(a1 + 56);
  if (v6 == 3)
  {
    v7 = *(*(a1 + 48) + 8);
    goto LABEL_6;
  }

  if (v6 != 4)
  {
    v7 = *(*(a1 + 48) + 8);
    v8 = 2;
    goto LABEL_8;
  }

  v7 = *(*(a1 + 48) + 8);
  if (*(a1 + 58) != 5)
  {
LABEL_6:
    *(v7 + 24) = 0;
    goto LABEL_9;
  }

  v8 = 3;
LABEL_8:
  *(v7 + 24) = v8;
LABEL_9:
  v9 = [*(a1 + 32) sharedState];
  v10 = [v9 uniqueID];
  [v5 session:v10 didReceiveQueryBlockedParticipantIDs:*(a1 + 40) withCode:*(*(*(a1 + 48) + 8) + 24) isTruncated:*(a1 + 60)];
}

void sub_1003B535C(uint64_t a1)
{
  v12 = objc_alloc_init(IMMessageContext);
  [v12 setShouldBoost:1];
  v2 = +[IDSDaemon sharedInstance];
  v3 = [*(a1 + 32) sharedState];
  v4 = [v3 pushTopic];
  v5 = [v2 broadcasterForTopic:v4 entitlement:kIDSSessionEntitlement command:0 messageContext:v12];

  v6 = *(a1 + 56);
  if (v6 == 3)
  {
    goto LABEL_13;
  }

  if (v6 != 4)
  {
    v8 = *(*(a1 + 48) + 8);
    v9 = 2;
    goto LABEL_8;
  }

  v7 = *(a1 + 58);
  if (v7 == 7)
  {
    v8 = *(*(a1 + 48) + 8);
    v9 = 4;
    goto LABEL_8;
  }

  if (v7 == 5)
  {
    v8 = *(*(a1 + 48) + 8);
    v9 = 3;
LABEL_8:
    *(v8 + 24) = v9;
    goto LABEL_14;
  }

  if (!*(a1 + 60))
  {
LABEL_13:
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  else
  {
    if (v7 != 1)
    {
      v7 = 2;
    }

    *(*(*(a1 + 48) + 8) + 24) = v7;
  }

LABEL_14:
  v10 = [*(a1 + 32) sharedState];
  v11 = [v10 uniqueID];
  [v5 session:v11 didReceiveBlockedParticipantIDs:*(a1 + 40) withCode:*(*(*(a1 + 48) + 8) + 24) withType:*(a1 + 60) isTruncated:*(a1 + 62)];
}

void sub_1003B54F8(uint64_t a1)
{
  v10 = objc_alloc_init(IMMessageContext);
  [v10 setShouldBoost:1];
  v2 = +[IDSDaemon sharedInstance];
  v3 = [*(a1 + 32) sharedState];
  v4 = [v3 pushTopic];
  v5 = [v2 broadcasterForTopic:v4 entitlement:kIDSSessionEntitlement command:0 messageContext:v10];

  v6 = *(a1 + 56);
  *(*(*(a1 + 48) + 8) + 24) = 2 * (v6 != 3);
  if (v6 == 3)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  else
  {
    if (*(a1 + 58) == 5)
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    *(*(*(a1 + 48) + 8) + 24) = v7;
  }

  v8 = [*(a1 + 32) sharedState];
  v9 = [v8 uniqueID];
  [v5 session:v9 didRemoveParticipantIDs:*(a1 + 40) withCode:*(*(*(a1 + 48) + 8) + 24) isTruncated:*(a1 + 60)];
}

void sub_1003B5658(uint64_t a1)
{
  v11 = objc_alloc_init(IMMessageContext);
  [v11 setShouldBoost:1];
  v2 = +[IDSDaemon sharedInstance];
  v3 = [*(a1 + 32) sharedState];
  v4 = [v3 pushTopic];
  v5 = [v2 broadcasterForTopic:v4 entitlement:kIDSSessionEntitlement command:0 messageContext:v11];

  v6 = [*(a1 + 40) objectForKeyedSubscript:IDSStunAttributeClientContextIdentifierKey];
  v7 = [v6 unsignedLongLongValue];

  v8 = [*(a1 + 32) sharedState];
  v9 = [v8 uniqueID];
  v10 = *(a1 + 56);
  if (v7)
  {
    [v5 sessionDidReceiveParticipantUpgrade:v9 participantType:v10 requestIdentifier:v7 error:*(a1 + 48)];
  }

  else
  {
    [v5 sessionDidReceiveParticipantUpgrade:v9 participantType:v10 error:*(a1 + 48)];
  }
}

void sub_1003B5798(uint64_t a1)
{
  v8 = objc_alloc_init(IMMessageContext);
  [v8 setShouldBoost:1];
  v2 = +[IDSDaemon sharedInstance];
  v3 = [*(a1 + 32) sharedState];
  v4 = [v3 pushTopic];
  v5 = [v2 broadcasterForTopic:v4 entitlement:kIDSSessionEntitlement command:0 messageContext:v8];

  v6 = [*(a1 + 32) sharedState];
  v7 = [v6 uniqueID];
  [v5 session:v7 didReceiveParticipantIDs:0 withCode:5 managementType:*(a1 + 40)];
}

void sub_1003B5AB4(uint64_t a1)
{
  v8 = objc_alloc_init(IMMessageContext);
  [v8 setShouldBoost:1];
  v2 = +[IDSDaemon sharedInstance];
  v3 = [*(a1 + 32) sharedState];
  v4 = [v3 pushTopic];
  v5 = [v2 broadcasterForTopic:v4 entitlement:kIDSSessionEntitlement command:0 messageContext:v8];

  v6 = [*(a1 + 32) sharedState];
  v7 = [v6 uniqueID];
  [v5 participantUpdatedForSession:v7];
}

void sub_1003B5E80(uint64_t a1)
{
  v8 = objc_alloc_init(IMMessageContext);
  [v8 setShouldBoost:1];
  v2 = +[IDSDaemon sharedInstance];
  v3 = [*(a1 + 32) sharedState];
  v4 = [v3 pushTopic];
  v5 = [v2 broadcasterForTopic:v4 entitlement:kIDSSessionEntitlement command:0 messageContext:v8];

  v6 = [*(a1 + 32) sharedState];
  v7 = [v6 uniqueID];
  [v5 session:v7 didRegisterPluginAllocationInfo:*(a1 + 40)];
}

void sub_1003B6208(uint64_t a1)
{
  v8 = objc_alloc_init(IMMessageContext);
  [v8 setShouldBoost:1];
  v2 = +[IDSDaemon sharedInstance];
  v3 = [*(a1 + 32) sharedState];
  v4 = [v3 pushTopic];
  v5 = [v2 broadcasterForTopic:v4 entitlement:kIDSSessionEntitlement command:0 messageContext:v8];

  v6 = [*(a1 + 32) sharedState];
  v7 = [v6 uniqueID];
  [v5 session:v7 didUnregisterPluginAllocationInfo:*(a1 + 40)];
}

void sub_1003B6450(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a3;
  [v4 link:v5 didReceivePluginUnregistration:objc_msgSend(a2 pluginName:{"unsignedLongLongValue"), v6}];
}

void sub_1003B6678(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKey:v5];

  if (!v6)
  {
    [*(a1 + 32) setObject:v5 forKey:v7];
  }
}

void sub_1003B7438(uint64_t a1)
{
  v8 = objc_alloc_init(IMMessageContext);
  [v8 setShouldBoost:1];
  v2 = +[IDSDaemon sharedInstance];
  v3 = [*(a1 + 32) sharedState];
  v4 = [v3 pushTopic];
  v5 = [v2 broadcasterForTopic:v4 entitlement:kIDSSessionEntitlement command:0 messageContext:v8];

  v6 = [*(a1 + 32) sharedState];
  v7 = [v6 uniqueID];
  [v5 session:v7 didReceiveServerErrorCode:*(a1 + 40)];
}

void sub_1003B8648(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = im_primary_queue();
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1003B8764;
  v10[3] = &unk_100BDA1C8;
  v11 = *(a1 + 32);
  v7 = *(a1 + 40);
  v17 = a2;
  v12 = v7;
  v13 = v5;
  v14 = *(a1 + 48);
  v16 = *(a1 + 72);
  v15 = *(a1 + 56);
  v8 = v5;
  v9 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INTERACTIVE, 0, v10);
  dispatch_async(v6, v9);
}

void sub_1003B8764(uint64_t a1)
{
  v2 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138412546;
    v20 = v3;
    v21 = 2112;
    v22 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "_processParticipantInfo: verified signature: %@ matchesPayload: %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v16 = *(a1 + 32);
      v18 = *(a1 + 40);
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v16 = *(a1 + 32);
        v18 = *(a1 + 40);
        _IDSLogV();
      }
    }
  }

  if (*(a1 + 88))
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v6 = objc_alloc_init(NSMutableArray);
    v7 = [[NSMutableData alloc] initWithData:*(a1 + 56)];
    [v7 appendBytes:a1 + 80 length:8];
    if (v6 && v7)
    {
      CFArrayAppendValue(v6, v7);
    }

    [(__CFDictionary *)Mutable setObject:v6 forKey:&off_100C3BD58, v16, v18];
    [*(*(a1 + 64) + 160) setObject:Mutable forKey:*(a1 + 72)];
    v8 = [*(*(a1 + 64) + 152) objectForKeyedSubscript:*(a1 + 72)];
    if (v8)
    {
      v10 = *(a1 + 64);
      v9 = (a1 + 64);
      v11 = [v10[20] objectForKeyedSubscript:v9[1]];
      [v10 receiveAndDecryptEncryptedDataBlobs:v11];

      [*(*v9 + 160) setObject:0 forKeyedSubscript:v9[1]];
    }

    else
    {
      v14 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [*(a1 + 72) unsignedLongLongValue];
        *buf = 134217984;
        v20 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "_processParticipantInfo: have not received AVC Blob yet from participant: %llu!", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
      {
        v17 = [*(a1 + 72) unsignedLongLongValue];
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          [*(a1 + 72) unsignedLongLongValue];
          _IDSLogV();
        }
      }
    }
  }

  else
  {
    v12 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 48);
      *buf = 138412290;
      v20 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "_processParticipantInfo: failed to verify signature with error: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }
  }
}

void sub_1003B9B18(uint64_t a1)
{
  v2 = [*(a1 + 32) sharedState];
  v9 = [v2 pushTopic];

  v3 = objc_alloc_init(IMMessageContext);
  [v3 setShouldBoost:1];
  v4 = +[IDSDaemon sharedInstance];
  v5 = [v4 broadcasterForTopic:v9 entitlement:kIDSSessionEntitlement command:0 messageContext:v3];

  v6 = [*(a1 + 32) sharedState];
  v7 = [v6 uniqueID];
  v8 = +[NSArray array];
  [v5 session:v7 didReceiveActiveParticipants:v8 success:0];
}

void sub_1003B9C30(uint64_t a1)
{
  v2 = +[IDSGroupEncryptionController sharedInstance];
  v3 = [*(a1 + 32) sharedState];
  v4 = [v3 groupID];
  v5 = [*(a1 + 32) sharedState];
  v6 = [v5 uniqueID];
  [v2 didUpdateParticipants:&__NSArray0__struct ofType:0 forGroup:v4 sessionID:v6];

  v7 = [*(a1 + 32) sharedState];
  v13 = [v7 pushTopic];

  v8 = objc_alloc_init(IMMessageContext);
  [v8 setShouldBoost:1];
  v9 = +[IDSDaemon sharedInstance];
  v10 = [v9 broadcasterForTopic:v13 entitlement:kIDSSessionEntitlement command:0 messageContext:v8];

  v11 = [*(a1 + 32) sharedState];
  v12 = [v11 uniqueID];
  [v10 session:v12 didReceiveActiveParticipants:&__NSArray0__struct success:1];
}

void sub_1003B9DB8(uint64_t a1)
{
  v2 = +[IDSGroupEncryptionController sharedInstance];
  v3 = [*(a1 + 32) sharedState];
  v4 = [v3 groupID];
  v5 = [*(a1 + 32) sharedState];
  v6 = [v5 uniqueID];
  [v2 didUpdateParticipants:&__NSArray0__struct ofType:1 forGroup:v4 sessionID:v6];

  v7 = [*(a1 + 32) sharedState];
  v13 = [v7 pushTopic];

  v8 = objc_alloc_init(IMMessageContext);
  [v8 setShouldBoost:1];
  v9 = +[IDSDaemon sharedInstance];
  v10 = [v9 broadcasterForTopic:v13 entitlement:kIDSSessionEntitlement command:0 messageContext:v8];

  v11 = [*(a1 + 32) sharedState];
  v12 = [v11 uniqueID];
  [v10 session:v12 didReceiveActiveLightweightParticipants:&__NSArray0__struct success:1];
}

id sub_1003BBED0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 sharedState];
  v5 = [v4 serviceName];
  v6 = [IDSURI URIWithPrefixedURI:v3 withServiceLoggingHint:v5];

  return v6;
}

void sub_1003BBF5C(uint64_t a1)
{
  v2 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003BC0F0;
  block[3] = &unk_100BDA0B0;
  v13 = *(a1 + 64);
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v14 = *(a1 + 65);
  v12 = v3;
  v4 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INITIATED, 0, block);
  dispatch_async(v2, v4);

  if (*(a1 + 65) == 1)
  {
    v5 = im_primary_queue();
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1003BC640;
    v7[3] = &unk_100BD8DE8;
    v7[4] = *(a1 + 32);
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    v10 = *(a1 + 66);
    v6 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INITIATED, 0, v7);
    dispatch_async(v5, v6);
  }
}

void sub_1003BC0F0(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = +[IDSFoundationLog IDSDSession];
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (v4)
    {
      v5 = [*(a1 + 32) sharedState];
      v6 = [v5 groupID];
      v7 = v6;
      v8 = @"NO";
      if (*(a1 + 49))
      {
        v8 = @"YES";
      }

      *buf = 138412546;
      v29 = v6;
      v30 = 2112;
      v31 = v8;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "updateMembers: Resetting keys & sending membership change to AVC for group %@, triggeredLocally: %@", buf, 0x16u);
    }

    v9 = *(a1 + 32);
    v10 = *(a1 + 50);
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1003BC404;
    v25[3] = &unk_100BD8FC0;
    v25[4] = v9;
    v27 = *(a1 + 48);
    v26 = *(a1 + 40);
    [v9 recvMembershipChangeEventWithReason:v10 completionHandler:v25];
    [*(*(a1 + 32) + 944) membershipChange];
  }

  else
  {
    if (v4)
    {
      v11 = [*(a1 + 32) sharedState];
      v12 = [v11 groupID];
      v13 = v12;
      v14 = @"NO";
      if (*(a1 + 49))
      {
        v14 = @"YES";
      }

      *buf = 138412546;
      v29 = v12;
      v30 = 2112;
      v31 = v14;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "updateMembers: No need to reset keys for group %@, triggeredLocally: %@", buf, 0x16u);
    }

    v24 = +[IDSGroupEncryptionController sharedInstance];
    v15 = [*(a1 + 32) sharedState];
    v16 = [v15 destinations];
    v17 = [v16 allObjects];
    v18 = [*(a1 + 32) sharedState];
    v19 = [v18 groupID];
    v20 = [*(a1 + 32) sharedState];
    v21 = [v20 uniqueID];
    v22 = [*(a1 + 32) sharedState];
    v23 = [v22 destinationsLightweightStatus];
    [v24 didUpdateMembers:v17 forGroup:v19 sessionID:v21 lightweightStatusDict:v23 hasChangedStandardMembers:*(a1 + 48) newlyAddedMembers:*(a1 + 40)];
  }
}

void sub_1003BC404(uint64_t a1)
{
  v2 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003BC4C8;
  block[3] = &unk_100BD8FC0;
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = *(a1 + 48);
  v6 = v3;
  v4 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INITIATED, 0, block);
  dispatch_async(v2, v4);
}

void sub_1003BC4C8(uint64_t a1)
{
  v2 = +[IDSGroupEncryptionController sharedInstance];
  v3 = [*(a1 + 32) sharedState];
  v4 = [v3 groupID];
  [v2 resetKeysForGroup:v4 shouldRemoveCurrentParticipants:0];

  v14 = +[IDSGroupEncryptionController sharedInstance];
  v5 = [*(a1 + 32) sharedState];
  v6 = [v5 destinations];
  v7 = [v6 allObjects];
  v8 = [*(a1 + 32) sharedState];
  v9 = [v8 groupID];
  v10 = [*(a1 + 32) sharedState];
  v11 = [v10 uniqueID];
  v12 = [*(a1 + 32) sharedState];
  v13 = [v12 destinationsLightweightStatus];
  [v14 didUpdateMembers:v7 forGroup:v9 sessionID:v11 lightweightStatusDict:v13 hasChangedStandardMembers:*(a1 + 48) newlyAddedMembers:*(a1 + 40)];
}

void sub_1003BC640(uint64_t a1)
{
  v2 = +[IDSFoundationLog IDSDSession];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "updateMembers: Informing remote participants of membership change via push.", buf, 2u);
  }

  v19 = [*(a1 + 32) groupStatusNotificationController];
  v22 = [*(a1 + 32) sharedState];
  v21 = [v22 destinations];
  v17 = [v21 allObjects];
  v20 = [*(a1 + 32) sharedState];
  v15 = [v20 groupID];
  v16 = *(a1 + 40);
  v3 = *(a1 + 32);
  v14 = v3[23];
  v18 = [v3 accountController];
  v4 = [*(a1 + 32) sharedState];
  v5 = [v4 accountID];
  v6 = [v18 accountWithUniqueID:v5];
  v7 = [*(a1 + 32) sharedState];
  v8 = [v7 fromURI];
  v9 = [*(a1 + 32) sharedState];
  v10 = [v9 uniqueID];
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  BYTE1(v13) = [*(a1 + 32) shouldReportUPlusOneKey];
  LOBYTE(v13) = v12;
  [v19 updateMembers:v17 toGroup:v15 withContext:v16 params:v14 fromAccount:v6 fromURI:v8 sessionID:v10 messagingCapabilities:v11 reason:v13 isUPlusOne:0 completionBlock:?];
}

void sub_1003BC83C(uint64_t a1)
{
  v15 = [*(a1 + 32) groupStatusNotificationController];
  v14 = [*(a1 + 32) sharedState];
  v13 = [v14 destinations];
  v11 = [v13 allObjects];
  v12 = [*(a1 + 32) sharedState];
  v2 = [v12 groupID];
  v3 = [*(a1 + 32) sharedState];
  v4 = [v3 uniqueID];
  v5 = [*(a1 + 32) sharedState];
  v6 = [v5 fromURI];
  v7 = [*(a1 + 32) accountController];
  v8 = [*(a1 + 32) sharedState];
  v9 = [v8 accountID];
  v10 = [v7 accountWithUniqueID:v9];
  [v15 pushTokenLookup:v11 forGroup:v2 sessionID:v4 fromURI:v6 account:v10 completionBlock:*(a1 + 40)];
}

void sub_1003BCC18(uint64_t a1)
{
  v5 = [*(a1 + 32) onTransportThread_globalLink];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) sharedState];
  v4 = [v3 uniqueID];
  [v5 manageDesignatedDestinations:v2 relayGroupID:v4 withType:*(a1 + 48) sessionStateCounter:*(*(a1 + 32) + 628)];
}

void sub_1003BCED0(uint64_t a1)
{
  v5 = [*(a1 + 32) onTransportThread_globalLink];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) sharedState];
  v4 = [v3 uniqueID];
  [v5 removeParticipantIDs:v2 relayGroupID:v4 sessionStateCounter:*(*(a1 + 32) + 628)];
}

void sub_1003BD0D4(uint64_t a1)
{
  [*(*(a1 + 32) + 184) setParticipantData:*(a1 + 40)];
  v19 = [*(a1 + 32) groupStatusNotificationController];
  v18 = [*(a1 + 32) sharedState];
  v17 = [v18 destinations];
  v15 = [v17 allObjects];
  v16 = [*(a1 + 32) sharedState];
  v2 = [v16 groupID];
  v3 = *(a1 + 32);
  v13 = v3[23];
  v14 = *(a1 + 48);
  v4 = [v3 accountController];
  v5 = [*(a1 + 32) sharedState];
  v6 = [v5 accountID];
  v7 = [v4 accountWithUniqueID:v6];
  v8 = [*(a1 + 32) sharedState];
  v9 = [v8 fromURI];
  v10 = [*(a1 + 32) sharedState];
  v11 = [v10 uniqueID];
  LOBYTE(v12) = [*(a1 + 32) shouldReportUPlusOneKey];
  [v19 updateParticipantDataToMembers:v15 toGroup:v2 withContext:v14 params:v13 fromAccount:v7 fromURI:v9 sessionID:v11 isUPlusOne:v12];
}

void sub_1003BDA50(uint64_t a1)
{
  v10 = +[IDSGroupEncryptionController sharedInstance];
  v2 = [*(a1 + 32) sharedState];
  v3 = [v2 destinationsLightweightStatus];
  v4 = *(a1 + 48);
  v5 = *(a1 + 40);
  v6 = [*(a1 + 32) sharedState];
  v7 = [v6 groupID];
  v8 = [*(a1 + 32) sharedState];
  v9 = [v8 uniqueID];
  [v10 updateLightweightMemberTypes:v3 members:v5 triggeredLocally:v4 forGroup:v7 sessionID:v9];
}

void sub_1003BDB44(uint64_t a1)
{
  v2 = +[IDSGroupEncryptionController sharedInstance];
  v3 = [*(a1 + 32) sharedState];
  v4 = [v3 destinationsLightweightStatus];
  v5 = *(a1 + 50);
  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) sharedState];
  v8 = [v7 groupID];
  v9 = [*(a1 + 32) sharedState];
  v10 = [v9 uniqueID];
  [v2 updateLightweightMemberTypes:v4 members:v6 triggeredLocally:v5 forGroup:v8 sessionID:v10];

  if (*(a1 + 48) == 1)
  {
    v15 = +[IDSGroupEncryptionController sharedInstance];
    v11 = [*(a1 + 32) sharedState];
    v12 = [v11 groupID];
    v13 = [*(a1 + 32) sharedState];
    v14 = [v13 uniqueID];
    [v15 reliablyRequestKeyMaterialForGroup:v12 sessionID:v14];
  }
}

void sub_1003BDCDC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[644] == 1)
  {
    v7 = [v2 _generateEncryptedAndSignedIDSContextBlobWithClientContextBlob:*(a1 + 40) timeStamp:*(a1 + 48)];
    v2 = *(a1 + 32);
  }

  else
  {
    v7 = 0;
  }

  v3 = [v2 onTransportThread_globalLink];
  v4 = *(a1 + 64);
  v5 = [*(a1 + 32) sharedState];
  v6 = [v5 uniqueID];
  [v3 setParticipantType:v4 relayGroupID:v6 sessionStateCounter:*(*(a1 + 32) + 628) withClientContextBlob:v7 identifier:*(a1 + 56)];
}

void sub_1003BDDB0(uint64_t a1)
{
  v8 = objc_alloc_init(IMMessageContext);
  [v8 setShouldBoost:1];
  v2 = +[IDSDaemon sharedInstance];
  v3 = [*(a1 + 32) sharedState];
  v4 = [v3 pushTopic];
  v5 = [v2 broadcasterForTopic:v4 entitlement:kIDSSessionEntitlement command:0 messageContext:v8];

  v6 = [*(a1 + 32) sharedState];
  v7 = [v6 uniqueID];
  [v5 sessionDidReceiveParticipantUpgrade:v7 participantType:*(a1 + 40) error:0];
}

void sub_1003BE4B0(uint64_t a1)
{
  v10 = +[IDSGroupEncryptionController sharedInstance];
  v2 = [*(a1 + 32) sharedState];
  v3 = [v2 destinationsLightweightStatus];
  v4 = *(a1 + 48);
  v5 = *(a1 + 40);
  v6 = [*(a1 + 32) sharedState];
  v7 = [v6 groupID];
  v8 = [*(a1 + 32) sharedState];
  v9 = [v8 uniqueID];
  [v10 updateLightweightMemberTypes:v3 members:v5 triggeredLocally:v4 forGroup:v7 sessionID:v9];
}

void sub_1003BE5A4(uint64_t a1)
{
  v2 = +[IDSGroupEncryptionController sharedInstance];
  v3 = [*(a1 + 32) sharedState];
  v4 = [v3 destinationsLightweightStatus];
  v5 = *(a1 + 50);
  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) sharedState];
  v8 = [v7 groupID];
  v9 = [*(a1 + 32) sharedState];
  v10 = [v9 uniqueID];
  [v2 updateLightweightMemberTypes:v4 members:v6 triggeredLocally:v5 forGroup:v8 sessionID:v10];

  if (*(a1 + 48) == 1)
  {
    v15 = +[IDSGroupEncryptionController sharedInstance];
    v11 = [*(a1 + 32) sharedState];
    v12 = [v11 groupID];
    v13 = [*(a1 + 32) sharedState];
    v14 = [v13 uniqueID];
    [v15 reliablyRequestKeyMaterialForGroup:v12 sessionID:v14];
  }
}

void sub_1003BE73C(uint64_t a1)
{
  v5 = [*(a1 + 32) onTransportThread_globalLink];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) sharedState];
  v4 = [v3 uniqueID];
  [v5 setParticipantType:v2 relayGroupID:v4 sessionStateCounter:*(*(a1 + 32) + 628) withClientContextBlob:0 identifier:0];
}

void sub_1003BE7D8(uint64_t a1)
{
  v8 = objc_alloc_init(IMMessageContext);
  [v8 setShouldBoost:1];
  v2 = +[IDSDaemon sharedInstance];
  v3 = [*(a1 + 32) sharedState];
  v4 = [v3 pushTopic];
  v5 = [v2 broadcasterForTopic:v4 entitlement:kIDSSessionEntitlement command:0 messageContext:v8];

  v6 = [*(a1 + 32) sharedState];
  v7 = [v6 uniqueID];
  [v5 sessionDidReceiveParticipantUpgrade:v7 participantType:*(a1 + 40) error:0];
}

void sub_1003BE948(uint64_t a1)
{
  v1 = [*(a1 + 32) onTransportThread_globalLink];
  [v1 sendConnectedLinkInfoToAVC];
}

void sub_1003C0FC0(uint64_t a1)
{
  v2 = [*(a1 + 32) globalLinkConfiguration];
  [v2 setPluginOptionsWithPluginName:*(a1 + 40) options:*(a1 + 48)];

  v6 = [*(a1 + 32) onTransportThread_globalLink];
  v3 = *(a1 + 48);
  v4 = [*(a1 + 32) sharedState];
  v5 = [v4 groupID];
  [v6 registerPluginWithOptions:v3 relayGroupID:v5];
}

void sub_1003C1068(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 setReply:1];
    v3 = +[IDSDaemon sharedInstance];
    v4 = [*(a1 + 32) localObject];
    v5 = [v3 broadcasterForLocalObject:v4 messageContext:*(a1 + 32)];

    [v5 emptyXPCReply];
  }
}

void sub_1003C111C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[569];
  v4 = [v2 globalLinkConfiguration];
  [v4 setSharedSessionHasJoined:v3];

  v5 = [*(a1 + 32) onTransportThread_globalLink];
  [v5 setSharedSessionHasJoined:*(*(a1 + 32) + 569)];
}

void sub_1003C119C(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) globalLinkConfiguration];
  [v3 setIdsContextBlob:v2];

  v4 = [*(a1 + 32) onTransportThread_globalLink];
  [v4 setIDSContextBlob:*(a1 + 40)];
}

void sub_1003C1214(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) globalLinkConfiguration];
  [v3 setIsReliableUnicastSession:v2];

  v4 = [*(a1 + 32) sharedState];
  v5 = [v4 isInitiator];
  v6 = [*(a1 + 32) globalLinkConfiguration];
  [v6 setIsReliableUnicastClient:v5];

  v9 = [*(a1 + 32) onTransportThread_globalLink];
  v7 = *(a1 + 40);
  v8 = [*(a1 + 32) sharedState];
  [v9 setIsReliableUnicastSession:v7 isClient:{objc_msgSend(v8, "isInitiator")}];
}

void sub_1003C12EC(uint64_t a1)
{
  v1 = [*(a1 + 32) onTransportThread_globalLink];
  [v1 setAllowP2P:0];
}

void sub_1003C1334(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) globalLinkConfiguration];
  [v3 setTimeBase:v2];

  v4 = [*(a1 + 32) onTransportThread_globalLink];
  [v4 setTimeBase:*(a1 + 40)];
}

void sub_1003C16D4(uint64_t a1)
{
  v1 = [*(a1 + 32) onTransportThread_globalLink];
  [v1 receiveJoinNotificationFromAParticipant];
}

void sub_1003C1718(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained reinitiate];
    WeakRetained = v2;
  }
}

void sub_1003C1B54(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[569];
  v4 = [v2 globalLinkConfiguration];
  [v4 setSharedSessionHasJoined:v3];

  v5 = [*(a1 + 32) onTransportThread_globalLink];
  [v5 setSharedSessionHasJoined:*(*(a1 + 32) + 569)];
}

void sub_1003C1BD4(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) globalLinkConfiguration];
  [v3 setIdsContextBlob:v2];

  v4 = [*(a1 + 32) onTransportThread_globalLink];
  [v4 setIDSContextBlob:*(a1 + 40)];
}

void sub_1003C1C4C(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) _finishPacketLog];
  if (v3)
  {
    v4 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "disconnectGlobalLink during leaving group session failed: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v28 = v3;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v28 = v3;
          _IDSLogV();
        }
      }
    }
  }

  v5 = [*(a1 + 32) utunController];
  v6 = [*(a1 + 32) sharedState];
  v7 = [v6 uniqueID];
  [v5 stopGlobalLinkForDevice:v7];

  v8 = [*(a1 + 32) sharedState];
  [v8 setState:8];

  v9 = [*(a1 + 32) sharedState];
  v10 = [v9 groupID];

  if (v10)
  {
    v11 = im_primary_queue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1003C2118;
    block[3] = &unk_100BD6ED0;
    block[4] = *(a1 + 32);
    v12 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INITIATED, 0, block);
    dispatch_async(v11, v12);
  }

  else
  {
    v13 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Cannot fan out the leave notification to the group, no groupID!", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }
  }

  v14 = +[IDSGroupEncryptionController sharedInstance];
  v15 = [*(a1 + 32) sharedState];
  v16 = [v15 groupID];
  [v14 removeLocalActiveParticipantForGroup:v16];

  v17 = *(a1 + 32);
  if (*(v17 + 176) <= 1u)
  {
    v18 = objc_alloc_init(IMMessageContext);
    [v18 setShouldBoost:1];
    v19 = +[IDSDaemon sharedInstance];
    v20 = [*(a1 + 32) sharedState];
    v21 = [v20 pushTopic];
    v22 = [v19 broadcasterForTopic:v21 entitlement:kIDSSessionEntitlement command:0 messageContext:v18];

    v23 = +[IDSFoundationLog IDSDSession];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [*(a1 + 32) sharedState];
      v25 = [v24 uniqueID];
      *buf = 138412290;
      v31 = v25;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Broadcasting did leave group session: %@", buf, 0xCu);
    }

    v26 = [*(a1 + 32) sharedState];
    v27 = [v26 uniqueID];
    [v22 sessionDidLeaveGroup:v27 error:v3];

    v17 = *(a1 + 32);
  }

  *(v17 + 176) = 2;
}

void sub_1003C2118(uint64_t a1)
{
  v2 = [*(a1 + 32) metricsCollector];
  [v2 didLeave];

  v19 = [*(a1 + 32) groupStatusNotificationController];
  v18 = [*(a1 + 32) sharedState];
  v15 = [v18 groupID];
  v17 = [*(a1 + 32) sharedState];
  v16 = [v17 destinations];
  v3 = [v16 allObjects];
  v4 = *(a1 + 32);
  v14 = v4[23];
  v5 = [v4 accountController];
  v6 = [*(a1 + 32) sharedState];
  v7 = [v6 accountID];
  v8 = [v5 accountWithUniqueID:v7];
  v9 = [*(a1 + 32) sharedState];
  v10 = [v9 fromURI];
  v11 = [*(a1 + 32) sharedState];
  v12 = [v11 uniqueID];
  LOBYTE(v13) = [*(a1 + 32) shouldReportUPlusOneKey];
  [v19 notifyLeaveToGroup:v15 members:v3 params:v14 fromAccount:v8 fromURI:v10 sessionID:v12 isUPlusOne:v13];
}

void sub_1003C22CC(uint64_t a1)
{
  v4 = +[IDSGroupEncryptionController sharedInstance];
  v2 = [*(a1 + 32) sharedState];
  v3 = [v2 groupID];
  [v4 reportPrekeyAckStatus:v3];
}

void sub_1003C2914(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1003C247CLL);
  }

  _Unwind_Resume(a1);
}

void sub_1003C2948(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [v3 idsResponseCode];
    v7 = [v3 responseError];
    v8 = [v3 lastCall];
    v9 = @"NO";
    *buf = 138413058;
    v17 = v5;
    v18 = 2048;
    if (v8)
    {
      v9 = @"YES";
    }

    v19 = v6;
    v20 = 2112;
    v21 = v7;
    v22 = 2112;
    v23 = v9;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Message %@ got response code %lu error %@ lastCall %@", buf, 0x2Au);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    v10 = *(a1 + 32);
    v11 = [v3 idsResponseCode];
    v12 = [v3 responseError];
    if ([v3 lastCall])
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    v15 = v13;
    _IDSLogTransport();

    if (_IDSShouldLog())
    {
      [v3 idsResponseCode];
      v14 = [v3 responseError];
      [v3 lastCall];
      _IDSLogV();
    }
  }
}

void sub_1003C2C64(uint64_t a1)
{
  v2 = [*(a1 + 32) onTransportThread_globalLink];
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) sharedState];
  v5 = [v4 groupID];
  v6 = [*(a1 + 48) destinationURIs];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003C2D58;
  v7[3] = &unk_100BDA2E0;
  v8 = *(a1 + 56);
  [v2 sendKeyMaterialMessageData:v3 relayGroupID:v5 destinationURIs:v6 completionHandler:v7];
}

void sub_1003C2D58(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v11 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "sendKeyMaterialData failed with error: %d", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }

  else if (*(a1 + 32))
  {
    v5 = im_primary_queue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1003C2F30;
    block[3] = &unk_100BDA2B8;
    v8 = *(a1 + 32);
    v9 = 0;
    v6 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INITIATED, 0, block);
    dispatch_async(v5, v6);
  }
}

void sub_1003C3978(uint64_t a1)
{
  v2 = objc_alloc_init(IMMessageContext);
  [v2 setShouldBoost:1];
  v3 = +[IDSDaemon sharedInstance];
  v4 = [*(a1 + 32) sharedState];
  v5 = [v4 pushTopic];
  v6 = [v3 broadcasterForTopic:v5 entitlement:kIDSSessionEntitlement command:0 messageContext:v2];

  v7 = *(a1 + 56);
  if (v7 == 6)
  {
    v15 = *(*(a1 + 32) + 944);
    v16 = [*(a1 + 40) participantPushToken];
    v17 = [v15 joinCycleForToken:v16];
    [v17 decryptedBlobOverQUIC:@"mirage-blob"];

    v11 = [*(a1 + 32) sharedState];
    v12 = [v11 uniqueID];
    v18 = *(a1 + 48);
    v14 = [*(a1 + 40) dictionaryRepresentation];
    [v6 session:v12 didReceiveData:v18 dataType:1 forParticipant:v14];
    goto LABEL_5;
  }

  if (v7 == 12)
  {
    v8 = *(*(a1 + 32) + 944);
    v9 = [*(a1 + 40) participantPushToken];
    v10 = [v8 joinCycleForToken:v9];
    [v10 decryptedBlobOverQUIC:@"avc"];

    v11 = [*(a1 + 32) sharedState];
    v12 = [v11 uniqueID];
    v13 = *(a1 + 48);
    v14 = [*(a1 + 40) dictionaryRepresentation];
    [v6 session:v12 didReceiveDataBlob:v13 forParticipant:v14];
LABEL_5:

    goto LABEL_9;
  }

  v19 = +[IDSFoundationLog IDSDSession];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    sub_10091AAF8();
  }

LABEL_9:
}

void sub_1003C3C78(uint64_t a1)
{
  v8 = objc_alloc_init(IMMessageContext);
  [v8 setShouldBoost:1];
  v2 = +[IDSDaemon sharedInstance];
  v3 = [*(a1 + 32) sharedState];
  v4 = [v3 pushTopic];
  v5 = [v2 broadcasterForTopic:v4 entitlement:kIDSSessionEntitlement command:0 messageContext:v8];

  v6 = [*(a1 + 32) sharedState];
  v7 = [v6 uniqueID];
  [v5 session:v7 didReceiveJoinedParticipantID:objc_msgSend(*(a1 + 40) withContext:{"unsignedLongLongValue"), *(a1 + 48)}];
}

void sub_1003C3E74(uint64_t a1)
{
  v8 = objc_alloc_init(IMMessageContext);
  [v8 setShouldBoost:1];
  v2 = +[IDSDaemon sharedInstance];
  v3 = [*(a1 + 32) sharedState];
  v4 = [v3 pushTopic];
  v5 = [v2 broadcasterForTopic:v4 entitlement:kIDSSessionEntitlement command:0 messageContext:v8];

  v6 = [*(a1 + 32) sharedState];
  v7 = [v6 uniqueID];
  [v5 session:v7 didReceiveLeftParticipantID:objc_msgSend(*(a1 + 40) withContext:{"unsignedLongLongValue"), *(a1 + 48)}];
}

void sub_1003C4070(uint64_t a1)
{
  v8 = objc_alloc_init(IMMessageContext);
  [v8 setShouldBoost:1];
  v2 = +[IDSDaemon sharedInstance];
  v3 = [*(a1 + 32) sharedState];
  v4 = [v3 pushTopic];
  v5 = [v2 broadcasterForTopic:v4 entitlement:kIDSSessionEntitlement command:0 messageContext:v8];

  v6 = [*(a1 + 32) sharedState];
  v7 = [v6 uniqueID];
  [v5 session:v7 didReceiveParticipantUpdateParticipantID:objc_msgSend(*(a1 + 40) withContext:{"unsignedLongLongValue"), *(a1 + 48)}];
}

void sub_1003C4C64(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 subdataWithRange:{objc_msgSend(v6, "length") - 8, 8}];
  if ([*(a1 + 32) intValue] == 7)
  {
    if ([v7 length] <= 7)
    {
      v8 = +[IDSFoundationLog IDSDSession];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10091ABE0();
      }

      goto LABEL_32;
    }

    [v7 bytes];
    v9 = [v6 subdataWithRange:{0, objc_msgSend(v6, "length") - 8}];
    v10 = [v9 copy];

    v6 = v10;
  }

  os_unfair_lock_lock((*(a1 + 40) + 816));
  v11 = *(*(a1 + 40) + 656);
  v28 = 0;
  v12 = [v11 decryptData:v6 keyID:v5 sequenceNumber:0 error:&v28];
  v8 = v28;
  os_unfair_lock_unlock((*(a1 + 40) + 816));
  if (v8)
  {
    v13 = [v8 code];
    v14 = +[IDSFoundationLog IDSDSession];
    Mutable = v14;
    if (v13 == 1)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v30 = v5;
        _os_log_impl(&_mh_execute_header, Mutable, OS_LOG_TYPE_DEFAULT, "_decryptReceivedDataBlobsUsingSKMs: haven't got keyID: %@", buf, 0xCu);
      }
    }

    else
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v26 = *(a1 + 64);
        *buf = 138412802;
        v30 = v6;
        v31 = 1024;
        *v32 = v26;
        *&v32[4] = 2112;
        *&v32[6] = v8;
        _os_log_error_impl(&_mh_execute_header, Mutable, OS_LOG_TYPE_ERROR, "_decryptReceivedDataBlobsUsingSKMs: couldn't decrypt data blob: %@, encryptedDataType: %d error: %@", buf, 0x1Cu);
      }

      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      [Mutable setObject:&off_100C3BE18 forKeyedSubscript:IDSDSessionReportTransportTypeKey];
      v22 = [NSNumber numberWithInteger:[v8 code]];
      [Mutable setObject:v22 forKeyedSubscript:IDSDSessionReportResultCodeKey];

      [Mutable setObject:*(a1 + 32) forKeyedSubscript:IDSDSessionReportDataBlobTypeKey];
      [*(a1 + 40) addQREventForRTCReport:Mutable];
    }
  }

  else
  {
    os_unfair_lock_lock((*(a1 + 40) + 816));
    Value = 0;
    if (v5 && *(*(a1 + 40) + 696))
    {
      Value = CFDictionaryGetValue(*(*(a1 + 40) + 696), v5);
    }

    Mutable = Value;
    v17 = +[IDSFoundationLog IDSDSession];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a1 + 64);
      *buf = 138413058;
      v30 = v12;
      v31 = 2112;
      *v32 = v5;
      *&v32[8] = 2112;
      *&v32[10] = Mutable;
      v33 = 1024;
      v34 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "_decryptReceivedDataBlobsUsingSKMs: decryptedBlob: %@, keyID: %@, participantID: %@, type: %d", buf, 0x26u);
    }

    os_unfair_lock_unlock((*(a1 + 40) + 816));
    if (Mutable)
    {
      v19 = [*(a1 + 40) _getURIFromParticipantIDNumber:Mutable];
      if (v19)
      {
        if ([*(a1 + 32) intValue] == 7)
        {
          v20 = [[NSMutableData alloc] initWithData:v7];
          [v20 appendData:v12];
          v21 = [v20 copy];

          v12 = v21;
        }

        if (v12)
        {
          CFDictionarySetValue(*(a1 + 48), Mutable, v12);
        }

        [*(a1 + 56) addObject:v5];
      }

      else
      {
        v23 = +[IDSFoundationLog IDSDSession];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = [Mutable unsignedLongLongValue];
          v27 = [*(a1 + 40) sharedState];
          v25 = [v27 groupID];
          *buf = 134218242;
          v30 = v24;
          v31 = 2112;
          *v32 = v25;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "_decryptReceivedDataBlobsUsingSKMs: no valid URI for participantID: %llu, group: %@, not consuming", buf, 0x16u);
        }
      }
    }

    else
    {
      v19 = +[IDSFoundationLog IDSDSession];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10091AB70();
      }
    }
  }

LABEL_32:
}

void sub_1003C5174(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = (a1 + 32);
  v8 = [*(a1 + 32) _getPushTokenFromParticipantIDNumber:v5];
  if (!v8)
  {
    v9 = +[IDSFoundationLog IDSDSession];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v5 unsignedLongLongValue];
      v11 = [*v7 sharedState];
      v12 = [v11 groupID];
      *buf = 134218242;
      v33 = v10;
      v34 = 2112;
      v35 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "warning: _decryptReceivedDataBlobsUsingSKMs: couldn't find push token for participantID: %llu, group: %@", buf, 0x16u);
    }
  }

  v13 = [*v7 _getURIFromParticipantIDNumber:v5];
  if (v13)
  {
    if ([*(a1 + 40) intValue] == 7)
    {
      if ([v6 length] > 7)
      {
        v23 = *[v6 bytes];
        v24 = [v6 subdataWithRange:{8, objc_msgSend(v6, "length") - 8}];

        if ([v24 length] <= 7)
        {
          v14 = +[IDSFoundationLog IDSDSession];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            sub_10091AC1C();
          }
        }

        else
        {
          v25 = *[v24 bytes];
          v14 = [v24 subdataWithRange:{8, objc_msgSend(v24, "length") - 8}];
          if ([*v7 shouldReportToClient:v5 timeStamp:v23 type:0 overPush:v25])
          {
            switch(v23)
            {
              case 5:
                [*v7 _sendRemoteParticipantUpdateInfoEventToClient:v14 forParticipant:v5];
                break;
              case 2:
                [*v7 _sendRemoteParticipantLeaveInfoEventToClient:v14 forParticipant:v5];
                break;
              case 1:
                v26 = *v7;
                v27 = [*(*v7 + 19) objectForKeyedSubscript:v5];
                [v26 _sendRemoteParticipantJoinInfoEventToClient:v27 forParticipant:v5];

                break;
            }
          }
        }

        v6 = v24;
      }

      else
      {
        v14 = +[IDSFoundationLog IDSDSession];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_10091ABE0();
        }
      }
    }

    else
    {
      v15 = [NSUUID alloc];
      v16 = [*v7 sharedState];
      v17 = [v16 groupID];
      v14 = [v15 initWithUUIDString:v17];

      v18 = [[IDSGroupSessionActiveParticipant alloc] initWithGroupUUID:v14 participantIdentifier:objc_msgSend(v5 isKnown:"unsignedLongLongValue") participantURI:1 pushToken:{v13, v8}];
      v19 = +[IDSFoundationLog IDSDSession];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = *(a1 + 48);
        *buf = 138413058;
        v33 = v6;
        v34 = 2112;
        v35 = v5;
        v36 = 2112;
        v37 = v13;
        v38 = 1024;
        v39 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "_decryptReceivedDataBlobsUsingSKMs: sending blob to client: %@, participantID: %@, URI: %@, type: %d", buf, 0x26u);
      }

      [*(a1 + 32) _sendClientDecryptedDatabBlobs:v6 type:*(a1 + 48) forParticipant:v18];
      v21 = im_primary_queue();
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_1003C5650;
      v28[3] = &unk_100BD7020;
      v29 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
      v30 = v5;
      v6 = v6;
      v31 = v6;
      v22 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INTERACTIVE, 0, v28);
      dispatch_async(v21, v22);
    }
  }

  else
  {
    v14 = +[IDSFoundationLog IDSDSession];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10091AC58(v5, (a1 + 32), v14);
    }
  }
}

id sub_1003C5650(uint64_t a1)
{
  result = [*(a1 + 32) intValue];
  if (result == 12)
  {
    [*(*(a1 + 40) + 152) setObject:*(a1 + 56) forKeyedSubscript:*(a1 + 48)];
    v3 = *(a1 + 40);
    v4 = [v3[20] objectForKeyedSubscript:*(a1 + 48)];
    [v3 receiveAndDecryptEncryptedDataBlobs:v4];

    v5 = *(a1 + 48);
    v6 = *(*(a1 + 40) + 160);

    return [v6 setObject:0 forKeyedSubscript:v5];
  }

  return result;
}

void sub_1003C5E58(uint64_t a1)
{
  v8 = objc_alloc_init(IMMessageContext);
  [v8 setShouldBoost:1];
  v2 = +[IDSDaemon sharedInstance];
  v3 = [*(a1 + 32) sharedState];
  v4 = [v3 pushTopic];
  v5 = [v2 broadcasterForTopic:v4 entitlement:kIDSSessionEntitlement command:0 messageContext:v8];

  v6 = [*(a1 + 32) sharedState];
  v7 = [v6 uniqueID];
  [v5 session:v7 rejectedKeyRecoveryRequestFromURI:*(a1 + 40) reason:*(a1 + 48)];
}

void sub_1003C64E0(uint64_t a1)
{
  v8 = objc_alloc_init(IMMessageContext);
  [v8 setShouldBoost:1];
  v2 = +[IDSDaemon sharedInstance];
  v3 = [*(a1 + 32) sharedState];
  v4 = [v3 pushTopic];
  v5 = [v2 broadcasterForTopic:v4 entitlement:kIDSSessionEntitlement command:0 messageContext:v8];

  v6 = [*(a1 + 32) sharedState];
  v7 = [v6 uniqueID];
  [v5 session:v7 didReceiveKeyMaterial:*(a1 + 40)];
}

void sub_1003C66AC(uint64_t a1)
{
  v8 = objc_alloc_init(IMMessageContext);
  [v8 setShouldBoost:1];
  v2 = +[IDSDaemon sharedInstance];
  v3 = [*(a1 + 32) sharedState];
  v4 = [v3 pushTopic];
  v5 = [v2 broadcasterForTopic:v4 entitlement:kIDSSessionEntitlement command:0 messageContext:v8];

  v6 = [*(a1 + 32) sharedState];
  v7 = [v6 uniqueID];
  [v5 session:v7 shouldInvalidateKeyMaterialByKeyIndexes:*(a1 + 40)];
}

uint64_t sub_1003C68C8(uint64_t a1)
{
  [*(a1 + 32) link:*(a1 + 32) didReceiveMembershipChangedInformation:*(a1 + 48)];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void sub_1003C6C18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  objc_destroyWeak(&a26);
  objc_destroyWeak((v26 - 96));
  _Unwind_Resume(a1);
}

void sub_1003C6C40(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = objc_alloc_init(IMMessageContext);
    [v5 setShouldBoost:1];
    v6 = +[IDSDaemon sharedInstance];
    v7 = [*(a1 + 32) pushTopic];
    v8 = [v6 broadcasterForTopic:v7 entitlement:kIDSSessionEntitlement command:0 messageContext:v5];

    v9 = [WeakRetained sharedState];
    v10 = [v9 uniqueID];
    [v8 allocationDone:v10 sessionInfo:v11];
  }
}

void sub_1003C6F2C(uint64_t a1)
{
  v2 = +[IDSGroupEncryptionController sharedInstance];
  v3 = [*(a1 + 32) sharedState];
  v4 = [v3 groupID];
  v5 = [v2 localParticipantIDForGroupID:v4];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = *(a1 + 40);
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        if ([v11 unsignedLongLongValue] != v5)
        {
          v12 = [*(a1 + 32) _getPushTokenFromParticipantIDNumber:v11];
          if (v12)
          {
            v13 = [*(*(a1 + 32) + 944) joinCycleForToken:v12];
            [v13 requestedKM];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  v14 = +[IDSGroupEncryptionController sharedInstance];
  v15 = *(a1 + 40);
  v16 = [*(a1 + 32) sharedState];
  v17 = [v16 groupID];
  v18 = [*(a1 + 32) sharedState];
  v19 = [v18 uniqueID];
  [v14 sendKeyMaterialsRecoveryRequestToParticipants:v15 groupID:v17 sessionID:v19 requireMKM:0 requireSKM:1];
}

void sub_1003C737C(uint64_t a1)
{
  v4 = [*(a1 + 32) onTransportThread_globalLink];
  v2 = [*(a1 + 32) sharedState];
  v3 = [v2 uniqueID];
  [v4 requestMaterialsForSession:v3 participantIDs:*(a1 + 40) materialType:*(a1 + 48)];
}

void sub_1003C74A0(uint64_t a1)
{
  v2 = [*(a1 + 32) onTransportThread_globalLink];
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5 = [*(a1 + 32) sharedState];
  v6 = [v5 uniqueID];
  v7 = [v2 createAliasForParticipantID:v3 salt:v4 relayGroupID:v6];

  v8 = im_primary_queue();
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1003C75C8;
  v12[3] = &unk_100BD7E20;
  v9 = *(a1 + 40);
  v12[4] = *(a1 + 32);
  v10 = *(a1 + 48);
  v14 = v7;
  v15 = v10;
  v13 = v9;
  v11 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INTERACTIVE, 0, v12);
  dispatch_async(v8, v11);
}

void sub_1003C75C8(uint64_t a1)
{
  v8 = objc_alloc_init(IMMessageContext);
  [v8 setShouldBoost:1];
  v2 = +[IDSDaemon sharedInstance];
  v3 = [*(a1 + 32) sharedState];
  v4 = [v3 pushTopic];
  v5 = [v2 broadcasterForTopic:v4 entitlement:kIDSSessionEntitlement command:0 messageContext:v8];

  v6 = [*(a1 + 32) sharedState];
  v7 = [v6 uniqueID];
  [v5 session:v7 didCreateParticipantIDAlias:*(a1 + 48) forParticipantID:*(a1 + 56) salt:*(a1 + 40)];
}

void sub_1003C7764(uint64_t a1)
{
  v2 = [*(a1 + 32) onTransportThread_globalLink];
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5 = [*(a1 + 32) sharedState];
  v6 = [v5 uniqueID];
  v7 = [v2 participantIDForAlias:v3 salt:v4 relayGroupID:v6];

  v8 = im_primary_queue();
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1003C788C;
  v12[3] = &unk_100BD7E20;
  v9 = *(a1 + 40);
  v12[4] = *(a1 + 32);
  v10 = *(a1 + 48);
  v14 = v7;
  v15 = v10;
  v13 = v9;
  v11 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INTERACTIVE, 0, v12);
  dispatch_async(v8, v11);
}

void sub_1003C788C(uint64_t a1)
{
  v8 = objc_alloc_init(IMMessageContext);
  [v8 setShouldBoost:1];
  v2 = +[IDSDaemon sharedInstance];
  v3 = [*(a1 + 32) sharedState];
  v4 = [v3 pushTopic];
  v5 = [v2 broadcasterForTopic:v4 entitlement:kIDSSessionEntitlement command:0 messageContext:v8];

  v6 = [*(a1 + 32) sharedState];
  v7 = [v6 uniqueID];
  [v5 session:v7 didReceiveParticipantID:*(a1 + 48) forParticipantIDAlias:*(a1 + 56) salt:*(a1 + 40)];
}

void sub_1003C7A78(uint64_t a1)
{
  v6 = [*(a1 + 32) onTransportThread_globalLink];
  v2 = *(a1 + 56);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) sharedState];
  v5 = [v4 uniqueID];
  *(*(*(a1 + 48) + 8) + 24) = [v6 participantIDForAlias:v2 salt:v3 relayGroupID:v5];
}

void sub_1003C7E54(uint64_t a1)
{
  v4 = [*(a1 + 32) onTransportThread_globalLink];
  v2 = [*(a1 + 32) sharedState];
  v3 = [v2 groupID];
  [v4 updateSessionParticipants:v3 relaySessionID:*(a1 + 40) participants:*(a1 + 48)];
}

void sub_1003C7EDC(uint64_t a1)
{
  v2 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Sending the session info request to update the active participant list...", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }

  v3 = *(a1 + 32);
  v4 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100C3BC20, IDSGlobalLinkOptionSessionInfoRequestTypeKey, 0];
  [v3 requestSessionInfoWithOptions:v4];
}

void sub_1003C82F0(uint64_t a1)
{
  v4 = [*(a1 + 32) onTransportThread_globalLink];
  v2 = [*(a1 + 32) sharedState];
  v3 = [v2 groupID];
  [v4 updateURIToParticipantIDs:v3 relaySessionID:*(a1 + 40) sessionInfo:*(a1 + 48)];
}

void sub_1003C8378(uint64_t a1)
{
  if (*(*(a1 + 32) + 776))
  {
    v2 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      *buf = 138412290;
      v29 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "onURI2ParticipantIDMappingChange try pending keys for %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v17 = *(a1 + 40);
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v17 = *(a1 + 40);
          _IDSLogV();
        }
      }
    }

    v5 = *(a1 + 32);
    v4 = a1 + 32;
    v6 = [*(v5 + 776) copy];
    v7 = *(*v4 + 776);
    *(*v4 + 776) = 0;

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = [v6 allValues];
    v9 = [v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v9)
    {
      v10 = *v23;
      do
      {
        v11 = 0;
        do
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v22 + 1) + 8 * v11);
          v18 = 0u;
          v19 = 0u;
          v20 = 0u;
          v21 = 0u;
          v13 = v12;
          v14 = [v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
          if (v14)
          {
            v15 = *v19;
            do
            {
              v16 = 0;
              do
              {
                if (*v19 != v15)
                {
                  objc_enumerationMutation(v13);
                }

                (*(*(*(&v18 + 1) + 8 * v16) + 16))();
                v16 = v16 + 1;
              }

              while (v14 != v16);
              v14 = [v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
            }

            while (v14);
          }

          v11 = v11 + 1;
        }

        while (v11 != v9);
        v9 = [v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v9);
    }
  }
}

void sub_1003C8BE8(uint64_t a1)
{
  v2 = +[NSMutableSet set];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v48 objects:v52 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v49;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v49 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v48 + 1) + 8 * i);
        if ([v8 isKnown])
        {
          v9 = [v8 participantURI];
          [v2 addObject:v9];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v48 objects:v52 count:16];
    }

    while (v5);
  }

  [*(*(a1 + 40) + 944) setActiveParticipantURIs:v2];
  v10 = +[IDSGroupEncryptionController sharedInstance];
  v11 = [v10 realTimeEncryptionPublicKeyData];

  if (!v11)
  {
    v43 = [*(a1 + 40) accountController];
    v12 = [*(a1 + 40) sharedState];
    v13 = [v12 accountID];
    v14 = [v43 accountWithUniqueID:v13];
    v15 = [v14 primaryRegistration];
    v16 = [v15 pushToken];
    v17 = [*(a1 + 40) sharedState];
    v18 = [v17 serviceName];
    v19 = [IDSPushToken pushTokenWithData:v16 withServiceLoggingHint:v18];

    v20 = +[IDSGroupEncryptionController sharedInstance];
    v21 = [v20 createRealTimeEncryptionFullIdentityForDevice:v19 completionBlock:0];
  }

  v22 = +[IDSGroupEncryptionController sharedInstance];
  v23 = *(a1 + 32);
  v24 = [*(a1 + 40) sharedState];
  v25 = [v24 groupID];
  v26 = [*(a1 + 40) sharedState];
  v27 = [v26 uniqueID];
  [v22 didUpdateParticipants:v23 ofType:0 forGroup:v25 sessionID:v27];

  v28 = [*(a1 + 40) sharedState];
  v29 = [v28 pushTopic];

  v30 = objc_alloc_init(IMMessageContext);
  [v30 setShouldBoost:1];
  v31 = +[IDSDaemon sharedInstance];
  v32 = [v31 broadcasterForTopic:v29 entitlement:kIDSSessionEntitlement command:0 messageContext:v30];

  v33 = +[NSMutableArray array];
  v34 = +[IDSGroupEncryptionController sharedInstance];
  v35 = [*(a1 + 40) sharedState];
  v36 = [v35 groupID];
  v37 = [v34 localParticipantIDForGroupID:v36];

  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_1003C904C;
  v44[3] = &unk_100BDA420;
  v39 = *(a1 + 32);
  v38 = *(a1 + 40);
  v45 = v33;
  v46 = v38;
  v47 = v37;
  v40 = v33;
  [v39 enumerateObjectsUsingBlock:v44];
  v41 = [*(a1 + 40) sharedState];
  v42 = [v41 uniqueID];
  [v32 session:v42 didReceiveActiveParticipants:v40 success:1];
}

void sub_1003C904C(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = *(a1 + 32);
  v4 = [v6 dictionaryRepresentation];
  [v3 addObject:v4];

  if ([v6 participantIdentifier] != *(a1 + 48) && objc_msgSend(v6, "isKnown"))
  {
    v5 = [v6 participantPushToken];
    [*(*(a1 + 40) + 944) remoteDidBecomeActive:v5];
  }
}

void sub_1003C91C8(uint64_t a1)
{
  v2 = +[IDSGroupEncryptionController sharedInstance];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) sharedState];
  v5 = [v4 groupID];
  v6 = [*(a1 + 40) sharedState];
  v7 = [v6 uniqueID];
  [v2 didUpdateParticipants:v3 ofType:1 forGroup:v5 sessionID:v7];

  v8 = [*(a1 + 40) sharedState];
  v9 = [v8 pushTopic];

  v10 = objc_alloc_init(IMMessageContext);
  [v10 setShouldBoost:1];
  v11 = +[IDSDaemon sharedInstance];
  v12 = [v11 broadcasterForTopic:v9 entitlement:kIDSSessionEntitlement command:0 messageContext:v10];

  v13 = +[NSMutableArray array];
  v14 = +[IDSGroupEncryptionController sharedInstance];
  v15 = [*(a1 + 40) sharedState];
  v16 = [v15 groupID];
  v17 = [v14 localParticipantIDForGroupID:v16];

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1003C940C;
  v23[3] = &unk_100BDA420;
  v19 = *(a1 + 32);
  v18 = *(a1 + 40);
  v24 = v13;
  v25 = v18;
  v26 = v17;
  v20 = v13;
  [v19 enumerateObjectsUsingBlock:v23];
  v21 = [*(a1 + 40) sharedState];
  v22 = [v21 uniqueID];
  [v12 session:v22 didReceiveActiveLightweightParticipants:v20 success:1];
}

void sub_1003C940C(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = *(a1 + 32);
  v4 = [v6 dictionaryRepresentation];
  [v3 addObject:v4];

  if ([v6 participantIdentifier] != *(a1 + 48) && objc_msgSend(v6, "isKnown"))
  {
    v5 = [v6 participantPushToken];
    [*(*(a1 + 40) + 944) remoteDidBecomeActive:v5];
  }
}

BOOL sub_1003C9F98(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (IDSTransportThreadIsOnPrimaryTransportThread())
  {
    _IDSLinkPacketBufferRetain();
    v6 = [*(a1 + 32) sendPacketBuffer:a2 toDeviceUniqueID:*(a1 + 40) cbuuid:*(a1 + 40)];
    v7 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if (v6 > 0xF)
      {
        v8 = "UnexpectedSendResult";
      }

      else
      {
        v8 = _IDSLinkSendResultStrings[v6];
      }

      *buf = 138412546;
      *&buf[4] = v5;
      *&buf[12] = 2080;
      *&buf[14] = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "IDSDSession read handler called for %@ - result %s", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }
  }

  else
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v14 = 0xAAAAAAAAAAAAAAAALL;
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = v5;
    IDSTransportThreadAddSyncBlock();
    v6 = *(*&buf[8] + 24);

    _Block_object_dispose(buf, 8);
  }

  return v6 == 0;
}

uint64_t sub_1003CA264(uint64_t a1)
{
  _IDSLinkPacketBufferRetain();
  *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) sendPacketBuffer:*(a1 + 64) toDeviceUniqueID:*(a1 + 40) cbuuid:*(a1 + 40)];
  v2 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v4 = *(*(*(a1 + 56) + 8) + 24);
    if (v4 > 0xF)
    {
      v5 = "UnexpectedSendResult";
    }

    else
    {
      v5 = _IDSLinkSendResultStrings[v4];
    }

    *buf = 138412546;
    v8 = v3;
    v9 = 2080;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "IDSDSession read handler called for %@ - result %s", buf, 0x16u);
  }

  result = os_log_shim_legacy_logging_enabled();
  if (result)
  {
    result = _IDSShouldLogTransport();
    if (result)
    {
      _IDSLogTransport();
      result = _IDSShouldLog();
      if (result)
      {
        return _IDSLogV();
      }
    }
  }

  return result;
}

void sub_1003CB064(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "disconnectGlobalLink during reinitiate failed with error %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v11 = v3;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v11 = v3;
          _IDSLogV();
        }
      }
    }
  }

  v6 = *(a1 + 32);
  v5 = (a1 + 32);
  v7 = [v6 utunController];
  v8 = [*v5 sharedState];
  v9 = [v8 uniqueID];
  [v7 stopGlobalLinkForDevice:v9];

  v10 = [*v5 messenger];
  [v10 sendReinitiateMessageWithSubcommand:2];
}

void sub_1003CC254(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "disconnectGlobalLink during reinitiate teardown failed with error %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v14 = v3;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v14 = v3;
          _IDSLogV();
        }
      }
    }
  }

  v6 = *(a1 + 32);
  v5 = (a1 + 32);
  v7 = [v6 utunController];
  v8 = [*v5 sharedState];
  v9 = [v8 uniqueID];
  [v7 stopGlobalLinkForDevice:v9];

  v10 = [*v5 qrAllocator];
  v11 = [*v5 sharedState];
  v12 = [v11 uniqueID];
  [v10 clearResponseFromQRGroupID:v12];

  v13 = [*v5 messenger];
  [v13 sendReinitiateMessageWithSubcommand:3];
}

void sub_1003CD1D0(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1003CCED4);
  }

  _Unwind_Resume(a1);
}

id sub_1003CE0BC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 sharedState];
  v5 = [v4 serviceName];
  v6 = [IDSURI URIWithPrefixedURI:v3 withServiceLoggingHint:v5];

  return v6;
}

void sub_1003CEF7C(id a1)
{
  info = 0xAAAAAAAAAAAAAAAALL;
  mach_timebase_info(&info);
  LODWORD(v2) = info.denom;
  LODWORD(v1) = info.numer;
  *&qword_100CBD180 = v1 / v2 / 1000000000.0;
}

void sub_1003CEFCC(id a1)
{
  v1 = qword_100CBD188;
  qword_100CBD188 = &off_100C3DB98;

  v2 = +[IMLockdownManager sharedInstance];
  byte_100CBD190 = [v2 isInternalInstall];
}

uint64_t sub_1003CF8D4(uint64_t result, int a2)
{
  if (result)
  {
    v3 = result;
    v4 = malloc_type_malloc(424 * a2, 0x1000040A56E9926uLL);
    *(v3 + 8) = v4;
    if (v4)
    {
      *v3 = 0;
      *(v3 + 4) = a2;
      return 1;
    }

    else
    {
      v5 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "IDSSockAddrPairTable_Init failed with memory allocation", v6, 2u);
      }

      result = os_log_shim_legacy_logging_enabled();
      if (result)
      {
        result = _IDSShouldLog();
        if (result)
        {
          _IDSLogV();
          return 0;
        }
      }
    }
  }

  return result;
}

BOOL sub_1003CF9D8(void *a1)
{
  if (a1)
  {
    v2 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "IDSSockAddrPairTable_Release", v5, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v3 = a1[1];
    if (v3)
    {
      free(v3);
      a1[1] = 0;
    }

    *a1 = 0;
  }

  return a1 != 0;
}

uint64_t sub_1003CFAC0(int *a1, int a2, unsigned __int8 *a3, unsigned __int8 *a4, uint64_t a5, const void *a6, int a7)
{
  result = 0;
  if (!a1 || !a3 || !a4)
  {
    return result;
  }

  *&v15 = 0xAAAAAAAAAAAAAAAALL;
  *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v37[6] = v15;
  v37[7] = v15;
  v37[4] = v15;
  v37[5] = v15;
  v37[2] = v15;
  v37[3] = v15;
  v37[0] = v15;
  v37[1] = v15;
  v36[6] = v15;
  v36[7] = v15;
  v36[4] = v15;
  v36[5] = v15;
  v36[2] = v15;
  v36[3] = v15;
  v36[0] = v15;
  v36[1] = v15;
  SAToIPPortString();
  SAToIPPortString();
  if (*a1 < 1)
  {
    LODWORD(v16) = 0;
  }

  else
  {
    v16 = 0;
    v17 = 144;
    while (!IsSameSA() || !IsSameSA())
    {
      ++v16;
      v17 += 424;
      if (v16 >= *a1)
      {
        goto LABEL_17;
      }
    }

    v18 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *v30 = v37;
      *&v30[8] = 2080;
      v31 = v36;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[%s-%s] already exists.", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() & 1) != 0 && (_IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }

LABEL_17:
  if (v16 != *a1)
  {
    goto LABEL_28;
  }

  v19 = a1[1];
  if (v19 > v16)
  {
    v20 = *(a1 + 1);
LABEL_27:
    v24 = &v20[424 * v16];
    *v24 = a5;
    *(v24 + 71) = 0;
    *(v24 + 2) = a2;
    memcpy(v24 + 16, a3, *a3);
    memcpy((*(a1 + 1) + 424 * *a1 + 144), a4, *a4);
    memcpy((*(a1 + 1) + 424 * *a1 + 288), a6, a7);
    v25 = *a1;
    *(*(a1 + 1) + 424 * v25 + 416) = a7;
    *a1 = v25 + 1;
LABEL_28:
    v26 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = *a1;
      *buf = 136315906;
      *v30 = v37;
      *&v30[8] = 2080;
      v31 = v36;
      v32 = 2048;
      v33 = a5;
      v34 = 1024;
      v35 = v27;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "added pair [%s-%s], state (%ld), total %d pair(s).", buf, 0x26u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }

    return 1;
  }

  v20 = malloc_type_realloc(*(a1 + 1), 848 * v19, 0x1000040A56E9926uLL);
  if (v20)
  {
    v21 = 2 * v19;
    v22 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = a1[1];
      *buf = 67109376;
      *v30 = v23;
      *&v30[4] = 1024;
      *&v30[6] = v21;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "increase capacity %d->%d", buf, 0xEu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    *(a1 + 1) = v20;
    a1[1] = v21;
    LODWORD(v16) = *a1;
    goto LABEL_27;
  }

  v28 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "failed with realloc", buf, 2u);
  }

  result = os_log_shim_legacy_logging_enabled();
  if (result)
  {
    result = _IDSShouldLog();
    if (result)
    {
      _IDSLogV();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1003D0050(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  result = 0;
  if (a1 && a2)
  {
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v25[6] = v6;
    v25[7] = v6;
    v25[4] = v6;
    v25[5] = v6;
    v25[2] = v6;
    v25[3] = v6;
    v25[0] = v6;
    v25[1] = v6;
    v24[6] = v6;
    v24[7] = v6;
    v24[4] = v6;
    v24[5] = v6;
    v24[2] = v6;
    v24[3] = v6;
    v24[0] = v6;
    v24[1] = v6;
    v7 = *a1;
    if (v7 < 1)
    {
      LODWORD(v8) = 0;
    }

    else
    {
      v8 = 0;
      v9 = *(a1 + 1) + 272;
      while (*a2 != *v9 || *(a2 + 8) != *(v9 + 8))
      {
        ++v8;
        v9 += 424;
        if (v7 == v8)
        {
          goto LABEL_13;
        }
      }
    }

    if (v8 == v7)
    {
LABEL_13:
      v11 = [NSData dataWithBytes:a2 length:12];
      v12 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v17 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "IDSSockAddrPairTable_UpdatePairState - found no match for transactionID %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }

      return 0;
    }

    else
    {
      SAToIPPortString();
      v13 = v8;
      SAToIPPortString();
      v14 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(*(a1 + 1) + 424 * v13);
        *buf = 136315906;
        v17 = v25;
        v18 = 2080;
        v19 = v24;
        v20 = 2048;
        v21 = v15;
        v22 = 2048;
        v23 = a3;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "IDSSockAddrPairTable_UpdatePairState - update state for [%s-%s] (%ld->%ld)", buf, 0x2Au);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            _IDSLogV();
          }
        }
      }

      *(*(a1 + 1) + 424 * v13) = a3;
      return 1;
    }
  }

  return result;
}

void sub_1003D03D4(uint64_t a1, void *a2, void *a3, __int16 a4)
{
  v13 = a2;
  v7 = a3;
  if (a1 && v13 && v7)
  {
    if (*(a1 + 1492) < 1)
    {
      v8 = 0;
    }

    else
    {
      v8 = [NSData dataWithBytes:a1 + 20 length:?];
    }

    v9 = *a1;
    if (*a1 >= 1)
    {
      v10 = 0;
      v11 = 0;
      do
      {
        v12 = *(a1 + 8);
        if (*(v12 + v10) <= 2)
        {
          sub_1003D04D4(v12 + v10, v13, v7, 0, 0, a4, v8);
          v9 = *a1;
        }

        ++v11;
        v10 += 424;
      }

      while (v11 < v9);
    }
  }
}

void sub_1003D04D4(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, __int16 a6, void *a7)
{
  v13 = a2;
  v14 = a3;
  v15 = a7;
  if (a1)
  {
    *&v16 = 0xAAAAAAAAAAAAAAAALL;
    *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v59 = v16;
    v60 = v16;
    v57 = v16;
    v58 = v16;
    v55 = v16;
    v56 = v16;
    v53 = v16;
    v54 = v16;
    v51 = v16;
    v52 = v16;
    v49 = v16;
    v50 = v16;
    v47 = v16;
    v48 = v16;
    v45 = v16;
    v46 = v16;
    v17 = _IDSLinkPacketBufferCreate();
    *(v17 + 12) = *(a1 + 8);
    memcpy(v17 + 7, (a1 + 16), *(a1 + 16));
    memcpy(v17 + 23, (a1 + 144), *(a1 + 144));
    v36 = [[IDSStunMessage alloc] initWithType:1];
    v18 = *a1;
    if (*a1 <= 2)
    {
      if (v18 == 1)
      {
        *a1 = 2;
        LOWORD(v32) = a6;
        [v36 stunRequestToBuffer:*v17 outputLength:v17 + 2 transactionID:0 reqCount:0 userName:a4 usernameLen:a5 sendTime:v32 keyData:v15 remainingLength:v17[1]];
        v21 = [v36 transactionID];
        v22 = [v21 bytes];

        v23 = *v22;
        *(a1 + 280) = v22[2];
        *(a1 + 272) = v23;
      }

      else if (v18 == 2)
      {
        LOWORD(v32) = a6;
        [v36 stunRequestToBuffer:*v17 outputLength:v17 + 2 transactionID:a1 + 272 reqCount:0 userName:a4 usernameLen:a5 sendTime:v32 keyData:v15 remainingLength:v17[1]];
      }
    }

    else
    {
      if ((v18 - 3) < 2)
      {
        if (a4 && a5 > 0)
        {
          *a1 = 4;
          LOWORD(v32) = a6;
          [v36 stunRequestToBuffer:*v17 outputLength:v17 + 2 transactionID:a1 + 272 reqCount:*(a1 + 284) userName:a4 usernameLen:a5 sendTime:v32 keyData:v15 remainingLength:v17[1]];
          goto LABEL_24;
        }

        v20 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "skip regular binding request", buf, 2u);
        }

        if (!os_log_shim_legacy_logging_enabled())
        {
          goto LABEL_40;
        }

        if (!_IDSShouldLogTransport())
        {
          goto LABEL_40;
        }

        _IDSLogTransport();
        if (!_IDSShouldLog())
        {
          goto LABEL_40;
        }

LABEL_39:
        _IDSLogV();
LABEL_40:

        goto LABEL_41;
      }

      if (v18 == 5)
      {
        v19 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "skip nominate binding request", buf, 2u);
        }

        if (!os_log_shim_legacy_logging_enabled())
        {
          goto LABEL_40;
        }

        if (!_IDSShouldLogTransport())
        {
          goto LABEL_40;
        }

        _IDSLogTransport();
        if (!_IDSShouldLog())
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      }
    }

LABEL_24:
    v24 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = SAToIPPortString();
      v26 = *(v17 + 12);
      *buf = 138413058;
      v38 = v36;
      v39 = 2080;
      v40 = v25;
      v41 = 1024;
      v42 = v26;
      v43 = 2080;
      v44 = SAToIPPortString();
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "send binding request %@ for [%s(%u)-%s].", buf, 0x26u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v27 = SAToIPPortString();
        v34 = *(v17 + 12);
        v35 = SAToIPPortString();
        v32 = v36;
        v33 = v27;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v28 = SAToIPPortString();
          v34 = *(v17 + 12);
          v35 = SAToIPPortString();
          v32 = v36;
          v33 = v28;
          _IDSLogV();
        }
      }
    }

    v29 = [v13 sendPacketBuffer:v17 toDeviceUniqueID:0 cbuuid:{v14, v32, v33, v34, v35}];
    if (!v29)
    {
      goto LABEL_40;
    }

    v30 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      if (v29 > 0xF)
      {
        v31 = "UnexpectedSendResult";
      }

      else
      {
        v31 = _IDSLinkSendResultStrings[v29];
      }

      *buf = 136315138;
      v38 = v31;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "failed to send binding request with error (%s)", buf, 0xCu);
    }

    if (!os_log_shim_legacy_logging_enabled())
    {
      goto LABEL_40;
    }

    if (!_IDSShouldLogTransport())
    {
      goto LABEL_40;
    }

    _IDSLogTransport();
    if (!_IDSShouldLog())
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

LABEL_41:
}

BOOL sub_1003D0B60(unsigned int *a1)
{
  if (!a1)
  {
    return 1;
  }

  v1 = *a1;
  if (v1 < 1)
  {
    return 1;
  }

  v2 = *(a1 + 1);
  v3 = v1 - 1;
  do
  {
    result = *v2 > 2;
    v6 = v3-- != 0;
    if (*v2 < 3)
    {
      break;
    }

    v2 += 53;
  }

  while (v6);
  return result;
}

unint64_t sub_1003D0BA8(unint64_t result)
{
  if (result)
  {
    v1 = *result;
    if (v1 < 1)
    {
      return 0;
    }

    else
    {
      v2 = *(result + 8);
      v3 = v1 - 1;
      do
      {
        result = *v2 == 5;
        v4 = *v2 == 5 || v3-- == 0;
        v2 += 53;
      }

      while (!v4);
    }
  }

  return result;
}

unint64_t sub_1003D0BE8(unint64_t result)
{
  if (result)
  {
    v1 = *result;
    if (v1 < 1)
    {
      return 0;
    }

    else
    {
      v2 = *(result + 8);
      v3 = v1 - 1;
      do
      {
        result = *v2 == 7;
        v4 = *v2 == 7 || v3-- == 0;
        v2 += 53;
      }

      while (!v4);
    }
  }

  return result;
}

uint64_t sub_1003D0C28(uint64_t result, void *__s2, int a3, _DWORD *a4, void *a5, void *a6)
{
  if (result)
  {
    v6 = *result;
    if (v6 < 1)
    {
      return 0;
    }

    else
    {
      for (i = *(result + 8); ; i += 424)
      {
        if (*i == 5)
        {
          v13 = *(i + 416);
          if (v13 >= a3)
          {
            v13 = a3;
          }

          if (!memcmp((i + 288), __s2, v13))
          {
            break;
          }
        }

        if (!--v6)
        {
          return 0;
        }
      }

      if (a4)
      {
        *a4 = *(i + 8);
      }

      memcpy(a5, (i + 16), *(i + 16));
      memcpy(a6, (i + 144), *(i + 144));
      return 1;
    }
  }

  return result;
}

void sub_1003D0CF8(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, __int16 a6)
{
  v11 = a2;
  v12 = a3;
  v13 = v12;
  if (a1 && v11 && v12)
  {
    *&v14 = 0xAAAAAAAAAAAAAAAALL;
    *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v50 = v14;
    v51 = v14;
    v48 = v14;
    v49 = v14;
    v46 = v14;
    v47 = v14;
    v44 = v14;
    v45 = v14;
    v42 = v14;
    v43 = v14;
    v40 = v14;
    v41 = v14;
    v38 = v14;
    v39 = v14;
    v36 = v14;
    v37 = v14;
    if (*(a1 + 1492) < 1)
    {
      v29 = 0;
    }

    else
    {
      v29 = [NSData dataWithBytes:a1 + 20 length:?];
    }

    v15 = *a1;
    if (*a1 >= 1)
    {
      v16 = 0;
      while (1)
      {
        v17 = *(*(a1 + 8) + v16);
        if (v17 == 4)
        {
          v23 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v24 = SAToIPPortString();
            v25 = *(*(a1 + 8) + v16 + 8);
            *buf = 136315650;
            v31 = v24;
            v32 = 1024;
            v33 = v25;
            v34 = 2080;
            v35 = SAToIPPortString();
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Nominate connection [%s(%u)-%s].", buf, 0x1Cu);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              SAToIPPortString();
              SAToIPPortString();
              _IDSLogTransport();
              if (_IDSShouldLog())
              {
                SAToIPPortString();
                SAToIPPortString();
                _IDSLogV();
              }
            }
          }

LABEL_35:
          sub_1003D04D4(*(a1 + 8) + v16, v11, v13, a4, a5, a6, v29);
          goto LABEL_36;
        }

        if (v17 == 5)
        {
          break;
        }

        v16 += 424;
        if (424 * v15 == v16)
        {
          v16 = 0;
          v18 = *(a1 + 8);
          v19 = 424 * v15;
          while (*(v18 + v16) != 3)
          {
            v16 += 424;
            if (v19 == v16)
            {
              goto LABEL_36;
            }
          }

          ++*(v18 + v16 + 284);
          v26 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v27 = SAToIPPortString();
            v28 = *(*(a1 + 8) + v16 + 8);
            *buf = 136315650;
            v31 = v27;
            v32 = 1024;
            v33 = v28;
            v34 = 2080;
            v35 = SAToIPPortString();
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Nominate new connection [%s(%u)-%s].", buf, 0x1Cu);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              SAToIPPortString();
              SAToIPPortString();
              _IDSLogTransport();
              if (_IDSShouldLog())
              {
                SAToIPPortString();
                SAToIPPortString();
                _IDSLogV();
              }
            }
          }

          goto LABEL_35;
        }
      }

      v20 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = SAToIPPortString();
        v22 = *(*(a1 + 8) + v16 + 8);
        *buf = 136315650;
        v31 = v21;
        v32 = 1024;
        v33 = v22;
        v34 = 2080;
        v35 = SAToIPPortString();
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Nominate connection [%s(%u)-%s] is done, skip.", buf, 0x1Cu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          SAToIPPortString();
          SAToIPPortString();
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            SAToIPPortString();
            SAToIPPortString();
            _IDSLogV();
          }
        }
      }
    }

LABEL_36:
  }
}

void sub_1003D13B8(int *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, __int16 a6)
{
  v9 = a2;
  v10 = a3;
  v11 = v10;
  if (a1 && v9 && v10)
  {
    if (a1[373] < 1)
    {
      v12 = 0;
    }

    else
    {
      v12 = [NSData dataWithBytes:a1 + 5 length:?];
    }

    if (*a1 < 1)
    {
      goto LABEL_46;
    }

    v13 = 0;
    v14 = 144;
    while (!IsSameSA() || !IsSameSA())
    {
      ++v13;
      v14 += 424;
      if (v13 >= *a1)
      {
        goto LABEL_46;
      }
    }

    v15 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = a1[4];
      v17 = SAToIPPortString();
      v18 = *(*(a1 + 1) + v14 - 136);
      *buf = 67109890;
      *&buf[4] = v16;
      *&buf[8] = 2080;
      *&buf[10] = v17;
      *&buf[18] = 1024;
      *&buf[20] = v18;
      *&buf[24] = 2080;
      *&buf[26] = SAToIPPortString();
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Start echo (%d) for [%s(%u)-%s].", buf, 0x22u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v19 = a1[4];
        SAToIPPortString();
        v46 = SAToIPPortString();
        v42 = v19;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v20 = a1[4];
          SAToIPPortString();
          v46 = SAToIPPortString();
          v42 = v20;
          _IDSLogV();
        }
      }
    }

    v21 = *(a1 + 1);
    v50 = a1[4];
    v22 = v9;
    v52 = v11;
    v23 = v12;
    if (!v21)
    {
LABEL_45:

LABEL_46:
      goto LABEL_47;
    }

    v49 = v23;
    *&v24 = 0xAAAAAAAAAAAAAAAALL;
    *(&v24 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v71 = v24;
    v72 = v24;
    v69 = v24;
    v70 = v24;
    *&buf[32] = v24;
    v68 = v24;
    *buf = v24;
    *&buf[16] = v24;
    v65 = v24;
    v66 = v24;
    v63 = v24;
    v64 = v24;
    v61 = v24;
    v62 = v24;
    v59 = v24;
    v60 = v24;
    v25 = _IDSLinkPacketBufferCreate();
    v51 = [[IDSStunMessage alloc] initWithType:3811];
    v26 = v21 + v14;
    v27 = *(v21 + v14 - 144);
    if (v27 < 5 || v27 == 7)
    {
      v40 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v41 = *(v26 - 144);
        *v53 = 67109120;
        *v54 = v41;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "cannot send echo request due to invalid state (%d).", v53, 8u);
      }

      if (!os_log_shim_legacy_logging_enabled())
      {
        goto LABEL_44;
      }

      if (!_IDSShouldLogTransport())
      {
        goto LABEL_44;
      }

      _IDSLogTransport();
      if (!_IDSShouldLog())
      {
        goto LABEL_44;
      }
    }

    else
    {
      *(v26 - 144) = 6;
      v48 = v21 + v14;
      LOWORD(v42) = a6;
      [v51 stunRequestToBuffer:*v25 outputLength:v25 + 16 transactionID:v21 + v14 + 128 reqCount:v50 userName:0 usernameLen:0 sendTime:v42 keyData:v49 remainingLength:*(v25 + 8)];
      v28 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v47 = v22;
        v29 = SAToIPPortString();
        v30 = *(v25 + 48);
        *v53 = 67109890;
        *v54 = v50;
        *&v54[4] = 2080;
        *&v54[6] = v29;
        v55 = 1024;
        v56 = v30;
        v57 = 2080;
        v58 = SAToIPPortString();
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "send echo request (count:%d) for %s(%u)-%s.", v53, 0x22u);
        v22 = v47;
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v31 = SAToIPPortString();
          v45 = *(v25 + 48);
          v46 = SAToIPPortString();
          v43 = v50;
          v44 = v31;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v32 = SAToIPPortString();
            v45 = *(v25 + 48);
            v46 = SAToIPPortString();
            v43 = v50;
            v44 = v32;
            _IDSLogV();
          }
        }
      }

      v33 = [v51 transactionID];
      v34 = v33;
      v35 = [v33 bytes];

      v36 = *v35;
      *(v48 + 136) = v35[2];
      *(v48 + 128) = v36;
      v37 = [v22 sendPacketBuffer:v25 toDeviceUniqueID:0 cbuuid:v52];
      if (!v37)
      {
        goto LABEL_44;
      }

      v38 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        if (v37 > 0xF)
        {
          v39 = "UnexpectedSendResult";
        }

        else
        {
          v39 = _IDSLinkSendResultStrings[v37];
        }

        *v53 = 136315138;
        *v54 = v39;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "failed to send echo request with error (%s)", v53, 0xCu);
      }

      if (!os_log_shim_legacy_logging_enabled())
      {
        goto LABEL_44;
      }

      if (!_IDSShouldLogTransport())
      {
        goto LABEL_44;
      }

      _IDSLogTransport();
      if (!_IDSShouldLog())
      {
        goto LABEL_44;
      }
    }

    _IDSLogV();
LABEL_44:

    v23 = v49;
    goto LABEL_45;
  }

LABEL_47:
}

char *sub_1003D1BBC(char *result, const void *a2, size_t __n)
{
  if (result && a2)
  {
    v3 = __n;
    if ((__n - 1472) >= 0xFFFFFA41)
    {
      v4 = result;
      result = memcpy(result + 20, a2, __n);
      v4[373] = v3;
    }
  }

  return result;
}

uint64_t sub_1003D1C08(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

unsigned int *sub_1003D1C14(unsigned int *result)
{
  if (result)
  {
    ++result[4];
    v1 = *result;
    if (v1 >= 1)
    {
      v2 = *(result + 1);
      do
      {
        if ((*v2 & 0xFFFFFFFFFFFFFFFELL) == 6)
        {
          *v2 = 5;
        }

        v2 += 53;
        --v1;
      }

      while (v1);
    }
  }

  return result;
}

id sub_1003D203C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(CUTUnsafePromiseSeal);
  v5 = [v3 commitBlock];
  v6 = v5;
  if (!v5)
  {
    v5 = *(a1 + 32);
  }

  v7 = objc_retainBlock(v5);

  v8 = [IDSMPDecryptionResult alloc];
  v9 = [v3 decryptedData];
  v10 = [v3 encryptedAttributes];
  v11 = [v3 additionalDecryptionResult];
  v12 = [v8 initWithData:v9 encryptedAttributes:v10 withCommitState:v7 additionalDecryptionResult:v11];
  [v4 fulfillWithValue:v12];

  v13 = [v4 promise];

  return v13;
}

id sub_1003D22E4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(CUTUnsafePromiseSeal);
  v5 = [v3 commitBlock];
  v6 = v5;
  if (!v5)
  {
    v5 = *(a1 + 32);
  }

  v7 = objc_retainBlock(v5);

  v8 = [IDSMPDecryptionResult alloc];
  v9 = [v3 decryptedData];
  v10 = [v3 encryptedAttributes];
  v11 = [v3 additionalDecryptionResult];
  v12 = [v8 initWithData:v9 encryptedAttributes:v10 withCommitState:v7 additionalDecryptionResult:v11];
  [v4 fulfillWithValue:v12];

  v13 = [v4 promise];

  return v13;
}

uint64_t IDSProtoKeyTransparencyTrustedDeviceMetadataReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        *(a1 + 20) |= 1u;
        v25 = 0;
        v20 = [a2 position] + 8;
        if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 8, v21 <= objc_msgSend(a2, "length")))
        {
          v23 = [a2 data];
          [v23 getBytes:&v25 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v25;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 20) |= 2u;
        while (1)
        {
          v27 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v27 & 0x7F) << v13;
          if ((v27 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_36;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_36:
        *(a1 + 16) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id sub_1003D2E9C(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong(&qword_100CBD1A8, a2);
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "NLDEBUG: SWIZZLE CALLED!", v8, 2u);
  }

  v6 = (*(a1 + 32))(v4, *(a1 + 40));

  return v6;
}

void sub_1003D30B8(int a1)
{
  v2 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003D3140;
  block[3] = &unk_100BDA538;
  v4 = a1;
  dispatch_async(v2, block);
}

void sub_1003D3140(uint64_t a1)
{
  v2 = (a1 + 32);
  v1 = *(a1 + 32);
  if (v1 > 14)
  {
    if (v1 <= 29)
    {
      if (v1 != 15)
      {
        if (v1 == 29)
        {
          v3 = +[IDSDaemon sharedInstance];
          [v3 logState];

          v4 = +[IDSRegistrationCenter sharedInstance];
          [v4 logState];

          v5 = +[IDSTrafficMonitor sharedInstance];
          [v5 logState];

          v20 = +[IDSPublicKeyStorage sharedInstance];
          [v20 logState];

          return;
        }

        goto LABEL_28;
      }

      goto LABEL_13;
    }

    if (v1 == 30)
    {
      v15 = +[IMIDSLog daemon];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "*** Clearing ID status cache ***", v22, 2u);
      }

      v16 = +[IDSPeerIDManager sharedInstance];
      [v16 clearCacheAndPersistImmediately:1];

      v17 = +[IDSPublicKeyStorage sharedInstance];
      [v17 clearCache];

      v18 = +[IDSIDStatusQueryController sharedInstance];
      [v18 clearCache];

      v19 = +[IDSDuetInterface sharedInstance];
      [v19 clearAdmissionCheckCache];

      v11 = +[IDSDaemonPriorityQueueController sharedInstance];
      [v11 performBlockSyncPriority:&stru_100BDA518];
      goto LABEL_34;
    }

    if (v1 == 31)
    {
      v12 = +[IMIDSLog daemon];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "*** Reloading Logging Settings ***", v21, 2u);
      }

      _IMSyncLoggingSettings();
      MarcoSyncLoggingsPreferences();
      v13 = +[IDSUTunController sharedInstance];
      [v13 reloadSettings];

      sub_10040AC58();
      return;
    }

LABEL_28:
    v14 = +[IMIDSLog daemon];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      sub_10091AE54(v2, v14);
    }

    return;
  }

  if (v1 == 1 || v1 == 3)
  {
LABEL_13:
    v7 = +[IMIDSLog daemon];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Quit - notifying about shutdown", buf, 2u);
    }

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 __mainThreadPostNotificationName:@"IDSDaemonShutdownNotification" object:0];

    v9 = +[IMIDSLog daemon];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Quit - shutting down daemon", v24, 2u);
    }

    v10 = +[IDSDaemon sharedInstance];
    [v10 shutdown];

    v11 = +[IMIDSLog daemon];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Quit - goodbye!", v23, 2u);
    }

LABEL_34:

    return;
  }

  if (v1 != 13)
  {
    goto LABEL_28;
  }

  signal(2, sub_1003D30B8);
}

void sub_1003D3528(id a1)
{
  v1 = +[IDSDaemon sharedInstance];
  [v1 _cleanUpOutgoingMessageDatabaseAndClearStatementCache];

  v2 = +[IDSDaemon sharedInstance];
  [v2 _cleanupIncomingMessageDatabase];

  v5 = +[IDSDaemon sharedInstance];
  v3 = [v5 opportunisticDeliveryController];
  v4 = [v3 cache];
  [v4 clearKeychainWithError:0];
}

void sub_1003D35CC(id a1)
{
  v1 = dispatch_get_global_queue(0, 0);
  v2 = 0;
  v9 = xmmword_1009AB700;
  v10 = 0x1F0000001ELL;
  v11 = 13;
  do
  {
    v3 = *(&v9 + v2);
    v4 = dispatch_source_create(&_dispatch_source_type_signal, v3, 0, v1);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1003D373C;
    handler[3] = &unk_100BDA538;
    v8 = v3;
    dispatch_source_set_event_handler(v4, handler);
    v5 = qword_100CD3D28[v2];
    qword_100CD3D28[v2] = v4;
    v6 = v4;

    dispatch_resume(v6);
    signal(v3, 1);
    ++v2;
  }

  while (v2 != 7);
}

uint64_t start()
{
  if ((_set_user_dir_suffix() & 1) == 0)
  {
    v29 = +[IMIDSLog daemon];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      sub_10091AED0();
    }

    exit(1);
  }

  if (!setiopolicy_np(9, 0, 1))
  {
    v0 = +[IMIDSLog daemon];
    if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
    {
      sub_10091AF50();
    }
  }

  nullsub_23();
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = sub_10000A8E8;
  v42 = sub_10000BBF4;
  v43 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_10000A8E8;
  v36 = sub_10000BBF4;
  v37 = 0;
  v1 = objc_autoreleasePoolPush();
  v2 = NSTemporaryDirectory();
  if (qword_100CBD1C0 != -1)
  {
    sub_10091AFD0();
  }

  if (_os_feature_enabled_impl())
  {
    v3 = +[IMIDSLog daemon];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Launching IDS with updated queue architecture.", buf, 2u);
    }

    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("IDS Primary Base Queue", v4);

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create_with_target_V2("IDSDaemon Primary Queue Targets Base Queue", v6, v5);
  }

  else
  {
    v7 = &_dispatch_main_q;
    v8 = &_dispatch_main_q;
    v5 = &_dispatch_main_q;
  }

  im_set_primary_base_queue();
  im_set_primary_queue();
  v9 = objc_autoreleasePoolPush();
  inactive = dispatch_workloop_create_inactive("com.apple.pds.xpc.workloop");
  dispatch_workloop_set_autorelease_frequency(inactive, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  dispatch_activate(inactive);
  v11 = objc_alloc_init(PDSConfiguration);
  [v11 setWorkloop:inactive];
  v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v13 = dispatch_queue_create_with_target_V2("com.apple.identityservicesd.pds", v12, inactive);
  [v11 setQueue:v13];

  v14 = NSHomeDirectory();
  v44[0] = v14;
  v44[1] = @"/Library/IdentityServices/PDS/";
  v15 = [NSArray arrayWithObjects:v44 count:2];
  v16 = [NSURL fileURLWithPathComponents:v15];
  [v11 setDaemonRootDirectory:v16];

  [v11 setPushHandlerPort:@"com.apple.identityservicesd.aps"];
  v17 = [[PDSDaemon alloc] initWithConfiguration:v11];
  [v17 start];

  objc_autoreleasePoolPop(v9);
  v18 = objc_autoreleasePoolPush();
  if (_os_feature_enabled_impl())
  {
    v19 = im_primary_queue();
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1003D3D1C;
    v30[3] = &unk_100BDA580;
    v30[4] = &v38;
    v30[5] = &v32;
    dispatch_sync(v19, v30);
  }

  else
  {
    v20 = +[IDSDaemon sharedInstance];
    v21 = v39[5];
    v39[5] = v20;

    v22 = [IDSDXPCDaemonServer alloc];
    v19 = im_primary_queue();
    v23 = [(IDSDXPCDaemonServer *)v22 initWithServiceName:IDSXPCDaemonMachServiceName queue:v19];
    v24 = v33[5];
    v33[5] = v23;
  }

  objc_autoreleasePoolPop(v18);
  objc_autoreleasePoolPop(v1);
  if (v39[5])
  {
    v25 = +[NSRunLoop currentRunLoop];
    [v25 run];
  }

  v26 = objc_opt_self();
  v27 = objc_opt_self();

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v38, 8);

  return 0;
}

void sub_1003D3C68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1003D3D1C(uint64_t a1)
{
  v2 = +[IDSDaemon sharedInstance];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [IDSDXPCDaemonServer alloc];
  v6 = IDSXPCDaemonMachServiceName;
  v10 = im_primary_queue();
  v7 = [(IDSDXPCDaemonServer *)v5 initWithServiceName:v6 queue:v10];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void sub_1003D3DD0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 8u);
}

void sub_1003D4E88(uint64_t a1)
{
  v2 = [*(a1 + 32) fullDeviceIdentitySigner];
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v15 = 0;
  v5 = [v2 batchSignDatas:v3 withType:v4 error:&v15];
  v6 = v15;

  v7 = im_primary_queue();
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1003D4F94;
  v11[3] = &unk_100BDA5A8;
  v8 = *(a1 + 48);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, v11);
}

void sub_1003D507C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v15 = 0;
  v5 = [v2 _signData:v3 withType:v4 error:&v15];
  v6 = v15;
  v7 = im_primary_queue();
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1003D5178;
  v11[3] = &unk_100BDA5A8;
  v8 = *(a1 + 48);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, v11);
}

void sub_1003D52D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1003D52E8(uint64_t a1)
{
  v5 = [*(a1 + 32) fullDeviceIdentitySigner];
  v2 = [v5 batchSignDatas:*(a1 + 40) withType:*(a1 + 56) error:*(a1 + 64)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1003D54F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1003D551C(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[8];
  v5 = *(a1[7] + 8);
  obj = *(v5 + 40);
  v6 = [v2 _signData:v3 withType:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

uint64_t sub_1003D6278(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 96) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

void sub_1003D63D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1003D63EC(void *a1)
{
  v2 = [*(a1[4] + 96) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

id sub_1003D6658(uint64_t a1)
{
  v2 = [*(a1 + 32) loadAndCheckStatus];
  if (!*(*(a1 + 32) + 96))
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    v4 = *(a1 + 32);
    v5 = *(v4 + 96);
    *(v4 + 96) = v3;
  }

  (*(*(a1 + 40) + 16))();
  if (v2)
  {
    v6 = *(a1 + 32);

    return [v6 delayedSave];
  }

  else
  {
    v8 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(*(a1 + 32) + 24);
      *buf = 138412290;
      v11 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "We're not loaded; ignoring save to disk for cache %@", buf, 0xCu);
    }

    result = os_log_shim_legacy_logging_enabled();
    if (result)
    {
      result = _IDSShouldLog();
      if (result)
      {
        return _IDSLogV();
      }
    }
  }

  return result;
}

uint64_t sub_1003D6884(uint64_t a1)
{
  [*(a1 + 32) loadAndCheckStatus];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void sub_1003D6A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1003D6A50(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 96) allKeys];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

void sub_1003D6B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1003D6BA0(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 96) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

void sub_1003D6C68(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = objc_loadWeakRetained((*(a1 + 32) + 16));
    [v3 didFirstLoadPersistentMap:v4];

    WeakRetained = v4;
  }
}

void sub_1003D6D3C(uint64_t a1)
{
  v2 = [*(a1 + 32) loadAndCheckStatus];
  v3 = v2;
  if (*(*(a1 + 32) + 96))
  {
    if (v2)
    {
LABEL_3:
      objc_initWeak(location, *(a1 + 32));
      v4 = *(*(a1 + 32) + 40);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1003D6F10;
      block[3] = &unk_100BD9D38;
      objc_copyWeak(&v11, location);
      dispatch_async(v4, block);
      objc_destroyWeak(&v11);
      objc_destroyWeak(location);
      return;
    }
  }

  else
  {
    v5 = objc_alloc_init(NSMutableDictionary);
    v6 = *(a1 + 32);
    v7 = *(v6 + 96);
    *(v6 + 96) = v5;

    if (v3)
    {
      goto LABEL_3;
    }
  }

  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(*(a1 + 32) + 24);
    LODWORD(location[0]) = 138412290;
    *(location + 4) = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "We're not loaded; ignoring save to disk for cache %@", location, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

void sub_1003D6F10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1003D6F9C;
  v2[3] = &unk_100BD6ED0;
  v2[4] = WeakRetained;
  [WeakRetained _performLockedBlock:v2];
  [WeakRetained _save];
}

void sub_1003D6F9C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(a1 + 32);
    v4 = *(v3 + 48);
    *(v3 + 48) = 0;
  }
}

void sub_1003D6FF4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(v1 + 48);
  if (v3 == v2)
  {
    *(v1 + 48) = 0;
  }
}

uint64_t sub_1003D7010(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 96) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) _mapByAddingMetadataToMap:*(*(*(a1 + 40) + 8) + 40)];

  return _objc_release_x1();
}

void sub_1003D7170(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 buf)
{
  if (a2 == 1)
  {
    v14 = objc_begin_catch(a1);
    v15 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(v13 + 24);
      LODWORD(buf) = 138412546;
      *(&buf + 4) = v14;
      WORD6(buf) = 2112;
      *(&buf + 14) = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Exception decoding persistent map -- throwing away {exception: %@, identitier: %@}", &buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    objc_end_catch();
    JUMPOUT(0x1003D7120);
  }

  _Unwind_Resume(a1);
}

void sub_1003D8BCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1003D8BEC(uint64_t a1)
{
  v2 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "IDSKeyTransparencyManager xpc connection invalidated, removing client", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained transparencyVerifier];
  [v4 removeKeyTransparencyManagerClient:*(a1 + 32)];
}

void sub_1003DBE28(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void sub_1003DBF6C(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 lastCall])
  {
    v4 = +[IDSFoundationLog delivery];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v3 idsResponseCode];
      v6 = [*(a1 + 32) guid];
      v7 = [*(a1 + 32) service];
      v8 = [*(a1 + 32) reason];
      v9 = [*(a1 + 32) additionalInfo];
      v10 = 134219010;
      v11 = v5;
      v12 = 2112;
      v13 = v6;
      v14 = 2112;
      v15 = v7;
      v16 = 2048;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Sent missing message metric to server { success: %ld, guid: %@, service: %@, reason: %ld, additionalInfo: %@ }", &v10, 0x34u);
    }
  }
}

void sub_1003DC104(id a1)
{
  v1 = objc_alloc_init(IDSDGroupStatusNotificationController);
  v2 = qword_100CBD1D0;
  qword_100CBD1D0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1003DC8D0(uint64_t a1)
{
  v2 = +[IDSFoundationLog GroupStatus_oversized];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138412546;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "participantsForGroupID %@ are %@", &v5, 0x16u);
  }
}

void sub_1003DD0EC(uint64_t a1)
{
  v2 = [*(a1 + 32) realTimeEncryptionController];
  v3 = [v2 realTimeEncryptionPublicKeyData];

  if (v3)
  {
    CFDictionarySetValue(*(a1 + 40), IDSDSessionMessageRealTimeEncryptionPublicKey, v3);
  }

  v4 = [*(a1 + 32) realTimeEncryptionController];
  v5 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 realTimeEncryptionPublicKeyWrappingMode]);

  if (v5)
  {
    CFDictionarySetValue(*(a1 + 40), IDSDSessionMessageRealTimeEncryptionWrapModeKey, v5);
  }

  v31 = [*(a1 + 48) mutableCopy];
  v6 = [*(a1 + 32) _groupMembersSupportingURILessUpdates:*(a1 + 48) groupID:*(a1 + 56)];
  [v31 removeObjectsInArray:v6];
  v30 = [*(a1 + 40) mutableCopy];
  [v30 setObject:0 forKeyedSubscript:IDSGroupSessionURIToParticipantID];
  if ([v6 count])
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 72);
    v26 = *(a1 + 80);
    v28 = *(a1 + 112);
    v9 = *(a1 + 56);
    v10 = *(a1 + 64);
    v11 = *(a1 + 120);
    v12 = *(a1 + 88);
    v13 = [*(a1 + 96) isInitiator];
    v14 = [*(a1 + 96) quickRelayUserType];
    BYTE2(v24) = v11;
    LOWORD(v24) = 0;
    [v7 _sendFanoutMessage:v30 account:v10 toGroupMembers:v6 fromURI:v8 command:v28 commandContext:v26 toGroup:v9 sessionID:v12 reason:v24 waitForMadridAcks:v13 isUPlusOne:v14 isInitiator:0 quickRelayUserType:0 requiredCapabilites:*(a1 + 104) requiredLackOfCapabilities:? completionBlock:?];
  }

  v15 = *(a1 + 40);
  v25 = *(a1 + 32);
  v27 = *(a1 + 112);
  v16 = *(a1 + 72);
  v17 = *(a1 + 80);
  v29 = v6;
  v18 = *(a1 + 56);
  v19 = *(a1 + 64);
  v20 = *(a1 + 120);
  v21 = *(a1 + 88);
  v22 = [*(a1 + 96) isInitiator];
  v23 = [*(a1 + 96) quickRelayUserType];
  BYTE2(v24) = v20;
  LOWORD(v24) = 0;
  [v25 _sendFanoutMessage:v15 account:v19 toGroupMembers:v31 fromURI:v16 command:v27 commandContext:v17 toGroup:v18 sessionID:v21 reason:v24 waitForMadridAcks:v22 isUPlusOne:v23 isInitiator:0 quickRelayUserType:0 requiredCapabilites:*(a1 + 104) requiredLackOfCapabilities:? completionBlock:?];
}

void sub_1003DDA10(uint64_t a1)
{
  v2 = [*(a1 + 32) realTimeEncryptionController];
  v3 = [v2 realTimeEncryptionPublicKeyData];

  if (v3)
  {
    CFDictionarySetValue(*(a1 + 40), IDSDSessionMessageRealTimeEncryptionPublicKey, v3);
  }

  v4 = [*(a1 + 32) realTimeEncryptionController];
  v5 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 realTimeEncryptionPublicKeyWrappingMode]);

  if (v5)
  {
    CFDictionarySetValue(*(a1 + 40), IDSDSessionMessageRealTimeEncryptionWrapModeKey, v5);
  }

  v32 = [*(a1 + 32) _groupMembersSupportingURILessUpdates:*(a1 + 48) groupID:*(a1 + 56)];
  v30 = [*(a1 + 48) mutableCopy];
  [v30 removeObjectsInArray:v32];
  v31 = [*(a1 + 40) mutableCopy];
  [v31 setObject:0 forKeyedSubscript:IDSGroupSessionURIToParticipantID];
  v27 = *(a1 + 40);
  v28 = *(a1 + 32);
  v6 = *(a1 + 72);
  v26 = *(a1 + 64);
  v7 = *(a1 + 120);
  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  v11 = *(a1 + 80);
  v10 = *(a1 + 88);
  v12 = *(a1 + 128);
  v13 = [*(a1 + 96) isInitiator];
  v14 = [*(a1 + 96) quickRelayUserType];
  BYTE2(v24) = v12;
  LOWORD(v24) = 0;
  [v28 _sendFanoutMessage:v27 account:v26 toGroupMembers:v9 fromURI:v6 command:v7 commandContext:v11 toGroup:v8 sessionID:v10 reason:v24 waitForMadridAcks:v13 isUPlusOne:v14 isInitiator:*(a1 + 104) quickRelayUserType:*(a1 + 112) requiredCapabilites:0 requiredLackOfCapabilities:? completionBlock:?];

  if ([v32 count])
  {
    v15 = *(a1 + 32);
    v29 = *(a1 + 120);
    v16 = *(a1 + 72);
    v17 = *(a1 + 80);
    v19 = *(a1 + 56);
    v18 = *(a1 + 64);
    v20 = *(a1 + 128);
    v21 = *(a1 + 88);
    v22 = [*(a1 + 96) isInitiator];
    v23 = [*(a1 + 96) quickRelayUserType];
    BYTE2(v25) = v20;
    LOWORD(v25) = 0;
    [v15 _sendFanoutMessage:v31 account:v18 toGroupMembers:v32 fromURI:v16 command:v29 commandContext:v17 toGroup:v19 sessionID:v21 reason:v25 waitForMadridAcks:v22 isUPlusOne:v23 isInitiator:*(a1 + 104) quickRelayUserType:*(a1 + 112) requiredCapabilites:0 requiredLackOfCapabilities:? completionBlock:?];
  }
}

void sub_1003DFE50(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [v3 idsResponseCode];
    v7 = [v3 responseError];
    v8 = [v3 lastCourierAck];
    v9 = [v3 lastCall];
    v10 = @"NO";
    *buf = 138413314;
    v46 = v5;
    v47 = 2048;
    if (v8)
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    v48 = v6;
    if (v9)
    {
      v10 = @"YES";
    }

    v49 = 2112;
    v50 = v7;
    v51 = 2112;
    v52 = v11;
    v53 = 2112;
    v54 = v10;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Group status notification message callback received { GUID: %@, responseCode: %lu, error: %@, lastCourerAck: %@, lastCall: %@ }", buf, 0x34u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    v12 = *(a1 + 32);
    v13 = [v3 idsResponseCode];
    v14 = [v3 responseError];
    v15 = [v3 lastCourierAck] ? @"YES" : @"NO";
    v16 = [v3 lastCall] ? @"YES" : @"NO";
    v43 = v15;
    v44 = v16;
    v38 = v13;
    v42 = v14;
    v36 = v12;
    _IDSLogTransport();

    if (_IDSShouldLog())
    {
      v17 = *(a1 + 32);
      v18 = [v3 idsResponseCode];
      v19 = [v3 responseError];
      if ([v3 lastCourierAck])
      {
        v20 = @"YES";
      }

      else
      {
        v20 = @"NO";
      }

      if ([v3 lastCall])
      {
        v21 = @"YES";
      }

      else
      {
        v21 = @"NO";
      }

      v43 = v20;
      v44 = v21;
      v38 = v18;
      v42 = v19;
      v36 = v17;
      _IDSLogV();
    }
  }

  [v3 responseCode];
  if ([v3 lastCourierAck] && (*(a1 + 72) & 1) == 0 && *(*(*(a1 + 64) + 8) + 40))
  {
    v22 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 72))
      {
        v23 = @"YES";
      }

      else
      {
        v23 = @"NO";
      }

      v24 = objc_retainBlock(*(*(*(a1 + 64) + 8) + 40));
      *buf = 138412546;
      v46 = v23;
      v47 = 2112;
      v48 = v24;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Last Courier ack received for group status notification message { waitForMadridAcks: %@, pendingCompletionBlock: %@ }", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      v25 = @"NO";
      v26 = *(a1 + 72) ? @"YES" : @"NO";
      v37 = v26;
      v39 = objc_retainBlock(*(*(*(a1 + 64) + 8) + 40));
      _IDSLogTransport();

      if (_IDSShouldLog())
      {
        if (*(a1 + 72))
        {
          v25 = @"YES";
        }

        v37 = v25;
        v39 = objc_retainBlock(*(*(*(a1 + 64) + 8) + 40));
        _IDSLogV();
      }
    }

    (*(*(*(*(a1 + 64) + 8) + 40) + 16))(*(*(*(a1 + 64) + 8) + 40), *(a1 + 40));
    v27 = *(*(a1 + 64) + 8);
    v28 = *(v27 + 40);
    *(v27 + 40) = 0;
  }

  if ([v3 lastCall] && *(*(*(a1 + 64) + 8) + 40))
  {
    v29 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 72))
      {
        v30 = @"YES";
      }

      else
      {
        v30 = @"NO";
      }

      v31 = objc_retainBlock(*(*(*(a1 + 64) + 8) + 40));
      *buf = 138412546;
      v46 = v30;
      v47 = 2112;
      v48 = v31;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Last Madrid ack received for group status notification message { waitForMadridAcks: %@, pendingCompletionBlock: %@ }", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v40 = objc_retainBlock(*(*(*(a1 + 64) + 8) + 40));
        _IDSLogTransport();

        if (_IDSShouldLog())
        {
          v41 = objc_retainBlock(*(*(*(a1 + 64) + 8) + 40));
          _IDSLogV();
        }
      }
    }

    v33 = *(a1 + 64);
    v32 = a1 + 64;
    (*(*(*(v33 + 8) + 40) + 16))(*(*(v33 + 8) + 40), *(v32 - 24));
    v34 = *(*v32 + 8);
    v35 = *(v34 + 40);
    *(v34 + 40) = 0;
  }
}

void sub_1003E231C(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, void *a7, void *a8, uint64_t a9, void *a10)
{
  v64 = a2;
  v65 = a3;
  v66 = a4;
  v67 = a5;
  v68 = a7;
  v69 = a8;
  v16 = a10;
  v83 = objc_alloc_init(NSMutableArray);
  v85 = objc_alloc_init(NSMutableSet);
  v77 = objc_alloc_init(NSMutableArray);
  v76 = objc_alloc_init(NSMutableArray);
  v72 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  obj = v16;
  v73 = [obj countByEnumeratingWithState:&v90 objects:v103 count:16];
  if (v73)
  {
    v71 = *v91;
    v82 = IDSRegistrationPropertySupportsMirage;
    v80 = kIDSQRAllocateKey_RecipientPushToken;
    v81 = IDSRegistrationPropertySupportsURIlessMembershipUpdates;
    v78 = kIDSQRAllocateKey_RecipientURI;
    v79 = kIDSQRAllocateKey_RecipientSessionToken;
    do
    {
      v17 = 0;
      do
      {
        if (*v91 != v71)
        {
          v18 = v17;
          objc_enumerationMutation(obj);
          v17 = v18;
        }

        v75 = v17;
        v19 = *(*(&v90 + 1) + 8 * v17);
        v20 = [obj objectForKeyedSubscript:{v19, v59, v61}];
        v21 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = [v20 count];
          *buf = 138412546;
          v95 = v19;
          v96 = 1024;
          LODWORD(v97) = v22;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Look up peer with URI: %@, push token count: %u", buf, 0x12u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v59 = v19;
            v61 = [v20 count];
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              v23 = [v20 count];
              v59 = v19;
              v61 = v23;
              _IDSLogV();
            }
          }
        }

        v88 = 0u;
        v89 = 0u;
        v86 = 0u;
        v87 = 0u;
        v84 = v20;
        v24 = 0;
        v25 = [v84 countByEnumeratingWithState:&v86 objects:v102 count:16];
        if (v25)
        {
          v26 = *v87;
          do
          {
            for (i = 0; i != v25; i = i + 1)
            {
              if (*v87 != v26)
              {
                objc_enumerationMutation(v84);
              }

              v28 = *(*(&v86 + 1) + 8 * i);
              v29 = [v28 pushToken];
              if ([v85 containsObject:v29])
              {
                v30 = OSLogHandleForTransportCategory();
                if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v95 = v29;
                  _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Skipping duplicate token %@", buf, 0xCu);
                }

                if (os_log_shim_legacy_logging_enabled())
                {
                  if (_IDSShouldLogTransport())
                  {
                    v59 = v29;
                    _IDSLogTransport();
                    if (_IDSShouldLog())
                    {
                      v59 = v29;
                      _IDSLogV();
                    }
                  }
                }
              }

              else
              {
                v31 = [v28 capabilities];
                if ([v31 valueForCapability:v82])
                {
                  v32 = [v28 pushToken];
                  [v77 addObject:v32];
                }

                if ([v31 valueForCapability:v81])
                {
                  v33 = [v28 pushToken];
                  [v76 addObject:v33];
                }

                [v85 addObject:v29];
                v101[0] = v29;
                v100[0] = v80;
                v100[1] = v79;
                v34 = [v28 sessionToken];
                v100[2] = v78;
                v101[1] = v34;
                v101[2] = v19;
                v35 = [NSDictionary dictionaryWithObjects:v101 forKeys:v100 count:3];

                [v83 addObject:v35];
                v36 = [v19 prefixedURI];
                v37 = [v36 _appearsToBePseudonymID];

                if (v37)
                {
                  if (!v24)
                  {
                    v24 = objc_alloc_init(NSMutableSet);
                  }

                  [v24 addObject:v29];
                }
              }
            }

            v25 = [v84 countByEnumeratingWithState:&v86 objects:v102 count:16];
          }

          while (v25);
        }

        v38 = +[IDSDSessionActiveParticipantsCache sharedInstance];
        [v38 updateParticipants:v24 forSessionID:v72[4]];

        v17 = v75 + 1;
      }

      while ((v75 + 1) != v73);
      v73 = [obj countByEnumeratingWithState:&v90 objects:v103 count:16];
    }

    while (v73);
  }

  v39 = [WeakRetained[10] objectForKeyedSubscript:v72[5]];
  v40 = v39 == 0;

  if (v40)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    [WeakRetained[10] setObject:Mutable forKeyedSubscript:v72[5]];
  }

  if ([v77 count])
  {
    v42 = v77;
    if (v42)
    {
      v43 = [WeakRetained[10] objectForKeyedSubscript:v72[5]];
      CFDictionarySetValue(v43, IDSRegistrationPropertySupportsMirage, v42);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10091BBF8();
    }
  }

  if ([v76 count])
  {
    v44 = v76;
    if (v44)
    {
      v45 = [WeakRetained[10] objectForKeyedSubscript:v72[5]];
      CFDictionarySetValue(v45, IDSRegistrationPropertySupportsURIlessMembershipUpdates, v44);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10091BC80();
    }
  }

  v46 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
  {
    v48 = v72[4];
    v47 = v72[5];
    v49 = [WeakRetained[10] objectForKeyedSubscript:v47];
    *buf = 138412802;
    v95 = v47;
    v96 = 2112;
    v97 = v48;
    v98 = 2112;
    v99 = v49;
    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "groupID: %@, sessionID: %@, %@", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v51 = v72[4];
      v50 = v72[5];
      [WeakRetained[10] objectForKeyedSubscript:v50];
      v63 = v62 = v51;
      v60 = v50;
      _IDSLogTransport();

      if (_IDSShouldLog())
      {
        v53 = v72[4];
        v52 = v72[5];
        [WeakRetained[10] objectForKeyedSubscript:{v52, v60, v62, v63, v64, v65, v66, v67, v68}];
        v63 = v62 = v53;
        v60 = v52;
        _IDSLogV();
      }
    }
  }

  if ([v83 count])
  {
    [WeakRetained[4] setObject:v83 forKeyedSubscript:v72[5]];
    v54 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      v55 = *(v72[7] + 32);
      *buf = 138412290;
      v95 = v55;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "Looked up _groupMemberPushTokens: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }

    v56 = v72[8];
    if (v56)
    {
      (*(v56 + 16))(v56);
    }
  }

  else
  {
    v57 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      v58 = v72[6];
      *buf = 138412546;
      v95 = v58;
      v96 = 2112;
      v97 = v69;
      _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Could not look up the recipients' push tokens, IDs: %@, errors: %@ ", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }
  }
}

void sub_1003E2E70(void *a1)
{
  v3 = +[IDSPeerIDManager sharedInstance];
  LOBYTE(v2) = 0;
  [v3 startQueryForURIs:a1[4] fromIdentity:a1[5] fromURI:a1[6] fromService:a1[7] forSending:1 forceToServer:0 clientRequestedForceQuery:v2 reason:@"SessionMemberLookup" completionBlock:a1[8]];
}

void sub_1003E3DE8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) dictionaryRepresentation];
    v5 = *(a1 + 40);
    v6 = [*(a1 + 48) prefixedURI];
    v7 = [*(a1 + 56) unprefixedURI];
    [v3 receivedGroupSessionParticipantUpdate:v4 forTopic:v5 toIdentifier:v6 fromID:v7 context:*(a1 + 64)];
  }

  else
  {
    v8 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Did not find a client to handle receivedGroupSessionParticipantUpdate:forTopic: -- dropping broadcast", v9, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }
  }
}

void sub_1003E41D8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) dictionaryRepresentation];
    v5 = *(a1 + 40);
    v6 = [*(a1 + 48) prefixedURI];
    v7 = [*(a1 + 56) unprefixedURI];
    [v3 receivedGroupSessionParticipantDataUpdate:v4 forTopic:v5 toIdentifier:v6 fromID:v7];
  }

  else
  {
    v8 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Did not find a client to handle receivedGroupSessionParticipantDataUpdate:forTopic: -- dropping broadcast", v9, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }
  }
}

void sub_1003E4364(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0x20u);
}

void sub_1003E604C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IDSFoundationLog IDSOffGridStateManager];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Publishing offgrid mode through StatusKit completed with error %@", &v6, 0xCu);
  }

  if (v3)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  [*(a1 + 32) _setAndPersistOffGridMode:*(*(a1 + 32) + 88) publishStatus:v5];
  [*(a1 + 32) _updateClientsWithCurrentStateAndError:v3];
}

void sub_1003E6130(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = +[IDSFoundationLog IDSOffGridStateManager];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (a2)
    {
      v7 = @"YES";
    }

    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Sent OffGridStatusDecryptionKey with Success %@, error %@", &v9, 0x16u);
  }

  if (((v5 == 0) & a2) != 0)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  [*(a1 + 32) _setAndPersistOffGridMode:*(*(a1 + 32) + 88) publishStatus:v8];
  [*(a1 + 32) _updateClientsWithCurrentStateAndError:v5];
  [*(a1 + 32) _updateOffGridConnectActionWithPayloadKey:0];
}

void sub_1003E6250(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IDSFoundationLog IDSOffGridStateManager];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Got CTStewieRequestContext: %@", buf, 0xCu);
  }

  if (*(a1 + 32) && ([v3 reason] == 8 || objc_msgSend(v3, "reason") == 9))
  {
    [*(a1 + 40) _updateOffGridConnectActionWithPayloadKey:*(a1 + 32)];
  }

  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003E63B4;
  v7[3] = &unk_100BDA900;
  v7[4] = v5;
  v8 = *(a1 + 32);
  [v5 _connectStewieWithContext:v3 options:v6 withCompletion:v7];
}

void sub_1003E63B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IDSFoundationLog IDSOffGridStateManager];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Request stewie completed with error %@", &v9, 0xCu);
  }

  if (v3)
  {
    [*(a1 + 32) _updateOffGridConnectActionWithPayloadKey:0];
    [*(a1 + 32) _setAndPersistOffGridMode:*(*(a1 + 32) + 88) publishStatus:2];
    [*(a1 + 32) _updateClientsWithCurrentStateAndError:v3];
  }

  else if (*(a1 + 40))
  {
    [*(a1 + 32) _scheduleClearSendOnConnectTimer];
    v5 = im_primary_base_queue();
    dispatch_async(v5, &stru_100BDA8D8);
  }

  else
  {
    v6 = +[IDSFoundationLog IDSOffGridStateManager];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10091C1C0();
    }

    [*(a1 + 32) _updateOffGridConnectActionWithPayloadKey:0];
    [*(a1 + 32) _setAndPersistOffGridMode:*(*(a1 + 32) + 88) publishStatus:2];
    v7 = *(a1 + 32);
    v8 = [v7 _errorForNoProvisionedPayload];
    [v7 _updateClientsWithCurrentStateAndError:v8];
  }
}

void sub_1003E6540(id a1)
{
  v1 = sub_1004A52E4();
  v2 = [v1 allMessages];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [v1 cancelMessage:*(*(&v7 + 1) + 8 * v6) withError:10000];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void sub_1003E66FC(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = [*(*(a1 + 32) + 64) invitedHandles];
    (*(v1 + 16))(v1, v2, 0);
  }
}

void sub_1003E69E4(void *a1, void *a2)
{
  v3 = a2;
  v4 = +[IDSFoundationLog IDSOffGridStateManager];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    if (a1[5])
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    v7 = a1[6];
    v11 = 138413058;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    v17 = 2112;
    v18 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Completed request to send invite from sender handle %@ with payload %@ to %@ with error %@", &v11, 0x2Au);
  }

  if (!v3)
  {
    v8 = +[IDSFoundationLog IDSOffGridStateManager];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Reprovisioning on successful invite", &v11, 2u);
    }

    v9 = a1[7];
    [v9 _provisionOnInviteDebounceTimeInterval];
    [v9 _scheduleOffGridPayloadProvisioningTimerWithInterval:1 shouldForce:?];
  }

  v10 = a1[8];
  if (v10)
  {
    (*(v10 + 16))(v10, a1[6], a1[4], a1[5], v3);
  }
}

void sub_1003E6D3C(void *a1, void *a2)
{
  v3 = a2;
  v4 = +[IDSFoundationLog IDSOffGridStateManager];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v9 = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Completed request to remove invites for handles %@ with error %@", &v9, 0x16u);
  }

  if (!v3)
  {
    v6 = +[IDSFoundationLog IDSOffGridStateManager];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Reprovisioning on successful invite removal", &v9, 2u);
    }

    v7 = a1[5];
    [v7 _provisionOnInviteDebounceTimeInterval];
    [v7 _scheduleOffGridPayloadProvisioningTimerWithInterval:1 shouldForce:?];
  }

  v8 = a1[6];
  if (v8)
  {
    (*(v8 + 16))(v8, a1[4], v3);
  }
}

void sub_1003E6FA0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IDSFoundationLog IDSOffGridStateManager];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Completed request to remove all invites %@ with error %@", &v7, 0x16u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, *(a1 + 32), v3);
  }
}

void sub_1003E7300(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IDSFoundationLog IDSOffGridStateManager];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Got CTStewieRequestContext: %@", &v6, 0xCu);
  }

  v5 = objc_alloc_init(IDSOffGridModeOptions);
  [v5 setEntryPointSource:@"connectStewieWithCompletion:"];
  [*(a1 + 32) _connectStewieWithContext:v3 options:v5 withCompletion:*(a1 + 40)];
}

void sub_1003E75E4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IDSFoundationLog IDSOffGridStateManager];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Exit Stewie completed with error %@", &v6, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void sub_1003E77FC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7 = a2;
  v5 = [v4 reason];
  v6 = [*(a1 + 48) entryPointSource];
  [v3 _reportOffGridEntryMetricWithService:v5 source:v6 success:v7 == 0];

  (*(*(a1 + 56) + 16))();
}

void sub_1003E7BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1003E7BD8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  }

  else
  {
    [*(a1 + 32) addObjectsFromArray:a2];
  }

  dispatch_group_leave(*(a1 + 40));
}

uint64_t sub_1003E7C5C(void *a1)
{
  v2 = +[IDSFoundationLog IDSOffGridStateManager];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = *(*(a1[6] + 8) + 40);
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Completed fetch contacts %@ with fetchError %@", &v6, 0x16u);
  }

  result = a1[5];
  if (result)
  {
    return (*(result + 16))(result, a1[4], *(*(a1[6] + 8) + 40));
  }

  return result;
}

void sub_1003E8080(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[IDSFoundationLog IDSOffGridStateManager];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v26 = [v5 count];
    v27 = 2112;
    v28 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Completed fetch of emergency handles { count: %ld } with error %@", buf, 0x16u);
  }

  if (v6)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v18 = 0;
    v19 = v5;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      do
      {
        v12 = 0;
        do
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v20 + 1) + 8 * v12) phoneNumber];
          v14 = _IDSCopyIDForPhoneNumberWithOptions();
          if (v14)
          {
            v15 = [IDSOffGridContactInfo alloc];
            v16 = [IDSURI URIWithUnprefixedURI:v14];
            v17 = [v15 initWithURI:v16 type:1];

            [*(a1 + 32) addObject:v17];
          }

          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v10);
    }

    (*(*(a1 + 40) + 16))();
    v6 = v18;
    v5 = v19;
  }
}

void sub_1003E8C24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = [v4 arrayByAddingObjectsFromArray:a2];
  }

  v6 = v5;
  [*(a1 + 40) _calloutToDelegateWithUpdatedContacts:v5];
}

void sub_1003E9638(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[NSDate now];
  v8 = *(a1 + 32);
  v9 = *(v8 + 152);
  *(v8 + 152) = v7;

  objc_storeStrong((*(a1 + 32) + 160), a3);
  if (v6)
  {
    v10 = +[IDSFoundationLog IDSOffGridStateManager];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10091C3D8();
    }

    v11 = *(a1 + 32);
    [v11 _failedProvisionInterval];
    [v11 _scheduleOffGridPayloadProvisioningTimerWithInterval:0 shouldForce:?];
  }

  else
  {
    [*(*(a1 + 32) + 144) setObject:v5 forKey:@"provisioned-payloads"];
    [*(*(a1 + 32) + 144) removeObjectForKey:@"sent-payload-id"];
    [*(*(a1 + 32) + 144) persistImmediately];
    v13 = *(a1 + 40);
    cut_dispatch_log_queue();
    v12 = *(a1 + 32);
    [v12 _successfulProvisionInterval];
    [v12 _scheduleOffGridPayloadProvisioningTimerWithInterval:0 shouldForce:?];
  }

  [*(a1 + 32) _markProvisionRequestCompleted];
}

void sub_1003E97C0(uint64_t a1)
{
  v2 = +[IDSFoundationLog IDSOffGridStateManager_oversized];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Persisted provisioned payloads %@", &v4, 0xCu);
  }
}

uint64_t sub_1003EA4E8(uint64_t a1, uint64_t a2)
{
  v3 = [NSNumber numberWithBool:a2];
  if (v3)
  {
    CFDictionarySetValue(*(a1 + 32), kCTStewieAreAllPrimaryContactsReachableViaIML, v3);
  }

  [*(a1 + 40) setMetadata:*(a1 + 32)];
  v4 = *(*(a1 + 48) + 16);

  return v4();
}

void sub_1003EAC20(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5 && [v5 count])
  {
    v19 = v6;
    v7 = +[IDSDaemon sharedInstance];
    v8 = [v7 persistenceManager];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v20 = v5;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      v13 = IDSServiceNameiMessageLite;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v21 + 1) + 8 * i);
          v16 = +[IDSDAccountController sharedInstance];
          v17 = [v16 registeredLocalURIsOnService:v13];

          v18 = [v15 uri];
          LOBYTE(v16) = [v8 hasUsableSenderKeyFor:v18 fromAny:v17];

          if ((v16 & 1) == 0)
          {
            (*(*(a1 + 32) + 16))();

            goto LABEL_14;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    (*(*(a1 + 32) + 16))();
LABEL_14:

    v6 = v19;
    v5 = v20;
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_1003EB600(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = +[IDSFoundationLog IDSOffGridStateManager];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (a2)
    {
      v7 = @"YES";
    }

    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Sent OffGridStatusDecryptionKey on connect with Success %@, error %@", &v9, 0x16u);
  }

  v8 = 2;
  if (!v5 && a2)
  {
    [*(a1 + 32) _markPayloadAsSentForDecryptionKey:{*(*(a1 + 32) + 176), 2}];
    v8 = 1;
  }

  [*(a1 + 32) _setAndPersistOffGridMode:*(*(a1 + 32) + 88) publishStatus:v8];
  [*(a1 + 32) _updateClientsWithCurrentStateAndError:v5];
  [*(a1 + 32) _updateOffGridConnectActionWithPayloadKey:0];
}

void sub_1003EC1A0(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1003EC1C8(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = +[NSMutableString string];
    [v4 appendFormat:@"Current OffGrid Mode:%ld Publish Status:%ld", *(WeakRetained + 11), *(WeakRetained + 12)];
    [v4 appendFormat:@"Last provision details: Time %@ Error %@", *(WeakRetained + 19), *(WeakRetained + 20)];
    v5 = [*(WeakRetained + 18) objectForKey:@"sent-payload-id"];
    [v4 appendFormat:@"Sent payload identifiers: %@", v5];

    v6 = [*(WeakRetained + 18) objectForKey:@"provisioned-payloads"];
    [v4 appendFormat:@"Provisioned payloads \n%@", v6];

    v7[2](v7, v4);
  }

  else
  {
    v7[2](v7, 0);
  }
}

uint64_t sub_1003EC2F8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = +[IDSFoundationLog IDSOffGridStateManager];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(WeakRetained + 11);
    v4 = *(WeakRetained + 12);
    *buf = 134218240;
    v12 = v3;
    v13 = 2048;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Current OffGrid Mode:%ld Publish Status:%ld", buf, 0x16u);
  }

  v5 = +[IDSFoundationLog IDSOffGridStateManager];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(WeakRetained + 19);
    v7 = *(WeakRetained + 20);
    *buf = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Last provision details: Time %@ Error %@", buf, 0x16u);
  }

  v8 = +[IDSFoundationLog IDSOffGridStateManager];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(WeakRetained + 18) objectForKey:@"sent-payload-id"];
    *buf = 138412290;
    v12 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sent payload identifiers: %@", buf, 0xCu);
  }

  cut_dispatch_log_queue();
  cut_dispatch_log_queue();

  return 0;
}

void sub_1003EC538(uint64_t a1)
{
  v2 = +[IDSFoundationLog IDSOffGridStateManager_oversized];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(*(a1 + 32) + 144) objectForKey:@"provisioned-payloads"];
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Provisioned payloads \n%@", &v4, 0xCu);
  }
}

void sub_1003EC604(uint64_t a1)
{
  v2 = +[IDSFoundationLog IDSOffGridStateManager_oversized];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(*(a1 + 32) + 64) invitedHandles];
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Invited handles: \n%@", &v4, 0xCu);
  }
}

Class sub_1003EC9C4(uint64_t a1)
{
  sub_1003ECA1C();
  result = objc_getClass("HKMedicalIDStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10091C574();
  }

  qword_100CBD1D8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1003ECA1C()
{
  v0[0] = 0;
  if (!qword_100CBD1E0)
  {
    v0[1] = _NSConcreteStackBlock;
    v0[2] = 3221225472;
    v0[3] = sub_1003ECB08;
    v0[4] = &unk_100BD75B8;
    v0[5] = v0;
    v0[7] = 0;
    v0[8] = 0;
    v0[6] = "/System/Library/Frameworks/HealthKit.framework/HealthKit";
    qword_100CBD1E0 = _sl_dlopen();
  }

  if (!qword_100CBD1E0)
  {
    sub_10091C5F0(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t sub_1003ECB08()
{
  result = _sl_dlopen();
  qword_100CBD1E0 = result;
  return result;
}

Class sub_1003ECB74(uint64_t a1)
{
  sub_1003ECA1C();
  result = objc_getClass("HKHealthStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10091C670();
  }

  qword_100CBD1E8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1003EEA38(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) _registeredIdentityTimestamps];
  (*(v2 + 16))(v2, v3);

  v4 = +[IDSDRegistrationListener sharedInstance];
  [v4 removeBlockForIdentifier:*(*(*(a1 + 48) + 8) + 40)];

  v5 = +[IDSRegistrationKeyManager sharedInstance];
  [v5 setForceRoll:*(a1 + 56)];
}

void sub_1003EFA40(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = a4;
  v8 = a2;
  v9 = [a3 __imArrayByApplyingBlock:&stru_100BDAC10];
  (*(v6 + 16))(v6, v8, v9, v7);
}

id sub_1003EFAD8(id a1, IDSEndpoint *a2)
{
  v55[0] = @"URI";
  v2 = a2;
  v54 = [(IDSEndpoint *)v2 URI];
  v3 = [v54 description];
  v53 = v3;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = @"(null)";
  }

  v56[0] = v4;
  v55[1] = @"Push Token";
  v52 = [(IDSEndpoint *)v2 pushToken];
  v5 = [v52 debugDescription];
  v51 = v5;
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = @"(null)";
  }

  v56[1] = v6;
  v55[2] = @"Session Token";
  v50 = [(IDSEndpoint *)v2 sessionToken];
  v7 = [v50 debugDescription];
  v49 = v7;
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = @"(null)";
  }

  v56[2] = v8;
  v55[3] = @"Refresh Date";
  v48 = [(IDSEndpoint *)v2 refreshDate];
  v9 = [v48 description];
  v47 = v9;
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = @"(null)";
  }

  v56[3] = v10;
  v55[4] = @"Expire Date";
  v46 = [(IDSEndpoint *)v2 expireDate];
  v11 = [v46 description];
  v45 = v11;
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = @"(null)";
  }

  v56[4] = v12;
  v55[5] = @"Legacy Message Protection Version";
  v44 = [NSNumber numberWithChar:[(IDSEndpoint *)v2 legacyVersion]];
  v13 = [v44 description];
  v43 = v13;
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = @"(null)";
  }

  v56[5] = v14;
  v55[6] = @"Legacy Message Protection Identity";
  v42 = [(IDSEndpoint *)v2 serializedLegacyPublicIdentity];
  v15 = [v42 description];
  v41 = v15;
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = @"(null)";
  }

  v56[6] = v16;
  v55[7] = @"NGM Message Protection Version";
  v40 = [NSNumber numberWithShort:[(IDSEndpoint *)v2 ngmVersion]];
  v17 = [v40 description];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = @"(null)";
  }

  v56[7] = v19;
  v55[8] = @"NGM Message Protection Prekey";
  v39 = [(IDSEndpoint *)v2 serializedNGMDevicePrekey];
  v20 = [v39 description];
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = @"(null)";
  }

  v56[8] = v22;
  v55[9] = @"KT Loggable Data";
  v23 = [(IDSEndpoint *)v2 KTLoggableData];
  v24 = [v23 description];
  v25 = v24;
  if (v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = @"(null)";
  }

  v56[9] = v26;
  v55[10] = @"KT Device Signature";
  v27 = [(IDSEndpoint *)v2 KTDeviceSignature];
  v28 = [v27 description];
  v29 = v28;
  if (v28)
  {
    v30 = v28;
  }

  else
  {
    v30 = @"(null)";
  }

  v56[10] = v30;
  v55[11] = @"KT Mismatched Account Flag";
  if ([(IDSEndpoint *)v2 mismatchedAccountFlag])
  {
    v31 = @"YES";
  }

  else
  {
    v31 = @"NO";
  }

  v56[11] = v31;
  v55[12] = @"KT Capable Flag";
  if ([(IDSEndpoint *)v2 ktCapableFlag])
  {
    v32 = @"YES";
  }

  else
  {
    v32 = @"NO";
  }

  v56[12] = v32;
  v55[13] = @"KT Validation";
  v33 = [(IDSEndpoint *)v2 transparency];

  v34 = [v33 description];
  v35 = v34;
  if (v34)
  {
    v36 = v34;
  }

  else
  {
    v36 = @"(null)";
  }

  v56[13] = v36;
  v37 = [NSDictionary dictionaryWithObjects:v56 forKeys:v55 count:14];

  return v37;
}

void sub_1003F0014(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = sub_1003F0090(a3);
  (*(v4 + 16))(v4, v5, v6);
}

id sub_1003F0090(void *a1)
{
  v1 = a1;
  v2 = [v1 userInfo];
  v3 = [v2 mutableCopy];

  v4 = [v3 objectForKeyedSubscript:NSUnderlyingErrorKey];
  if (v4)
  {
    v5 = v4;
    v6 = [v3 objectForKeyedSubscript:NSUnderlyingErrorKey];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = [v1 userInfo];
      v9 = [v8 objectForKeyedSubscript:NSUnderlyingErrorKey];
      v10 = sub_1003F0090();
      [v3 setObject:v10 forKeyedSubscript:NSUnderlyingErrorKey];
    }
  }

  v11 = [v1 domain];
  if (v11)
  {
    v12 = [v1 code];

    if (v12)
    {
      v13 = [NSError alloc];
      v14 = [v1 domain];
      v11 = [v13 initWithDomain:v14 code:objc_msgSend(v1 userInfo:{"code"), v3}];
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

void sub_1003F0310(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = sub_1003F0090(a2);
  (*(v2 + 16))(v2, v3);
}

void sub_1003F082C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = sub_1003F0090(a2);
  (*(v2 + 16))(v2, v3);
}

void sub_1003F0E0C(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state] == 1)
  {
    v4 = *(a1 + 40);
    v5 = [v3 error];
    (*(v4 + 16))(v4, 0, v5);
  }

  else
  {
    v6 = [v3 value];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1003F10A8;
    v27[3] = &unk_100BDACD8;
    v7 = objc_alloc_init(NSMutableString);
    v28 = v7;
    v8 = objc_retainBlock(v27);
    v9 = *(a1 + 32);
    if (v9)
    {
      v10 = [v6 clientDatasByServiceType];
      v11 = [v10 objectForKeyedSubscript:*(a1 + 32)];
      (v8[2])(v8, v9, v11);
    }

    else
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v10 = [v6 clientDatasByServiceType];
      v12 = [v10 countByEnumeratingWithState:&v23 objects:v29 count:16];
      if (v12)
      {
        v13 = v12;
        v21 = v7;
        v22 = v3;
        v14 = *v24;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v24 != v14)
            {
              objc_enumerationMutation(v10);
            }

            v16 = *(*(&v23 + 1) + 8 * i);
            v17 = [v6 clientDatasByServiceType];
            v18 = [v17 objectForKeyedSubscript:v16];
            (v8[2])(v8, v16, v18);
          }

          v13 = [v10 countByEnumeratingWithState:&v23 objects:v29 count:16];
        }

        while (v13);
        v3 = v22;
        v7 = v21;
      }
    }

    v19 = *(a1 + 40);
    v20 = [v7 copy];
    (*(v19 + 16))(v19, v20, 0);
  }
}

void sub_1003F10A8(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 debugDescription];
  [v4 appendFormat:@"%@ => %@\n", v5, v6];
}

id sub_1003F1730(id a1, id a2)
{
  v2 = a2;
  v3 = [NSDate alloc];
  [v2 doubleValue];
  v5 = v4;

  v6 = [v3 initWithTimeIntervalSince1970:v5];

  return v6;
}

void sub_1003F1A00(uint64_t a1)
{
  v4 = +[IDSDaemon sharedInstance];
  v2 = [v4 firewallNotificationCenter];
  v3 = [[IDSURI alloc] initWithUnprefixedURI:*(a1 + 32)];
  [v2 postNotificationForURI:v3 onService:*(a1 + 40) shouldRateLimit:0 command:&off_100C3BEF0];
}

void sub_1003F2720(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v28 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  v19 = *(a1 + 32);
  if (!v19 || ([v28 processName], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v19, "containsObject:", v20), v20, v21))
  {
    v22 = [v28 processName];
    v23 = +[NSMutableString stringWithFormat:](NSMutableString, "stringWithFormat:", @"%@[%lld]\n", v22, [v28 pid]);

    sub_1003F2988(v23, @"services:", 1);
    sub_1003F2A24(v23, v14, 2);
    sub_1003F2988(v23, @"notification services:", 1);
    sub_1003F2A24(v23, v15, 2);
    sub_1003F2988(v23, @"entitlements:", 1);
    v24 = [v16 dictionaryRepresentation];
    sub_1003F2A24(v23, v24, 2);

    sub_1003F2988(v23, @"commands:", 1);
    v25 = [v17 allObjects];
    v26 = [v25 sortedArrayUsingSelector:"compare:"];

    sub_1003F2A24(v23, v26, 2);
    sub_1003F2988(v23, @"capabilities:", 1);
    v27 = IDSPrettyListOfEnabledCapabilities();
    sub_1003F2A24(v23, v27, 2);

    sub_1003F2988(v23, @"bundle ID:", 1);
    sub_1003F2A24(v23, v18, 2);
    [*(a1 + 40) addObject:v23];
  }
}

void sub_1003F2988(void *a1, void *a2, int a3)
{
  v4 = 2 * a3;
  v5 = a2;
  v6 = a1;
  v7 = [&stru_100C06028 stringByPaddingToLength:v4 withString:@" " startingAtIndex:0];
  [v6 appendFormat:@"%@%@\n", v7, v5];
}

void sub_1003F2A24(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v7 = v6;
    v8 = [(__CFString *)v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v28;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v28 != v10)
          {
            objc_enumerationMutation(v7);
          }

          sub_1003F2A24(v5, *(*(&v27 + 1) + 8 * i), a3);
        }

        v9 = [(__CFString *)v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v9);
    }

    if ((objc_opt_respondsToSelector() & 1) != 0 && ![(__CFString *)v7 count])
    {
      goto LABEL_22;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v21 = v5;
      v20 = v6;
      goto LABEL_24;
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = v6;
    v12 = v6;
    v13 = [(__CFString *)v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v24;
      do
      {
        for (j = 0; j != v14; j = j + 1)
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v23 + 1) + 8 * j);
          v18 = [NSString stringWithFormat:@"%@:", v17];
          sub_1003F2A24(v5, v18, a3);

          v19 = [(__CFString *)v12 objectForKeyedSubscript:v17];
          sub_1003F2A24(v5, v19, (a3 + 1));
        }

        v14 = [(__CFString *)v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v14);
    }

    v6 = v22;
    if (![(__CFString *)v12 count])
    {
LABEL_22:
      v20 = @"(None)";
      v21 = v5;
LABEL_24:
      sub_1003F2988(v21, v20, a3);
    }
  }
}

void sub_1003F2D3C(id a1)
{
  v1 = objc_alloc_init(IDSTrafficMonitor);
  v2 = qword_100CBD1F8;
  qword_100CBD1F8 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1003F56C8(id a1)
{
  v1 = objc_alloc_init(IDSQuickSwitchHelper);
  v2 = qword_100CBD208;
  qword_100CBD208 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1003F5B28(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v5 = +[IDSPairingManager sharedInstance];
    v6 = [v5 activatePairedDeviceWithCBUUID:*(a1 + 32)];

    v7 = +[IDSUTunDeliveryController sharedInstance];
    [v7 addUTunPeerWithDeviceUniqueID:IDSDeviceDefaultPairedDeviceUniqueID btuuid:*(a1 + 32)];

    v8 = +[IDSUTunDeliveryController sharedInstance];
    [v8 prepareForQuickSwitch];

    if ((v6 - 2) >= 3)
    {
      v10 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v23) = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Finishing up switching", &v23, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      v11 = +[IDSUTunController sharedInstance];
      [v11 addPairedDevice:*(a1 + 32)];

      v12 = +[IDSPairingManager sharedInstance];
      [v12 ensureCommunicationWithActivePairedDeviceIsPossible];

      v13 = +[IDSUTunDeliveryController sharedInstance];
      [v13 updatecloudDeliveryStateOnDefaultPeer];

      v14 = +[IDSAccountSync sharedInstance];
      [v14 resetAndResynchronizeEverything];

      v15 = +[IDSDaemon sharedInstance];
      [v15 _processStoredMessagesIncludingClassD:1];

      if (*(a1 + 64))
      {
        v9 = +[IDSUTunDeliveryController sharedInstance];
        [v9 ensureLocalSetupInProgressConsistencyAfterQWS];
      }

      else
      {
        v16 = +[IDSPairingManager sharedInstance];
        v9 = [v16 pairedDeviceUniqueID];

        v17 = +[IDSDaemon sharedInstance];
        v18 = [v17 broadcasterWithMessageContext:0];

        [v18 didSwitchActivePairedDevice:v9];
      }

      v4 = 0;
    }

    else
    {
      v4 = [NSError errorWithDomain:IDSLocalPairingErrorDomain code:qword_1009AB740[(v6 - 2)] userInfo:0];
      v9 = +[IMRGLog watchPairing];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 138412290;
        v24 = *&v4;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "QuickSwitch initiated with error: %@", &v23, 0xCu);
      }
    }

    v19 = *(a1 + 48);
    if (v19)
    {
      (*(v19 + 16))(v19, v4);
    }

    [*(a1 + 40) _setIsQuickSwitchingToAnotherDevice:0];
    v20 = +[IMRGLog watchPairing];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      +[NSDate timeIntervalSinceReferenceDate];
      v22 = v21 - *(a1 + 56);
      v23 = 134217984;
      v24 = v22;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "QuickSwitch time %f", &v23, 0xCu);
    }
  }
}

void sub_1003F604C(uint64_t a1)
{
  v2 = +[IDSPairingManager sharedInstance];
  v3 = [v2 pairedDeviceUniqueID];

  if ([v3 length])
  {
    v32 = a1;
    v33 = v3;
    v4 = +[IDSDAccountController sharedInstance];
    v5 = [v4 accountsOfAdHocType:2];

    v6 = objc_alloc_init(NSMutableSet);
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v38;
      do
      {
        v11 = 0;
        do
        {
          if (*v38 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v37 + 1) + 8 * v11);
          v13 = +[IDSDAccountController sharedInstance];
          v14 = [v13 accountWithUniqueID:v12];

          v15 = [v14 service];
          v16 = [v15 allowPendingMessagesForInactiveDevice];

          if ((v16 & 1) == 0)
          {
            [v6 addObject:v12];
          }

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v9);
    }

    a1 = v32;
    if (*(v32 + 40) == 1)
    {
      v17 = [v6 allObjects];
      v3 = v33;
      [IDSDMessageStore markAllMessageAsPendingDeleteForAccounts:v17 withDestinationDevice:v33];
    }

    else
    {
      v3 = v33;
      [IDSDMessageStore markOutgoingMessagesAsUnsentForDestination:v33];
    }
  }

  if (*(a1 + 40) == 1)
  {
    v18 = +[IDSPairingManager sharedInstance];
    [v18 deactivatePairedDevices];

    v19 = +[IDSDaemon sharedInstance];
    v20 = [v19 broadcasterWithMessageContext:0];

    [v20 deactivatePairedDevices];
  }

  v21 = +[IMRGLog watchPairing];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Removing the keychain and in-memory data used for OTR communication.", buf, 2u);
  }

  v22 = +[IDSOTRKeyStorage sharedInstance];
  [v22 removeSessionKeyForAllTokenFromMainQueue];

  v23 = +[IDSOTRController sharedInstance];
  [v23 removeAllCachedSessionsFromMainQueue];

  v24 = +[IMRGLog watchPairing];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Resetting all OTR sessions to allow communication with the new active paired device.", buf, 2u);
  }

  v25 = +[IDSOTRController sharedInstance];
  [v25 resetAllSessions];

  if (*(a1 + 40))
  {
    v26 = 24;
  }

  else
  {
    v26 = 31;
  }

  v27 = +[IDSUTunDeliveryController sharedInstance];
  v28 = IDSDeviceDefaultPairedDeviceUniqueID;
  [v27 removeUTunPeerWithDeviceUniqueID:IDSDeviceDefaultPairedDeviceUniqueID btuuid:0 reason:v26 shouldWait:1];

  v29 = +[IDSUTunController sharedInstance];
  [v29 tearDownEncryptionForDeviceUniqueID:v28 cbuuid:0];

  v30 = +[IDSUTunController sharedInstance];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_1003F64A0;
  v34[3] = &unk_100BD7270;
  v35 = *(a1 + 32);
  v31 = im_primary_queue();
  [v30 obliterateConnectionInfoWithCompletionBlock:v34 completionQueue:v31];
}

uint64_t sub_1003F64A0(uint64_t result)
{
  if (*(result + 32))
  {
    v1 = result;
    v2 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Calling completion block to finish switching", v3, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }

    return (*(*(v1 + 32) + 16))();
  }

  return result;
}

void sub_1003F65C8(id a1)
{
  v1 = objc_alloc_init(IDSAccountSync);
  v2 = qword_100CBD218;
  qword_100CBD218 = v1;

  _objc_release_x1(v1, v2);
}

id sub_1003F6C68(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isEqualToString:@"PreferredAccount"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"FetchRemote") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"TinkerDeviceInfo") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"SPSProvisioningData"))
  {
    v4 = 0;
  }

  else
  {
    v6 = [*(a1 + 32) serviceController];
    v4 = [v6 serviceWithIdentifier:v3];
  }

  return v4;
}

void sub_1003F72AC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 72));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1003F72C8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v5 = [WeakRetained syncCredential];
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = [*(a1 + 56) pairingManager];
  v10 = [v9 activePairedDeviceHasPairingType:1];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1003F7414;
  v14[3] = &unk_100BDAEB8;
  objc_copyWeak(&v18, (a1 + 72));
  v11 = *(a1 + 64);
  v12 = *(a1 + 56);
  v15 = v11;
  v16 = v12;
  v13 = v3;
  v17 = v13;
  [v5 sendAccountSyncMessage:v6 messageID:v7 queueOneIdentifier:v8 allowCloudFallback:v10 ^ 1 completionBlock:v14];

  objc_destroyWeak(&v18);
}

void sub_1003F7414(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = +[IMRGLog accountSync];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (a2)
    {
      v7 = @"YES";
    }

    v10 = 138412546;
    v11 = v5;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Sent account sync message (message ID: %@) (success: %@)", &v10, 0x16u);
  }

  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v9 = [WeakRetained currentInFlightSyncAttempts];
    [v9 setObject:0 forKeyedSubscript:*(a1 + 32)];

    [*(a1 + 40) saveTracking];
  }

  (*(*(a1 + 48) + 16))();
}

void sub_1003F82E0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_1003F8304(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [WeakRetained syncCredential];
  v6 = [*(a1 + 32) allObjects];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1003F83E8;
  v8[3] = &unk_100BD94B8;
  v8[4] = *(a1 + 40);
  v9 = v3;
  v7 = v3;
  [v5 fetchRemoteAccountsOfServiceTypes:v6 withCompletionBlock:v8];
}

void sub_1003F83E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IMRGLog accountSync];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 allKeys];
    *buf = 138412290;
    v19 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received remote account information {accountInfoMapKey: %@}", buf, 0xCu);
  }

  if (v3)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [v3 allKeys];
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          v12 = [v3 _arrayForKey:v11];
          [*(a1 + 32) synchronizeAccountsWithRemoteInfo:v12 service:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  (*(*(a1 + 40) + 16))();
}

id sub_1003F96D8(id a1, id a2)
{
  v2 = [a2 objectForKeyedSubscript:kIDSServiceDefaultsAliasKey];
  if ([v2 length])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

id sub_1003F99A0(id a1, IDSDAccount *a2)
{
  v2 = [(IDSDAccount *)a2 accountInfo];
  v3 = [v2 objectForKeyedSubscript:kIDSServiceDefaultsAliasesKey];
  v4 = [v3 __imArrayByApplyingBlock:&stru_100BDAF88];
  v5 = [v4 firstObject];

  return v5;
}

id sub_1003F9A2C(id a1, id a2)
{
  v2 = [a2 objectForKeyedSubscript:kIDSServiceDefaultsAliasKey];
  if ([v2 length])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

id sub_1003FA8E8(id a1, NSDictionary *a2)
{
  v2 = [(NSDictionary *)a2 objectForKeyedSubscript:kIDSServiceDefaultsLoginAsKey];
  v3 = [v2 lowercaseString];

  return v3;
}

id sub_1003FB940(id a1, id a2)
{
  v2 = [a2 objectForKeyedSubscript:kIDSServiceDefaultsAliasKey];
  if ([v2 length])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

BOOL sub_1003FB994(id a1, id a2)
{
  v2 = [a2 objectForKeyedSubscript:kIDSServiceDefaultsAliasKey];
  v3 = [v2 isEqualToString:kIDSServiceDefaultsSentinelAlias];

  return v3 ^ 1;
}

void sub_1003FBA14(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 accountController];
  v4 = [v3 uniqueID];

  [v5 enablePrimaryAccountWithUniqueID:v4];
}

id sub_1003FC358(uint64_t a1, void *a2)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003FC400;
  v5[3] = &unk_100BDB0F8;
  v6 = *(a1 + 32);
  v3 = [a2 __imDictionaryByFilteringWithBlock:v5];

  return v3;
}

void sub_1003FC604(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

void sub_1003FDE4C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = +[IDSFoundationLog accountIdentity];
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (a2)
  {
    if (v7)
    {
      v8 = *(a1 + 32);
      v9 = 138543362;
      v10 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Stored cluster in keychain {fullCluster: %{public}@}", &v9, 0xCu);
    }
  }

  else if (v7)
  {
    v9 = 138543362;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Failed to store cluster in keychain {error: %{public}@}", &v9, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1003FE3B0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

void sub_1003FF4D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a53, 8);
  _Unwind_Resume(a1);
}

void sub_1003FF548(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = 138412802;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Finished capturing AutoBugCapture diagnostics for EC key loading failure { context: %@, keyLoadingError: %@, error: %@ }", &v8, 0x20u);
  }
}

void sub_1003FF620(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 96);
  v5 = [*(a1 + 32) allKeys];
  v6 = [NSSet setWithArray:v5];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1003FF7A4;
  v13[3] = &unk_100BDB198;
  v21 = *(a1 + 96);
  v14 = *(a1 + 32);
  v7 = *(a1 + 80);
  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  v17 = v3;
  v20 = *(a1 + 88);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  *&v10 = *(a1 + 72);
  *(&v10 + 1) = v7;
  *&v11 = v8;
  *(&v11 + 1) = v9;
  v18 = v11;
  v19 = v10;
  v12 = v3;
  [v4 _fetchPresenceCapabilityForServiceTypes:v6 withCompletion:v13];
}

void sub_1003FF7A4(uint64_t a1, char a2)
{
  v4 = *(a1 + 104);
  v5 = [*(a1 + 32) allKeys];
  v6 = [NSSet setWithArray:v5];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1003FF948;
  v18[3] = &unk_100BDB170;
  v24 = *(a1 + 104);
  v7 = *(a1 + 88);
  v8 = *(a1 + 40);
  v9 = *(a1 + 32);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  *&v12 = v10;
  *(&v12 + 1) = v11;
  *&v13 = v8;
  *(&v13 + 1) = v9;
  v19 = v13;
  v20 = v12;
  v23 = *(a1 + 96);
  v14 = *(a1 + 64);
  v15 = *(a1 + 72);
  v25 = a2;
  *&v16 = *(a1 + 80);
  *(&v16 + 1) = v7;
  *&v17 = v14;
  *(&v17 + 1) = v15;
  v21 = v17;
  v22 = v16;
  [v4 _fetchStewieCapabilityForServiceTypes:v6 withCompletion:v18];
}

void sub_1003FF948(uint64_t a1, char a2)
{
  if (!_os_feature_enabled_impl() || ([objc_opt_class() _isKTAsyncEnrollmentDisabledViaUserDefaults] & 1) != 0 || objc_msgSend(objc_opt_class(), "_isKTAsyncEnrollmentDisabledViaServerBag"))
  {
    v4 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "KT Async Enrollment is disabled.", buf, 2u);
    }

    v5 = [*(a1 + 32) createKTRegistrationDataForServiceTypes:*(a1 + 40) withPublicIdentity:*(a1 + 48)];
    v6 = [v5 mutableCopy];
    v7 = *(*(a1 + 88) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    v13 = [*(a1 + 56) mutableCopy];
    v14 = *(*(a1 + 88) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }

  BYTE1(v16) = a2;
  LOBYTE(v16) = *(a1 + 112);
  v9 = [*(a1 + 104) _createClientDatasForServiceTypes:*(a1 + 40) withAppleIDRegistrationsForServiceTypes:*(a1 + 64) ktRegDataByServiceType:*(*(*(a1 + 88) + 8) + 40) publicIdentityData:*(a1 + 48) publicIdentityError:*(a1 + 72) keyStore:*(a1 + 32) isPresenceCapable:v16 isStewieCapable:?];
  v10 = *(*(a1 + 96) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v12 = objc_alloc_init(IDSClientDataResult);
  [(IDSClientDataResult *)v12 setClientDatasByServiceType:*(*(*(a1 + 96) + 8) + 40)];
  [(IDSClientDataResult *)v12 setKtRegDataByServiceType:*(*(*(a1 + 88) + 8) + 40)];
  [*(a1 + 80) fulfillWithValue:v12];
}

void sub_100401CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100401D10(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100401DA8;
  v7[3] = &unk_100BDB210;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v6 = v3;
  dispatch_async(v5, v7);
}

void sub_100401DA8(uint64_t a1)
{
  v2 = +[FTDeviceSupport sharedInstance];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100401E58;
  v5[3] = &unk_100BDB1E8;
  v4 = *(a1 + 32);
  v3 = v4;
  v6 = v4;
  [v2 supportsStewieWithCompletion:v5];
}

void sub_100401E58(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = +[IMRGLog registration];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (a2)
    {
      v7 = @"YES";
    }

    v8 = 138412546;
    v9 = v7;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Fetched stewie capability with result: %@ error: %@", &v8, 0x16u);
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  (*(*(a1 + 32) + 16))();
}

void sub_100401F5C(uint64_t a1, char a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100401FF0;
  block[3] = &unk_100BDB260;
  v9 = a2;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = v4;
  v8 = v5;
  dispatch_async(v3, block);
}

uint64_t sub_100401FF0(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = +[IMRGLog registration];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_10091CBF4(v2);
    }
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 24));
  }

  return result;
}

void sub_1004023B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1004023DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10040247C;
  block[3] = &unk_100BDB2F8;
  v8 = *(a1 + 40);
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

void sub_10040247C(uint64_t a1)
{
  v2 = [objc_alloc(*(a1 + 48)) initWithPresenceIdentifier:&stru_100C06028];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100402530;
  v5[3] = &unk_100BDB2D0;
  v4 = *(a1 + 32);
  v3 = v4;
  v6 = v4;
  [v2 fetchPresenceCapability:v5];
}

uint64_t sub_100402530(uint64_t a1, int a2)
{
  v4 = +[IMRGLog registration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Fetched StatusKit presence capability with result: %d", v6, 8u);
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  return (*(*(a1 + 32) + 16))();
}

void sub_100402604(uint64_t a1, char a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100402698;
  block[3] = &unk_100BDB260;
  v9 = a2;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = v4;
  v8 = v5;
  dispatch_async(v3, block);
}

uint64_t sub_100402698(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = +[IMRGLog registration];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_10091CC38(v2);
    }
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 24));
  }

  return result;
}

uint64_t sub_100404104()
{
  v0 = [IDSServerBag sharedInstanceForBagType:0];
  v1 = [v0 objectForKey:@"allow-account-repair-activity"];

  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = [v1 BOOLValue];
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

void sub_10040418C(uint64_t a1)
{
  v1 = *(a1 + 32);
  im_dispatch_after_primary_queue();
}

id sub_10040420C(uint64_t a1)
{
  *(*(a1 + 32) + 9) = 0;
  [*(a1 + 32) _repairTimerHit:0];
  v2 = *(a1 + 32);

  return [v2 setupPhoneNumberRepairTimer];
}

void sub_100405524(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IMRGLog registration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, " => Kicking alternate SMS based linked account: %@", &v7, 0xCu);
  }

  v5 = [*(a1 + 32) accountController];
  v6 = [v3 uniqueID];
  [v5 enableAccountWithUniqueID:v6];

  [v3 registerAccount];
}

void sub_100405620(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IMRGLog registration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, " => Kicking SMS based linked account: %@", &v7, 0xCu);
  }

  v5 = [*(a1 + 32) accountController];
  v6 = [v3 uniqueID];
  [v5 enableAccountWithUniqueID:v6];

  [v3 registerAccount];
}

void sub_10040571C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IMRGLog registration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, " => Kicking iCloud SMS based linked account: %@", &v7, 0xCu);
  }

  v5 = [*(a1 + 32) accountController];
  v6 = [v3 uniqueID];
  [v5 enableAccountWithUniqueID:v6];

  [v3 registerAccount];
}

void sub_100405F38(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IMRGLog registration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, " => Kicking Apple ID based linked account: %@", &v7, 0xCu);
  }

  v5 = [*(a1 + 32) accountController];
  v6 = [v3 uniqueID];
  [v5 enableAccountWithUniqueID:v6];

  [v3 registerAccount];
}

void sub_100406134(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void sub_100406150(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  state = xpc_activity_get_state(v3);
  if (state == 2)
  {
    v11 = +[IMRGLog registration];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Got called to kick account repair.", buf, 2u);
    }

    if (sub_100404104())
    {
      v8 = im_primary_queue();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100406384;
      block[3] = &unk_100BD6ED0;
      block[4] = WeakRetained;
      dispatch_async(v8, block);
LABEL_15:
    }
  }

  else if (!state)
  {
    v6 = +[IMRGLog registration];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = @"YES";
      if (!v3)
      {
        v7 = @"NO";
      }

      *buf = 138412290;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Told to check in for account repair with activity %@ ", buf, 0xCu);
    }

    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v8, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
    xpc_dictionary_set_int64(v8, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_4_HOURS);
    v9 = xpc_activity_copy_criteria(v3);
    v10 = v9;
    if (!v9 || !xpc_equal(v9, v8))
    {
      xpc_activity_set_criteria(v3, v8);
    }

    goto LABEL_15;
  }
}

id sub_100407BDC(uint64_t a1, int a2, void *a3)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100407C60;
  v5[3] = &unk_100BDB3E8;
  v6 = a2;
  v3 = [a3 __imArrayByFilteringWithBlock:v5];

  return v3;
}

void sub_100407CB4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138412290;
    v24 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "   Checking account registration status: %@", &v23, 0xCu);
  }

  v6 = [(__CFString *)v3 registrationError];
  if (v6 <= 0x26)
  {
    v7 = v6;
    if (((1 << v6) & 0x4600000000) != 0)
    {
      v8 = +[IMRGLog registration];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 134218242;
        v24 = v7;
        v25 = 2112;
        v26 = v3;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "   Not attempting repair service/account pair {registrationError: %ld, account: %@}", &v23, 0x16u);
      }

LABEL_7:

      goto LABEL_8;
    }
  }

  v9 = [(__CFString *)v3 loginID];
  if (!IMAreEmailsLogicallyTheSame())
  {

    goto LABEL_23;
  }

  v10 = *(a1 + 48);

  if (v10)
  {
LABEL_23:
    v16 = +[IMRGLog registration];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 32);
      v18 = [(__CFString *)v3 loginID];
      v19 = v18;
      v20 = *(a1 + 48);
      v23 = 138412802;
      v24 = v17;
      if (v20)
      {
        v21 = @"YES";
      }

      else
      {
        v21 = @"NO";
      }

      v25 = 2112;
      v26 = v18;
      v27 = 2112;
      v28 = v21;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "  => Account does not appear to be primary, we shouldn't be here...  {primaryUserName: %@, loginID: %@, hasActiveAppleIDBasedAccounts: %@}", &v23, 0x20u);
    }

    goto LABEL_8;
  }

  if ([(__CFString *)v3 isEnabled]&& [(__CFString *)v3 registrationStatus]> 1)
  {
    v8 = +[IMRGLog registration];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [(__CFString *)v3 uniqueID];
      v23 = 138412290;
      v24 = v22;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "   Account appears to be in good form: %@", &v23, 0xCu);
    }

    goto LABEL_7;
  }

  v11 = +[IMRGLog registration];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    if ([(__CFString *)v3 isEnabled])
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    if ([(__CFString *)v3 registrationStatus]>= 2)
    {
      v13 = @"NO";
    }

    else
    {
      v13 = @"YES";
    }

    v23 = 138412546;
    v24 = v12;
    v25 = 2112;
    v26 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "   Account isn't enabled or registerd -- enabling {isEnabled: %@, unregistered: %@}", &v23, 0x16u);
  }

  v14 = [*(a1 + 40) accountController];
  v15 = [(__CFString *)v3 uniqueID];
  [v14 enableAccountWithUniqueID:v15];

  [(__CFString *)v3 registerAccount];
LABEL_8:
  objc_autoreleasePoolPop(v4);
}

void sub_10040803C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  if ([(__CFString *)v3 registrationError]== 38)
  {
    v5 = +[IMRGLog registration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 134218242;
      v17 = 38;
      v18 = 2112;
      v19 = v3;
      v6 = "   Not enabling account due to irreparable registration error {registrationError: %ld, account: %@}";
      v7 = v5;
      v8 = 22;
LABEL_11:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v6, &v16, v8);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v9 = [*(a1 + 32) accountController];
  if (![v9 hasActiveSMSAccount])
  {

    goto LABEL_9;
  }

  if ([(__CFString *)v3 isEnabled])
  {
    v10 = [(__CFString *)v3 registrationStatus];

    if (v10 < 2)
    {
      goto LABEL_15;
    }

LABEL_9:
    v5 = +[IMRGLog registration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      v6 = "  => We have no active SMS registrations, skipping";
      v7 = v5;
      v8 = 2;
      goto LABEL_11;
    }

LABEL_12:

    goto LABEL_13;
  }

LABEL_15:
  v11 = +[IMRGLog registration];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    if ([(__CFString *)v3 isEnabled])
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    if ([(__CFString *)v3 registrationStatus]>= 2)
    {
      v13 = @"NO";
    }

    else
    {
      v13 = @"YES";
    }

    v16 = 138412546;
    v17 = v12;
    v18 = 2112;
    v19 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "   Account isn't enabled and/or registered -- enabling {isEnabled: %@, unregistered: %@}", &v16, 0x16u);
  }

  v14 = [*(a1 + 32) accountController];
  v15 = [(__CFString *)v3 uniqueID];
  [v14 enableAccountWithUniqueID:v15];

  [(__CFString *)v3 registerAccount];
LABEL_13:
  objc_autoreleasePoolPop(v4);
}

void sub_1004082A0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  if (([v3 isEnabled] & 1) == 0)
  {
    v5 = +[IMRGLog registration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "   Account isn't enabled, enabling local account", v8, 2u);
    }

    v6 = [*(a1 + 32) accountController];
    v7 = [v3 uniqueID];
    [v6 enableAccountWithUniqueID:v7];
  }

  objc_autoreleasePoolPop(v4);
}

void sub_100408378(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 accountController];
  [v5 addPrimaryAccount:v4];

  v7 = [*(a1 + 32) accountController];
  v6 = [v4 uniqueID];

  [v7 enablePrimaryAccountWithUniqueID:v6];
}

void sub_100408E64(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 24) iTunesSystemAccountWithError:0];
  if (v1)
  {
    v2 = +[IMRGLog registration];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138412290;
      v5 = v1;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "iTunes is signed in -- ignoring request to sign out { systemAccount: %@ }", &v4, 0xCu);
    }
  }

  else
  {
    v2 = +[IDSDaemon sharedInstance];
    v3 = [v2 signInResponder];
    [v3 iTunesSignOut];
  }
}

void sub_10040931C(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 24) iCloudSystemAccountWithError:0];
  if (v1)
  {
    v2 = +[IMRGLog registration];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138412290;
      v5 = v1;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "iCloud is signed in -- ignoring request to sign out { systemAccount: %@ }", &v4, 0xCu);
    }
  }

  else
  {
    v2 = +[IDSDaemon sharedInstance];
    v3 = [v2 signInResponder];
    [v3 iCloudSignOut];
  }
}

void sub_100409508(uint64_t a1, uint64_t a2)
{
  v4 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [NSNumber numberWithInteger:a2];
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Fetched current KT CDP Status. { IDSKTAccountStatus: %@ }", &v9, 0xCu);
  }

  if (a2 == 4)
  {
    v6 = [*(a1 + 32) accountController];
    v7 = [*(a1 + 40) uniqueID];
    [v6 enableAccountWithUniqueID:v7];

    [*(a1 + 40) registerAccount];
  }

  else
  {
    v8 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "KT says account isn't ready. Not trying to repair account.", &v9, 2u);
    }
  }
}

double sub_10040973C()
{
  v0 = [IDSServerBag sharedInstanceForBagType:0];
  v1 = [v0 objectForKey:@"phone-registration-retry-interval-seconds"];

  if (v1)
  {
    [v1 doubleValue];
    v3 = v2;
  }

  else
  {
    v3 = 86400.0;
  }

  if (IDSDebuggingShouldForcePhoneRepairTimer())
  {
    IDSDebuggingPhoneRepairTimerOverride();
    v3 = v4;
  }

  return v3;
}

double sub_1004097C8()
{
  v0 = [IDSServerBag sharedInstanceForBagType:0];
  v1 = [v0 objectForKey:@"phone-registration-retry-max-interval-seconds"];

  if (v1)
  {
    [v1 doubleValue];
    v3 = v2;
  }

  else
  {
    v3 = 691200.0;
  }

  return v3;
}

id sub_10040AAB0(uint64_t a1)
{
  v2 = [*(a1 + 32) accountController];
  v3 = [*(a1 + 40) uniqueID];
  [v2 enableAccountWithUniqueID:v3];

  v4 = *(a1 + 40);

  return [v4 registerAccount];
}

void sub_10040AC3C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

uint64_t sub_10040AC58()
{
  result = IMGetDomainBoolForKeyWithDefaultValue();
  byte_100CD3D60 = result;
  return result;
}

nw_endpoint_t sub_10040AC8C(unsigned int a1)
{
  *&address[4] = 0;
  *&address[12] = 0;
  v4 = 0;
  *&address[2] = __rev16(a1);
  *address = 7708;
  v1 = nw_endpoint_create_address(address);

  return v1;
}

void sub_10040B320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  os_unfair_lock_unlock(v17 + 5);
  _Unwind_Resume(a1);
}

uint64_t sub_10040B350(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (*(result + 32) == a2)
  {
    *(*(*(result + 40) + 8) + 24) = a3;
    *a4 = 1;
  }

  return result;
}

uint64_t sub_10040B378(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (*(result + 32) == a2)
  {
    *(*(*(result + 40) + 8) + 24) = a3;
    *a4 = 1;
  }

  return result;
}

uint64_t sub_10040B9A0(uint64_t a1, uint64_t *a2)
{
  if (atomic_load_explicit((*(a1 + 32) + 16), memory_order_acquire))
  {
    v2 = +[IDSFoundationLog Multiplexer];
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
LABEL_5:

      return 0;
    }

    *buf = 0;
    v3 = "Mutliplexer Transport readHandler called for routed connection while invalidated";
LABEL_4:
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, v3, buf, 2u);
    goto LABEL_5;
  }

  if ([*(a1 + 40) isTCP])
  {
    v7 = [*(a1 + 40) localTCPSYN];

    if (!v7 && (*(*a2 + 13) & 2) != 0)
    {
      v8 = bswap32(*(*a2 + 4));
      v9 = [NSNumber numberWithUnsignedInt:v8];
      [*(a1 + 40) setLocalTCPSYN:v9];

      v10 = +[IDSFoundationLog Multiplexer];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 40);
        *buf = 67109378;
        v22 = v8;
        v23 = 2112;
        v24 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "saved local SYN %08X for connection %@", buf, 0x12u);
      }
    }
  }

  v12 = *(a2 + 46);
  if ((v12 & 1) == 0)
  {
    *(a2 + 134) |= 0x4000u;
  }

  if (*(a1 + 48))
  {
    IDSLinkPacketBufferAddBufferStart();
    *(a2 + 134) |= 1u;
    a2[61] = *(a1 + 48);
LABEL_16:
    **a2 = 1467207418;
    goto LABEL_17;
  }

  if (byte_100CD3D60)
  {
    if (v12)
    {
      goto LABEL_17;
    }

    IDSLinkPacketBufferAddBufferStart();
    goto LABEL_16;
  }

  v13 = *a2;
  v14 = *(a1 + 32);
  v15 = *(v14 + 72);
  *(v14 + 72) = v15 + 1;
  *(v13 - 26) = 1467207418;
  *(v13 - 22) = HIBYTE(v15);
  *(v13 - 21) = v15;
  *(v13 - 20) = bswap32(*(a1 + 48));
  v16 = *(a1 + 32);
  v17 = *(v16 + 64);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10040BCB8;
  v19[3] = &unk_100BDB4F0;
  v18 = *(a1 + 48);
  v19[4] = v16;
  v19[5] = v18;
  v20 = v15;
  v19[6] = v13 - 16;
  v19[7] = a2;
  if (([v17 useCurrentEncryptionkeyWithHandler:v19] & 1) == 0)
  {
    v2 = +[IDSFoundationLog Multiplexer];
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_5;
    }

    *buf = 0;
    v3 = "Fanout encryption - useCurrentEncryptionkeyWithHandler failed - dropping outgoing packet";
    goto LABEL_4;
  }

  IDSLinkPacketBufferAddBufferStart();
LABEL_17:
  kdebug_trace();
  return (*(*(*(a1 + 32) + 56) + 16))();
}

void sub_10040BCB8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  v11 = *(a1 + 32);
  v12 = *(v11 + 88);
  if (v12)
  {
    if ([v9 isEqual:*(v11 + 80)])
    {
LABEL_12:
      [v10 getUUIDBytes:*(a1 + 48)];
      sub_10050CB8C(v12, *(a1 + 64), **(a1 + 56), *(*(a1 + 56) + 16), 1);
      goto LABEL_13;
    }

    sub_10050CB5C(v12);
    *(*(a1 + 32) + 88) = 0;
    v13 = *(a1 + 32);
    v14 = *(v13 + 80);
    *(v13 + 80) = 0;
  }

  while (1)
  {
    v15 = *(a1 + 32);
    v17 = *(v15 + 76);
    v16 = (v15 + 76);
    if (v17)
    {
      break;
    }

    if (SecRandomCopyBytes(kSecRandomDefault, 4uLL, v16))
    {
      sub_10091D0DC();
    }
  }

  v12 = malloc_type_malloc(0x11F0uLL, 0x10300408CDAB1FBuLL);
  sub_10050C5E0(v12, [v7 bytes], objc_msgSend(v7, "length"), 1, *(*(a1 + 32) + 76), 0, 0, 0, 1);
  v18 = sub_10050C5E0(v12, [v7 bytes], objc_msgSend(v7, "length"), 1, *(a1 + 40), 0, 0, 0, 1);
  if (!v18)
  {
    *(*(a1 + 32) + 88) = v12;
    v21 = [v10 copy];
    v22 = *(a1 + 32);
    v23 = *(v22 + 80);
    *(v22 + 80) = v21;

    goto LABEL_12;
  }

  v19 = v18;
  free(v12);
  v20 = +[IDSFoundationLog Multiplexer];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v25 = v19;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Fanout encryption - SRTP init failed with error code %d", buf, 8u);
  }

LABEL_13:
}

void sub_10040C294(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 96), 8);
  os_unfair_lock_unlock(v1 + 5);
  _Unwind_Resume(a1);
}

void sub_10040C2C4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 unsignedIntValue];
  v8 = [*(*(a1 + 32) + 32) objectAtIndexedSubscript:a3];
  v9 = [v8 unsignedLongLongValue];

  v10 = +[IDSFoundationLog Multiplexer];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 56);
    v12 = *(*(a1 + 48) + 488);
    v22 = 67109888;
    v23 = v7;
    v24 = 1024;
    v25 = v11;
    v26 = 2048;
    v27 = v9;
    v28 = 2048;
    v29 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "comparing portSignatures %08X to %08X and participantIDs %016llX to %016llX", &v22, 0x22u);
  }

  if (v7 == *(a1 + 56) && v9 == *(*(a1 + 48) + 488))
  {
    if (*(a1 + 64) != 1)
    {
LABEL_16:
      *(*(*(a1 + 40) + 8) + 24) = a3;
      *a4 = 1;
      return;
    }

    v13 = [*(*(a1 + 32) + 40) objectAtIndexedSubscript:a3];
    v14 = [v13 localTCPSYN];

    if (v14)
    {
      v15 = [v14 unsignedLongValue];
      if (*(a1 + 60) == v15)
      {
        *(*(*(a1 + 40) + 8) + 24) = a3;
        *a4 = 1;
LABEL_15:

        goto LABEL_16;
      }

      v16 = +[IDSFoundationLog Multiplexer];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v21 = *(a1 + 60);
        v22 = 67109376;
        v23 = v21;
        v24 = 1024;
        v25 = v15;
        v18 = "resetSYN %08X localSYN %08X do not match";
        v19 = v16;
        v20 = 14;
        goto LABEL_13;
      }
    }

    else
    {
      v16 = +[IDSFoundationLog Multiplexer];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(a1 + 60);
        v22 = 67109120;
        v23 = v17;
        v18 = "resetSYN %08X but no localSYN";
        v19 = v16;
        v20 = 8;
LABEL_13:
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v18, &v22, v20);
      }
    }

    goto LABEL_15;
  }
}

uint64_t sub_10040C9C8(uint64_t a1, uint64_t a2)
{
  explicit = atomic_load_explicit((*(a1 + 32) + 16), memory_order_acquire);
  v5 = +[IDSFoundationLog Multiplexer];
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (explicit)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Mutliplexer Transport readHandler called for listner while invalidated", buf, 2u);
    }

    return 0;
  }

  else
  {
    if (v6)
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "listener read callback!", v8, 2u);
    }

    IDSLinkPacketBufferAddBufferStart();
    **a2 = 1467207418;
    *(a2 + 536) |= 0x4000u;
    kdebug_trace();
    return (*(*(*(a1 + 32) + 56) + 16))();
  }
}

void sub_10040D4B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  os_unfair_lock_unlock(v27 + 5);
  _Unwind_Resume(a1);
}

void sub_10040D504(uint64_t a1, id a2)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = a2;
  v7 = [v6 bytes];
  v8 = [v6 length];

  v9 = sub_10050C5E0(v4, v7, v8, 0, 0, 0, *(a1 + 40), 0, 1);
  if (v9)
  {
    v10 = v9;
    v11 = +[IDSFoundationLog Multiplexer];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v13 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Fanout encryption - SRTP init failed with error code %d", buf, 8u);
    }
  }
}

void sub_10040D624(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 unsignedIntValue];
  v8 = [*(*(a1 + 32) + 32) objectAtIndexedSubscript:a3];
  v9 = [v8 unsignedLongLongValue];

  if (v7 == *(a1 + 56))
  {
    v10 = *(a1 + 48);
    *(*(*(a1 + 40) + 8) + 24) = a3;
    if (v9 == v10)
    {
      *a4 = 1;
    }
  }
}

void sub_10040DA30(id a1)
{
  v1 = [[IDSGroupSessionMultiplexer alloc] initAndSetupNexus];
  v2 = qword_100CBD228;
  qword_100CBD228 = v1;

  _objc_release_x1(v1, v2);
}

id sub_10040F8F8(uint64_t a1)
{
  v2 = +[IDSFoundationLog Multiplexer];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "MUXKillQUICConnectionTimer fired for %@", &v5, 0xCu);
  }

  [*(a1 + 40) resetConnection:*(a1 + 32)];
  return [*(a1 + 32) invalidate];
}

uint64_t IDSProtoKeyTransparencyTrustedServiceSignatureReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = &OBJC_IVAR___IDSProtoKeyTransparencyTrustedServiceSignature__serviceIdentifier;
LABEL_21:
        v15 = *v14;
        v16 = *(a1 + v15);
        *(a1 + v15) = v13;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = PBReaderReadData();
    v14 = &OBJC_IVAR___IDSProtoKeyTransparencyTrustedServiceSignature__signature;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

void sub_100411D38(uint64_t a1)
{
  v2 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    if (*(a1 + 40))
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    *buf = 138412290;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "setHasSpaceAvailable %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  v4 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    v5 = *(v4 + 144);
    if (v5)
    {
      v6 = [v5 length];
      v8 = *(a1 + 32);
      v7 = a1 + 32;
      *(v8 + 64) += v6;
      ++*(*v7 + 72);
      *(*v7 + 136) = 0;
      [*(*v7 + 40) sendData:*(*v7 + 144) peerID:*(*v7 + 32)];
      v9 = *(*v7 + 144);
      *(*v7 + 144) = 0;
    }

    else
    {
      *(v4 + 136) = 1;
      v10 = *(a1 + 32);
      if (*(v10 + 137) == 1)
      {
        WeakRetained = objc_loadWeakRetained((v10 + 152));
        [WeakRetained link:*(a1 + 32) hasSpaceAvailable:1 deviceUniqueID:0 cbuuid:*(*(a1 + 32) + 8)];

        *(*(a1 + 32) + 137) = 0;
      }
    }
  }

  else
  {
    *(v4 + 136) = 0;
  }
}

void sub_100412910(id a1)
{
  info = 0xAAAAAAAAAAAAAAAALL;
  mach_timebase_info(&info);
  LODWORD(v2) = info.denom;
  LODWORD(v1) = info.numer;
  *&qword_100CBD238 = v1 / v2 / 1000000000.0;
}

void sub_100412F8C(id a1)
{
  v1 = objc_alloc_init(IDSRapportDeliveryController);
  v2 = qword_100CBD248;
  qword_100CBD248 = v1;

  _objc_release_x1(v1, v2);
}

uint64_t sub_100413480(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}