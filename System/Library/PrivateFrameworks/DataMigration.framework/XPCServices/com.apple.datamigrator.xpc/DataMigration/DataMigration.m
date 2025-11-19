id sub_100001688(uint64_t a1)
{
  *(*(a1 + 32) + 32) += [*(a1 + 32) secondsBeforeNextStackshot] / 0x3C;
  [*(a1 + 32) _takeStackshot];
  [*(a1 + 32) setSecondsBeforeNextStackshot:{objc_msgSend(*(a1 + 32), "nextSecondsBeforeNextStackshotAdditionForUnitTesting") + objc_msgSend(*(a1 + 32), "secondsBeforeNextStackshot")}];
  [*(a1 + 32) setSecondsBeforeNextStackshot:{3 * objc_msgSend(*(a1 + 32), "secondsBeforeNextStackshot")}];
  v2 = *(a1 + 32);

  return [v2 secondsBeforeNextStackshot];
}

uint64_t sub_100001B4C(uint64_t a1)
{
  v1 = [*(a1 + 32) lockdownModeManager];
  if (v1)
  {
    [DMLockdownModeTask _enableLockdownModeIfNeededWithLockdownModeManager:v1];
  }

  return _objc_release_x1();
}

intptr_t sub_100001CA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    _DMLogFunc();
  }

  else
  {
    v6 = [NSNumber numberWithBool:a2];
    _DMLogFunc();
  }

  v4 = *(a1 + 32);

  return dispatch_semaphore_signal(v4);
}

void sub_100003100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000326C(uint64_t a1)
{
  _DMLogFunc();
  [*(a1 + 32) submit];

  return _DMLogFunc();
}

Class sub_100003414(uint64_t a1)
{
  v3[0] = 0;
  if (!qword_100030978)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_100003540;
    v3[4] = &unk_1000247C8;
    v3[5] = v3;
    v4 = off_1000247B0;
    v5 = 0;
    qword_100030978 = _sl_dlopen();
  }

  if (!qword_100030978)
  {
    sub_100012A2C(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("OSASubmissionClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1000129B0();
  }

  qword_100030970 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100003540(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100030978 = result;
  return result;
}

uint64_t sub_1000038E8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    if (([WeakRetained canceled] & 1) == 0)
    {
      [v3 _timerFired];
    }
  }

  return _objc_release_x1();
}

void sub_100003C34(uint64_t a1)
{
  [*(a1 + 32) setCanceled:1];
  v2 = [*(a1 + 32) timer];
  dispatch_source_cancel(v2);
}

uint64_t DMDataMigratorMigrationStatisticsReadFrom(uint64_t a1, void *a2)
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
        v83 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v83 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v83 & 0x7F) << v5;
        if ((v83 & 0x80) == 0)
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
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 5)
      {
        break;
      }

      if (v13 > 8)
      {
        switch(v13)
        {
          case 9:
            v73 = 0;
            v74 = 0;
            v75 = 0;
            *(a1 + 48) |= 0x80u;
            while (1)
            {
              v92 = 0;
              v76 = [a2 position] + 1;
              if (v76 >= [a2 position] && (v77 = objc_msgSend(a2, "position") + 1, v77 <= objc_msgSend(a2, "length")))
              {
                v78 = [a2 data];
                [v78 getBytes:&v92 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v75 |= (v92 & 0x7F) << v73;
              if ((v92 & 0x80) == 0)
              {
                break;
              }

              v73 += 7;
              v11 = v74++ >= 9;
              if (v11)
              {
                LOBYTE(v20) = 0;
                goto LABEL_156;
              }
            }

            v20 = (v75 != 0) & ~[a2 hasError];
LABEL_156:
            v81 = 45;
            break;
          case 0xA:
            v55 = 0;
            v56 = 0;
            v57 = 0;
            *(a1 + 48) |= 0x100u;
            while (1)
            {
              v91 = 0;
              v58 = [a2 position] + 1;
              if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 1, v59 <= objc_msgSend(a2, "length")))
              {
                v60 = [a2 data];
                [v60 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v57 |= (v91 & 0x7F) << v55;
              if ((v91 & 0x80) == 0)
              {
                break;
              }

              v55 += 7;
              v11 = v56++ >= 9;
              if (v11)
              {
                LOBYTE(v20) = 0;
                goto LABEL_137;
              }
            }

            v20 = (v57 != 0) & ~[a2 hasError];
LABEL_137:
            v81 = 46;
            break;
          case 0xB:
            v28 = 0;
            v29 = 0;
            v30 = 0;
            *(a1 + 48) |= 0x200u;
            while (1)
            {
              v90 = 0;
              v31 = [a2 position] + 1;
              if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
              {
                v33 = [a2 data];
                [v33 getBytes:&v90 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v30 |= (v90 & 0x7F) << v28;
              if ((v90 & 0x80) == 0)
              {
                break;
              }

              v28 += 7;
              v11 = v29++ >= 9;
              if (v11)
              {
                LOBYTE(v20) = 0;
                goto LABEL_149;
              }
            }

            v20 = (v30 != 0) & ~[a2 hasError];
LABEL_149:
            v81 = 47;
            break;
          default:
            goto LABEL_122;
        }

        goto LABEL_157;
      }

      if (v13 == 6)
      {
        v67 = 0;
        v68 = 0;
        v69 = 0;
        *(a1 + 48) |= 0x10u;
        while (1)
        {
          v85 = 0;
          v70 = [a2 position] + 1;
          if (v70 >= [a2 position] && (v71 = objc_msgSend(a2, "position") + 1, v71 <= objc_msgSend(a2, "length")))
          {
            v72 = [a2 data];
            [v72 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v69 |= (v85 & 0x7F) << v67;
          if ((v85 & 0x80) == 0)
          {
            break;
          }

          v67 += 7;
          v11 = v68++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_153;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v69;
        }

LABEL_153:
        v80 = 36;
LABEL_154:
        *(a1 + v80) = v27;
        goto LABEL_158;
      }

      if (v13 != 7)
      {
        if (v13 != 8)
        {
          goto LABEL_122;
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 48) |= 0x40u;
        while (1)
        {
          v93 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v93 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v93 & 0x7F) << v14;
          if ((v93 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            LOBYTE(v20) = 0;
            goto LABEL_147;
          }
        }

        v20 = (v16 != 0) & ~[a2 hasError];
LABEL_147:
        v81 = 44;
LABEL_157:
        *(a1 + v81) = v20;
        goto LABEL_158;
      }

      v53 = PBReaderReadString();
      v54 = *(a1 + 16);
      *(a1 + 16) = v53;

LABEL_158:
      v82 = [a2 position];
      if (v82 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 <= 2)
    {
      if (v13 == 1)
      {
        v40 = 0;
        v41 = 0;
        v42 = 0;
        *(a1 + 48) |= 1u;
        while (1)
        {
          v84 = 0;
          v43 = [a2 position] + 1;
          if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
          {
            v45 = [a2 data];
            [v45 getBytes:&v84 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v42 |= (v84 & 0x7F) << v40;
          if ((v84 & 0x80) == 0)
          {
            break;
          }

          v40 += 7;
          v11 = v41++ >= 9;
          if (v11)
          {
            v46 = 0;
            goto LABEL_127;
          }
        }

        if ([a2 hasError])
        {
          v46 = 0;
        }

        else
        {
          v46 = v42;
        }

LABEL_127:
        *(a1 + 8) = v46;
        goto LABEL_158;
      }

      if (v13 != 2)
      {
LABEL_122:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_158;
      }

      v34 = 0;
      v35 = 0;
      v36 = 0;
      *(a1 + 48) |= 2u;
      while (1)
      {
        v89 = 0;
        v37 = [a2 position] + 1;
        if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
        {
          v39 = [a2 data];
          [v39 getBytes:&v89 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v36 |= (v89 & 0x7F) << v34;
        if ((v89 & 0x80) == 0)
        {
          break;
        }

        v34 += 7;
        v11 = v35++ >= 9;
        if (v11)
        {
          v27 = 0;
          goto LABEL_131;
        }
      }

      if ([a2 hasError])
      {
        v27 = 0;
      }

      else
      {
        v27 = v36;
      }

LABEL_131:
      v80 = 24;
    }

    else
    {
      switch(v13)
      {
        case 3:
          v61 = 0;
          v62 = 0;
          v63 = 0;
          *(a1 + 48) |= 4u;
          while (1)
          {
            v88 = 0;
            v64 = [a2 position] + 1;
            if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 1, v65 <= objc_msgSend(a2, "length")))
            {
              v66 = [a2 data];
              [v66 getBytes:&v88 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v63 |= (v88 & 0x7F) << v61;
            if ((v88 & 0x80) == 0)
            {
              break;
            }

            v61 += 7;
            v11 = v62++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_145;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v63;
          }

LABEL_145:
          v80 = 28;
          break;
        case 4:
          v47 = 0;
          v48 = 0;
          v49 = 0;
          *(a1 + 48) |= 8u;
          while (1)
          {
            v87 = 0;
            v50 = [a2 position] + 1;
            if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
            {
              v52 = [a2 data];
              [v52 getBytes:&v87 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v49 |= (v87 & 0x7F) << v47;
            if ((v87 & 0x80) == 0)
            {
              break;
            }

            v47 += 7;
            v11 = v48++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_135;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v49;
          }

LABEL_135:
          v80 = 32;
          break;
        case 5:
          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 48) |= 0x20u;
          while (1)
          {
            v86 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v86 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v86 & 0x7F) << v21;
            if ((v86 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_141;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v23;
          }

LABEL_141:
          v80 = 40;
          break;
        default:
          goto LABEL_122;
      }
    }

    goto LABEL_154;
  }

  return [a2 hasError] ^ 1;
}

void sub_100005D80(id a1)
{
  v1 = [DMMigrationSentinelManager alloc];
  v2 = +[NSFileManager defaultManager];
  v5 = [(DMMigrationSentinelManager *)v1 initWithFileManager:v2];

  v3 = [[DMMigrationState alloc] initWithMigrationSentinelManager:v5];
  v4 = qword_100030988;
  qword_100030988 = v3;
}

void sub_100006980(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(a1 + 40) pid]);
  _DMLogFunc();

  v4 = [*(a1 + 40) resultsHandler];
  v4[2](v4, 2);
}

void sub_100006A2C(uint64_t a1)
{
  v2 = [*(a1 + 32) earlyResultsPluginIdentifier];
  v3 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(a1 + 32) pid]);
  _DMLogFunc();

  v4 = [*(a1 + 32) resultsHandler];
  v4[2](v4, 3);
}

uint64_t sub_100006AEC(uint64_t a1)
{
  _DMLogFunc();
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 32));
  }

  return _DMLogFunc();
}

void sub_100007780(uint64_t a1)
{
  pthread_mutex_lock((*(a1 + 32) + 8));
  v2 = *(*(a1 + 32) + 104);
  v3 = [*(a1 + 40) identifier];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = [v4 objectForKeyedSubscript:@"kDMMigrationPluginResultsPhaseDescription"];

  v6 = [v5 isEqualToString:@"kDMMigrationPhaseDescriptionRunning"];
  v7 = [*(a1 + 40) rep];
  v8 = [v7 path];
  v9 = v8;
  if (v6)
  {
    v19 = v8;
    _DMLogFunc();

    v10 = +[NSDate date];
    [v10 timeIntervalSinceDate:*(a1 + 48)];
    v12 = v11;

    v20[0] = @"kDMMigrationPluginResultsBundlePathKey";
    v13 = [*(a1 + 40) rep];
    v14 = [v13 path];
    v21[0] = v14;
    v20[1] = @"kDMMigrationPluginResultsDuration";
    v15 = [NSNumber numberWithDouble:v12];
    v20[2] = @"kDMMigrationPluginResultsPhaseDescription";
    v21[1] = v15;
    v21[2] = @"kDMMigrationPhaseDescriptionRunning";
    v16 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:3];

    v17 = *(*(a1 + 32) + 104);
    v18 = [*(a1 + 40) identifier];
    [v17 setObject:v16 forKey:v18];
  }

  else
  {
    _DMLogFunc();

    dispatch_source_cancel(*(a1 + 56));
  }

  pthread_mutex_unlock((*(a1 + 32) + 8));
}

void sub_100007CF4(id a1)
{
  keyExistsAndHasValidFormat = 0;
  CFPreferencesAppSynchronize(@"com.apple.migration");
  if (CFPreferencesGetAppBooleanValue(@"DMSuppressMigrationFailureAlert", @"com.apple.migration", &keyExistsAndHasValidFormat))
  {
    v1 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v1 = 1;
  }

  v2 = !v1;
  byte_100030998 = v2;
}

void sub_100007FF4(uint64_t a1, uint64_t a2)
{
  v2 = (a2 & 0xFFFFFFFFFFFFFFFELL) != 2;
  v3 = +[DMMigrationState sharedInstance];
  [v3 _userDidRespondToMigrationFailureNotificationToFileRadar:v2];
}

id sub_10000924C(uint64_t a1)
{
  WORD2(v2) = *(a1 + 80);
  LODWORD(v2) = *(a1 + 76);
  return [*(a1 + 32) _telemetryDictionaryMigrationDidCompleteWithDuration:*(a1 + 56) fastPluginDuration:*(a1 + 60) pluginCrashCount:*(a1 + 64) pluginWatchdogCount:*(a1 + 40) pluginReturnedFalseCount:*(a1 + 68) previousBuildVersion:*(a1 + 72) userDataDisposition:*(a1 + 48) pluginCategories:*(*(a1 + 32) + 120) userCategory:v2 inAppleStore:? isFromFactory:?];
}

void sub_10000A4A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a53, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000A5A8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000A5C0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [NSNumber numberWithLongLong:*(a1 + 56)];
  v5 = [NSNumber numberWithInt:*(a1 + 72)];
  _DMLogFunc();

  v4 = *(a1 + 64);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A6DC;
  block[3] = &unk_1000249A8;
  v7 = *(a1 + 32);
  v10 = *(a1 + 72);
  v8 = *(a1 + 40);
  v9 = *(a1 + 56);
  dispatch_after(v4, &_dispatch_main_q, block);
}

void sub_10000A6DC(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  v3 = *(a1 + 32);
  [NSNumber numberWithInt:*(a1 + 64)];
  v12 = v11 = v3;
  _DMLogFunc();

  v4 = *(*(a1 + 40) + OBJC_IVAR___DMXPCConnection__connection);
  barrier[0] = _NSConcreteStackBlock;
  barrier[1] = 3221225472;
  barrier[2] = sub_10000A868;
  barrier[3] = &unk_100024980;
  v5 = *(a1 + 32);
  v17 = *(a1 + 64);
  v15 = v5;
  v16 = v2;
  v6 = v2;
  xpc_connection_send_barrier(v4, barrier);
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  v9 = *(a1 + 32);
  v10 = [NSNumber numberWithLongLong:*(a1 + 56), v11, v12];
  v13 = [NSNumber numberWithInt:*(a1 + 64)];
  _DMLogFunc();

  xpc_transaction_exit_clean();
}

intptr_t sub_10000A868(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5 = [NSNumber numberWithInt:*(a1 + 48)];
  _DMLogFunc();

  v3 = *(a1 + 40);

  return dispatch_semaphore_signal(v3);
}

void sub_10000A8EC(uint64_t a1, int64_t a2)
{
  v4 = *(a1 + 32);
  v5 = [NSNumber numberWithLongLong:a2];
  v6 = [NSNumber numberWithInt:*(a1 + 48)];
  _DMLogFunc();

  message = xpc_dictionary_create_reply(*(a1 + 32));
  xpc_dictionary_set_int64(message, "migrationResult", a2);
  xpc_connection_send_message(*(*(a1 + 40) + OBJC_IVAR___DMXPCConnection__connection), message);
}

void sub_10000A9D0(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

void sub_10000AA30(void *a1)
{
  v1 = a1;
  v2 = [[DMMigratorProxy alloc] initWithConnection:v1];
  if (qword_1000309B8 != -1)
  {
    sub_100012AD4();
  }

  [qword_1000309A8 lock];
  [qword_1000309B0 addObject:v2];
  [qword_1000309A8 unlock];
  objc_initWeak(&location, v2);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000AC34;
  v5[3] = &unk_1000247F0;
  objc_copyWeak(&v6, &location);
  [(DMMigratorProxy *)v2 setInvalidationHandler:v5];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000AD20;
  v3[3] = &unk_1000247F0;
  objc_copyWeak(&v4, &location);
  [(DMMigratorProxy *)v2 setInterruptionHandler:v3];
  [(DMMigratorProxy *)v2 resume];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void sub_10000ABA4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_10000ABD4(id a1)
{
  v1 = objc_alloc_init(NSLock);
  v2 = qword_1000309A8;
  qword_1000309A8 = v1;

  qword_1000309B0 = [[NSMutableArray alloc] initWithCapacity:1];

  _objc_release_x1();
}

void sub_10000AC34(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = objc_loadWeakRetained((a1 + 32));
    sub_10000AC94(v3);

    WeakRetained = v4;
  }
}

id sub_10000AC94(void *a1)
{
  v1 = qword_1000309A8;
  v2 = a1;
  [v1 lock];
  [qword_1000309B0 removeObject:v2];

  if (![qword_1000309B0 count])
  {
    _DMLogFunc();
  }

  v3 = qword_1000309A8;

  return [v3 unlock];
}

void sub_10000AD20(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = objc_loadWeakRetained((a1 + 32));
    sub_10000AC94(v3);

    WeakRetained = v4;
  }
}

void sub_10000ADC4(id a1)
{
  qword_1000309C0 = objc_alloc_init(DMAnalytics);

  _objc_release_x1();
}

void sub_10000AEF0(id a1)
{
  qword_1000309D0 = objc_alloc_init(DMDiagnostics);

  _objc_release_x1();
}

void sub_10000B050(id a1)
{
  v1 = dlopen([@"/System/Library/PrivateFrameworks/CrashReporterSupport.framework/CrashReporterSupport" fileSystemRepresentation], 1);
  if (v1)
  {
    v2 = v1;
    off_1000309E0 = dlsym(v1, "WriteStackshotReportWithPID_async");
    off_1000309E8 = dlsym(v2, "WriteStackshotReportWithPID");
  }

  else
  {

    _DMLogFunc();
  }
}

void sub_10000B374(id a1)
{
  v1 = qword_1000309F8;
  qword_1000309F8 = &off_100028E88;
}

void sub_10000B3D0(id a1)
{
  v1 = qword_100030A08;
  qword_100030A08 = &off_100028EA0;
}

void sub_10000B42C(id a1)
{
  v1 = qword_100030A18;
  qword_100030A18 = &off_100028EB8;
}

void sub_10000B764(uint64_t a1, uint64_t a2)
{
  if (([DMUserDataDispositionManager dispositionFlagsFromDispositionDict:a2]& 2) != 0)
  {
    sleep(5u);
    v3 = [*(a1 + 32) userManager];
    [DMUserVolumeMigrationTask _migrateSharedAndPrimaryUserVolumeWithUserManager:v3];
  }
}

void sub_10000BA88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000BDEC()
{
  if (!qword_100030A38)
  {
    qword_100030A38 = _sl_dlopen();
  }

  return qword_100030A38;
}

uint64_t sub_10000BEBC(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100030A38 = result;
  return result;
}

Class sub_10000BF30(uint64_t a1)
{
  v3 = 0;
  if (!sub_10000BDEC())
  {
    sub_100012BF0(&v3);
  }

  result = objc_getClass("LockdownModeManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100012B74();
  }

  qword_100030A40 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id _executePluginsSemaphore()
{
  if (qword_100030A50 != -1)
  {
    sub_100012C70();
  }

  v1 = qword_100030A48;

  return v1;
}

void sub_10000C93C(id a1)
{
  qword_100030A48 = dispatch_semaphore_create(0);

  _objc_release_x1();
}

void _excecutePluginsNotificationCallback()
{
  _DMLogFunc();
  v0 = _executePluginsSemaphore();
  dispatch_semaphore_signal(v0);
}

void sub_10000CA4C(id a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _excecutePluginsNotificationCallback, @"com.apple.migration.executePlugins", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

void sub_10000D784(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x210], 8);
  _Block_object_dispose(&STACK[0x2F0], 8);
  _Unwind_Resume(a1);
}

void sub_10000D834(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 existsAndShouldRun])
  {
    v4 = +[DMMigrationState sharedInstance];
    v5 = [v3 description];
    v6 = [NSString stringWithFormat:@"Running plugin %@", v5];
    [v4 pluginWillRun:v3 migrationPhaseDescription:v6];

    [*(*(a1 + 32) + 8) lock];
    v7 = [DMProgressWorkItem alloc];
    v8 = [v3 name];
    v9 = [(DMProgressWorkItem *)v7 initWithName:v8 startTimestamp:+[DMTimeManager currentTimestamp]];

    [*(*(a1 + 32) + 40) addObject:v9];
    if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
    {
      *(*(a1 + 32) + 24) = [(DMProgressWorkItem *)v9 startTimestamp];
    }

    v10 = *(*(a1 + 32) + 24);
    v49 = v9;
    v11 = [(DMProgressWorkItem *)v9 startTimestamp];
    v12 = *(a1 + 32);
    v13 = *(v12 + 32);
    v14 = *(v12 + 36);
    [v3 timeEstimate];
    v46 = v15;
    _DMLogFunc();
    [*(*(a1 + 32) + 8) unlock];
    v47 = +[DMTimeManager currentTimestamp];
    v16 = _DMCoreLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      [v3 timeEstimate];
      *buf = 138543618;
      v52 = v3;
      v53 = 2048;
      v54 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Beginning migration for %{public}@; estimate is %g seconds", buf, 0x16u);
    }

    v18 = [DMMigrationWatchdog alloc];
    v19 = [v3 description];
    v20 = [(DMMigrationWatchdog *)v18 initWithMigrationPluginDescription:v19 userDataDisposition:*(a1 + 40) migrationStartTime:v10];

    [(DMMigrationWatchdog *)v20 resume];
    [*(a1 + 32) _artificialHangTimeIntervalForPlugin:v3];
    v22 = v21;
    [v3 appropriateTimeIntervalBeforeReboot];
    v24 = v23;
    v25 = [v3 rep];
    v26 = [v25 path];
    v27 = [v26 lastPathComponent];
    v28 = +[DMEnvironment sharedInstance];
    v29 = [DMRebootTimer createRebootTimerIfAppropriateWithTimeIntervalBeforeReboot:v27 pluginName:v28 environment:v24];

    [v29 resume];
    if (v22 > 0.0)
    {
      _DMLogFunc();
      sleep(v22);
    }

    v50 = 0;
    v30 = [v3 performMigrationWithParameters:*(a1 + 48) watchdogCoordinator:*(a1 + 56) countOfAttempts:&v50];
    [v29 cancel];
    v48 = v20;
    [(DMMigrationWatchdog *)v20 cancel];
    [*(*(a1 + 32) + 8) lock];
    v31 = *(*(a1 + 72) + 8);
    v32 = *(v31 + 24);
    if (v30)
    {
      v32 = 0;
    }

    *(v31 + 24) = v32;
    [*(*(a1 + 32) + 8) unlock];
    [DMTimeManager intervalSinceTimestamp:v47];
    v34 = v33;
    if (v30)
    {
      v35 = [v30 details];
      v36 = [NSString stringWithFormat:@" %@", v35];
    }

    else
    {
      v36 = &stru_1000259A0;
    }

    v37 = _DMCoreLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544130;
      v52 = v3;
      v53 = 2048;
      v54 = v34;
      v55 = 1024;
      v56 = v30 == 0;
      v57 = 2112;
      v58 = v36;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "... completed migration for %{public}@ (%g s) with success %d%@", buf, 0x26u);
    }

    [*(*(a1 + 32) + 8) lock];
    [v3 timeEstimate];
    *(*(a1 + 32) + 32) = *(*(a1 + 32) + 32) - v38;
    [*(*(a1 + 32) + 40) removeObject:v49];
    *(*(*(a1 + 64) + 8) + 24) = 1;
    [*(*(a1 + 32) + 8) unlock];
    v39 = +[DMMigrationState sharedInstance];
    v40 = [v3 description];
    v41 = [NSString stringWithFormat:@"Finished plugin %@", v40];
    [v39 pluginDidFinish:v3 withSuccess:v30 == 0 duration:v30 incident:v41 migrationPhaseDescription:v34];

    v42 = +[DMMigrationState sharedInstance];
    v43 = [v3 identifier];
    [v42 reportTelemetryForPluginIdentifier:v43 duration:v30 incident:v50 countOfAttempts:*(a1 + 40) userDataDisposition:*(a1 + 80) userCategory:v34];
  }

  v44 = +[DMMigrationState sharedInstance];
  v45 = [v3 identifier];
  [v44 sendMigrationResultsToClientInvocationsInterestedInEarlyResultsForPluginIdentifier:v45];
}

void sub_10000E4D4(id a1)
{
  qword_100030A68 = dispatch_queue_create("com.apple.datamigrator.userDataDispositionQueue", 0);

  _objc_release_x1();
}

uint64_t sub_10000E514(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000E52C(void *a1)
{
  v2 = +[DMEnvironment sharedInstance];
  v3 = [v2 userDataDispositionPref];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(*(a1[6] + 8) + 40);
  if (!v6)
  {
    goto LABEL_5;
  }

  v7 = [v6 objectForKeyedSubscript:@"buildVersion"];
  if (([DMEnvironment isBuildVersion:v7 equalToBuildVersion:a1[4]]& 1) == 0)
  {
    v18 = v7;
    v20 = a1[4];
    _DMLogFunc();
    v8 = *(a1[6] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = 0;
  }

  if (!*(*(a1[6] + 8) + 40))
  {
LABEL_5:
    v10 = [DMEnvironment sharedInstance:v18];
    v11 = [v10 context];
    v12 = a1[4];
    v13 = a1[5];
    v14 = +[DMEnvironment sharedInstance];
    v15 = [DMMigrator _dispositionDictFromContext:v11 buildVersion:v12 lastBuildVersion:v13 environment:v14];
    v16 = *(a1[6] + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;

    v19 = *(*(a1[6] + 8) + 40);
    _DMLogFunc();
    v21 = +[DMEnvironment sharedInstance];
    [v21 setUserDataDispositionPref:*(*(a1[6] + 8) + 40)];
  }
}

void sub_10000F524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose((v37 - 160), 8);
  _Block_object_dispose(&a37, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000F598(uint64_t a1)
{
  v2 = [*(a1 + 32) _createProgressWindow];
  [*(a1 + 32) setProgressWindow:v2];

  v3 = [*(a1 + 32) progressWindow];
  v4 = [v3 errorDescription];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [*(a1 + 32) progressWindow];
  [v7 setVisible:1];

  v8 = [*(a1 + 32) progressWindow];
  [v8 setProgressValue:0.0];

  if (os_variant_has_internal_content())
  {
    v9 = [*(a1 + 32) progressWindow];
    [v9 setStatusText:@" "];
  }

  return CFRunLoopRunInMode(kCFRunLoopDefaultMode, 0.001, 0);
}

id sub_10000F698(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10000F70C;
  v2[3] = &unk_100024C80;
  return [*(a1 + 32) currentProgressInfo:v2];
}

void sub_10000F70C(uint64_t a1, void *a2, float a3)
{
  v8 = a2;
  if (*(*(*(a1 + 40) + 8) + 24) != a3)
  {
    v5 = [*(a1 + 32) progressWindow];
    *&v6 = a3;
    [v5 setProgressValue:v6];

    *(*(*(a1 + 40) + 8) + 24) = a3;
  }

  v7 = [*(a1 + 32) progressWindow];
  [v7 setStatusText:v8];
}

void sub_10000F7B4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didReceiveHIDEvent:v4];
}

uint64_t sub_10000F810(uint64_t a1)
{
  v1 = [*(a1 + 32) progressWindow];
  LODWORD(v2) = 1.0;
  [v1 setProgressValue:v2];

  return CFRunLoopRunInMode(kCFRunLoopDefaultMode, 0.001, 0);
}

uint64_t sub_10000FE14(uint64_t a1)
{
  v2 = [PUIProgressWindow alloc];
  LODWORD(v3) = 1161527296;
  v4 = [v2 initWithProgressBarVisibility:*(a1 + 40) level:*(a1 + 41) forceInverted:v3];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  [*(*(*(a1 + 32) + 8) + 40) setVisible:1];
  [*(*(*(a1 + 32) + 8) + 40) setProgressValue:0.0];

  return CFRunLoopRunInMode(kCFRunLoopDefaultMode, 0.001, 0);
}

uint64_t sub_10000FEEC(uint64_t a1, double a2)
{
  LODWORD(a2) = 1.0;
  [*(*(*(a1 + 32) + 8) + 40) setProgressValue:a2];

  return CFRunLoopRunInMode(kCFRunLoopDefaultMode, 0.001, 0);
}

Class sub_100010148(uint64_t a1)
{
  v3[0] = 0;
  if (!qword_100030A80)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_100010274;
    v3[4] = &unk_1000247C8;
    v3[5] = v3;
    v4 = off_100024D78;
    v5 = 0;
    qword_100030A80 = _sl_dlopen();
  }

  if (!qword_100030A80)
  {
    sub_100012D28(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("HIDEventSystemClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100012CAC();
  }

  qword_100030A78 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100010274(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100030A80 = result;
  return result;
}

void sub_10001096C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 248), 8);
  _Block_object_dispose((v1 - 200), 8);
  _Block_object_dispose((v1 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000109B0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000109C8(uint64_t a1)
{
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = [*(a1 + 32) pluginStates];
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v18 + 1) + 8 * v6) plugin];
        v8 = [v7 isEqual:*(a1 + 40)];

        if (v8)
        {
          v15 = [NSException exceptionWithName:NSInvalidArgumentException reason:@"Plugin to run already exists in watchdog coordinator state" userInfo:0];
          v16 = *(*(a1 + 48) + 8);
          v17 = *(v16 + 40);
          *(v16 + 40) = v15;

          goto LABEL_11;
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v9 = [[DMWrapperProcessWatchdogCoordinatorPluginState alloc] initWithPlugin:*(a1 + 40)];
  v10 = *(*(a1 + 56) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v12 = [*(a1 + 32) pluginStates];
  [v12 addObject:*(*(*(a1 + 56) + 8) + 40)];

  v13 = [*(*(*(a1 + 56) + 8) + 40) queue];
  v14 = *(*(a1 + 64) + 8);
  v2 = *(v14 + 40);
  *(v14 + 40) = v13;
LABEL_11:
}

void sub_100010B94(uint64_t a1)
{
  v2 = [*(a1 + 32) _pluginStateThatBlocksNewRunEvents_onPropertyAccessQueue];
  if (v2)
  {
    v3 = *(a1 + 40);
    v8 = v2;
    v7 = [v2 plugin];
    _DMLogFunc();

    v4 = [v8 queue];
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v2 = v8;
  }
}

void sub_100010C40(uint64_t a1)
{
  [*(*(*(a1 + 56) + 8) + 40) setRunning:1];
  (*(*(a1 + 48) + 16))();
  v2 = [*(a1 + 32) propertyAccessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100010D10;
  block[3] = &unk_100024DE0;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  v8 = *(a1 + 56);
  dispatch_sync(v2, block);
}

id sub_100010D10(uint64_t a1)
{
  v5 = *(a1 + 32);
  _DMLogFunc();
  v2 = [*(a1 + 40) pluginStates];
  [v2 removeObject:*(*(*(a1 + 48) + 8) + 40)];

  v3 = *(a1 + 40);

  return [v3 _killIfAppropriate_onPropertyAccessQueue];
}

void sub_100010EC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100010ED8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v17 = [NSNumber numberWithInt:*(a1 + 56)];
  _DMLogFunc();

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [*(a1 + 40) pluginStates];
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v19 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v18 + 1) + 8 * v7);
      v9 = [v8 plugin];
      v10 = [v9 isEqual:*(a1 + 32)];

      if (v10)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v11 = v8;

    if (!v11)
    {
      goto LABEL_13;
    }

    if ([v11 watchdogged])
    {
      v12 = [NSException exceptionWithName:NSInvalidArgumentException reason:@"Plugin to watchdog already scheduled for watchdog" userInfo:0];
      v13 = *(*(a1 + 48) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;
    }

    else
    {
      [v11 setWatchdogged:1];
      [v11 setPid:*(a1 + 56)];
      [*(a1 + 40) _killIfAppropriate_onPropertyAccessQueue];
    }
  }

  else
  {
LABEL_9:

LABEL_13:
    v15 = [NSException exceptionWithName:NSInvalidArgumentException reason:@"Plugin to watchdog does not exist in watchdog coordinator state" userInfo:0];
    v16 = *(*(a1 + 48) + 8);
    v11 = *(v16 + 40);
    *(v16 + 40) = v15;
  }
}

void sub_1000114BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000114D4(uint64_t a1)
{
  v2 = [*(a1 + 32) pluginStates];
  *(*(*(a1 + 40) + 8) + 24) = [v2 count];
}

void sub_100011E00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100011E24(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100011E3C(uint64_t a1)
{
  v2 = +[DMMigrationPluginWrapperConnection connection];
  [v2 resume];
  v3 = dispatch_queue_create("com.apple.datamigrator.pluginCompletionSerialQueue", 0);
  v4 = 0;
  if (*(a1 + 72) > 0.0)
  {
    v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v3);
    v5 = dispatch_time(0, (*(a1 + 72) * 1000000000.0));
    dispatch_source_set_timer(v4, v5, 0xFFFFFFFFFFFFFFFFLL, (*(a1 + 72) * 1000000000.0));
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10001220C;
    handler[3] = &unk_100024E80;
    v6 = *(a1 + 56);
    v7 = v2;
    v55 = *(a1 + 72);
    v8 = *(a1 + 64);
    v51 = v7;
    v54 = v8;
    v28 = *(a1 + 32);
    v9 = *(&v28 + 1);
    *&v10 = *(a1 + 48);
    *(&v10 + 1) = v6;
    v52 = v28;
    v53 = v10;
    dispatch_source_set_event_handler(v4, handler);
    dispatch_resume(v4);
  }

  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = sub_100011E24;
  v48 = sub_100011E34;
  v49 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v3);
  v11 = v45[5];
  [*(a1 + 32) pidReceiptTimeout];
  v13 = dispatch_time(0, (v12 * 1000000000.0));
  dispatch_source_set_timer(v11, v13, 0xFFFFFFFFFFFFFFFFLL, 0x2FAF080uLL);
  v14 = v45[5];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_100012444;
  v38[3] = &unk_100024EA8;
  v42 = *(a1 + 56);
  v15 = v2;
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v39 = v15;
  v40 = v16;
  v41 = v17;
  v43 = &v44;
  dispatch_source_set_event_handler(v14, v38);
  dispatch_resume(v45[5]);
  **(a1 + 80) = 0;
  v18 = [*(*(a1 + 32) + 16) path];
  v19 = *(a1 + 40);
  v20 = *(*(a1 + 32) + 8);
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000125E8;
  v29[3] = &unk_100024EF8;
  v21 = v3;
  v30 = v21;
  v22 = v4;
  v23 = *(a1 + 64);
  v34 = *(a1 + 56);
  v35 = &v44;
  v24 = *(a1 + 32);
  v25 = *(a1 + 40);
  v31 = v22;
  v32 = v24;
  v36 = v23;
  v26 = v25;
  v27 = *(a1 + 80);
  v33 = v26;
  v37 = v27;
  [v15 runPluginAtPath:v18 withIdentifier:v20 parameters:v19 completion:v29];

  [v15 invalidate];
  _Block_object_dispose(&v44, 8);
}

void sub_10001220C(uint64_t a1)
{
  v2 = *(*(a1 + 64) + 8);
  if (!*(v2 + 24))
  {
    *(v2 + 24) = 1;
    v4 = [*(a1 + 32) pidForWatchdog];
    v5 = *(a1 + 40);
    v6 = [NSNumber numberWithInt:v4];
    v19 = [NSNumber numberWithDouble:*(a1 + 80)];
    v17 = v5;
    _DMLogFunc();

    if (os_variant_has_internal_content())
    {
      _DMLogFunc();
    }

    v7 = *(a1 + 40);
    if (v4)
    {
      v8 = [NSNumber numberWithInt:v4, v17, v6, v19];
      v9 = [NSNumber numberWithDouble:*(a1 + 80)];
      v20 = [NSString stringWithFormat:@"%@ - Got Watchdogged, pid %@, after %@ seconds", v7, v8, v9];

      v10 = *(*(a1 + 40) + 16);
      v11 = [*(a1 + 48) dispositionSupersetOfContext];
      v12 = [DMIncident incidentWithKind:3 responsiblePluginRep:v10 userDataDisposition:v11 details:v20];
      v13 = *(*(a1 + 72) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;

      v15 = +[DMDiagnostics sharedInstance];
      [v15 captureDiagnosticsForIncident:*(*(*(a1 + 72) + 8) + 40) async:0];
    }

    else
    {
      v16 = [NSNumber numberWithDouble:*(a1 + 80), v17, v6, v19];
      v20 = [NSString stringWithFormat:@"%@ - Attempted watchdog failed (couldn't find the pid) after %@ seconds", v7, v16];

      v18 = v20;
      _DMLogFunc();
    }

    [*(a1 + 56) watchdogPlugin:*(a1 + 40) withPid:{v4, v18}];
  }
}

void sub_100012444(uint64_t a1)
{
  if (!*(*(*(a1 + 56) + 8) + 24) && ([*(a1 + 32) didReceivePid] & 1) == 0)
  {
    [*(a1 + 40) pidReceiptTimeout];
    v12 = [NSNumber numberWithDouble:?];
    _DMLogFunc();

    v2 = *(*(a1 + 40) + 16);
    v3 = [*(a1 + 48) dispositionSupersetOfContext];
    v4 = *(a1 + 40);
    [v4 pidReceiptTimeout];
    v5 = [NSNumber numberWithDouble:?];
    v6 = [NSString stringWithFormat:@"%@ - Did not receive pid after %@ seconds", v4, v5];
    v7 = [DMIncident incidentWithKind:4 responsiblePluginRep:v2 userDataDisposition:v3 details:v6];

    v8 = +[DMDiagnostics sharedInstance];
    [v8 captureDiagnosticsForIncident:v7 async:0];
  }

  v9 = *(*(*(a1 + 64) + 8) + 40);
  if (v9)
  {
    dispatch_source_cancel(v9);
    v10 = *(*(a1 + 64) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = 0;
  }
}

void sub_1000125E8(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000126D8;
  block[3] = &unk_100024ED0;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v19 = a2;
  v8 = *(a1 + 48);
  v13 = v7;
  v14 = v8;
  v15 = v5;
  v17 = *(a1 + 72);
  v11 = *(a1 + 56);
  v9 = v11;
  v16 = v11;
  v18 = *(a1 + 88);
  v10 = v5;
  dispatch_sync(v6, block);
}

void sub_1000126D8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    dispatch_source_cancel(v2);
  }

  v3 = *(*(a1 + 64) + 8);
  if (!*(v3 + 24))
  {
    *(v3 + 24) = 2;
  }

  v4 = *(*(*(a1 + 72) + 8) + 40);
  if (v4)
  {
    dispatch_source_cancel(v4);
    v5 = *(*(a1 + 72) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = 0;
  }

  if ((*(a1 + 96) & 1) == 0)
  {
    if (*(*(*(a1 + 64) + 8) + 24) == 1)
    {
      v13 = *(a1 + 40);
      v15 = *(a1 + 48);
      _DMLogFunc();
    }

    else if (*(a1 + 48))
    {
      v14 = *(a1 + 40);
      v16 = *(a1 + 48);
      _DMLogFunc();
      **(a1 + 88) = 1;
    }

    else
    {
      v7 = *(*(a1 + 40) + 16);
      v8 = [*(a1 + 56) dispositionSupersetOfContext];
      v9 = [NSString stringWithFormat:@"%@ - Returned NO from -performMigration:", *(a1 + 40)];
      v10 = [DMIncident incidentWithKind:1 responsiblePluginRep:v7 userDataDisposition:v8 details:v9];
      v11 = *(*(a1 + 80) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;

      v17 = +[DMDiagnostics sharedInstance];
      [v17 captureDiagnosticsForIncident:*(*(*(a1 + 80) + 8) + 40) async:1];
    }
  }
}

void sub_1000129B0()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getOSASubmissionClientClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"DMRebootAnalyticsUploader.m" lineNumber:18 description:{@"Unable to find class %s", "OSASubmissionClient"}];

  __break(1u);
}

void sub_100012A2C(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *OSASubmissionClientLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"DMRebootAnalyticsUploader.m" lineNumber:17 description:{@"%s", *a1}];

  __break(1u);
}

void sub_100012B74()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getLockdownModeManagerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"DMEnvironment+DataMigrator.m" lineNumber:23 description:{@"Unable to find class %s", "LockdownModeManager"}];

  __break(1u);
}

void sub_100012BF0(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *LockdownModeLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"DMEnvironment+DataMigrator.m" lineNumber:22 description:{@"%s", *a1}];

  __break(1u);
}

void sub_100012CAC()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getHIDEventSystemClientClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"DMMigrator.m" lineNumber:58 description:{@"Unable to find class %s", "HIDEventSystemClient"}];

  __break(1u);
}

void sub_100012D28(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *HIDLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"DMMigrator.m" lineNumber:57 description:{@"%s", *a1}];

  __break(1u);
  JUMPOUT(0x100012DA8);
}