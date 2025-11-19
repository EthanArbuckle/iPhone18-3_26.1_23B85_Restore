void sub_10002412C(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = sub_10001B194(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = a1[4];
    *buf = 138412290;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Request to fetch active dataset record with UUID %@", buf, 0xCu);
  }

  v5 = [THThreadNetworkCredentialsActiveDataSetRecord keyChainQueryForFetchOneActiveDataSetRecordOperationForUniqueIdentifierWithKeychainAccessGroup:a1[4] clientKeychainAccessGroup:a1[5]];
  v6 = a1[6];
  v11 = 0;
  v7 = [v6 _doFetchActiveDataSetRecords:v5 error:&v11];
  v8 = v11;
  v9 = a1[7];
  v10 = [v7 anyObject];
  (*(v9 + 16))(v9, v10, v8);

  objc_autoreleasePoolPop(v2);
}

void sub_100024378(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = sub_10001B194(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 32) discriminatorId];
    *buf = 138412290;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Request to fetch active dataset record with borderAgent %@", buf, 0xCu);
  }

  v5 = [THThreadNetworkCredentialsActiveDataSetRecord keyChainQueryForFetchActiveDataSetRecordOperationForBorderAgentWithKeychainAccessGroup:*(a1 + 32) clientKeychainAccessGroup:*(a1 + 40)];
  v6 = *(a1 + 48);
  v11 = 0;
  v7 = [v6 _doFetchActiveDataSetRecords:v5 error:&v11];
  v8 = v11;
  v9 = *(a1 + 56);
  v10 = [v7 anyObject];
  (*(v9 + 16))(v9, v10, v8);

  objc_autoreleasePoolPop(v2);
}

void sub_1000245C8(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = sub_10001B194(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = a1[4];
    v12 = 138412290;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Request to DELETE credential with identifier %@", &v12, 0xCu);
  }

  v5 = [THThreadNetworkCredentialsActiveDataSetRecord keyChainQueryForDeleteActiveDataSetRecordOperationForUniqueIdentifierWithKeychainAccessGroup:a1[4] clientKeychainAccessGroup:a1[5]];
  v6 = SecItemDelete(v5);
  v7 = sub_10001B194(1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "[THThreadNetworkCredentialsKeychainBackingStore deleteActiveDataSetRecordWithUniqueIdentifierWithKeychainAccessGroup:keychainAccessGroup:completion:]_block_invoke";
    v14 = 1024;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: GOT: (err=%d)", &v12, 0x12u);
  }

  if (v6)
  {
    v8 = SecCopyErrorMessageString(v6, 0);
    v9 = sub_10001B194(1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10003BF90();
    }

    v10 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v6 userInfo:0];
    v11 = [NSError storeError:13 underlyingError:v10 description:v8];
    (*(a1[6] + 16))();
  }

  else
  {
    (*(a1[6] + 16))();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1000248D8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = sub_10001B194(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 32) discriminatorId];
    v12 = 136315394;
    v13 = "[THThreadNetworkCredentialsKeychainBackingStore deleteActiveDataSetRecordForThreadBorderAgentWithKeychainAccessGroup:keychainAccessGroup:completion:]_block_invoke";
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: Request to DELETE credential with Ba %@", &v12, 0x16u);
  }

  v5 = [THThreadNetworkCredentialsActiveDataSetRecord keyChainQueryForDeleteActiveDataSetOperationForThreadNetworkBorderAgentWithKeychainAccessGroup:*(a1 + 32) clientKeychainAccessGroup:*(a1 + 40)];
  v6 = SecItemDelete(v5);
  v7 = sub_10001B194(1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "[THThreadNetworkCredentialsKeychainBackingStore deleteActiveDataSetRecordForThreadBorderAgentWithKeychainAccessGroup:keychainAccessGroup:completion:]_block_invoke";
    v14 = 1024;
    LODWORD(v15) = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: GOT: (err=%d)", &v12, 0x12u);
  }

  if (v6)
  {
    v8 = SecCopyErrorMessageString(v6, 0);
    v9 = sub_10001B194(1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10003C4A0();
    }

    v10 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v6 userInfo:0];
    v11 = [NSError storeError:12 underlyingError:v10 description:v8];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100024F24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100025360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000254AC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = sub_10001B194(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 32) networkName];
    v10 = 136315394;
    v11 = "[THThreadNetworkCredentialsKeychainBackingStore validateRecordWithMdnsScan:borderAgentID:completion:]_block_invoke";
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: Request to validate network with MDNS %@", &v10, 0x16u);
  }

  if (([*(a1 + 40) checkWiFiStatus] & 1) == 0)
  {
    v7 = @"Error : Device is not connected to the network";
    v8 = 19;
LABEL_10:
    v9 = [NSError storeError:v8 description:v7];
    (*(*(a1 + 56) + 16))();

    goto LABEL_11;
  }

  if (([*(a1 + 40) checkIfNetworkMatchToMDNSScan:*(a1 + 32) borderAgentID:*(a1 + 48)] & 1) == 0)
  {
    v7 = @"Thread network credentials does not match with any of the active thread networks around";
    v8 = 20;
    goto LABEL_10;
  }

  v5 = sub_10001B194(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 32) networkName];
    v10 = 136315394;
    v11 = "[THThreadNetworkCredentialsKeychainBackingStore validateRecordWithMdnsScan:borderAgentID:completion:]_block_invoke";
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: Valid Thread network credentials, network name :  %@", &v10, 0x16u);
  }

  (*(*(a1 + 56) + 16))();
LABEL_11:
  objc_autoreleasePoolPop(v2);
}

void sub_100025754(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = sub_10001B194(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v39 = "[THThreadNetworkCredentialsKeychainBackingStore checkIfRecordForPreferredNetworkIsPresentWithCompletion:]_block_invoke";
    v40 = 1024;
    v41 = 1806;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s:%d: Request to check if there are any records for the preferred network exists", buf, 0x12u);
  }

  v4 = [*(a1 + 32) getPreferredNetwork:0];
  v5 = v4;
  if (!v4)
  {
    v17 = sub_10001B194(1);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v39 = "[THThreadNetworkCredentialsKeychainBackingStore checkIfRecordForPreferredNetworkIsPresentWithCompletion:]_block_invoke";
      v40 = 1024;
      v41 = 1811;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s:%d: No Preferred Network..", buf, 0x12u);
    }

    goto LABEL_11;
  }

  v6 = [v4 credentialsDataSetRecord];
  if (v6)
  {
    v7 = v6;
    v8 = [v5 credentialsDataSetRecord];
    v9 = [v8 credentialsDataSet];
    v10 = [v9 dataSetArray];
    if (v10)
    {
      v11 = v10;
      v12 = [v5 credentialsDataSetRecord];
      v13 = [v12 credentialsDataSet];
      [v13 dataSetArray];
      v14 = a1;
      v16 = v15 = v2;
      v36 = [v16 length];

      v2 = v15;
      a1 = v14;

      if (v36)
      {
        v17 = sub_10001B194(1);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = [v5 credentialsDataSetRecord];
          v19 = [v18 network];
          v20 = [v19 networkName];
          v21 = [v5 credentialsDataSetRecord];
          v22 = [v21 credentialsDataSet];
          v23 = [v22 dataSetArray];
          *buf = 136315906;
          v39 = "[THThreadNetworkCredentialsKeychainBackingStore checkIfRecordForPreferredNetworkIsPresentWithCompletion:]_block_invoke";
          v40 = 1024;
          v41 = 1821;
          v42 = 2112;
          v43 = v20;
          v44 = 2112;
          v45 = v23;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s:%d: This preferred network entry has record associated with it, returning the same preferred network : %@, dataset : %@", buf, 0x26u);
        }

LABEL_11:

        (*(*(a1 + 40) + 16))();
        goto LABEL_18;
      }
    }

    else
    {
    }
  }

  v24 = sub_10001B194(1);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    v25 = [v5 network];
    v26 = [v25 networkName];
    v27 = [v5 network];
    v28 = [v27 extendedPANID];
    *buf = 136315906;
    v39 = "[THThreadNetworkCredentialsKeychainBackingStore checkIfRecordForPreferredNetworkIsPresentWithCompletion:]_block_invoke";
    v40 = 1024;
    v41 = 1826;
    v42 = 2112;
    v43 = v26;
    v44 = 2112;
    v45 = v28;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%s : %d - Request to check how many active dataset records are present for preferred network (name=%@, xpanid=%@)", buf, 0x26u);
  }

  v29 = [v5 network];
  v30 = [THThreadNetworkCredentialsActiveDataSetRecord keyChainQueryForFetchActiveDataSetRecordsOperationForNetwork:v29];

  v31 = *(a1 + 32);
  v37 = 0;
  v32 = [v31 _doFetchActiveDataSetRecords:v30 error:&v37];
  v33 = v37;
  v34 = sub_10001B194(1);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    v35 = [v32 count];
    *buf = 136315650;
    v39 = "[THThreadNetworkCredentialsKeychainBackingStore checkIfRecordForPreferredNetworkIsPresentWithCompletion:]_block_invoke";
    v40 = 1024;
    v41 = 1832;
    v42 = 2048;
    v43 = v35;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "%s:%d: Preferred Network present and the matching Active dataset records size is: %lu", buf, 0x1Cu);
  }

  [v32 count];
  (*(*(a1 + 40) + 16))();

LABEL_18:
  objc_autoreleasePoolPop(v2);
}

void sub_100026548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a43, 8);
  _Unwind_Resume(a1);
}

int64_t sub_1000265BC(id a1, id a2, id a3)
{
  v4 = a3;
  v5 = [a2 lastModificationDate];
  v6 = [v4 lastModificationDate];

  v7 = [v5 compare:v6];
  if (v7 == 1)
  {
    v8 = -1;
  }

  else
  {
    v8 = v7;
  }

  if (v7 == -1)
  {
    return 1;
  }

  else
  {
    return v8;
  }
}

void sub_100026638(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = sub_10001B194(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [*(*(*(a1 + 32) + 8) + 40) network];
    v5 = [v4 networkName];
    v6 = 136315650;
    v7 = "[THThreadNetworkCredentialsKeychainBackingStore getRecordForPreferredNetwork:anyDsFormat:skipScan:]_block_invoke";
    v8 = 1024;
    v9 = 1923;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s : %d : Updating preferred network with record : name : %@", &v6, 0x1Cu);
  }

  [WeakRetained updateRecordToPreferredNetworkEntry:*(*(*(a1 + 40) + 8) + 40) credentialsDataSetRecord:*(*(*(a1 + 32) + 8) + 40)];
}

void sub_100026824(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = sub_10001B194(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(v14) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Request to fetch Preferred Network Active Dataset Record with Any format", &v14, 2u);
  }

  v4 = [*(a1 + 32) getRecordForPreferredNetwork:0 anyDsFormat:1];
  v5 = sub_10001B194(1);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = [v4 network];
      v8 = [v7 networkName];
      v9 = [v4 network];
      v10 = [v9 extendedPANID];
      v11 = [v4 borderAgent];
      v12 = [v11 discriminatorId];
      v14 = 136316162;
      v15 = "[THThreadNetworkCredentialsKeychainBackingStore retrievePreferredNetworkOfAnyDSFormatWithCompletion:]_block_invoke";
      v16 = 1024;
      v17 = 1945;
      v18 = 2112;
      v19 = v8;
      v20 = 2112;
      v21 = v10;
      v22 = 2112;
      v23 = v12;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s : %d - Returning record (name=%@, xpanid=%@, baid=%@)", &v14, 0x30u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10003C838();
    }

    v13 = [NSError storeError:9 description:@"No preferred network found"];
    (*(*(a1 + 40) + 16))();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100026B30(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = sub_10001B194(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v14 = 136315394;
    v15 = "[THThreadNetworkCredentialsKeychainBackingStore retrievePreferredNetworkWithCompletion:]_block_invoke";
    v16 = 1024;
    v17 = 1955;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s:%d:Request to fetch Preferred Network Active Dataset Record", &v14, 0x12u);
  }

  v4 = [*(a1 + 32) getRecordForPreferredNetwork:0 anyDsFormat:0];
  v5 = sub_10001B194(1);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = [v4 network];
      v8 = [v7 networkName];
      v9 = [v4 network];
      v10 = [v9 extendedPANID];
      v11 = [v4 borderAgent];
      v12 = [v11 discriminatorId];
      v14 = 136316162;
      v15 = "[THThreadNetworkCredentialsKeychainBackingStore retrievePreferredNetworkWithCompletion:]_block_invoke";
      v16 = 1024;
      v17 = 1966;
      v18 = 2112;
      v19 = v8;
      v20 = 2112;
      v21 = v10;
      v22 = 2112;
      v23 = v12;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s : %d - Returning record (name=%@, xpanid=%@, baid=%@)", &v14, 0x30u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10003C8BC();
    }

    v13 = [NSError storeError:9 description:@"No preferred network found"];
    (*(*(a1 + 40) + 16))();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100026E60(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = sub_10001B194(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v14 = 136315394;
    v15 = "[THThreadNetworkCredentialsKeychainBackingStore retrievePreferredNetworkInternallyWithCompletion:]_block_invoke";
    v16 = 1024;
    v17 = 1976;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s:%d:Request to fetch Preferred Network Active Dataset Record", &v14, 0x12u);
  }

  v4 = [*(a1 + 32) getRecordForPreferredNetwork:1 anyDsFormat:0];
  v5 = sub_10001B194(1);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = [v4 network];
      v8 = [v7 networkName];
      v9 = [v4 network];
      v10 = [v9 extendedPANID];
      v11 = [v4 borderAgent];
      v12 = [v11 discriminatorId];
      v14 = 136316162;
      v15 = "[THThreadNetworkCredentialsKeychainBackingStore retrievePreferredNetworkInternallyWithCompletion:]_block_invoke";
      v16 = 1024;
      v17 = 1987;
      v18 = 2112;
      v19 = v8;
      v20 = 2112;
      v21 = v10;
      v22 = 2112;
      v23 = v12;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s : %d - Returning record (name=%@, xpanid=%@, baid=%@)", &v14, 0x30u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10003C940();
    }

    v13 = [NSError storeError:9 description:@"No preferred network found"];
    (*(*(a1 + 40) + 16))();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100027190(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = sub_10001B194(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v14 = 136315394;
    v15 = "[THThreadNetworkCredentialsKeychainBackingStore retrievePreferredNetworkWithNoScanWithCompletion:]_block_invoke";
    v16 = 1024;
    v17 = 1997;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s:%d:Request to fetch Preferred Network Active Dataset Record", &v14, 0x12u);
  }

  v4 = [*(a1 + 32) getRecordForPreferredNetwork:0 anyDsFormat:0 skipScan:1];
  v5 = sub_10001B194(1);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = [v4 network];
      v8 = [v7 networkName];
      v9 = [v4 network];
      v10 = [v9 extendedPANID];
      v11 = [v4 borderAgent];
      v12 = [v11 discriminatorId];
      v14 = 136316162;
      v15 = "[THThreadNetworkCredentialsKeychainBackingStore retrievePreferredNetworkWithNoScanWithCompletion:]_block_invoke";
      v16 = 1024;
      v17 = 2008;
      v18 = 2112;
      v19 = v8;
      v20 = 2112;
      v21 = v10;
      v22 = 2112;
      v23 = v12;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s : %d - Returning record (name=%@, xpanid=%@, baid=%@)", &v14, 0x30u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10003C9C4();
    }

    v13 = [NSError storeError:9 description:@"No preferred network found"];
    (*(*(a1 + 40) + 16))();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1000276E8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = sub_10001B194(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v28 = 136315394;
    v29 = "[THThreadNetworkCredentialsKeychainBackingStore retrieveOrGeneratePreferredNetworkInternallyWithCompletion:]_block_invoke";
    v30 = 1024;
    v31 = 2055;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s:%d:Request to fetch Preferred Network Active Dataset Record", &v28, 0x12u);
  }

  v4 = [*(a1 + 32) getRecordForPreferredNetwork:0 anyDsFormat:0];
  v5 = sub_10001B194(1);
  v6 = v5;
  if (!v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10003CC48();
    }

    v13 = [NSError storeError:9 description:@"No preferred network found"];
    v14 = [*(a1 + 32) generateCredentials];
    if (!v14)
    {
      (*(*(a1 + 40) + 16))();
      v4 = v13;
      goto LABEL_27;
    }

    v4 = v14;
    v15 = [v14 keyChainItemRepresentationForActiveDataSetRecordAddOperation];
    v16 = v15;
    if (v15)
    {
      v17 = SecItemAdd(v15, 0);
      if (v17 == -25299)
      {
        v18 = sub_10001B194(1);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_10003CCCC();
        }

        v19 = [v4 keyChainQueryForActiveDataSetRecordUpdateOperation];
        v20 = [v4 keyChainItemRepresentationForActiveDataSetRecordUpdateOperation];
        v17 = SecItemUpdate(v19, v20);
      }

      if (v17)
      {
        v21 = sub_10001B194(1);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v28 = 136315650;
          v29 = "[THThreadNetworkCredentialsKeychainBackingStore retrieveOrGeneratePreferredNetworkInternallyWithCompletion:]_block_invoke";
          v30 = 1024;
          v31 = 2092;
          v32 = 1024;
          LODWORD(v33) = v17;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%s:%d Error while adding/updating the record : (err=%d)", &v28, 0x18u);
        }

        v22 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v17 userInfo:0];
        v23 = [NSError storeError:2 underlyingError:v22 description:@"Error while adding/updating the record"];
        (*(*(a1 + 40) + 16))();
        goto LABEL_25;
      }

      v25 = *(a1 + 32);
      v26 = [v4 borderAgent];
      v22 = [v25 getActiveDataSetRecord:v26];

      if (([*(a1 + 32) storePreferredNetworkWithRecord:v22] & 1) == 0)
      {
        v23 = [NSError errorWithDomain:NSOSStatusErrorDomain code:0 userInfo:0];
        v27 = [NSError storeError:2 underlyingError:v23 description:@"Error while adding preferred network entry"];
        (*(*(a1 + 40) + 16))();

LABEL_25:
        goto LABEL_26;
      }

      v24 = *(*(a1 + 40) + 16);
    }

    else
    {
      v22 = [NSError storeError:4 description:@"Bad network parameter"];
      v24 = *(*(a1 + 40) + 16);
    }

    v24();
LABEL_26:

    goto LABEL_27;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = [v4 network];
    v8 = [v7 networkName];
    v9 = [v4 network];
    v10 = [v9 extendedPANID];
    v11 = [v4 borderAgent];
    v12 = [v11 discriminatorId];
    v28 = 136316162;
    v29 = "[THThreadNetworkCredentialsKeychainBackingStore retrieveOrGeneratePreferredNetworkInternallyWithCompletion:]_block_invoke";
    v30 = 1024;
    v31 = 2111;
    v32 = 2112;
    v33 = v8;
    v34 = 2112;
    v35 = v10;
    v36 = 2112;
    v37 = v12;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s : %d - Returning record (name=%@, xpanid=%@, baid=%@)", &v28, 0x30u);
  }

  (*(*(a1 + 40) + 16))();
LABEL_27:

  objc_autoreleasePoolPop(v2);
}

void sub_100027D78(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = sub_10001B194(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v29 = 136315394;
    v30 = "[THThreadNetworkCredentialsKeychainBackingStore addPreferredNetworkWithCompletionInternally:borderAgentID:ipV4NwSignature:ipv6NwSignature:wifiSSID:wifiPassword:completion:]_block_invoke";
    v31 = 1024;
    v32 = 2122;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s:%d:Request to add Preferred Network", &v29, 0x12u);
  }

  v42[0] = 0;
  v42[1] = 0;
  v41[0] = 0;
  v41[1] = 0;
  v4 = +[NSUUID UUID];
  [v4 getUUIDBytes:v42];

  v5 = +[NSUUID UUID];
  [v5 getUUIDBytes:v41];

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = sub_100028358();
  v9 = sub_10002843C();
  v10 = sub_10001B194(1);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v29 = 136316418;
    v30 = "[THThreadNetworkCredentialsKeychainBackingStore addPreferredNetworkWithCompletionInternally:borderAgentID:ipV4NwSignature:ipv6NwSignature:wifiSSID:wifiPassword:completion:]_block_invoke";
    v31 = 1024;
    v32 = 2136;
    v33 = 2112;
    v34 = v11;
    v35 = 2112;
    v36 = v12;
    v37 = 2112;
    v38 = v8;
    v39 = 2112;
    v40 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s:%d:Entered with signatures ipv4 : %@, ipv6 : %@, ssid : %@, pwd : %@", &v29, 0x3Au);
  }

  v13 = *(a1 + 48);
  if (!v13)
  {
    v13 = &stru_100079A28;
  }

  v14 = v13;

  v15 = *(a1 + 56);
  if (!v15)
  {
    v15 = &stru_100079A28;
  }

  v16 = v15;

  if (!(v6 | v7))
  {
    v6 = [NSData dataWithBytes:v42 length:16];
    v17 = 16;
LABEL_15:
    v7 = [NSData dataWithBytes:v41 length:v17];
    goto LABEL_16;
  }

  if (!v7)
  {
    v17 = 0;
    goto LABEL_15;
  }

  if (!v6)
  {
    v6 = [NSData dataWithBytes:v42 length:0];
  }

LABEL_16:
  v18 = sub_10001B194(1);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v29 = 136316418;
    v30 = "[THThreadNetworkCredentialsKeychainBackingStore addPreferredNetworkWithCompletionInternally:borderAgentID:ipV4NwSignature:ipv6NwSignature:wifiSSID:wifiPassword:completion:]_block_invoke";
    v31 = 1024;
    v32 = 2153;
    v33 = 2112;
    v34 = v6;
    v35 = 2112;
    v36 = v7;
    v37 = 2112;
    v38 = v14;
    v39 = 2112;
    v40 = v16;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s:%d:Random signatures ipv4 : %@, ipv6 : %@, ssid : %@, pwd : %@", &v29, 0x3Au);
  }

  v19 = [[THNetworkSignature alloc] initWithSignatures:v6 ipv6NwSignature:v7 wifSSID:v14 wifiPassword:v16];
  v20 = sub_10001B194(1);
  v21 = v20;
  if (v19)
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v22 = [v19 ipv4NwSignature];
      v23 = [v19 ipv6NwSignature];
      v29 = 136315906;
      v30 = "[THThreadNetworkCredentialsKeychainBackingStore addPreferredNetworkWithCompletionInternally:borderAgentID:ipV4NwSignature:ipv6NwSignature:wifiSSID:wifiPassword:completion:]_block_invoke";
      v31 = 1024;
      v32 = 2165;
      v33 = 2112;
      v34 = v22;
      v35 = 2112;
      v36 = v23;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "%s:%d:Calculated signatures ipv4 : %@, ipv6 : %@", &v29, 0x26u);
    }

    v24 = *(a1 + 64);
    if (v24)
    {
      v25 = [v24 discriminatorId];

      if (v25)
      {
        v25 = [*(a1 + 72) getActiveDataSetRecord:*(a1 + 64)];
      }
    }

    else
    {
      v25 = 0;
    }

    v26 = [[THPreferredThreadNetwork alloc] initWithThreadNetwork:*(a1 + 80) networkSignature:v19 credentialsDataSetRecord:v25 creationDate:0 lastModificationDate:0 userInfo:@"0000000000"];
    if (v26)
    {
      if (*(a1 + 48) || *(a1 + 56))
      {
        if ([*(a1 + 72) storePreferred:v26])
        {
LABEL_32:
          (*(*(a1 + 88) + 16))();
LABEL_38:

          goto LABEL_39;
        }

        v27 = sub_10001B194(1);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          sub_10003CD50();
        }
      }

      else
      {
        if ([*(a1 + 72) DBGstorePreferred:v26])
        {
          goto LABEL_32;
        }

        v27 = sub_10001B194(1);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          sub_10003CDD4();
        }
      }
    }

    else
    {
      v27 = sub_10001B194(1);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_10003CE58();
      }
    }

    v28 = [NSError storeError:35 description:@"Unable to add preferred network"];
    (*(*(a1 + 88) + 16))();

    goto LABEL_38;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    sub_10003CEDC();
  }

  v25 = [NSError storeError:35 description:@"Unable to add preferred network"];
  (*(*(a1 + 88) + 16))();
LABEL_39:

  objc_autoreleasePoolPop(v2);
}

id sub_100028358()
{
  v0 = [NSMutableString stringWithCapacity:0];
  v1 = arc4random();
  v2 = [NSString stringWithFormat:@"%s%d", "ThSSID", v1 + ((v1 / 0x7FFFFFFF) | ((v1 / 0x7FFFFFFF) << 31)) + 1];
  [v0 appendString:v2];

  v3 = sub_10001B194(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10003CF68();
  }

  return v0;
}

id sub_10002843C()
{
  v0 = [NSMutableString stringWithCapacity:0];
  v1 = arc4random();
  v2 = [NSString stringWithFormat:@"%s%d", "ThPWD", v1 + ((v1 / 0x7FFFFFFF) | ((v1 / 0x7FFFFFFF) << 31)) + 1];
  [v0 appendString:v2];

  v3 = sub_10001B194(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10003CFD8();
  }

  return v0;
}

void sub_100028670(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = sub_10001B194(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v44 = "[THThreadNetworkCredentialsKeychainBackingStore deletePreferredNetworkForNetworkSignatureInternallyWithCompletion:ipv4NwSignature:ipv6NwSignature:wifiSSID:completion:]_block_invoke";
    v45 = 1024;
    *v46 = 2212;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s:%d:Request to delete Preferred Network for network signature", buf, 0x12u);
  }

  v52[0] = 0;
  v52[1] = 0;
  v51[0] = 0;
  v51[1] = 0;
  v4 = +[NSUUID UUID];
  [v4 getUUIDBytes:v52];

  v5 = +[NSUUID UUID];
  [v5 getUUIDBytes:v51];

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = sub_10001B194(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    *buf = 136316162;
    v44 = "[THThreadNetworkCredentialsKeychainBackingStore deletePreferredNetworkForNetworkSignatureInternallyWithCompletion:ipv4NwSignature:ipv6NwSignature:wifiSSID:completion:]_block_invoke";
    v45 = 1024;
    *v46 = 2223;
    *&v46[4] = 2112;
    *&v46[6] = v9;
    v47 = 2112;
    v48 = v10;
    v49 = 2112;
    v50 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s:%d:Entered with signatures ipv4 : %@, ipv6 : %@, ssid : %@", buf, 0x30u);
  }

  v12 = *(a1 + 48);
  if (!v12)
  {
    v12 = &stru_100079A28;
  }

  v13 = v12;
  if (v7)
  {
    if (v6)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v7 = [NSData dataWithBytes:v51 length:0];
    if (v6)
    {
      goto LABEL_9;
    }
  }

  v6 = [NSData dataWithBytes:v52 length:0];
LABEL_9:
  v14 = [[THNetworkSignature alloc] initWithSignatures:v6 ipv6NwSignature:v7 wifSSID:v13 wifiPassword:&stru_100079A28];
  v15 = *(a1 + 56);
  if (v15 | v14)
  {
    if (v15)
    {
      v16 = [THPreferredThreadNetwork keyChainQueryForDeletePreferredNetworkRecordWithNetworkName:?];
      v17 = v16;
      if (v16)
      {
        v42 = v2;
        v18 = SecItemDelete(v16);
        v19 = sub_10001B194(1);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [*(a1 + 56) networkName];
          *buf = 136315650;
          v44 = "[THThreadNetworkCredentialsKeychainBackingStore deletePreferredNetworkForNetworkSignatureInternallyWithCompletion:ipv4NwSignature:ipv6NwSignature:wifiSSID:completion:]_block_invoke";
          v45 = 2112;
          *v46 = v20;
          *&v46[8] = 1024;
          *&v46[10] = v18;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%s: Preferred Network for network name : %@, Deletion result :(err=%d)", buf, 0x1Cu);
        }

        if (v18)
        {
          v21 = SecCopyErrorMessageString(v18, 0);
          v22 = sub_10001B194(1);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            sub_10003D13C((a1 + 56));
          }

          v23 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v18 userInfo:0];
          v24 = [NSError storeError:11 underlyingError:v23 description:v21];
          (*(*(a1 + 72) + 16))();
        }

        else
        {
          (*(*(a1 + 72) + 16))();
        }

LABEL_37:
        v2 = v42;
        goto LABEL_42;
      }

      v38 = sub_10001B194(1);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        sub_10003D1E4();
      }

      v39 = @"Failed to create query to delete preferred network for network name";
LABEL_41:
      v41 = [NSError storeError:16 description:v39];
      (*(*(a1 + 72) + 16))();

      goto LABEL_42;
    }

    v27 = sub_10001B194(1);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = [v14 ipv4NwSignature];
      v29 = [v14 ipv6NwSignature];
      *buf = 136315906;
      v44 = "[THThreadNetworkCredentialsKeychainBackingStore deletePreferredNetworkForNetworkSignatureInternallyWithCompletion:ipv4NwSignature:ipv6NwSignature:wifiSSID:completion:]_block_invoke";
      v45 = 1024;
      *v46 = 2290;
      *&v46[4] = 2112;
      *&v46[6] = v28;
      v47 = 2112;
      v48 = v29;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "%s:%d:Calculated signatures ipv4 : %@, ipv6 : %@", buf, 0x26u);
    }

    v30 = [THPreferredThreadNetwork keyChainQueryForDeletePreferredNetworkRecordForNetworkSignature:v14];
    v17 = v30;
    if (!v30)
    {
      v40 = sub_10001B194(1);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        sub_10003D0B8();
      }

      v39 = @"Failed to create query to delete preferred network for networksignature";
      goto LABEL_41;
    }

    v31 = SecItemDelete(v30);
    v32 = sub_10001B194(1);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = [v14 wifiSSID];
      *buf = 136315650;
      v44 = "[THThreadNetworkCredentialsKeychainBackingStore deletePreferredNetworkForNetworkSignatureInternallyWithCompletion:ipv4NwSignature:ipv6NwSignature:wifiSSID:completion:]_block_invoke";
      v45 = 2112;
      *v46 = v33;
      *&v46[8] = 1024;
      *&v46[10] = v31;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%s: Preferred Network for network signature : %@, Deletion result :(err=%d)", buf, 0x1Cu);
    }

    if (v31)
    {
      v42 = v2;
      v34 = SecCopyErrorMessageString(v31, 0);
      v35 = sub_10001B194(1);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        sub_10003D048();
      }

      v36 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v31 userInfo:0];
      v37 = [NSError storeError:11 underlyingError:v36 description:v34];
      (*(*(a1 + 72) + 16))();

      goto LABEL_37;
    }

    v26 = *(*(a1 + 72) + 16);
  }

  else
  {
    v25 = sub_10001B194(1);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v44 = "[THThreadNetworkCredentialsKeychainBackingStore deletePreferredNetworkForNetworkSignatureInternallyWithCompletion:ipv4NwSignature:ipv6NwSignature:wifiSSID:completion:]_block_invoke";
      v45 = 1024;
      *v46 = 2241;
      *&v46[4] = 2112;
      *&v46[6] = v6;
      v47 = 2112;
      v48 = v7;
      v49 = 2112;
      v50 = v13;
      _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%s:%d:Error : Random signatures ipv4 : %@, ipv6 : %@, ssid : %@", buf, 0x30u);
    }

    v17 = [NSError storeError:39 description:@"Unable to delete preferred network"];
    v26 = *(*(a1 + 72) + 16);
  }

  v26();
LABEL_42:

  objc_autoreleasePoolPop(v2);
}

void sub_100028EB8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = sub_10001B194(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v48 = "[THThreadNetworkCredentialsKeychainBackingStore deletePreferredNetworkWithCompletion:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: Request to DELETE Preferred Network", buf, 0xCu);
  }

  v4 = +[THPreferredThreadNetwork keyChainQueryForFetchPreferredNetworkRecordsOperation];
  if (!v4)
  {
    v30 = sub_10001B194(1);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_10003D4BC();
    }

    v7 = [NSError storeError:16 description:@"Failed to create query to fetch preferred networks"];
    (*(*(a1 + 40) + 16))();
    goto LABEL_43;
  }

  v5 = *(a1 + 32);
  v46 = 0;
  v6 = [v5 _doFetchPreferredNetworks:v4 error:&v46];
  v7 = v46;
  v8 = sub_10001B194(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_10003D268(v6);
  }

  if (![v6 count])
  {
    v31 = sub_10001B194(1);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_10003D438();
    }

    goto LABEL_30;
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v6;
  v9 = [obj countByEnumeratingWithState:&v42 objects:v53 count:16];
  if (!v9)
  {
    goto LABEL_23;
  }

  v10 = v9;
  v11 = *v43;
  v39 = v4;
  v40 = v2;
  v37 = v6;
  v38 = v7;
  while (2)
  {
    v12 = 0;
    v13 = &AWDPostMetric_ptr;
    do
    {
      if (*v43 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v42 + 1) + 8 * v12);
      v15 = [v14 credentialsDataSetRecord];

      if (v15)
      {
        v16 = [THFrozenThreadNetwork alloc];
        v17 = [v14 credentialsDataSetRecord];
        v18 = [v17 credentialsDataSet];
        v19 = [v16 initWithCredentialsDataSet:v18 creationDate:0 lastModificationDate:0];

        [*(a1 + 32) storeFrozenThreadNetwork:v19];
      }

      v20 = [v13[190] keyChainQueryForDeletePreferredNetworkRecord:v14];
      v21 = v20;
      if (!v20)
      {
        v32 = sub_10001B194(1);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          sub_10003D3B4();
        }

        v27 = [NSError storeError:16 description:@"Failed to create query to delete preferred networks"];
        (*(*(a1 + 40) + 16))();
        goto LABEL_41;
      }

      v22 = SecItemDelete(v20);
      v23 = sub_10001B194(1);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [v14 network];
        v25 = [v24 networkName];
        *buf = 136315650;
        v48 = "[THThreadNetworkCredentialsKeychainBackingStore deletePreferredNetworkWithCompletion:]_block_invoke";
        v49 = 2112;
        v50 = v25;
        v51 = 1024;
        v52 = v22;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%s: Preferred Network : %@, Deletion result :(err=%d)", buf, 0x1Cu);

        v13 = &AWDPostMetric_ptr;
      }

      if (v22)
      {
        v27 = SecCopyErrorMessageString(v22, 0);
        v33 = sub_10001B194(1);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          sub_10003D048();
        }

        v34 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v22 userInfo:0];
        v35 = [NSError storeError:11 underlyingError:v34 description:v27];
        (*(*(a1 + 40) + 16))();

LABEL_40:
LABEL_41:
        v4 = v39;
        v2 = v40;
        v6 = v37;
        v7 = v38;

        goto LABEL_42;
      }

      v26 = [v14 network];
      v27 = [THThreadNetworkCredentialsActiveDataSetRecord keyChainQueryForDeleteAllActiveDataSetOperationForThreadNetwork:v26];

      v28 = SecItemDelete(v27);
      v29 = sub_10001B194(1);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v48 = "[THThreadNetworkCredentialsKeychainBackingStore deletePreferredNetworkWithCompletion:]_block_invoke";
        v49 = 1024;
        LODWORD(v50) = v28;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "%s: GOT: (err=%d)", buf, 0x12u);
      }

      if (v28)
      {
        v36 = sub_10001B194(1);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          sub_10003D2FC(v14);
        }

        v34 = [NSError storeError:32 description:@"Failed to delete credentials records for frozen preferred network"];
        (*(*(a1 + 40) + 16))();
        goto LABEL_40;
      }

      v12 = v12 + 1;
    }

    while (v10 != v12);
    v10 = [obj countByEnumeratingWithState:&v42 objects:v53 count:16];
    v4 = v39;
    v2 = v40;
    v6 = v37;
    v7 = v38;
    if (v10)
    {
      continue;
    }

    break;
  }

LABEL_23:

LABEL_30:
  (*(*(a1 + 40) + 16))();
LABEL_42:

LABEL_43:
  objc_autoreleasePoolPop(v2);
}

void sub_1000295B8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = sub_10001B194(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315138;
    v17 = "[THThreadNetworkCredentialsKeychainBackingStore deletePreferredNetworkEntryWithCompletion:completion:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: Request to DELETE Preferred Network Entry", &v16, 0xCu);
  }

  v4 = [THPreferredThreadNetwork keyChainQueryForDeletePreferredNetworkRecord:*(a1 + 32)];
  v5 = v4;
  if (v4)
  {
    v6 = SecItemDelete(v4);
    v7 = sub_10001B194(1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) network];
      v9 = [v8 networkName];
      v16 = 136315650;
      v17 = "[THThreadNetworkCredentialsKeychainBackingStore deletePreferredNetworkEntryWithCompletion:completion:]_block_invoke";
      v18 = 2112;
      v19 = v9;
      v20 = 1024;
      v21 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: Preferred Network : %@, Deletion result :(err=%d)", &v16, 0x1Cu);
    }

    if (v6)
    {
      v10 = SecCopyErrorMessageString(v6, 0);
      v11 = sub_10001B194(1);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10003D048();
      }

      v12 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v6 userInfo:0];
      v13 = [NSError storeError:11 underlyingError:v12 description:v10];
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    v14 = sub_10001B194(1);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10003D540();
    }

    v15 = [NSError storeError:16 description:@"Failed to create query to delete preferred network entry"];
    (*(*(a1 + 40) + 16))();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100029934(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = sub_10001B194(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 136315394;
    v25 = "[THThreadNetworkCredentialsKeychainBackingStore deletePreferredAndFrozenThreadNetworksWithCompletion:]_block_invoke";
    v26 = 1024;
    v27 = 2435;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s:%d: Request to DELETE all preferred and frozen networks", &v24, 0x12u);
  }

  v4 = +[THPreferredThreadNetwork keyChainQueryForDeleteAllPreferredNetworks];
  v5 = v4;
  if (!v4)
  {
    v17 = sub_10001B194(1);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10003D8DC();
    }

    v10 = [NSError storeError:16 description:@"Failed to create query to fetch preferred networks"];
    v16 = *(*(a1 + 40) + 16);
    goto LABEL_25;
  }

  v6 = SecItemDelete(v4);
  if (v6)
  {
    v7 = v6;
    if (v6 != -25300)
    {
      v10 = SecCopyErrorMessageString(v6, 0);
      v18 = sub_10001B194(1);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10003D858();
      }

      v19 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v7 userInfo:0];
      v20 = [NSError storeError:32 underlyingError:v19 description:v10];
      (*(*(a1 + 40) + 16))();
LABEL_35:

LABEL_36:
      goto LABEL_37;
    }

    v8 = sub_10001B194(1);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10003D5C4();
    }
  }

  v9 = +[THFrozenThreadNetwork keyChainQueryForDeleteFrozenThreadNetworkRecordsOperation];
  v10 = v9;
  if (!v9)
  {
    v21 = sub_10001B194(1);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10003D7D4();
    }

    v19 = [NSError storeError:34 description:@"Failed to create query to fetch frozen thread networks"];
    (*(*(a1 + 40) + 16))();
    goto LABEL_36;
  }

  v11 = SecItemDelete(v9);
  if (v11)
  {
    v12 = v11;
    if (v11 == -25300)
    {
      v13 = sub_10001B194(1);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10003D648();
      }

      goto LABEL_15;
    }

    v19 = SecCopyErrorMessageString(v11, 0);
    v22 = sub_10001B194(1);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_10003D750();
    }

    v20 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v12 userInfo:0];
    v23 = [NSError storeError:33 underlyingError:v20 description:v19];
    (*(*(a1 + 40) + 16))();

    goto LABEL_35;
  }

LABEL_15:
  if (([*(a1 + 32) deleteAllRecordsForKeychainAccessGroup:@"0000000000"] & 1) == 0)
  {
    v14 = sub_10001B194(1);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10003D6CC();
    }
  }

  v15 = sub_10001B194(1);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v24 = 136315394;
    v25 = "[THThreadNetworkCredentialsKeychainBackingStore deletePreferredAndFrozenThreadNetworksWithCompletion:]_block_invoke";
    v26 = 1024;
    v27 = 2502;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s:%d: Deleted all preferred and frozen networks !", &v24, 0x12u);
  }

  v16 = *(*(a1 + 40) + 16);
LABEL_25:
  v16();
LABEL_37:

  objc_autoreleasePoolPop(v2);
}

void sub_100029E5C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = sub_10001B194(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "[THThreadNetworkCredentialsKeychainBackingStore updatePreferredNetworkInternallyWithCompletion:]_block_invoke";
    v6 = 1024;
    v7 = 2511;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s:%d:Request to update Preferred Network", &v4, 0x12u);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), [*(a1 + 32) updatePreferredNetwork]);
  objc_autoreleasePoolPop(v2);
}

void sub_10002B300(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v384 = 0;
  v382 = 0u;
  v383 = 0u;
  v381 = 0u;
  v3 = sub_10001B194(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10003E6FC();
  }

  v4 = +[THThreadNetworkCredentialsStoreRecord keyChainQueryForDeleteAllCredentialsRecord];
  v265 = v4;
  if (!v4)
  {
    v232 = sub_10001B194(1);
    if (os_log_type_enabled(v232, OS_LOG_TYPE_ERROR))
    {
      sub_10003ED34();
    }

    v233 = [NSError storeError:36 description:@"Failed to create query to delete all com.apple.thread.network records"];
    (*(*(a1 + 40) + 16))();
    goto LABEL_270;
  }

  v264 = v2;
  v5 = SecItemDelete(v4);
  v6 = sub_10001B194(1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_10003E780();
  }

  if (v5)
  {
    v7 = sub_10001B194(1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10003E804();
    }
  }

  v339 = objc_alloc_init(NSMutableDictionary);
  v8 = &AWDPostMetric_ptr;
  v297 = objc_alloc_init(NSMutableArray);
  v342 = objc_alloc_init(NSMutableArray);
  v289 = objc_alloc_init(NSMutableArray);
  v341 = objc_alloc_init(NSMutableDictionary);
  v340 = objc_alloc_init(NSMutableArray);
  v9 = [*(a1 + 32) getNumberOfPrefEntriesForTheCount:200];
  v10 = sub_10001B194(1);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v391 = "[THThreadNetworkCredentialsKeychainBackingStore cleanThreadKeychainDatabase:]_block_invoke";
    v392 = 1024;
    v393 = 2840;
    v394 = 2048;
    v395 = [v9 count];
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s:%d: Before 1st Pass, size of preferred networks (prefNwRecords) : %lu", buf, 0x1Cu);
  }

  v11 = [v9 count];
  *(&v382 + 1) = v11;
  v384 = 0;
  v343 = a1;
  if (v9 && [v9 count])
  {
    v379 = 0u;
    v380 = 0u;
    v377 = 0u;
    v378 = 0u;
    obj = v9;
    v12 = [obj countByEnumeratingWithState:&v377 objects:v409 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v378;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v378 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v377 + 1) + 8 * i);
          v17 = [*(v343 + 32) getTheKeyFromPreferredNetworkEntry:v16];
          v18 = sub_10001B194(1);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            v19 = [v16 network];
            v20 = [v19 networkName];
            v21 = [v16 network];
            v22 = [v21 extendedPANID];
            *buf = 136316162;
            v391 = "[THThreadNetworkCredentialsKeychainBackingStore cleanThreadKeychainDatabase:]_block_invoke";
            v392 = 1024;
            v393 = 2862;
            v394 = 2112;
            v395 = v20;
            v396 = 2112;
            v397 = v22;
            v398 = 2112;
            v399 = v17;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s:%d: item : (name : %@ | xpanid : %@), key : %@", buf, 0x30u);
          }

          v23 = [v339 objectForKeyedSubscript:v17];
          if (v23)
          {
            v24 = [v16 creationDate];
            v25 = [v23 creationDate];
            v26 = [v24 compare:v25];

            if (v26 == -1)
            {
              [v339 setObject:v16 forKey:v17];
              v27 = v342;
              v28 = v23;
            }

            else
            {
              v27 = v342;
              v28 = v16;
            }

            [v27 addObject:v28];
          }

          else
          {
            [v339 setObject:v16 forKey:v17];
          }
        }

        v13 = [obj countByEnumeratingWithState:&v377 objects:v409 count:16];
      }

      while (v13);
    }

    v29 = sub_10001B194(1);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v30 = [v342 count];
      *buf = 136315650;
      v391 = "[THThreadNetworkCredentialsKeychainBackingStore cleanThreadKeychainDatabase:]_block_invoke";
      v392 = 1024;
      v393 = 2889;
      v394 = 2048;
      v395 = v30;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "%s:%d: End of 1st pass, size of cleanUpPreferredList : %lu ", buf, 0x1Cu);
    }

    v31 = [v339 allValues];
    v32 = [NSMutableArray arrayWithArray:v31];

    v33 = sub_10001B194(1);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = [v32 count];
      *buf = 136315650;
      v391 = "[THThreadNetworkCredentialsKeychainBackingStore cleanThreadKeychainDatabase:]_block_invoke";
      v392 = 1024;
      v393 = 2892;
      v394 = 2048;
      v395 = v34;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "%s:%d: Before 2nd pass, size of keepPreferredList : %lu ", buf, 0x1Cu);
    }

    [v339 removeAllObjects];
    v375 = 0u;
    v376 = 0u;
    v373 = 0u;
    v374 = 0u;
    v35 = v32;
    v290 = v35;
    obja = [v35 countByEnumeratingWithState:&v373 objects:v408 count:16];
    if (obja)
    {
      v314 = *v374;
      v270 = 136316418;
      do
      {
        for (j = 0; j != obja; j = j + 1)
        {
          if (*v374 != v314)
          {
            objc_enumerationMutation(v290);
          }

          v37 = *(*(&v373 + 1) + 8 * j);
          v38 = [v37 networkSignature];
          v39 = [v38 wifiPassword];
          if ([v39 isEqualToString:@"ApplePreferredNetworkRecordLabel"])
          {
          }

          else
          {
            v40 = [v37 networkSignature];
            v41 = [v40 wifiPassword];
            v42 = [v41 length];

            if (v42)
            {
              [v342 addObject:v37];
              [v297 addObject:v37];
              [*(v343 + 32) dumpPreferredNetwork:v37];
              v43 = sub_10001B194(1);
              if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_74;
              }

              v322 = [v37 networkSignature];
              v44 = [v322 ipv4NwSignature];
              v45 = [v37 networkSignature];
              v46 = [v45 ipv6NwSignature];
              v47 = [v37 networkSignature];
              v48 = [v47 wifiSSID];
              v49 = &stru_100079A28;
              if (v48)
              {
                v269 = [v37 networkSignature];
                v49 = [v269 wifiSSID];
                v268 = v49;
              }

              v50 = [v37 networkSignature];
              v51 = [v50 wifiPassword];
              *buf = 136316418;
              v391 = "[THThreadNetworkCredentialsKeychainBackingStore cleanThreadKeychainDatabase:]_block_invoke";
              v392 = 1024;
              v393 = 2944;
              v394 = 2112;
              v395 = v44;
              v396 = 2112;
              v397 = v46;
              v398 = 2112;
              v399 = v49;
              v400 = 2112;
              v401 = v51;
              _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "%s:%d Label is not equal to constant - ApplePreferredNetworkRecordLabel : ipv4 signature : %@, ipv6 signature : %@ , ssid : %@, pwd : %@", buf, 0x3Au);

              if (!v48)
              {
                goto LABEL_68;
              }

              v52 = v269;
              goto LABEL_67;
            }
          }

          v53 = sub_10001B194(1);
          if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
          {
            v305 = [v37 network];
            v323 = [v305 networkName];
            v298 = [v37 network];
            v54 = [v298 extendedPANID];
            v55 = [v37 networkSignature];
            v56 = [v55 wifiSSID];
            if (v56)
            {
              v278 = [v37 networkSignature];
              v57 = [v278 wifiSSID];
              v273 = v57;
            }

            else
            {
              v57 = &stru_100079A28;
            }

            v58 = [v37 credentialsDataSetRecord];
            v59 = [v37 networkSignature];
            v60 = [v59 wifiPassword];
            if (v60)
            {
              v283 = [v37 networkSignature];
              v275 = [v283 wifiPassword];
              v61 = v275;
            }

            else
            {
              v61 = @"EMPTY LABEL";
            }

            *buf = 136316674;
            v391 = "[THThreadNetworkCredentialsKeychainBackingStore cleanThreadKeychainDatabase:]_block_invoke";
            v392 = 1024;
            v393 = 2923;
            v394 = 2112;
            v395 = v323;
            v396 = 2112;
            v397 = v54;
            v398 = 2112;
            v399 = v57;
            v400 = 2048;
            v401 = v58;
            v402 = 2112;
            v403 = v61;
            _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_INFO, "%s:%d: No network signature modification is needed for this item : (name : %@ | xpanid : %@), ssid : %@, DS Record = %p, pwd = %@", buf, 0x44u);
            if (v60)
            {
            }

            if (v56)
            {
            }
          }

          v62 = [v37 credentialsDataSetRecord];

          if (v62)
          {
            v63 = [v37 credentialsDataSetRecord];
            [v340 addObject:v63];

            v43 = sub_10001B194(1);
            if (!os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
            {
              goto LABEL_74;
            }

            v306 = [v37 network];
            v324 = [v306 networkName];
            v64 = [v37 network];
            v65 = [v64 extendedPANID];
            v66 = [v37 networkSignature];
            v67 = [v66 wifiSSID];
            if (v67)
            {
              v272 = [v37 networkSignature];
              v68 = [v272 wifiSSID];
              v271 = v68;
            }

            else
            {
              v68 = &stru_100079A28;
            }

            v73 = [v37 credentialsDataSetRecord];
            v74 = [v37 networkSignature];
            v75 = [v74 wifiPassword];
            *buf = 136316674;
            v391 = "[THThreadNetworkCredentialsKeychainBackingStore cleanThreadKeychainDatabase:]_block_invoke";
            v392 = 1024;
            v393 = 2934;
            v394 = 2112;
            v395 = v324;
            v396 = 2112;
            v397 = v65;
            v398 = 2112;
            v399 = v68;
            v400 = 2048;
            v401 = v73;
            v402 = 2112;
            v403 = v75;
            _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "%s:%d: adding item to finalPreferredBARecordList - item : (name : %@ | xpanid : %@), ssid : %@, DS Record = %p, pwd = %@", buf, 0x44u);

            if (v67)
            {
            }

            v72 = v306;
            goto LABEL_73;
          }

          [v297 addObject:v37];
          v43 = sub_10001B194(1);
          if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_74;
          }

          v322 = [v37 networkSignature];
          v44 = [v322 ipv4NwSignature];
          v45 = [v37 networkSignature];
          v46 = [v45 ipv6NwSignature];
          v47 = [v37 networkSignature];
          v48 = [v47 wifiSSID];
          v69 = &stru_100079A28;
          if (v48)
          {
            v267 = [v37 networkSignature];
            v69 = [v267 wifiSSID];
            v266 = v69;
          }

          v70 = [v37 networkSignature];
          v71 = [v70 wifiPassword];
          *buf = 136316418;
          v391 = "[THThreadNetworkCredentialsKeychainBackingStore cleanThreadKeychainDatabase:]_block_invoke";
          v392 = 1024;
          v393 = 2929;
          v394 = 2112;
          v395 = v44;
          v396 = 2112;
          v397 = v46;
          v398 = 2112;
          v399 = v69;
          v400 = 2112;
          v401 = v71;
          _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "%s:%d DS Record is nil but Label is equal to constant - ApplePreferredNetworkRecordLabel or it is empty : ipv4 signature : %@, ipv6 signature : %@ , ssid : %@, pwd : %@", buf, 0x3Au);

          if (v48)
          {

            v52 = v267;
LABEL_67:
          }

LABEL_68:

          v72 = v322;
LABEL_73:

LABEL_74:
        }

        v35 = v290;
        obja = [v290 countByEnumeratingWithState:&v373 objects:v408 count:16];
      }

      while (obja);
    }

    [v35 removeAllObjects];
    v76 = sub_10001B194(1);
    if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
    {
      v77 = [v297 count];
      v78 = [v342 count];
      *buf = 136315906;
      v391 = "[THThreadNetworkCredentialsKeychainBackingStore cleanThreadKeychainDatabase:]_block_invoke";
      v392 = 1024;
      v393 = 2952;
      v394 = 2048;
      v395 = v77;
      v396 = 2048;
      v397 = v78;
      _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_INFO, "%s:%d: End of 2nd pass, size of keepPreferredListForModification : %lu, size of cleanUpPreferredList : %lu ", buf, 0x26u);
    }

    v79 = sub_10001B194(1);
    a1 = v343;
    if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
    {
      v80 = [v297 count];
      v81 = [v340 count];
      *buf = 136315906;
      v391 = "[THThreadNetworkCredentialsKeychainBackingStore cleanThreadKeychainDatabase:]_block_invoke";
      v392 = 1024;
      v393 = 2953;
      v394 = 2048;
      v395 = v80;
      v396 = 2048;
      v397 = v81;
      _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_INFO, "%s:%d: End of 2nd pass, size of keepPreferredListForModification : %lu , size of finalPreferredBARecordList : %lu", buf, 0x26u);
    }

    v82 = sub_10001B194(1);
    if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v391 = "[THThreadNetworkCredentialsKeychainBackingStore cleanThreadKeychainDatabase:]_block_invoke";
      v392 = 1024;
      v393 = 2955;
      _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_INFO, "%s:%d: Before 3rd pass starts", buf, 0x12u);
    }

    v371 = 0u;
    v372 = 0u;
    v369 = 0u;
    v370 = 0u;
    v307 = v297;
    v325 = [v307 countByEnumeratingWithState:&v369 objects:v407 count:16];
    if (v325)
    {
      v315 = *v370;
      do
      {
        v83 = 0;
        do
        {
          if (*v370 != v315)
          {
            objc_enumerationMutation(v307);
          }

          v84 = *(*(&v369 + 1) + 8 * v83);
          v85 = [v84 credentialsDataSetRecord];

          if (v85)
          {
            v86 = [v84 credentialsDataSetRecord];
LABEL_90:
            v89 = [v84 networkSignature];
            v90 = [v89 wifiPassword];
            if ([v90 isEqualToString:@"ApplePreferredNetworkRecordLabel"])
            {

              goto LABEL_97;
            }

            v91 = [v84 networkSignature];
            [v91 wifiPassword];
            v92 = objb = v86;
            v93 = [v92 length];

            v86 = objb;
            if (v93)
            {
              v94 = [THNetworkSignature alloc];
              v95 = [v84 networkSignature];
              v96 = [v95 ipv4NwSignature];
              v97 = [v84 networkSignature];
              v98 = [v97 ipv6NwSignature];
              v99 = [v84 networkSignature];
              v100 = [v99 wifiPassword];
              v101 = [v94 initWithSignatures:v96 ipv6NwSignature:v98 wifSSID:v100 wifiPassword:@"ApplePreferredNetworkRecordLabel"];

              a1 = v343;
              v86 = objb;

              if (!v101)
              {
                v102 = sub_10001B194(1);
                if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
                {
                  v124 = [v84 network];
                  v125 = [v124 networkName];
                  v126 = [v84 network];
                  v127 = [v126 extendedPANID];
                  *buf = 136315906;
                  v391 = "[THThreadNetworkCredentialsKeychainBackingStore cleanThreadKeychainDatabase:]_block_invoke";
                  v392 = 1024;
                  v393 = 2982;
                  v394 = 2112;
                  v395 = v125;
                  v396 = 2112;
                  v397 = v127;
                  _os_log_error_impl(&_mh_execute_header, v102, OS_LOG_TYPE_ERROR, "%s:%d:Error : initializing copy of nw signature for item : (name : %@ | xpanid : %@)", buf, 0x26u);
                }

                [v342 removeObject:v84];
                goto LABEL_106;
              }
            }

            else
            {
LABEL_97:
              v101 = [v84 networkSignature];
            }

            v103 = [THPreferredThreadNetwork alloc];
            v104 = [v84 network];
            v105 = [v84 creationDate];
            v106 = [v84 userInfo];
            v107 = [v103 initWithThreadNetwork:v104 networkSignature:v101 credentialsDataSetRecord:v86 creationDate:v105 lastModificationDate:0 userInfo:v106];

            if (v107)
            {
              v108 = [v107 credentialsDataSetRecord];
              [v340 addObject:v108];

              [v289 addObject:v107];
              v109 = sub_10001B194(1);
              if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
              {
                v112 = [v107 network];
                v113 = [v112 networkName];
                v114 = [v107 network];
                v115 = [v114 extendedPANID];
                *buf = 136315906;
                v391 = "[THThreadNetworkCredentialsKeychainBackingStore cleanThreadKeychainDatabase:]_block_invoke";
                v392 = 1024;
                v393 = 2997;
                v394 = 2112;
                v395 = v113;
                v396 = 2112;
                v397 = v115;
                _os_log_error_impl(&_mh_execute_header, v109, OS_LOG_TYPE_ERROR, "%s:%d: 3rd pass, updated Signature & adding to Final/ToBeUpdated Preferred List - item : (name : %@ | xpanid : %@)", buf, 0x26u);

                a1 = v343;
              }
            }

            else
            {
              v110 = sub_10001B194(1);
              if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
              {
                v116 = [v84 network];
                v117 = [v116 networkName];
                v118 = [v84 network];
                v119 = [v118 extendedPANID];
                *buf = 136315906;
                v391 = "[THThreadNetworkCredentialsKeychainBackingStore cleanThreadKeychainDatabase:]_block_invoke";
                v392 = 1024;
                v393 = 3000;
                v394 = 2112;
                v395 = v117;
                v396 = 2112;
                v397 = v119;
                _os_log_error_impl(&_mh_execute_header, v110, OS_LOG_TYPE_ERROR, "%s:%d: Failed to create instance of updated preferred network for item : (name : %@ | xpanid : %@)", buf, 0x26u);

                a1 = v343;
              }

              [v342 removeObject:v84];
            }

LABEL_106:
            goto LABEL_107;
          }

          v87 = *(a1 + 32);
          v88 = [v84 network];
          v86 = [v87 getOneRecordForNetwork:v88];

          if (v86)
          {
            goto LABEL_90;
          }

          v111 = sub_10001B194(1);
          if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
          {
            v120 = [v84 network];
            v121 = [v120 networkName];
            v122 = [v84 network];
            v123 = [v122 extendedPANID];
            *buf = 136315906;
            v391 = "[THThreadNetworkCredentialsKeychainBackingStore cleanThreadKeychainDatabase:]_block_invoke";
            v392 = 1024;
            v393 = 2963;
            v394 = 2112;
            v395 = v121;
            v396 = 2112;
            v397 = v123;
            _os_log_error_impl(&_mh_execute_header, v111, OS_LOG_TYPE_ERROR, "%s:%d: Failed to get ds record for item : (name : %@ | xpanid : %@)", buf, 0x26u);
          }

          [v342 addObject:v84];
LABEL_107:
          v83 = v83 + 1;
        }

        while (v325 != v83);
        v128 = [v307 countByEnumeratingWithState:&v369 objects:v407 count:16];
        v325 = v128;
      }

      while (v128);
    }

    v129 = sub_10001B194(1);
    if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
    {
      sub_10003E888(v289, v342);
    }

    v130 = sub_10001B194(1);
    if (os_log_type_enabled(v130, OS_LOG_TYPE_INFO))
    {
      v131 = [v340 count];
      v132 = [v289 count];
      *buf = 136315906;
      v391 = "[THThreadNetworkCredentialsKeychainBackingStore cleanThreadKeychainDatabase:]_block_invoke";
      v392 = 1024;
      v393 = 3006;
      v394 = 2048;
      v395 = v131;
      v396 = 2048;
      v397 = v132;
      _os_log_impl(&_mh_execute_header, v130, OS_LOG_TYPE_INFO, "%s:%d: End of 3rd pass, size of finalPreferredBARecordList : %lu, toBeUpdatedPreferredList : %lu ", buf, 0x26u);
    }

    [v307 removeAllObjects];
    v133 = sub_10001B194(1);
    if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
    {
      sub_10003E948(v289);
    }

    v367 = 0u;
    v368 = 0u;
    v365 = 0u;
    v366 = 0u;
    v134 = v289;
    v135 = [v134 countByEnumeratingWithState:&v365 objects:v406 count:16];
    if (v135)
    {
      v136 = v135;
      v137 = *v366;
      v276 = v134;
      do
      {
        v138 = 0;
        do
        {
          if (*v366 != v137)
          {
            objc_enumerationMutation(v134);
          }

          v139 = *(*(&v365 + 1) + 8 * v138);
          v364 = 0;
          [*(a1 + 32) dumpPreferredNetwork:v139];
          if (v139 && [*(a1 + 32) storePreferredEntryAndCheckForDup:v139 isDuplicate:&v364])
          {
            v140 = v364;
            v141 = sub_10001B194(1);
            v142 = os_log_type_enabled(v141, OS_LOG_TYPE_ERROR);
            if (v140 == 1)
            {
              if (v142)
              {
                v301 = [v139 network];
                obje = [v301 networkName];
                v293 = [v139 network];
                v328 = [v293 extendedPANID];
                v286 = [v139 networkSignature];
                v318 = [v286 ipv4NwSignature];
                v280 = [v139 networkSignature];
                v310 = [v280 ipv6NwSignature];
                v156 = [v139 networkSignature];
                v157 = [v156 wifiSSID];
                v158 = &stru_100079A28;
                if (v157)
                {
                  v269 = [v139 networkSignature];
                  v158 = [v269 wifiSSID];
                  v267 = v158;
                }

                v159 = [v139 networkSignature];
                v160 = [v159 wifiPassword];
                *buf = 136316930;
                v391 = "[THThreadNetworkCredentialsKeychainBackingStore cleanThreadKeychainDatabase:]_block_invoke";
                v392 = 1024;
                v393 = 3025;
                v394 = 2112;
                v395 = obje;
                v396 = 2112;
                v397 = v328;
                v398 = 2112;
                v399 = v318;
                v400 = 2112;
                v401 = v310;
                v402 = 2112;
                v403 = v158;
                v404 = 2112;
                v405 = v160;
                _os_log_error_impl(&_mh_execute_header, v141, OS_LOG_TYPE_ERROR, "%s:%d Updated the preferred Network : (name : %@ | xpanid : %@), ipv4 signature : %@, ipv6 signature : %@ , ssid : %@, pwd : %@", buf, 0x4Eu);

                if (v157)
                {
                }

                a1 = v343;
                v134 = v276;
              }

              v141 = [*(a1 + 32) checkIfPrefItemPresentInTheCleanupList:v139 cleanupList:v342];
              if (v141)
              {
                v143 = sub_10001B194(1);
                if (os_log_type_enabled(v143, OS_LOG_TYPE_ERROR))
                {
                  v302 = [v139 network];
                  objf = [v302 networkName];
                  v294 = [v139 network];
                  v329 = [v294 extendedPANID];
                  v287 = [v139 networkSignature];
                  v319 = [v287 ipv4NwSignature];
                  v281 = [v139 networkSignature];
                  v311 = [v281 ipv6NwSignature];
                  v161 = [v139 networkSignature];
                  v162 = [v161 wifiSSID];
                  v163 = &stru_100079A28;
                  if (v162)
                  {
                    v266 = [v139 networkSignature];
                    v163 = [v266 wifiSSID];
                    v263 = v163;
                  }

                  v164 = [v139 networkSignature];
                  v165 = [v164 wifiPassword];
                  *buf = 136316930;
                  v391 = "[THThreadNetworkCredentialsKeychainBackingStore cleanThreadKeychainDatabase:]_block_invoke";
                  v392 = 1024;
                  v393 = 3029;
                  v394 = 2112;
                  v395 = objf;
                  v396 = 2112;
                  v397 = v329;
                  v398 = 2112;
                  v399 = v319;
                  v400 = 2112;
                  v401 = v311;
                  v402 = 2112;
                  v403 = v163;
                  v404 = 2112;
                  v405 = v165;
                  _os_log_error_impl(&_mh_execute_header, v143, OS_LOG_TYPE_ERROR, "%s:%d Removing from  cleanUpPreferredList : (name : %@ | xpanid : %@), ipv4 signature : %@, ipv6 signature : %@ , ssid : %@, pwd : %@", buf, 0x4Eu);

                  if (v162)
                  {
                  }

                  a1 = v343;
                  v134 = v276;
                }

                [v342 removeObject:v141];
              }
            }

            else if (v142)
            {
              v308 = [v139 network];
              objc = [v308 networkName];
              v299 = [v139 network];
              v326 = [v299 extendedPANID];
              v291 = [v139 networkSignature];
              v316 = [v291 ipv4NwSignature];
              v284 = [v139 networkSignature];
              v145 = [v284 ipv6NwSignature];
              v146 = [v139 networkSignature];
              v147 = [v146 wifiSSID];
              v148 = &stru_100079A28;
              if (v147)
              {
                v270 = [v139 networkSignature];
                v148 = [v270 wifiSSID];
                v268 = v148;
              }

              v149 = [v139 networkSignature];
              v150 = [v149 wifiPassword];
              *buf = 136316930;
              v391 = "[THThreadNetworkCredentialsKeychainBackingStore cleanThreadKeychainDatabase:]_block_invoke";
              v392 = 1024;
              v393 = 3034;
              v394 = 2112;
              v395 = objc;
              v396 = 2112;
              v397 = v326;
              v398 = 2112;
              v399 = v316;
              v400 = 2112;
              v401 = v145;
              v402 = 2112;
              v403 = v148;
              v404 = 2112;
              v405 = v150;
              _os_log_error_impl(&_mh_execute_header, v141, OS_LOG_TYPE_ERROR, "%s:%d Stored a new entry for preferred Network : (name : %@ | xpanid : %@), ipv4 signature : %@, ipv6 signature : %@ , ssid : %@, pwd : %@", buf, 0x4Eu);

              if (v147)
              {
              }

              a1 = v343;
              v134 = v276;
            }
          }

          else
          {
            v144 = sub_10001B194(1);
            if (os_log_type_enabled(v144, OS_LOG_TYPE_ERROR))
            {
              v300 = [v139 network];
              objd = [v300 networkName];
              v292 = [v139 network];
              v327 = [v292 extendedPANID];
              v285 = [v139 networkSignature];
              v317 = [v285 ipv4NwSignature];
              v279 = [v139 networkSignature];
              v309 = [v279 ipv6NwSignature];
              v151 = [v139 networkSignature];
              v152 = [v151 wifiSSID];
              v153 = &stru_100079A28;
              if (v152)
              {
                v272 = [v139 networkSignature];
                v153 = [v272 wifiSSID];
                v271 = v153;
              }

              v154 = [v139 networkSignature];
              v155 = [v154 wifiPassword];
              *buf = 136316930;
              v391 = "[THThreadNetworkCredentialsKeychainBackingStore cleanThreadKeychainDatabase:]_block_invoke";
              v392 = 1024;
              v393 = 3039;
              v394 = 2112;
              v395 = objd;
              v396 = 2112;
              v397 = v327;
              v398 = 2112;
              v399 = v317;
              v400 = 2112;
              v401 = v309;
              v402 = 2112;
              v403 = v153;
              v404 = 2112;
              v405 = v155;
              _os_log_error_impl(&_mh_execute_header, v144, OS_LOG_TYPE_ERROR, "%s:%d Failed to store preferred network  : (name : %@ | xpanid : %@), ipv4 signature : %@, ipv6 signature : %@ , ssid : %@, pwd : %@", buf, 0x4Eu);

              if (v152)
              {
              }

              a1 = v343;
              v134 = v276;
            }

            v141 = [*(a1 + 32) getTheKeyFromPreferredNetworkEntry:v139];
            [v341 setObject:v139 forKey:v141];
          }

          v138 = v138 + 1;
        }

        while (v136 != v138);
        v166 = [v134 countByEnumeratingWithState:&v365 objects:v406 count:16];
        v136 = v166;
      }

      while (v166);
    }

    [v134 removeAllObjects];
    v167 = sub_10001B194(1);
    if (os_log_type_enabled(v167, OS_LOG_TYPE_ERROR))
    {
      sub_10003E9DC(v342);
    }

    v362 = 0u;
    v363 = 0u;
    v360 = 0u;
    v361 = 0u;
    v168 = v342;
    v169 = [v168 countByEnumeratingWithState:&v360 objects:v389 count:16];
    if (v169)
    {
      v170 = v169;
      v171 = *v361;
      objg = v168;
      do
      {
        v172 = 0;
        do
        {
          if (*v361 != v171)
          {
            objc_enumerationMutation(v168);
          }

          v173 = *(*(&v360 + 1) + 8 * v172);
          v174 = [*(a1 + 32) getTheKeyFromPreferredNetworkEntry:v173];
          v175 = [v341 objectForKeyedSubscript:v174];

          if (v175)
          {
            v176 = sub_10001B194(1);
            if (os_log_type_enabled(v176, OS_LOG_TYPE_ERROR))
            {
              v178 = [v173 network];
              v179 = [v178 networkName];
              v180 = [v173 network];
              v181 = [v180 extendedPANID];
              *buf = 136315906;
              v391 = "[THThreadNetworkCredentialsKeychainBackingStore cleanThreadKeychainDatabase:]_block_invoke";
              v392 = 1024;
              v393 = 3060;
              v394 = 2112;
              v395 = v179;
              v396 = 2112;
              v397 = v181;
              _os_log_error_impl(&_mh_execute_header, v176, OS_LOG_TYPE_ERROR, "%s:%d: Do not touch the preferred network entry : (name : %@ | xpanid : %@)", buf, 0x26u);

              a1 = v343;
              v168 = objg;
            }

            [*(a1 + 32) dumpPreferredNetwork:v173];
          }

          else if (([*(a1 + 32) deletePreferredNetworkEntryWithoutRecords:v173] & 1) == 0)
          {
            v177 = sub_10001B194(1);
            if (os_log_type_enabled(v177, OS_LOG_TYPE_ERROR))
            {
              v288 = [v173 network];
              v320 = [v288 networkName];
              v282 = [v173 network];
              v312 = [v282 extendedPANID];
              v277 = [v173 networkSignature];
              v303 = [v277 ipv4NwSignature];
              v274 = [v173 networkSignature];
              v295 = [v274 ipv6NwSignature];
              v182 = [v173 networkSignature];
              v183 = [v182 wifiSSID];
              v184 = &stru_100079A28;
              if (v183)
              {
                v272 = [v173 networkSignature];
                v184 = [v272 wifiSSID];
                v271 = v184;
              }

              v185 = [v173 networkSignature];
              v186 = [v185 wifiPassword];
              *buf = 136316930;
              v391 = "[THThreadNetworkCredentialsKeychainBackingStore cleanThreadKeychainDatabase:]_block_invoke";
              v392 = 1024;
              v393 = 3067;
              v394 = 2112;
              v395 = v320;
              v396 = 2112;
              v397 = v312;
              v398 = 2112;
              v399 = v303;
              v400 = 2112;
              v401 = v295;
              v402 = 2112;
              v403 = v184;
              v404 = 2112;
              v405 = v186;
              _os_log_error_impl(&_mh_execute_header, v177, OS_LOG_TYPE_ERROR, "%s:%d Failed to delete the previous preferred network entry : (name : %@ | xpanid : %@), ipv4 signature : %@, ipv6 signature : %@ , ssid : %@, pwd : %@", buf, 0x4Eu);

              if (v183)
              {
              }

              a1 = v343;
              v168 = objg;
            }
          }

          v172 = v172 + 1;
        }

        while (v170 != v172);
        v187 = [v168 countByEnumeratingWithState:&v360 objects:v389 count:16];
        v170 = v187;
      }

      while (v187);
    }

    [v341 removeAllObjects];
    [v168 removeAllObjects];
    v188 = [*(a1 + 32) getNumberOfPrefEntriesForTheCount:200];
    v189 = sub_10001B194(1);
    if (os_log_type_enabled(v189, OS_LOG_TYPE_INFO))
    {
      v190 = [v188 count];
      *buf = 136315650;
      v391 = "[THThreadNetworkCredentialsKeychainBackingStore cleanThreadKeychainDatabase:]_block_invoke";
      v392 = 1024;
      v393 = 3075;
      v394 = 2048;
      v395 = v190;
      _os_log_impl(&_mh_execute_header, v189, OS_LOG_TYPE_INFO, "%s:%d: End of 3rd Pass, size of preferred networks (prefNwFinalRecords) : %lu", buf, 0x1Cu);
    }

    v191 = [v188 count];
    v11 = *(&v382 + 1);
    *(&v383 + 1) = v191;
    *&v383 = *(&v382 + 1) - v191;

    v8 = &AWDPostMetric_ptr;
  }

  else
  {
    v290 = v9;
    v192 = sub_10001B194(1);
    if (os_log_type_enabled(v192, OS_LOG_TYPE_ERROR))
    {
      sub_10003EA70();
    }

    v383 = 0uLL;
  }

  v193 = [*(a1 + 32) getNumberOfRecordsForKeychainAccessGroup:@"0000000000" count:400];
  v194 = sub_10001B194(1);
  if (os_log_type_enabled(v194, OS_LOG_TYPE_ERROR))
  {
    sub_10003EAF4(v193);
  }

  v195 = [v193 count];
  *&v381 = v195;
  if (!v193)
  {
    v346 = 0u;
    v347 = 0u;
    v344 = 0u;
    v345 = 0u;
    v218 = v340;
    v234 = [v218 countByEnumeratingWithState:&v344 objects:v385 count:16];
    if (!v234)
    {
      goto LABEL_265;
    }

    v235 = v234;
    v296 = 0;
    v304 = v195;
    v313 = v11;
    v236 = *v345;
    while (1)
    {
      v237 = 0;
      do
      {
        if (*v345 != v236)
        {
          objc_enumerationMutation(v218);
        }

        v238 = *(*(&v344 + 1) + 8 * v237);
        if (v238 && [*(v343 + 32) updateRecord:*(*(&v344 + 1) + 8 * v237)])
        {
          v239 = sub_10001B194(1);
          if (!os_log_type_enabled(v239, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_239;
          }

          v240 = [v238 network];
          v241 = [v240 networkName];
          v242 = [v238 network];
          v243 = [v242 extendedPANID];
          *buf = 136315906;
          v391 = "[THThreadNetworkCredentialsKeychainBackingStore cleanThreadKeychainDatabase:]_block_invoke";
          v392 = 1024;
          v393 = 3152;
          v394 = 2112;
          v395 = v241;
          v396 = 2112;
          v397 = v243;
          v244 = v239;
          v245 = "%s:%d: Updated BA Record for item : (name : %@ | xpanid : %@)";
        }

        else
        {
          v239 = sub_10001B194(1);
          if (!os_log_type_enabled(v239, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_239;
          }

          v240 = [v238 network];
          v241 = [v240 networkName];
          v242 = [v238 network];
          v243 = [v242 extendedPANID];
          *buf = 136315906;
          v391 = "[THThreadNetworkCredentialsKeychainBackingStore cleanThreadKeychainDatabase:]_block_invoke";
          v392 = 1024;
          v393 = 3154;
          v394 = 2112;
          v395 = v241;
          v396 = 2112;
          v397 = v243;
          v244 = v239;
          v245 = "%s:%d: Failed to create instance of BA Record for item : (name : %@ | xpanid : %@)";
        }

        _os_log_error_impl(&_mh_execute_header, v244, OS_LOG_TYPE_ERROR, v245, buf, 0x26u);

LABEL_239:
        v237 = v237 + 1;
      }

      while (v235 != v237);
      v246 = [v218 countByEnumeratingWithState:&v344 objects:v385 count:16];
      v235 = v246;
      if (!v246)
      {
LABEL_264:
        a1 = v343;
        v11 = v313;
        v195 = v304;
        v193 = v296;
        goto LABEL_265;
      }
    }
  }

  if ([v193 count] <= 0x18F)
  {
    v304 = v195;
    v313 = v11;
    v196 = [v8[177] arrayWithArray:v340];
    v356 = 0u;
    v357 = 0u;
    v358 = 0u;
    v359 = 0u;
    v296 = v193;
    v197 = v193;
    v198 = [v197 countByEnumeratingWithState:&v356 objects:v388 count:16];
    if (!v198)
    {
      goto LABEL_208;
    }

    v199 = v198;
    v200 = *v357;
    while (1)
    {
      for (k = 0; k != v199; k = k + 1)
      {
        if (*v357 != v200)
        {
          objc_enumerationMutation(v197);
        }

        v202 = *(*(&v356 + 1) + 8 * k);
        if (v202)
        {
          if ([*(v343 + 32) checkIfActiveDatasetRecordIsPresentInTheGivenList:v340 Missinglist:v196 record:*(*(&v356 + 1) + 8 * k)])
          {
            v203 = sub_10001B194(1);
            if (os_log_type_enabled(v203, OS_LOG_TYPE_ERROR))
            {
              v330 = [v202 network];
              v204 = [v330 networkName];
              v321 = [v202 network];
              v205 = [v321 extendedPANID];
              v206 = [v202 borderAgent];
              v207 = [v206 discriminatorId];
              *buf = 136316162;
              v391 = "[THThreadNetworkCredentialsKeychainBackingStore cleanThreadKeychainDatabase:]_block_invoke";
              v392 = 1024;
              v393 = 3117;
              v394 = 2112;
              v395 = v204;
              v396 = 2112;
              v397 = v205;
              v398 = 2112;
              v399 = v207;
              v208 = v203;
              v209 = "%s:%d: Not deleting the ba record (name : %@ | xpanid : %@ | baID : %@), this belongs to Preferred BARecord List.";
              goto LABEL_203;
            }

LABEL_205:

            continue;
          }

          v210 = *(v343 + 32);
          v211 = [v202 network];
          v212 = [v202 borderAgent];
          v213 = [v210 deleteActiveDataSetRecordForNetworkAndBorderAgentId:v211 borderAgent:v212];

          if (v213)
          {
            v203 = sub_10001B194(1);
            if (!os_log_type_enabled(v203, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_205;
            }

            v330 = [v202 network];
            v204 = [v330 networkName];
            v321 = [v202 network];
            v214 = [v321 extendedPANID];
            v215 = [v202 borderAgent];
            v216 = [v215 discriminatorId];
            *buf = 136316162;
            v391 = "[THThreadNetworkCredentialsKeychainBackingStore cleanThreadKeychainDatabase:]_block_invoke";
            v392 = 1024;
            v393 = 3109;
            v394 = 2112;
            v395 = v204;
            v396 = 2112;
            v397 = v214;
            v398 = 2112;
            v399 = v216;
            _os_log_error_impl(&_mh_execute_header, v203, OS_LOG_TYPE_ERROR, "%s:%d: Failed to delete border agent record (name : %@ | xpanid : %@ | baID : %@)", buf, 0x30u);
          }

          else
          {
            [*(v343 + 32) thDumpActiveDatasetRecord:v202];
            v203 = sub_10001B194(1);
            if (!os_log_type_enabled(v203, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_205;
            }

            v330 = [v202 network];
            v204 = [v330 networkName];
            v321 = [v202 network];
            v205 = [v321 extendedPANID];
            v206 = [v202 borderAgent];
            v207 = [v206 discriminatorId];
            *buf = 136316162;
            v391 = "[THThreadNetworkCredentialsKeychainBackingStore cleanThreadKeychainDatabase:]_block_invoke";
            v392 = 1024;
            v393 = 3112;
            v394 = 2112;
            v395 = v204;
            v396 = 2112;
            v397 = v205;
            v398 = 2112;
            v399 = v207;
            v208 = v203;
            v209 = "%s:%d: Deleted the ba record (name : %@ | xpanid : %@ | baID : %@), this doesn't belong to Preferred BARecord List.";
LABEL_203:
            _os_log_error_impl(&_mh_execute_header, v208, OS_LOG_TYPE_ERROR, v209, buf, 0x30u);
          }

          goto LABEL_205;
        }
      }

      v199 = [v197 countByEnumeratingWithState:&v356 objects:v388 count:16];
      if (!v199)
      {
LABEL_208:

        v217 = sub_10001B194(1);
        if (os_log_type_enabled(v217, OS_LOG_TYPE_ERROR))
        {
          sub_10003EC0C(v196);
        }

        v354 = 0u;
        v355 = 0u;
        v352 = 0u;
        v353 = 0u;
        v218 = v196;
        v219 = [v218 countByEnumeratingWithState:&v352 objects:v387 count:16];
        if (!v219)
        {
LABEL_225:

          goto LABEL_264;
        }

        v220 = v219;
        v221 = *v353;
        while (2)
        {
          v222 = 0;
LABEL_213:
          if (*v353 != v221)
          {
            objc_enumerationMutation(v218);
          }

          v223 = *(*(&v352 + 1) + 8 * v222);
          if (v223 && [*(v343 + 32) updateRecord:*(*(&v352 + 1) + 8 * v222)])
          {
            v224 = sub_10001B194(1);
            if (os_log_type_enabled(v224, OS_LOG_TYPE_ERROR))
            {
              v225 = [v223 network];
              v226 = [v225 networkName];
              v227 = [v223 network];
              v228 = [v227 extendedPANID];
              *buf = 136315906;
              v391 = "[THThreadNetworkCredentialsKeychainBackingStore cleanThreadKeychainDatabase:]_block_invoke";
              v392 = 1024;
              v393 = 3126;
              v394 = 2112;
              v395 = v226;
              v396 = 2112;
              v397 = v228;
              v229 = v224;
              v230 = "%s:%d: Updated Missing BA Record for item : (name : %@ | xpanid : %@)";
              goto LABEL_223;
            }
          }

          else
          {
            v224 = sub_10001B194(1);
            if (os_log_type_enabled(v224, OS_LOG_TYPE_ERROR))
            {
              v225 = [v223 network];
              v226 = [v225 networkName];
              v227 = [v223 network];
              v228 = [v227 extendedPANID];
              *buf = 136315906;
              v391 = "[THThreadNetworkCredentialsKeychainBackingStore cleanThreadKeychainDatabase:]_block_invoke";
              v392 = 1024;
              v393 = 3128;
              v394 = 2112;
              v395 = v226;
              v396 = 2112;
              v397 = v228;
              v229 = v224;
              v230 = "%s:%d: Failed to create instance of Missing BA Record for item : (name : %@ | xpanid : %@)";
LABEL_223:
              _os_log_error_impl(&_mh_execute_header, v229, OS_LOG_TYPE_ERROR, v230, buf, 0x26u);
            }
          }

          if (v220 == ++v222)
          {
            v231 = [v218 countByEnumeratingWithState:&v352 objects:v387 count:16];
            v220 = v231;
            if (!v231)
            {
              goto LABEL_225;
            }

            continue;
          }

          goto LABEL_213;
        }
      }
    }
  }

  if (([*(a1 + 32) deleteAllRecordsForKeychainAccessGroup:@"0000000000"] & 1) == 0)
  {
    v247 = sub_10001B194(1);
    if (os_log_type_enabled(v247, OS_LOG_TYPE_ERROR))
    {
      sub_10003EB88();
    }
  }

  v350 = 0u;
  v351 = 0u;
  v348 = 0u;
  v349 = 0u;
  v218 = v340;
  v248 = [v218 countByEnumeratingWithState:&v348 objects:v386 count:16];
  if (v248)
  {
    v249 = v248;
    v296 = v193;
    v304 = v195;
    v313 = v11;
    v250 = *v349;
    while (1)
    {
      v251 = 0;
      do
      {
        if (*v349 != v250)
        {
          objc_enumerationMutation(v218);
        }

        v252 = *(*(&v348 + 1) + 8 * v251);
        if (v252 && [*(v343 + 32) updateRecord:*(*(&v348 + 1) + 8 * v251)])
        {
          v253 = sub_10001B194(1);
          if (!os_log_type_enabled(v253, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_259;
          }

          v254 = [v252 network];
          v255 = [v254 networkName];
          v256 = [v252 network];
          v257 = [v256 extendedPANID];
          *buf = 136315906;
          v391 = "[THThreadNetworkCredentialsKeychainBackingStore cleanThreadKeychainDatabase:]_block_invoke";
          v392 = 1024;
          v393 = 3142;
          v394 = 2112;
          v395 = v255;
          v396 = 2112;
          v397 = v257;
          v258 = v253;
          v259 = "%s:%d: Updated BA Record for item : (name : %@ | xpanid : %@)";
        }

        else
        {
          v253 = sub_10001B194(1);
          if (!os_log_type_enabled(v253, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_259;
          }

          v254 = [v252 network];
          v255 = [v254 networkName];
          v256 = [v252 network];
          v257 = [v256 extendedPANID];
          *buf = 136315906;
          v391 = "[THThreadNetworkCredentialsKeychainBackingStore cleanThreadKeychainDatabase:]_block_invoke";
          v392 = 1024;
          v393 = 3144;
          v394 = 2112;
          v395 = v255;
          v396 = 2112;
          v397 = v257;
          v258 = v253;
          v259 = "%s:%d: Failed to create instance of BA Record for item : (name : %@ | xpanid : %@)";
        }

        _os_log_error_impl(&_mh_execute_header, v258, OS_LOG_TYPE_ERROR, v259, buf, 0x26u);

LABEL_259:
        v251 = v251 + 1;
      }

      while (v249 != v251);
      v260 = [v218 countByEnumeratingWithState:&v348 objects:v386 count:16];
      v249 = v260;
      if (!v260)
      {
        goto LABEL_264;
      }
    }
  }

LABEL_265:

  v261 = [*(a1 + 32) getNumberOfRecordsForKeychainAccessGroup:@"0000000000" count:400];

  v262 = sub_10001B194(1);
  if (os_log_type_enabled(v262, OS_LOG_TYPE_ERROR))
  {
    sub_10003ECA0(v261);
  }

  *&v382 = [v261 count];
  *(&v381 + 1) = &v195[-v382];
  if (v11)
  {
    [*(a1 + 32) sendCAMetricsForCleanUpRecordInfo:&v381];
  }

  (*(*(a1 + 40) + 16))();

  v2 = v264;
  v233 = v339;
LABEL_270:

  objc_autoreleasePoolPop(v2);
}

void sub_10002EBD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

intptr_t sub_10002EBF8(uint64_t a1)
{
  [*(*(*(a1 + 40) + 8) + 40) stopScan];
  v2 = *(a1 + 32);

  return dispatch_semaphore_signal(v2);
}

int64_t sub_100030358(id a1, id a2, id a3)
{
  v4 = a3;
  v5 = [a2 creationDate];
  v6 = [v4 creationDate];

  v7 = [v5 compare:v6];
  return v7;
}

void sub_1000307CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100030D9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

int64_t sub_100033254(id a1, id a2, id a3)
{
  v4 = a3;
  v5 = [a2 creationDate];
  v6 = [v4 creationDate];

  v7 = [v5 compare:v6];
  return v7;
}

int64_t sub_100036F04(id a1, id a2, id a3)
{
  v4 = a3;
  v5 = [a2 lastModificationDate];
  v6 = [v4 lastModificationDate];

  v7 = [v5 compare:v6];
  return v7;
}

int64_t sub_1000372C8(id a1, id a2, id a3)
{
  v4 = a3;
  v5 = [a2 lastModificationDate];
  v6 = [v4 lastModificationDate];

  v7 = [v5 compare:v6];
  return v7;
}

id sub_100039F40()
{
  v0 = sub_10003AF24();
  v1 = sub_10001B194(1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    v2 = [v0 substringToIndex:16];
    v5 = 138412546;
    v6 = v2;
    v7 = 2112;
    v8 = v0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Generated new BAID: %@, full string: %@", &v5, 0x16u);
  }

  v3 = [v0 substringToIndex:16];

  return v3;
}

id sub_10003AB38()
{
  v0 = sub_10003AF24();
  v1 = sub_10001B194(1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    v2 = [v0 substringToIndex:16];
    v5 = 138412546;
    v6 = v2;
    v7 = 2112;
    v8 = v0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Generated new XPANID: %@, full string: %@", &v5, 0x16u);
  }

  v3 = [v0 substringToIndex:16];

  return v3;
}

id sub_10003AC40()
{
  v0 = [NSMutableData dataWithLength:16];
  if (SecRandomCopyBytes(kSecRandomDefault, [v0 length], objc_msgSend(v0, "mutableBytes")))
  {
    v4 = sub_10001B194(1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000429A8();
    }

    __assert_rtn("generateNewNetworkKeyAsByteArray", "THThreadNetworkCredentialsKeychainBackingStore.m", 6172, "false");
  }

  v1 = [[NSData alloc] initWithBytes:objc_msgSend(v0 length:{"bytes"), objc_msgSend(v0, "length")}];
  v2 = sub_10001B194(1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = v1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Generated the new Network Key :: %@ ", &v5, 0xCu);
  }

  return v1;
}

id sub_10003ADD4()
{
  v0 = [NSMutableString stringWithCapacity:0];
  v1 = arc4random();
  v2 = [NSString stringWithFormat:@"%s%d", "MyHome", v1 + ((v1 / 0x7FFFFFFF) | ((v1 / 0x7FFFFFFF) << 31)) + 1];
  [v0 appendString:v2];

  v3 = sub_10001B194(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v6 = v0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Generated new Network Name: %@", buf, 0xCu);
  }

  return v0;
}

id sub_10003AF24()
{
  v6[0] = 0;
  v6[1] = 0;
  v0 = +[NSUUID UUID];
  [v0 getUUIDBytes:v6];

  v1 = [NSData dataWithBytes:v6 length:16];
  sub_1000085B4(v6, 16, v5, 0x24uLL, 0);
  v2 = [NSString stringWithUTF8String:v5];
  v3 = sub_10001B194(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1000429E4();
  }

  return v2;
}

id sub_10003B038()
{
  v6[0] = 0;
  v6[1] = 0;
  v0 = +[NSUUID UUID];
  [v0 getUUIDBytes:v6];

  v1 = [NSData dataWithBytes:v6 length:16];
  v2 = sub_10001B194(1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v4 = 138412290;
    v5 = v1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Generated new uuid_temp: %@", &v4, 0xCu);
  }

  return v1;
}

unint64_t sub_10003B130()
{
  v0 = sub_10003B038();
  v3 = 0;
  [v0 getBytes:&v3 length:8];
  v3 = bswap64(v3);
  NSLog(@"Generated new XPANID Temp: %@, XPANID: 0x%016llx", v0, v3);
  v1 = v3;

  return v1;
}

id sub_10003B198()
{
  v0 = sub_10003AF24();
  v1 = sub_10001B194(1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    v3 = 138412290;
    v4 = v0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Generated new CC %@ ", &v3, 0xCu);
  }

  return v0;
}

id sub_10003B25C()
{
  v0 = sub_10003AF24();
  v1 = sub_10001B194(1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    v3 = 138412290;
    v4 = v0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Generated new Master Key %@ ", &v3, 0xCu);
  }

  return v0;
}

id sub_10003B320(unsigned __int8 *a1, unsigned int a2)
{
  if (a1)
  {
    v3 = a1;
    v4 = [NSMutableString stringWithCapacity:2 * a2];
    if (a2)
    {
      v5 = a2;
      do
      {
        v6 = *v3++;
        v7 = [NSString stringWithFormat:@"%02lx", v6];
        [v4 appendString:v7];

        --v5;
      }

      while (v5);
    }

    v8 = [NSString stringWithString:v4];
  }

  else
  {
    v8 = +[NSString string];
  }

  return v8;
}

id sub_10003B408(uint64_t a1)
{
  v1 = a1;
  v2 = [NSMutableString stringWithCapacity:a1];
  if (v1 >= 1)
  {
    do
    {
      [v2 appendFormat:@"%C", objc_msgSend(@"ABCDEFGHJKLMNPRSTUVWXY0123456789", "characterAtIndex:", arc4random() % objc_msgSend(@"ABCDEFGHJKLMNPRSTUVWXY0123456789", "length"))];
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_10003B5D8()
{
  sub_10003B538();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003B648()
{
  sub_10003B538();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003B6B8()
{
  sub_10003B538();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003B728()
{
  sub_10003B57C();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10003B820()
{
  sub_10003B538();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003B890()
{
  sub_100008428();
  sub_10003B4BC();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_10003B914()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003B998()
{
  sub_10003B538();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003BA08()
{
  sub_100008428();
  sub_10003B4BC();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_10003BA8C()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003BB10()
{
  sub_10003B538();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003BB80(uint64_t a1)
{
  v1 = [*(*(*a1 + 8) + 40) description];
  [v1 UTF8String];
  sub_10003B4D0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10003BC34(uint64_t a1)
{
  [*(*(*a1 + 8) + 40) count];
  sub_10003B4D0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10003BCC4()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003BD48()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003BDCC()
{
  sub_10003B554();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003BE08()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003BE8C()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003BF90()
{
  sub_10003B538();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003C000()
{
  sub_10003B57C();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10003C080()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003C104()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003C188()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003C20C()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003C290()
{
  sub_100008428();
  sub_10003B544();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_10003C314()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003C398()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003C41C()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003C4A0()
{
  sub_10003B57C();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10003C520()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003C5A4()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003C628()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003C6AC()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003C730()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003C7B4()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003C838()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003C8BC()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003C940()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003C9C4()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003CC48()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003CCCC()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003CD50()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003CDD4()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003CE58()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003CEDC()
{
  sub_100008428();
  sub_10003B4BC();
  sub_10003B59C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void sub_10003CF68()
{
  sub_10003B538();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003CFD8()
{
  sub_10003B538();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003D048()
{
  sub_10003B538();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003D0B8()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003D13C(id *a1)
{
  v1 = [*a1 networkName];
  sub_10003B538();
  sub_10003B4D0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10003D1E4()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003D268(void *a1)
{
  [a1 count];
  sub_100008428();
  sub_10003B4E0();
  sub_10003B4D0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_10003D2FC(void *a1)
{
  v1 = [a1 network];
  v2 = [v1 networkName];
  sub_100008428();
  sub_10003B4BC();
  sub_10003B4D0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_10003D3B4()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003D438()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003D4BC()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003D540()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003D5C4()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003D648()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003D6CC()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003D750()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003D7D4()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003D858()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003D8DC()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003D960()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003D9E4()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003DA68()
{
  sub_100008428();
  sub_10003B59C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10003DB00()
{
  sub_100008428();
  sub_10003B544();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_10003DB84()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003DC08(void *a1, void *a2, NSObject *a3)
{
  v17 = [a1 network];
  v5 = [v17 networkName];
  v16 = [a1 network];
  v6 = [v16 extendedPANID];
  v7 = [a1 borderAgent];
  v8 = [v7 discriminatorId];
  v9 = [a2 network];
  v10 = [v9 networkName];
  v11 = [a2 network];
  v12 = [v11 extendedPANID];
  v13 = [a2 borderAgent];
  v14 = [v13 discriminatorId];
  *buf = 136316930;
  v19 = "[THThreadNetworkCredentialsKeychainBackingStore checkIfActiveDatasetRecordIsPresentInTheGivenList:Missinglist:record:]";
  v20 = 1024;
  v21 = 2587;
  v22 = 2112;
  v23 = v5;
  v24 = 2112;
  v25 = v6;
  v26 = 2112;
  v27 = v8;
  v28 = 2112;
  v29 = v10;
  v30 = 2112;
  v31 = v12;
  v32 = 2112;
  v33 = v14;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "%s:%d: record (name : %@ | xpanid : %@ | baID : %@) is matching with listItem record (name : %@ | xpanid : %@ | baID : %@)", buf, 0x4Eu);
}

void sub_10003DDE0()
{
  sub_10003B554();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003DE1C(void *a1)
{
  v1 = [a1 uniqueIdentifier];
  v2 = [v1 UUIDString];
  [v2 UTF8String];
  sub_10003B538();
  sub_10003B4D0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_10003DEC8(void *a1)
{
  v1 = [a1 borderAgent];
  v2 = [v1 discriminatorId];
  sub_10003B538();
  sub_10003B4D0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_10003DF6C(void *a1)
{
  v1 = [a1 network];
  v2 = [v1 networkName];
  sub_10003B538();
  sub_10003B4D0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_10003E010(void *a1)
{
  v1 = [a1 network];
  v2 = [v1 extendedPANID];
  sub_10003B538();
  sub_10003B4D0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_10003E0B4(void *a1)
{
  v1 = [a1 credentials];
  v2 = [v1 PANID];
  sub_10003B538();
  sub_10003B4D0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_10003E158(void *a1)
{
  v1 = [a1 credentials];
  v2 = [v1 masterKey];
  sub_10003B538();
  sub_10003B4D0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_10003E1FC(void *a1)
{
  v1 = [a1 credentials];
  v2 = [v1 PSKc];
  sub_10003B538();
  sub_10003B4D0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_10003E2A0(void *a1)
{
  v1 = [a1 credentials];
  v2 = [v1 passPhrase];
  sub_10003B538();
  sub_10003B4D0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_10003E344(void *a1)
{
  v1 = [a1 credentials];
  [v1 channel];
  sub_10003B560();
  sub_10003B4D0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_10003E3D4(void *a1)
{
  v1 = [a1 credentialsDataSet];
  v2 = [v1 dataSetArray];
  sub_10003B538();
  sub_10003B4D0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_10003E478(void *a1)
{
  v1 = [a1 credentials];
  v2 = [v1 userInfo];
  sub_10003B538();
  sub_10003B4D0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_10003E51C(void *a1)
{
  v1 = [a1 keychainAccessGroup];
  sub_10003B538();
  sub_10003B4D0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10003E5A8(void *a1)
{
  v1 = [a1 creationDate];
  sub_10003B538();
  sub_10003B4D0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10003E634(void *a1)
{
  v1 = [a1 lastModificationDate];
  sub_10003B538();
  sub_10003B4D0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10003E6C0()
{
  sub_10003B554();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003E6FC()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003E780()
{
  sub_100008428();
  sub_10003B544();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_10003E804()
{
  sub_100008428();
  sub_10003B544();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_10003E888(void *a1, void *a2)
{
  [a1 count];
  [a2 count];
  sub_100008428();
  sub_10003B4D0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x26u);
}

void sub_10003E948(void *a1)
{
  [a1 count];
  sub_100008428();
  sub_10003B4E0();
  sub_10003B4D0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_10003E9DC(void *a1)
{
  [a1 count];
  sub_100008428();
  sub_10003B4E0();
  sub_10003B4D0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_10003EA70()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003EAF4(void *a1)
{
  [a1 count];
  sub_100008428();
  sub_10003B4E0();
  sub_10003B4D0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_10003EB88()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003EC0C(void *a1)
{
  [a1 count];
  sub_100008428();
  sub_10003B4E0();
  sub_10003B4D0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_10003ECA0(void *a1)
{
  [a1 count];
  sub_100008428();
  sub_10003B4E0();
  sub_10003B4D0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_10003ED34()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003EDB8(void *a1)
{
  v1 = [a1 network];
  v2 = [v1 networkName];
  sub_100008428();
  sub_10003B4BC();
  sub_10003B4D0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_10003EE70()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003EEF4()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003EF78()
{
  sub_100008428();
  sub_10003B4E0();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_10003EFFC(void *a1, void *a2)
{
  v3 = [a1 networkName];
  v4 = [a2 networkName];
  sub_10003B57C();
  sub_10003B4D0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);
}

void sub_10003F0C0()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003F144()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003F1C8()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003F24C(void *a1)
{
  v1 = [a1 wifiSSID];
  sub_100008428();
  sub_10003B4BC();
  sub_10003B4D0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_10003F2EC()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003F370()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003F3F4()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003F478()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003F4FC()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003F580()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003F604(void *a1)
{
  v1 = [a1 network];
  v2 = [v1 networkName];
  sub_10003B538();
  sub_10003B4D0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_10003F6A8(void *a1)
{
  v1 = [a1 network];
  v2 = [v1 networkName];
  sub_100008428();
  sub_10003B4BC();
  sub_10003B4D0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_10003F760()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003F7E4(void *a1)
{
  v1 = [a1 network];
  v2 = [v1 networkName];
  sub_100008428();
  sub_10003B4BC();
  sub_10003B4D0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_10003F89C()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003F920()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003F9A4()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003FA28()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003FAAC()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003FB30()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003FBB4()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003FC38()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003FCBC()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003FD40(void *a1)
{
  [a1 count];
  sub_100008428();
  sub_10003B4E0();
  sub_10003B4D0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_10003FDD4()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003FE58()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003FEDC()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003FF60()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10003FFE4(void *a1)
{
  v1 = [a1 wifiSSID];
  sub_100008428();
  sub_10003B4BC();
  sub_10003B4D0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_100040084()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100040108()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10004018C()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100040210(void *a1)
{
  [a1 count];
  sub_100008428();
  sub_10003B4D0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x22u);
}

void sub_1000402BC()
{
  sub_100008428();
  sub_10003B544();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_100040340()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000403C4()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100040448(void *a1)
{
  [a1 count];
  sub_100008428();
  sub_10003B4E0();
  sub_10003B4D0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000404DC()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100040560()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000405E4()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100040668()
{
  sub_10003B58C();
  v2 = [v1 network];
  v3 = [v2 networkName];
  v4 = [v0 network];
  v5 = [v4 extendedPANID];
  sub_100008428();
  sub_10003B504();
  sub_10003B528();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x2Cu);
}

void sub_10004074C()
{
  sub_10003B5AC();
  v2 = [v1 network];
  [v2 networkName];
  objc_claimAutoreleasedReturnValue();
  v3 = [sub_10003B5B8() network];
  v4 = [v3 extendedPANID];
  sub_100008428();
  sub_10003B4F4();
  sub_10003B56C();
  sub_10003B528();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);
}

void sub_100040830(void *a1)
{
  v1 = [a1 network];
  v2 = [v1 networkName];
  sub_100008428();
  sub_10003B4BC();
  sub_10003B4D0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_1000408E8()
{
  sub_10003B58C();
  v2 = [v1 network];
  v3 = [v2 networkName];
  v4 = [v0 network];
  v5 = [v4 extendedPANID];
  sub_100008428();
  sub_10003B504();
  sub_10003B528();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x2Cu);
}

void sub_1000409CC()
{
  sub_10003B5AC();
  v2 = [v1 network];
  [v2 networkName];
  objc_claimAutoreleasedReturnValue();
  v3 = [sub_10003B5B8() network];
  v4 = [v3 extendedPANID];
  sub_100008428();
  sub_10003B4F4();
  sub_10003B56C();
  sub_10003B528();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);
}

void sub_100040AB0(void *a1)
{
  v1 = [a1 network];
  v2 = [v1 networkName];
  sub_100008428();
  sub_10003B4BC();
  sub_10003B4D0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_100040B68()
{
  sub_100008428();
  sub_10003B544();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_100040BEC()
{
  sub_10003B58C();
  v2 = [v1 network];
  v3 = [v2 networkName];
  v4 = [v0 network];
  v5 = [v4 extendedPANID];
  sub_100008428();
  sub_10003B504();
  sub_10003B528();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x2Cu);
}

void sub_100040CD0()
{
  sub_10003B5AC();
  v2 = [v1 network];
  [v2 networkName];
  objc_claimAutoreleasedReturnValue();
  v3 = [sub_10003B5B8() network];
  v4 = [v3 extendedPANID];
  sub_100008428();
  sub_10003B4F4();
  sub_10003B56C();
  sub_10003B528();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);
}

void sub_100040DB4()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100040E38(void *a1)
{
  v1 = [a1 credentialsDataSet];
  v2 = [v1 dataSetArray];
  sub_100008428();
  sub_10003B4BC();
  sub_10003B4D0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_100040EF0(void *a1)
{
  v1 = [a1 credentialsDataSet];
  v2 = [v1 dataSetArray];
  sub_100008428();
  sub_10003B4BC();
  sub_10003B4D0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_100040FA8()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10004102C()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000410B0()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100041134()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000411B8()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10004123C()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000412C0(void *a1)
{
  [a1 count];
  sub_100008428();
  sub_10003B4E0();
  sub_10003B4D0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_100041354()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000413D8()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10004145C(void *a1)
{
  v1 = [a1 network];
  v2 = [v1 networkName];
  sub_10003B538();
  sub_10003B4D0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_100041500()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100041584()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100041608()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10004168C()
{
  sub_10003B5AC();
  v2 = [v1 network];
  [v2 networkName];
  objc_claimAutoreleasedReturnValue();
  v3 = [sub_10003B5B8() network];
  v4 = [v3 extendedPANID];
  sub_100008428();
  sub_10003B4F4();
  sub_10003B56C();
  sub_10003B528();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);
}

void sub_100041770()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000417F4()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100041878()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000418FC(void *a1)
{
  v1 = [a1 network];
  v2 = [v1 networkName];
  sub_100008428();
  sub_10003B4BC();
  sub_10003B4D0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_1000419B4(void *a1)
{
  v1 = [a1 network];
  v2 = [v1 networkName];
  sub_100008428();
  sub_10003B4BC();
  sub_10003B4D0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_100041A6C()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100041AF0(void *a1, void *a2, NSObject *a3)
{
  v6 = [a1 network];
  v7 = [v6 networkName];
  v8 = [a1 network];
  v9 = [v8 extendedPANID];
  v10 = [a2 network];
  v11 = [v10 networkName];
  v12 = [a2 network];
  v13 = [v12 extendedPANID];
  v16[0] = 136316418;
  sub_100008428();
  sub_10003B4F4();
  v17 = v7;
  v18 = v14;
  v19 = v9;
  v20 = v14;
  v21 = v11;
  v22 = v14;
  v23 = v15;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "%s:%d:Preferred network entry (name : %@, xpanid : %@), record netowrk (name : %@, xpanid : %@) and datasets are matching. No need to update", v16, 0x3Au);
}

void sub_100041C58()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100041CDC()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100041D60()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100041DE4()
{
  sub_100008428();
  sub_10003B4BC();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_100041E68()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100041EEC()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100041F70()
{
  sub_10003B554();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100041FAC()
{
  sub_10003B560();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10004201C()
{
  sub_10003B560();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10004208C()
{
  sub_10003B560();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000420FC()
{
  sub_10003B554();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100042138()
{
  sub_10003B560();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000421A8()
{
  sub_10003B560();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100042218()
{
  sub_10003B560();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100042288()
{
  sub_10003B560();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000422F8()
{
  sub_10003B560();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100042368(unsigned __int8 *a1)
{
  v6 = *a1;
  sub_100008438();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000423F4()
{
  sub_10003B560();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100042464()
{
  sub_10003B554();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000424A0()
{
  sub_10003B554();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000424DC()
{
  sub_10003B554();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100042518()
{
  sub_10003B554();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100042554()
{
  sub_10003B554();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100042590()
{
  sub_10003B554();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000425CC()
{
  sub_10003B554();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100042608()
{
  sub_10003B554();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100042644()
{
  sub_10003B554();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100042680()
{
  sub_10003B538();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000426F0()
{
  sub_10003B554();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004272C()
{
  sub_10003B554();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100042768()
{
  sub_10003B554();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000427A4()
{
  sub_10003B554();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000427E0()
{
  sub_10003B554();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004281C()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000428A0()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100042924()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000429A8()
{
  sub_10003B554();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000429E4()
{
  sub_10003B538();
  sub_10003B59C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100043E08(void *a1, NSObject *a2)
{
  v4 = [a1 network];
  v5 = [v4 networkName];
  v6 = [a1 network];
  v7 = [v6 extendedPANID];
  v8 = [a1 keychainAccessGroup];
  v9 = 138412802;
  v10 = v5;
  v11 = 2112;
  v12 = v7;
  v13 = 2112;
  v14 = v8;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to calculate UUID (name=%@; xpanid=%@; keychainAccessGroup=%@)!", &v9, 0x20u);
}

void sub_100043F10()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100043F94(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 uniqueIdentifier];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Warning: decoded record with identifier %@ but does not match expected %@!", &v6, 0x16u);
}

void sub_100044044()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000440C8(void *a1, uint64_t a2, NSObject *a3)
{
  v6 = [a1 network];
  v7 = [v6 networkName];
  v8 = [a1 network];
  v9 = [v8 extendedPANID];
  v10 = 138412802;
  v11 = v7;
  v12 = 2112;
  v13 = v9;
  v14 = 2112;
  v15 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Illegal attempt to form keychain item with insufficient information (name=%@; xpanid=%@; uuid=%@)!", &v10, 0x20u);
}

void sub_10004730C()
{
  sub_100008428();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100047394()
{
  sub_100008428();
  sub_10003B4BC();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_100047418()
{
  sub_100008428();
  sub_10003B4BC();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_10004749C()
{
  sub_100008428();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100047624()
{
  sub_100008428();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10004772C()
{
  sub_100008428();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000478AC(uint64_t a1)
{
  v5 = *(a1 + 32);
  v2 = objc_opt_new();
  v3 = v5[1];
  v5[1] = v2;

  v4 = v5[1];
  if (v4)
  {
    [v4 setDelegate:*(a1 + 32)];
    [v5[1] start];
  }
}

void sub_100047A7C(uint64_t a1)
{
  v5 = *(a1 + 32);
  v2 = objc_opt_new();
  v3 = v5[1];
  v5[1] = v2;

  v4 = v5[1];
  if (v4)
  {
    [v4 setDelegate:*(a1 + 32)];
    [v5[1] start];
  }
}

void sub_100047BD0(uint64_t a1)
{
  v5 = *(a1 + 32);
  v2 = objc_opt_new();
  v3 = v5[1];
  v5[1] = v2;

  v4 = v5[1];
  if (v4)
  {
    [v4 setDelegate:*(a1 + 32)];
    [v5[1] start];
  }
}

void sub_100047CD8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[1];
  v6 = v1;
  if (v2)
  {
    v1[1] = 0;

    v1 = v6;
  }

  v3 = v1[8];
  if (v3)
  {
    v1[8] = 0;

    v1 = v6;
  }

  v4 = v1[5];
  if (v4)
  {
    v1[5] = 0;

    v1 = v6;
  }

  v5 = v1[6];
  if (v5)
  {
    v1[6] = 0;

    v1 = v6;
  }
}

void sub_10004932C(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x26u);
}

void sub_10004934C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x1Cu);
}

uint64_t *sub_100049368@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

void sub_100049388()
{
  sub_100008428();
  sub_10003B4BC();
  sub_10004934C(&_mh_execute_header, v0, v1, "%s : %d can not parse dictionary data for server : %@", v2, v3, v4, v5, 2u);
}

void sub_100049404(void *a1)
{
  [a1 length];
  sub_100008428();
  sub_10003B4D0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000494A4(void *a1)
{
  v1 = [a1 network];
  v2 = [v1 extendedPANID];
  sub_100008428();
  sub_10003B4BC();
  sub_10003B4D0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x26u);
}

void sub_100049568(void *a1)
{
  v1 = [a1 network];
  v2 = [v1 extendedPANID];
  sub_100008428();
  sub_10003B4BC();
  sub_10003B4D0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x26u);
}

void sub_10004962C()
{
  sub_100008428();
  sub_10003B4BC();
  sub_10004934C(&_mh_execute_header, v0, v1, "%s : %d network name nsstring conversion failure for server : %@, continue to next network", v2, v3, v4, v5, 2u);
}

void sub_1000496A8(unsigned int *a1)
{
  v1 = *a1;
  sub_10004931C();
  sub_100008438();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x18u);
}

void sub_100049738()
{
  sub_100008428();
  sub_10003B4BC();
  sub_10004934C(&_mh_execute_header, v0, v1, "%s : %d No text record data available for the server : %@, continue to next network, retry flag is on!", v2, v3, v4, v5, 2u);
}

void sub_1000497B4()
{
  sub_100049374();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100049830()
{
  sub_100008428();
  sub_10003B4BC();
  sub_10004934C(&_mh_execute_header, v0, v1, "%s : %d can not parse dictionary data for server : %@", v2, v3, v4, v5, 2u);
}

void sub_1000498AC(void *a1, void *a2)
{
  [a1 length];
  [a2 length];
  sub_100008428();
  sub_10003B4D0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x26u);
}

void sub_10004996C(uint64_t *a1)
{
  sub_100049368(a1, __stack_chk_guard);
  v3 = 136315906;
  sub_10004931C();
  sub_100049300();
  sub_10004932C(&_mh_execute_header, v1, v2, "%s : %d: Network to find :%@ does not match with mdns record :%@", v3);
}

void sub_1000499E8()
{
  sub_100008428();
  sub_10003B4BC();
  sub_10004934C(&_mh_execute_header, v0, v1, "%s : %d network name nsstring conversion failure for server : %@, continue to next network", v2, v3, v4, v5, 2u);
}

void sub_100049A64(uint64_t *a1)
{
  sub_100049368(a1, __stack_chk_guard);
  v3 = 136315906;
  sub_10004931C();
  sub_100049300();
  sub_10004932C(&_mh_execute_header, v1, v2, "%s : %d: Xpanid to find :%@ does not match with mdns record xpanid :%@", v3);
}

void sub_100049AE0(uint64_t *a1)
{
  sub_100049368(a1, __stack_chk_guard);
  v3 = 136315906;
  sub_10004931C();
  sub_100049300();
  sub_10004932C(&_mh_execute_header, v1, v2, "%s : %d: BaID to find :%@ does not match with mdns record BaID :%@", v3);
}

void sub_100049B5C(uint64_t *a1)
{
  sub_100049368(a1, __stack_chk_guard);
  v3 = 136315906;
  sub_10004931C();
  sub_100049300();
  sub_10004932C(&_mh_execute_header, v1, v2, "%s : %d: Xpanid to find :%@ does not match with mdns record xpanid :%@", v3);
}

void sub_100049BD8()
{
  sub_100008428();
  sub_10003B4BC();
  sub_10004934C(&_mh_execute_header, v0, v1, "%s : %d hex string conversion to nsdata failure for server : %@", v2, v3, v4, v5, 2u);
}

void sub_100049C54()
{
  sub_100008428();
  sub_10003B4BC();
  sub_10004934C(&_mh_execute_header, v0, v1, "%s : %d xpanid nsstring conversion failure, server : %@", v2, v3, v4, v5, 2u);
}

void sub_100049CD0(uint64_t *a1)
{
  sub_100049368(a1, __stack_chk_guard);
  v3 = 136315906;
  sub_10004931C();
  sub_100049300();
  sub_10004932C(&_mh_execute_header, v1, v2, "%s : %d: BaID to find :%@ does not match with mdns record BaID :%@", v3);
}

void sub_100049D4C()
{
  sub_100008428();
  sub_10003B4BC();
  sub_10004934C(&_mh_execute_header, v0, v1, "%s : %d hex string conversion to nsdata failure for server : %@, continue to next network", v2, v3, v4, v5, 2u);
}

void sub_100049DC8()
{
  sub_100008428();
  sub_10003B4BC();
  sub_10004934C(&_mh_execute_header, v0, v1, "%s : %d xpanid and baid nsstring conversion failure, server : %@, continue to next network", v2, v3, v4, v5, 2u);
}

void sub_100049E44(unsigned int *a1)
{
  v1 = *a1;
  sub_10004931C();
  sub_100008438();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x18u);
}

void sub_100049ED4()
{
  sub_100008428();
  sub_10003B4BC();
  sub_10004934C(&_mh_execute_header, v0, v1, "%s : %d No text record data available for the server : %@, continue to next network, retry flag is on!", v2, v3, v4, v5, 2u);
}

void sub_100049F50()
{
  sub_100049374();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10004A1B4(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to delete record Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

void sub_10004A37C(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to retrieve records Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

void sub_10004A3F0(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = sub_10004A46C(a2);
  (*(*(a1 + 32) + 16))();
}

id sub_10004A46C(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v1 count]);
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [v3 addObject:{*(*(&v11 + 1) + 8 * i), v11}];
        }

        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }

    v9 = [v3 copy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void sub_10004A6EC(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to retrieve all records Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

void sub_10004A760(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = sub_10004A46C(a2);
  (*(*(a1 + 32) + 16))();
}

void sub_10004A924(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to retrieve record Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

void sub_10004A998(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  (*(*(a1 + 32) + 16))();
}

void sub_10004AB20(uint64_t a1)
{
  v2 = [NSError storeError:4 description:@"Failed to delete record unable to calculate UUID"];;
  (*(*(a1 + 32) + 16))();
}

void sub_10004AD58(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to store record Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

void sub_10004AF24(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to delete active dataset record Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

void sub_10004B0EC(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to delete active dataset record Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

void sub_10004B2B4(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to retrieve records Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

void sub_10004B328(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = sub_10004A46C(a2);
  (*(*(a1 + 32) + 16))();
}

void sub_10004B4D0(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to retrieve all records Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

void sub_10004B544(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = sub_10004A46C(a2);
  (*(*(a1 + 32) + 16))();
}

void sub_10004B708(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to retrieve record Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

void sub_10004B77C(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  (*(*(a1 + 32) + 16))();
}

void sub_10004B8C0(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to retrieve record Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

void sub_10004BA84(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to retrieve record Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

void sub_10004BAF8(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  (*(*(a1 + 32) + 16))();
}

void sub_10004BCAC(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to retrieve record Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

void sub_10004BD20(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  (*(*(a1 + 32) + 16))();
}

void sub_10004BED4(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to retrieve record Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

void sub_10004BF48(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  (*(*(a1 + 32) + 16))();
}

void sub_10004C0FC(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to retrieve record Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

void sub_10004C170(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  (*(*(a1 + 32) + 16))();
}

void sub_10004C338(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to retrieve records Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

void sub_10004C3AC(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = sub_10004A46C(a2);
  (*(*(a1 + 32) + 16))();
}

void sub_10004C584(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to retrieve records Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

void sub_10004C5F8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = sub_10004A46C(a2);
  (*(*(a1 + 32) + 16))();
}

void sub_10004C9CC(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to retrieve records Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

void sub_10004CA40(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }

  else
  {
    v8 = sub_10001B194(1);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100053698();
    }
  }
}

void sub_10004CC78(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to retrieve records Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

void sub_10004CCEC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }

  else
  {
    v8 = sub_10001B194(1);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000537A0();
    }
  }
}

void sub_10004CF24(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to retrieve records Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

void sub_10004CF98(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }

  else
  {
    v8 = sub_10001B194(1);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000538A8();
    }
  }
}

void sub_10004D1D0(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to retrieve records Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

void sub_10004D244(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  (*(*(a1 + 32) + 16))();
}

void sub_10004D458(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to retrieve records Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

void sub_10004D4CC(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  (*(*(a1 + 32) + 16))();
}

void sub_10004D6F4(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to retrieve records Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

void sub_10004D900(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to retrieve records Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

void sub_10004DAC8(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to retrieve records Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

void sub_10004DC74(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to retrieve records Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

void sub_10004DE20(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to delete all records locally Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

void sub_10004DFE8(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to store record Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

void sub_10004E30C(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to store record Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

void sub_10004E380(uint64_t a1)
{
  v2 = [NSError storeError:29 description:@"Failed to store record Invalid Dataset"];;
  (*(*(a1 + 32) + 16))();
}

void sub_10004E69C(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to store record Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

void sub_10004E714(uint64_t a1)
{
  v2 = [NSError storeError:29 description:@"Failed to store record Invalid Dataset"];;
  (*(*(a1 + 32) + 16))();
}

void sub_10004E980(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to store record Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

void sub_10004EB60(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to retrieve record Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

void sub_10004EBD4(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  (*(*(a1 + 32) + 16))();
}

void sub_10004ED9C(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to retrieve record Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

void sub_10004EE10(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  (*(*(a1 + 32) + 16))();
}

void sub_10004EFD8(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to delete active dataset record Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

void sub_10004F1B4(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to delete active dataset record Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

void sub_10004F448(uint64_t a1)
{
  v2 = [NSError storeError:18 description:@"Failed to run mdns check Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

void sub_10004F4C0(uint64_t a1)
{
  v2 = [NSError storeError:18 description:@"Failed to run mdns check Unable to parse the Active Operational Data Set"];;
  (*(*(a1 + 32) + 16))();
}

void sub_10004F538(uint64_t a1, int a2, void *a3)
{
  v3 = *(a1 + 40);
  if (a2)
  {
    v4 = *(a1 + 32);
    v5 = a3;
    v7 = [v4 network];
    (*(v3 + 16))(v3, 1);
  }

  else
  {
    v6 = *(v3 + 16);
    v7 = a3;
    v6(v3, 0, 0);
  }
}

uint64_t sub_10004F800(uint64_t a1)
{
  v2 = sub_10001B194(1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_100053AF4();
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t sub_10004F860(uint64_t a1)
{
  v2 = sub_10001B194(1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_100053B78();
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_10004F8C0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (!v5)
  {
    goto LABEL_8;
  }

  if (a3)
  {
    goto LABEL_8;
  }

  v7 = [v5 credentialsDataSet];
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = v7;
  v9 = [v6 credentialsDataSet];
  v10 = [v9 dataSetArray];

  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = *(a1 + 32);
  v12 = [v6 credentialsDataSet];
  v13 = [v12 dataSetArray];
  LODWORD(v11) = [v11 isEqualToData:v13];

  if (v11)
  {
    v14 = sub_10001B194(1);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = 136315394;
      v16 = "[THThreadNetworkCredentialsStoreLocalClient checkIsPreferredNetworkForActiveOperationalDataset:completion:]_block_invoke";
      v17 = 1024;
      v18 = 881;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s : %d: Given dataset matches with Preferred Network", &v15, 0x12u);
    }
  }

  else
  {
LABEL_8:
    v14 = sub_10001B194(1);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100053BFC();
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10004FC6C(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to store record Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

void sub_10004FE34(uint64_t a1)
{
  v2 = [NSError storeError:18 description:@"Failed to run mdns check Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

void sub_100050050(uint64_t a1)
{
  v2 = [NSError storeError:38 description:@"Failed to read Preferred network entries Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

void sub_100053560(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 8u);
}

void sub_100053590()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100053614()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100053698()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10005371C()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000537A0()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100053824()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000538A8()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10005392C()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000539B0()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100053A34()
{
  sub_10003B554();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100053A70()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100053AF4()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100053B78()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100053BFC()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100053C80()
{
  sub_10003B560();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_100053D00()
{
  sub_100053530();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100053D78(uint8_t *a1, _DWORD *a2, NSObject *a3)
{
  *a1 = 67109120;
  *a2 = 1066;
  sub_100053560(&_mh_execute_header, a2, a3, "#MOS : ==> Decoded pskc Line : %d", a1);
}

void sub_100053DB8(uint8_t *a1, _DWORD *a2, NSObject *a3)
{
  *a1 = 67109120;
  *a2 = 1056;
  sub_100053560(&_mh_execute_header, a2, a3, "#MOS : ==> Decoded channel Line : %d", a1);
}

void sub_100053DF8(uint8_t *a1, _DWORD *a2, NSObject *a3)
{
  *a1 = 67109120;
  *a2 = 1036;
  sub_100053560(&_mh_execute_header, a2, a3, "#MOS : ==> Decoded pan id Line : %d", a1);
}

void sub_100053E38(uint8_t *a1, _DWORD *a2, NSObject *a3)
{
  *a1 = 67109120;
  *a2 = 1017;
  sub_100053560(&_mh_execute_header, a2, a3, "#MOS : ==> Decoded master key Line : %d", a1);
}

void sub_100053E78(uint8_t *a1, _DWORD *a2, NSObject *a3)
{
  *a1 = 67109120;
  *a2 = 1073;
  sub_100053560(&_mh_execute_header, a2, a3, "#MOS : break !! : %d", a1);
}

void sub_100053EB8()
{
  sub_100053530();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100053F30()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100053FB4()
{
  sub_100053504();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_100054038()
{
  sub_100053544();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_10005413C(uint8_t *a1, _DWORD *a2, NSObject *a3)
{
  *a1 = 67109120;
  *a2 = 1250;
  sub_100053560(&_mh_execute_header, a2, a3, "#MOS : break !! : %d", a1);
}

void sub_10005417C()
{
  sub_100053530();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000541F4()
{
  sub_10003B554();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100054230()
{
  sub_10003B554();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005426C()
{
  sub_10003B554();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000542A8()
{
  sub_100053504();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_10005432C()
{
  sub_100053544();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_1000543B0()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100054434()
{
  sub_100053504();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_1000544B8()
{
  sub_100053504();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_10005453C()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000545C0()
{
  sub_100053504();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_100054644()
{
  sub_100053504();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_1000546C8()
{
  sub_100053504();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_10005474C()
{
  sub_100053504();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_1000547D0()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100054854(unsigned __int8 *a1)
{
  v1 = *a1;
  sub_10005357C();
  sub_100008438();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_1000548D4()
{
  sub_10005351C();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000549D0()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100054A54()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100054AD8()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100054B5C()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100054BE0()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100054C64()
{
  sub_100053530();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100054CDC()
{
  sub_100053504();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_100054D60()
{
  sub_100053544();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_100054DE4()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100054E68()
{
  sub_100053504();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_100054EEC()
{
  sub_100053504();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_100054F70()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100054FF4()
{
  sub_100053504();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_100055078()
{
  sub_100053504();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_1000550FC()
{
  sub_100053504();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_100055180()
{
  sub_100053504();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_100055204()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100055288(unsigned __int8 *a1)
{
  v1 = *a1;
  sub_10005357C();
  sub_100008438();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_100055308()
{
  sub_10005351C();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100055404()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100055488()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10005550C()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100055590()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100055614()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100055698()
{
  sub_100053530();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100055710()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000557D0(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "getBoolValue_isFeatureEnabled";
  v4 = 2080;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s: [%s]:KEY_NOT_FOUND in Preferences", &v2, 0x16u);
}

void sub_10005585C(char a1, NSObject *a2)
{
  v2 = 136315650;
  v3 = "getBoolValue_isFeatureEnabled";
  v4 = 2080;
  v5 = "Thread:StateMachine:Wed:Enabled";
  v6 = 1024;
  v7 = a1 & 1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s: [%s]:KEY_NOT_FOUND in Frameworks, fallback to Default:[%d]", &v2, 0x1Cu);
}

void sub_100055900(os_log_t log)
{
  v1 = 136315138;
  v2 = "getBoolValue_isFeatureEnabled";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s:Create CF String failed!", &v1, 0xCu);
}

void sub_1000559D8()
{
  sub_100008428();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100055AE0()
{
  sub_100008428();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100055BE8()
{
  sub_100008428();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void operator delete(void *__p)
{
    ;
  }
}