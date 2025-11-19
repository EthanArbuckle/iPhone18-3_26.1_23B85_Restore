void sub_1000AD7D0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (*(a1 + 64) == 1 && ([*(a1 + 32) isDestinationLocal] & 1) == 0)
  {
    v4 = *(*(a1 + 40) + 8);
    v5 = [*(a1 + 48) primaryID];
    [v4 removeAuthorizationCallbackForRouteID:v5];
  }

  (*(*(a1 + 56) + 16))();
}

void sub_1000ADA84(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [[MRPromptForRouteAuthorizationMessage alloc] initWithRoute:a1[4] inputType:a2];
  v7 = +[MRIDSCompanionConnection sharedManager];
  v8 = [v6 protobufData];
  v9 = MRIDSServiceMessageTypeProtobuf;
  v11 = a1[5];
  v10 = a1[6];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000ADBAC;
  v13[3] = &unk_1004BA310;
  v14 = v5;
  v12 = v5;
  [v7 sendMessage:v8 type:v9 destination:v11 session:v10 options:0 priority:300 response:v13];
}

void sub_1000ADBAC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 data];

  if (v4)
  {
    v5 = [v3 data];
    v9 = 0;
    v6 = [MRProtocolMessage protocolMessageWithProtobufData:v5 error:&v9];
    v7 = v9;

    if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v8 = 0;
    }

    else
    {
      v8 = [v6 response];
    }
  }

  else
  {
    v8 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000AE388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000AE3A0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v9 = v4;
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v5 = [[NSError alloc] initWithMRError:104 format:{@"New RemoteControlChannel created for destination %@, clearing all previous channels for this destination", *(a1 + 32)}];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v4 = v9;
  }

  v8 = [v4 transport];
  [v8 closeWithError:*(*(*(a1 + 40) + 8) + 40)];
}

void sub_1000AF29C(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 personalDeviceControllerStateDidChange:*(a1 + 32)];
}

void sub_1000AF404(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000AF428(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = _MRLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 32) currentPersonalDeviceUIDs];
      v5 = 138412290;
      v6 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[MRDPersonalDeviceController] Timeout reached. Personal devices %@ are now stale.", &v5, 0xCu);
    }

    [*(a1 + 32) setPersonalDeviceWasRecentlyAttached:0];
    [*(a1 + 32) _onQueue_recalculateStateForReason:@"Timeout reached."];
  }
}

void sub_1000AF6B4(id a1)
{
  v1 = +[NSMutableDictionary dictionary];
  v2 = qword_1005292E0;
  qword_1005292E0 = v1;
}

void sub_1000AF7F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MRLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [v5 backgroundActivityIdentifier];
    v7 = 138413058;
    v8 = v5;
    v9 = 2048;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "([MRDRRC]<%@: %p (%@)>{MRDRRC} - interaction: %@", &v7, 0x2Au);
  }
}

void sub_1000AFA2C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1000AFA48(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [v3 activeBackgroundActivities];
  v6 = [v5 containsObject:WeakRetained[4]];

  if (v6)
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      (*(v7 + 16))();
    }
  }

  else
  {
    v8 = _MRLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [WeakRetained backgroundActivityIdentifier];
      v10 = 138413058;
      v11 = WeakRetained;
      v12 = 2048;
      v13 = WeakRetained;
      v14 = 2112;
      v15 = v9;
      v16 = 2112;
      v17 = v3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(<%@: %p (%@)>{MRDRRC} - not handling this interaction: %@", &v10, 0x2Au);
    }
  }
}

void sub_1000AFD60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000AFD7C(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (*(a1 + 32))
  {
    [v6 removeAttribution:?];
  }

  if (*(a1 + 40))
  {
    [v6 addAttribution:?];
  }

  [v5 setUserInitiated:1];
}

void sub_1000AFDFC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_storeStrong(WeakRetained + 1, *(a1 + 32));
}

void sub_1000AFEC4(id a1)
{
  v1 = [IDSService alloc];
  v4 = +[IDSService mr_sharedGroupSessionServiceName];
  v2 = [v1 initWithService:v4];
  v3 = qword_1005292E8;
  qword_1005292E8 = v2;
}

void sub_1000B02C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MRDRouteRecommendationSuppressionContext alloc];
  v5 = [*(a1 + 32) localEndpoint];
  v6 = *(a1 + 64);
  v7 = +[MRUserSettings currentSettings];
  v8 = -[MRDRouteRecommendationSuppressionContext initWithLocalEndpoint:activeSystemEndpoint:eligibleToShowRecommendationsOutsideApp:eligibleToShowDeltaBanners:](v4, "initWithLocalEndpoint:activeSystemEndpoint:eligibleToShowRecommendationsOutsideApp:eligibleToShowDeltaBanners:", v5, v3, v6, [v7 enableDeltaRouteRecommendations]);

  v9 = [*(a1 + 32) suppressionController];
  v10 = [v9 suppressionPolicyWithContext:v8];

  if ([v10 shouldSuppress])
  {
    v11 = _MRLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v10 reason];
      v13 = 138412290;
      v14 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[MRDRRC].RV %@, ignoring all recommendations", &v13, 0xCu);
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    [*(a1 + 32) _bestRecommendationIn:*(a1 + 40) primaryBundleIdentifier:*(a1 + 48) activeSystemEndpoint:v3 completion:*(a1 + 56)];
  }
}

void sub_1000B0610(uint64_t a1, void *a2)
{
  v3 = a2;
  v12 = MREndpointConnectionReasonUserInfoKey;
  v13 = @"intelligentRoutingRecommendationValidator";
  v4 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000B0730;
  v8[3] = &unk_1004B9840;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v11 = v6;
  v7 = v3;
  [v7 connectToExternalDeviceWithUserInfo:v4 completion:v8];
}

void sub_1000B0730(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MRLogForCategory();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = [*(a1 + 32) debugName];
      v12 = 138412546;
      v13 = v6;
      v14 = 2112;
      v15 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[MRDRRC].RV Failed to connect to active system endpoint %@ with error %@. Fallback to local", &v12, 0x16u);
    }

    v7 = +[MRAVLocalEndpoint sharedLocalEndpoint];
  }

  else
  {
    if (v5)
    {
      v8 = [*(a1 + 32) debugName];
      v12 = 138412290;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[MRDRRC].RV Setting active system endpoint to %@", &v12, 0xCu);
    }

    v7 = *(a1 + 32);
  }

  v9 = v7;
  [*(a1 + 40) setActiveSystemEndpoint:v7];
  v10 = [*(a1 + 40) activeSystemEndpointLock];
  [v10 unlock];

  v11 = *(a1 + 48);
  if (v11)
  {
    (*(v11 + 16))(v11, v9);
  }
}

uint64_t sub_1000B0AB0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 route];
  v5 = [v4 nodes];

  if (![v5 count])
  {
    v9 = _MRLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138412290;
      v24 = v3;
      v10 = "[MRDRRC].RV Ignoring %@ - Recommendation has no devices";
      v11 = v9;
      v12 = 12;
      goto LABEL_11;
    }

LABEL_12:

LABEL_13:
    v13 = 0;
    goto LABEL_14;
  }

  if ([v5 isEqualToSet:*(a1 + 32)])
  {
    v6 = _MRLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v23 = 138412802;
      v24 = v3;
      v25 = 2112;
      v26 = v5;
      v27 = 2112;
      v28 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[MRDRRC].RV Ignoring %@ - %@ same as routed (%@)", &v23, 0x20u);
    }
  }

  v8 = [v5 msv_firstWhere:&stru_1004BA508];

  if (v8)
  {
    v9 = _MRLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138412546;
      v24 = v3;
      v25 = 2112;
      v26 = v5;
      v10 = "[MRDRRC].RV Ignoring %@ - %@ has Speaker, ignoring";
      v11 = v9;
      v12 = 22;
LABEL_11:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, &v23, v12);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v15 = [v5 intersectsSet:*(a1 + 32)];
  v16 = +[MRUserSettings currentSettings];
  v17 = [v16 enableDeltaRouteRecommendations];

  if (!v17)
  {
    if (!v15)
    {
      v13 = 1;
      goto LABEL_14;
    }

    v21 = _MRLogForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(a1 + 32);
      v23 = 138412802;
      v24 = v3;
      v25 = 2112;
      v26 = v5;
      v27 = 2112;
      v28 = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[MRDRRC].RV Ignoring %@ - %@ intersects with routed (%@)", &v23, 0x20u);
    }

    goto LABEL_13;
  }

  v18 = [v5 isEqualToSet:*(a1 + 32)];
  if (v18)
  {
    v19 = _MRLogForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(a1 + 32);
      v23 = 138412802;
      v24 = v3;
      v25 = 2112;
      v26 = v5;
      v27 = 2112;
      v28 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[MRDRRC].RV Ignoring %@ - %@ same as routed (%@)", &v23, 0x20u);
    }
  }

  v13 = v18 ^ 1;
LABEL_14:

  return v13;
}

BOOL sub_1000B0DD8(id a1, MRRouteNodeRepresentable *a2)
{
  v2 = [(MRRouteNodeRepresentable *)a2 avOutputDeviceIdentifier];
  v3 = [v2 isEqualToString:MRIRRouteDeviceSpeakerRoute];

  return v3;
}

void sub_1000B0E20(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, unsigned int a6, void *a7, void *a8)
{
  v14 = a2;
  v57 = a3;
  v15 = a4;
  v59 = a7;
  v16 = a8;
  v17 = [MRDRouteRecommendationDemotionContext alloc];
  v18 = *(a1 + 32);
  v19 = [v14 recommendationType];
  v20 = [*(a1 + 40) isLocalEndpoint];
  v21 = *(a1 + 64);
  v58 = v15;
  v22 = v15;
  v23 = a1;
  LOBYTE(v53) = [v22 groupContainsDiscoverableGroupLeader];
  v24 = v21;
  v25 = a5;
  v26 = [(MRDRouteRecommendationDemotionContext *)v17 initWithPrimaryBundleIdentifier:v18 recommendationType:v19 isASELocal:v20 localOutputContextHasAirPlay:v24 isSourceEndpointPlaying:a5 isTargetEndpointPlaying:a6 targetNowPlayingBundleIdentifier:v16 targetEndpointContainsDiscoverableGroupLeader:v53];

  v27 = [*(a1 + 48) demotionController];
  v28 = [v27 demotionPolicyWithContext:v26];

  if ([v28 shouldDemote])
  {
    v29 = _MRLogForCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [v28 reason];
      *buf = 138412290;
      v61 = v30;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "[MRDRRC].RV %@. Downgrading to OTS", buf, 0xCu);
    }

    [v14 setRecommendationType:0];
  }

  if (![v14 recommendationType])
  {
    if (v25)
    {
      v31 = +[MRUserSettings currentSettings];
      v32 = [v31 enableDeltaRouteRecommendations];

      if (v32)
      {
        v33 = a1;
        v56 = [*(a1 + 40) isGroupable];
        v34 = [v58 isGroupable];
        v35 = [v57 mr_all:&stru_1004BA550];
        v36 = v35;
        if (v58)
        {
          v37 = v34;
        }

        else
        {
          v37 = v35;
        }

        if (v59)
        {
          v54 = v34;
          v38 = v35;
          v39 = +[MRDDisplayMonitor sharedMonitor];
          v23 = v33;
          if ([v39 displayOn])
          {
            v40 = +[MRDDisplayMonitor sharedMonitor];
            v41 = [v40 presentedBundleIdentifiers];
            v42 = [v41 containsObject:v59];

            if ((v56 & v37) == 1)
            {
              v36 = v38;
              v34 = v54;
              if (v42)
              {
                v43 = _MRLogForCategory();
                if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138413570;
                  v44 = @"NO";
                  v61 = @"YES";
                  if (v58)
                  {
                    v45 = @"YES";
                  }

                  else
                  {
                    v45 = @"NO";
                  }

                  v62 = 2112;
                  v63 = v45;
                  if (v54)
                  {
                    v46 = @"YES";
                  }

                  else
                  {
                    v46 = @"NO";
                  }

                  v64 = 2112;
                  if (v36)
                  {
                    v44 = @"YES";
                  }

                  v65 = v46;
                  v66 = 2112;
                  v67 = v44;
                  v68 = 2112;
                  v69 = v59;
                  v70 = 2112;
                  v71 = @"YES";
                  _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "[MRDRRC].RV Mutating to deltaOTS: sG:%@; e:%@, eG:%@, dG: %@, np: %@ (visible: %@)", buf, 0x3Eu);
                }

                [v14 setRecommendationType:3];
                goto LABEL_46;
              }

              goto LABEL_29;
            }
          }

          else
          {

            v42 = 0;
          }

          v36 = v38;
          v34 = v54;
        }

        else
        {
          v42 = 0;
          v23 = a1;
        }

LABEL_29:
        v47 = _MRLogForCategory();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          v48 = @"NO";
          if (v56)
          {
            v49 = @"YES";
          }

          else
          {
            v49 = @"NO";
          }

          *buf = 138413570;
          v61 = v49;
          if (v58)
          {
            v50 = @"YES";
          }

          else
          {
            v50 = @"NO";
          }

          v62 = 2112;
          v63 = v50;
          if (v34)
          {
            v51 = @"YES";
          }

          else
          {
            v51 = @"NO";
          }

          v64 = 2112;
          v65 = v51;
          if (v36)
          {
            v52 = @"YES";
          }

          else
          {
            v52 = @"NO";
          }

          v66 = 2112;
          if (v42)
          {
            v48 = @"YES";
          }

          v67 = v52;
          v68 = 2112;
          v69 = v59;
          v70 = 2112;
          v71 = v48;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "[MRDRRC].RV Not mutating to deltaOTS: sG:%@; e:%@, eG:%@, dG: %@, np: %@ (visible: %@)", buf, 0x3Eu);
        }
      }
    }
  }

LABEL_46:
  (*(*(v23 + 56) + 16))();
}

id sub_1000B16A4(uint64_t a1)
{
  v2 = _MRLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) count];
    v4 = *(a1 + 32);
    v6 = 134218242;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[MRDRRC].RV retrying with %lu remaining: %@", &v6, 0x16u);
  }

  return [*(a1 + 40) evaluateRecommendations:*(a1 + 32) localOutputContextHasAirPlay:*(a1 + 72) primaryBundleIdentifier:*(a1 + 48) activeSystemEndpoint:*(a1 + 56) completion:*(a1 + 64)];
}

void sub_1000B1778(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v58[0] = _NSConcreteStackBlock;
  v58[1] = 3221225472;
  v58[2] = sub_1000B1E98;
  v58[3] = &unk_1004BA5C8;
  v8 = v5;
  v59 = v8;
  v9 = [v7 msv_compactMap:v58];
  v10 = [v9 count];
  v11 = [*(a1 + 32) count];

  v12 = _MRLogForCategory();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v10 == v11)
  {
    if (v13)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[MRDRRC].RV all devices were found!", buf, 2u);
    }

    if (!v6)
    {
      v35 = [v8 mr_first:&stru_1004BA5E8];
      if (v35)
      {
        v36 = _MRLogForCategory();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v61 = v35;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "[MRDRRC].RV no unanimous endpoint and at least one RC member: %@", buf, 0xCu);
        }

        (*(*(a1 + 64) + 16))();
        goto LABEL_31;
      }

      v45 = +[MRDMediaRemoteServer server];
      v46 = [v45 nowPlayingServer];
      v47 = [*(a1 + 40) origin];
      v18 = [v46 originClientForOrigin:v47];

      v48 = [v18 activeNowPlayingClient];
      v49 = [v48 activePlayerClient];
      [v49 isPlaying];

      v50 = [v18 activeNowPlayingClient];
      v51 = [v50 client];
      v52 = [v51 bundleIdentifier];

      v53 = _MRLogForCategory();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v61 = v8;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "[MRDRRC].RV no endpoint, no RC, returning device collection: %@", buf, 0xCu);
      }

      v54 = *(a1 + 56);
      (*(*(a1 + 72) + 16))();

LABEL_30:
LABEL_31:

      goto LABEL_32;
    }

    v14 = [MRIRRoute routeWithEndpoint:v6];
    v57 = [v14 nodes];

    v15 = +[MRDMediaRemoteServer server];
    v16 = [v15 nowPlayingServer];
    v17 = [*(a1 + 40) origin];
    v18 = [v16 originClientForOrigin:v17];

    v19 = +[MRDMediaRemoteServer server];
    v20 = [v19 nowPlayingServer];
    v21 = [v6 origin];
    v22 = [v20 originClientForOrigin:v21];

    v23 = [v18 activeNowPlayingClient];
    v24 = [v23 activePlayerClient];
    v56 = [v24 isPlaying];

    v25 = [v22 activeNowPlayingClient];
    v26 = [v25 activePlayerClient];
    v27 = [v26 isPlaying];

    v28 = [v18 activeNowPlayingClient];
    v29 = [v28 client];
    v30 = [v29 bundleIdentifier];

    v31 = [v22 activeNowPlayingClient];
    v32 = [v31 client];
    v33 = [v32 bundleIdentifier];

    if (*(a1 + 80) == 1 && v27)
    {
      v34 = _MRLogForCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "[MRDRRC].RV endpoint is not a perfect match.\n local endpoint is airplaying and target is playing.", buf, 2u);
      }

      (*(*(a1 + 64) + 16))();
    }

    else
    {
      v35 = v57;
      if (![v57 isSubsetOfSet:*(a1 + 48)])
      {
        v43 = _MRLogForCategory();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          v44 = *(a1 + 48);
          *buf = 138412546;
          v61 = v44;
          v62 = 2112;
          v63 = v57;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "[MRDRRC].RV endpoint is not a perfect match.\n desired nodes: %@\n available nodes: %@", buf, 0x16u);
        }

        (*(*(a1 + 64) + 16))();
        goto LABEL_29;
      }

      v37 = [NSMutableSet setWithSet:*(a1 + 48)];
      [v37 minusSet:v57];
      if ([v37 count])
      {
        v38 = _MRLogForCategory();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v61 = v37;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "[MRDRRC].RV could not find nodes: %@", buf, 0xCu);
        }
      }

      v55 = v30;
      v39 = _MRLogForCategory();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v61 = v6;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "[MRDRRC].RV endpoint is a perfect match, returning endpoint: %@", buf, 0xCu);
      }

      v40 = *(a1 + 72);
      v41 = *(a1 + 56);
      v42 = [v6 outputDevices];
      (*(v40 + 16))(v40, v41, v42, v6, v56, v27, v55, v33);

      v30 = v55;
    }

    v35 = v57;
LABEL_29:

    goto LABEL_30;
  }

  if (v13)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[MRDRRC].RV not all devices were found!", buf, 2u);
  }

  (*(*(a1 + 64) + 16))();
LABEL_32:
}

id sub_1000B1E98(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000B1F4C;
  v8[3] = &unk_1004B8A40;
  v9 = v3;
  v5 = v3;
  v6 = [v4 mr_first:v8];

  return v6;
}

id sub_1000B1F4C(uint64_t a1, void *a2)
{
  v3 = [a2 uid];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void sub_1000B24C4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = a3;
  v5 = [[MRDExternalDeviceHomeServerRecentlyPlayedEntry alloc] initWithDictionaryRepresentation:v4];

  [v3 _addEntry:v5];
}

void sub_1000B253C(id a1, MRDeviceInfo *a2, NSDictionary *a3, id a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  v9 = [(NSDictionary *)v7 objectForKeyedSubscript:kMRPlaybackQueueRequestUserInfoKey];
  v10 = MRGetPlayerPathFromUserInfo();
  v11 = objc_alloc_init(NSMutableDictionary);
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x3032000000;
  v43[3] = sub_10003508C;
  v43[4] = sub_1000359FC;
  v44 = 0;
  v12 = dispatch_group_create();
  dispatch_group_enter(v12);
  v13 = &_dispatch_main_q;
  v36 = _NSConcreteStackBlock;
  v37 = 3221225472;
  v38 = sub_1000B28E0;
  v39 = &unk_1004BA6A8;
  v42 = v43;
  v40 = v11;
  v41 = v12;
  MRMediaRemoteRequestNowPlayingPlaybackQueueForPlayerSync();

  dispatch_group_enter(v41);
  v29 = _NSConcreteStackBlock;
  v30 = 3221225472;
  v31 = sub_1000B2958;
  v32 = &unk_1004BA6D0;
  v35 = v43;
  v33 = v40;
  v34 = v41;
  MRMediaRemoteGetSupportedCommandsForPlayer();

  dispatch_group_enter(v34);
  v14 = +[MROrigin localOrigin];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000B29D0;
  v24[3] = &unk_1004BA6F8;
  v28 = v43;
  v15 = v6;
  v25 = v15;
  v16 = v33;
  v26 = v16;
  v17 = v34;
  v27 = v17;
  [MRDeviceInfoRequest deviceInfoForOrigin:v14 queue:&_dispatch_main_q completion:v24];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B2A74;
  block[3] = &unk_1004BA720;
  v21 = v16;
  v22 = v8;
  v23 = v43;
  v18 = v16;
  v19 = v8;
  dispatch_group_notify(v17, &_dispatch_main_q, block);

  _Block_object_dispose(v43, 8);
}

void sub_1000B28E0(uint64_t a1, uint64_t a2, id obj)
{
  v5 = *(*(a1 + 48) + 8);
  if (a2 && !*(v5 + 40))
  {
    [*(a1 + 32) setObject:a2 forKeyedSubscript:kMRPlaybackQueueUserInfoKey];
    v5 = *(*(a1 + 48) + 8);
  }

  objc_storeStrong((v5 + 40), obj);
  v6 = *(a1 + 40);

  dispatch_group_leave(v6);
}

void sub_1000B2958(uint64_t a1, uint64_t a2, id obj)
{
  v5 = *(*(a1 + 48) + 8);
  if (a2 && !*(v5 + 40))
  {
    [*(a1 + 32) setObject:a2 forKeyedSubscript:kMRSupportedCommandsUserInfoKey];
    v5 = *(*(a1 + 48) + 8);
  }

  objc_storeStrong((v5 + 40), obj);
  v6 = *(a1 + 40);

  dispatch_group_leave(v6);
}

void sub_1000B29D0(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = *(*(a1 + 56) + 8);
  if (!*(v6 + 40) && *(a1 + 32))
  {
    v7 = *(a1 + 40);
    MRAddDeviceInfoToUserInfo();
    v6 = *(*(a1 + 56) + 8);
  }

  v8 = *(v6 + 40);
  *(v6 + 40) = v5;
  v9 = v5;

  dispatch_group_leave(*(a1 + 48));
}

void sub_1000B2A94(id a1, MRDeviceInfo *a2, NSDictionary *a3, id a4)
{
  v5 = a4;
  v6 = kMRPlaybackSessionRequestUserInfoKey;
  v7 = a3;
  v8 = [(NSDictionary *)v7 objectForKeyedSubscript:v6];
  v9 = MRGetPlayerPathFromUserInfo();

  v11 = v5;
  v10 = v5;
  MRMediaRemotePlaybackSessionRequest();
}

void sub_1000B2B80(uint64_t a1, id a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    v5 = a2;
    a2 = objc_alloc_init(NSMutableDictionary);
    [a2 setObject:v5 forKeyedSubscript:kMRPlaybackSessionUserInfoKey];
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000B2C24(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = [a3 objectForKeyedSubscript:MRCompanionLinkClientActiveSystemEndpointUIDUserInfoKey];
  if (v5)
  {
    v6 = objc_alloc_init(NSMutableDictionary);
    [v6 setObject:v5 forKeyedSubscript:MRAVEndpointOutputDeviceUserInfoKey];
    MRAddDeviceInfoToUserInfo();
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 postNotificationName:@"MRDExternalDeviceHomeServerDidReceiveSystemEndpointUpdateRequestNotification" object:*(a1 + 32) userInfo:v6];
  }
}

void sub_1000B3084(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 8) & 1) == 0)
  {
    *(v1 + 8) = 1;
    v3 = +[MRUserSettings currentSettings];
    [v3 sendPlaybackSessionUpdateToCompanionCoalesceInterval];
    v5 = v4;

    v6 = dispatch_time(0, (v5 * 1000000000.0));
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000B3160;
    block[3] = &unk_1004B6D08;
    block[4] = *(a1 + 32);
    dispatch_after(v6, &_dispatch_main_q, block);
  }
}

void sub_1000B3C30(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MRDExternalDeviceHomeServerRecentlyPlayedEntry alloc];
  v5 = MRCreateDecodedUserInfo();

  v12 = [(MRDExternalDeviceHomeServerRecentlyPlayedEntry *)v4 initWithDictionaryRepresentation:v5];
  v6 = [(MRDExternalDeviceHomeServerRecentlyPlayedEntry *)v12 date];
  [v6 timeIntervalSinceNow];
  v8 = v7;
  v9 = +[MRUserSettings currentSettings];
  [v9 lastPlayingDeviceThresholdInterval];
  v11 = v10;

  if (v8 < v11)
  {
    [*(a1 + 32) addObject:v12];
  }
}

int64_t sub_1000B3D10(id a1, MRDExternalDeviceHomeServerRecentlyPlayedEntry *a2, MRDExternalDeviceHomeServerRecentlyPlayedEntry *a3)
{
  v4 = a3;
  v5 = [(MRDExternalDeviceHomeServerRecentlyPlayedEntry *)a2 date];
  v6 = [(MRDExternalDeviceHomeServerRecentlyPlayedEntry *)v4 date];

  v7 = [v5 compare:v6];
  return v7;
}

void sub_1000B48DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000B48F8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained resetWithError:v3];
}

void sub_1000B4D44(id a1, MRDIDSServiceMessage *a2)
{
  v2 = a2;
  v3 = [(MRDIDSServiceMessage *)v2 data];
  v10 = 0;
  v4 = [MRProtocolMessage protocolMessageWithProtobufData:v3 error:&v10];
  v5 = v10;

  if (!v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = +[MRMediaRemoteServiceClient sharedServiceClient];
      v7 = [v6 workerQueue];

      v8 = v4;
      MRGetSharedService();
      v9 = v2;
      MRMediaRemoteServicePromptRouteAuthorization();
    }
  }
}

void sub_1000B4E90(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 protobufData];
  [v2 replyWithData:v3 priority:300];
}

void sub_1000B518C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000B51A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 data];

  if (v4)
  {
    v5 = [v3 data];
    v11 = 0;
    v6 = [MRProtocolMessage protocolMessageWithProtobufData:v5 error:&v11];
    v7 = v11;

    v8 = [v6 error];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1000B54D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000B54F4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = [v3 data];
    v8 = 0;
    v6 = [MRProtocolMessage protocolMessageWithProtobufData:v5 error:&v8];

    v7 = [v6 error];
    [WeakRetained resetWithError:v7];
  }
}

void sub_1000B57C0(id a1)
{
  v1 = qword_100529300;
  qword_100529300 = &off_1004E0E98;
}

void sub_1000B5CA8(id a1)
{
  v2 = +[MRUserSettings currentSettings];
  [v2 transactionWaitDurationOnOutOfMemory];
  qword_100529310 = v1;
}

uint64_t sub_1000B5F18(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3 == &_xpc_error_connection_invalid || v3 == &_xpc_error_connection_interrupted)
    {
      v5 = 4;
    }

    else
    {
      v5 = 0;
    }

    return (*(result + 16))(result, v5);
  }

  return result;
}

id sub_1000B64B4(uint64_t a1)
{
  v2 = _MRLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%p Checking for available memory", &v5, 0xCu);
  }

  return [*(a1 + 32) _query:*(a1 + 40)];
}

uint64_t start()
{
  v0 = _MRLogForCategory();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "Starting MediaRemote server", buf, 2u);
  }

  sub_10012F408();
  v1 = getenv("MR_WAIT_FOR_DEBUGGER");
  if (v1 && *v1 == 49)
  {
    raise(2);
  }

  v2 = objc_autoreleasePoolPush();
  v3 = +[MRDMediaRemoteServer server];
  [v3 initializeServer];

  v4 = +[MRDMediaRemoteServer server];
  [v4 start];

  objc_autoreleasePoolPop(v2);
  v5 = +[NSRunLoop currentRunLoop];
  [v5 run];

  v6 = _MRLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "MediaRemote server exiting", v8, 2u);
  }

  return 0;
}

void sub_1000B6A80(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.mediaremoted.MRDRoutingDiscoverySession", v3);
  v2 = qword_100529320;
  qword_100529320 = v1;
}

void sub_1000B6AE4(uint64_t a1)
{
  v1 = MSVAutoBugCaptureDomainMediaRemote;
  v2 = *(a1 + 32);
  v4 = +[NSBundle mainBundle];
  v3 = [v4 bundleIdentifier];
  [MSVAutoBugCapture snapshotWithDomain:v1 type:@"Discovery" subType:v2 context:v3 triggerThresholdValues:0 events:0 completion:0];
}

void sub_1000B6B88(uint64_t a1)
{
  v5 = +[MRDMediaRemoteServer server];
  v2 = [v5 routingServer];
  v3 = [v2 hostedRoutingService];
  v4 = [v3 hostedRoutingController];
  [v4 addObserver:*(a1 + 32)];
}

void sub_1000B6C90(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"MRDAVHostedRoutingObserverDiscoveryModeDidChangeNotification" object:0];
}

void sub_1000B6FF8(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"MRDAVHostedRoutingObserverDiscoveryModeDidChangeNotification" object:*(a1 + 32)];
}

id sub_1000B70BC(id a1, MRAVDistantEndpoint *a2)
{
  v2 = a2;
  if (([(MRAVDistantEndpoint *)v2 isLocalEndpoint]& 1) != 0)
  {
    v3 = +[MRAVLocalEndpoint sharedLocalEndpoint];
  }

  else
  {
    v3 = v2;
  }

  v4 = v3;

  return v4;
}

id sub_1000B73E8(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  if (!v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    v4 = *(a1 + 32);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v2 = *(*(a1 + 32) + 40);
  }

  v6 = *(a1 + 40);

  return [v2 addObject:v6];
}

id sub_1000B74E4(uint64_t a1)
{
  [*(a1 + 32) setTransactions:*(*(a1 + 40) + 40)];
  [*(a1 + 32) setUsedTransactionMemory:*(*(a1 + 40) + 16)];
  [*(a1 + 32) setAllowedTransactionMemory:*(*(a1 + 40) + 24)];
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 32);

  return [v2 setTransactionWaitDuration:v3];
}

id sub_1000B75E8(uint64_t a1)
{
  [*(a1 + 32) adjustMemory:-*(a1 + 48)];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 40);

  return [v3 removeObject:v2];
}

id sub_1000B76FC(uint64_t a1)
{
  v2 = [*(a1 + 32) name] - 2;
  if (v2 <= 8 && ((0x17Fu >> v2) & 1) != 0)
  {
    *(*(*(a1 + 48) + 8) + 24) = qword_10044E870[v2];
  }

  v3 = *(a1 + 40);
  v4 = v3[3] - v3[2];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 24);
  if (v6 > v4)
  {
    *(v5 + 24) = v4;
    v3 = *(a1 + 40);
    v6 = *(*(*(a1 + 48) + 8) + 24);
  }

  return [v3 adjustMemory:v6];
}

uint64_t sub_1000B7990(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 8);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000B7A24;
  v6[3] = &unk_1004B7650;
  v4 = a1[6];
  v6[4] = v2;
  v6[5] = v4;
  dispatch_sync(v3, v6);
  return (*(a1[5] + 16))();
}

void sub_1000B7F14(uint64_t a1, int a2)
{
  v4 = _MRLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1003A71D8(a1, v4);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    dispatch_group_leave(v5);
  }

  if (a2)
  {
    [*(a1 + 48) cancel];
  }
}

id sub_1000B8568(void *a1)
{
  v2 = a1;
  v20 = objc_alloc_init(NSMutableDictionary);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v22;
    v7 = _kMRPlaybackQueueRequestIDUserInfoKey;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [*(*(&v21 + 1) + 8 * i) key];
        v10 = v9;
        if (v9)
        {
          v11 = [v9 userData];

          if (v11)
          {
            v12 = [v10 userData];
            v13 = MSVPropertyListDataClasses();
            v14 = MRCreateFromData();

            v15 = [v14 objectForKey:v7];
            v11 = [v15 copy];
          }

          v16 = [v10 identifier];

          if (v16)
          {
            v17 = v11;
            if (!v11)
            {
              v1 = +[NSNull null];
              v17 = v1;
            }

            v18 = [v10 identifier];
            [v20 setObject:v17 forKey:v18];

            if (!v11)
            {
            }
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v5);
  }

  return v20;
}

void sub_1000B8788(id *a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (a1[4])
  {
    v6 = +[NSNull null];
    if ([v5 isEqual:v6])
    {
    }

    else
    {
      v7 = [a1[5] hasRequest:v5];

      if (!v7)
      {
        goto LABEL_9;
      }
    }
  }

  v8 = [a1[5] requestForSubscribedContentItemIdentifier:v9];
  if (v8 && [a1[4] match:v8])
  {
    [a1[6] addObject:v9];
  }

LABEL_9:
}

void sub_1000B8868(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    dispatch_group_leave(v1);
  }
}

void sub_1000B9920(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) interruptions];
  [v7 start];

  v8 = +[MRDStreamCapacityManager sharedManager];
  v9 = [[NSString alloc] initWithFormat:@"%@<%@>", *(a1 + 40), *(a1 + 48)];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000B9ADC;
  v19[3] = &unk_1004BAA60;
  v20 = *(a1 + 32);
  v21 = v6;
  v22 = v5;
  v10 = *(a1 + 56);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = *(a1 + 64);
  *&v14 = v12;
  *(&v14 + 1) = v13;
  *&v15 = v10;
  *(&v15 + 1) = v11;
  v23 = v15;
  v24 = v14;
  v16 = *(a1 + 80);
  v25 = *(a1 + 72);
  v26 = v16;
  v17 = v5;
  v18 = v6;
  [v8 interruptBestStreamIfNecessaryToActivateStreamWithPlayerPath:v17 reason:v9 completion:v19];
}

id sub_1000B9ADC(uint64_t a1)
{
  v2 = [*(a1 + 32) interruptions];
  [v2 end];

  if (!*(a1 + 40))
  {
    v13 = *(a1 + 48);
    v12 = *(a1 + 56);
    v4 = _MRLogForCategory();
    v14 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      if (v12)
      {
        if (!v14)
        {
          goto LABEL_21;
        }

        v15 = *(a1 + 64);
        v16 = *(a1 + 72);
        v17 = *(a1 + 48);
        v18 = *(a1 + 56);
        v10 = +[NSDate date];
        [v10 timeIntervalSinceDate:*(a1 + 80)];
        v37 = 138544386;
        v38 = v15;
        v39 = 2114;
        v40 = v16;
        v41 = 2112;
        v42 = v17;
        v43 = 2114;
        v44 = v18;
        v45 = 2048;
        v46 = v19;
        v20 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
        v21 = v4;
        v22 = 52;
LABEL_19:
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, v20, &v37, v22);
        goto LABEL_20;
      }

      if (!v14)
      {
        goto LABEL_21;
      }

      v27 = *(a1 + 64);
      v28 = *(a1 + 72);
      v29 = *(a1 + 48);
      v10 = +[NSDate date];
      [v10 timeIntervalSinceDate:*(a1 + 80)];
      v37 = 138544130;
      v38 = v27;
      v39 = 2114;
      v40 = v28;
      v41 = 2112;
      v42 = v29;
      v43 = 2048;
      v44 = v30;
      v20 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
    }

    else
    {
      if (!v12)
      {
        if (!v14)
        {
          goto LABEL_21;
        }

        v31 = *(a1 + 64);
        v32 = *(a1 + 72);
        v10 = +[NSDate date];
        [v10 timeIntervalSinceDate:*(a1 + 80)];
        v37 = 138543874;
        v38 = v31;
        v39 = 2114;
        v40 = v32;
        v41 = 2048;
        v42 = v33;
        v20 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
        v21 = v4;
        v22 = 32;
        goto LABEL_19;
      }

      if (!v14)
      {
        goto LABEL_21;
      }

      v24 = *(a1 + 64);
      v23 = *(a1 + 72);
      v25 = *(a1 + 56);
      v10 = +[NSDate date];
      [v10 timeIntervalSinceDate:*(a1 + 80)];
      v37 = 138544130;
      v38 = v24;
      v39 = 2114;
      v40 = v23;
      v41 = 2114;
      v42 = v25;
      v43 = 2048;
      v44 = v26;
      v20 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
    }

    v21 = v4;
    v22 = 42;
    goto LABEL_19;
  }

  v3 = *(a1 + 56);
  v4 = _MRLogForCategory();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
  if (v3)
  {
    if (v5)
    {
      v7 = *(a1 + 64);
      v6 = *(a1 + 72);
      v8 = *(a1 + 40);
      v9 = *(a1 + 56);
      v10 = +[NSDate date];
      [v10 timeIntervalSinceDate:*(a1 + 80)];
      v37 = 138544386;
      v38 = v7;
      v39 = 2114;
      v40 = v6;
      v41 = 2114;
      v42 = v8;
      v43 = 2114;
      v44 = v9;
      v45 = 2048;
      v46 = v11;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v37, 0x34u);
LABEL_20:
    }
  }

  else if (v5)
  {
    sub_1003A72FC(a1, (a1 + 40));
  }

LABEL_21:

  v35 = *(a1 + 40);
  v34 = *(a1 + 48);
  (*(*(a1 + 96) + 16))();
  [*(a1 + 32) trackWithError:*(a1 + 40)];
  return [*(a1 + 88) setStartingNowPlayingSession:0];
}

void sub_1000B9E84(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([*(a1 + 32) disarm])
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1000B9EFC(uint64_t a1)
{
  v2 = +[MRDMediaRemoteServer server];
  v3 = [v2 nowPlayingServer];
  v4 = [v3 localOriginClient];
  v5 = [v4 deviceInfoDataSource];
  v6 = [v5 deviceInfo];

  v7 = [v6 parentGroupContainsDiscoverableGroupLeader];
  v8 = *(a1 + 32);
  if (v7)
  {
    [v8 setDiscoverableGroupLeader:1];
    v9 = [*(a1 + 32) originForward];
    [v9 start];

    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1000BA124;
    v29[3] = &unk_1004B79F0;
    v10 = &v30;
    v30 = *(a1 + 32);
    v11 = &v31;
    v31 = *(a1 + 64);
    [MRDOriginForwarder waitUntilForwardingOperationsHaveFinished:v29];
    v12 = *(a1 + 40);
    v13 = [v6 groupUID];
    v14 = *(a1 + 48);
    v15 = *(a1 + 56);
    v16 = v12;
    v17 = v13;
    v18 = 0;
  }

  else
  {
    v19 = [v8 findEndpoint];
    [v19 start];

    v20 = *(a1 + 40);
    v13 = [v6 groupUID];
    v21 = *(a1 + 48);
    v22 = *(a1 + 56);
    v23 = _NSConcreteStackBlock;
    v24 = 3221225472;
    v25 = sub_1000BA1D8;
    v26 = &unk_1004BAAB0;
    v10 = &v27;
    v27 = *(a1 + 32);
    v11 = &v28;
    v28 = *(a1 + 64);
    v18 = &v23;
    v16 = v20;
    v17 = v13;
    v14 = v21;
    v15 = v22;
  }

  [v16 _findEndpointContainingGroupID:v17 andDeviceID:v14 requestID:v15 completion:{v18, v23, v24, v25, v26}];
}

void sub_1000BA124(uint64_t a1)
{
  v2 = [*(a1 + 32) originForward];
  [v2 end];

  v3 = [MRPlayerPath alloc];
  v4 = +[MROrigin localOrigin];
  v5 = [v3 initWithOrigin:v4 client:0 player:0];

  (*(*(a1 + 40) + 16))();
}

void sub_1000BA1D8(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v8 = a2;
  v7 = [v5 findEndpoint];
  [v7 endWithError:v6];

  (*(*(a1 + 40) + 16))();
}

void sub_1000BA278(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    v4 = [*(a1 + 40) outputDevices];
    v5 = [v4 count];

    if (v5 == 1)
    {
      v6 = +[MRDAVOutputContextManager sharedManager];
      [v6 reserveOutputContext:*(a1 + 40) forOutputDeviceUID:*(a1 + 48)];
    }

    v7 = [*(a1 + 56) removeLocalDevice];
    [v7 start];

    v8 = [MRRequestDetails alloc];
    v9 = [v8 initWithInitiator:MRRequestDetailsInitiatorAirPlaySessionController requestID:*(a1 + 64) reason:*(a1 + 72)];
    v10 = [MRGroupTopologyModificationRequest alloc];
    v20 = *(a1 + 32);
    v11 = [NSArray arrayWithObjects:&v20 count:1];
    v12 = [v10 initWithRequestDetails:v9 type:2 outputDevices:v11];

    v13 = *(a1 + 40);
    v14 = qos_class_self();
    v15 = dispatch_get_global_queue(v14, 0);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000BA4A0;
    v17[3] = &unk_1004B9BE0;
    v18 = *(a1 + 56);
    v19 = v3;
    [v13 modifyTopologyWithRequest:v12 withReplyQueue:v15 completion:v17];
  }

  else
  {
    v16 = [[NSError alloc] initWithMRError:39 description:@"Failed to remove local device from existing context"];
    (*(v3 + 2))(v3, v16);
  }
}

void sub_1000BA4A0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  v4 = [v3 removeLocalDevice];
  [v4 endWithError:v5];

  (*(*(a1 + 40) + 16))();
}

void sub_1000BA518(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    v4 = +[MRDAVOutputContextManager sharedManager];
    v5 = [v4 outputContextForOutputDeviceUID:*(a1 + 40)];

    if (v5)
    {
      v6 = [*(a1 + 48) addLocalDevice];
      [v6 start];

      v7 = [MRRequestDetails alloc];
      v8 = [v7 initWithInitiator:MRRequestDetailsInitiatorAirPlaySessionController requestID:*(a1 + 56) reason:*(a1 + 64)];
      v9 = [MRGroupTopologyModificationRequest alloc];
      v18 = *(a1 + 32);
      v10 = [NSArray arrayWithObjects:&v18 count:1];
      v11 = [v9 initWithRequestDetails:v8 type:3 outputDevices:v10];

      v12 = qos_class_self();
      v13 = dispatch_get_global_queue(v12, 0);
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1000BA760;
      v15[3] = &unk_1004B9BE0;
      v16 = *(a1 + 48);
      v17 = v3;
      [v5 modifyTopologyWithRequest:v11 withReplyQueue:v13 completion:v15];
    }

    else
    {
      v14 = [[NSError alloc] initWithMRError:32 description:@"Failed to reserve output context for local device"];
      (*(v3 + 2))(v3, v14);
    }
  }

  else
  {
    v5 = [[NSError alloc] initWithMRError:39 description:@"Failed to find local device from existing context"];
    (*(v3 + 2))(v3, v5);
  }
}

void sub_1000BA760(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  v4 = [v3 addLocalDevice];
  [v4 endWithError:v5];

  (*(*(a1 + 40) + 16))();
}

void sub_1000BA7D8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v10 = a2;
  v4 = [v3 reloadDeviceInfo];
  [v4 start];

  v5 = +[MRDMediaRemoteServer server];
  v6 = [v5 nowPlayingServer];
  v7 = [v6 localOriginClient];
  v8 = [v7 deviceInfoDataSource];
  [v8 reloadDeviceInfoImmediately];

  v9 = [*(a1 + 32) reloadDeviceInfo];
  [v9 end];

  v10[2](v10, 0);
}

void sub_1000BA8C0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 40);
    v5 = [[NSError alloc] initWithMRError:32 description:@"Failed prepare outputContext for nowPlayingSession"];
    (*(v3 + 16))(v3, 0, v5);
  }

  else
  {
    v4 = *(*(a1 + 32) + 16);

    v4();
  }
}

void sub_1000BB244(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = a1[4];
  v8 = _MRLogForCategory();
  v9 = v8;
  if (v5 && !v6)
  {
    v10 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (!v10)
      {
        goto LABEL_22;
      }

      v12 = a1[5];
      v11 = a1[6];
      v13 = a1[4];
      v14 = +[NSDate date];
      [v14 timeIntervalSinceDate:a1[7]];
      v36 = 138544386;
      v37 = v12;
      v38 = 2114;
      v39 = v11;
      v40 = 2112;
      v41 = v5;
      v42 = 2114;
      v43 = v13;
      v44 = 2048;
      v45 = v15;
      v16 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
      v17 = v9;
      v18 = 52;
      goto LABEL_16;
    }

    if (!v10)
    {
      goto LABEL_22;
    }

    v29 = a1[5];
    v30 = a1[6];
    v14 = +[NSDate date];
    [v14 timeIntervalSinceDate:a1[7]];
    v36 = 138544130;
    v37 = v29;
    v38 = 2114;
    v39 = v30;
    v40 = 2112;
    v41 = v5;
    v42 = 2048;
    v43 = v31;
    v16 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
    goto LABEL_15;
  }

  if (v6)
  {
    v19 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (v7)
    {
      if (!v19)
      {
        goto LABEL_22;
      }

      v21 = a1[5];
      v20 = a1[6];
      v22 = a1[4];
      v14 = +[NSDate date];
      [v14 timeIntervalSinceDate:a1[7]];
      v36 = 138544386;
      v37 = v21;
      v38 = 2114;
      v39 = v20;
      v40 = 2114;
      v41 = v6;
      v42 = 2114;
      v43 = v22;
      v44 = 2048;
      v45 = v23;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v36, 0x34u);
      goto LABEL_17;
    }

    if (v19)
    {
      sub_1003A73D0(a1);
    }
  }

  else
  {
    v24 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (!v24)
      {
        goto LABEL_22;
      }

      v26 = a1[5];
      v25 = a1[6];
      v27 = a1[4];
      v14 = +[NSDate date];
      [v14 timeIntervalSinceDate:a1[7]];
      v36 = 138544130;
      v37 = v26;
      v38 = 2114;
      v39 = v25;
      v40 = 2114;
      v41 = v27;
      v42 = 2048;
      v43 = v28;
      v16 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
LABEL_15:
      v17 = v9;
      v18 = 42;
LABEL_16:
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v16, &v36, v18);
LABEL_17:

      goto LABEL_22;
    }

    if (v24)
    {
      v32 = a1[5];
      v33 = a1[6];
      v14 = +[NSDate date];
      [v14 timeIntervalSinceDate:a1[7]];
      v36 = 138543874;
      v37 = v32;
      v38 = 2114;
      v39 = v33;
      v40 = 2048;
      v41 = v34;
      v16 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v17 = v9;
      v18 = 32;
      goto LABEL_16;
    }
  }

LABEL_22:

  v35 = a1[8];
  if (v35)
  {
    (*(v35 + 16))(v35, v5, v6);
  }
}

id sub_1000BB5C0(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 outputDevices];
  v5 = [v4 mr_first:&stru_1004BAB98];

  if (!v5)
  {
    v5 = [v3 designatedGroupLeader];
    if ([v5 containsUID:a1[4]] && (objc_msgSend(v3, "outputDevices"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "count"), v18, !v19))
    {
      if (v5)
      {
        goto LABEL_2;
      }
    }

    else
    {

      v5 = 0;
    }

LABEL_16:
    v9 = 0;
    goto LABEL_17;
  }

LABEL_2:
  if (([v5 isAirPlayReceiverSessionActive] & 1) == 0)
  {
    v20 = +[MRUserSettings currentSettings];
    v21 = [v20 verboseRemoteControlDiscoveryLogging];

    if (v21)
    {
      v22 = _MRLogForCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = a1[5];
        v24 = a1[6];
        v25 = [NSString alloc];
        v26 = [v3 debugName];
        v27 = [v5 debugName];
        v28 = [v25 initWithFormat:@"Rejecting endpoint %@ because localDevice %@ isAirPlayReceiverSessionActive=NO", v26, v27];
        *buf = 138543874;
        v31 = v23;
        v32 = 2114;
        v33 = v24;
        v34 = 2112;
        v35 = v28;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
      }
    }

    goto LABEL_16;
  }

  v6 = [v3 outputDevices];
  v7 = [v6 firstObject];
  v8 = [v7 groupID];

  v9 = [v8 containsString:a1[7]];
  if ((v9 & 1) == 0)
  {
    v10 = +[MRUserSettings currentSettings];
    v11 = [v10 verboseRemoteControlDiscoveryLogging];

    if (v11)
    {
      v12 = _MRLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = a1[5];
        v14 = a1[6];
        v15 = [NSString alloc];
        v16 = [v3 debugName];
        v17 = [v15 initWithFormat:@"Rejecting endpoint %@ because endpointGroupID %@ != %@", v16, v8, a1[7]];
        *buf = 138543874;
        v31 = v13;
        v32 = 2114;
        v33 = v14;
        v34 = 2112;
        v35 = v17;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
      }
    }
  }

LABEL_17:
  return v9;
}

void sub_1000BB8E8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [NSString stringWithFormat:@"Discovered local device on endpoint: %@", v5];
  v8 = _MRLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    *buf = 138543874;
    v24 = v9;
    v25 = 2114;
    v26 = v10;
    v27 = 2112;
    v28 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
  }

  if (v5)
  {
    v11 = objc_alloc_init(NSMutableDictionary);
    [v11 setObject:*(a1 + 32) forKeyedSubscript:MREndpointConnectionReasonUserInfoKey];
    [v11 setObject:*(a1 + 40) forKeyedSubscript:MREndpointConnectionCorrelationIDUserInfoKey];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000BBB80;
    v20[3] = &unk_1004B9BE0;
    v21 = v5;
    v22 = *(a1 + 48);
    [v21 connectToExternalDeviceWithUserInfo:v11 completion:v20];

    v12 = v21;
  }

  else
  {
    v19 = v6;
    v11 = v6;
    v13 = +[MRDMediaRemoteServer server];
    v14 = [v13 routingServer];
    v15 = [v14 hostedRoutingService];
    v16 = [v15 hostedRoutingController];
    v17 = [v16 discoverySession];
    v12 = [v17 localEndpointConnection];

    if (!v12)
    {
      v18 = [[NSError alloc] initWithMRError:140];

      v11 = v18;
    }

    (*(*(a1 + 48) + 16))();
    v6 = v19;
  }
}

void sub_1000BBB80(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 40) + 16);

    v4();
  }

  else
  {
    v10 = [*(a1 + 32) origin];
    if (v10)
    {
      v5 = [MRPlayerPath alloc];
      v6 = [*(a1 + 32) origin];
      v7 = [v5 initWithOrigin:v6 client:0 player:0];

      v8 = *(*(a1 + 40) + 16);
    }

    else
    {
      v9 = *(a1 + 40);
      v7 = [[NSError alloc] initWithMRError:121 description:@"endpoint connected but then closed immediately after"];
      v8 = *(v9 + 16);
    }

    v8();
  }
}

void sub_1000BBEFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000BBF18(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 data];

  [WeakRetained ingestData:v4];
}

id sub_1000BC61C(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isLocalDevice])
  {
    v4 = 0;
  }

  else
  {
    v4 = [*(a1 + 32) _exportDescriptorForOutputDevice:v3 endpoint:*(a1 + 40) remoteControl:1];
  }

  return v4;
}

id sub_1000BD3A0(id a1, MRDGroupSessionParticipant *a2)
{
  v2 = a2;
  if ([(MRDGroupSessionParticipant *)v2 connected])
  {
    v3 = [(MRDGroupSessionParticipant *)v2 identifier];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_1000BD3FC(id a1, MRDGroupSessionParticipant *a2)
{
  v2 = a2;
  if (([(MRDGroupSessionParticipant *)v2 connected]& 1) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(MRDGroupSessionParticipant *)v2 identifier];
  }

  return v3;
}

id sub_1000BD458(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void sub_1000BD840(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) trackWithError:v6];
  if (!v6)
  {
    v15 = [v5 debugName];

    v16 = *(a1 + 40);
    v8 = _MRLogForCategory();
    v17 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (!v15)
    {
      if (v16)
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v27 = *(a1 + 48);
        v26 = *(a1 + 56);
        v28 = *(a1 + 40);
        v13 = +[NSDate date];
        [v13 timeIntervalSinceDate:*(a1 + 64)];
        v40 = 138544130;
        v41 = v27;
        v42 = 2114;
        v43 = v26;
        v44 = 2114;
        v45 = v28;
        v46 = 2048;
        v47 = v29;
        v30 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
        v31 = v8;
        v32 = 42;
      }

      else
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v36 = *(a1 + 48);
        v37 = *(a1 + 56);
        v13 = +[NSDate date];
        [v13 timeIntervalSinceDate:*(a1 + 64)];
        v40 = 138543874;
        v41 = v36;
        v42 = 2114;
        v43 = v37;
        v44 = 2048;
        v45 = v38;
        v30 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
        v31 = v8;
        v32 = 32;
      }

      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, v30, &v40, v32);
      goto LABEL_20;
    }

    if (v16)
    {
      if (!v17)
      {
        goto LABEL_21;
      }

      v18 = *(a1 + 48);
      v19 = *(a1 + 56);
      v13 = [v5 debugName];
      v20 = *(a1 + 40);
      v21 = +[NSDate date];
      [v21 timeIntervalSinceDate:*(a1 + 64)];
      v40 = 138544386;
      v41 = v18;
      v42 = 2114;
      v43 = v19;
      v44 = 2112;
      v45 = v13;
      v46 = 2114;
      v47 = v20;
      v48 = 2048;
      v49 = v22;
      v23 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
      v24 = v8;
      v25 = 52;
    }

    else
    {
      if (!v17)
      {
        goto LABEL_21;
      }

      v33 = *(a1 + 48);
      v34 = *(a1 + 56);
      v13 = [v5 debugName];
      v21 = +[NSDate date];
      [v21 timeIntervalSinceDate:*(a1 + 64)];
      v40 = 138544130;
      v41 = v33;
      v42 = 2114;
      v43 = v34;
      v44 = 2112;
      v45 = v13;
      v46 = 2048;
      v47 = v35;
      v23 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
      v24 = v8;
      v25 = 42;
    }

    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v23, &v40, v25);

    goto LABEL_20;
  }

  v7 = *(a1 + 40);
  v8 = _MRLogForCategory();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (v7)
  {
    if (v9)
    {
      v11 = *(a1 + 48);
      v10 = *(a1 + 56);
      v12 = *(a1 + 40);
      v13 = +[NSDate date];
      [v13 timeIntervalSinceDate:*(a1 + 64)];
      v40 = 138544386;
      v41 = v11;
      v42 = 2114;
      v43 = v10;
      v44 = 2114;
      v45 = v6;
      v46 = 2114;
      v47 = v12;
      v48 = 2048;
      v49 = v14;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v40, 0x34u);
LABEL_20:
    }
  }

  else if (v9)
  {
    sub_1003A74A4(a1, v6, v8);
  }

LABEL_21:

  v39 = *(a1 + 32);
  (*(*(a1 + 72) + 16))();
}

void sub_1000BDC18(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (*(a1 + 56))
  {
    if (v6)
    {
      (*(*(a1 + 64) + 16))();
    }

    else
    {
      v8 = [*(a1 + 40) searchForGroupUID];
      [v8 start];

      v9 = objc_alloc_init(MRAVLightweightReconnaissanceSession);
      v10 = *(a1 + 72);
      v11 = [*(a1 + 48) requestID];
      v12 = qos_class_self();
      v13 = dispatch_get_global_queue(v12, 0);
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1000BDD9C;
      v14[3] = &unk_1004B7BA0;
      v15 = *(a1 + 40);
      v16 = *(a1 + 64);
      [v9 searchEndpointsForGroupUID:v5 timeout:v11 reason:v13 queue:v14 completion:v10];
    }
  }
}

void sub_1000BDD9C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 searchForGroupUID];
  [v8 endWithError:v6];

  v9 = *(a1 + 40);
  v10 = [v6 mr_errorByEnvelopingWithMRError:129];

  (*(v9 + 16))(v9, v7, v10);
}

void sub_1000BE134(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) trackWithError:v6];
  v7 = *(a1 + 40);
  v8 = _MRLogForCategory();
  v9 = v8;
  if (v5 && !v6)
  {
    v10 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v10)
      {
        v12 = *(a1 + 48);
        v11 = *(a1 + 56);
        v13 = *(a1 + 40);
        v14 = +[NSDate date];
        [v14 timeIntervalSinceDate:*(a1 + 64)];
        v36 = 138544386;
        v37 = v12;
        v38 = 2114;
        v39 = v11;
        v40 = 2112;
        v41 = v5;
        v42 = 2114;
        v43 = v13;
        v44 = 2048;
        v45 = v15;
        v16 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
        v17 = v9;
        v18 = 52;
LABEL_16:
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v16, &v36, v18);
        goto LABEL_17;
      }

      goto LABEL_22;
    }

    if (!v10)
    {
      goto LABEL_22;
    }

    v29 = *(a1 + 48);
    v30 = *(a1 + 56);
    v14 = +[NSDate date];
    [v14 timeIntervalSinceDate:*(a1 + 64)];
    v36 = 138544130;
    v37 = v29;
    v38 = 2114;
    v39 = v30;
    v40 = 2112;
    v41 = v5;
    v42 = 2048;
    v43 = v31;
    v16 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
LABEL_15:
    v17 = v9;
    v18 = 42;
    goto LABEL_16;
  }

  if (v6)
  {
    v19 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (v7)
    {
      if (v19)
      {
        v21 = *(a1 + 48);
        v20 = *(a1 + 56);
        v22 = *(a1 + 40);
        v14 = +[NSDate date];
        [v14 timeIntervalSinceDate:*(a1 + 64)];
        v36 = 138544386;
        v37 = v21;
        v38 = 2114;
        v39 = v20;
        v40 = 2114;
        v41 = v6;
        v42 = 2114;
        v43 = v22;
        v44 = 2048;
        v45 = v23;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v36, 0x34u);
LABEL_17:

        goto LABEL_22;
      }
    }

    else if (v19)
    {
      sub_1003A74A4(a1, v6, v9);
    }

    goto LABEL_22;
  }

  v24 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (!v7)
  {
    if (!v24)
    {
      goto LABEL_22;
    }

    v32 = *(a1 + 48);
    v33 = *(a1 + 56);
    v14 = +[NSDate date];
    [v14 timeIntervalSinceDate:*(a1 + 64)];
    v36 = 138543874;
    v37 = v32;
    v38 = 2114;
    v39 = v33;
    v40 = 2048;
    v41 = v34;
    v16 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
    v17 = v9;
    v18 = 32;
    goto LABEL_16;
  }

  if (v24)
  {
    v26 = *(a1 + 48);
    v25 = *(a1 + 56);
    v27 = *(a1 + 40);
    v14 = +[NSDate date];
    [v14 timeIntervalSinceDate:*(a1 + 64)];
    v36 = 138544130;
    v37 = v26;
    v38 = 2114;
    v39 = v25;
    v40 = 2114;
    v41 = v27;
    v42 = 2048;
    v43 = v28;
    v16 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
    goto LABEL_15;
  }

LABEL_22:

  v35 = *(a1 + 32);
  (*(*(a1 + 72) + 16))();
}

void sub_1000BEA90(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = a1[4];
  v8 = _MRLogForCategory();
  v9 = v8;
  if (v5 && !v6)
  {
    v10 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v10)
      {
        v12 = a1[5];
        v11 = a1[6];
        v13 = a1[4];
        v14 = +[NSDate date];
        [v14 timeIntervalSinceDate:a1[7]];
        v35 = 138544386;
        v36 = v12;
        v37 = 2114;
        v38 = v11;
        v39 = 2112;
        v40 = v5;
        v41 = 2114;
        v42 = v13;
        v43 = 2048;
        v44 = v15;
        v16 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
        v17 = v9;
        v18 = 52;
LABEL_16:
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v16, &v35, v18);
        goto LABEL_17;
      }

      goto LABEL_22;
    }

    if (!v10)
    {
      goto LABEL_22;
    }

    v29 = a1[5];
    v30 = a1[6];
    v14 = +[NSDate date];
    [v14 timeIntervalSinceDate:a1[7]];
    v35 = 138544130;
    v36 = v29;
    v37 = 2114;
    v38 = v30;
    v39 = 2112;
    v40 = v5;
    v41 = 2048;
    v42 = v31;
    v16 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
LABEL_15:
    v17 = v9;
    v18 = 42;
    goto LABEL_16;
  }

  if (v6)
  {
    v19 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (v7)
    {
      if (v19)
      {
        v21 = a1[5];
        v20 = a1[6];
        v22 = a1[4];
        v14 = +[NSDate date];
        [v14 timeIntervalSinceDate:a1[7]];
        v35 = 138544386;
        v36 = v21;
        v37 = 2114;
        v38 = v20;
        v39 = 2114;
        v40 = v6;
        v41 = 2114;
        v42 = v22;
        v43 = 2048;
        v44 = v23;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v35, 0x34u);
LABEL_17:

        goto LABEL_22;
      }
    }

    else if (v19)
    {
      sub_1003A7554(a1, v6, v9);
    }

    goto LABEL_22;
  }

  v24 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (!v7)
  {
    if (!v24)
    {
      goto LABEL_22;
    }

    v32 = a1[5];
    v33 = a1[6];
    v14 = +[NSDate date];
    [v14 timeIntervalSinceDate:a1[7]];
    v35 = 138543874;
    v36 = v32;
    v37 = 2114;
    v38 = v33;
    v39 = 2048;
    v40 = v34;
    v16 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
    v17 = v9;
    v18 = 32;
    goto LABEL_16;
  }

  if (v24)
  {
    v26 = a1[5];
    v25 = a1[6];
    v27 = a1[4];
    v14 = +[NSDate date];
    [v14 timeIntervalSinceDate:a1[7]];
    v35 = 138544130;
    v36 = v26;
    v37 = 2114;
    v38 = v25;
    v39 = 2114;
    v40 = v27;
    v41 = 2048;
    v42 = v28;
    v16 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
    goto LABEL_15;
  }

LABEL_22:

  (*(a1[8] + 16))();
}

void sub_1000BEE20(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([*(a1 + 32) disarm])
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1000BEE98(uint64_t a1)
{
  [*(a1 + 32) _maybeSendCommandPreviewForOutputDeviceUID:*(a1 + 40) details:*(a1 + 48)];
  v2 = +[MRDAVOutputContextManager sharedManager];
  v3 = [v2 outputContextForOutputDeviceUIDs:*(a1 + 40) strict:1];

  if (v3)
  {
    v4 = [*(a1 + 56) modifyOutputContext];
    [v4 start];

    v5 = [[MRGroupTopologyModificationRequest alloc] initWithRequestDetails:*(a1 + 48) type:3 outputDeviceUIDs:*(a1 + 40)];
    v6 = qos_class_self();
    v7 = dispatch_get_global_queue(v6, 0);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000BF01C;
    v8[3] = &unk_1004BAD88;
    v9 = *(a1 + 56);
    v11 = *(a1 + 64);
    v10 = v3;
    [v10 modifyTopologyWithRequest:v5 withReplyQueue:v7 completion:v8];
  }

  else
  {
    v5 = [[NSError alloc] initWithMRError:32];
    (*(*(a1 + 64) + 16))();
  }
}

void sub_1000BF01C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) modifyOutputContext];
  [v4 endWithError:v3];

  if (v3)
  {
    v5 = *(a1 + 48);
    v6 = [v3 mr_errorByEnvelopingWithMRError:28];
    (*(v5 + 16))(v5, 0, v6);
  }

  else
  {
    v7 = +[MRDMediaRemoteServer server];
    v8 = [v7 deviceInfo];

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000BF178;
    v10[3] = &unk_1004BAD60;
    v11 = v8;
    v12 = *(a1 + 40);
    v6 = v8;
    v9 = sub_1000BF178(v10);
    (*(*(a1 + 48) + 16))(*(a1 + 48), v9);
  }
}

id sub_1000BF178(uint64_t a1)
{
  if ([*(a1 + 32) clusterType])
  {
    v2 = +[MRDMediaRemoteServer server];
    v3 = [v2 routingServer];
    v4 = [v3 hostedRoutingService];
    v5 = [v4 hostedRoutingController];
    v6 = [v5 discoverySession];
    v7 = [v6 nativeOutputDevice];
    v8 = [v7 clusterMemberID];

    v9 = [NSString alloc];
    v10 = [*(a1 + 32) senderDefaultGroupUID];
    v11 = [*(a1 + 40) contextID];
    v12 = [v9 initWithFormat:@"%@+%@+%@", v10, v8, v11];
  }

  else
  {
    v13 = [NSString alloc];
    v8 = [*(a1 + 32) senderDefaultGroupUID];
    v10 = [*(a1 + 40) contextID];
    v12 = [v13 initWithFormat:@"%@+%@", v8, v10];
  }

  return v12;
}

void sub_1000BF2F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) searchForBuddy];
  [v4 end];

  if (v3)
  {
    v5 = [*(a1 + 32) createRemoteHostedEndpoint];
    [v5 start];

    v6 = [v3 groupLeader];
    v7 = [v6 uid];
    v8 = *(a1 + 72);
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000BF448;
    v11[3] = &unk_1004BADD8;
    v12 = *(a1 + 32);
    v13 = *(a1 + 56);
    [MRDCreateRemoteHostedEndpointRequest createRemoteHostedEndpointWithGroupLeaderOutputDeviceUID:v7 withOutputDeviceUIDs:v9 timeout:v10 details:v11 groupUIDCompletion:v8];
  }

  else
  {
    (*(*(a1 + 64) + 16))();
  }
}

void sub_1000BF448(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v8 = a2;
  v7 = [v5 createRemoteHostedEndpoint];
  [v7 endWithError:v6];

  (*(*(a1 + 40) + 16))();
}

void sub_1000BF99C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _MRLogForCategory();
  v8 = v7;
  if (!v5 || v6)
  {
    if (v6)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1003A7604(a1, v6, v8);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 32);
      v10 = [*(a1 + 40) requestID];
      v11 = +[NSDate date];
      [v11 timeIntervalSinceDate:*(a1 + 48)];
      v21 = 138543874;
      v22 = v16;
      v23 = 2114;
      v24 = v10;
      v25 = 2048;
      v26 = v17;
      v13 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v14 = v8;
      v15 = 32;
      goto LABEL_10;
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = [*(a1 + 40) requestID];
    v11 = +[NSDate date];
    [v11 timeIntervalSinceDate:*(a1 + 48)];
    v21 = 138544130;
    v22 = v9;
    v23 = 2114;
    v24 = v10;
    v25 = 2112;
    v26 = v5;
    v27 = 2048;
    v28 = v12;
    v13 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
    v14 = v8;
    v15 = 42;
LABEL_10:
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v13, &v21, v15);
  }

  (*(*(a1 + 56) + 16))(*(a1 + 56), v5, v6, v18, v19, v20);
}

void sub_1000BFBA0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = [a2 firstObject];
  v10 = [v9 clusterComposition];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000BFCD8;
  v13[3] = &unk_1004B96C0;
  v11 = v7;
  v14 = v11;
  [v10 mr_any:v13];

  v12 = [v9 primaryID];
  [v12 isEqualToString:*(a1 + 32)];

  (*(*(a1 + 40) + 16))();
}

id sub_1000BFCD8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 groupLeader];
  v5 = [v3 uid];

  v6 = [v4 containsUID:v5];
  return v6;
}

void sub_1000C007C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _MRLogForCategory();
  v8 = v7;
  if (v5 && !v6)
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v9 = *(a1 + 32);
    v10 = [*(a1 + 40) requestID];
    v11 = +[NSDate date];
    [v11 timeIntervalSinceDate:*(a1 + 48)];
    v19 = 138544130;
    v20 = v9;
    v21 = 2114;
    v22 = v10;
    v23 = 2112;
    v24 = v5;
    v25 = 2048;
    v26 = v12;
    v13 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
    v14 = v8;
    v15 = 42;
LABEL_10:
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v13, &v19, v15);

    goto LABEL_11;
  }

  if (!v6)
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v16 = *(a1 + 32);
    v10 = [*(a1 + 40) requestID];
    v11 = +[NSDate date];
    [v11 timeIntervalSinceDate:*(a1 + 48)];
    v19 = 138543874;
    v20 = v16;
    v21 = 2114;
    v22 = v10;
    v23 = 2048;
    v24 = v17;
    v13 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
    v14 = v8;
    v15 = 32;
    goto LABEL_10;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1003A7604(a1, v6, v8);
  }

LABEL_11:

  [*(a1 + 56) trackWithError:v6];
  v18 = *(a1 + 64);
  if (v18)
  {
    (*(v18 + 16))(v18, v5, v6, *(a1 + 56));
  }
}

void sub_1000C0294(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  if (a3)
  {
    v7 = *(a1 + 56);
    v8 = *(v7 + 16);
    v9 = v6;
    v8(v7, 0, a3);
  }

  else
  {
    v10 = *(a1 + 40);
    v11 = v6;
    v12 = [v10 searchForGroupUID];
    [v12 start];

    v9 = objc_alloc_init(MRAVLightweightReconnaissanceSession);
    v13 = *(a1 + 64);
    v14 = [*(a1 + 48) requestID];
    v15 = qos_class_self();
    v16 = dispatch_get_global_queue(v15, 0);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000C040C;
    v17[3] = &unk_1004B7BA0;
    v18 = *(a1 + 40);
    v19 = *(a1 + 56);
    [v9 searchEndpointsForGroupUID:v5 timeout:v14 reason:v16 queue:v17 completion:v13];
  }
}

void sub_1000C040C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 searchForGroupUID];
  [v8 endWithError:v6];

  v9 = *(a1 + 40);
  v10 = [v6 mr_errorByEnvelopingWithMRError:129];

  (*(v9 + 16))(v9, v7, v10);
}

void sub_1000C07C8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _MRLogForCategory();
  v8 = v7;
  if (v5 && !v6)
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v9 = *(a1 + 32);
    v10 = [*(a1 + 40) requestID];
    v11 = +[NSDate date];
    [v11 timeIntervalSinceDate:*(a1 + 48)];
    v19 = 138544130;
    v20 = v9;
    v21 = 2114;
    v22 = v10;
    v23 = 2112;
    v24 = v5;
    v25 = 2048;
    v26 = v12;
    v13 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
    v14 = v8;
    v15 = 42;
LABEL_10:
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v13, &v19, v15);

    goto LABEL_11;
  }

  if (!v6)
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v16 = *(a1 + 32);
    v10 = [*(a1 + 40) requestID];
    v11 = +[NSDate date];
    [v11 timeIntervalSinceDate:*(a1 + 48)];
    v19 = 138543874;
    v20 = v16;
    v21 = 2114;
    v22 = v10;
    v23 = 2048;
    v24 = v17;
    v13 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
    v14 = v8;
    v15 = 32;
    goto LABEL_10;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1003A7604(a1, v6, v8);
  }

LABEL_11:

  [*(a1 + 56) trackWithError:v6];
  v18 = *(a1 + 64);
  if (v18)
  {
    (*(v18 + 16))(v18, v5, v6, *(a1 + 56));
  }
}

void sub_1000C1078(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _MRLogForCategory();
  v8 = v7;
  if (v5 && !v6)
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v9 = *(a1 + 32);
    v10 = [*(a1 + 40) requestID];
    v11 = +[NSDate date];
    [v11 timeIntervalSinceDate:*(a1 + 48)];
    v19 = 138544130;
    v20 = v9;
    v21 = 2114;
    v22 = v10;
    v23 = 2112;
    v24 = v5;
    v25 = 2048;
    v26 = v12;
    v13 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
    v14 = v8;
    v15 = 42;
LABEL_10:
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v13, &v19, v15);

    goto LABEL_11;
  }

  if (!v6)
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v16 = *(a1 + 32);
    v10 = [*(a1 + 40) requestID];
    v11 = +[NSDate date];
    [v11 timeIntervalSinceDate:*(a1 + 48)];
    v19 = 138543874;
    v20 = v16;
    v21 = 2114;
    v22 = v10;
    v23 = 2048;
    v24 = v17;
    v13 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
    v14 = v8;
    v15 = 32;
    goto LABEL_10;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1003A7604(a1, v6, v8);
  }

LABEL_11:

  v18 = *(a1 + 56);
  if (v18)
  {
    (*(v18 + 16))(v18, v5, v6);
  }
}

void sub_1000C1298(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([*(a1 + 32) disarm])
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1000C131C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) connectToTransientExternalDevice];
  [v4 endWithError:v3];

  if (v3)
  {
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v5 = [*(a1 + 32) createHostedEndpoint];
    [v5 start];

    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9 = qos_class_self();
    v10 = dispatch_get_global_queue(v9, 0);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000C1470;
    v11[3] = &unk_1004BAEC8;
    v12 = *(a1 + 32);
    v14 = *(a1 + 64);
    v13 = *(a1 + 40);
    [v6 createHostedEndpointWithOutputDeviceUIDs:v7 details:v8 queue:v10 completion:v11];
  }
}

void sub_1000C1470(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 createHostedEndpoint];
  [v8 endWithError:v6];

  (*(*(a1 + 48) + 16))();
  v9 = dispatch_time(0, 7000000000);
  v10 = dispatch_get_global_queue(9, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C158C;
  block[3] = &unk_1004B6D08;
  v12 = *(a1 + 40);
  dispatch_after(v9, v10, block);
}

id sub_1000C15D8(void *a1, const char *a2)
{
  v4 = *(v2 + 48);

  return [a1 timeIntervalSinceDate:v4];
}

void sub_1000C1B20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000C1B44(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if ([v8 isClusterLeader])
  {
    [*(a1 + 32) removeObjectAtIndex:a3];
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

uint64_t sub_1000C1BDC(uint64_t a1, void *a2)
{
  v3 = [a2 uid];
  v4 = [*(a1 + 32) uid];
  v5 = [v3 isEqual:v4];

  return v5 ^ 1;
}

id sub_1000C1CF0(id a1, MRAVOutputDevice *a2)
{
  v2 = a2;
  v3 = [MRAVOutputDeviceDescription alloc];
  v4 = [(MRAVOutputDevice *)v2 descriptor];

  v5 = [v3 initWithDescriptor:v4];

  return v5;
}

void sub_1000C1FA8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) _createStereoPairRepresentationFrom:?];
  [v1 addObject:v2];
}

id sub_1000C21B4(id a1, MRAVOutputDevice *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(_MRAVOutputDeviceDescriptorProtobuf);
  v4 = [(MRAVOutputDevice *)v2 uid];
  [v3 setUniqueIdentifier:v4];

  v5 = [(MRAVOutputDevice *)v2 modelID];
  [v3 setModelID:v5];

  v6 = [(MRAVOutputDevice *)v2 name];

  [v3 setName:v6];
  [v3 setDeviceType:1];
  [v3 setDeviceSubType:12];

  return v3;
}

void sub_1000C26C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000C26E8(uint64_t a1, void *a2)
{
  v7 = [a2 msv_compactMap:&stru_1004BB038];
  v3 = [NSSet setWithArray:v7];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setMediaBundlesInFocus:v3];

  v5 = *(a1 + 32);
  v6 = objc_loadWeakRetained((a1 + 40));
  [v6 setBundlesInFocus:v5];
}

NSString *__cdecl sub_1000C2794(id a1, NSString *a2, MRDBundleMediaRecommendationEligibility *a3)
{
  v4 = a2;
  if ([(MRDBundleMediaRecommendationEligibility *)a3 isEligible])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_1000C2964(uint64_t a1)
{
  v4 = *(*(a1 + 32) + 24);
  v2 = *(a1 + 40);
  v3 = v2;
  objc_storeStrong((*(a1 + 32) + 24), v2);
  if (([v4 isEqualToSet:v3] & 1) == 0)
  {
    [*(a1 + 32) notifyDelegate];
  }
}

unsigned __int8 *sub_1000C2A88(unsigned __int8 *result)
{
  v1 = *(result + 4);
  v2 = *(v1 + 8);
  v3 = result[40];
  *(v1 + 8) = v3;
  if (v2 != v3)
  {
    return [*(result + 4) notifyDelegate];
  }

  return result;
}

void sub_1000C2B04(id a1)
{
  v4 = [MRSystemMediaBundles systemMediaBundleIDForBundle:0 type:1];
  v1 = [MRSystemMediaBundles systemMediaBundleIDForBundle:2 type:1];
  v2 = [NSSet setWithObjects:v4, v1, 0];
  v3 = qword_100529338;
  qword_100529338 = v2;
}

void sub_1000C31E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000C321C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[BSServiceQuality userInitiated];
  [v3 setServiceQuality:v4];

  v5 = +[MRDUIControllerConnection serviceInterface];
  [v3 setInterface:v5];

  v6 = [*(a1 + 32) client];
  [v3 setInterfaceTarget:v6];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000C3410;
  v11[3] = &unk_1004BB0A8;
  objc_copyWeak(&v12, (a1 + 40));
  [v3 setInvalidationHandler:v11];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000C34F4;
  v9[3] = &unk_1004BB0A8;
  objc_copyWeak(&v10, (a1 + 40));
  [v3 setInterruptionHandler:v9];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C35D4;
  v7[3] = &unk_1004BB0A8;
  objc_copyWeak(&v8, (a1 + 40));
  [v3 setActivationHandler:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
}

void sub_1000C33DC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_1000C3410(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = _MRLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[MRUIControllerConnection] <%p> BSServiceConnection invalidate.", &v5, 0xCu);
  }

  if (WeakRetained)
  {
    v3 = [WeakRetained invalidationHandler];
    v3[2]();

    v4 = WeakRetained[2];
    WeakRetained[2] = 0;
  }
}

void sub_1000C34F4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = _MRLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 134217984;
    v5 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[MRUIControllerConnection] <%p> BSServiceConnection interrupt. Re-activating.", &v4, 0xCu);
  }

  if (WeakRetained)
  {
    v3 = [WeakRetained invalidationHandler];
    v3[2]();

    [WeakRetained[2] activate];
  }
}

void sub_1000C35D4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = _MRLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 134217984;
    v4 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[MRUIControllerConnection] <%p> BSServiceConnection activated.", &v3, 0xCu);
  }
}

void sub_1000C36CC(id a1)
{
  v5 = [BSMutableServiceInterface interfaceWithIdentifier:@"com.apple.mediaremoteui.ui-service"];
  v1 = [BSObjCProtocol protocolForProtocol:&OBJC_PROTOCOL___MRUIServerProtocol];
  [v5 setServer:v1];

  v2 = [BSObjCProtocol protocolForProtocol:&OBJC_PROTOCOL___MRUIClientProtocol];
  [v5 setClient:v2];

  [v5 setClientMessagingExpectation:0];
  v3 = [v5 copy];
  v4 = qword_100529340;
  qword_100529340 = v3;
}

void sub_1000C3DE0(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 addObject:*(a1 + 40)];
}

void sub_1000C3EE8(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 removeObject:*(a1 + 40)];
}

void sub_1000C40B8(id *a1, void *a2)
{
  v3 = a2;
  [a1[4] trackWithError:v3];
  v4 = [a1[5] notificationQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C4188;
  v7[3] = &unk_1004B8B50;
  v5 = a1[6];
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void sub_1000C41A0(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = [*(a1 + 32) pendingCompletions];
  v4 = [v3 count];

  if (v4)
  {
    v5 = _MRLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1003A77D0();
    }

    v6 = *(a1 + 48);
    v7 = MRGroupSessionError;
    v8 = @"Cannot start session while starting/joining is in progress.";
LABEL_9:
    v10 = [NSError msv_errorWithDomain:v7 code:5 debugDescription:v8];
    (*(v6 + 16))(v6, v10);
    goto LABEL_10;
  }

  if (*(*v2 + 24))
  {
    v9 = _MRLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1003A780C(v2);
    }

    v6 = *(a1 + 48);
    v7 = MRGroupSessionError;
    v8 = @"Cannot start session while already in a session.";
    goto LABEL_9;
  }

  v11 = +[MRDMusicUserStateCenter sharedCenter];
  v10 = [v11 localActiveIdentity];

  if (v10 && ([v10 displayName], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
  {
    v13 = +[NSDate date];
    [*(a1 + 32) setLastSessionEventDate:v13];
    v14 = [MRBlockGuard alloc];
    v15 = +[MRUserSettings currentSettings];
    [v15 groupSessionNearbyGroupCreateTimeout];
    v17 = v16;
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1000C4534;
    v32[3] = &unk_1004B6FC0;
    v33 = *(a1 + 40);
    v18 = [v14 initWithTimeout:@"NearbyGroupCreate" reason:v32 handler:v17];

    v19 = [*(a1 + 32) queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000C45A0;
    block[3] = &unk_1004BB168;
    block[4] = *(a1 + 32);
    v25 = v13;
    v29 = *(a1 + 48);
    v26 = *(a1 + 40);
    v27 = v18;
    v28 = v10;
    v31 = *(a1 + 64);
    v30 = *(a1 + 56);
    v20 = v18;
    v21 = v13;
    dispatch_async(v19, block);
  }

  else
  {
    v22 = _MRLogForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_1003A7888();
    }

    v23 = *(a1 + 48);
    v21 = [NSError msv_errorWithDomain:MRGroupSessionError code:4 debugDescription:@"Cannot host session without identity."];
    (*(v23 + 16))(v23, v21);
  }

LABEL_10:
}

void sub_1000C4534(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MRLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1003A78C4();
  }

  [*(a1 + 32) trackWithError:v3];
}

void sub_1000C45A0(uint64_t a1)
{
  v2 = [*(a1 + 32) lastSessionEventDate];
  v3 = v2;
  if (v2 == *(a1 + 40))
  {

    goto LABEL_7;
  }

  v4 = [v2 isEqual:?];

  if (v4)
  {
LABEL_7:
    v8 = [*(a1 + 48) nearbyGroup];
    [v8 start];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000C4798;
    v14[3] = &unk_1004BB190;
    v9 = *(a1 + 48);
    v18 = *(a1 + 72);
    v10 = *(a1 + 56);
    v13 = *(a1 + 32);
    v11 = *(&v13 + 1);
    *&v12 = v9;
    *(&v12 + 1) = v10;
    v15 = v12;
    v16 = v13;
    v17 = *(a1 + 64);
    v20 = *(a1 + 88);
    v19 = *(a1 + 80);
    [_TtC12mediaremoted14MRDNearbyGroup createWithCompletion:v14];

    v7 = v15;
    goto LABEL_8;
  }

  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[MRDGroupSessionManager] New session event occurred after generating metadata.", buf, 2u);
  }

  v6 = *(a1 + 72);
  v7 = [NSError msv_errorWithDomain:MRGroupSessionError code:13 debugDescription:@"Implicitly cancelled due to new session request"];
  (*(v6 + 16))(v6, v7);
LABEL_8:
}

void sub_1000C4798(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _MRLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1003A7900();
    }

    [*(a1 + 32) trackWithError:v6];
    (*(*(a1 + 72) + 16))();
  }

  else
  {
    if (([*(a1 + 40) disarm] & 1) == 0)
    {
      v8 = _MRLogForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1003A7970();
      }
    }

    v9 = [*(a1 + 32) nearbyGroup];
    [v9 end];

    v10 = [*(a1 + 48) queue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000C4970;
    v12[3] = &unk_1004BB168;
    v11 = *(a1 + 56);
    v12[4] = *(a1 + 48);
    v13 = v11;
    v17 = *(a1 + 72);
    v14 = v5;
    v15 = *(a1 + 32);
    v16 = *(a1 + 64);
    v19 = *(a1 + 88);
    v18 = *(a1 + 80);
    dispatch_async(v10, v12);
  }
}

void sub_1000C4970(uint64_t a1)
{
  v2 = [*(a1 + 32) lastSessionEventDate];
  v3 = v2;
  if (v2 == *(a1 + 40))
  {
  }

  else
  {
    v4 = [v2 isEqual:?];

    if ((v4 & 1) == 0)
    {
      v5 = _MRLogForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[MRDGroupSessionManager] New session event occurred after generating nearby group.", buf, 2u);
      }

      v6 = *(a1 + 72);
      v7 = [NSError msv_errorWithDomain:MRGroupSessionError code:13 debugDescription:@"Implicitly cancelled due to new session request"];
      (*(v6 + 16))(v6, v7);
      goto LABEL_10;
    }
  }

  v8 = _MRLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = *(a1 + 48);
    *buf = 138543362;
    v34 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[MRDGroupSessionManager] Generated MRDNearbyGroup: %{public}@.", buf, 0xCu);
  }

  v10 = [MRBlockGuard alloc];
  v11 = +[MRUserSettings currentSettings];
  [v11 groupSessionNearbyInvitationCreateTimeout];
  v13 = v12;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1000C4CC4;
  v31[3] = &unk_1004B6FC0;
  v32 = *(a1 + 56);
  v14 = [v10 initWithTimeout:@"NearbyInvitationCreate" reason:v31 handler:v13];

  v15 = [*(a1 + 56) nearbyInvitation];
  [v15 start];

  v16 = *(a1 + 48);
  v17 = [*(a1 + 64) displayName];
  v18 = *(a1 + 88);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000C4D30;
  v22[3] = &unk_1004BB140;
  v23 = *(a1 + 56);
  v29 = *(a1 + 72);
  v19 = *(a1 + 32);
  v20 = *(a1 + 40);
  v24 = v14;
  v25 = v19;
  v26 = v20;
  v27 = *(a1 + 48);
  v28 = *(a1 + 64);
  v30 = *(a1 + 80);
  v21 = v14;
  [_TtC12mediaremoted19MRDNearbyInvitation createWithNearbyGroup:v16 displayName:v17 routeType:v18 completion:v22];

  v7 = v32;
LABEL_10:
}

void sub_1000C4CC4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MRLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1003A78C4();
  }

  [*(a1 + 32) trackWithError:v3];
}

void sub_1000C4D30(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _MRLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1003A79AC();
    }

    [*(a1 + 32) trackWithError:v6];
    (*(*(a1 + 80) + 16))();
  }

  else
  {
    if (([*(a1 + 40) disarm] & 1) == 0)
    {
      v8 = _MRLogForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1003A7A1C();
      }
    }

    v9 = [*(a1 + 32) nearbyInvitation];
    [v9 end];

    v10 = [*(a1 + 48) queue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000C4F14;
    v12[3] = &unk_1004BB118;
    v11 = *(a1 + 56);
    v12[4] = *(a1 + 48);
    v13 = v11;
    v18 = *(a1 + 80);
    v14 = v5;
    v15 = *(a1 + 64);
    v16 = *(a1 + 72);
    v17 = *(a1 + 32);
    v19 = *(a1 + 88);
    dispatch_async(v10, v12);
  }
}

void sub_1000C4F14(uint64_t a1)
{
  v2 = [*(a1 + 32) lastSessionEventDate];
  v3 = v2;
  if (v2 == *(a1 + 40))
  {
  }

  else
  {
    v4 = [v2 isEqual:?];

    if ((v4 & 1) == 0)
    {
      v5 = _MRLogForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[MRDGroupSessionManager] New session event occurred after creating nearby invitation.", &v19, 2u);
      }

      v6 = *(a1 + 80);
      v7 = [NSError msv_errorWithDomain:MRGroupSessionError code:13 debugDescription:@"Implicitly cancelled due to new session request"];
      (*(v6 + 16))(v6, v7);
      goto LABEL_12;
    }
  }

  v8 = _MRLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = *(a1 + 48);
    v19 = 138543362;
    v20 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[MRDGroupSessionManager] Generated MRDNearbyInvitation: %{public}@.", &v19, 0xCu);
  }

  v7 = [MRDGroupSessionProvider createRemoteControlSessionWithNearbyGroup:*(a1 + 56) nearbyInvitation:*(a1 + 48) identity:*(a1 + 64)];
  [*(a1 + 72) track];
  objc_storeStrong((*(a1 + 32) + 24), v7);
  v10 = objc_alloc_init(NSMutableDictionary);
  v11 = *(a1 + 32);
  v12 = *(v11 + 64);
  *(v11 + 64) = v10;

  v13 = _MRLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = [v7 joinToken];
    v15 = [v14 joinURLString];
    v19 = 138412290;
    v20 = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[MRDGroupSessionManager] Generated join URL: %@", &v19, 0xCu);
  }

  v16 = [*(a1 + 32) pendingCompletions];
  v17 = objc_retainBlock(*(a1 + 88));
  v18 = [v7 identifier];
  [v16 setObject:v17 forKey:v18];

  [v7 addObserver:*(a1 + 32)];
  [v7 start];
  [*(a1 + 32) reevaluateDiscoveryMode];
LABEL_12:
}

void sub_1000C5360(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = objc_alloc_init(MRAVLightweightReconnaissanceSession);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000C5510;
    v17[3] = &unk_1004B9698;
    v18 = v5;
    v7 = +[MRUserSettings currentSettings];
    [v7 groupSessionEndpointDiscoveryInterval];
    v9 = v8;
    v10 = MRGroupSessionSubsystemGetQueue();
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000C5584;
    v12[3] = &unk_1004BB1E0;
    v13 = v6;
    v16 = *(a1 + 40);
    v14 = *(a1 + 32);
    v15 = v18;
    v11 = v6;
    [v11 searchEndpointsWithPredicate:v17 timeout:@"MRGroupSession.waitForGroupSessionEndpoint" reason:v10 queue:v12 completion:v9];
  }
}

id sub_1000C5510(uint64_t a1, void *a2)
{
  v3 = [a2 groupSessionInfo];
  v4 = [v3 identifier];
  v5 = [*(a1 + 32) identifier];
  v6 = [v4 isEqualToString:v5];

  return v6;
}

void sub_1000C5584(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = a2;
  v5 = *(a1 + 32);
  if (a3)
  {
    v6 = *(a1 + 56);
    v7 = [NSError msv_errorWithDomain:MRGroupSessionError code:1 underlyingError:a3 debugDescription:@"waitForGroupSessionEndpoint timeout"];
    (*(v6 + 16))(v6, 0, v7);
  }

  else
  {
    v8 = [*(a1 + 40) sharedSecret];

    if (!v8)
    {
      v9 = [v16 groupLeader];
      v10 = [v9 uid];

      v11 = [[MRUpdateActiveSystemEndpointRequest alloc] initWithOutputDeviceUID:v10 reason:@"MRGroupSession.joined"];
      v12 = +[MRDMediaRemoteServer server];
      v13 = [v12 routingServer];
      v14 = [v13 systemEndpointController];
      [v14 updateSystemEndpointForRequest:v11];
    }

    v15 = *(a1 + 48);
    (*(*(a1 + 56) + 16))();
  }
}

void sub_1000C58E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) notificationQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C59AC;
  v7[3] = &unk_1004B8B50;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void sub_1000C59C4(id *a1)
{
  v2 = a1[4];
  v16 = 0;
  v3 = [v2 checkCanJoinGroupSessionWithError:&v16];
  v4 = v16;
  if (v3)
  {
    v5 = +[NSDate date];
    [a1[4] setLastSessionEventDate:v5];
    [a1[4] cleanupExistingSessionIfNeeded];
    v6 = _MRLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionManager] Fetch identity.", buf, 2u);
    }

    v7 = a1[4];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000C5B80;
    v10[3] = &unk_1004BB280;
    v10[4] = v7;
    v13 = a1[6];
    v11 = v5;
    v12 = a1[5];
    v14 = a1[7];
    v8 = v5;
    [v7 fetchUserIdentity:v10];
  }

  else
  {
    v9 = _MRLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1003A7B38();
    }

    (*(a1[6] + 2))();
  }
}

void sub_1000C5B80(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] queue];
  dispatch_assert_queue_V2(v7);

  if (!v6)
  {
    v9 = +[MRDMusicUserStateCenter sharedCenter];
    v10 = [v9 localActiveUserState];

    if ([v10 isMinor])
    {
      v11 = a1[7];
      v12 = MRGroupSessionError;
      v13 = @"User is minor.";
      v14 = 16;
LABEL_12:
      v19 = [NSError msv_errorWithDomain:v12 code:v14 debugDescription:v13];
      v11[2](v11, v19);
LABEL_25:

      goto LABEL_26;
    }

    v15 = [a1[4] lastSessionEventDate];
    v16 = v15;
    if (v15 == a1[5])
    {
    }

    else
    {
      v17 = [v15 isEqual:?];

      if ((v17 & 1) == 0)
      {
        v18 = _MRLogForCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "[MRDGroupSessionManager] New session event occurred after fetching identity.", buf, 2u);
        }

        v11 = a1[7];
        v12 = MRGroupSessionError;
        v13 = @"Implicitly cancelled due to new session request";
        v14 = 13;
        goto LABEL_12;
      }
    }

    v20 = [a1[6] discoveredSession];
    v19 = [v20 identifier];

    v21 = [a1[4] listenerForSessionWithIdentifier:v19];
    v22 = _MRLogForCategory();
    v23 = v22;
    if (v21)
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v39 = v5;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionManager] Will join as: %{public}@", buf, 0xCu);
      }

      [a1[4] dismissAllDiscoveredSessions];
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_1000C5F9C;
      v34[3] = &unk_1004BB258;
      v33 = a1[4];
      v24 = a1[7];
      v25 = a1[5];
      *&v26 = a1[6];
      *(&v26 + 1) = v24;
      *&v27 = v33;
      *(&v27 + 1) = v25;
      v35 = v27;
      v36 = v26;
      v37 = a1[8];
      v28 = objc_retainBlock(v34);
      if (v19)
      {
        v29 = a1[4];
        v30 = [a1[6] discoveredSession];
        [v29 acknowledgeSession:v30];

        [v21 requestToJoinDiscoveredSession:v19 completion:v28];
      }

      else
      {
        [v21 requestToJoinSession:a1[6] completion:v28];
      }
    }

    else
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_1003A7C18();
      }

      v31 = a1[7];
      v32 = [NSError msv_errorWithDomain:MRGroupSessionError code:9 debugDescription:@"No listener available to join session"];
      v31[2](v31, v32);
    }

    goto LABEL_25;
  }

  v8 = _MRLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_1003A7BA8();
  }

  (*(a1[7] + 2))();
LABEL_26:
}

void sub_1000C5F9C(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C60DC;
  block[3] = &unk_1004BB230;
  v15 = v5;
  v16 = v6;
  v8 = a1[7];
  v13 = *(a1 + 2);
  v9 = *(&v13 + 1);
  *&v10 = a1[6];
  *(&v10 + 1) = v8;
  v17 = v13;
  v18 = v10;
  v19 = a1[8];
  v11 = v6;
  v12 = v5;
  dispatch_async(v7, block);
}

void sub_1000C60DC(uint64_t a1)
{
  if (!*(a1 + 32) || *(a1 + 40))
  {
    v2 = _MRLogForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1003A7C54(a1);
    }

    v3 = *(a1 + 40);
    (*(*(a1 + 72) + 16))();
    return;
  }

  v4 = [*(a1 + 48) lastSessionEventDate];
  v5 = v4;
  if (v4 == *(a1 + 56))
  {
  }

  else
  {
    v6 = [v4 isEqual:?];

    if ((v6 & 1) == 0)
    {
      v7 = _MRLogForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        LOWORD(v18) = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[MRDGroupSessionManager] New session event occurred after requesting to join with token.", &v18, 2u);
      }

      v8 = *(a1 + 72);
      v9 = [NSError msv_errorWithDomain:MRGroupSessionError code:13 debugDescription:@"Implicitly cancelled due to new session request"];
      (*(v8 + 16))(v8, v9);

      return;
    }
  }

  v10 = _MRLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [*(a1 + 32) sessionIdentifier];
    v18 = 138543362;
    v19 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionManager] Got invitation response with sessionID: %{public}@. Joining session", &v18, 0xCu);
  }

  v12 = [*(a1 + 32) joinToken];
  v13 = v12;
  if (!v12)
  {
    v13 = *(a1 + 64);
  }

  v14 = v13;

  v15 = *(a1 + 48);
  v16 = [*(a1 + 32) nearbyGroup];
  v17 = [*(a1 + 32) publicSigningKeyData];
  [v15 joinGroupSessionWithNearbyGroup:v16 hostSigningKey:v17 joinToken:v14 completion:*(a1 + 80)];
}

void sub_1000C643C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000C6454(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) nearbyInvitation];
  [v2 markAsUsed];

  v3 = [*(*(a1 + 32) + 72) assertPublicAdvertisement];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  ++*(*(a1 + 32) + 208);
  v6 = +[MRUserSettings currentSettings];
  v7 = [v6 groupSessionDelayedInitializationEnabled];

  if (v7 && !*(*(a1 + 32) + 104))
  {
    v13 = +[MRDMediaRemoteServer server];
    v8 = [v13 groupSessionServer];
    v9 = [v8 assertionManager];
    v10 = [v9 createAssertionWithReason:@"Participant management visible"];
    v11 = *(a1 + 32);
    v12 = *(v11 + 104);
    *(v11 + 104) = v10;
  }
}

void sub_1000C6608(uint64_t a1)
{
  --*(*(a1 + 32) + 208);
  v1 = *(a1 + 32);
  if (!*(v1 + 208))
  {
    v2 = *(v1 + 104);
    *(v1 + 104) = 0;
  }
}

void sub_1000C66F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000C6A08(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) copy];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000C6BA4;
  v11[3] = &unk_1004BB2A8;
  v12 = *(a1 + 40);
  v3 = [v2 msv_firstWhere:v11];
  if (v3)
  {
    v4 = [*(a1 + 32) notificationQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000C6BFC;
    block[3] = &unk_1004BB2D0;
    block[4] = *(a1 + 32);
    v8 = v3;
    v10 = *(a1 + 56);
    v9 = *(a1 + 48);
    dispatch_async(v4, block);
  }

  else
  {
    v5 = *(a1 + 48);
    v6 = [NSError msv_errorWithDomain:MRGroupSessionError code:2 debugDescription:@"No discovered session found for identifier."];
    (*(v5 + 16))(v5, v6);
  }
}

uint64_t sub_1000C6BA4(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = v3;
  if (v3 == *(a1 + 32))
  {
    v5 = 1;
  }

  else
  {
    v5 = [v3 isEqual:?];
  }

  return v5;
}

void sub_1000C6BFC(uint64_t a1)
{
  v2 = [*(a1 + 32) uiManager];
  [v2 openMusicForDiscoveredSession:*(a1 + 40) foreground:*(a1 + 56) completion:*(a1 + 48)];
}

void sub_1000C7044(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError msv_errorWithDomain:MRGroupSessionError code:13 debugDescription:@"Implicitly cancelled due to new join request"];
  (*(v1 + 16))(v1, 0, v2);
}

void sub_1000C70C4(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if ([*(a1 + 40) isHosted])
        {
          if (objc_opt_respondsToSelector())
          {
            [v7 manager:*(a1 + 48) didEndHostedGroupSession:*(a1 + 40)];
          }
        }

        else if (objc_opt_respondsToSelector())
        {
          [v7 manager:*(a1 + 48) didLeaveRemoteGroupSession:*(a1 + 40)];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void sub_1000C751C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 176), 8);
  _Block_object_dispose((v1 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1000C7540(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(*(*(a1 + 48) + 8) + 40) disarm])
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 removeObserver:*(*(*(a1 + 56) + 8) + 40)];

    v5 = [*(a1 + 32) queue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000C7640;
    v6[3] = &unk_1004B8B50;
    v8 = *(a1 + 40);
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void sub_1000C7658(uint64_t a1)
{
  v2 = +[MRDMusicUserStateCenter sharedCenter];
  v7 = [v2 localActiveUserState];

  v3 = [v7 identitySupportsCollaboration];
  v4 = [v7 userIdentity];
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6 && [v4 type] == 1)
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_1000C7710(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError msv_errorWithDomain:MRGroupSessionError code:4 debugDescription:@"No resolvable identity available."];
  (*(v1 + 16))(v1, 0, v2);
}

void sub_1000C7A74(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) notificationQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C7B38;
  v7[3] = &unk_1004B8B50;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void sub_1000C7C50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000C7C68(uint64_t a1)
{
  v2 = +[MRDMusicUserStateCenter sharedCenter];
  v3 = [v2 localActiveUserState];

  if (([v3 groupSessionsSupportedForAccountRegion] & 1) == 0)
  {
    v11 = MRGroupSessionError;
    v12 = @"Feature not available in account region.";
    v13 = 17;
LABEL_8:
    v14 = [NSError msv_errorWithDomain:v11 code:v13 debugDescription:v12];
    v15 = *(*(a1 + 40) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    v10 = 0;
    goto LABEL_9;
  }

  v4 = [*(a1 + 32) eligibilityMonitor];
  v5 = [v4 eligibilityStatus];
  v6 = [v5 isManateeEnabled];

  if ((v6 & 1) == 0)
  {
    v11 = MRGroupSessionError;
    v12 = @"Manatee reported unavailable for current account.";
    v13 = 10;
    goto LABEL_8;
  }

  v7 = [*(a1 + 32) eligibilityMonitor];
  v8 = [v7 eligibilityStatus];
  v9 = [v8 idsAccountIsValid];

  if ((v9 & 1) == 0)
  {
    v11 = MRGroupSessionError;
    v12 = @"No active IDS account for Group Session service";
    v13 = 11;
    goto LABEL_8;
  }

  v10 = 1;
LABEL_9:

  return v10;
}

void sub_1000C7ED4(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        v8 = [*(a1 + 40) uiManager];
        v9 = [v7 identifier];
        [v8 dismissDiscoveredSession:v9];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

id sub_1000C833C(uint64_t a1)
{
  [*(a1 + 32) setAdvertisingPreferenceEnabled:MRGroupSessionNearbyContactDiscoveryEnabled()];
  v2 = *(a1 + 32);

  return [v2 reevaluateAdvertisement];
}

void sub_1000C87DC(uint64_t a1)
{
  v2 = _MRLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[MRDGroupSessionManager] Removing acknowledgement for session: %{public}@", &v5, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained resetAcknowledgementForSessionIdentifier:*(a1 + 32)];
}

void sub_1000C8AB8(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        v8 = [*(a1 + 40) uiManager];
        v9 = [v7 identifier];
        [v8 dismissDiscoveredSession:v9];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

void sub_1000C8BE0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 manager:*(a1 + 32) discoveredSessionsDidChange:*(*(a1 + 32) + 16)];
  }
}

void sub_1000C8C44(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = +[MRDMediaRemoteServer server];
    v4 = [v3 nowPlayingServer];
    v5 = +[MROrigin localOrigin];
    v6 = [v4 originClientForOrigin:v5];
    v7 = [v6 activeNowPlayingClient];
    v8 = [v7 activePlayerClient];

    [v8 timeSincePlaying];
    v10 = v9;
    if (v9 >= *(a1 + 40))
    {
      v11 = _MRLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 134217984;
        v13 = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionManager] Ending session because: No playback in session for: %.2f seconds", &v12, 0xCu);
      }

      [WeakRetained[3] removeAllParticipants];
    }
  }
}

void sub_1000C90EC(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2 == 4 || v2 == 2)
  {
    v4 = [*(a1 + 32) pendingCompletions];
    v5 = [*(a1 + 40) identifier];
    v8 = [v4 objectForKey:v5];

    v6 = [*(a1 + 32) pendingCompletions];
    v7 = [*(a1 + 40) identifier];
    [v6 removeObjectForKey:v7];
  }

  else
  {
    v8 = 0;
  }

  v9 = (a1 + 40);
  v10 = *(a1 + 40);
  v11 = *(*(a1 + 32) + 24);
  v12 = v11;
  if (v11 == v10)
  {

LABEL_14:
    v17 = *(a1 + 48);
    switch(v17)
    {
      case 4:
        if ([*v9 isHosted])
        {
          v31 = [*(a1 + 32) advertiser];
          [v31 setActiveSession:0 identity:0];

          [*(a1 + 32) reevaluateAdvertisement];
        }

        v32 = [*(a1 + 32) observers];
        v33 = [v32 allObjects];

        v34 = [*(a1 + 32) notificationQueue];
        v43 = _NSConcreteStackBlock;
        v44 = 3221225472;
        v45 = sub_1000C9954;
        v46 = &unk_1004BB398;
        v50 = v8;
        v47 = v33;
        v35 = *(a1 + 40);
        v36 = *(a1 + 32);
        v48 = v35;
        v49 = v36;
        v16 = v33;
        dispatch_async(v34, &v43);

        v37 = *(a1 + 32);
        v38 = *(v37 + 24);
        *(v37 + 24) = 0;

        v39 = objc_alloc_init(NSMutableDictionary);
        v40 = *(a1 + 32);
        v41 = *(v40 + 64);
        *(v40 + 64) = v39;

        *(*(a1 + 32) + 11) = 0;
        [*(a1 + 32) reevaluatePlaybackState];
        [*(a1 + 32) reevaluateDiscoveryMode];

        v25 = v50;
        break;
      case 3:
        v26 = [*(a1 + 32) observers];
        v27 = [v26 allObjects];

        v28 = [*(a1 + 32) notificationQueue];
        v51[0] = _NSConcreteStackBlock;
        v51[1] = 3221225472;
        v51[2] = sub_1000C9834;
        v51[3] = &unk_1004B69D0;
        v29 = *(a1 + 32);
        v30 = *(a1 + 40);
        v52 = v27;
        v53 = v29;
        v54 = v30;
        v16 = v27;
        dispatch_async(v28, v51);

        v25 = v52;
        break;
      case 2:
        if (!v8)
        {
          v16 = _MRLogForCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v42 = *v9;
            *buf = 138543362;
            v62 = v42;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionManager] No completion for session in state .joined: %{public}@.", buf, 0xCu);
          }

          goto LABEL_26;
        }

        if ([*v9 isHosted])
        {
          v18 = [*(a1 + 32) advertiser];
          v19 = *(a1 + 40);
          v20 = [v19 localIdentity];
          [v18 setActiveSession:v19 identity:v20];

          [*(a1 + 32) reevaluateAdvertisement];
        }

        v21 = [*(a1 + 32) observers];
        v22 = [v21 allObjects];

        v23 = [*(a1 + 32) notificationQueue];
        v55[0] = _NSConcreteStackBlock;
        v55[1] = 3221225472;
        v55[2] = sub_1000C96AC;
        v55[3] = &unk_1004B9758;
        v24 = *(a1 + 40);
        v55[4] = *(a1 + 32);
        v56 = v24;
        v57 = v22;
        v58 = v8;
        v16 = v22;
        dispatch_async(v23, v55);

        v25 = v56;
        break;
      default:
        goto LABEL_27;
    }

    goto LABEL_26;
  }

  v13 = [v11 isEqual:v10];

  if (v13)
  {
    goto LABEL_14;
  }

  v14 = _MRLogForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    sub_1003A7DB4((a1 + 40), v14);
  }

  if (v8)
  {
    v15 = [*(a1 + 32) notificationQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000C962C;
    block[3] = &unk_1004B79A0;
    v60 = v8;
    dispatch_async(v15, block);

    v16 = v60;
LABEL_26:
  }

LABEL_27:
}

void sub_1000C962C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError msv_errorWithDomain:MRGroupSessionError code:2 debugDescription:@"Session is untracked."];
  (*(v1 + 16))(v1, 0, v2);
}

void sub_1000C96AC(uint64_t a1)
{
  v2 = [*(a1 + 32) uiManager];
  [v2 beginObservingSession:*(a1 + 40)];

  v3 = *(a1 + 40);
  (*(*(a1 + 56) + 16))();
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = *(a1 + 48);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if ([*(a1 + 40) isHosted])
        {
          if (objc_opt_respondsToSelector())
          {
            [v9 manager:*(a1 + 32) didStartHostedGroupSession:*(a1 + 40)];
          }
        }

        else if (objc_opt_respondsToSelector())
        {
          [v9 manager:*(a1 + 32) didJoinRemoteGroupSession:*(a1 + 40)];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

void sub_1000C9834(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 manager:*(a1 + 40) activeSessionDidChange:{*(a1 + 48), v8}];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void sub_1000C9954(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    v9 = [NSError msv_errorWithDomain:MRGroupSessionError code:1 debugDescription:@"Group session invalidated during start."];
    (*(v1 + 16))(v1, 0);
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = *(a1 + 32);
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v10 + 1) + 8 * i);
          if ([*(a1 + 40) isHosted])
          {
            if (objc_opt_respondsToSelector())
            {
              [v8 manager:*(a1 + 48) didEndHostedGroupSession:*(a1 + 40)];
            }
          }

          else if (objc_opt_respondsToSelector())
          {
            [v8 manager:*(a1 + 48) didLeaveRemoteGroupSession:*(a1 + 40)];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }
  }
}

void sub_1000C9CAC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v53[0] = _NSConcreteStackBlock;
  v53[1] = 3221225472;
  v53[2] = sub_1000CA1DC;
  v53[3] = &unk_1004BAC70;
  v53[4] = *(a1 + 40);
  v3 = [v2 msv_filter:v53];
  v4 = [*(*(a1 + 40) + 64) allKeys];
  v5 = [NSMutableSet setWithArray:v4];

  v6 = [*(a1 + 32) msv_map:&stru_1004BB3B8];
  v7 = [NSSet setWithArray:v6];

  v36 = v7;
  [v5 minusSet:v7];
  v8 = *(*(a1 + 40) + 64);
  v9 = [v5 allObjects];
  v10 = +[NSNull null];
  v37 = [v8 objectsForKeys:v9 notFoundMarker:v10];

  v11 = *(*(a1 + 40) + 64);
  v12 = [v5 allObjects];
  [v11 removeObjectsForKeys:v12];

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = v3;
  v13 = [obj countByEnumeratingWithState:&v49 objects:v57 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v50;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v50 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v49 + 1) + 8 * i);
        v18 = _MRLogForCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v56 = v17;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionManager] Observed new remote pending participant: %@", buf, 0xCu);
        }

        v20 = sub_1000CA23C(v19, v17);
        v21 = *(*(a1 + 40) + 64);
        v22 = [(MRDGroupSessionParticipant *)v17 identifier];
        [v21 setObject:v17 forKeyedSubscript:v22];

        v23 = [*(a1 + 40) notificationQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000CA2D8;
        block[3] = &unk_1004B69D0;
        v24 = *(a1 + 48);
        block[4] = *(a1 + 40);
        v47 = v20;
        v48 = v24;
        v25 = v20;
        dispatch_async(v23, block);
      }

      v14 = [obj countByEnumeratingWithState:&v49 objects:v57 count:16];
    }

    while (v14);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v38 = v37;
  v26 = [v38 countByEnumeratingWithState:&v42 objects:v54 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v43;
    do
    {
      for (j = 0; j != v27; j = j + 1)
      {
        if (*v43 != v28)
        {
          objc_enumerationMutation(v38);
        }

        v30 = *(*(&v42 + 1) + 8 * j);
        v31 = _MRLogForCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v56 = v30;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionManager] Observed removed remote pending participant: %@", buf, 0xCu);
        }

        v32 = *(*(a1 + 40) + 64);
        v33 = [(MRDGroupSessionParticipant *)v30 identifier];
        [v32 setObject:0 forKeyedSubscript:v33];

        v34 = [*(a1 + 40) notificationQueue];
        v40[0] = _NSConcreteStackBlock;
        v40[1] = 3221225472;
        v40[2] = sub_1000CA508;
        v40[3] = &unk_1004BB428;
        v35 = *(a1 + 40);
        v40[5] = v30;
        v41 = &stru_1004BB3D8;
        v40[4] = v35;
        dispatch_async(v34, v40);
      }

      v27 = [v38 countByEnumeratingWithState:&v42 objects:v54 count:16];
    }

    while (v27);
  }
}

BOOL sub_1000CA1DC(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 64);
  v3 = [a2 identifier];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = v4 == 0;

  return v5;
}

id sub_1000CA23C(id a1, MRDGroupSessionParticipant *a2)
{
  v2 = a2;
  v3 = [MRDGroupSessionJoinRequest alloc];
  v4 = [(MRDGroupSessionParticipant *)v2 identifier];
  v5 = [(MRDGroupSessionParticipant *)v2 identity];

  v6 = [(MRDGroupSessionJoinRequest *)v3 initWithIdentifier:v4 identity:v5 oobKeys:&__NSArray0__struct];

  return v6;
}

void sub_1000CA2D8(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000CA38C;
  v6[3] = &unk_1004BB400;
  v7 = v2;
  v4 = *(a1 + 48);
  v5 = *(a1 + 32);
  v8 = v4;
  v9 = v5;
  [v3 displayJoinRequest:v7 handler:v6];
}

void sub_1000CA38C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    v3 = _MRLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v13 = 138412290;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionManager] User interacted with remote authorization request: %@", &v13, 0xCu);
    }

    v5 = +[MRDMediaRemoteServer server];
    v6 = [v5 routingServer];
    v7 = [v6 systemEndpointController];
    v8 = [MRUpdateActiveSystemEndpointRequest alloc];
    v9 = [*(a1 + 40) joinToken];
    v10 = [v9 effectiveIdentifier];
    v11 = [v8 initWithOutputDeviceUID:v10 reason:@"MRGroupSession.remote-join.WHA"];
    [v7 updateSystemEndpointForRequest:v11];

    v12 = [*(a1 + 48) uiManager];
    [v12 openMusicParticipantManagementWithCompletion:0];
  }
}

void sub_1000CA508(uint64_t a1)
{
  v4 = [*(a1 + 32) uiManager];
  v2 = *(a1 + 40);
  v3 = (*(*(a1 + 48) + 16))();
  [v4 dismissJoinRequest:v3];
}

void sub_1000CA7BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000CA7D4(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

id sub_1000CA9F0(uint64_t a1)
{
  [*(a1 + 32) reevaluateAdvertisement];
  v2 = *(a1 + 32);

  return [v2 reevaluatePlaybackState];
}

void sub_1000CABFC(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 32);
  if (v3 == v2)
  {
  }

  else
  {
    v8 = v3;
    v4 = [v3 isEqual:v2];

    if ((v4 & 1) == 0)
    {
      v5 = _MRLogForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 40);
        v7 = *(*(a1 + 32) + 32);
        *buf = 138543618;
        v10 = v7;
        v11 = 2114;
        v12 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionManager] Leader token changed from %{public}@ to %{public}@", buf, 0x16u);
      }

      objc_storeStrong((*(a1 + 32) + 32), *(a1 + 40));
      [*(a1 + 32) reevaluateProxyAdvertisement];
    }
  }
}

id sub_1000CADBC(uint64_t a1)
{
  [*(a1 + 32) reevaluateAdvertisement];
  v2 = *(a1 + 32);

  return [v2 reevaluateProxyAdvertisement];
}

void sub_1000CB004(id *a1, char a2, uint64_t a3, char a4)
{
  v8 = [a1[4] queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000CB104;
  block[3] = &unk_1004BB4E0;
  v13 = *(a1 + 2);
  v9 = *(&v13 + 1);
  v17 = a3;
  v18 = a2;
  v10 = a1[6];
  v19 = a4;
  v11 = a1[7];
  *&v12 = v10;
  *(&v12 + 1) = v11;
  v15 = v13;
  v16 = v12;
  dispatch_async(v8, block);
}

void sub_1000CB104(uint64_t a1)
{
  v2 = [*(a1 + 32) uiManager];
  v24 = _NSConcreteStackBlock;
  v25 = 3221225472;
  v26 = sub_1000CB418;
  v27 = &unk_1004BB450;
  v3 = *(a1 + 40);
  v4 = *(a1 + 64);
  v28 = v3;
  v29 = v4;
  MRAnalyticsSendEvent();
  if (*(a1 + 72) == 1)
  {
    v5 = _MRLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      *buf = 138543362;
      v31 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionManager] Will auto approve request: %{public}@", buf, 0xCu);
    }

    v7 = [*(a1 + 40) identity];
    [MRDGroupSessionApprovalManager donateApprovedIdentity:v7];

    [*(a1 + 48) handleApprovedJoinRequest:*(a1 + 40) isGuest:*(a1 + 73)];
    v8 = [*(a1 + 32) notificationQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000CB534;
    block[3] = &unk_1004B79A0;
    v23 = *(a1 + 56);
    dispatch_async(v8, block);

    v9 = v23;
  }

  else
  {
    v11 = *(a1 + 40);
    v10 = *(a1 + 48);
    v12 = *(a1 + 73);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000CB548;
    v18[3] = &unk_1004BB478;
    v18[4] = *(a1 + 32);
    v19 = v2;
    v20 = *(a1 + 40);
    v21 = *(a1 + 56);
    v13 = [v10 handleJoinRequest:v11 isGuest:v12 completion:v18];
    v14 = [*(a1 + 32) notificationQueue];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000CB698;
    v16[3] = &unk_1004B68F0;
    v15 = *(a1 + 40);
    v16[4] = *(a1 + 32);
    v17 = v15;
    dispatch_async(v14, v16);

    v9 = v19;
  }
}

id sub_1000CB418(uint64_t a1)
{
  v7[0] = kMREventGroupSessionJoinRequestHasOOBKeysKey;
  v2 = [*(a1 + 32) oobKeys];
  v3 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v2 count] != 0);
  v8[0] = v3;
  v8[1] = &__kCFBooleanFalse;
  v7[1] = kMREventGroupSessionJoinRequestIsProxy;
  v7[2] = kMREventGroupSessionJoinRequestAutoApprovedReasonKey;
  v4 = MRDGroupSessionAutoApproveReasonEnum(*(a1 + 40));
  v8[2] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:3];

  return v5;
}

void sub_1000CB548(id *a1, int a2)
{
  v4 = [a1[4] notificationQueue];
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_1000CB64C;
  v9 = &unk_1004BB2D0;
  v10 = a1[5];
  v11 = a1[6];
  v12 = a1[7];
  v13 = a2;
  dispatch_async(v4, &v6);

  if (a2)
  {
    v5 = [a1[6] identity];
    [MRDGroupSessionApprovalManager donateApprovedIdentity:v5];
  }
}

uint64_t sub_1000CB64C(uint64_t a1)
{
  [*(a1 + 32) dismissJoinRequest:*(a1 + 40)];
  v2 = *(a1 + 56);
  v3 = *(*(a1 + 48) + 16);

  return v3();
}

void sub_1000CBAFC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MRLogForCategory();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) identifier];
      v10 = 138412546;
      v11 = v6;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionManager] %@ - Discovered equivalent WHA endpoint: %@", &v10, 0x16u);
    }

    v7 = *(*(a1 + 56) + 8);
    v8 = v3;
    v5 = *(v7 + 40);
    *(v7 + 40) = v8;
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v9 = *(a1 + 40);
    v10 = 138412290;
    v11 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[MRDGroupSessionManager] Unable to discover endpoint for WHA identifier: %@", &v10, 0xCu);
  }

  dispatch_group_leave(*(a1 + 48));
}

NSDictionary *__cdecl sub_1000CBC44(id a1)
{
  v3[0] = kMREventGroupSessionJoinRequestIsProxy;
  v3[1] = kMREventGroupSessionJoinRequestHasOOBKeysKey;
  v4[0] = &__kCFBooleanTrue;
  v4[1] = &__kCFBooleanFalse;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:2];

  return v1;
}

void sub_1000CBCE8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 72);
  if (v4)
  {
    (*(v4 + 16))(v4, 1);
  }

  if (a2 != 1)
  {
    v5 = _MRLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      *buf = 138412290;
      v30 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionManager] User interacted with proxy authorization request: %@", buf, 0xCu);
    }

    v23 = _NSConcreteStackBlock;
    v24 = 3221225472;
    v25 = sub_1000CBFF4;
    v26 = &unk_1004B68F0;
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v27 = v7;
    v28 = v8;
    v9 = objc_retainBlock(&v23);
    v10 = [*(a1 + 48) session];
    v11 = [v10 identifier];
    v12 = [*(a1 + 56) sessionIdentifier];
    v13 = [v11 isEqualToString:v12];

    if (v13)
    {
      v14 = _MRLogForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [*(a1 + 32) identifier];
        v16 = [*(a1 + 56) sessionIdentifier];
        *buf = 138412546;
        v30 = v15;
        v31 = 2112;
        v32 = v16;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionManager] %@ - User already joined to session: %@. Short-circuiting request", buf, 0x16u);
      }
    }

    else
    {
      v17 = *(a1 + 64);
      v18 = dispatch_time(0, (*(a1 + 88) * 1000000000.0));
      dispatch_group_wait(v17, v18);
      v19 = *(*(*(a1 + 80) + 8) + 40);
      v20 = _MRLogForCategory();
      v21 = v20;
      if (!v19)
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_1003A7EA0(a1, (a1 + 56), v21);
        }

        goto LABEL_15;
      }

      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [*(a1 + 32) identifier];
        *buf = 138412290;
        v30 = v22;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionManager] %@ Using equivalent WHA endpoint", buf, 0xCu);
      }
    }

    (v9[2])(v9);
LABEL_15:
  }
}

void sub_1000CBFF4(uint64_t a1)
{
  v2 = +[MRDMediaRemoteServer server];
  v3 = [v2 routingServer];
  v4 = [v3 systemEndpointController];
  v5 = [[MRUpdateActiveSystemEndpointRequest alloc] initWithOutputDeviceUID:*(a1 + 32) reason:@"MRGroupSession.proxy.WHA"];
  [v4 updateSystemEndpointForRequest:v5];

  v6 = [*(a1 + 40) uiManager];
  [v6 openMusicParticipantManagementWithCompletion:0];
}

void sub_1000CC1A4(uint64_t a1)
{
  v2 = +[MRDMusicUserStateCenter sharedCenter];
  v3 = [v2 localActiveUserState];

  if (([v3 isMinor] & 1) != 0 || (objc_msgSend(v3, "groupSessionsSupportedForAccountRegion") & 1) == 0)
  {
    v7 = _MRLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[MRDGroupSessionManager] Ignore session listener callback for user.", buf, 2u);
    }
  }

  else
  {
    if (![*(a1 + 32) source])
    {
      v4 = [*(a1 + 32) hostInfo];
      v5 = [v4 modelIdentifier];
      v6 = [v5 containsString:@"AudioAccessory"];

      if (v6)
      {
        v7 = _MRLogForCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          sub_1003A7F54();
        }

        goto LABEL_17;
      }
    }

    [*(*(a1 + 40) + 16) addObject:*(a1 + 32)];
    v7 = [*(*(a1 + 40) + 16) copy];
    v8 = *(a1 + 40);
    v9 = [*(a1 + 32) identifier];
    [v8 cancelAcknowledgeResetTimerForSessionIdentifier:v9];

    v10 = *(a1 + 40);
    v11 = [*(a1 + 32) identifier];
    LOBYTE(v10) = [v10 shouldNotifyForSessionIdentifier:v11];

    if ((v10 & 1) == 0)
    {
      v13 = _MRLogForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v15 = *(a1 + 32);
        *buf = 138543362;
        v31 = v15;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[MRDGroupSessionManager] Not displaying discovered session: %{public}@ because it was already acknowledged by the user.", buf, 0xCu);
      }

      goto LABEL_16;
    }

    v12 = *(a1 + 40);
    if (v12[3])
    {
      v13 = _MRLogForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = *(a1 + 32);
        *buf = 138543362;
        v31 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[MRDGroupSessionManager] Not displaying session %{public}@ because there is an active session.", buf, 0xCu);
      }

LABEL_16:

      goto LABEL_17;
    }

    v16 = [v12 automaticSharePlayPreferenceEnabled];
    v17 = _MRLogForCategory();
    v13 = v17;
    if ((v16 & 1) == 0)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v23 = *(a1 + 32);
        *buf = 138543362;
        v31 = v23;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[MRDGroupSessionManager] Not displaying session %{public}@ because automatic SharePlay preference is disabled.", buf, 0xCu);
      }

      goto LABEL_16;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a1 + 32);
      v19 = *(a1 + 48);
      *buf = 138543618;
      v31 = v18;
      v32 = 2048;
      v33 = v19;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionManager] Displaying UI for discovered session: %{public}@, listener=%p", buf, 0x16u);
    }

    objc_initWeak(buf, *(a1 + 40));
    v20 = [*(a1 + 40) notificationQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000CC654;
    block[3] = &unk_1004BB5C0;
    v24 = *(a1 + 32);
    v21 = v24.i64[0];
    v28 = vextq_s8(v24, v24, 8uLL);
    objc_copyWeak(&v29, buf);
    dispatch_async(v20, block);

    v22 = *(a1 + 40);
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1000CC804;
    v25[3] = &unk_1004BB5E8;
    v25[4] = v22;
    v7 = v7;
    v26 = v7;
    [v22 notifyObserversWithBlock:v25];

    objc_destroyWeak(&v29);
    objc_destroyWeak(buf);
  }

LABEL_17:
}

void sub_1000CC628(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_1000CC654(id *a1)
{
  v2 = [a1[4] uiManager];
  v3 = a1[5];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000CC72C;
  v4[3] = &unk_1004B9630;
  objc_copyWeak(&v6, a1 + 6);
  v5 = a1[5];
  [v2 displayDiscoveredSession:v3 dismissalHandler:v4];

  objc_destroyWeak(&v6);
}

void sub_1000CC72C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained queue];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000CC7F8;
    v5[3] = &unk_1004B68F0;
    v6 = v3;
    v7 = *(a1 + 32);
    dispatch_async(v4, v5);
  }
}

void sub_1000CC804(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 manager:*(a1 + 32) discoveredSessionsDidChange:*(a1 + 40)];
  }
}

void sub_1000CC918(uint64_t a1)
{
  [*(*(a1 + 32) + 16) removeObject:*(a1 + 40)];
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = [*(a1 + 32) notificationQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000CCA6C;
  block[3] = &unk_1004B68F0;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v12 = v4;
  dispatch_async(v3, block);

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) identifier];
  [v5 startAcknowledgeResetTimerForSessionIdentifier:v6];

  v7 = *(a1 + 32);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000CCAD8;
  v9[3] = &unk_1004BB5E8;
  v9[4] = v7;
  v10 = v2;
  v8 = v2;
  [v7 notifyObserversWithBlock:v9];
}

void sub_1000CCA6C(uint64_t a1)
{
  v3 = [*(a1 + 32) uiManager];
  v2 = [*(a1 + 40) identifier];
  [v3 dismissDiscoveredSession:v2];
}

void sub_1000CCAD8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 manager:*(a1 + 32) discoveredSessionsDidChange:*(a1 + 40)];
  }
}

void sub_1000CCC38(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        (*(*(a1 + 40) + 16))(*(a1 + 40));
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void sub_1000CCE78(uint64_t a1)
{
  v2 = [*(*(a1 + 40) + 24) description];
  [*(a1 + 32) setCurrentGroupSession:v2];

  [*(a1 + 32) setGroupSessionDiscoveryEnabled:*(*(a1 + 40) + 112) != 0];
  v13 = +[NSMutableArray array];
  v3 = [*(a1 + 40) notAdvertisingReason];

  if (v3)
  {
    v4 = [*(a1 + 40) notAdvertisingReason];
    v5 = [NSString stringWithFormat:@"Not advertising because: %@", v4];
    [v13 addObject:v5];
  }

  v6 = [*(a1 + 40) notProxyAdvertisingReason];

  if (v6)
  {
    v7 = [*(a1 + 40) notProxyAdvertisingReason];
    v8 = [NSString stringWithFormat:@"Not proxy-advertising because: %@", v7];
    [v13 addObject:v8];
  }

  v9 = [v13 componentsJoinedByString:{@", "}];
  v10 = [NSString stringWithFormat:@"<%@>", v9];

  [*(a1 + 32) setGroupSessionManagerAdvertiseReason:v10];
  v11 = [*(a1 + 40) advertiser];
  [v11 collectDiagnostic:*(a1 + 32)];

  v12 = [*(a1 + 40) listener];
  [v12 collectDiagnostic:*(a1 + 32)];
}

uint64_t sub_1000CD3E4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1000CD730(uint64_t a1)
{
  v2 = _MRLogForCategory();
  v3 = [*(a1 + 32) requestID];
  v4 = [v3 hash];

  if ((v4 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_INTERVAL_END, v4, "pauseOutputDeviceUIDs.perform", "", buf, 2u);
  }

  [*(*(a1 + 40) + 8) error];
  v5 = [*(*(a1 + 40) + 8) error];

  v6 = _MRLogForCategory();
  v7 = v6;
  if (v5)
  {
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v8 = [*(a1 + 32) requestID];
    v9 = [*(*(a1 + 40) + 8) error];
    v10 = +[NSDate date];
    [v10 timeIntervalSinceDate:*(a1 + 48)];
    *buf = 138544130;
    v35 = @"MRDPauseOutputDevicesRequest.pauseOutputDeviceUIDs";
    v36 = 2114;
    v37 = v8;
    v38 = 2114;
    v39 = v9;
    v40 = 2048;
    v41 = v11;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", buf, 0x2Au);
  }

  else
  {
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    v8 = [*(a1 + 32) requestID];
    v9 = +[NSDate date];
    [v9 timeIntervalSinceDate:*(a1 + 48)];
    *buf = 138543874;
    v35 = @"MRDPauseOutputDevicesRequest.pauseOutputDeviceUIDs";
    v36 = 2114;
    v37 = v8;
    v38 = 2048;
    v39 = v12;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned in %.4lf seconds", buf, 0x20u);
  }

LABEL_10:
  v13 = *(a1 + 64);
  if (v13)
  {
    v14 = [*(*(a1 + 40) + 8) error];
    (*(v13 + 16))(v13, v14);
  }

  v15 = MRLogCategoryMigrationOversize();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(*(a1 + 40) + 8);
    *buf = 138543362;
    v35 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  v17 = +[NSMutableDictionary dictionary];
  v18 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 56) count]);
  [v17 setObject:v18 forKeyedSubscript:@"requestDeviceCount"];

  v19 = [*(a1 + 32) reason];
  [v17 setObject:v19 forKeyedSubscript:@"source"];

  v20 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(*(a1 + 40) + 8) endpointsForcedRemoved]);
  [v17 setObject:v20 forKeyedSubscript:@"forceRemovedEndpointCount"];

  v21 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(*(a1 + 40) + 8) devicesForcedRemoved]);
  [v17 setObject:v21 forKeyedSubscript:@"forceRemoveDeviceCount"];

  v22 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(*(a1 + 40) + 8) endpointsRemoved]);
  [v17 setObject:v22 forKeyedSubscript:@"removedEndpointCount"];

  v23 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(*(a1 + 40) + 8) devicesRemoved]);
  [v17 setObject:v23 forKeyedSubscript:@"removedDeviceCount"];

  v24 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(*(a1 + 40) + 8) devicesPaused]);
  [v17 setObject:v24 forKeyedSubscript:@"pausedDeviceCount"];

  v25 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(*(a1 + 40) + 8) endpointsPaused]);
  [v17 setObject:v25 forKeyedSubscript:@"pausedEndpointCount"];

  v26 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(*(a1 + 40) + 8) appletvsEffected]);
  [v17 setObject:v26 forKeyedSubscript:@"appleTVsAffected"];

  v27 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(*(a1 + 40) + 8) homepodsEffected]);
  [v17 setObject:v27 forKeyedSubscript:@"homepodsAffected"];

  [*(*(a1 + 40) + 8) duration];
  v28 = [NSNumber numberWithDouble:?];
  [v17 setObject:v28 forKeyedSubscript:@"duration"];

  v29 = [*(*(a1 + 40) + 8) error];
  if (v29)
  {
    v30 = &__kCFBooleanTrue;
  }

  else
  {
    v30 = &__kCFBooleanFalse;
  }

  [v17 setObject:v30 forKeyedSubscript:@"success"];

  v31 = [*(*(a1 + 40) + 8) error];
  v33 = v17;
  v32 = v17;
  MRAnalyticsSendEvent();
}

void sub_1000CDEFC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 count];
  v8 = *(a1 + 32);
  if (v7)
  {
    [v8 endEvent:@"discover" withError:0];
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = v5;
    v9 = [obj countByEnumeratingWithState:&v36 objects:v46 count:16];
    if (v9)
    {
      v10 = v9;
      v28 = v5;
      v11 = *v37;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v37 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v36 + 1) + 8 * i);
          v14 = [[MRDPauseOutputDevicesRequestEndpointOperation alloc] initWithEndpoint:v13];
          [*(*(a1 + 40) + 8) addOperation:v14];
          v15 = [NSString alloc];
          v16 = [v13 debugName];
          v17 = [v15 initWithFormat:@"Discovered endpoint: %@", v16];

          v18 = _MRLogForCategory();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = [*(a1 + 48) requestID];
            *buf = 138543874;
            v41 = @"MRDPauseOutputDevicesRequest.pauseOutputDeviceUIDs";
            v42 = 2114;
            v43 = v19;
            v44 = 2112;
            v45 = v17;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
          }

          dispatch_group_enter(*(a1 + 56));
          [(MRDPauseOutputDevicesRequestEndpointOperation *)v14 startEvent:@"Connect"];
          v20 = *(a1 + 48);
          v31[0] = _NSConcreteStackBlock;
          v31[1] = 3221225472;
          v31[2] = sub_1000CE2E4;
          v31[3] = &unk_1004BB638;
          v32 = v14;
          v33 = v13;
          *&v21 = v20;
          *(&v21 + 1) = *(a1 + 40);
          v30 = v21;
          v22 = *(a1 + 64);
          v23 = *(a1 + 56);
          *&v24 = v22;
          *(&v24 + 1) = v23;
          v34 = v30;
          v35 = v24;
          v25 = v14;
          [v13 connectToExternalDeviceWithOptions:0 details:v20 completion:v31];
        }

        v10 = [obj countByEnumeratingWithState:&v36 objects:v46 count:16];
      }

      while (v10);
      v5 = v28;
    }
  }

  else
  {
    [v8 endEvent:@"discover" withError:v6];
    obj = [[NSString alloc] initWithFormat:@"Could not discover any endpoints"];
    v26 = _MRLogForCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [*(a1 + 48) requestID];
      *buf = 138543874;
      v41 = @"MRDPauseOutputDevicesRequest.pauseOutputDeviceUIDs";
      v42 = 2114;
      v43 = v27;
      v44 = 2112;
      v45 = obj;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }
  }

  dispatch_group_leave(*(a1 + 56));
}

void sub_1000CE2E4(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) endEvent:@"Connect" withError:a2];
  v3 = [*(a1 + 40) origin];
  if (v3)
  {
    v4 = [NSString alloc];
    v5 = [*(a1 + 40) debugName];
    v6 = [v4 initWithFormat:@"Connected to endpoint: %@", v5];

    v7 = _MRLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 48) requestID];
      *buf = 138543874;
      v28 = @"MRDPauseOutputDevicesRequest.pauseOutputDeviceUIDs";
      v29 = 2114;
      v30 = v8;
      v31 = 2112;
      v32 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }

    v9 = +[MRDMediaRemoteServer server];
    v10 = [v9 nowPlayingServer];
    v11 = [v10 originClientForOrigin:v3];

    v12 = [v11 activeNowPlayingClient];
    v13 = [v12 activePlayerClient];
    v14 = [v13 playbackState];

    v15 = [NSString alloc];
    v16 = [*(a1 + 40) debugName];
    v17 = MRMediaRemoteCopyPlaybackStateDescription();
    v18 = [v15 initWithFormat:@"Endpoint %@ is %@", v16, v17];

    v19 = _MRLogForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [*(a1 + 48) requestID];
      *buf = 138543874;
      v28 = @"MRDPauseOutputDevicesRequest.pauseOutputDeviceUIDs";
      v29 = 2114;
      v30 = v20;
      v31 = 2112;
      v32 = v18;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }

    if (v14 == 4 || v14 == 1)
    {
      v21 = [*(a1 + 56) _calculateOperationForEndpoint:*(a1 + 40) outputDeviceUIDs:*(a1 + 64)];
      [*(a1 + 32) setPauseOperation:v21];

      dispatch_group_enter(*(a1 + 72));
      v22 = *(a1 + 32);
      v24 = *(a1 + 48);
      v23 = *(a1 + 56);
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_1000CE634;
      v25[3] = &unk_1004B6D08;
      v26 = *(a1 + 72);
      [v23 _performOperation:v22 details:v24 completion:v25];
    }
  }

  dispatch_group_leave(*(a1 + 72));
}

void sub_1000CE810(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v7 = a5;
  v8 = a3;
  v9 = _MRLogForCategory();
  v10 = [*(a1 + 32) requestID];
  v11 = [v10 hash];

  if ((v11 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *v12 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, v11, "pauseOutputDeviceUIDs.discover", "", v12, 2u);
  }

  (*(*(a1 + 40) + 16))();
}

BOOL sub_1000CEF20(id a1, MRAVOutputDevice *a2)
{
  v2 = a2;
  if (([(MRAVOutputDevice *)v2 isRemoteControllable]& 1) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(MRAVOutputDevice *)v2 canRelayCommunicationChannel];
  }

  return v3;
}

uint64_t sub_1000CF7A8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 error];
  [v3 endEvent:@"pause" withError:v4];

  v5 = *(*(a1 + 40) + 16);

  return v5();
}

uint64_t sub_1000CF818(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = MRGroupTopologyModificationRequestTypeDescription();
  [v3 endEvent:v5 withError:v4];

  v6 = *(*(a1 + 40) + 16);

  return v6();
}

uint64_t sub_1000CF890(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) endEvent:@"removeFromParentGroup" withError:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

uint64_t sub_1000CF900(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 pauseOperation];
  v5 = [v4 relevantOutputDeviceUIDs];
  v6 = [v3 uid];

  LODWORD(v3) = [v5 containsObject:v6];
  return v3 ^ 1;
}

void sub_1000CF980(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = v4;
  if (*(a1 + 48) == 1)
  {

    v3 = 0;
  }

  [*(a1 + 32) endEvent:@"modifyRelayEndpoint" withError:v3];
  (*(*(a1 + 40) + 16))();
}

BOOL sub_1000CFEF4(id a1, MRDPauseOutputDevicesRequestEndpointOperationEvent *a2)
{
  v2 = [(MRDPauseOutputDevicesRequestEndpointOperationEvent *)a2 error];
  v3 = v2 != 0;

  return v3;
}

BOOL sub_1000D0260(id a1, MRDPauseOutputDevicesRequestEndpointOperation *a2)
{
  v2 = [(MRDPauseOutputDevicesRequestEndpointOperation *)a2 error];
  v3 = v2 != 0;

  return v3;
}

BOOL sub_1000D0404(id a1, MRAVOutputDevice *a2)
{
  v2 = a2;
  v3 = [(MRAVOutputDevice *)v2 deviceSubtype]== 12 || [(MRAVOutputDevice *)v2 clusterType]== 1;

  return v3;
}

BOOL sub_1000D05A0(id a1, MRAVOutputDevice *a2)
{
  v2 = a2;
  v3 = [(MRAVOutputDevice *)v2 deviceSubtype]== 13 || [(MRAVOutputDevice *)v2 clusterType]== 2;

  return v3;
}

void sub_1000D15E8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  v11 = v10[5];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000D16E4;
  v15[3] = &unk_1004B7310;
  v16 = v7;
  v17 = v10;
  v18 = v8;
  v19 = v9;
  v12 = v9;
  v13 = v8;
  v14 = v7;
  dispatch_async(v11, v15);
}

void sub_1000D16E4(uint64_t a1)
{
  v2 = [*(a1 + 32) data];
  if (v2)
  {
    v3 = [*(a1 + 32) data];
    v11 = 0;
    v4 = [NSPropertyListSerialization propertyListWithData:v3 options:0 format:0 error:&v11];
    v5 = v11;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000D180C;
  v9[3] = &unk_1004BA838;
  v10 = *(a1 + 32);
  [v6 _onWorkerQueue_connectRemoteControlChannelForDestination:v7 session:v8 userInfo:v4 completion:v9];
}

void sub_1000D180C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 protobufData];
  [v2 replyWithData:v3 priority:300];
}

void sub_1000D1BFC(uint64_t a1)
{
  [*(a1 + 32) _onWorkerQueue_disconnectDiscoveryChannel];
  v2 = [[NSError alloc] initWithMRError:104 description:@"IDSConnection Disconnected"];
  [*(a1 + 32) _onWorkerQueue_disconnectAllRemoteControlChannelsWithError:v2];
}

void sub_1000D1E44(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  *(*(a1 + 32) + 49) = 0;
  objc_sync_exit(v2);

  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = [v4 discoveryChannel];
  [v4 _onWorkerQueue_sendEndpoint:v3 toClient:v5 options:0];
}

void sub_1000D1FE8(uint64_t a1)
{
  v2 = [[NSError alloc] initWithMRError:104 description:@"MRDIDSCompanionRemoteControlService.setConnectionState"];
  [*(a1 + 32) _onWorkerQueue_disconnectAllRemoteControlChannelsWithError:v2];
}

void sub_1000D26B0(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.mediaremote.MRDIDSCompanionRemoteControlService.discoveryChannelClientQueue", v3);
  v2 = qword_100529350;
  qword_100529350 = v1;
}

void sub_1000D2BFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  objc_destroyWeak(&a30);
  objc_destroyWeak((v30 - 160));
  _Unwind_Resume(a1);
}

void sub_1000D2C4C(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[5];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000D2D38;
    v7[3] = &unk_1004B7310;
    v8 = WeakRetained;
    v9 = a1[4];
    v10 = a1[5];
    v11 = v3;
    dispatch_async(v6, v7);
  }
}

void sub_1000D2D38(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:*(a1 + 40)];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 48)];

  if (v3)
  {
    v9 = [*(a1 + 56) object];
    v4 = +[MRIDSCompanionConnection sharedManager];
    v5 = [MRProtocolMessage alloc];
    v6 = [v9 error];
    v7 = [v5 initWithUnderlyingCodableMessage:0 error:v6];
    v8 = [v7 protobufData];
    [v4 sendMessage:v8 type:MRIDSServiceMessageTypeDisconnectRemoteControl destination:*(a1 + 40) session:*(a1 + 48) options:0 priority:300];
  }
}

void sub_1000D2E64(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 groupLeader];
  v6 = [v4 exportOutputDevice:v5 endpoint:v3];

  if ([v6 containsUID:*(a1 + 40)])
  {
    v7 = [*(a1 + 48) destinationOutputDeviceUID];
    v8 = [v3 outputDeviceWithUID:v7];

    if (*(a1 + 80) == 1 && ([*(a1 + 48) isDestinationLocal] & 1) == 0)
    {
      [*(a1 + 56) _addAuthorizationCallbackForOutputDevice:v8 destination:*(a1 + 40) session:*(a1 + 64)];
    }

    v9 = *(a1 + 48);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000D3058;
    v17[3] = &unk_1004BA2C0;
    v22 = *(a1 + 80);
    v10 = v9;
    v11 = *(a1 + 56);
    v18 = v10;
    v19 = v11;
    v20 = v8;
    v21 = *(a1 + 72);
    v12 = v8;
    [v10 requestConnectedDestinationEndpoint:v17];
  }

  else
  {
    v13 = [NSError alloc];
    v14 = [v3 debugName];
    v15 = [v13 initWithMRError:118 format:{@"Tried to connect to endpoint but its groupLeader changed from %@ to %@", v14, *(a1 + 40)}];

    v16 = [[MRProtocolMessage alloc] initWithUnderlyingCodableMessage:0 error:v15];
    (*(*(a1 + 72) + 16))();
  }
}

void sub_1000D3058(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (*(a1 + 64) == 1 && ([*(a1 + 32) isDestinationLocal] & 1) == 0)
  {
    [*(a1 + 40) _removeAuthorizationCallbackForOutputDevice:*(a1 + 48)];
  }

  v4 = [[MRProtocolMessage alloc] initWithUnderlyingCodableMessage:0 error:v5];
  (*(*(a1 + 56) + 16))();
}

void sub_1000D31F8(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [[MRPromptForRouteAuthorizationMessage alloc] initWithRoute:a1[4] inputType:a2];
  v7 = +[MRIDSCompanionConnection sharedManager];
  v8 = [v6 protobufData];
  v9 = MRIDSServiceMessageTypeProtobuf;
  v11 = a1[5];
  v10 = a1[6];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000D3320;
  v13[3] = &unk_1004BA310;
  v14 = v5;
  v12 = v5;
  [v7 sendMessage:v8 type:v9 destination:v11 session:v10 options:0 priority:300 response:v13];
}

void sub_1000D3320(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 data];

  if (v4)
  {
    v5 = [v3 data];
    v9 = 0;
    v6 = [MRProtocolMessage protocolMessageWithProtobufData:v5 error:&v9];
    v7 = v9;

    if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v8 = 0;
    }

    else
    {
      v8 = [v6 response];
    }
  }

  else
  {
    v8 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000D3558(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = MRLogCategoryConnections();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[IDSCompanionRemoteControlService] Disconnecting remoteControlChannel from %@-%@...", &v10, 0x16u);
  }

  v9 = [v6 connection];

  [v9 closeWithError:*(a1 + 40)];
}

void sub_1000D4320(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 136), *(a1 + 40));
  v2 = [*(a1 + 32) deviceInfo];
  [*(*(a1 + 32) + 136) setDeviceInfo:v2];
}

void sub_1000D4488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_1000D455C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 144))
  {
    v3 = +[MRDMediaRemoteServer server];
    v4 = [v3 nowPlayingServer];
    [v4 unregisterOrigin:*(*(a1 + 32) + 144)];

    v2 = *(a1 + 32);
  }

  objc_storeStrong((v2 + 144), *(a1 + 40));
  result = *(a1 + 32);
  if (result[18])
  {

    return [result _onSerialQueue_registerOriginCallbacks];
  }

  return result;
}

void sub_1000D4700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000D47D8(uint64_t a1)
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 bundleIdentifier];
  [*(a1 + 32) setLinkAgent:v3];

  if ([*(a1 + 32) isCompanion])
  {
    v4 = [*(a1 + 32) WHAIdentifier];
    [*(a1 + 32) setDeviceUID:v4];
  }

  objc_storeStrong((*(a1 + 40) + 152), *(a1 + 32));
  v5 = *(a1 + 32);
  v6 = *(*(a1 + 40) + 136);

  return [v6 setDeviceInfo:v5];
}

void sub_1000D49D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000D49EC(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = *(*(a1 + 32) + 48);
  *(*(a1 + 32) + 48) = *(a1 + 56);
  v2 = _MRLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(*(*(a1 + 48) + 8) + 24);
    v5 = MRExternalDeviceConnectionStateCopyDescription();
    v6 = *(*(a1 + 32) + 48);
    v7 = v5;
    v8 = MRExternalDeviceConnectionStateCopyDescription();
    [*(*(a1 + 32) + 40) timeIntervalSinceNow];
    v10 = v9;

    v19 = 138544130;
    v20 = v3;
    v21 = 2114;
    v22 = v5;
    v23 = 2112;
    v24 = v8;
    v25 = 2050;
    v26 = -v10;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "WHAPRO: ConnectionState for device %{public}@ change from %{public}@ to %@ in %{public}f seconds", &v19, 0x2Au);
  }

  v11 = +[NSDate date];
  v12 = *(a1 + 32);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  if (*(a1 + 56) == 3)
  {
    v14 = *(a1 + 32);
    v15 = *(a1 + 40);
    v16 = *(v14 + 32);
    *(v14 + 32) = v15;
  }

  else
  {
    v17 = *(a1 + 32);
    v16 = *(v17 + 32);
    *(v17 + 32) = 0;
  }

  if (*(a1 + 56) == 2)
  {
    return [*(a1 + 32) _callAllPendingCompletionsWithError:*(a1 + 40)];
  }

  result = [*(*(a1 + 32) + 120) removeAllOutputDevices];
  if ((*(a1 + 56) & 0xFFFFFFFE) == 2)
  {
    return [*(a1 + 32) _callAllPendingCompletionsWithError:*(a1 + 40)];
  }

  return result;
}

void sub_1000D4DA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000D5E5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, id location)
{
  _Block_object_dispose((v60 - 160), 8);
  objc_destroyWeak(&a57);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000D5E9C(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = _MRLogForCategory();
  v6 = v5;
  if (!v3)
  {
    v13 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (!v13)
      {
        goto LABEL_14;
      }

      v15 = a1[5];
      v14 = a1[6];
      v16 = a1[4];
      v11 = +[NSDate date];
      [v11 timeIntervalSinceDate:a1[7]];
      v25 = 138544130;
      v26 = v15;
      v27 = 2114;
      v28 = v14;
      v29 = 2114;
      v30 = v16;
      v31 = 2048;
      v32 = v17;
      v18 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
      v19 = v6;
      v20 = 42;
    }

    else
    {
      if (!v13)
      {
        goto LABEL_14;
      }

      v21 = a1[5];
      v22 = a1[6];
      v11 = +[NSDate date];
      [v11 timeIntervalSinceDate:a1[7]];
      v25 = 138543874;
      v26 = v21;
      v27 = 2114;
      v28 = v22;
      v29 = 2048;
      v30 = v23;
      v18 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v19 = v6;
      v20 = 32;
    }

    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v18, &v25, v20);
    goto LABEL_13;
  }

  v7 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  if (v4)
  {
    if (!v7)
    {
      goto LABEL_14;
    }

    v9 = a1[5];
    v8 = a1[6];
    v10 = a1[4];
    v11 = +[NSDate date];
    [v11 timeIntervalSinceDate:a1[7]];
    v25 = 138544386;
    v26 = v9;
    v27 = 2114;
    v28 = v8;
    v29 = 2114;
    v30 = v3;
    v31 = 2114;
    v32 = v10;
    v33 = 2048;
    v34 = v12;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v25, 0x34u);
LABEL_13:

    goto LABEL_14;
  }

  if (v7)
  {
    sub_1003A7FA4();
  }

LABEL_14:

  v24 = a1[8];
  if (v24)
  {
    (*(v24 + 16))(v24, v3);
  }
}

id sub_1000D60F0(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1000350DC;
  v10 = sub_100035A24;
  v11 = 0;
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000D61E8;
  v5[3] = &unk_1004B6958;
  v5[4] = v1;
  v5[5] = &v6;
  dispatch_sync(v2, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void sub_1000D61E8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 65) & 1) != 0 || *(v2 + 48) != 1)
  {
    Error = MRMediaRemoteCreateError();
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = Error;
  }
}

id sub_1000D6264(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = [WeakRetained deviceInfo];
  if (v3)
  {
    v4 = [WeakRetained deviceInfo];
    MRAnalyticsCompositionForDeviceInfo();
  }

  v15[0] = kMREventOriginatorKey;
  MRAnalyticsCompositionForLocalDevice();
  v5 = MRAnalyticsDeviceCompositionDescription();
  v16[0] = v5;
  v15[1] = kMREventDestinationKey;
  v6 = MRAnalyticsDeviceCompositionDescription();
  v16[1] = v6;
  v15[2] = kMRConnectionIsRetryKey;
  v7 = [NSNumber numberWithBool:*(a1 + 88)];
  v16[2] = v7;
  v15[3] = kMRConnectionReasonKey;
  v15[4] = @"requestID";
  v8 = @"NONE";
  v17 = vbslq_s8(vceqzq_s64(*(a1 + 32)), vdupq_n_s64(@"NONE"), *(a1 + 32));
  if (*(a1 + 48))
  {
    v8 = *(a1 + 48);
  }

  v18 = v8;
  v15[5] = kMREventAppBundleKey;
  v15[6] = kMRConnectionAllowAuthenticationPromptKey;
  v9 = [NSNumber numberWithBool:*(a1 + 89)];
  v19 = v9;
  v15[7] = kMREventDurationKey;
  v10 = [NSNumber numberWithDouble:*(a1 + 80)];
  v20 = v10;
  v11 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:8];
  v12 = [v11 mutableCopy];

  [v12 addEntriesFromDictionary:*(a1 + 56)];
  v13 = *(a1 + 64);
  if (v13)
  {
    [v12 setObject:v13 forKeyedSubscript:kMRConnectionFailureReasonKey];
  }

  return v12;
}

void sub_1000D64C0(uint64_t a1)
{
  *(*(a1 + 32) + 56) = 0;
  if (!*(*(a1 + 32) + 88))
  {
    v2 = +[NSDate date];
    v3 = *(a1 + 32);
    v4 = *(v3 + 88);
    *(v3 + 88) = v2;

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void sub_1000D6534(uint64_t a1)
{
  v2 = +[MRPowerLogger sharedLogger];
  [v2 logEvent:MRPowerLogEventRemoteControlSession withInfo:*(a1 + 32)];
}

void sub_1000D6AA4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) disarm])
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1000D6FA0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[NSString alloc] initWithFormat:@"qos: %u->%u", *(a1 + 72), qos_class_self()];
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    *buf = 138543874;
    v30 = @"TransportExternalDevice.connectWithOptions";
    v31 = 2114;
    v32 = v6;
    v33 = 2112;
    v34 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
  }

  v7 = *(a1 + 40);
  v8 = _MRLogForCategory();
  v9 = v8;
  if (!v3)
  {
    v15 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (!v15)
      {
        goto LABEL_16;
      }

      v16 = *(a1 + 32);
      v17 = *(a1 + 40);
      v13 = +[NSDate date];
      [v13 timeIntervalSinceDate:*(a1 + 48)];
      *buf = 138544130;
      v30 = @"TransportExternalDevice.connectWithOptions";
      v31 = 2114;
      v32 = v16;
      v33 = 2114;
      v34 = v17;
      v35 = 2048;
      v36 = v18;
      v19 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
      v20 = v9;
      v21 = 42;
    }

    else
    {
      if (!v15)
      {
        goto LABEL_16;
      }

      v22 = *(a1 + 32);
      v13 = +[NSDate date];
      [v13 timeIntervalSinceDate:*(a1 + 48)];
      *buf = 138543874;
      v30 = @"TransportExternalDevice.connectWithOptions";
      v31 = 2114;
      v32 = v22;
      v33 = 2048;
      v34 = v23;
      v19 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v20 = v9;
      v21 = 32;
    }

    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v19, buf, v21);
    goto LABEL_15;
  }

  v10 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (v7)
  {
    if (!v10)
    {
      goto LABEL_16;
    }

    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13 = +[NSDate date];
    [v13 timeIntervalSinceDate:*(a1 + 48)];
    *buf = 138544386;
    v30 = @"TransportExternalDevice.connectWithOptions";
    v31 = 2114;
    v32 = v11;
    v33 = 2114;
    v34 = v3;
    v35 = 2114;
    v36 = v12;
    v37 = 2048;
    v38 = v14;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
LABEL_15:

    goto LABEL_16;
  }

  if (v10)
  {
    sub_1003A805C();
  }

LABEL_16:

  v24 = *(a1 + 64);
  if (v24)
  {
    v25 = *(a1 + 56);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000D7314;
    block[3] = &unk_1004B8B50;
    v28 = v24;
    v27 = v3;
    dispatch_async(v25, block);
  }
}

id sub_1000D7328(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 208);
  if (!v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    v4 = *(a1 + 32);
    v5 = *(v4 + 208);
    *(v4 + 208) = v3;

    v2 = *(*(a1 + 32) + 208);
  }

  [v2 addObject:*(a1 + 40)];
  v6 = *(a1 + 56);
  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9 = *(a1 + 32);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000D73EC;
  v11[3] = &unk_1004B6FC0;
  v11[4] = v9;
  return [v9 _onSerialQueue_prepareToConnectWithOptions:v6 userInfo:v7 connectionAttemptDetails:v8 connectionHandler:v11];
}

void sub_1000D7D84(id a1)
{
  v1 = [[NSSet alloc] initWithArray:&off_1004E0EB0];
  v2 = qword_100529360;
  qword_100529360 = v1;
}

id sub_1000D7DCC(uint64_t a1)
{
  v7[0] = kMREventDurationKey;
  v2 = [NSNumber numberWithDouble:*(a1 + 32)];
  v8[0] = v2;
  v7[1] = kMRDisconnectionRetryCount;
  v3 = [NSNumber numberWithUnsignedInteger:*(a1 + 40)];
  v8[1] = v3;
  v7[2] = kMRDisconnectionWillAttemptReconnection;
  v4 = [NSNumber numberWithBool:*(a1 + 48)];
  v8[2] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:3];

  return v5;
}

void sub_1000D7EE4(uint64_t a1)
{
  v2 = [[NSMutableDictionary alloc] initWithCapacity:3];
  [v2 setObject:*(a1 + 32) forKeyedSubscript:MRExternalDeviceConnectionReasonUserInfoKey];
  [v2 setObject:*(a1 + 40) forKeyedSubscript:MRExternalDeviceConnectionCorrelationIDUserInfoKey];
  [v2 setObject:*(a1 + 48) forKeyedSubscript:MRExternalDeviceConnectionClientBundleIDUserInfoKey];
  v3 = *(a1 + 56);
  v4 = v3[13];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000D8020;
  v5[3] = &unk_1004B69A8;
  v5[4] = v3;
  v6 = *(a1 + 40);
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  [v3 _onWorkerQueue_connectWithOptions:v4 isRetry:1 userInfo:v2 completion:v5];
}

void sub_1000D8020(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) shortDescription];

  v5 = _MRLogForCategory();
  v6 = v5;
  if (!v3)
  {
    v12 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (!v4)
    {
      if (!v12)
      {
        goto LABEL_14;
      }

      v15 = *(a1 + 40);
      v9 = +[NSDate date];
      [v9 timeIntervalSinceDate:*(a1 + 48)];
      v18 = 138543874;
      v19 = @"TransportExternalDevice.connectWithOptions.attemptReconnection";
      v20 = 2114;
      v21 = v15;
      v22 = 2048;
      v23 = v16;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned in %.4lf seconds", &v18, 0x20u);
      goto LABEL_13;
    }

    if (!v12)
    {
      goto LABEL_14;
    }

    v13 = *(a1 + 40);
    v9 = [*(a1 + 32) shortDescription];
    v10 = +[NSDate date];
    [v10 timeIntervalSinceDate:*(a1 + 48)];
    v18 = 138544130;
    v19 = @"TransportExternalDevice.connectWithOptions.attemptReconnection";
    v20 = 2114;
    v21 = v13;
    v22 = 2114;
    v23 = v9;
    v24 = 2048;
    v25 = v14;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds", &v18, 0x2Au);
LABEL_8:

LABEL_13:
    goto LABEL_14;
  }

  v7 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  if (v4)
  {
    if (!v7)
    {
      goto LABEL_14;
    }

    v8 = *(a1 + 40);
    v9 = [*(a1 + 32) shortDescription];
    v10 = +[NSDate date];
    [v10 timeIntervalSinceDate:*(a1 + 48)];
    v18 = 138544386;
    v19 = @"TransportExternalDevice.connectWithOptions.attemptReconnection";
    v20 = 2114;
    v21 = v8;
    v22 = 2114;
    v23 = v3;
    v24 = 2114;
    v25 = v9;
    v26 = 2048;
    v27 = v11;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v18, 0x34u);
    goto LABEL_8;
  }

  if (v7)
  {
    sub_1003A81B4();
  }

LABEL_14:

  v17 = *(a1 + 56);
  if (v17)
  {
    (*(v17 + 16))(v17, v3);
  }
}

void sub_1000D82AC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _onWorkerQueue_disconnect:*(a1 + 32)];
    v3 = v5;
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, *(a1 + 32));
    v3 = v5;
  }
}

void sub_1000D85D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000D860C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 208) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(a1 + 32) + 208);

  return [v5 removeAllObjects];
}

void sub_1000D8808(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1000D8824(uint64_t a1, void *a2)
{
  v4 = a2;
  (*(*(a1 + 32) + 16))();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v4 && WeakRetained)
  {
    [WeakRetained disconnect:v4];
  }
}

void sub_1000D8BC0(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) disarm])
  {
    v4 = *(a1 + 48);
    if (v4)
    {
      v5 = *(a1 + 40);
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_1000D8C7C;
      v6[3] = &unk_1004B8B50;
      v8 = v4;
      v7 = v3;
      dispatch_async(v5, v6);
    }
  }
}

void sub_1000D8C90(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([*(a1 + 32) disarm])
  {
    v3 = *(a1 + 40);
    v4 = [v5 error];
    (*(v3 + 16))(v3, v4);
  }
}

void sub_1000D9044(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000D9064(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 66) = 0;
  }

  v6 = qos_class_self();
  v7 = dispatch_get_global_queue(v6, 0);
  v9 = v3;
  v10 = *(a1 + 32);
  v8 = v3;
  MRMediaRemoteNowPlayingPing();
}

uint64_t sub_1000D9150(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void sub_1000D9170(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qos_class_self();
  v5 = dispatch_get_global_queue(v4, 0);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000D923C;
  v8[3] = &unk_1004B8B50;
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v7 = v3;
  dispatch_async(v5, v8);
}

void sub_1000D923C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2);
}

void sub_1000D9530(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_1000D95E4;
      v6[3] = &unk_1004B8B50;
      v8 = v4;
      v7 = v3;
      dispatch_async(v5, v6);
    }
  }
}

void sub_1000D95F8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 error];
  (*(v2 + 16))(v2, v3);
}

void sub_1000D9908(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_1000D99BC;
      v6[3] = &unk_1004B8B50;
      v8 = v4;
      v7 = v3;
      dispatch_async(v5, v6);
    }
  }
}

void sub_1000D99D0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 error];
  (*(v2 + 16))(v2, v3);
}

void sub_1000D9CE0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_1000D9D94;
      v6[3] = &unk_1004B8B50;
      v8 = v4;
      v7 = v3;
      dispatch_async(v5, v6);
    }
  }
}

void sub_1000D9DA8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 error];
  (*(v2 + 16))(v2, v3);
}

void sub_1000D9FD0(uint64_t a1, void *a2, float a3)
{
  v5 = a2;
  if (v5)
  {
    v6 = _MRLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Error getting volume %@", buf, 0xCu);
    }
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = *(a1 + 32);
    if (v8)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000DA120;
      block[3] = &unk_1004B72C0;
      v11 = v7;
      v12 = a3;
      v10 = v5;
      dispatch_async(v8, block);
    }
  }
}

void sub_1000DA138(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 error];

  v4 = 0.0;
  if (!v3)
  {
    [v8 volume];
    v4 = v5;
  }

  v6 = *(a1 + 32);
  v7 = [v8 error];
  (*(v6 + 16))(v6, v7, v4);
}

void sub_1000DA44C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = _MRLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Error getting volume control capablities %@", buf, 0xCu);
    }
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = *(a1 + 32);
    if (v8)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000DA594;
      block[3] = &unk_1004B72C0;
      v11 = v7;
      v12 = a2;
      v10 = v5;
      dispatch_async(v8, block);
    }
  }
}

void sub_1000DA5AC(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 error];

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = [v7 capabilities];
  }

  v5 = *(a1 + 32);
  v6 = [v7 error];
  (*(v5 + 16))(v5, v4, v6);
}

void sub_1000DA820(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _MRLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Error setting listening mode %@", buf, 0xCu);
    }
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_1000DA960;
      v7[3] = &unk_1004B8B50;
      v9 = v5;
      v8 = v3;
      dispatch_async(v6, v7);
    }
  }
}

void sub_1000DA974(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 error];
  (*(v2 + 16))(v2, v3);
}

void sub_1000DAB84(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _MRLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Error setting conversation detection %@", buf, 0xCu);
    }
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_1000DACC4;
      v7[3] = &unk_1004B8B50;
      v9 = v5;
      v8 = v3;
      dispatch_async(v6, v7);
    }
  }
}

void sub_1000DACD8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 error];
  (*(v2 + 16))(v2, v3);
}

void sub_1000DAFF0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_1000DB0A4;
      v6[3] = &unk_1004B8B50;
      v8 = v4;
      v7 = v3;
      dispatch_async(v5, v6);
    }
  }
}

void sub_1000DB0B8(uint64_t a1, void *a2)
{
  v3 = [a2 error];
  (*(*(a1 + 32) + 16))();
}

void sub_1000DB384(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = *(a1 + 32);
    if (v8)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000DB460;
      block[3] = &unk_1004B8190;
      v12 = v7;
      v10 = v5;
      v11 = v6;
      dispatch_async(v8, block);
    }
  }
}

void sub_1000DB478(uint64_t a1, void *a2)
{
  v9 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = *(a1 + 32);
  if (isKindOfClass)
  {
    v5 = v9;
    v6 = [v5 groupUID];
    v7 = [v5 error];

    (*(v4 + 16))(v4, v6, v7);
  }

  else
  {
    v6 = [v9 error];
    if (v6)
    {
      (*(v4 + 16))(v4, 0, v6);
    }

    else
    {
      v8 = [[NSError alloc] initWithMRError:1];
      (*(v4 + 16))(v4, 0, v8);
    }
  }
}

void sub_1000DB800(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _MRLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Error removing from parent group %@", buf, 0xCu);
    }
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_1000DB940;
      v7[3] = &unk_1004B8B50;
      v9 = v5;
      v8 = v3;
      dispatch_async(v6, v7);
    }
  }
}

void sub_1000DBB64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000DBB7C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DBC50;
  block[3] = &unk_1004B8190;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void sub_1000DBC68(uint64_t a1)
{
  v2 = [*(a1 + 32) _onSerialQueue_deviceInfo];
  v3 = [v2 groupSessionToken];
  v4 = [v3 sessionIdentifier];

  if (v4)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v5 = [MRBlockGuard alloc];
    v6 = *(*(a1 + 32) + 8);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000DBEA4;
    v18[3] = &unk_1004B6FE8;
    v19 = *(a1 + 40);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000DBEBC;
    v15[3] = &unk_1004BAD10;
    v7 = [v5 initWithTimeout:@"requestGroupSession" reason:v6 queue:v18 handler:30.0];
    v16 = v7;
    v17 = *(a1 + 40);
    v8 = objc_retainBlock(v15);
    v9 = *(*(a1 + 32) + 112);
    if (!v9)
    {
      v10 = objc_alloc_init(NSMutableSet);
      v11 = *(a1 + 32);
      v12 = *(v11 + 112);
      *(v11 + 112) = v10;

      v9 = *(*(a1 + 32) + 112);
    }

    v13 = [v8 copy];
    v14 = objc_retainBlock(v13);
    [v9 addObject:v14];

    if ([*(*(a1 + 32) + 112) count] >= 2)
    {
      *(*(*(a1 + 48) + 8) + 24) = 0;
    }
  }
}

void sub_1000DBEBC(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([*(a1 + 32) disarm])
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1000DC318(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DC3D0;
  block[3] = &unk_1004BBD28;
  v6 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = a2;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, block);
}

void sub_1000DC400(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([*(a1 + 32) disarm])
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1000DC46C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];

  if (!v4)
  {
    v7 = v3;
    v8 = [v7 result];
    if (v8)
    {
      if (v8 == 1)
      {
        v15 = objc_alloc_init(MRDRemoteDisplayPairingAction);
        v16 = [v7 pairingData];
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_1000DC63C;
        v17[3] = &unk_1004B6FE8;
        v18 = *(a1 + 32);
        [(MRDRemoteDisplayPairingAction *)v15 performWithPairingInfo:v16 completion:v17];

        goto LABEL_9;
      }

      if (v8 != 2)
      {
LABEL_9:

        goto LABEL_10;
      }

      v9 = +[MRDMediaRemoteServer server];
      v10 = [v9 sharedRemoteDisplayDiscovery];
      v11 = [v7 rapportIdentifier];
      [v10 enterDiscoverySessionWithDevice:v11 reason:@"Microphone Only"];
    }

    v12 = *(a1 + 32);
    v13 = [v7 result];
    v14 = [v7 error];
    (*(v12 + 16))(v12, v13, v14);

    goto LABEL_9;
  }

  v5 = *(a1 + 32);
  v6 = [v3 error];
  (*(v5 + 16))(v5, 0, v6);

LABEL_10:
}

void sub_1000DC63C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MRLogForCategory();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1003A8390();
    }

    v6 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Guest pairing succeeded", v7, 2u);
    }

    v6 = *(*(a1 + 32) + 16);
  }

  v6();
}

void sub_1000DD050(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.mediaremote.transportExternalDevice.clientConnectionQueue", v3);
  v2 = qword_100529370;
  qword_100529370 = v1;
}

void sub_1000DD6E4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!*(v1 + 72))
  {
    v3 = [*(v1 + 168) name];
    v4 = [*(*(a1 + 32) + 168) uid];
    v9 = [NSString stringWithFormat:@"com.apple.mediaremote.MRExternalDevice/%@(%@)", v3, v4];

    v5 = [[MROSTransaction alloc] initWithName:v9];
    v6 = *(a1 + 32);
    v7 = *(v6 + 72);
    *(v6 + 72) = v5;

    v8 = *(*(a1 + 32) + 72);
    MRRegisterTransaction();
  }
}

void sub_1000DDEB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location, char a27)
{
  objc_destroyWeak((v27 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_1000DDEE4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = [v3 error];

    if (v5)
    {
      v6 = [v3 error];
      v7 = *(*(a1 + 40) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      goto LABEL_10;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v3;
      v10 = [v9 deviceInfo];
      if (v10)
      {
        v11 = v10;
        v12 = WeakRetained[1];
        v17 = WeakRetained;
        v18 = v11;
        v9 = v9;
        v13 = v11;
        msv_dispatch_sync_on_queue();

LABEL_9:
        goto LABEL_10;
      }
    }

    else
    {
      v9 = 0;
    }

    v14 = [[NSError alloc] initWithMRError:100 format:@"deviceInfo response was nil"];
    v15 = *(*(a1 + 40) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    goto LABEL_9;
  }

LABEL_10:
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1000DE084(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [v2 deviceInfo];
  [v2 _handleDeviceInfoChange:v3 oldDevice:v4];

  v6 = [*(a1 + 48) supportedProtocolMessages];
  v5 = [*(a1 + 32) clientConnection];
  [v5 setSupportedMessages:v6];
}

void sub_1000DE11C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qos_class_self();
  v5 = dispatch_get_global_queue(v4, 0);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000DE1E8;
  v8[3] = &unk_1004B8B50;
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v7 = v3;
  dispatch_async(v5, v8);
}

void sub_1000DF0D8(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 104) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 32);
  v6 = *(v5 + 104);
  *(v5 + 104) = 0;
}

void sub_1000DF2DC(uint64_t a1)
{
  [*(a1 + 32) setCustomOrigin:0];
  v2 = *(a1 + 32);
  v3 = *(v2 + 72);
  *(v2 + 72) = 0;

  *(*(a1 + 32) + 52) = 0;
}

void sub_1000DF9B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v4 - 104));
  _Unwind_Resume(a1);
}

void sub_1000DFA38(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a4;
  v11 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000DFB54;
    v14[3] = &unk_1004B7888;
    v15 = v11;
    [WeakRetained _handleRemoteCommand:a3 withOptions:v10 playerPath:v9 completion:v14];
  }

  else
  {
    v13 = [MRCommandResult commandResultWithSendError:2];
    (*(v11 + 2))(v11, v13);
  }
}

void sub_1000DFB64(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000DFC64;
    v10[3] = &unk_1004BBDE8;
    v11 = v7;
    [WeakRetained _handlePlaybackQueueRequest:a2 forPlayerPath:a3 completion:v10];
  }

  else
  {
    v9 = [[NSError alloc] initWithMRError:100 description:@"Connection Dealloc"];
    (*(v7 + 2))(v7, 0, v9);
  }
}

void sub_1000DFC74(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained errorForCurrentState];
    if (v5)
    {
      v6 = _MRLogForCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1003A840C();
      }
    }

    else
    {
      v6 = [[MRSendLyricsEventMessage alloc] initWithEvent:a2];
      v7 = [v4 clientConnection];
      [v7 sendMessage:v6];
    }
  }
}

void sub_1000DFD2C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000DFE38;
    v12[3] = &unk_1004B8D40;
    v13 = v9;
    [WeakRetained _handlePlaybackSessionRequest:v7 forPlayerPath:v8 completion:v12];
  }

  else
  {
    Error = MRMediaRemoteCreateError();
    (*(v9 + 2))(v9, 0, Error);
  }
}

void sub_1000DFE48(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v15 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v13 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handlePlaybackSessionMigrateRequest:v15 request:v9 forPlayerPath:v10 completion:v11];
  }

  else
  {
    v14 = [[NSError alloc] initWithMRError:100 description:@"TransportExternalDevice Dealloc"];
    v11[2](v11, v9, v14);
  }
}

void sub_1000DFF38(uint64_t a1, void *a2, void *a3, void *a4)
{
  v12 = a2;
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handlePlaybackSessionMigrateBeginRequest:v12 forPlayerPath:v7 completion:v8];
  }

  else
  {
    v11 = [[NSError alloc] initWithMRError:100 description:@"TransportExternalDevice Dealloc"];
    v8[2](v8, 0, v11);
  }
}

void sub_1000E000C(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v18 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v16 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handlePlaybackSessionMigrateEndRequest:v18 setPlaybackSessionCommandStatus:v11 error:v12 forPlayerPath:v13 completion:v14];
  }

  else
  {
    v17 = [[NSError alloc] initWithMRError:100 description:@"TransportExternalDevice Dealloc"];
    v14[2](v14, 0, v17);
  }
}

void sub_1000E0110(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v15 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v13 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handlePlaybackSessionMigratePostRequest:v15 setPlaybackSessionCommandID:v9 forPlayerPath:v10 completion:v11];
  }

  else
  {
    v14 = [[NSError alloc] initWithMRError:100 description:@"TransportExternalDevice Dealloc"];
    v11[2](v11, 0, v14);
  }
}

void sub_1000E0200(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _sendClientMessage:v8 completion:v5];
  }
}

void sub_1000E0278(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v11 = [MRCreateApplicationConnectionMessage alloc];
    v12 = [v7 context];
    v13 = [v11 initWithConnectionContext:v12 requestInfo:v8];

    v14 = objc_alloc_init(MRProtocolMessageOptions);
    [v14 setPriority:4];
    [v14 setWaking:1];
    [v13 setTransportOptions:v14];
    [v7 setRemoteInvalidationExternalDevice:WeakRetained];
    [v7 setType:2];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000E04A4;
    v18[3] = &unk_1004B77C0;
    objc_copyWeak(&v19, (a1 + 32));
    [v7 setServerBoundMessageHandler:v18];
    v15 = [WeakRetained clientConnection];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000E0558;
    v16[3] = &unk_1004BBBC0;
    v17 = v9;
    [v15 sendMessage:v13 reply:v16];

    objc_destroyWeak(&v19);
  }

  else
  {
    v13 = [[NSError alloc] initWithMRError:176];
    (*(v9 + 2))(v9, v13);
  }
}

void sub_1000E04A4(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained clientConnection];
    [v8 sendMessage:v5];
  }

  else
  {
    v8 = [[NSError alloc] initWithMRError:176];
    [v9 invalidate:v8];
  }
}

void sub_1000E0558(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 error];
  (*(v2 + 16))(v2, v3);
}

void sub_1000E05B8(id a1, MRDApplicationConnection *a2, MRApplicationConnectionRequestInfo *a3, id a4)
{
  v5 = a4;
  v6 = [[NSError alloc] initWithMRError:132];
  (*(a4 + 2))(v5, v6);
}

void sub_1000E0634(id a1, MRDApplicationConnection *a2, MRApplicationConnectionRequestInfo *a3, id a4)
{
  v5 = a4;
  v6 = [[NSError alloc] initWithMRError:180];
  (*(a4 + 2))(v5, v6);
}

void sub_1000E0910(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_1000E0950(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (!WeakRetained)
  {
    Error = MRMediaRemoteCreateError();
    v14 = *(a1[5] + 2);
    goto LABEL_17;
  }

  v5 = [v3 error];

  if (v5)
  {
    v6 = [v3 error];
    if ([v6 mr_isMediaRemoteError])
    {
      v7 = [v3 error];
      v8 = [v7 code];

      if (v8 == 26)
      {
        v9 = [NSString alloc];
        v10 = [a1[4] requestIdentifier];
        v11 = [v3 error];
        v12 = [v11 description];
        Error = [v9 initWithFormat:@"event = <playbackQueueRequest>, request = <%@>, error = <%@>", v10, v12];

        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_1000E0C50;
        v24[3] = &unk_1004B9BE0;
        v25 = v3;
        v26 = a1[5];
        [WeakRetained verifyConnectionStatusAndMaybeDisconnect:Error completion:v24];

        goto LABEL_18;
      }
    }

    else
    {
    }

    v23 = a1[5];
    Error = [v3 error];
    v14 = *(v23 + 2);
LABEL_17:
    v14();
    goto LABEL_18;
  }

  Error = v3;
  v15 = [Error state];
  v16 = [v15 playbackQueue];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v17 = [v16 contentItems];
  v18 = [v17 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v28;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v28 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [*(*(&v27 + 1) + 8 * i) metadata];
        [v22 setDeviceSpecificUserInfo:0];
      }

      v19 = [v17 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v19);
  }

  (*(a1[5] + 2))();
LABEL_18:
}

void sub_1000E0C50(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) error];
  if (v5)
  {
    v4 = [v5 mr_errorByEnvelopingWithMRError:121 format:{@"Operation timedout, attempted ping which also timedout"}];

    v3 = v4;
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1000E0CF0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _handlePlaybackQueueRequest:*(a1 + 32) forPlayerPath:*(a1 + 40) completion:*(a1 + 48)];
}

void sub_1000E0FB0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_1000E0FDC(uint64_t a1, void *a2)
{
  v16 = a2;
  v3 = [v16 error];

  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = *(a1 + 56);
    v6 = [v16 error];
    [v4 endEventWithID:v5 error:v6];

    v7 = *(a1 + 48);
    v8 = [[MRPlaybackSessionResponseMessage alloc] initWithPlaybackSession:0 request:*(a1 + 32)];
    v9 = [v16 error];
    (*(v7 + 16))(v7, v8, v9);
  }

  else
  {
    v10 = v16;
    v11 = [v10 request];
    v12 = [v4 merge:v11];
    v13 = v12;
    if (!v12)
    {
      v13 = *(a1 + 40);
    }

    v9 = v13;

    [*(a1 + 32) endEventWithID:*(a1 + 56) error:v9];
    v14 = [MRPlaybackSessionResponseMessage alloc];
    v15 = [v10 playbackSession];

    v8 = [v14 initWithPlaybackSession:v15 request:*(a1 + 32)];
    (*(*(a1 + 48) + 16))(*(a1 + 48), v8, 0);
  }
}

void sub_1000E116C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _handlePlaybackSessionRequest:*(a1 + 32) forPlayerPath:*(a1 + 40) completion:*(a1 + 48)];
}

void sub_1000E1400(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = *(a1 + 32);
  v4 = [v10 error];

  if (!v4)
  {
    v5 = [v10 request];

    v3 = v5;
  }

  v6 = *(a1 + 48);
  v7 = [v10 error];
  [v3 endEventWithID:v6 error:v7];

  v8 = *(a1 + 40);
  v9 = [v10 error];
  (*(v8 + 16))(v8, v3, v9);
}

void sub_1000E1734(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 error];
  if (v3)
  {
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = *(a1 + 32);
      v5 = [v13 request];
      v6 = [v4 merge:v5];

      [*(a1 + 32) endEventWithID:*(a1 + 48) error:v6];
      v7 = [[MRPlaybackSessionMigrateResponseMessage alloc] initWithRequest:*(a1 + 32)];
      v8 = *(*(a1 + 40) + 16);
      goto LABEL_6;
    }
  }

  v9 = *(a1 + 32);
  v10 = *(a1 + 48);
  v11 = [v13 error];
  [v9 endEventWithID:v10 error:v11];

  v6 = [[MRPlaybackSessionMigrateResponseMessage alloc] initWithRequest:*(a1 + 32)];
  v12 = *(a1 + 40);
  v7 = [v13 error];
  v8 = *(v12 + 16);
LABEL_6:
  v8();
}

void sub_1000E1B68(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 error];
  if (v3)
  {
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = *(a1 + 32);
      v5 = [v13 request];
      v6 = [v4 merge:v5];

      [*(a1 + 32) endEventWithID:*(a1 + 48) error:v6];
      v7 = [[MRPlaybackSessionMigrateResponseMessage alloc] initWithRequest:*(a1 + 32)];
      v8 = *(*(a1 + 40) + 16);
      goto LABEL_6;
    }
  }

  v9 = *(a1 + 32);
  v10 = *(a1 + 48);
  v11 = [v13 error];
  [v9 endEventWithID:v10 error:v11];

  v6 = [[MRPlaybackSessionMigrateResponseMessage alloc] initWithRequest:*(a1 + 32)];
  v12 = *(a1 + 40);
  v7 = [v13 error];
  v8 = *(v12 + 16);
LABEL_6:
  v8();
}

void sub_1000E1F28(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [v12 error];

  if (v3)
  {
    v4 = [*(a1 + 32) request];
    v5 = *(a1 + 48);
    v6 = [v12 error];
    [v4 endEventWithID:v5 error:v6];

    v9 = a1 + 32;
    v7 = *(a1 + 32);
    v8 = *(v9 + 8);
    v10 = [v12 error];
    (*(v8 + 16))(v8, v7, v10);
  }

  else
  {
    v10 = v12;
    v11 = [v10 request];
    [v11 endEventWithID:*(a1 + 48)];

    (*(*(a1 + 40) + 16))(*(a1 + 40), v10, 0);
  }
}

void sub_1000E20F4(uint64_t a1)
{
  v5 = +[NSMutableDictionary dictionary];
  v2 = [NSNumber numberWithUnsignedInt:*(a1 + 48)];
  [v5 setObject:v2 forKey:kMRExternalDeviceConnectionStateUserInfoKey];

  v3 = *(a1 + 32);
  if (v3)
  {
    [v5 setObject:v3 forKey:NSUnderlyingErrorKey];
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:kMRExternalDeviceConnectionStateDidChangeNotification object:*(a1 + 40) userInfo:v5];
}