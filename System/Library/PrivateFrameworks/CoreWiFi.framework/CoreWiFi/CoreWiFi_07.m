uint64_t sub_1E0D3B4FC(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = CWFGetOSLog();
  if (v2)
  {
    v3 = CWFGetOSLog();
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v11 = 136446722;
    v12 = "[CWFWiFiUserAgent __launchWiFiNetworkSharingAskToShareProxCardForAccessoryID:accessoryName:appBundleID:completion:]_block_invoke";
    v13 = 2082;
    v14 = "CWFWiFiUserAgent.m";
    v15 = 1024;
    v16 = 1114;
    LODWORD(v10) = 28;
    v9 = &v11;
    _os_log_send_and_compose_impl();
  }

  v5 = [*(a1 + 32) presentAskToShareProxCardCompletionHandler];

  if (v5)
  {
    v6 = [*(a1 + 32) presentAskToShareProxCardCompletionHandler];
    v6[2](v6, 0, 0, 0);
  }

  [*(a1 + 32) setPresentAskToShareProxCardCompletionHandler:{0, v9, v10}];
  result = [*(a1 + 32) setLaunchAngelConnection:0];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1E0D3B670(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = CWFGetOSLog();
  if (v2)
  {
    v3 = CWFGetOSLog();
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v12 = 136446722;
    v13 = "[CWFWiFiUserAgent __launchWiFiNetworkSharingAskToShareProxCardForAccessoryID:accessoryName:appBundleID:completion:]_block_invoke";
    v14 = 2082;
    v15 = "CWFWiFiUserAgent.m";
    v16 = 1024;
    v17 = 1122;
    LODWORD(v11) = 28;
    v10 = &v12;
    _os_log_send_and_compose_impl();
  }

  v5 = [*(a1 + 32) launchAngelConnection];
  [v5 invalidate];

  v6 = [*(a1 + 32) presentAskToShareProxCardCompletionHandler];

  if (v6)
  {
    v7 = [*(a1 + 32) presentAskToShareProxCardCompletionHandler];
    v7[2](v7, 0, 0, 0);
  }

  [*(a1 + 32) setPresentAskToShareProxCardCompletionHandler:{0, v10, v11}];
  result = [*(a1 + 32) setLaunchAngelConnection:0];
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E0D3BC90(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v9 + 32));
  objc_destroyWeak((v8 + 32));
  objc_destroyWeak((v7 + 32));
  objc_destroyWeak((v6 + 32));
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v10 - 120));
  objc_destroyWeak((v10 - 112));
  _Unwind_Resume(a1);
}

void sub_1E0D3BD88(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = CWFGetOSLog();
  if (v8)
  {
    v9 = CWFGetOSLog();
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138543362;
    v21 = v5;
    _os_log_send_and_compose_impl();
  }

  v11 = WeakRetained[5];
  v12 = qos_class_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0D3BF50;
  block[3] = &unk_1E86E6CA8;
  block[4] = WeakRetained;
  v18 = v5;
  v19 = v6;
  v13 = v6;
  v14 = v5;
  v15 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v12, 0, block);
  dispatch_async(v11, v15);

  v16 = *MEMORY[0x1E69E9840];
}

void sub_1E0D3BF50(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = a1[5];
  v4 = *(a1[4] + 48);
  v12 = 0;
  [v4 rememberCloudNetwork:v3 error:&v12];
  v5 = v12;
  v6 = a1[6];
  if (v6)
  {
    (*(v6 + 16))(v6, v5);
  }

  v7 = CWFGetOSLog();
  if (v7)
  {
    v8 = CWFGetOSLog();
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = a1[5];
    v13 = 138543618;
    v14 = v10;
    v15 = 2114;
    v16 = v5;
    _os_log_send_and_compose_impl();
  }

  objc_autoreleasePoolPop(v2);
  v11 = *MEMORY[0x1E69E9840];
}

void sub_1E0D3C0A8(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = CWFGetOSLog();
  if (v8)
  {
    v9 = CWFGetOSLog();
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138543362;
    v21 = v5;
    _os_log_send_and_compose_impl();
  }

  v11 = WeakRetained[5];
  v12 = qos_class_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0D3C270;
  block[3] = &unk_1E86E6CA8;
  block[4] = WeakRetained;
  v18 = v5;
  v19 = v6;
  v13 = v6;
  v14 = v5;
  v15 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v12, 0, block);
  dispatch_async(v11, v15);

  v16 = *MEMORY[0x1E69E9840];
}

void sub_1E0D3C270(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = a1[5];
  v4 = *(a1[4] + 48);
  v12 = 0;
  [v4 forgetCloudNetwork:v3 error:&v12];
  v5 = v12;
  v6 = a1[6];
  if (v6)
  {
    (*(v6 + 16))(v6, v5);
  }

  v7 = CWFGetOSLog();
  if (v7)
  {
    v8 = CWFGetOSLog();
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = a1[5];
    v13 = 138543618;
    v14 = v10;
    v15 = 2114;
    v16 = v5;
    _os_log_send_and_compose_impl();
  }

  objc_autoreleasePoolPop(v2);
  v11 = *MEMORY[0x1E69E9840];
}

void sub_1E0D3C3C8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = CWFGetOSLog();
  if (v5)
  {
    v6 = CWFGetOSLog();
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 0;
    _os_log_send_and_compose_impl();
  }

  v8 = WeakRetained[5];
  v9 = qos_class_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0D3C52C;
  block[3] = &unk_1E86E64C0;
  block[4] = WeakRetained;
  v13 = v3;
  v10 = v3;
  v11 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v9, 0, block);
  dispatch_async(v8, v11);
}

void sub_1E0D3C52C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(*(a1 + 32) + 48) cloudNetworks];
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, 0, v3);
  }

  v5 = CWFGetOSLog();
  if (v5)
  {
    v6 = CWFGetOSLog();
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    _os_log_send_and_compose_impl();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0D3C62C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = CWFGetOSLog();
  if (v8)
  {
    v9 = CWFGetOSLog();
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 0;
    _os_log_send_and_compose_impl();
  }

  v11 = WeakRetained[5];
  v12 = qos_class_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0D3C7BC;
  block[3] = &unk_1E86E6CA8;
  block[4] = WeakRetained;
  v17 = v5;
  v18 = v6;
  v13 = v6;
  v14 = v5;
  v15 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v12, 0, block);
  dispatch_async(v11, v15);
}

void sub_1E0D3C7BC(uint64_t a1)
{
  context = objc_autoreleasePoolPush();
  v2 = [*(*(a1 + 32) + 48) cloudKVS];
  v3 = [*(a1 + 40) URLByAppendingPathComponent:@"com.apple.wifi.syncable-networks.plist"];
  v4 = [v3 path];

  v5 = [MEMORY[0x1E696AC08] defaultManager];
  [v5 removeItemAtPath:v4 error:0];

  v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:v4];
  [v2 writeToURL:v6 error:0];

  v7 = [*(*(a1 + 32) + 64) dictionaryRepresentation];
  v8 = [*(a1 + 40) URLByAppendingPathComponent:@"com.apple.wifi.removed-networks.plist"];
  v9 = [v8 path];

  v10 = [MEMORY[0x1E696AC08] defaultManager];
  [v10 removeItemAtPath:v9 error:0];

  v11 = [MEMORY[0x1E695DFF8] fileURLWithPath:v9];
  [v7 writeToURL:v11 error:0];

  v12 = [*(*(a1 + 32) + 72) dictionaryRepresentation];
  v13 = [*(a1 + 40) URLByAppendingPathComponent:@"com.apple.wifi.nearby-recommended-networks.plist"];
  v14 = [v13 path];

  v15 = [MEMORY[0x1E696AC08] defaultManager];
  [v15 removeItemAtPath:v14 error:0];

  v16 = [MEMORY[0x1E695DFF8] fileURLWithPath:v14];
  [v12 writeToURL:v16 error:0];

  v17 = *(a1 + 48);
  if (v17)
  {
    (*(v17 + 16))(v17, 0);
  }

  v18 = CWFGetOSLog();
  if (v18)
  {
    v19 = CWFGetOSLog();
  }

  else
  {
    v19 = MEMORY[0x1E69E9C10];
    v20 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    _os_log_send_and_compose_impl();
  }

  objc_autoreleasePoolPop(context);
}

void sub_1E0D3CA70(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = CWFGetOSLog();
  if (v5)
  {
    v6 = CWFGetOSLog();
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    _os_log_send_and_compose_impl();
  }

  if (v3)
  {
    v8 = [WeakRetained nearbyRecommendedNetworks];
    v3[2](v3, 0, v8);
  }

  v9 = CWFGetOSLog();
  if (v9)
  {
    v10 = CWFGetOSLog();
  }

  else
  {
    v10 = MEMORY[0x1E69E9C10];
    v11 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    _os_log_send_and_compose_impl();
  }
}

void sub_1E0D3CBF4(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = CWFGetOSLog();
  if (v6)
  {
    v7 = CWFGetOSLog();
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 0;
    _os_log_send_and_compose_impl();
  }

  v9 = [v5 SSID];

  v15 = 0;
  v10 = sub_1E0BEFFE8(v9, &v15);
  v11 = v15;

  if (v4)
  {
    v4[2](v4, v11, v10);
  }

  v12 = CWFGetOSLog();
  if (v12)
  {
    v13 = CWFGetOSLog();
  }

  else
  {
    v13 = MEMORY[0x1E69E9C10];
    v14 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    _os_log_send_and_compose_impl();
  }
}

void sub_1E0D3CDA8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = CWFGetOSLog();
  if (v11)
  {
    v12 = CWFGetOSLog();
  }

  else
  {
    v12 = MEMORY[0x1E69E9C10];
    v13 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v29 = 0;
    _os_log_send_and_compose_impl();
  }

  v14 = [v7 SSID];
  v28 = 0;
  sub_1E0BF0324(v14, v8, &v28);
  v15 = v28;

  if (v9)
  {
    v9[2](v9, v15);
  }

  v16 = CWFGetOSLog();
  if (v16)
  {
    v17 = CWFGetOSLog();
  }

  else
  {
    v17 = MEMORY[0x1E69E9C10];
    v18 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v29 = 0;
    _os_log_send_and_compose_impl();
  }

  v19 = WeakRetained[5];
  v20 = qos_class_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0D3D020;
  block[3] = &unk_1E86E6060;
  v25 = v7;
  v26 = WeakRetained;
  v27 = v8;
  v21 = v8;
  v22 = v7;
  v23 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v20, 0, block);
  dispatch_async(v19, v23);
}

void sub_1E0D3D020(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) identifier];
  v4 = [*(*(a1 + 40) + 56) nearbySyncNetwork];
  v5 = [v4 knownNetworkProfile];
  v6 = [v5 identifier];
  v7 = v6;
  if (v3 == v6)
  {

    goto LABEL_7;
  }

  v8 = [*(a1 + 32) identifier];
  if (!v8)
  {
LABEL_9:

    goto LABEL_10;
  }

  v9 = v8;
  v10 = [*(*(a1 + 40) + 56) nearbySyncNetwork];
  v11 = [v10 knownNetworkProfile];
  v12 = [v11 identifier];
  if (!v12)
  {

    goto LABEL_9;
  }

  v20 = v12;
  [*(a1 + 32) identifier];
  v13 = v18 = v9;
  [*(*(a1 + 40) + 56) nearbySyncNetwork];
  v14 = v19 = v10;
  [v14 knownNetworkProfile];
  v15 = v22 = v2;
  [v15 identifier];
  v16 = v17 = v11;
  v21 = [v13 isEqual:v16];

  v2 = v22;
  if (v21)
  {
LABEL_7:
    v3 = [*(*(a1 + 40) + 56) nearbySyncNetwork];
    [v3 setCaptivePortalCredentials:*(a1 + 48)];
    [*(*(a1 + 40) + 56) setNearbySyncNetwork:v3];
LABEL_10:
  }

  [*(a1 + 40) __purgeExpiredCaptiveNetworkCredentials];

  objc_autoreleasePoolPop(v2);
}

void sub_1E0D3D224(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11 = a6;
  v12 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v14 = CWFGetOSLog();
  if (v14)
  {
    v15 = CWFGetOSLog();
  }

  else
  {
    v15 = MEMORY[0x1E69E9C10];
    v16 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 0;
    _os_log_send_and_compose_impl();
  }

  v17 = WeakRetained[7];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_1E0D3D3A0;
  v19[3] = &unk_1E86E7B28;
  v20 = v11;
  v18 = v11;
  [v17 nearbyConfirmBrokenBackhaulUsingTimeout:a3 count:a4 network:v12 minimumCacheTimestamp:a5 completion:v19];
}

void sub_1E0D3D3A0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v5, a3);
  }

  v7 = CWFGetOSLog();
  if (v7)
  {
    v8 = CWFGetOSLog();
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    _os_log_send_and_compose_impl();
  }
}

void sub_1E0D3D480(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = [v4 matchingKnownNetworkProfile];
  v7 = [v6 supportsPersonalHotspotFallbackUponBrokenBackhaul];

  if (v7)
  {
    v8 = [v4 networkName];
    v9 = CWFShouldPresentPersonalHotspotNotificationForBrokenBackhaulNetworkName(v8);

    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v10 = CWFGetOSLog();
  if (v10)
  {
    v11 = CWFGetOSLog();
  }

  else
  {
    v11 = MEMORY[0x1E69E9C10];
    v12 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    _os_log_send_and_compose_impl();
  }

  v9 = 0;
  if (v5)
  {
LABEL_10:
    v5[2](v5, 0, v9);
  }

LABEL_11:

  v13 = *MEMORY[0x1E69E9840];
}

void sub_1E0D3D5E8(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a5;
  v12 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v14 = CWFGetOSLog();
  if (v14)
  {
    v15 = CWFGetOSLog();
  }

  else
  {
    v15 = MEMORY[0x1E69E9C10];
    v16 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    _os_log_send_and_compose_impl();
  }

  [WeakRetained __showWiFiNetworkSharingAskToShareNotificationForClientID:v9 network:v10 accessoryDisplayName:v12 completion:v11];
  v17 = *MEMORY[0x1E69E9840];
}

void sub_1E0D3D754(uint64_t a1, void *a2, void *a3, void *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = CWFGetOSLog();
  if (v11)
  {
    v12 = CWFGetOSLog();
  }

  else
  {
    v12 = MEMORY[0x1E69E9C10];
    v13 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138543362;
    v21 = v7;
    _os_log_send_and_compose_impl();
  }

  v14 = [v7 accessoryID];
  v15 = [v7 bundleID];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_1E0D3D91C;
  v18[3] = &unk_1E86E82E0;
  v19 = v8;
  v16 = v8;
  [WeakRetained __launchWiFiNetworkSharingAskToShareProxCardForAccessoryID:v14 accessoryName:v9 appBundleID:v15 completion:v18];

  v17 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1E0D3D91C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1E0D3D934(uint64_t a1, void *a2, void *a3, void *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = CWFGetOSLog();
  if (v11)
  {
    v12 = CWFGetOSLog();
  }

  else
  {
    v12 = MEMORY[0x1E69E9C10];
    v13 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138543362;
    v21 = v7;
    _os_log_send_and_compose_impl();
  }

  v14 = [v7 accessoryID];
  v15 = [v7 bundleID];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_1E0D3DAFC;
  v18[3] = &unk_1E86E8268;
  v19 = v8;
  v16 = v8;
  [WeakRetained __launchWiFiNetworkSharingAuthorizationProxCardForAccessoryID:v14 accessoryName:v9 appBundleID:v15 completion:v18];

  v17 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1E0D3DAFC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1E0D3DB14(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 48) activate];
  [*(*(a1 + 32) + 56) activate];
  [*(*(a1 + 32) + 72) activate];
  [*(*(a1 + 32) + 64) activate];
  [*(a1 + 32) __updateNearbyRecommendedNetworks];
  [*(a1 + 32) startMonitoringEventType:30 error:0];
  [*(a1 + 32) startMonitoringEventType:13 error:0];
  [*(a1 + 32) startMonitoringEventType:6 error:0];
  [*(a1 + 32) startMonitoringEventType:3 error:0];
  v3 = objc_alloc_init(CWFNearbySyncNetwork);
  v4 = [*(a1 + 32) currentKnownNetworkProfile];
  [(CWFNearbySyncNetwork *)v3 setKnownNetworkProfile:v4];

  v5 = [*(a1 + 32) channel];
  [(CWFNearbySyncNetwork *)v3 setChannel:v5];

  v6 = *(a1 + 32);
  v7 = [(CWFNearbySyncNetwork *)v3 knownNetworkProfile];
  v8 = [v6 passwordForKnownNetworkProfile:v7 error:0];
  [(CWFNearbySyncNetwork *)v3 setPassword:v8];

  v9 = *(a1 + 32);
  v10 = [(CWFNearbySyncNetwork *)v3 knownNetworkProfile];
  v11 = [v9 captivePortalCredentialsForKnownNetworkProfile:v10 error:0];
  [(CWFNearbySyncNetwork *)v3 setCaptivePortalCredentials:v11];

  [*(*(a1 + 32) + 56) setNearbySyncNetwork:v3];
  [*(a1 + 32) __purgeExpiredCaptiveNetworkCredentials];

  objc_autoreleasePoolPop(v2);
}

void sub_1E0D3E9C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0D3E9E8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = a2;
  v6 = [*(a1 + 32) presentAskToShareUserNotificationCompletionHandler];

  if (v6)
  {
    v7 = [*(a1 + 32) presentAskToShareUserNotificationCompletionHandler];
    (v7)[2](v7, v8, a4);
  }

  [*(a1 + 32) setPresentAskToShareUserNotificationCompletionHandler:0];
  [*(a1 + 32) setAskToShareUserNotificationRequest:0];
}

Class sub_1E0D3ECB4(uint64_t a1)
{
  sub_1E0D3ED08();
  result = objc_getClass("UNUserNotificationCenter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ECE869F8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1E0D3ED08()
{
  v2 = *MEMORY[0x1E69E9840];
  if (!qword_1ECE86A00)
  {
    qword_1ECE86A00 = _sl_dlopen();
  }

  result = qword_1ECE86A00;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1E0D3EDD8(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1ECE86A00 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class sub_1E0D3EE4C(uint64_t a1)
{
  sub_1E0D3ED08();
  result = objc_getClass("UNMutableNotificationContent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ECE86A08 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1E0D3EEA0(uint64_t a1)
{
  sub_1E0D3ED08();
  result = objc_getClass("UNNotificationSound");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ECE86A10 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1E0D3EEF4(uint64_t a1)
{
  sub_1E0D3ED08();
  result = objc_getClass("UNNotificationIcon");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ECE86A18 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1E0D3EF48(uint64_t a1)
{
  sub_1E0D3ED08();
  result = objc_getClass("UNNotificationRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ECE86A20 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1E0D3EF9C(uint64_t a1)
{
  v2 = sub_1E0D3EFEC();
  result = dlsym(v2, "UNNotificationSilenceActionIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ECE86A28 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1E0D3EFEC()
{
  v0 = sub_1E0D3ED08();
  if (v0)
  {
    return v0;
  }

  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *UserNotificationsLibrary(void)"];
  [v1 handleFailureInFunction:v3 file:@"CWFWiFiUserAgent.m" lineNumber:60 description:{@"%s", 0}];

  __break(1u);
  free(v4);
  return v1;
}

void *sub_1E0D3F09C(uint64_t a1)
{
  v2 = sub_1E0D3EFEC();
  result = dlsym(v2, "UNNotificationDismissActionIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ECE86A30 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1E0D3F0EC(uint64_t a1)
{
  v2 = sub_1E0D3EFEC();
  result = dlsym(v2, "UNNotificationDefaultActionIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ECE86A38 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1E0D3F190()
{
  qword_1ED7E3A40 = objc_alloc_init(CWFDiagnosticReporter);

  return MEMORY[0x1EEE66BB8]();
}

void sub_1E0D3F600(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = 136315906;
    v8 = "[CWFDiagnosticReporter submitWiFiDiagnosticReportType:reason:subtypeContext:]_block_invoke";
    v9 = 2112;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = a2;
    _os_log_impl(&dword_1E0BBF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s: typeString: %@ reasonString: %@ ABC snapshot response: %@", &v7, 0x2Au);
  }

  v6 = *MEMORY[0x1E69E9840];
}

Class sub_1E0D3FAF0(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (!qword_1ED7E3A58)
  {
    qword_1ED7E3A58 = _sl_dlopen();
  }

  result = objc_getClass("SDRDiagnosticReporter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED7E3A50 = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1E0D3FBF4(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1ED7E3A58 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

CWFChannel *sub_1E0D4111C(void *a1)
{
  v2 = [a1 objectForKeyedSubscript:@"CHANNEL"];
  v3 = [a1 objectForKeyedSubscript:@"CHANNEL_FLAGS"];
  v4 = v3;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = objc_alloc_init(CWFChannel);
    -[CWFChannel setChannel:](v6, "setChannel:", [v2 unsignedIntegerValue]);
    -[CWFChannel setFlags:](v6, "setFlags:", [v4 intValue]);
  }

  return v6;
}

uint64_t sub_1E0D411D8(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"AGE"];
  v2 = [v1 unsignedIntegerValue];

  return v2;
}

uint64_t sub_1E0D41218(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"WPA_IE"];
  v2 = [v1 objectForKeyedSubscript:@"IE_KEY_WPA_MCIPHER"];
  v3 = [v2 unsignedLongLongValue];

  return v3;
}

uint64_t sub_1E0D41278(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"11U_INTERWORKING_IE"];
  v2 = [v1 objectForKeyedSubscript:@"INTERWORKING_ACCESS_NETWORK_TYPE"];
  v3 = [v2 unsignedIntValue];

  return v3;
}

uint64_t sub_1E0D412D8(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"11U_INTERWORKING_IE"];
  v2 = [v1 objectForKeyedSubscript:@"INTERWORKING_ACCESS_INTERNET"];
  v3 = [v2 BOOLValue];

  return v3;
}

uint64_t sub_1E0D41338(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"11U_INTERWORKING_IE"];
  v2 = [v1 objectForKeyedSubscript:@"INTERWORKING_ACCESS_ASRA"];
  v3 = [v2 BOOLValue];

  return v3;
}

uint64_t sub_1E0D41398(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"11U_INTERWORKING_IE"];
  v2 = [v1 objectForKeyedSubscript:@"INTERWORKING_ACCESS_ESR"];
  v3 = [v2 BOOLValue];

  return v3;
}

uint64_t sub_1E0D413F8(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"11U_INTERWORKING_IE"];
  v2 = [v1 objectForKeyedSubscript:@"INTERWORKING_ACCESS_UESA"];
  v3 = [v2 BOOLValue];

  return v3;
}

uint64_t sub_1E0D41458(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"11U_INTERWORKING_IE"];
  v2 = [v1 objectForKeyedSubscript:@"INTERWORKING_ACCESS_VENTURE_GRP"];
  v3 = [v2 integerValue];

  return v3;
}

uint64_t sub_1E0D414B8(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"11U_INTERWORKING_IE"];
  v2 = [v1 objectForKeyedSubscript:@"INTERWORKING_ACCESS_VENTURE_TYPE"];
  v3 = [v2 integerValue];

  return v3;
}

id sub_1E0D41518(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"11U_INTERWORKING_IE"];
  v2 = [v1 objectForKeyedSubscript:@"INTERWORKING_ACCESS_HESSID"];
  v3 = CWFCorrectEthernetAddressString(v2);

  return v3;
}

uint64_t sub_1E0D4158C(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"APPLE_DEVICE_IE"];
  v2 = [v1 objectForKeyedSubscript:@"APPLE_DEVICE_IE_FEATURE_UNCONFIGURED"];
  v3 = [v2 BOOLValue];

  return v3;
}

uint64_t sub_1E0D415EC(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"APPLE_DEVICE_IE"];
  v2 = [v1 objectForKeyedSubscript:@"APPLE_DEVICE_IE_FEATURE_PROVIDES_INTERNET_ACCESS"];
  v3 = [v2 BOOLValue];

  return v3;
}

uint64_t sub_1E0D4164C(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"APPLE_DEVICE_IE"];
  v2 = [v1 objectForKeyedSubscript:@"APPLE_DEVICE_IE_FEATURE_SUPPORTS_WPS"];
  v3 = [v2 BOOLValue];

  return v3;
}

uint64_t sub_1E0D416AC(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"APPLE_DEVICE_IE"];
  v2 = [v1 objectForKeyedSubscript:@"APPLE_DEVICE_IE_FEATURE_SUPPORTS_IAP_OVER_WIFI"];
  v3 = [v2 BOOLValue];

  return v3;
}

uint64_t sub_1E0D4170C(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"APPLE_DEVICE_IE"];
  v2 = [v1 objectForKeyedSubscript:@"APPLE_DEVICE_IE_FEATURE_SUPPORTS_24GHZ_WIFI_NETWORKS"];
  v3 = [v2 BOOLValue];

  return v3;
}

uint64_t sub_1E0D4176C(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"APPLE_DEVICE_IE"];
  v2 = [v1 objectForKeyedSubscript:@"APPLE_DEVICE_IE_FEATURE_SUPPORTS_5GHZ_WIFI_NETWORKS"];
  v3 = [v2 BOOLValue];

  return v3;
}

uint64_t sub_1E0D417CC(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"APPLE_DEVICE_IE"];
  v2 = [v1 objectForKeyedSubscript:@"APPLE_DEVICE_IE_FEATURE_SUPPORTS_MFI_CONFIG_V1"];
  v3 = [v2 BOOLValue];

  return v3;
}

uint64_t sub_1E0D4182C(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"APPLE_DEVICE_IE"];
  v2 = [v1 objectForKeyedSubscript:@"APPLE_DEVICE_IE_FEATURE_SUPPORTS_MFI_HARDWARE_AUTH"];
  v3 = [v2 BOOLValue];

  return v3;
}

uint64_t sub_1E0D4188C(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"APPLE_DEVICE_IE"];
  v2 = [v1 objectForKeyedSubscript:@"APPLE_DEVICE_IE_FEATURE_SUPPORTS_SOFTWARE_TOKEN_AUTH"];
  v3 = [v2 BOOLValue];

  return v3;
}

uint64_t sub_1E0D418EC(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"APPLE_DEVICE_IE"];
  v2 = [v1 objectForKeyedSubscript:@"APPLE_DEVICE_IE_FEATURE_SUPPORTS_SOFTWARE_CERT_AUTH"];
  v3 = [v2 BOOLValue];

  return v3;
}

uint64_t sub_1E0D4194C(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"APPLE_DEVICE_IE"];
  v2 = [v1 objectForKeyedSubscript:@"APPLE_DEVICE_IE_FEATURE_SUPPORTS_HOMEKIT"];
  v3 = [v2 BOOLValue];

  return v3;
}

uint64_t sub_1E0D419AC(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"APPLE_DEVICE_IE"];
  v2 = [v1 objectForKeyedSubscript:@"APPLE_DEVICE_IE_FEATURE_SUPPORTS_HOMEKIT_V2"];
  v3 = [v2 BOOLValue];

  return v3;
}

uint64_t sub_1E0D41A0C(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"APPLE_DEVICE_IE"];
  v2 = [v1 objectForKeyedSubscript:@"APPLE_DEVICE_IE_FEATURE_SUPPORTS_AIRPRINT"];
  v3 = [v2 BOOLValue];

  return v3;
}

uint64_t sub_1E0D41A6C(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"APPLE_DEVICE_IE"];
  v2 = [v1 objectForKeyedSubscript:@"APPLE_DEVICE_IE_FEATURE_SUPPORTS_WOW"];
  v3 = [v2 BOOLValue];

  return v3;
}

uint64_t sub_1E0D41ACC(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"APPLE_DEVICE_IE"];
  v2 = [v1 objectForKeyedSubscript:@"APPLE_DEVICE_IE_FEATURE_SUPPORTS_CARPLAY"];
  v3 = [v2 BOOLValue];

  return v3;
}

uint64_t sub_1E0D41B2C(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"APPLE_DEVICE_IE"];
  v2 = [v1 objectForKeyedSubscript:@"APPLE_DEVICE_IE_FEATURE_SUPPORTS_SECURE_WAC"];
  v3 = [v2 BOOLValue];

  return v3;
}

uint64_t sub_1E0D41B8C(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"APPLE_DEVICE_IE"];
  v2 = [v1 objectForKeyedSubscript:@"APPLE_DEVICE_IE_FEATURE_SUPPORTS_AIRPLAY"];
  v3 = [v2 BOOLValue];

  return v3;
}

uint64_t sub_1E0D41BEC(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"APPLE_DEVICE_IE"];
  v2 = [v1 objectForKeyedSubscript:@"APPLE_DEVICE_IE_FEATURE_SUPPORTS_BUFFERED_AIRPLAY"];
  v3 = [v2 BOOLValue];

  return v3;
}

id sub_1E0D41C4C(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"APPLE_DEVICE_IE"];
  v2 = [v1 objectForKeyedSubscript:@"APPLE_DEVICE_IE_FRIENDLY_NAME"];

  return v2;
}

id sub_1E0D41CA8(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"APPLE_DEVICE_IE"];
  v2 = [v1 objectForKeyedSubscript:@"APPLE_DEVICE_IE_MANUFACTURER_NAME"];

  return v2;
}

id sub_1E0D41D04(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"APPLE_DEVICE_IE"];
  v2 = [v1 objectForKeyedSubscript:@"APPLE_DEVICE_IE_MODEL_NAME"];

  return v2;
}

id sub_1E0D41D60(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"APPLE_DEVICE_IE"];
  v2 = [v1 objectForKeyedSubscript:@"APPLE_DEVICE_DISPLAY_NAME"];

  return v2;
}

id sub_1E0D41DBC(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"APPLE_DEVICE_IE"];
  v2 = [v1 objectForKeyedSubscript:@"APPLE_DEVICE_IE_PRIMARY_MAC"];
  v3 = CWFEthernetAddressStringFromData(v2);

  return v3;
}

id sub_1E0D41E30(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"APPLE_DEVICE_IE"];
  v2 = [v1 objectForKeyedSubscript:@"APPLE_DEVICE_IE_BLUETOOTH_MAC"];
  v3 = CWFEthernetAddressStringFromData(v2);

  return v3;
}

id sub_1E0D41EA4(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"APPLE_DEVICE_IE"];
  v2 = [v1 objectForKeyedSubscript:@"APPLE_DEVICE_IE_DEVICE_ID"];

  return v2;
}

id sub_1E0D41F00(void *a1)
{
  v1 = [a1 ANQPResponse];
  v2 = [v1 objectForKeyedSubscript:@"ANQP_CELL_NETWORK_INFO"];

  return v2;
}

id sub_1E0D41F54(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = [a1 ANQPResponse];
  v4 = [v3 objectForKeyedSubscript:@"ANQP_NAI_REALM_LIST"];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v14 + 1) + 8 * i) objectForKeyedSubscript:{@"ANQP_NAI_REALM_NAME", v14}];
        if (v10)
        {
          [v2 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  if ([v5 count])
  {
    v11 = [v2 copy];
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

id sub_1E0D420E8(void *a1)
{
  v1 = [a1 ANQPResponse];
  v2 = [v1 objectForKeyedSubscript:@"ANQP_ROAMING_CONSORTIUM_OI_LIST"];

  return v2;
}

id sub_1E0D4213C(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = [a1 ANQPResponse];
  v4 = [v3 objectForKeyedSubscript:@"ANQP_OPERATOR_NAMES_LIST"];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v14 + 1) + 8 * i) objectForKeyedSubscript:{@"ANQP_OPERATOR_NAME", v14}];
        if (v10)
        {
          [v2 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  if ([v5 count])
  {
    v11 = [v2 copy];
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

id sub_1E0D422D0(void *a1)
{
  v1 = [a1 ANQPResponse];
  v2 = [v1 objectForKeyedSubscript:@"ANQP_DOMAIN_NAME_LIST"];

  return v2;
}

id sub_1E0D42324(void *a1)
{
  v1 = [a1 ANQPResponse];
  v2 = [v1 objectForKeyedSubscript:@"ANQP_VENUE_URL"];

  return v2;
}

BOOL sub_1E0D42378(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"MBO_OCE_IE"];
  v2 = v1 != 0;

  return v2;
}

uint64_t sub_1E0D423B4(void *a1)
{
  v1 = [a1 networkFlags];
  v2 = [v1 containsObject:&unk_1F5BBD390];

  return v2;
}

BOOL sub_1E0D423F4(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"FILS_DISC_INFO"];
  v2 = [v1 objectForKeyedSubscript:@"FD_CAP_ESS"];
  v3 = v2 != 0;

  return v3;
}

uint64_t sub_1E0D42448(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"FILS_DISC_INFO"];
  v2 = [v1 objectForKeyedSubscript:@"FD_CAP_ESS"];

  if (v2)
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_1E0D424B0(void *a1)
{
  v2 = [a1 objectForKeyedSubscript:@"FILS_DISC_INFO"];
  v3 = [v2 objectForKeyedSubscript:@"FD_CAP_PHY_INDEX"];
  v4 = [v3 unsignedCharValue];

  v5 = [a1 objectForKeyedSubscript:@"CHANNEL_FLAGS"];
  v6 = [v5 unsignedIntValue];

  if (v4 == 5)
  {
    v7 = 512;
  }

  else
  {
    v7 = 0;
  }

  if (v4 == 4)
  {
    v8 = 256;
  }

  else
  {
    v8 = v7;
  }

  if (v4 == 3)
  {
    v9 = 128;
  }

  else
  {
    v9 = v8;
  }

  if ((v6 & 8) != 0)
  {
    v10 = 8;
  }

  else
  {
    v10 = 2;
  }

  if (v4 == 2)
  {
    v11 = 16;
  }

  else
  {
    v11 = 0;
  }

  if (v4 != 1)
  {
    v10 = v11;
  }

  if (v4)
  {
    v12 = v10;
  }

  else
  {
    v12 = 4;
  }

  if (v4 <= 2)
  {
    return v12;
  }

  else
  {
    return v9;
  }
}

id sub_1E0D42590(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"FILS_DISC_INFO"];
  v2 = [v1 objectForKeyedSubscript:@"SSID"];

  return v2;
}

uint64_t sub_1E0D425EC(void *a1)
{
  v2 = [a1 FILSSSID];
  if (v2)
  {
    v3 = 0;
    Apple80211CalculateShortSSIDCopy();
  }

  else
  {
    v4 = [a1 objectForKeyedSubscript:@"FILS_DISC_INFO"];
    v5 = [v4 objectForKeyedSubscript:@"SHORT_SSID"];
    v3 = [v5 unsignedIntValue];
  }

  return v3;
}

uint64_t sub_1E0D426A4(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"FILS_DISC_INFO"];
  v2 = [v1 objectForKeyedSubscript:@"BEACON_INTERVAL"];
  v3 = [v2 unsignedShortValue];

  return v3;
}

CWFChannel *sub_1E0D42704(void *a1)
{
  v2 = [a1 objectForKeyedSubscript:@"FILS_DISC_INFO"];
  v3 = [v2 objectForKeyedSubscript:@"PRIMARY_CHANNEL_FLAGS"];

  v4 = [a1 objectForKeyedSubscript:@"FILS_DISC_INFO"];
  v5 = [v4 objectForKeyedSubscript:@"PRIMARY_CHANNEL"];

  v6 = 0;
  if (v3 && v5)
  {
    v6 = objc_alloc_init(CWFChannel);
    -[CWFChannel setChannel:](v6, "setChannel:", [v3 unsignedIntegerValue]);
    -[CWFChannel setFlags:](v6, "setFlags:", [v5 unsignedIntValue]);
  }

  return v6;
}

id sub_1E0D427E8(void *a1)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = [a1 objectForKeyedSubscript:@"FILS_DISC_INFO"];
  v3 = [v2 objectForKeyedSubscript:@"PRIMARY_CHANNEL_FLAGS"];

  v4 = [a1 objectForKeyedSubscript:@"FILS_DISC_INFO"];
  v5 = [v4 objectForKeyedSubscript:@"PRIMARY_CHANNEL"];

  v6 = 0;
  if (v3 && v5)
  {
    v9[0] = @"CHANNEL";
    v9[1] = @"CHANNEL_FLAGS";
    v10[0] = v3;
    v10[1] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

BOOL sub_1E0D42900(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"FILS_DISC_INFO"];
  v2 = [v1 objectForKeyedSubscript:@"INTERWORKING_ACCESS_NETWORK_TYPE"];
  v3 = v2 != 0;

  return v3;
}

uint64_t sub_1E0D42954(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"FILS_DISC_INFO"];
  v2 = [v1 objectForKeyedSubscript:@"INTERWORKING_ACCESS_NETWORK_TYPE"];
  v3 = [v2 unsignedIntValue];

  return v3;
}

uint64_t sub_1E0D429B4(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"FILS_DISC_INFO"];
  v2 = [v1 objectForKeyedSubscript:@"INTERWORKING_ACCESS_INTERNET"];
  v3 = [v2 BOOLValue];

  return v3;
}

uint64_t sub_1E0D42A14(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"FILS_DISC_INFO"];
  v2 = [v1 objectForKeyedSubscript:@"INTERWORKING_ACCESS_ASRA"];
  v3 = [v2 BOOLValue];

  return v3;
}

uint64_t sub_1E0D42A74(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"FILS_DISC_INFO"];
  v2 = [v1 objectForKeyedSubscript:@"INTERWORKING_ACCESS_ESR"];
  v3 = [v2 BOOLValue];

  return v3;
}

uint64_t sub_1E0D42AD4(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"FILS_DISC_INFO"];
  v2 = [v1 objectForKeyedSubscript:@"INTERWORKING_ACCESS_UESA"];
  v3 = [v2 BOOLValue];

  return v3;
}

uint64_t sub_1E0D42B34(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"PRIVATE_MAC_ADDRESS"];
  v2 = [v1 objectForKeyedSubscript:@"PRIVATE_MAC_ADDRESS_VALID"];
  v3 = [v2 BOOLValue];

  return v3;
}

uint64_t CWFMapDisassocReason(unint64_t a1)
{
  if (a1 > 0x11)
  {
    return 10;
  }

  else
  {
    return qword_1E0D81C40[a1];
  }
}

void sub_1E0D42BC4()
{
  v0 = qword_1ECE86A40;
  qword_1ECE86A40 = &unk_1F5BB9D90;
}

uint64_t CWFIsPayloadIdentifierTelemetryApproved(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (qword_1ECE86A48 != -1)
  {
    dispatch_once(&qword_1ECE86A48, &unk_1F5B89D70);
  }

  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = qword_1ECE86A40;
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([v1 isEqualToString:{*(*(&v8 + 1) + 8 * i), v8}])
        {
          v3 = 1;
          goto LABEL_13;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v6 = *MEMORY[0x1E69E9840];
  return v3;
}

Class sub_1E0D4408C(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (!qword_1ED7E3A68)
  {
    qword_1ED7E3A68 = _sl_dlopen();
  }

  result = objc_getClass("MCProfileConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED7E3A60 = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1E0D44190(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1ED7E3A68 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E0D48514(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![v5 intValue])
  {
    [*(a1 + 32) setObject:0 forKeyedSubscript:v6];
  }
}

void sub_1E0D5E020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1E0D5E7D4()
{
  v2 = *MEMORY[0x1E69E9840];
  if (!qword_1ECE81B28)
  {
    qword_1ECE81B28 = _sl_dlopen();
  }

  result = qword_1ECE81B28;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1E0D5E8A4(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1ECE81B28 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E0D5E918(void *a1)
{
  if (!sub_1E0D5E7D4())
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    a1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SharingLibrary(void)"];
    [v2 handleFailureInFunction:a1 file:@"CWFAutoJoinMetric.m" lineNumber:176 description:{@"%s", 0}];

    __break(1u);
    free(v3);
  }

  *(*(a1[4] + 8) + 24) = objc_getClass("SFRemoteHotspotDevice");
  if (*(*(a1[4] + 8) + 24))
  {
    qword_1ECE81B18 = *(*(a1[4] + 8) + 24);
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSFRemoteHotspotDeviceClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v5 file:@"CWFAutoJoinMetric.m" lineNumber:177 description:{@"Unable to find class %s", "SFRemoteHotspotDevice"}];

    __break(1u);
  }
}

uint64_t sub_1E0D5EB08(uint64_t a1)
{
  qword_1ED7E3A78 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

void sub_1E0D5EFCC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x1E695DFA8] set];
  if ([*(*(a1 + 32) + 56) count])
  {
    v4 = [*(*(a1 + 32) + 56) allObjects];
    [v3 addObjectsFromArray:v4];
  }

  if (![*(*(a1 + 32) + 56) count] && objc_msgSend(*(*(a1 + 32) + 40), "count"))
  {
    [v3 addObjectsFromArray:*(*(a1 + 32) + 40)];
  }

  v5 = +[CWFNetworkOfInterestManager testHomeNetworks];
  v6 = [v5 count];

  if (v6)
  {
    v7 = +[CWFNetworkOfInterestManager testHomeNetworks];
    [v3 addObjectsFromArray:v7];
  }

  v8 = [*(a1 + 32) homeNetworkDeterminationChangedHandler];

  if (v8)
  {
    v9 = [*(a1 + 32) homeNetworkDeterminationChangedHandler];
    v10 = [v3 allObjects];
    (v9)[2](v9, v10);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0D5F1A0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x1E695DFA8] set];
  if ([*(*(a1 + 32) + 48) count])
  {
    [v3 addObjectsFromArray:*(*(a1 + 32) + 48)];
  }

  v4 = [*(a1 + 32) workNetworkDeterminationChangedHandler];

  if (v4)
  {
    v5 = [*(a1 + 32) workNetworkDeterminationChangedHandler];
    v6 = [v3 allObjects];
    (v5)[2](v5, v6);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0D5F308(uint64_t a1)
{
  v54 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x1E695DF00] date];
  v4 = dispatch_group_create();
  v33 = [MEMORY[0x1E695DFA8] set];
  v5 = CWFGetOSLog();
  if (v5)
  {
    v6 = CWFGetOSLog();
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(*(a1 + 40) + 32) homes];
    v45 = 136446978;
    v46 = "[CWFNetworkOfInterestManager homeManagerDidUpdateHomes:]_block_invoke";
    v47 = 2082;
    v48 = "CWFNetworkOfInterestManager.m";
    v49 = 1024;
    *v50 = 236;
    *&v50[4] = 1024;
    *&v50[6] = [v8 count];
    _os_log_send_and_compose_impl();
  }

  v9 = [*(*(a1 + 40) + 32) homes];
  v10 = [v9 count];

  if (v10)
  {
    v11 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v12 = CWFGetOSLog();
    if (v12)
    {
      v13 = CWFGetOSLog();
    }

    else
    {
      v13 = MEMORY[0x1E69E9C10];
      v16 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v45 = 134219010;
      v46 = v11 / 0x3B9ACA00;
      v47 = 2048;
      v48 = v11 % 0x3B9ACA00 / 0x3E8;
      v49 = 2082;
      *v50 = "[CWFNetworkOfInterestManager homeManagerDidUpdateHomes:]_block_invoke";
      *&v50[8] = 2082;
      v51 = "CWFNetworkOfInterestManager.m";
      v52 = 1024;
      v53 = 240;
      _os_log_send_and_compose_impl();
    }

    v42 = 0u;
    v43 = 0u;
    v41 = 0u;
    v40 = 0u;
    v17 = [*(*(a1 + 40) + 32) homes];
    v18 = [v17 countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v41;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v41 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v40 + 1) + 8 * i);
          dispatch_group_enter(v4);
          v37[0] = MEMORY[0x1E69E9820];
          v37[1] = 3221225472;
          v37[2] = sub_1E0D5F920;
          v37[3] = &unk_1E86E9BF0;
          v37[4] = *(a1 + 40);
          v37[5] = v22;
          v38 = v33;
          v39 = v4;
          [v22 getPrimaryResidentNetworkInfoWithCompletion:v37];
        }

        v19 = [v17 countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v19);
    }

    v23 = *(a1 + 40);
    v24 = *(v23 + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0D5FD90;
    block[3] = &unk_1E86E6060;
    block[4] = v23;
    v35 = v33;
    v36 = v3;
    dispatch_group_notify(v4, v24, block);
  }

  else
  {
    if ([*(*(a1 + 40) + 56) count])
    {
      v14 = CWFGetOSLog();
      if (v14)
      {
        v15 = CWFGetOSLog();
      }

      else
      {
        v15 = MEMORY[0x1E69E9C10];
        v25 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v26 = [*(*(a1 + 40) + 56) count];
        v45 = 136446978;
        v46 = "[CWFNetworkOfInterestManager homeManagerDidUpdateHomes:]_block_invoke";
        v47 = 2082;
        v48 = "CWFNetworkOfInterestManager.m";
        v49 = 1024;
        *v50 = 296;
        *&v50[4] = 1024;
        *&v50[6] = v26;
        _os_log_send_and_compose_impl();
      }

      [*(*(a1 + 40) + 56) removeAllObjects];
      [*(a1 + 40) _homeNetworkDeterminationDidChange];
    }

    v27 = *(a1 + 40);
    v28 = *(v27 + 32);
    *(v27 + 32) = 0;
  }

  if (*(*(a1 + 40) + 72))
  {
    v29 = 3600000000000;
    if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
    {
      v29 = 60000000000;
    }

    v30 = *(*(a1 + 40) + 72);
    v31 = dispatch_walltime(0, v29);
    dispatch_source_set_timer(v30, v31, 0xFFFFFFFFFFFFFFFFLL, 0);
  }

  objc_autoreleasePoolPop(v2);
  v32 = *MEMORY[0x1E69E9840];
}

void sub_1E0D5F920(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = CWFGetOSLog();
    if (v7)
    {
      v8 = CWFGetOSLog();
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v13 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v20 = 136446978;
      v21 = "[CWFNetworkOfInterestManager homeManagerDidUpdateHomes:]_block_invoke";
      v22 = 2082;
      v23 = "CWFNetworkOfInterestManager.m";
      v24 = 1024;
      v25 = 265;
      v26 = 2112;
      v27 = v6;
      _os_log_send_and_compose_impl();
    }

    dispatch_group_leave(*(a1 + 56));
  }

  else
  {
    v9 = *(*(a1 + 32) + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0D5FB08;
    block[3] = &unk_1E86E7EA8;
    v10 = v5;
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v16 = v10;
    v17 = v11;
    v18 = v12;
    v19 = *(a1 + 56);
    dispatch_async(v9, block);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void sub_1E0D5FB08(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = CWFGetOSLog();
  if (v3)
  {
    v4 = CWFGetOSLog();
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v16 = *(a1 + 32);
    _os_log_send_and_compose_impl();
  }

  v6 = [*(a1 + 32) wiFiInfo];

  if (v6)
  {
    v7 = CWFGetOSLog();
    if (v7)
    {
      v8 = CWFGetOSLog();
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 40);
      v11 = [*(a1 + 32) wiFiInfo];
      v17 = [v11 SSID];
      _os_log_send_and_compose_impl();
    }

    v12 = *(a1 + 48);
    v13 = [*(a1 + 32) wiFiInfo];
    v14 = [v13 SSID];
    [v12 addObject:v14];
  }

  dispatch_group_leave(*(a1 + 56));
  objc_autoreleasePoolPop(v2);
  v15 = *MEMORY[0x1E69E9840];
}

void sub_1E0D5FD90(id *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *(a1[4] + 7);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v4 = a1[4];
    v5 = v4[7];
    v4[7] = v3;

    v2 = *(a1[4] + 7);
  }

  v6 = a1[5];
  if (v2 != v6)
  {
    if (v2)
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      if ([v2 isEqual:?])
      {
        goto LABEL_11;
      }

      v2 = *(a1[4] + 7);
    }

    [v2 removeAllObjects];
    v8 = *(a1[4] + 7);
    v9 = [a1[5] allObjects];
    [v8 addObjectsFromArray:v9];

    [a1[4] _homeNetworkDeterminationDidChange];
  }

LABEL_11:
  v10 = [a1[6] copy];
  v11 = a1[4];
  v12 = v11[8];
  v11[8] = v10;

  v13 = a1[4];
  v14 = v13[4];
  v13[4] = 0;

  clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v15 = CWFGetOSLog();
  if (v15)
  {
    v16 = CWFGetOSLog();
  }

  else
  {
    v16 = MEMORY[0x1E69E9C10];
    v17 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    _os_log_send_and_compose_impl();
  }

  v18 = *MEMORY[0x1E69E9840];
}

void sub_1E0D6051C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0D60608(void *a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  if (![*(a1[4] + 40) count] && !objc_msgSend(*(a1[4] + 56), "count"))
  {
    v3 = +[CWFNetworkOfInterestManager testHomeNetworks];
    v4 = [v3 count];

    if (!v4)
    {
      v18 = CWFGetOSLog();
      if (v18)
      {
        v9 = CWFGetOSLog();
      }

      else
      {
        v9 = MEMORY[0x1E69E9C10];
        v21 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v22 = a1[5];
        v28 = 136446978;
        v29 = "[CWFNetworkOfInterestManager homeTypeForNetworkName:]_block_invoke";
        v30 = 2082;
        v31 = "CWFNetworkOfInterestManager.m";
        v32 = 1024;
        v33 = 407;
        v34 = 2112;
        v35 = v22;
        _os_log_send_and_compose_impl();
      }

      goto LABEL_34;
    }
  }

  *(*(a1[6] + 8) + 24) = 2;
  if ([*(a1[4] + 56) count] && objc_msgSend(*(a1[4] + 56), "containsObject:", a1[5]))
  {
    v5 = CWFGetOSLog();
    if (v5)
    {
      v6 = CWFGetOSLog();
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v7 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[5];
      v28 = 136446978;
      v29 = "[CWFNetworkOfInterestManager homeTypeForNetworkName:]_block_invoke";
      v30 = 2082;
      v31 = "CWFNetworkOfInterestManager.m";
      v32 = 1024;
      v33 = 388;
      v34 = 2112;
      v35 = v8;
      LODWORD(v26) = 38;
      v24 = &v28;
      _os_log_send_and_compose_impl();
    }

    *(*(a1[6] + 8) + 24) = 1;
  }

  if (![*(a1[4] + 56) count] && objc_msgSend(*(a1[4] + 40), "count") && objc_msgSend(*(a1[4] + 40), "containsObject:", a1[5]))
  {
    v14 = CWFGetOSLog();
    if (v14)
    {
      v15 = CWFGetOSLog();
    }

    else
    {
      v15 = MEMORY[0x1E69E9C10];
      v19 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v20 = a1[5];
      v28 = 136446978;
      v29 = "[CWFNetworkOfInterestManager homeTypeForNetworkName:]_block_invoke";
      v30 = 2082;
      v31 = "CWFNetworkOfInterestManager.m";
      v32 = 1024;
      v33 = 395;
      v34 = 2112;
      v35 = v20;
      LODWORD(v27) = 38;
      v25 = &v28;
      _os_log_send_and_compose_impl();
    }

    *(*(a1[6] + 8) + 24) = 1;
  }

  v9 = [CWFNetworkOfInterestManager testHomeNetworks:v25];
  if (![v9 count])
  {
LABEL_34:

    goto LABEL_35;
  }

  v10 = +[CWFNetworkOfInterestManager testHomeNetworks];
  v11 = [v10 containsObject:a1[5]];

  if (v11)
  {
    v12 = CWFGetOSLog();
    if (v12)
    {
      v13 = CWFGetOSLog();
    }

    else
    {
      v13 = MEMORY[0x1E69E9C10];
      v16 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v17 = a1[5];
      v28 = 136446978;
      v29 = "[CWFNetworkOfInterestManager homeTypeForNetworkName:]_block_invoke";
      v30 = 2082;
      v31 = "CWFNetworkOfInterestManager.m";
      v32 = 1024;
      v33 = 401;
      v34 = 2112;
      v35 = v17;
      _os_log_send_and_compose_impl();
    }

    *(*(a1[6] + 8) + 24) = 1;
  }

LABEL_35:
  objc_autoreleasePoolPop(v2);
  v23 = *MEMORY[0x1E69E9840];
}

void sub_1E0D60B64(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  if ([*(*(a1 + 32) + 40) count] || objc_msgSend(*(*(a1 + 32) + 56), "count"))
  {
    v3 = CWFGetOSLog();
    if (v3)
    {
      v4 = CWFGetOSLog();
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
      v5 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_7;
    }
  }

  else
  {
    v7 = CWFGetOSLog();
    if (v7)
    {
      v4 = CWFGetOSLog();
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
      v8 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
LABEL_7:
      _os_log_send_and_compose_impl();
    }
  }

  objc_autoreleasePoolPop(v2);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E0D60E40(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  if ([*(a1[4] + 48) count])
  {
    *(*(a1[6] + 8) + 24) = 2;
    if ([*(a1[4] + 48) containsObject:a1[5]])
    {
      v3 = CWFGetOSLog();
      if (v3)
      {
        v4 = CWFGetOSLog();
      }

      else
      {
        v4 = MEMORY[0x1E69E9C10];
        v8 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v10 = a1[5];
        _os_log_send_and_compose_impl();
      }

      *(*(a1[6] + 8) + 24) = 1;
    }
  }

  else
  {
    v5 = CWFGetOSLog();
    if (v5)
    {
      v6 = CWFGetOSLog();
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v7 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      _os_log_send_and_compose_impl();
    }
  }

  objc_autoreleasePoolPop(v2);
  v9 = *MEMORY[0x1E69E9840];
}

void sub_1E0D610F0(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(*(a1 + 32) + 48) count];
  v4 = CWFGetOSLog();
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      v6 = CWFGetOSLog();
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v7 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
LABEL_11:
      _os_log_send_and_compose_impl();
    }
  }

  else
  {
    if (v4)
    {
      v6 = CWFGetOSLog();
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v8 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }
  }

  objc_autoreleasePoolPop(v2);
  v9 = *MEMORY[0x1E69E9840];
}

void sub_1E0D61374(uint64_t a1, void *a2, void *a3)
{
  v49 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = CWFGetOSLog();
    if (v7)
    {
      v8 = CWFGetOSLog();
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v19 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v38 = 136446978;
      v39 = "[CWFNetworkOfInterestManager didStartTrackingNOI:]_block_invoke";
      v40 = 2082;
      v41 = "CWFNetworkOfInterestManager.m";
      v42 = 1024;
      v43 = 507;
      v44 = 2112;
      v45 = v6;
      _os_log_send_and_compose_impl();
    }
  }

  else
  {
    v8 = [MEMORY[0x1E695DF90] dictionary];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v9 = [v5 allKeys];
    v10 = [v9 countByEnumeratingWithState:&v34 objects:v48 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v35;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v35 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v34 + 1) + 8 * i);
          v15 = [v5 objectForKeyedSubscript:v14];
          [v15 doubleValue];
          [v8 setObject:v15 forKeyedSubscript:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v34 objects:v48 count:16];
      }

      while (v11);
    }

    v16 = [v8 keysSortedByValueUsingComparator:&unk_1F5B89D90];
    v17 = CWFGetOSLog();
    if (v17)
    {
      v18 = CWFGetOSLog();
    }

    else
    {
      v18 = MEMORY[0x1E69E9C10];
      v20 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [*(a1 + 32) typePrettyPrint];
      v38 = 136447234;
      v39 = "[CWFNetworkOfInterestManager didStartTrackingNOI:]_block_invoke_2";
      v40 = 2082;
      v41 = "CWFNetworkOfInterestManager.m";
      v42 = 1024;
      v43 = 535;
      v44 = 2112;
      v45 = v16;
      v46 = 2112;
      v47 = v21;
      _os_log_send_and_compose_impl();
    }

    if ([v16 count])
    {
      v22 = MEMORY[0x1E695DEC8];
      v23 = [v16 objectAtIndexedSubscript:0];
      v24 = [v22 arrayWithObject:v23];
    }

    else
    {
      v24 = 0;
    }

    v25 = *(*(a1 + 40) + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0D617D8;
    block[3] = &unk_1E86E6060;
    v26 = *(a1 + 32);
    v27 = *(a1 + 40);
    v31 = v26;
    v32 = v27;
    v33 = v24;
    v28 = v24;
    dispatch_async(v25, block);
  }

  v29 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1E0D61780(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 doubleValue];
  v6 = v5;
  [v4 doubleValue];
  v8 = v7;

  if (v6 > v8)
  {
    return -1;
  }

  else
  {
    return v6 < v8;
  }
}

void sub_1E0D617D8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if ([*(a1 + 32) atHomeScopedNOI])
  {
    v4 = *(a1 + 40);
    v3 = *(a1 + 48);
    v5 = *(v4 + 40);
    if (v5 == v3)
    {
      goto LABEL_19;
    }

    if (v5)
    {
      v6 = v3 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      if ([v5 isEqual:*(a1 + 48)])
      {
        goto LABEL_19;
      }

      v4 = *(a1 + 40);
      v3 = *(a1 + 48);
    }

    objc_storeStrong((v4 + 40), v3);
    [*(a1 + 40) _homeNetworkDeterminationDidChange];
  }

  else if ([*(a1 + 32) atWorkScopedNOI])
  {
    v8 = *(a1 + 40);
    v7 = *(a1 + 48);
    v9 = *(v8 + 48);
    if (v9 != v7)
    {
      if (v9)
      {
        v10 = v7 == 0;
      }

      else
      {
        v10 = 1;
      }

      if (!v10)
      {
        if ([v9 isEqual:*(a1 + 48)])
        {
          goto LABEL_19;
        }

        v8 = *(a1 + 40);
        v7 = *(a1 + 48);
      }

      objc_storeStrong((v8 + 48), v7);
      [*(a1 + 40) _workNetworkDeterminationDidChange];
    }
  }

LABEL_19:

  objc_autoreleasePoolPop(v2);
}

void sub_1E0D61940(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if ([*(a1 + 32) atHomeScopedNOI])
  {
    v3 = *(a1 + 40);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }

  if ([*(a1 + 32) atWorkScopedNOI])
  {
    v5 = *(a1 + 40);
    v6 = *(v5 + 48);
    *(v5 + 48) = 0;
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0D61A28(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  v5 = *(a1 + 32);
  v6 = *(v5 + 48);
  *(v5 + 48) = 0;

  v7 = *(*(a1 + 32) + 24);
  if (v7)
  {
    [v7 trackAllBuiltinNOIsForInterfaceType:1 options:0];
  }

  objc_autoreleasePoolPop(v2);
}

Class sub_1E0D61B74()
{
  if (qword_1ED7E3A88 != -1)
  {
    dispatch_once(&qword_1ED7E3A88, &unk_1F5B897B0);
  }

  result = objc_getClass("NWNetworkOfInterestManager");
  qword_1ED7E3A80 = result;
  off_1EED2D3E0 = sub_1E0D61BD8;
  return result;
}

void sub_1E0D61BE4()
{
  qword_1ECE81AF0 = dlopen("/System/Library/PrivateFrameworks/Symptoms.framework/Frameworks/SymptomPresentationFeed.framework/SymptomPresentationFeed", 2);
  if (!qword_1ECE81AF0)
  {
    NSLog(&cfstr_FailedToSoftLi.isa);
  }
}

Class sub_1E0D61C20(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (!qword_1ED7E3A98)
  {
    qword_1ED7E3A98 = _sl_dlopen();
  }

  result = objc_getClass("HMHomeManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED7E3A90 = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1E0D61D24(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1ED7E3A98 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1E0D62794()
{
  qword_1ED7E3AA0 = objc_alloc_init(CWFAssetPowerTable);

  return MEMORY[0x1EEE66BB8]();
}

void sub_1E0D666DC(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = sub_1E0BCC05C([a2 integerValue]);
  [v4 setObject:v5 forKeyedSubscript:v6];
}

void sub_1E0D6A7B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v2 = v3;
  AnalyticsSendEventLazy();
}