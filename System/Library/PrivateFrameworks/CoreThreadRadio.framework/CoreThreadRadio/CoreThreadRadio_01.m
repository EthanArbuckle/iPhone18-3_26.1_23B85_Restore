id get2GDurationInCurrentTimerDuration()
{
  result = qword_100523A70;
  if (qword_100523A70)
  {
    return [qword_100523A70 getAndReset2GDuration];
  }

  return result;
}

id get5GDurationInCurrentTimerDuration()
{
  result = qword_100523A70;
  if (qword_100523A70)
  {
    return [qword_100523A70 getAndReset5GDuration];
  }

  return result;
}

id get6GDurationInCurrentTimerDuration()
{
  result = qword_100523A70;
  if (qword_100523A70)
  {
    return [qword_100523A70 getAndReset6GDuration];
  }

  return result;
}

id getOdeonDurationInCurrentTimerDuration()
{
  result = qword_100523A70;
  if (qword_100523A70)
  {
    return [qword_100523A70 getAndResetOdeonDuration];
  }

  return result;
}

id getEthernetDurationInCurrentTimerDuration()
{
  result = qword_100523A70;
  if (qword_100523A70)
  {
    return [qword_100523A70 getAndResetEthernetDuration];
  }

  return result;
}

id getUnkownDurationInCurrentTimerDuration()
{
  result = qword_100523A70;
  if (qword_100523A70)
  {
    return [qword_100523A70 getAndResetUnknownDuration];
  }

  return result;
}

id getBackhaulDimInCurrentTimerDuration()
{
  result = qword_100523A70;
  if (qword_100523A70)
  {
    return [qword_100523A70 getCurrentBackhaul];
  }

  return result;
}

uint64_t getCurrentWIFI()
{
  v0 = [qword_100523A78 channel];
  v1 = [v0 is2GHz];

  v2 = [qword_100523A78 channel];
  v3 = v2;
  if (v1)
  {
    _MergedGlobals_0 = [v2 is2GHz];

    v4 = @"%s::current WiFi channel in 2GHz band\n";
    v5 = 1;
  }

  else
  {
    v6 = [v2 is5GHz];

    if (v6)
    {
      v4 = @"%s::current WiFi channel in 5GHz band\n";
      v5 = 2;
    }

    else
    {
      v7 = [qword_100523A78 channel];
      v8 = [v7 is6GHz];

      v5 = 3;
      if (v8)
      {
        v4 = @"%s::current WiFi channel in 6GHz band\n";
      }

      else
      {
        v5 = 0;
        v4 = @"%s::current WiFi channel in unknown state\n";
      }
    }
  }

  qword_100523A90 = v5;
  NSLog(&v4->isa, "getCurrentWIFI");
  return qword_100523A90;
}

uint64_t getSystemUptimeInSec(void)
{
  *v7 = 0x1500000001;
  v5 = 16;
  gettimeofday(&v4, &v3);
  v0 = sysctl(v7, 2u, &v6, &v5, 0, 0);
  if (v6)
  {
    v1 = v0 == -1;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    return -1;
  }

  else
  {
    return v4.tv_sec - v6;
  }
}

__darwin_time_t getDaemonUptimeInSec(void)
{
  gettimeofday(&v3, &v2);
  if (v3.tv_sec)
  {
    v0 = daemonUp_time == 0;
  }

  else
  {
    v0 = 1;
  }

  if (v0)
  {
    return -1;
  }

  else
  {
    return v3.tv_sec - daemonUp_time;
  }
}

void FaultInfo::setControlInterface(uint64_t a1)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v3 = logging_obg;
    if (syslog_is_the_mask_enabled(6))
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *v4 = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "FaultInfo: Setting NCP control Interface for PowerEventHandler", v4, 2u);
      }
    }

    goto LABEL_5;
  }

  if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
LABEL_5:
    FaultInfo::ncpControlInterface = a1;
    return;
  }

  FaultInfo::setControlInterface();
  FaultInfo::ncpControlInterface = a1;
}

__darwin_time_t time_ms()
{
  v1.tv_sec = 0;
  *&v1.tv_usec = 0;
  gettimeofday(&v1, 0);
  return 1000 * v1.tv_sec + v1.tv_usec / 1000;
}

uint64_t cms_until_time(uint64_t a1)
{
  v2 = time(0);
  if (a1 - v2 <= 0x20C49BA5E353F7)
  {
    return 1000 * (a1 - v2);
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

uint64_t AWDCountersCoexSReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
  {
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    do
    {
      LOBYTE(v110) = 0;
      v11 = [a2 position] + 1;
      if (v11 >= [a2 position])
      {
        v12 = [a2 position] + 1;
        if (v12 <= [a2 length])
        {
          v13 = [a2 data];
          [v13 getBytes:&v110 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          v10 |= (v110 & 0x7F) << v8;
          if ((v110 & 0x80) != 0)
          {
            goto LABEL_16;
          }

LABEL_20:
          if ([a2 hasError])
          {
            v15 = 0;
          }

          else
          {
            v15 = v10;
          }

          if (([a2 hasError] & 1) == 0)
          {
            goto LABEL_24;
          }

          return [a2 hasError] ^ 1;
        }
      }

      [a2 _setError];
      v10 |= (v110 & 0x7F) << v8;
      if ((v110 & 0x80) == 0)
      {
        goto LABEL_20;
      }

LABEL_16:
      v8 += 7;
      v14 = v9++ >= 9;
    }

    while (!v14);
    v15 = 0;
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

LABEL_24:
    v16 = v15 & 7;
    if (v16 == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v15 >> 3))
    {
      case 1u:
        v17 = 0;
        v18 = 0;
        v19 = 0;
        *(a1 + 100) |= 0x40u;
        while (1)
        {
          LOBYTE(v110) = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:&v110 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            v19 |= (v110 & 0x7F) << v17;
            if ((v110 & 0x80) == 0)
            {
LABEL_180:
              if ([a2 hasError])
              {
                v5 = 0;
              }

              else
              {
                v5 = v19;
              }

              goto LABEL_183;
            }
          }

          else
          {
            [a2 _setError];
            v19 |= (v110 & 0x7F) << v17;
            if ((v110 & 0x80) == 0)
            {
              goto LABEL_180;
            }
          }

          v17 += 7;
          v14 = v18++ >= 9;
          if (v14)
          {
            v5 = 0;
LABEL_183:
            v6 = 80;
            goto LABEL_7;
          }
        }

      case 2u:
        v67 = 0;
        v68 = 0;
        v69 = 0;
        *(a1 + 100) |= 0x20u;
        while (2)
        {
          LOBYTE(v110) = 0;
          v70 = [a2 position] + 1;
          if (v70 >= [a2 position] && (v71 = objc_msgSend(a2, "position") + 1, v71 <= objc_msgSend(a2, "length")))
          {
            v72 = [a2 data];
            [v72 getBytes:&v110 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            v69 |= (v110 & 0x7F) << v67;
            if ((v110 & 0x80) == 0)
            {
LABEL_184:
              if ([a2 hasError])
              {
                v5 = 0;
              }

              else
              {
                v5 = v69;
              }

LABEL_187:
              v6 = 76;
              goto LABEL_7;
            }
          }

          else
          {
            [a2 _setError];
            v69 |= (v110 & 0x7F) << v67;
            if ((v110 & 0x80) == 0)
            {
              goto LABEL_184;
            }
          }

          v67 += 7;
          v14 = v68++ >= 9;
          if (v14)
          {
            v5 = 0;
            goto LABEL_187;
          }

          continue;
        }

      case 3u:
        v47 = 0;
        v48 = 0;
        v49 = 0;
        *(a1 + 100) |= 0x10u;
        while (2)
        {
          LOBYTE(v110) = 0;
          v50 = [a2 position] + 1;
          if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
          {
            v52 = [a2 data];
            [v52 getBytes:&v110 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            v49 |= (v110 & 0x7F) << v47;
            if ((v110 & 0x80) == 0)
            {
LABEL_172:
              if ([a2 hasError])
              {
                v5 = 0;
              }

              else
              {
                v5 = v49;
              }

LABEL_175:
              v6 = 72;
              goto LABEL_7;
            }
          }

          else
          {
            [a2 _setError];
            v49 |= (v110 & 0x7F) << v47;
            if ((v110 & 0x80) == 0)
            {
              goto LABEL_172;
            }
          }

          v47 += 7;
          v14 = v48++ >= 9;
          if (v14)
          {
            v5 = 0;
            goto LABEL_175;
          }

          continue;
        }

      case 4u:
        v53 = 0;
        v54 = 0;
        v55 = 0;
        *(a1 + 100) |= 8u;
        while (2)
        {
          LOBYTE(v110) = 0;
          v56 = [a2 position] + 1;
          if (v56 >= [a2 position] && (v57 = objc_msgSend(a2, "position") + 1, v57 <= objc_msgSend(a2, "length")))
          {
            v58 = [a2 data];
            [v58 getBytes:&v110 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            v55 |= (v110 & 0x7F) << v53;
            if ((v110 & 0x80) == 0)
            {
LABEL_176:
              if ([a2 hasError])
              {
                v5 = 0;
              }

              else
              {
                v5 = v55;
              }

LABEL_179:
              v6 = 68;
              goto LABEL_7;
            }
          }

          else
          {
            [a2 _setError];
            v55 |= (v110 & 0x7F) << v53;
            if ((v110 & 0x80) == 0)
            {
              goto LABEL_176;
            }
          }

          v53 += 7;
          v14 = v54++ >= 9;
          if (v14)
          {
            v5 = 0;
            goto LABEL_179;
          }

          continue;
        }

      case 5u:
        v29 = 0;
        v30 = 0;
        v31 = 0;
        *(a1 + 100) |= 4u;
        while (2)
        {
          LOBYTE(v110) = 0;
          v32 = [a2 position] + 1;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
          {
            v34 = [a2 data];
            [v34 getBytes:&v110 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            v31 |= (v110 & 0x7F) << v29;
            if ((v110 & 0x80) == 0)
            {
LABEL_160:
              if ([a2 hasError])
              {
                v5 = 0;
              }

              else
              {
                v5 = v31;
              }

LABEL_163:
              v6 = 64;
              goto LABEL_7;
            }
          }

          else
          {
            [a2 _setError];
            v31 |= (v110 & 0x7F) << v29;
            if ((v110 & 0x80) == 0)
            {
              goto LABEL_160;
            }
          }

          v29 += 7;
          v14 = v30++ >= 9;
          if (v14)
          {
            v5 = 0;
            goto LABEL_163;
          }

          continue;
        }

      case 6u:
        v73 = 0;
        v74 = 0;
        v75 = 0;
        *(a1 + 100) |= 2u;
        while (2)
        {
          LOBYTE(v110) = 0;
          v76 = [a2 position] + 1;
          if (v76 >= [a2 position] && (v77 = objc_msgSend(a2, "position") + 1, v77 <= objc_msgSend(a2, "length")))
          {
            v78 = [a2 data];
            [v78 getBytes:&v110 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            v75 |= (v110 & 0x7F) << v73;
            if ((v110 & 0x80) == 0)
            {
LABEL_188:
              if ([a2 hasError])
              {
                v5 = 0;
              }

              else
              {
                v5 = v75;
              }

LABEL_191:
              v6 = 60;
              goto LABEL_7;
            }
          }

          else
          {
            [a2 _setError];
            v75 |= (v110 & 0x7F) << v73;
            if ((v110 & 0x80) == 0)
            {
              goto LABEL_188;
            }
          }

          v73 += 7;
          v14 = v74++ >= 9;
          if (v14)
          {
            v5 = 0;
            goto LABEL_191;
          }

          continue;
        }

      case 7u:
        v79 = 0;
        v80 = 0;
        v81 = 0;
        *(a1 + 100) |= 1u;
        while (2)
        {
          LOBYTE(v110) = 0;
          v82 = [a2 position] + 1;
          if (v82 >= [a2 position] && (v83 = objc_msgSend(a2, "position") + 1, v83 <= objc_msgSend(a2, "length")))
          {
            v84 = [a2 data];
            [v84 getBytes:&v110 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            v81 |= (v110 & 0x7F) << v79;
            if ((v110 & 0x80) == 0)
            {
LABEL_192:
              if ([a2 hasError])
              {
                v5 = 0;
              }

              else
              {
                v5 = v81;
              }

LABEL_195:
              v6 = 56;
              goto LABEL_7;
            }
          }

          else
          {
            [a2 _setError];
            v81 |= (v110 & 0x7F) << v79;
            if ((v110 & 0x80) == 0)
            {
              goto LABEL_192;
            }
          }

          v79 += 7;
          v14 = v80++ >= 9;
          if (v14)
          {
            v5 = 0;
            goto LABEL_195;
          }

          continue;
        }

      case 8u:
        if (v16 != 2)
        {
          v98 = 0;
          v99 = 0;
          v100 = 0;
          do
          {
            LOBYTE(v110) = 0;
            v101 = [a2 position] + 1;
            if (v101 >= [a2 position] && (v102 = objc_msgSend(a2, "position") + 1, v102 <= objc_msgSend(a2, "length")))
            {
              v103 = [a2 data];
              [v103 getBytes:&v110 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v100 |= (v110 & 0x7F) << v98;
              if ((v110 & 0x80) == 0)
              {
                goto LABEL_218;
              }
            }

            else
            {
              [a2 _setError];
              v100 |= (v110 & 0x7F) << v98;
              if ((v110 & 0x80) == 0)
              {
                goto LABEL_218;
              }
            }

            v98 += 7;
            v14 = v99++ >= 9;
          }

          while (!v14);
          goto LABEL_219;
        }

        v110 = 0;
        v111 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

LABEL_94:
        v60 = [a2 position];
        if (v60 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
        {
          goto LABEL_159;
        }

        v61 = 0;
        v62 = 0;
        v63 = 0;
        while (1)
        {
          v112 = 0;
          v64 = [a2 position] + 1;
          if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 1, v65 <= objc_msgSend(a2, "length")))
          {
            v66 = [a2 data];
            [v66 getBytes:&v112 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            v63 |= (v112 & 0x7F) << v61;
            if ((v112 & 0x80) == 0)
            {
LABEL_92:
              [a2 hasError];
LABEL_93:
              PBRepeatedUInt32Add();
              goto LABEL_94;
            }
          }

          else
          {
            [a2 _setError];
            v63 |= (v112 & 0x7F) << v61;
            if ((v112 & 0x80) == 0)
            {
              goto LABEL_92;
            }
          }

          v61 += 7;
          v14 = v62++ >= 9;
          if (v14)
          {
            goto LABEL_93;
          }
        }

      case 9u:
        if (v16 != 2)
        {
          v104 = 0;
          v105 = 0;
          v106 = 0;
          while (1)
          {
            LOBYTE(v110) = 0;
            v107 = [a2 position] + 1;
            if (v107 >= [a2 position])
            {
              v108 = [a2 position] + 1;
              if (v108 <= [a2 length])
              {
                break;
              }
            }

            [a2 _setError];
            v106 |= (v110 & 0x7F) << v104;
            if ((v110 & 0x80) == 0)
            {
              goto LABEL_218;
            }

LABEL_215:
            v104 += 7;
            v14 = v105++ >= 9;
            if (v14)
            {
              goto LABEL_219;
            }
          }

          v109 = [a2 data];
          [v109 getBytes:&v110 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          v106 |= (v110 & 0x7F) << v104;
          if ((v110 & 0x80) != 0)
          {
            goto LABEL_215;
          }

LABEL_218:
          [a2 hasError];
LABEL_219:
          PBRepeatedUInt32Add();
LABEL_8:
          v7 = [a2 position];
          if (v7 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

        v110 = 0;
        v111 = 0;
        result = PBReaderPlaceMark();
        if (result)
        {
          while (1)
          {
            v91 = [a2 position];
            if (v91 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
LABEL_159:
              PBReaderRecallMark();
              goto LABEL_8;
            }

            v92 = 0;
            v93 = 0;
            v94 = 0;
            while (1)
            {
              v112 = 0;
              v95 = [a2 position] + 1;
              if (v95 >= [a2 position])
              {
                v96 = [a2 position] + 1;
                if (v96 <= [a2 length])
                {
                  break;
                }
              }

              [a2 _setError];
              v94 |= (v112 & 0x7F) << v92;
              if ((v112 & 0x80) == 0)
              {
                goto LABEL_146;
              }

LABEL_156:
              v92 += 7;
              v14 = v93++ >= 9;
              if (v14)
              {
                goto LABEL_147;
              }
            }

            v97 = [a2 data];
            [v97 getBytes:&v112 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            v94 |= (v112 & 0x7F) << v92;
            if (v112 < 0)
            {
              goto LABEL_156;
            }

LABEL_146:
            [a2 hasError];
LABEL_147:
            PBRepeatedUInt32Add();
          }
        }

        return result;
      case 0xAu:
        v41 = 0;
        v42 = 0;
        v43 = 0;
        *(a1 + 100) |= 0x400u;
        while (1)
        {
          LOBYTE(v110) = 0;
          v44 = [a2 position] + 1;
          if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
          {
            v46 = [a2 data];
            [v46 getBytes:&v110 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            v43 |= (v110 & 0x7F) << v41;
            if ((v110 & 0x80) == 0)
            {
LABEL_168:
              if ([a2 hasError])
              {
                v5 = 0;
              }

              else
              {
                v5 = v43;
              }

LABEL_171:
              v6 = 96;
LABEL_7:
              *(a1 + v6) = v5;
              goto LABEL_8;
            }
          }

          else
          {
            [a2 _setError];
            v43 |= (v110 & 0x7F) << v41;
            if ((v110 & 0x80) == 0)
            {
              goto LABEL_168;
            }
          }

          v41 += 7;
          v14 = v42++ >= 9;
          if (v14)
          {
            v5 = 0;
            goto LABEL_171;
          }
        }

      case 0xBu:
        v85 = 0;
        v86 = 0;
        v87 = 0;
        *(a1 + 100) |= 0x100u;
        while (1)
        {
          LOBYTE(v110) = 0;
          v88 = [a2 position] + 1;
          if (v88 >= [a2 position] && (v89 = objc_msgSend(a2, "position") + 1, v89 <= objc_msgSend(a2, "length")))
          {
            v90 = [a2 data];
            [v90 getBytes:&v110 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            v87 |= (v110 & 0x7F) << v85;
            if ((v110 & 0x80) == 0)
            {
LABEL_196:
              if ([a2 hasError])
              {
                v5 = 0;
              }

              else
              {
                v5 = v87;
              }

              goto LABEL_199;
            }
          }

          else
          {
            [a2 _setError];
            v87 |= (v110 & 0x7F) << v85;
            if ((v110 & 0x80) == 0)
            {
              goto LABEL_196;
            }
          }

          v85 += 7;
          v14 = v86++ >= 9;
          if (v14)
          {
            v5 = 0;
LABEL_199:
            v6 = 88;
            goto LABEL_7;
          }
        }

      case 0xCu:
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 100) |= 0x200u;
        while (1)
        {
          LOBYTE(v110) = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v110 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            v25 |= (v110 & 0x7F) << v23;
            if ((v110 & 0x80) == 0)
            {
LABEL_3:
              if ([a2 hasError])
              {
                v5 = 0;
              }

              else
              {
                v5 = v25;
              }

              goto LABEL_6;
            }
          }

          else
          {
            [a2 _setError];
            v25 |= (v110 & 0x7F) << v23;
            if ((v110 & 0x80) == 0)
            {
              goto LABEL_3;
            }
          }

          v23 += 7;
          v14 = v24++ >= 9;
          if (v14)
          {
            v5 = 0;
LABEL_6:
            v6 = 92;
            goto LABEL_7;
          }
        }

      case 0xDu:
        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 100) |= 0x80u;
        while (1)
        {
          LOBYTE(v110) = 0;
          v38 = [a2 position] + 1;
          if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
          {
            v40 = [a2 data];
            [v40 getBytes:&v110 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            v37 |= (v110 & 0x7F) << v35;
            if ((v110 & 0x80) == 0)
            {
LABEL_164:
              if ([a2 hasError])
              {
                v5 = 0;
              }

              else
              {
                v5 = v37;
              }

              goto LABEL_167;
            }
          }

          else
          {
            [a2 _setError];
            v37 |= (v110 & 0x7F) << v35;
            if ((v110 & 0x80) == 0)
            {
              goto LABEL_164;
            }
          }

          v35 += 7;
          v14 = v36++ >= 9;
          if (v14)
          {
            v5 = 0;
LABEL_167:
            v6 = 84;
            goto LABEL_7;
          }
        }

      default:
        if (PBReaderSkipValueWithTag())
        {
          goto LABEL_8;
        }

        return 0;
    }
  }
}

uint64_t AWDCountersDiscoveryJoinSReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (1)
  {
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    do
    {
      LOBYTE(v29) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position])
      {
        v10 = [a2 position] + 1;
        if (v10 <= [a2 length])
        {
          v11 = [a2 data];
          [v11 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          v8 |= (v29 & 0x7F) << v6;
          if ((v29 & 0x80) != 0)
          {
            goto LABEL_12;
          }

LABEL_16:
          if ([a2 hasError])
          {
            v13 = 0;
          }

          else
          {
            v13 = v8;
          }

          if (([a2 hasError] & 1) == 0)
          {
            goto LABEL_20;
          }

          return [a2 hasError] ^ 1;
        }
      }

      [a2 _setError];
      v8 |= (v29 & 0x7F) << v6;
      if ((v29 & 0x80) == 0)
      {
        goto LABEL_16;
      }

LABEL_12:
      v6 += 7;
      v12 = v7++ >= 9;
    }

    while (!v12);
    v13 = 0;
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

LABEL_20:
    if ((v13 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    if ((v13 >> 3) == 2)
    {
      v22 = objc_alloc_init(AWDCountersJoinerS);
      objc_storeStrong((a1 + 32), v22);
      v29 = 0;
      v30 = 0;
      if (PBReaderPlaceMark() && AWDCountersJoinerSReadFrom(v22, a2))
      {
        PBReaderRecallMark();

        goto LABEL_4;
      }

      return 0;
    }

    if ((v13 >> 3) != 1)
    {
      if (PBReaderSkipValueWithTag())
      {
        goto LABEL_4;
      }

      return 0;
    }

    if ((v13 & 7) == 2)
    {
      break;
    }

    v23 = 0;
    v24 = 0;
    v25 = 0;
    while (1)
    {
      LOBYTE(v29) = 0;
      v26 = [a2 position] + 1;
      if (v26 >= [a2 position])
      {
        v27 = [a2 position] + 1;
        if (v27 <= [a2 length])
        {
          break;
        }
      }

      [a2 _setError];
      v25 |= (v29 & 0x7F) << v23;
      if ((v29 & 0x80) == 0)
      {
        goto LABEL_52;
      }

LABEL_48:
      v23 += 7;
      v12 = v24++ >= 9;
      if (v12)
      {
        goto LABEL_53;
      }
    }

    v28 = [a2 data];
    [v28 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
    v25 |= (v29 & 0x7F) << v23;
    if ((v29 & 0x80) != 0)
    {
      goto LABEL_48;
    }

LABEL_52:
    [a2 hasError];
LABEL_53:
    PBRepeatedUInt32Add();
LABEL_4:
    v5 = [a2 position];
    if (v5 >= [a2 length])
    {
      return [a2 hasError] ^ 1;
    }
  }

  v29 = 0;
  v30 = 0;
  result = PBReaderPlaceMark();
  if (result)
  {
    while (1)
    {
      v15 = [a2 position];
      if (v15 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
      {
        PBReaderRecallMark();
        goto LABEL_4;
      }

      v16 = 0;
      v17 = 0;
      v18 = 0;
      while (1)
      {
        v31 = 0;
        v19 = [a2 position] + 1;
        if (v19 >= [a2 position])
        {
          v20 = [a2 position] + 1;
          if (v20 <= [a2 length])
          {
            break;
          }
        }

        [a2 _setError];
        v18 |= (v31 & 0x7F) << v16;
        if ((v31 & 0x80) == 0)
        {
          goto LABEL_26;
        }

LABEL_36:
        v16 += 7;
        v12 = v17++ >= 9;
        if (v12)
        {
          goto LABEL_27;
        }
      }

      v21 = [a2 data];
      [v21 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      v18 |= (v31 & 0x7F) << v16;
      if (v31 < 0)
      {
        goto LABEL_36;
      }

LABEL_26:
      [a2 hasError];
LABEL_27:
      PBRepeatedUInt32Add();
    }
  }

  return result;
}

uint64_t AWDCountersEngagementSReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        v29 = 0;
        v11 = [a2 position] + 1;
        if (v11 >= [a2 position])
        {
          v12 = [a2 position] + 1;
          if (v12 <= [a2 length])
          {
            break;
          }
        }

        [a2 _setError];
        v10 |= (v29 & 0x7F) << v8;
        if ((v29 & 0x80) == 0)
        {
          goto LABEL_20;
        }

LABEL_16:
        v8 += 7;
        if (v9++ >= 9)
        {
          v15 = 0;
          if ([a2 hasError])
          {
            return [a2 hasError] ^ 1;
          }

          goto LABEL_24;
        }
      }

      v13 = [a2 data];
      [v13 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      v10 |= (v29 & 0x7F) << v8;
      if (v29 < 0)
      {
        goto LABEL_16;
      }

LABEL_20:
      if ([a2 hasError])
      {
        v15 = 0;
      }

      else
      {
        v15 = v10;
      }

      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

LABEL_24:
      if ((v15 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v15 >> 3) == 2)
      {
        v23 = 0;
        v24 = 0;
        v18 = 0;
        *(a1 + 16) |= 1u;
        while (1)
        {
          v30 = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            v18 |= (v30 & 0x7F) << v23;
            if ((v30 & 0x80) == 0)
            {
LABEL_47:
              v5 = &OBJC_IVAR___AWDCountersEngagementS__childNodesCount;
LABEL_4:
              if ([a2 hasError])
              {
                v6 = 0;
              }

              else
              {
                v6 = v18;
              }

              goto LABEL_7;
            }
          }

          else
          {
            [a2 _setError];
            v18 |= (v30 & 0x7F) << v23;
            if ((v30 & 0x80) == 0)
            {
              goto LABEL_47;
            }
          }

          v23 += 7;
          v22 = v24++ > 8;
          if (v22)
          {
            v6 = 0;
            v5 = &OBJC_IVAR___AWDCountersEngagementS__childNodesCount;
            goto LABEL_7;
          }
        }
      }

      if ((v15 >> 3) == 1)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 16) |= 2u;
        do
        {
          v31 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            v18 |= (v31 & 0x7F) << v16;
            if ((v31 & 0x80) == 0)
            {
LABEL_3:
              v5 = &OBJC_IVAR___AWDCountersEngagementS__routerNodesCount;
              goto LABEL_4;
            }
          }

          else
          {
            [a2 _setError];
            v18 |= (v31 & 0x7F) << v16;
            if ((v31 & 0x80) == 0)
            {
              goto LABEL_3;
            }
          }

          v16 += 7;
          v22 = v17++ > 8;
        }

        while (!v22);
        v6 = 0;
        v5 = &OBJC_IVAR___AWDCountersEngagementS__routerNodesCount;
LABEL_7:
        *(a1 + *v5) = v6;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v7 = [a2 position];
    }

    while (v7 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDCountersIpv6SReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

LABEL_2:
  if ([a2 hasError])
  {
    return [a2 hasError] ^ 1;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  while (1)
  {
    v70 = 0;
    v8 = [a2 position] + 1;
    if (v8 >= [a2 position])
    {
      v9 = [a2 position] + 1;
      if (v9 <= [a2 length])
      {
        break;
      }
    }

    [a2 _setError];
    v7 |= (v70 & 0x7F) << v5;
    if ((v70 & 0x80) == 0)
    {
      goto LABEL_13;
    }

LABEL_9:
    v5 += 7;
    if (v6++ >= 9)
    {
      v12 = 0;
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      goto LABEL_17;
    }
  }

  v10 = [a2 data];
  [v10 getBytes:&v70 range:{objc_msgSend(a2, "position"), 1}];

  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
  v7 |= (v70 & 0x7F) << v5;
  if (v70 < 0)
  {
    goto LABEL_9;
  }

LABEL_13:
  if ([a2 hasError])
  {
    v12 = 0;
  }

  else
  {
    v12 = v7;
  }

  if ([a2 hasError])
  {
    return [a2 hasError] ^ 1;
  }

LABEL_17:
  if ((v12 & 7) == 4)
  {
    return [a2 hasError] ^ 1;
  }

  v13 = v12 >> 3;
  if ((v12 >> 3) > 5)
  {
    if (v13 <= 7)
    {
      if (v13 == 6)
      {
        v43 = 0;
        v44 = 0;
        v16 = 0;
        *(a1 + 48) |= 0x40u;
        while (1)
        {
          v75 = 0;
          v45 = [a2 position] + 1;
          if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
          {
            v47 = [a2 data];
            [v47 getBytes:&v75 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            v16 |= (v75 & 0x7F) << v43;
            if ((v75 & 0x80) == 0)
            {
LABEL_126:
              v22 = &OBJC_IVAR___AWDCountersIpv6S__txDelaymin;
              goto LABEL_133;
            }
          }

          else
          {
            [a2 _setError];
            v16 |= (v75 & 0x7F) << v43;
            if ((v75 & 0x80) == 0)
            {
              goto LABEL_126;
            }
          }

          v43 += 7;
          v20 = v44++ > 8;
          if (v20)
          {
            v21 = 0;
            v22 = &OBJC_IVAR___AWDCountersIpv6S__txDelaymin;
            goto LABEL_136;
          }
        }
      }

      if (v13 == 7)
      {
        v33 = 0;
        v34 = 0;
        v16 = 0;
        *(a1 + 48) |= 0x20u;
        while (1)
        {
          v74 = 0;
          v35 = [a2 position] + 1;
          if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
          {
            v37 = [a2 data];
            [v37 getBytes:&v74 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            v16 |= (v74 & 0x7F) << v33;
            if ((v74 & 0x80) == 0)
            {
LABEL_124:
              v22 = &OBJC_IVAR___AWDCountersIpv6S__txDelaymax;
              goto LABEL_133;
            }
          }

          else
          {
            [a2 _setError];
            v16 |= (v74 & 0x7F) << v33;
            if ((v74 & 0x80) == 0)
            {
              goto LABEL_124;
            }
          }

          v33 += 7;
          v20 = v34++ > 8;
          if (v20)
          {
            v21 = 0;
            v22 = &OBJC_IVAR___AWDCountersIpv6S__txDelaymax;
            goto LABEL_136;
          }
        }
      }
    }

    else
    {
      switch(v13)
      {
        case 8:
          v53 = 0;
          v54 = 0;
          v16 = 0;
          *(a1 + 48) |= 0x10u;
          while (1)
          {
            v73 = 0;
            v55 = [a2 position] + 1;
            if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
            {
              v57 = [a2 data];
              [v57 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v16 |= (v73 & 0x7F) << v53;
              if ((v73 & 0x80) == 0)
              {
LABEL_128:
                v22 = &OBJC_IVAR___AWDCountersIpv6S__txDelayavg;
                goto LABEL_133;
              }
            }

            else
            {
              [a2 _setError];
              v16 |= (v73 & 0x7F) << v53;
              if ((v73 & 0x80) == 0)
              {
                goto LABEL_128;
              }
            }

            v53 += 7;
            v20 = v54++ > 8;
            if (v20)
            {
              v21 = 0;
              v22 = &OBJC_IVAR___AWDCountersIpv6S__txDelayavg;
              goto LABEL_136;
            }
          }

        case 9:
          v63 = 0;
          v64 = 0;
          v16 = 0;
          *(a1 + 48) |= 0x200u;
          while (1)
          {
            v72 = 0;
            v65 = [a2 position] + 1;
            if (v65 >= [a2 position] && (v66 = objc_msgSend(a2, "position") + 1, v66 <= objc_msgSend(a2, "length")))
            {
              v67 = [a2 data];
              [v67 getBytes:&v72 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v16 |= (v72 & 0x7F) << v63;
              if ((v72 & 0x80) == 0)
              {
LABEL_132:
                v22 = &OBJC_IVAR___AWDCountersIpv6S__txSuccessRate;
                goto LABEL_133;
              }
            }

            else
            {
              [a2 _setError];
              v16 |= (v72 & 0x7F) << v63;
              if ((v72 & 0x80) == 0)
              {
                goto LABEL_132;
              }
            }

            v63 += 7;
            v20 = v64++ > 8;
            if (v20)
            {
              v21 = 0;
              v22 = &OBJC_IVAR___AWDCountersIpv6S__txSuccessRate;
              goto LABEL_136;
            }
          }

        case 0xA:
          v23 = 0;
          v24 = 0;
          v16 = 0;
          *(a1 + 48) |= 4u;
          while (1)
          {
            v71 = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:&v71 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v16 |= (v71 & 0x7F) << v23;
              if ((v71 & 0x80) == 0)
              {
LABEL_130:
                v22 = &OBJC_IVAR___AWDCountersIpv6S__rxSuccessRate;
                goto LABEL_133;
              }
            }

            else
            {
              [a2 _setError];
              v16 |= (v71 & 0x7F) << v23;
              if ((v71 & 0x80) == 0)
              {
                goto LABEL_130;
              }
            }

            v23 += 7;
            v20 = v24++ > 8;
            if (v20)
            {
              v21 = 0;
              v22 = &OBJC_IVAR___AWDCountersIpv6S__rxSuccessRate;
              goto LABEL_136;
            }
          }
      }
    }
  }

  else if (v13 <= 2)
  {
    if (v13 == 1)
    {
      v38 = 0;
      v39 = 0;
      v16 = 0;
      *(a1 + 48) |= 0x100u;
      while (1)
      {
        v80 = 0;
        v40 = [a2 position] + 1;
        if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
        {
          v42 = [a2 data];
          [v42 getBytes:&v80 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          v16 |= (v80 & 0x7F) << v38;
          if ((v80 & 0x80) == 0)
          {
LABEL_125:
            v22 = &OBJC_IVAR___AWDCountersIpv6S__txSuccess;
            goto LABEL_133;
          }
        }

        else
        {
          [a2 _setError];
          v16 |= (v80 & 0x7F) << v38;
          if ((v80 & 0x80) == 0)
          {
            goto LABEL_125;
          }
        }

        v38 += 7;
        v20 = v39++ > 8;
        if (v20)
        {
          v21 = 0;
          v22 = &OBJC_IVAR___AWDCountersIpv6S__txSuccess;
          goto LABEL_136;
        }
      }
    }

    if (v13 == 2)
    {
      v28 = 0;
      v29 = 0;
      v16 = 0;
      *(a1 + 48) |= 0x80u;
      while (1)
      {
        v79 = 0;
        v30 = [a2 position] + 1;
        if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
        {
          v32 = [a2 data];
          [v32 getBytes:&v79 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          v16 |= (v79 & 0x7F) << v28;
          if ((v79 & 0x80) == 0)
          {
LABEL_123:
            v22 = &OBJC_IVAR___AWDCountersIpv6S__txFailure;
LABEL_133:
            if ([a2 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v16;
            }

LABEL_136:
            *(a1 + *v22) = v21;
LABEL_137:
            v68 = [a2 position];
            if (v68 >= [a2 length])
            {
              return [a2 hasError] ^ 1;
            }

            goto LABEL_2;
          }
        }

        else
        {
          [a2 _setError];
          v16 |= (v79 & 0x7F) << v28;
          if ((v79 & 0x80) == 0)
          {
            goto LABEL_123;
          }
        }

        v28 += 7;
        v20 = v29++ > 8;
        if (v20)
        {
          v21 = 0;
          v22 = &OBJC_IVAR___AWDCountersIpv6S__txFailure;
          goto LABEL_136;
        }
      }
    }
  }

  else
  {
    switch(v13)
    {
      case 3:
        v48 = 0;
        v49 = 0;
        v16 = 0;
        *(a1 + 48) |= 2u;
        while (1)
        {
          v78 = 0;
          v50 = [a2 position] + 1;
          if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
          {
            v52 = [a2 data];
            [v52 getBytes:&v78 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            v16 |= (v78 & 0x7F) << v48;
            if ((v78 & 0x80) == 0)
            {
LABEL_127:
              v22 = &OBJC_IVAR___AWDCountersIpv6S__rxSuccess;
              goto LABEL_133;
            }
          }

          else
          {
            [a2 _setError];
            v16 |= (v78 & 0x7F) << v48;
            if ((v78 & 0x80) == 0)
            {
              goto LABEL_127;
            }
          }

          v48 += 7;
          v20 = v49++ > 8;
          if (v20)
          {
            v21 = 0;
            v22 = &OBJC_IVAR___AWDCountersIpv6S__rxSuccess;
            goto LABEL_136;
          }
        }

      case 4:
        v58 = 0;
        v59 = 0;
        v16 = 0;
        *(a1 + 48) |= 1u;
        do
        {
          v77 = 0;
          v60 = [a2 position] + 1;
          if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
          {
            v62 = [a2 data];
            [v62 getBytes:&v77 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            v16 |= (v77 & 0x7F) << v58;
            if ((v77 & 0x80) == 0)
            {
LABEL_131:
              v22 = &OBJC_IVAR___AWDCountersIpv6S__rxFailure;
              goto LABEL_133;
            }
          }

          else
          {
            [a2 _setError];
            v16 |= (v77 & 0x7F) << v58;
            if ((v77 & 0x80) == 0)
            {
              goto LABEL_131;
            }
          }

          v58 += 7;
          v20 = v59++ > 8;
        }

        while (!v20);
        v21 = 0;
        v22 = &OBJC_IVAR___AWDCountersIpv6S__rxFailure;
        goto LABEL_136;
      case 5:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 48) |= 8u;
        while (1)
        {
          v76 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v76 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            v16 |= (v76 & 0x7F) << v14;
            if ((v76 & 0x80) == 0)
            {
LABEL_129:
              v22 = &OBJC_IVAR___AWDCountersIpv6S__txAppPktSucess;
              goto LABEL_133;
            }
          }

          else
          {
            [a2 _setError];
            v16 |= (v76 & 0x7F) << v14;
            if ((v76 & 0x80) == 0)
            {
              goto LABEL_129;
            }
          }

          v14 += 7;
          v20 = v15++ > 8;
          if (v20)
          {
            v21 = 0;
            v22 = &OBJC_IVAR___AWDCountersIpv6S__txAppPktSucess;
            goto LABEL_136;
          }
        }
    }
  }

  if (PBReaderSkipValueWithTag())
  {
    goto LABEL_137;
  }

  return 0;
}

uint64_t AWDCountersJoinerSReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (1)
  {
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    do
    {
      LOBYTE(v79) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position])
      {
        v10 = [a2 position] + 1;
        if (v10 <= [a2 length])
        {
          v11 = [a2 data];
          [v11 getBytes:&v79 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          v8 |= (v79 & 0x7F) << v6;
          if ((v79 & 0x80) != 0)
          {
            goto LABEL_12;
          }

LABEL_16:
          if ([a2 hasError])
          {
            v13 = 0;
          }

          else
          {
            v13 = v8;
          }

          if (([a2 hasError] & 1) == 0)
          {
            goto LABEL_20;
          }

          return [a2 hasError] ^ 1;
        }
      }

      [a2 _setError];
      v8 |= (v79 & 0x7F) << v6;
      if ((v79 & 0x80) == 0)
      {
        goto LABEL_16;
      }

LABEL_12:
      v6 += 7;
      v12 = v7++ >= 9;
    }

    while (!v12);
    v13 = 0;
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

LABEL_20:
    v14 = v13 & 7;
    if (v14 == 4)
    {
      return [a2 hasError] ^ 1;
    }

    v15 = v13 >> 3;
    if ((v13 >> 3) > 3)
    {
      break;
    }

    if (v15 == 1)
    {
      *(a1 + 112) |= 2u;
      LODWORD(v79) = 0;
      v31 = [a2 position] + 4;
      if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 4, v32 <= objc_msgSend(a2, "length")))
      {
        v78 = [a2 data];
        [v78 getBytes:&v79 range:{objc_msgSend(a2, "position"), 4}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
      }

      else
      {
        [a2 _setError];
      }

      *(a1 + 108) = v79;
      goto LABEL_4;
    }

    if (v15 != 2)
    {
      if (v15 == 3)
      {
        if (v14 != 2)
        {
          v60 = 0;
          v61 = 0;
          v62 = 0;
          do
          {
            LOBYTE(v79) = 0;
            v63 = [a2 position] + 1;
            if (v63 >= [a2 position] && (v64 = objc_msgSend(a2, "position") + 1, v64 <= objc_msgSend(a2, "length")))
            {
              v65 = [a2 data];
              [v65 getBytes:&v79 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v62 |= (v79 & 0x7F) << v60;
              if ((v79 & 0x80) == 0)
              {
                goto LABEL_146;
              }
            }

            else
            {
              [a2 _setError];
              v62 |= (v79 & 0x7F) << v60;
              if ((v79 & 0x80) == 0)
              {
                goto LABEL_146;
              }
            }

            v60 += 7;
            v12 = v61++ >= 9;
          }

          while (!v12);
          goto LABEL_147;
        }

        v79 = 0;
        v80 = 0;
        result = PBReaderPlaceMark();
        if (result)
        {
LABEL_36:
          v17 = [a2 position];
          if (v17 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            goto LABEL_3;
          }

          v18 = 0;
          v19 = 0;
          v20 = 0;
          while (1)
          {
            v81 = 0;
            v21 = [a2 position] + 1;
            if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
            {
              v23 = [a2 data];
              [v23 getBytes:&v81 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v20 |= (v81 & 0x7F) << v18;
              if ((v81 & 0x80) == 0)
              {
LABEL_34:
                [a2 hasError];
LABEL_35:
                PBRepeatedUInt32Add();
                goto LABEL_36;
              }
            }

            else
            {
              [a2 _setError];
              v20 |= (v81 & 0x7F) << v18;
              if ((v81 & 0x80) == 0)
              {
                goto LABEL_34;
              }
            }

            v18 += 7;
            v12 = v19++ >= 9;
            if (v12)
            {
              goto LABEL_35;
            }
          }
        }

        return result;
      }

LABEL_79:
      if (PBReaderSkipValueWithTag())
      {
        goto LABEL_4;
      }

      return 0;
    }

    v40 = 0;
    v41 = 0;
    v42 = 0;
    *(a1 + 112) |= 1u;
    while (2)
    {
      LOBYTE(v79) = 0;
      v43 = [a2 position] + 1;
      if (v43 < [a2 position] || (v44 = objc_msgSend(a2, "position") + 1, v44 > objc_msgSend(a2, "length")))
      {
        [a2 _setError];
        v42 |= (v79 & 0x7F) << v40;
        if ((v79 & 0x80) == 0)
        {
          break;
        }

        goto LABEL_87;
      }

      v45 = [a2 data];
      [v45 getBytes:&v79 range:{objc_msgSend(a2, "position"), 1}];

      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      v42 |= (v79 & 0x7F) << v40;
      if ((v79 & 0x80) != 0)
      {
LABEL_87:
        v40 += 7;
        v12 = v41++ >= 9;
        if (v12)
        {
          v46 = 0;
          goto LABEL_109;
        }

        continue;
      }

      break;
    }

    if ([a2 hasError])
    {
      v46 = 0;
    }

    else
    {
      v46 = v42;
    }

LABEL_109:
    *(a1 + 104) = v46;
LABEL_4:
    v5 = [a2 position];
    if (v5 >= [a2 length])
    {
      return [a2 hasError] ^ 1;
    }
  }

  if (v15 != 4)
  {
    if (v15 == 5)
    {
      if (v14 == 2)
      {
        v79 = 0;
        v80 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

LABEL_95:
        v47 = [a2 position];
        if (v47 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
        {
          goto LABEL_3;
        }

        v48 = 0;
        v49 = 0;
        v50 = 0;
        while (1)
        {
          v81 = 0;
          v51 = [a2 position] + 1;
          if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
          {
            v53 = [a2 data];
            [v53 getBytes:&v81 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            v50 |= (v81 & 0x7F) << v48;
            if ((v81 & 0x80) == 0)
            {
LABEL_93:
              [a2 hasError];
LABEL_94:
              PBRepeatedUInt32Add();
              goto LABEL_95;
            }
          }

          else
          {
            [a2 _setError];
            v50 |= (v81 & 0x7F) << v48;
            if ((v81 & 0x80) == 0)
            {
              goto LABEL_93;
            }
          }

          v48 += 7;
          v12 = v49++ >= 9;
          if (v12)
          {
            goto LABEL_94;
          }
        }
      }

      v72 = 0;
      v73 = 0;
      v74 = 0;
      do
      {
        LOBYTE(v79) = 0;
        v75 = [a2 position] + 1;
        if (v75 >= [a2 position] && (v76 = objc_msgSend(a2, "position") + 1, v76 <= objc_msgSend(a2, "length")))
        {
          v77 = [a2 data];
          [v77 getBytes:&v79 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          v74 |= (v79 & 0x7F) << v72;
          if ((v79 & 0x80) == 0)
          {
            goto LABEL_146;
          }
        }

        else
        {
          [a2 _setError];
          v74 |= (v79 & 0x7F) << v72;
          if ((v79 & 0x80) == 0)
          {
            goto LABEL_146;
          }
        }

        v72 += 7;
        v12 = v73++ >= 9;
      }

      while (!v12);
    }

    else
    {
      if (v15 != 6)
      {
        goto LABEL_79;
      }

      if (v14 == 2)
      {
        v79 = 0;
        v80 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

LABEL_49:
        v24 = [a2 position];
        if (v24 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
        {
          goto LABEL_3;
        }

        v25 = 0;
        v26 = 0;
        v27 = 0;
        while (1)
        {
          v81 = 0;
          v28 = [a2 position] + 1;
          if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
          {
            v30 = [a2 data];
            [v30 getBytes:&v81 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            v27 |= (v81 & 0x7F) << v25;
            if ((v81 & 0x80) == 0)
            {
LABEL_47:
              [a2 hasError];
LABEL_48:
              PBRepeatedUInt32Add();
              goto LABEL_49;
            }
          }

          else
          {
            [a2 _setError];
            v27 |= (v81 & 0x7F) << v25;
            if ((v81 & 0x80) == 0)
            {
              goto LABEL_47;
            }
          }

          v25 += 7;
          v12 = v26++ >= 9;
          if (v12)
          {
            goto LABEL_48;
          }
        }
      }

      v66 = 0;
      v67 = 0;
      v68 = 0;
      do
      {
        LOBYTE(v79) = 0;
        v69 = [a2 position] + 1;
        if (v69 >= [a2 position] && (v70 = objc_msgSend(a2, "position") + 1, v70 <= objc_msgSend(a2, "length")))
        {
          v71 = [a2 data];
          [v71 getBytes:&v79 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          v68 |= (v79 & 0x7F) << v66;
          if ((v79 & 0x80) == 0)
          {
            goto LABEL_146;
          }
        }

        else
        {
          [a2 _setError];
          v68 |= (v79 & 0x7F) << v66;
          if ((v79 & 0x80) == 0)
          {
            goto LABEL_146;
          }
        }

        v66 += 7;
        v12 = v67++ >= 9;
      }

      while (!v12);
    }

LABEL_147:
    PBRepeatedUInt32Add();
    goto LABEL_4;
  }

  if (v14 != 2)
  {
    v54 = 0;
    v55 = 0;
    v56 = 0;
    while (1)
    {
      LOBYTE(v79) = 0;
      v57 = [a2 position] + 1;
      if (v57 >= [a2 position] && (v58 = objc_msgSend(a2, "position") + 1, v58 <= objc_msgSend(a2, "length")))
      {
        v59 = [a2 data];
        [v59 getBytes:&v79 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        v56 |= (v79 & 0x7F) << v54;
        if ((v79 & 0x80) == 0)
        {
LABEL_146:
          [a2 hasError];
          goto LABEL_147;
        }
      }

      else
      {
        [a2 _setError];
        v56 |= (v79 & 0x7F) << v54;
        if ((v79 & 0x80) == 0)
        {
          goto LABEL_146;
        }
      }

      v54 += 7;
      v12 = v55++ >= 9;
      if (v12)
      {
        goto LABEL_147;
      }
    }
  }

  v79 = 0;
  v80 = 0;
  result = PBReaderPlaceMark();
  if (result)
  {
LABEL_68:
    v33 = [a2 position];
    if (v33 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
LABEL_3:
      PBReaderRecallMark();
      goto LABEL_4;
    }

    v34 = 0;
    v35 = 0;
    v36 = 0;
    while (1)
    {
      v81 = 0;
      v37 = [a2 position] + 1;
      if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
      {
        v39 = [a2 data];
        [v39 getBytes:&v81 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        v36 |= (v81 & 0x7F) << v34;
        if ((v81 & 0x80) == 0)
        {
LABEL_66:
          [a2 hasError];
LABEL_67:
          PBRepeatedUInt32Add();
          goto LABEL_68;
        }
      }

      else
      {
        [a2 _setError];
        v36 |= (v81 & 0x7F) << v34;
        if ((v81 & 0x80) == 0)
        {
          goto LABEL_66;
        }
      }

      v34 += 7;
      v12 = v35++ >= 9;
      if (v12)
      {
        goto LABEL_67;
      }
    }
  }

  return result;
}

uint64_t AWDCountersMacRxSReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  v5 = &selRef_setJoinerLatencyHistograms_count_;
  v6 = &selRef_setJoinerLatencyHistograms_count_;
  v7 = &selRef_setJoinerLatencyHistograms_count_;
  v8 = &selRef_setJoinerLatencyHistograms_count_;
LABEL_3:
  if ([a2 hasError])
  {
    return [a2 hasError] ^ 1;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  while (1)
  {
    LOBYTE(v109[0]) = 0;
    v12 = [a2 position] + 1;
    if (v12 >= [a2 position])
    {
      v13 = [a2 position] + 1;
      if (v13 <= [a2 length])
      {
        break;
      }
    }

    [a2 _setError];
    v11 |= (v109[0] & 0x7F) << v9;
    if ((v109[0] & 0x80) == 0)
    {
      goto LABEL_14;
    }

LABEL_10:
    v9 += 7;
    v15 = v10++ >= 9;
    if (v15)
    {
      v16 = 0;
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      goto LABEL_18;
    }
  }

  v14 = [a2 data];
  [v14 getBytes:v109 range:{objc_msgSend(a2, "position"), 1}];

  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
  v11 |= (v109[0] & 0x7F) << v9;
  if ((v109[0] & 0x80) != 0)
  {
    goto LABEL_10;
  }

LABEL_14:
  if ([a2 hasError])
  {
    v16 = 0;
  }

  else
  {
    v16 = v11;
  }

  if ([a2 hasError])
  {
    return [a2 hasError] ^ 1;
  }

LABEL_18:
  if ((v16 & 7) == 4)
  {
    return [a2 hasError] ^ 1;
  }

  switch((v16 >> 3))
  {
    case 1u:
      v17 = 0;
      v18 = 0;
      v19 = 0;
      *(a1 + *(v5 + 779)) |= 0x400u;
      while (1)
      {
        LOBYTE(v109[0]) = 0;
        v20 = [a2 position] + 1;
        if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
        {
          v22 = [a2 data];
          [v22 getBytes:v109 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          v19 |= (v109[0] & 0x7F) << v17;
          if ((v109[0] & 0x80) == 0)
          {
LABEL_170:
            if ([a2 hasError])
            {
              v23 = 0;
            }

            else
            {
              v23 = v19;
            }

            v24 = *(v6 + 780);
            goto LABEL_194;
          }
        }

        else
        {
          [a2 _setError];
          v19 |= (v109[0] & 0x7F) << v17;
          if ((v109[0] & 0x80) == 0)
          {
            goto LABEL_170;
          }
        }

        v17 += 7;
        v15 = v18++ >= 9;
        if (v15)
        {
          v23 = 0;
          v24 = *(v6 + 780);
          goto LABEL_194;
        }
      }

    case 2u:
      v69 = 0;
      v70 = 0;
      v71 = 0;
      *(a1 + *(v5 + 779)) |= 2u;
      while (2)
      {
        LOBYTE(v109[0]) = 0;
        v72 = [a2 position] + 1;
        if (v72 >= [a2 position] && (v73 = objc_msgSend(a2, "position") + 1, v73 <= objc_msgSend(a2, "length")))
        {
          v74 = [a2 data];
          [v74 getBytes:v109 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          v71 |= (v109[0] & 0x7F) << v69;
          if ((v109[0] & 0x80) == 0)
          {
LABEL_174:
            if ([a2 hasError])
            {
              v23 = 0;
            }

            else
            {
              v23 = v71;
            }

            v24 = *(v7 + 781);
            goto LABEL_194;
          }
        }

        else
        {
          [a2 _setError];
          v71 |= (v109[0] & 0x7F) << v69;
          if ((v109[0] & 0x80) == 0)
          {
            goto LABEL_174;
          }
        }

        v69 += 7;
        v15 = v70++ >= 9;
        if (v15)
        {
          v23 = 0;
          v24 = *(v7 + 781);
          goto LABEL_194;
        }

        continue;
      }

    case 3u:
      v51 = 0;
      v52 = 0;
      v53 = 0;
      *(a1 + *(v5 + 779)) |= 0x800u;
      while (2)
      {
        LOBYTE(v109[0]) = 0;
        v54 = [a2 position] + 1;
        if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
        {
          v56 = [a2 data];
          [v56 getBytes:v109 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          v53 |= (v109[0] & 0x7F) << v51;
          if ((v109[0] & 0x80) == 0)
          {
LABEL_158:
            if ([a2 hasError])
            {
              v23 = 0;
            }

            else
            {
              v23 = v53;
            }

            v24 = *(v8 + 782);
            goto LABEL_194;
          }
        }

        else
        {
          [a2 _setError];
          v53 |= (v109[0] & 0x7F) << v51;
          if ((v109[0] & 0x80) == 0)
          {
            goto LABEL_158;
          }
        }

        v51 += 7;
        v15 = v52++ >= 9;
        if (v15)
        {
          v23 = 0;
          v24 = *(v8 + 782);
          goto LABEL_194;
        }

        continue;
      }

    case 4u:
      v57 = 0;
      v58 = 0;
      v59 = 0;
      *(a1 + *(v5 + 779)) |= 1u;
      while (2)
      {
        LOBYTE(v109[0]) = 0;
        v60 = [a2 position] + 1;
        if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
        {
          v62 = [a2 data];
          [v62 getBytes:v109 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          v59 |= (v109[0] & 0x7F) << v57;
          if ((v109[0] & 0x80) == 0)
          {
LABEL_162:
            if ([a2 hasError])
            {
              v23 = 0;
            }

            else
            {
              v23 = v59;
            }

LABEL_165:
            v24 = 32;
            goto LABEL_194;
          }
        }

        else
        {
          [a2 _setError];
          v59 |= (v109[0] & 0x7F) << v57;
          if ((v109[0] & 0x80) == 0)
          {
            goto LABEL_162;
          }
        }

        v57 += 7;
        v15 = v58++ >= 9;
        if (v15)
        {
          v23 = 0;
          goto LABEL_165;
        }

        continue;
      }

    case 5u:
      v33 = 0;
      v34 = 0;
      v35 = 0;
      *(a1 + *(v5 + 779)) |= 8u;
      while (2)
      {
        LOBYTE(v109[0]) = 0;
        v36 = [a2 position] + 1;
        if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
        {
          v38 = [a2 data];
          [v38 getBytes:v109 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          v35 |= (v109[0] & 0x7F) << v33;
          if ((v109[0] & 0x80) == 0)
          {
LABEL_146:
            if ([a2 hasError])
            {
              v23 = 0;
            }

            else
            {
              v23 = v35;
            }

LABEL_149:
            v24 = 44;
            goto LABEL_194;
          }
        }

        else
        {
          [a2 _setError];
          v35 |= (v109[0] & 0x7F) << v33;
          if ((v109[0] & 0x80) == 0)
          {
            goto LABEL_146;
          }
        }

        v33 += 7;
        v15 = v34++ >= 9;
        if (v15)
        {
          v23 = 0;
          goto LABEL_149;
        }

        continue;
      }

    case 6u:
      v75 = 0;
      v76 = 0;
      v77 = 0;
      *(a1 + *(v5 + 779)) |= 0x200u;
      while (2)
      {
        LOBYTE(v109[0]) = 0;
        v78 = [a2 position] + 1;
        if (v78 >= [a2 position] && (v79 = objc_msgSend(a2, "position") + 1, v79 <= objc_msgSend(a2, "length")))
        {
          v80 = [a2 data];
          [v80 getBytes:v109 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          v77 |= (v109[0] & 0x7F) << v75;
          if ((v109[0] & 0x80) == 0)
          {
LABEL_178:
            if ([a2 hasError])
            {
              v23 = 0;
            }

            else
            {
              v23 = v77;
            }

LABEL_181:
            v24 = 68;
            goto LABEL_194;
          }
        }

        else
        {
          [a2 _setError];
          v77 |= (v109[0] & 0x7F) << v75;
          if ((v109[0] & 0x80) == 0)
          {
            goto LABEL_178;
          }
        }

        v75 += 7;
        v15 = v76++ >= 9;
        if (v15)
        {
          v23 = 0;
          goto LABEL_181;
        }

        continue;
      }

    case 7u:
      v81 = 0;
      v82 = 0;
      v83 = 0;
      *(a1 + *(v5 + 779)) |= 0x10u;
      while (2)
      {
        LOBYTE(v109[0]) = 0;
        v84 = [a2 position] + 1;
        if (v84 >= [a2 position] && (v85 = objc_msgSend(a2, "position") + 1, v85 <= objc_msgSend(a2, "length")))
        {
          v86 = [a2 data];
          [v86 getBytes:v109 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          v83 |= (v109[0] & 0x7F) << v81;
          if ((v109[0] & 0x80) == 0)
          {
LABEL_182:
            if ([a2 hasError])
            {
              v23 = 0;
            }

            else
            {
              v23 = v83;
            }

LABEL_185:
            v24 = 48;
            goto LABEL_194;
          }
        }

        else
        {
          [a2 _setError];
          v83 |= (v109[0] & 0x7F) << v81;
          if ((v109[0] & 0x80) == 0)
          {
            goto LABEL_182;
          }
        }

        v81 += 7;
        v15 = v82++ >= 9;
        if (v15)
        {
          v23 = 0;
          goto LABEL_185;
        }

        continue;
      }

    case 8u:
      v63 = 0;
      v64 = 0;
      v65 = 0;
      *(a1 + *(v5 + 779)) |= 0x100u;
      while (2)
      {
        LOBYTE(v109[0]) = 0;
        v66 = [a2 position] + 1;
        if (v66 >= [a2 position] && (v67 = objc_msgSend(a2, "position") + 1, v67 <= objc_msgSend(a2, "length")))
        {
          v68 = [a2 data];
          [v68 getBytes:v109 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          v65 |= (v109[0] & 0x7F) << v63;
          if ((v109[0] & 0x80) == 0)
          {
LABEL_166:
            if ([a2 hasError])
            {
              v23 = 0;
            }

            else
            {
              v23 = v65;
            }

LABEL_169:
            v24 = 64;
            goto LABEL_194;
          }
        }

        else
        {
          [a2 _setError];
          v65 |= (v109[0] & 0x7F) << v63;
          if ((v109[0] & 0x80) == 0)
          {
            goto LABEL_166;
          }
        }

        v63 += 7;
        v15 = v64++ >= 9;
        if (v15)
        {
          v23 = 0;
          goto LABEL_169;
        }

        continue;
      }

    case 9u:
      v93 = 0;
      v94 = 0;
      v95 = 0;
      *(a1 + *(v5 + 779)) |= 0x20u;
      while (2)
      {
        LOBYTE(v109[0]) = 0;
        v96 = [a2 position] + 1;
        if (v96 >= [a2 position] && (v97 = objc_msgSend(a2, "position") + 1, v97 <= objc_msgSend(a2, "length")))
        {
          v98 = [a2 data];
          [v98 getBytes:v109 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          v95 |= (v109[0] & 0x7F) << v93;
          if ((v109[0] & 0x80) == 0)
          {
LABEL_190:
            if ([a2 hasError])
            {
              v23 = 0;
            }

            else
            {
              v23 = v95;
            }

LABEL_193:
            v24 = 52;
            goto LABEL_194;
          }
        }

        else
        {
          [a2 _setError];
          v95 |= (v109[0] & 0x7F) << v93;
          if ((v109[0] & 0x80) == 0)
          {
            goto LABEL_190;
          }
        }

        v93 += 7;
        v15 = v94++ >= 9;
        if (v15)
        {
          v23 = 0;
          goto LABEL_193;
        }

        continue;
      }

    case 0xAu:
      v45 = 0;
      v46 = 0;
      v47 = 0;
      *(a1 + *(v5 + 779)) |= 4u;
      while (2)
      {
        LOBYTE(v109[0]) = 0;
        v48 = [a2 position] + 1;
        if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 1, v49 <= objc_msgSend(a2, "length")))
        {
          v50 = [a2 data];
          [v50 getBytes:v109 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          v47 |= (v109[0] & 0x7F) << v45;
          if ((v109[0] & 0x80) == 0)
          {
LABEL_154:
            if ([a2 hasError])
            {
              v23 = 0;
            }

            else
            {
              v23 = v47;
            }

LABEL_157:
            v24 = 40;
            goto LABEL_194;
          }
        }

        else
        {
          [a2 _setError];
          v47 |= (v109[0] & 0x7F) << v45;
          if ((v109[0] & 0x80) == 0)
          {
            goto LABEL_154;
          }
        }

        v45 += 7;
        v15 = v46++ >= 9;
        if (v15)
        {
          v23 = 0;
          goto LABEL_157;
        }

        continue;
      }

    case 0xBu:
      v87 = 0;
      v88 = 0;
      v89 = 0;
      *(a1 + *(v5 + 779)) |= 0x40u;
      while (2)
      {
        LOBYTE(v109[0]) = 0;
        v90 = [a2 position] + 1;
        if (v90 >= [a2 position] && (v91 = objc_msgSend(a2, "position") + 1, v91 <= objc_msgSend(a2, "length")))
        {
          v92 = [a2 data];
          [v92 getBytes:v109 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          v89 |= (v109[0] & 0x7F) << v87;
          if ((v109[0] & 0x80) == 0)
          {
LABEL_186:
            if ([a2 hasError])
            {
              v23 = 0;
            }

            else
            {
              v23 = v89;
            }

LABEL_189:
            v24 = 56;
            goto LABEL_194;
          }
        }

        else
        {
          [a2 _setError];
          v89 |= (v109[0] & 0x7F) << v87;
          if ((v109[0] & 0x80) == 0)
          {
            goto LABEL_186;
          }
        }

        v87 += 7;
        v15 = v88++ >= 9;
        if (v15)
        {
          v23 = 0;
          goto LABEL_189;
        }

        continue;
      }

    case 0xCu:
      if ((v16 & 7) != 2)
      {
        v100 = v8;
        v101 = v7;
        v102 = v6;
        v103 = 0;
        v104 = 0;
        v105 = 0;
        while (1)
        {
          LOBYTE(v109[0]) = 0;
          v106 = [a2 position] + 1;
          if (v106 >= [a2 position] && (v107 = objc_msgSend(a2, "position") + 1, v107 <= objc_msgSend(a2, "length")))
          {
            v108 = [a2 data];
            [v108 getBytes:v109 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            v105 |= (v109[0] & 0x7F) << v103;
            if ((v109[0] & 0x80) == 0)
            {
LABEL_207:
              [a2 hasError];
LABEL_208:
              PBRepeatedUInt32Add();
              v6 = v102;
              v7 = v101;
              v8 = v100;
              v5 = &selRef_setJoinerLatencyHistograms_count_;
LABEL_195:
              v99 = [a2 position];
              if (v99 >= [a2 length])
              {
                return [a2 hasError] ^ 1;
              }

              goto LABEL_3;
            }
          }

          else
          {
            [a2 _setError];
            v105 |= (v109[0] & 0x7F) << v103;
            if ((v109[0] & 0x80) == 0)
            {
              goto LABEL_207;
            }
          }

          v103 += 7;
          v15 = v104++ >= 9;
          if (v15)
          {
            goto LABEL_208;
          }
        }
      }

      v109[0] = 0;
      v109[1] = 0;
      result = PBReaderPlaceMark();
      if (result)
      {
LABEL_34:
        v26 = [a2 position];
        if (v26 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
        {
          PBReaderRecallMark();
          goto LABEL_195;
        }

        v27 = 0;
        v28 = 0;
        v29 = 0;
        while (1)
        {
          v110 = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:&v110 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            v29 |= (v110 & 0x7F) << v27;
            if ((v110 & 0x80) == 0)
            {
LABEL_32:
              [a2 hasError];
LABEL_33:
              PBRepeatedUInt32Add();
              goto LABEL_34;
            }
          }

          else
          {
            [a2 _setError];
            v29 |= (v110 & 0x7F) << v27;
            if ((v110 & 0x80) == 0)
            {
              goto LABEL_32;
            }
          }

          v27 += 7;
          v15 = v28++ >= 9;
          if (v15)
          {
            goto LABEL_33;
          }
        }
      }

      return result;
    case 0xDu:
      v39 = 0;
      v40 = 0;
      v41 = 0;
      *(a1 + *(v5 + 779)) |= 0x80u;
      while (1)
      {
        LOBYTE(v109[0]) = 0;
        v42 = [a2 position] + 1;
        if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
        {
          v44 = [a2 data];
          [v44 getBytes:v109 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          v41 |= (v109[0] & 0x7F) << v39;
          if ((v109[0] & 0x80) == 0)
          {
LABEL_150:
            if ([a2 hasError])
            {
              v23 = 0;
            }

            else
            {
              v23 = v41;
            }

LABEL_153:
            v24 = 60;
LABEL_194:
            *(a1 + v24) = v23;
            goto LABEL_195;
          }
        }

        else
        {
          [a2 _setError];
          v41 |= (v109[0] & 0x7F) << v39;
          if ((v109[0] & 0x80) == 0)
          {
            goto LABEL_150;
          }
        }

        v39 += 7;
        v15 = v40++ >= 9;
        if (v15)
        {
          v23 = 0;
          goto LABEL_153;
        }
      }

    default:
      if (PBReaderSkipValueWithTag())
      {
        goto LABEL_195;
      }

      return 0;
  }
}

uint64_t AWDCountersMacTxSReadFrom(uint64_t a1, void *a2)
{
  v4 = a2;
LABEL_2:
  while (2)
  {
    v5 = [v4 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      return [a2 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    do
    {
      LOBYTE(v229) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v229 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        v8 |= (v229 & 0x7F) << v6;
        if ((v229 & 0x80) == 0)
        {
LABEL_14:
          if ([a2 hasError])
          {
            v13 = 0;
          }

          else
          {
            v13 = v8;
          }

          if ([a2 hasError])
          {
            return [a2 hasError] ^ 1;
          }

          goto LABEL_18;
        }
      }

      else
      {
        [a2 _setError];
        v8 |= (v229 & 0x7F) << v6;
        if ((v229 & 0x80) == 0)
        {
          goto LABEL_14;
        }
      }

      v6 += 7;
      v12 = v7++ >= 9;
    }

    while (!v12);
    v13 = 0;
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

LABEL_18:
    v14 = v13 & 7;
    if (v14 != 4)
    {
      switch((v13 >> 3))
      {
        case 1u:
          v15 = 0;
          v16 = 0;
          v17 = 0;
          *(a1 + 256) |= 0x40000u;
          while (1)
          {
            LOBYTE(v229) = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v229 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v17 |= (v229 & 0x7F) << v15;
              if ((v229 & 0x80) == 0)
              {
LABEL_343:
                if ([a2 hasError])
                {
                  v21 = 0;
                }

                else
                {
                  v21 = v17;
                }

                goto LABEL_346;
              }
            }

            else
            {
              [a2 _setError];
              v17 |= (v229 & 0x7F) << v15;
              if ((v229 & 0x80) == 0)
              {
                goto LABEL_343;
              }
            }

            v15 += 7;
            v12 = v16++ >= 9;
            if (v12)
            {
              v21 = 0;
LABEL_346:
              v186 = 248;
              goto LABEL_395;
            }
          }

        case 2u:
          v100 = 0;
          v101 = 0;
          v102 = 0;
          *(a1 + 256) |= 0x100u;
LABEL_173:
          LOBYTE(v229) = 0;
          v103 = [a2 position] + 1;
          if (v103 >= [a2 position] && (v104 = objc_msgSend(a2, "position") + 1, v104 <= objc_msgSend(a2, "length")))
          {
            v105 = [a2 data];
            [v105 getBytes:&v229 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            v102 |= (v229 & 0x7F) << v100;
            if ((v229 & 0x80) == 0)
            {
              goto LABEL_347;
            }
          }

          else
          {
            [a2 _setError];
            v102 |= (v229 & 0x7F) << v100;
            if ((v229 & 0x80) == 0)
            {
LABEL_347:
              if ([a2 hasError])
              {
                v21 = 0;
              }

              else
              {
                v21 = v102;
              }

LABEL_350:
              v186 = 208;
LABEL_395:
              *(a1 + v186) = v21;
LABEL_396:
              v4 = a2;
              continue;
            }
          }

          v100 += 7;
          v12 = v101++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_350;
          }

          goto LABEL_173;
        case 3u:
          v75 = 0;
          v76 = 0;
          v77 = 0;
          *(a1 + 256) |= 0x80000u;
          while (2)
          {
            LOBYTE(v229) = 0;
            v78 = [a2 position] + 1;
            if (v78 >= [a2 position] && (v79 = objc_msgSend(a2, "position") + 1, v79 <= objc_msgSend(a2, "length")))
            {
              v80 = [a2 data];
              [v80 getBytes:&v229 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v77 |= (v229 & 0x7F) << v75;
              if ((v229 & 0x80) == 0)
              {
                goto LABEL_331;
              }
            }

            else
            {
              [a2 _setError];
              v77 |= (v229 & 0x7F) << v75;
              if ((v229 & 0x80) == 0)
              {
LABEL_331:
                if ([a2 hasError])
                {
                  v21 = 0;
                }

                else
                {
                  v21 = v77;
                }

LABEL_334:
                v186 = 252;
                goto LABEL_395;
              }
            }

            v75 += 7;
            v12 = v76++ >= 9;
            if (v12)
            {
              v21 = 0;
              goto LABEL_334;
            }

            continue;
          }

        case 4u:
          v88 = 0;
          v89 = 0;
          v90 = 0;
          *(a1 + 256) |= 0x80u;
          while (2)
          {
            LOBYTE(v229) = 0;
            v91 = [a2 position] + 1;
            if (v91 >= [a2 position] && (v92 = objc_msgSend(a2, "position") + 1, v92 <= objc_msgSend(a2, "length")))
            {
              v93 = [a2 data];
              [v93 getBytes:&v229 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v90 |= (v229 & 0x7F) << v88;
              if ((v229 & 0x80) == 0)
              {
                goto LABEL_335;
              }
            }

            else
            {
              [a2 _setError];
              v90 |= (v229 & 0x7F) << v88;
              if ((v229 & 0x80) == 0)
              {
LABEL_335:
                if ([a2 hasError])
                {
                  v21 = 0;
                }

                else
                {
                  v21 = v90;
                }

LABEL_338:
                v186 = 204;
                goto LABEL_395;
              }
            }

            v88 += 7;
            v12 = v89++ >= 9;
            if (v12)
            {
              v21 = 0;
              goto LABEL_338;
            }

            continue;
          }

        case 5u:
          v43 = 0;
          v44 = 0;
          v45 = 0;
          *(a1 + 256) |= 0x4000u;
          while (2)
          {
            LOBYTE(v229) = 0;
            v46 = [a2 position] + 1;
            if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
            {
              v48 = [a2 data];
              [v48 getBytes:&v229 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v45 |= (v229 & 0x7F) << v43;
              if ((v229 & 0x80) == 0)
              {
                goto LABEL_319;
              }
            }

            else
            {
              [a2 _setError];
              v45 |= (v229 & 0x7F) << v43;
              if ((v229 & 0x80) == 0)
              {
LABEL_319:
                if ([a2 hasError])
                {
                  v21 = 0;
                }

                else
                {
                  v21 = v45;
                }

LABEL_322:
                v186 = 232;
                goto LABEL_395;
              }
            }

            v43 += 7;
            v12 = v44++ >= 9;
            if (v12)
            {
              v21 = 0;
              goto LABEL_322;
            }

            continue;
          }

        case 6u:
          v118 = 0;
          v119 = 0;
          v120 = 0;
          *(a1 + 256) |= 0x400u;
          while (2)
          {
            LOBYTE(v229) = 0;
            v121 = [a2 position] + 1;
            if (v121 >= [a2 position] && (v122 = objc_msgSend(a2, "position") + 1, v122 <= objc_msgSend(a2, "length")))
            {
              v123 = [a2 data];
              [v123 getBytes:&v229 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v120 |= (v229 & 0x7F) << v118;
              if ((v229 & 0x80) == 0)
              {
                goto LABEL_359;
              }
            }

            else
            {
              [a2 _setError];
              v120 |= (v229 & 0x7F) << v118;
              if ((v229 & 0x80) == 0)
              {
LABEL_359:
                if ([a2 hasError])
                {
                  v21 = 0;
                }

                else
                {
                  v21 = v120;
                }

LABEL_362:
                v186 = 216;
                goto LABEL_395;
              }
            }

            v118 += 7;
            v12 = v119++ >= 9;
            if (v12)
            {
              v21 = 0;
              goto LABEL_362;
            }

            continue;
          }

        case 7u:
          v137 = 0;
          v138 = 0;
          v139 = 0;
          *(a1 + 256) |= 0x1000u;
          while (2)
          {
            LOBYTE(v229) = 0;
            v140 = [a2 position] + 1;
            if (v140 >= [a2 position] && (v141 = objc_msgSend(a2, "position") + 1, v141 <= objc_msgSend(a2, "length")))
            {
              v142 = [a2 data];
              [v142 getBytes:&v229 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v139 |= (v229 & 0x7F) << v137;
              if ((v229 & 0x80) == 0)
              {
                goto LABEL_367;
              }
            }

            else
            {
              [a2 _setError];
              v139 |= (v229 & 0x7F) << v137;
              if ((v229 & 0x80) == 0)
              {
LABEL_367:
                if ([a2 hasError])
                {
                  v21 = 0;
                }

                else
                {
                  v21 = v139;
                }

LABEL_370:
                v186 = 224;
                goto LABEL_395;
              }
            }

            v137 += 7;
            v12 = v138++ >= 9;
            if (v12)
            {
              v21 = 0;
              goto LABEL_370;
            }

            continue;
          }

        case 8u:
          v94 = 0;
          v95 = 0;
          v96 = 0;
          *(a1 + 256) |= 0x200u;
          while (2)
          {
            LOBYTE(v229) = 0;
            v97 = [a2 position] + 1;
            if (v97 >= [a2 position] && (v98 = objc_msgSend(a2, "position") + 1, v98 <= objc_msgSend(a2, "length")))
            {
              v99 = [a2 data];
              [v99 getBytes:&v229 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v96 |= (v229 & 0x7F) << v94;
              if ((v229 & 0x80) == 0)
              {
                goto LABEL_339;
              }
            }

            else
            {
              [a2 _setError];
              v96 |= (v229 & 0x7F) << v94;
              if ((v229 & 0x80) == 0)
              {
LABEL_339:
                if ([a2 hasError])
                {
                  v21 = 0;
                }

                else
                {
                  v21 = v96;
                }

LABEL_342:
                v186 = 212;
                goto LABEL_395;
              }
            }

            v94 += 7;
            v12 = v95++ >= 9;
            if (v12)
            {
              v21 = 0;
              goto LABEL_342;
            }

            continue;
          }

        case 9u:
          v156 = 0;
          v157 = 0;
          v158 = 0;
          *(a1 + 256) |= 0x20000u;
          while (2)
          {
            LOBYTE(v229) = 0;
            v159 = [a2 position] + 1;
            if (v159 >= [a2 position] && (v160 = objc_msgSend(a2, "position") + 1, v160 <= objc_msgSend(a2, "length")))
            {
              v161 = [a2 data];
              [v161 getBytes:&v229 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v158 |= (v229 & 0x7F) << v156;
              if ((v229 & 0x80) == 0)
              {
                goto LABEL_375;
              }
            }

            else
            {
              [a2 _setError];
              v158 |= (v229 & 0x7F) << v156;
              if ((v229 & 0x80) == 0)
              {
LABEL_375:
                if ([a2 hasError])
                {
                  v21 = 0;
                }

                else
                {
                  v21 = v158;
                }

LABEL_378:
                v186 = 244;
                goto LABEL_395;
              }
            }

            v156 += 7;
            v12 = v157++ >= 9;
            if (v12)
            {
              v21 = 0;
              goto LABEL_378;
            }

            continue;
          }

        case 0xAu:
          if (v14 != 2)
          {
            v205 = 0;
            v206 = 0;
            v207 = 0;
            do
            {
              LOBYTE(v229) = 0;
              v208 = [a2 position] + 1;
              if (v208 >= [a2 position] && (v209 = objc_msgSend(a2, "position") + 1, v209 <= objc_msgSend(a2, "length")))
              {
                v210 = [a2 data];
                [v210 getBytes:&v229 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                v207 |= (v229 & 0x7F) << v205;
                if ((v229 & 0x80) == 0)
                {
                  goto LABEL_460;
                }
              }

              else
              {
                [a2 _setError];
                v207 |= (v229 & 0x7F) << v205;
                if ((v229 & 0x80) == 0)
                {
                  goto LABEL_460;
                }
              }

              v205 += 7;
              v12 = v206++ >= 9;
            }

            while (!v12);
            goto LABEL_461;
          }

          v229 = 0;
          v230 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

LABEL_100:
          v56 = [a2 position];
          if (v56 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            goto LABEL_267;
          }

          v57 = 0;
          v58 = 0;
          v59 = 0;
          while (1)
          {
            v231 = 0;
            v60 = [a2 position] + 1;
            if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
            {
              v62 = [a2 data];
              [v62 getBytes:&v231 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v59 |= (v231 & 0x7F) << v57;
              if ((v231 & 0x80) == 0)
              {
LABEL_98:
                [a2 hasError];
LABEL_99:
                PBRepeatedUInt32Add();
                goto LABEL_100;
              }
            }

            else
            {
              [a2 _setError];
              v59 |= (v231 & 0x7F) << v57;
              if ((v231 & 0x80) == 0)
              {
                goto LABEL_98;
              }
            }

            v57 += 7;
            v12 = v58++ >= 9;
            if (v12)
            {
              goto LABEL_99;
            }
          }

        case 0xBu:
          if (v14 != 2)
          {
            v223 = 0;
            v224 = 0;
            v225 = 0;
            do
            {
              LOBYTE(v229) = 0;
              v226 = [a2 position] + 1;
              if (v226 >= [a2 position] && (v227 = objc_msgSend(a2, "position") + 1, v227 <= objc_msgSend(a2, "length")))
              {
                v228 = [a2 data];
                [v228 getBytes:&v229 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                v225 |= (v229 & 0x7F) << v223;
                if ((v229 & 0x80) == 0)
                {
                  goto LABEL_460;
                }
              }

              else
              {
                [a2 _setError];
                v225 |= (v229 & 0x7F) << v223;
                if ((v229 & 0x80) == 0)
                {
                  goto LABEL_460;
                }
              }

              v223 += 7;
              v12 = v224++ >= 9;
            }

            while (!v12);
            goto LABEL_461;
          }

          v229 = 0;
          v230 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

LABEL_256:
          v149 = [a2 position];
          if (v149 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            goto LABEL_267;
          }

          v150 = 0;
          v151 = 0;
          v152 = 0;
          while (1)
          {
            v231 = 0;
            v153 = [a2 position] + 1;
            if (v153 >= [a2 position] && (v154 = objc_msgSend(a2, "position") + 1, v154 <= objc_msgSend(a2, "length")))
            {
              v155 = [a2 data];
              [v155 getBytes:&v231 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v152 |= (v231 & 0x7F) << v150;
              if ((v231 & 0x80) == 0)
              {
LABEL_254:
                [a2 hasError];
LABEL_255:
                PBRepeatedUInt32Add();
                goto LABEL_256;
              }
            }

            else
            {
              [a2 _setError];
              v152 |= (v231 & 0x7F) << v150;
              if ((v231 & 0x80) == 0)
              {
                goto LABEL_254;
              }
            }

            v150 += 7;
            v12 = v151++ >= 9;
            if (v12)
            {
              goto LABEL_255;
            }
          }

        case 0xCu:
          if (v14 != 2)
          {
            v193 = 0;
            v194 = 0;
            v195 = 0;
            do
            {
              LOBYTE(v229) = 0;
              v196 = [a2 position] + 1;
              if (v196 >= [a2 position] && (v197 = objc_msgSend(a2, "position") + 1, v197 <= objc_msgSend(a2, "length")))
              {
                v198 = [a2 data];
                [v198 getBytes:&v229 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                v195 |= (v229 & 0x7F) << v193;
                if ((v229 & 0x80) == 0)
                {
                  goto LABEL_460;
                }
              }

              else
              {
                [a2 _setError];
                v195 |= (v229 & 0x7F) << v193;
                if ((v229 & 0x80) == 0)
                {
                  goto LABEL_460;
                }
              }

              v193 += 7;
              v12 = v194++ >= 9;
            }

            while (!v12);
            goto LABEL_461;
          }

          v229 = 0;
          v230 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

LABEL_59:
          v36 = [a2 position];
          if (v36 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            goto LABEL_267;
          }

          v37 = 0;
          v38 = 0;
          v39 = 0;
          while (1)
          {
            v231 = 0;
            v40 = [a2 position] + 1;
            if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
            {
              v42 = [a2 data];
              [v42 getBytes:&v231 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v39 |= (v231 & 0x7F) << v37;
              if ((v231 & 0x80) == 0)
              {
LABEL_57:
                [a2 hasError];
LABEL_58:
                PBRepeatedUInt32Add();
                goto LABEL_59;
              }
            }

            else
            {
              [a2 _setError];
              v39 |= (v231 & 0x7F) << v37;
              if ((v231 & 0x80) == 0)
              {
                goto LABEL_57;
              }
            }

            v37 += 7;
            v12 = v38++ >= 9;
            if (v12)
            {
              goto LABEL_58;
            }
          }

        case 0xDu:
          if (v14 != 2)
          {
            v199 = 0;
            v200 = 0;
            v201 = 0;
            do
            {
              LOBYTE(v229) = 0;
              v202 = [a2 position] + 1;
              if (v202 >= [a2 position] && (v203 = objc_msgSend(a2, "position") + 1, v203 <= objc_msgSend(a2, "length")))
              {
                v204 = [a2 data];
                [v204 getBytes:&v229 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                v201 |= (v229 & 0x7F) << v199;
                if ((v229 & 0x80) == 0)
                {
                  goto LABEL_460;
                }
              }

              else
              {
                [a2 _setError];
                v201 |= (v229 & 0x7F) << v199;
                if ((v229 & 0x80) == 0)
                {
                  goto LABEL_460;
                }
              }

              v199 += 7;
              v12 = v200++ >= 9;
            }

            while (!v12);
            goto LABEL_461;
          }

          v229 = 0;
          v230 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

LABEL_84:
          v49 = [a2 position];
          if (v49 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            goto LABEL_267;
          }

          v50 = 0;
          v51 = 0;
          v52 = 0;
          while (1)
          {
            v231 = 0;
            v53 = [a2 position] + 1;
            if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
            {
              v55 = [a2 data];
              [v55 getBytes:&v231 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v52 |= (v231 & 0x7F) << v50;
              if ((v231 & 0x80) == 0)
              {
LABEL_82:
                [a2 hasError];
LABEL_83:
                PBRepeatedUInt32Add();
                goto LABEL_84;
              }
            }

            else
            {
              [a2 _setError];
              v52 |= (v231 & 0x7F) << v50;
              if ((v231 & 0x80) == 0)
              {
                goto LABEL_82;
              }
            }

            v50 += 7;
            v12 = v51++ >= 9;
            if (v12)
            {
              goto LABEL_83;
            }
          }

        case 0xEu:
          if (v14 != 2)
          {
            v217 = 0;
            v218 = 0;
            v219 = 0;
            do
            {
              LOBYTE(v229) = 0;
              v220 = [a2 position] + 1;
              if (v220 >= [a2 position] && (v221 = objc_msgSend(a2, "position") + 1, v221 <= objc_msgSend(a2, "length")))
              {
                v222 = [a2 data];
                [v222 getBytes:&v229 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                v219 |= (v229 & 0x7F) << v217;
                if ((v229 & 0x80) == 0)
                {
                  goto LABEL_460;
                }
              }

              else
              {
                [a2 _setError];
                v219 |= (v229 & 0x7F) << v217;
                if ((v229 & 0x80) == 0)
                {
                  goto LABEL_460;
                }
              }

              v217 += 7;
              v12 = v218++ >= 9;
            }

            while (!v12);
            goto LABEL_461;
          }

          v229 = 0;
          v230 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

LABEL_222:
          v130 = [a2 position];
          if (v130 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            goto LABEL_267;
          }

          v131 = 0;
          v132 = 0;
          v133 = 0;
          while (1)
          {
            v231 = 0;
            v134 = [a2 position] + 1;
            if (v134 >= [a2 position] && (v135 = objc_msgSend(a2, "position") + 1, v135 <= objc_msgSend(a2, "length")))
            {
              v136 = [a2 data];
              [v136 getBytes:&v231 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v133 |= (v231 & 0x7F) << v131;
              if ((v231 & 0x80) == 0)
              {
LABEL_220:
                [a2 hasError];
LABEL_221:
                PBRepeatedUInt32Add();
                goto LABEL_222;
              }
            }

            else
            {
              [a2 _setError];
              v133 |= (v231 & 0x7F) << v131;
              if ((v231 & 0x80) == 0)
              {
                goto LABEL_220;
              }
            }

            v131 += 7;
            v12 = v132++ >= 9;
            if (v12)
            {
              goto LABEL_221;
            }
          }

        case 0xFu:
          if (v14 != 2)
          {
            v187 = 0;
            v188 = 0;
            v189 = 0;
            do
            {
              LOBYTE(v229) = 0;
              v190 = [a2 position] + 1;
              if (v190 >= [a2 position] && (v191 = objc_msgSend(a2, "position") + 1, v191 <= objc_msgSend(a2, "length")))
              {
                v192 = [a2 data];
                [v192 getBytes:&v229 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                v189 |= (v229 & 0x7F) << v187;
                if ((v229 & 0x80) == 0)
                {
                  goto LABEL_460;
                }
              }

              else
              {
                [a2 _setError];
                v189 |= (v229 & 0x7F) << v187;
                if ((v229 & 0x80) == 0)
                {
                  goto LABEL_460;
                }
              }

              v187 += 7;
              v12 = v188++ >= 9;
            }

            while (!v12);
            goto LABEL_461;
          }

          v229 = 0;
          v230 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

LABEL_43:
          v29 = [a2 position];
          if (v29 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            goto LABEL_267;
          }

          v30 = 0;
          v31 = 0;
          v32 = 0;
          while (1)
          {
            v231 = 0;
            v33 = [a2 position] + 1;
            if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
            {
              v35 = [a2 data];
              [v35 getBytes:&v231 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v32 |= (v231 & 0x7F) << v30;
              if ((v231 & 0x80) == 0)
              {
LABEL_41:
                [a2 hasError];
LABEL_42:
                PBRepeatedUInt32Add();
                goto LABEL_43;
              }
            }

            else
            {
              [a2 _setError];
              v32 |= (v231 & 0x7F) << v30;
              if ((v231 & 0x80) == 0)
              {
                goto LABEL_41;
              }
            }

            v30 += 7;
            v12 = v31++ >= 9;
            if (v12)
            {
              goto LABEL_42;
            }
          }

        case 0x10u:
          if (v14 != 2)
          {
            v211 = 0;
            v212 = 0;
            v213 = 0;
            while (1)
            {
              LOBYTE(v229) = 0;
              v214 = [a2 position] + 1;
              if (v214 >= [a2 position] && (v215 = objc_msgSend(a2, "position") + 1, v215 <= objc_msgSend(a2, "length")))
              {
                v216 = [a2 data];
                [v216 getBytes:&v229 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                v213 |= (v229 & 0x7F) << v211;
                if ((v229 & 0x80) == 0)
                {
LABEL_460:
                  [a2 hasError];
LABEL_461:
                  PBRepeatedUInt32Add();
                  v4 = a2;
                  goto LABEL_2;
                }
              }

              else
              {
                [a2 _setError];
                v213 |= (v229 & 0x7F) << v211;
                if ((v229 & 0x80) == 0)
                {
                  goto LABEL_460;
                }
              }

              v211 += 7;
              v12 = v212++ >= 9;
              if (v12)
              {
                goto LABEL_461;
              }
            }
          }

          v229 = 0;
          v230 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

LABEL_143:
          v81 = [a2 position];
          if (v81 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
LABEL_267:
            PBReaderRecallMark();
            v4 = a2;
            continue;
          }

          v82 = 0;
          v83 = 0;
          v84 = 0;
          while (1)
          {
            v231 = 0;
            v85 = [a2 position] + 1;
            if (v85 >= [a2 position] && (v86 = objc_msgSend(a2, "position") + 1, v86 <= objc_msgSend(a2, "length")))
            {
              v87 = [a2 data];
              [v87 getBytes:&v231 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v84 |= (v231 & 0x7F) << v82;
              if ((v231 & 0x80) == 0)
              {
LABEL_141:
                [a2 hasError];
LABEL_142:
                PBRepeatedUInt32Add();
                goto LABEL_143;
              }
            }

            else
            {
              [a2 _setError];
              v84 |= (v231 & 0x7F) << v82;
              if ((v231 & 0x80) == 0)
              {
                goto LABEL_141;
              }
            }

            v82 += 7;
            v12 = v83++ >= 9;
            if (v12)
            {
              goto LABEL_142;
            }
          }

        case 0x11u:
          v22 = 0;
          v23 = 0;
          v24 = 0;
          *(a1 + 256) |= 0x40u;
          while (2)
          {
            LOBYTE(v229) = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:&v229 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v24 |= (v229 & 0x7F) << v22;
              if ((v229 & 0x80) == 0)
              {
                goto LABEL_315;
              }
            }

            else
            {
              [a2 _setError];
              v24 |= (v229 & 0x7F) << v22;
              if ((v229 & 0x80) == 0)
              {
LABEL_315:
                if ([a2 hasError])
                {
                  v21 = 0;
                }

                else
                {
                  v21 = v24;
                }

LABEL_318:
                v186 = 200;
                goto LABEL_395;
              }
            }

            v22 += 7;
            v12 = v23++ >= 9;
            if (v12)
            {
              v21 = 0;
              goto LABEL_318;
            }

            continue;
          }

        case 0x12u:
          v106 = 0;
          v107 = 0;
          v108 = 0;
          *(a1 + 256) |= 0x20u;
          while (2)
          {
            LOBYTE(v229) = 0;
            v109 = [a2 position] + 1;
            if (v109 >= [a2 position] && (v110 = objc_msgSend(a2, "position") + 1, v110 <= objc_msgSend(a2, "length")))
            {
              v111 = [a2 data];
              [v111 getBytes:&v229 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v108 |= (v229 & 0x7F) << v106;
              if ((v229 & 0x80) == 0)
              {
                goto LABEL_351;
              }
            }

            else
            {
              [a2 _setError];
              v108 |= (v229 & 0x7F) << v106;
              if ((v229 & 0x80) == 0)
              {
LABEL_351:
                if ([a2 hasError])
                {
                  v21 = 0;
                }

                else
                {
                  v21 = v108;
                }

LABEL_354:
                v186 = 196;
                goto LABEL_395;
              }
            }

            v106 += 7;
            v12 = v107++ >= 9;
            if (v12)
            {
              v21 = 0;
              goto LABEL_354;
            }

            continue;
          }

        case 0x13u:
          v143 = 0;
          v144 = 0;
          v145 = 0;
          *(a1 + 256) |= 0x10u;
          while (2)
          {
            LOBYTE(v229) = 0;
            v146 = [a2 position] + 1;
            if (v146 >= [a2 position] && (v147 = objc_msgSend(a2, "position") + 1, v147 <= objc_msgSend(a2, "length")))
            {
              v148 = [a2 data];
              [v148 getBytes:&v229 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v145 |= (v229 & 0x7F) << v143;
              if ((v229 & 0x80) == 0)
              {
                goto LABEL_371;
              }
            }

            else
            {
              [a2 _setError];
              v145 |= (v229 & 0x7F) << v143;
              if ((v229 & 0x80) == 0)
              {
LABEL_371:
                if ([a2 hasError])
                {
                  v21 = 0;
                }

                else
                {
                  v21 = v145;
                }

LABEL_374:
                v186 = 192;
                goto LABEL_395;
              }
            }

            v143 += 7;
            v12 = v144++ >= 9;
            if (v12)
            {
              v21 = 0;
              goto LABEL_374;
            }

            continue;
          }

        case 0x14u:
          v168 = 0;
          v169 = 0;
          v170 = 0;
          *(a1 + 256) |= 4u;
          while (2)
          {
            LOBYTE(v229) = 0;
            v171 = [a2 position] + 1;
            if (v171 >= [a2 position] && (v172 = objc_msgSend(a2, "position") + 1, v172 <= objc_msgSend(a2, "length")))
            {
              v173 = [a2 data];
              [v173 getBytes:&v229 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v170 |= (v229 & 0x7F) << v168;
              if ((v229 & 0x80) == 0)
              {
                goto LABEL_383;
              }
            }

            else
            {
              [a2 _setError];
              v170 |= (v229 & 0x7F) << v168;
              if ((v229 & 0x80) == 0)
              {
LABEL_383:
                if ([a2 hasError])
                {
                  v21 = 0;
                }

                else
                {
                  v21 = v170;
                }

LABEL_386:
                v186 = 184;
                goto LABEL_395;
              }
            }

            v168 += 7;
            v12 = v169++ >= 9;
            if (v12)
            {
              v21 = 0;
              goto LABEL_386;
            }

            continue;
          }

        case 0x15u:
          v112 = 0;
          v113 = 0;
          v114 = 0;
          *(a1 + 256) |= 8u;
          while (2)
          {
            LOBYTE(v229) = 0;
            v115 = [a2 position] + 1;
            if (v115 >= [a2 position] && (v116 = objc_msgSend(a2, "position") + 1, v116 <= objc_msgSend(a2, "length")))
            {
              v117 = [a2 data];
              [v117 getBytes:&v229 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v114 |= (v229 & 0x7F) << v112;
              if ((v229 & 0x80) == 0)
              {
                goto LABEL_355;
              }
            }

            else
            {
              [a2 _setError];
              v114 |= (v229 & 0x7F) << v112;
              if ((v229 & 0x80) == 0)
              {
LABEL_355:
                if ([a2 hasError])
                {
                  v21 = 0;
                }

                else
                {
                  v21 = v114;
                }

LABEL_358:
                v186 = 188;
                goto LABEL_395;
              }
            }

            v112 += 7;
            v12 = v113++ >= 9;
            if (v12)
            {
              v21 = 0;
              goto LABEL_358;
            }

            continue;
          }

        case 0x16u:
          v124 = 0;
          v125 = 0;
          v126 = 0;
          *(a1 + 256) |= 1u;
          while (2)
          {
            LOBYTE(v229) = 0;
            v127 = [a2 position] + 1;
            if (v127 >= [a2 position] && (v128 = objc_msgSend(a2, "position") + 1, v128 <= objc_msgSend(a2, "length")))
            {
              v129 = [a2 data];
              [v129 getBytes:&v229 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v126 |= (v229 & 0x7F) << v124;
              if ((v229 & 0x80) == 0)
              {
                goto LABEL_363;
              }
            }

            else
            {
              [a2 _setError];
              v126 |= (v229 & 0x7F) << v124;
              if ((v229 & 0x80) == 0)
              {
LABEL_363:
                if ([a2 hasError])
                {
                  v21 = 0;
                }

                else
                {
                  v21 = v126;
                }

LABEL_366:
                v186 = 176;
                goto LABEL_395;
              }
            }

            v124 += 7;
            v12 = v125++ >= 9;
            if (v12)
            {
              v21 = 0;
              goto LABEL_366;
            }

            continue;
          }

        case 0x17u:
          v162 = 0;
          v163 = 0;
          v164 = 0;
          *(a1 + 256) |= 2u;
          while (2)
          {
            LOBYTE(v229) = 0;
            v165 = [a2 position] + 1;
            if (v165 >= [a2 position] && (v166 = objc_msgSend(a2, "position") + 1, v166 <= objc_msgSend(a2, "length")))
            {
              v167 = [a2 data];
              [v167 getBytes:&v229 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v164 |= (v229 & 0x7F) << v162;
              if ((v229 & 0x80) == 0)
              {
                goto LABEL_379;
              }
            }

            else
            {
              [a2 _setError];
              v164 |= (v229 & 0x7F) << v162;
              if ((v229 & 0x80) == 0)
              {
LABEL_379:
                if ([a2 hasError])
                {
                  v21 = 0;
                }

                else
                {
                  v21 = v164;
                }

LABEL_382:
                v186 = 180;
                goto LABEL_395;
              }
            }

            v162 += 7;
            v12 = v163++ >= 9;
            if (v12)
            {
              v21 = 0;
              goto LABEL_382;
            }

            continue;
          }

        case 0x18u:
          v174 = 0;
          v175 = 0;
          v176 = 0;
          *(a1 + 256) |= 0x8000u;
          while (2)
          {
            LOBYTE(v229) = 0;
            v177 = [a2 position] + 1;
            if (v177 >= [a2 position] && (v178 = objc_msgSend(a2, "position") + 1, v178 <= objc_msgSend(a2, "length")))
            {
              v179 = [a2 data];
              [v179 getBytes:&v229 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v176 |= (v229 & 0x7F) << v174;
              if ((v229 & 0x80) == 0)
              {
                goto LABEL_387;
              }
            }

            else
            {
              [a2 _setError];
              v176 |= (v229 & 0x7F) << v174;
              if ((v229 & 0x80) == 0)
              {
LABEL_387:
                if ([a2 hasError])
                {
                  v21 = 0;
                }

                else
                {
                  v21 = v176;
                }

LABEL_390:
                v186 = 236;
                goto LABEL_395;
              }
            }

            v174 += 7;
            v12 = v175++ >= 9;
            if (v12)
            {
              v21 = 0;
              goto LABEL_390;
            }

            continue;
          }

        case 0x19u:
          v69 = 0;
          v70 = 0;
          v71 = 0;
          *(a1 + 256) |= 0x800u;
          while (2)
          {
            LOBYTE(v229) = 0;
            v72 = [a2 position] + 1;
            if (v72 >= [a2 position] && (v73 = objc_msgSend(a2, "position") + 1, v73 <= objc_msgSend(a2, "length")))
            {
              v74 = [a2 data];
              [v74 getBytes:&v229 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v71 |= (v229 & 0x7F) << v69;
              if ((v229 & 0x80) == 0)
              {
                goto LABEL_327;
              }
            }

            else
            {
              [a2 _setError];
              v71 |= (v229 & 0x7F) << v69;
              if ((v229 & 0x80) == 0)
              {
LABEL_327:
                if ([a2 hasError])
                {
                  v21 = 0;
                }

                else
                {
                  v21 = v71;
                }

LABEL_330:
                v186 = 220;
                goto LABEL_395;
              }
            }

            v69 += 7;
            v12 = v70++ >= 9;
            if (v12)
            {
              v21 = 0;
              goto LABEL_330;
            }

            continue;
          }

        case 0x1Au:
          v63 = 0;
          v64 = 0;
          v65 = 0;
          *(a1 + 256) |= 0x2000u;
          while (2)
          {
            LOBYTE(v229) = 0;
            v66 = [a2 position] + 1;
            if (v66 >= [a2 position] && (v67 = objc_msgSend(a2, "position") + 1, v67 <= objc_msgSend(a2, "length")))
            {
              v68 = [a2 data];
              [v68 getBytes:&v229 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v65 |= (v229 & 0x7F) << v63;
              if ((v229 & 0x80) == 0)
              {
                goto LABEL_323;
              }
            }

            else
            {
              [a2 _setError];
              v65 |= (v229 & 0x7F) << v63;
              if ((v229 & 0x80) == 0)
              {
LABEL_323:
                if ([a2 hasError])
                {
                  v21 = 0;
                }

                else
                {
                  v21 = v65;
                }

LABEL_326:
                v186 = 228;
                goto LABEL_395;
              }
            }

            v63 += 7;
            v12 = v64++ >= 9;
            if (v12)
            {
              v21 = 0;
              goto LABEL_326;
            }

            continue;
          }

        case 0x1Bu:
          v180 = 0;
          v181 = 0;
          v182 = 0;
          *(a1 + 256) |= 0x10000u;
          while (2)
          {
            LOBYTE(v229) = 0;
            v183 = [a2 position] + 1;
            if (v183 >= [a2 position] && (v184 = objc_msgSend(a2, "position") + 1, v184 <= objc_msgSend(a2, "length")))
            {
              v185 = [a2 data];
              [v185 getBytes:&v229 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v182 |= (v229 & 0x7F) << v180;
              if ((v229 & 0x80) == 0)
              {
                goto LABEL_391;
              }
            }

            else
            {
              [a2 _setError];
              v182 |= (v229 & 0x7F) << v180;
              if ((v229 & 0x80) == 0)
              {
LABEL_391:
                if ([a2 hasError])
                {
                  v21 = 0;
                }

                else
                {
                  v21 = v182;
                }

LABEL_394:
                v186 = 240;
                goto LABEL_395;
              }
            }

            v180 += 7;
            v12 = v181++ >= 9;
            if (v12)
            {
              v21 = 0;
              goto LABEL_394;
            }

            continue;
          }

        default:
          if (PBReaderSkipValueWithTag())
          {
            goto LABEL_396;
          }

          return 0;
      }
    }

    return [a2 hasError] ^ 1;
  }
}

uint64_t AWDCountersNetworkSReadFrom(uint64_t a1, void *a2)
{
  v3 = [a2 position];
  if (v3 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (1)
  {
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

    v5 = 0;
    v6 = 0;
    v7 = 0;
    do
    {
      LOBYTE(v107) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position])
      {
        v9 = [a2 position] + 1;
        if (v9 <= [a2 length])
        {
          v10 = [a2 data];
          [v10 getBytes:&v107 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          v7 |= (v107 & 0x7F) << v5;
          if ((v107 & 0x80) != 0)
          {
            goto LABEL_12;
          }

LABEL_16:
          if ([a2 hasError])
          {
            v12 = 0;
          }

          else
          {
            v12 = v7;
          }

          if (([a2 hasError] & 1) == 0)
          {
            goto LABEL_20;
          }

          return [a2 hasError] ^ 1;
        }
      }

      [a2 _setError];
      v7 |= (v107 & 0x7F) << v5;
      if ((v107 & 0x80) == 0)
      {
        goto LABEL_16;
      }

LABEL_12:
      v5 += 7;
      v11 = v6++ >= 9;
    }

    while (!v11);
    v12 = 0;
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

LABEL_20:
    v13 = v12 & 7;
    if (v13 == 4)
    {
      return [a2 hasError] ^ 1;
    }

    v14 = v12 >> 3;
    if ((v12 >> 3) <= 3)
    {
      break;
    }

    if (v14 > 5)
    {
      if (v14 == 6)
      {
        if (v13 != 2)
        {
          v77 = 0;
          v78 = 0;
          v79 = 0;
          do
          {
            LOBYTE(v107) = 0;
            v80 = [a2 position] + 1;
            if (v80 >= [a2 position] && (v81 = objc_msgSend(a2, "position") + 1, v81 <= objc_msgSend(a2, "length")))
            {
              v82 = [a2 data];
              [v82 getBytes:&v107 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v79 |= (v107 & 0x7F) << v77;
              if ((v107 & 0x80) == 0)
              {
                goto LABEL_207;
              }
            }

            else
            {
              [a2 _setError];
              v79 |= (v107 & 0x7F) << v77;
              if ((v107 & 0x80) == 0)
              {
                goto LABEL_207;
              }
            }

            v77 += 7;
            v11 = v78++ >= 9;
          }

          while (!v11);
          goto LABEL_208;
        }

        v107 = 0;
        v108 = 0;
        result = PBReaderPlaceMark();
        if (result)
        {
LABEL_117:
          v51 = [a2 position];
          if (v51 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            goto LABEL_3;
          }

          v52 = 0;
          v53 = 0;
          v54 = 0;
          while (1)
          {
            v109 = 0;
            v55 = [a2 position] + 1;
            if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
            {
              v57 = [a2 data];
              [v57 getBytes:&v109 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v54 |= (v109 & 0x7F) << v52;
              if ((v109 & 0x80) == 0)
              {
LABEL_115:
                [a2 hasError];
LABEL_116:
                PBRepeatedUInt32Add();
                goto LABEL_117;
              }
            }

            else
            {
              [a2 _setError];
              v54 |= (v109 & 0x7F) << v52;
              if ((v109 & 0x80) == 0)
              {
                goto LABEL_115;
              }
            }

            v52 += 7;
            v11 = v53++ >= 9;
            if (v11)
            {
              goto LABEL_116;
            }
          }
        }

        return result;
      }

      if (v14 == 7)
      {
        if (v13 != 2)
        {
          v89 = 0;
          v90 = 0;
          v91 = 0;
          do
          {
            LOBYTE(v107) = 0;
            v92 = [a2 position] + 1;
            if (v92 >= [a2 position] && (v93 = objc_msgSend(a2, "position") + 1, v93 <= objc_msgSend(a2, "length")))
            {
              v94 = [a2 data];
              [v94 getBytes:&v107 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v91 |= (v107 & 0x7F) << v89;
              if ((v107 & 0x80) == 0)
              {
                goto LABEL_207;
              }
            }

            else
            {
              [a2 _setError];
              v91 |= (v107 & 0x7F) << v89;
              if ((v107 & 0x80) == 0)
              {
                goto LABEL_207;
              }
            }

            v89 += 7;
            v11 = v90++ >= 9;
          }

          while (!v11);
          goto LABEL_208;
        }

        v107 = 0;
        v108 = 0;
        result = PBReaderPlaceMark();
        if (result)
        {
LABEL_54:
          v23 = [a2 position];
          if (v23 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            goto LABEL_3;
          }

          v24 = 0;
          v25 = 0;
          v26 = 0;
          while (1)
          {
            v109 = 0;
            v27 = [a2 position] + 1;
            if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
            {
              v29 = [a2 data];
              [v29 getBytes:&v109 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v26 |= (v109 & 0x7F) << v24;
              if ((v109 & 0x80) == 0)
              {
LABEL_52:
                [a2 hasError];
LABEL_53:
                PBRepeatedUInt32Add();
                goto LABEL_54;
              }
            }

            else
            {
              [a2 _setError];
              v26 |= (v109 & 0x7F) << v24;
              if ((v109 & 0x80) == 0)
              {
                goto LABEL_52;
              }
            }

            v24 += 7;
            v11 = v25++ >= 9;
            if (v11)
            {
              goto LABEL_53;
            }
          }
        }

        return result;
      }

      goto LABEL_94;
    }

    if (v14 == 4)
    {
      if (v13 != 2)
      {
        v71 = 0;
        v72 = 0;
        v73 = 0;
        do
        {
          LOBYTE(v107) = 0;
          v74 = [a2 position] + 1;
          if (v74 >= [a2 position] && (v75 = objc_msgSend(a2, "position") + 1, v75 <= objc_msgSend(a2, "length")))
          {
            v76 = [a2 data];
            [v76 getBytes:&v107 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            v73 |= (v107 & 0x7F) << v71;
            if ((v107 & 0x80) == 0)
            {
              goto LABEL_207;
            }
          }

          else
          {
            [a2 _setError];
            v73 |= (v107 & 0x7F) << v71;
            if ((v107 & 0x80) == 0)
            {
              goto LABEL_207;
            }
          }

          v71 += 7;
          v11 = v72++ >= 9;
        }

        while (!v11);
        goto LABEL_208;
      }

      v107 = 0;
      v108 = 0;
      result = PBReaderPlaceMark();
      if (result)
      {
LABEL_101:
        v44 = [a2 position];
        if (v44 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
        {
          goto LABEL_3;
        }

        v45 = 0;
        v46 = 0;
        v47 = 0;
        while (1)
        {
          v109 = 0;
          v48 = [a2 position] + 1;
          if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 1, v49 <= objc_msgSend(a2, "length")))
          {
            v50 = [a2 data];
            [v50 getBytes:&v109 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            v47 |= (v109 & 0x7F) << v45;
            if ((v109 & 0x80) == 0)
            {
LABEL_99:
              [a2 hasError];
LABEL_100:
              PBRepeatedUInt32Add();
              goto LABEL_101;
            }
          }

          else
          {
            [a2 _setError];
            v47 |= (v109 & 0x7F) << v45;
            if ((v109 & 0x80) == 0)
            {
              goto LABEL_99;
            }
          }

          v45 += 7;
          v11 = v46++ >= 9;
          if (v11)
          {
            goto LABEL_100;
          }
        }
      }

      return result;
    }

    if (v14 != 5)
    {
      goto LABEL_94;
    }

    if (v13 == 2)
    {
      v107 = 0;
      v108 = 0;
      result = PBReaderPlaceMark();
      if (!result)
      {
        return result;
      }

LABEL_41:
      v16 = [a2 position];
      if (v16 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
      {
        goto LABEL_3;
      }

      v17 = 0;
      v18 = 0;
      v19 = 0;
      while (1)
      {
        v109 = 0;
        v20 = [a2 position] + 1;
        if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
        {
          v22 = [a2 data];
          [v22 getBytes:&v109 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          v19 |= (v109 & 0x7F) << v17;
          if ((v109 & 0x80) == 0)
          {
LABEL_39:
            [a2 hasError];
LABEL_40:
            PBRepeatedUInt32Add();
            goto LABEL_41;
          }
        }

        else
        {
          [a2 _setError];
          v19 |= (v109 & 0x7F) << v17;
          if ((v109 & 0x80) == 0)
          {
            goto LABEL_39;
          }
        }

        v17 += 7;
        v11 = v18++ >= 9;
        if (v11)
        {
          goto LABEL_40;
        }
      }
    }

    v83 = 0;
    v84 = 0;
    v85 = 0;
    do
    {
      LOBYTE(v107) = 0;
      v86 = [a2 position] + 1;
      if (v86 >= [a2 position] && (v87 = objc_msgSend(a2, "position") + 1, v87 <= objc_msgSend(a2, "length")))
      {
        v88 = [a2 data];
        [v88 getBytes:&v107 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        v85 |= (v107 & 0x7F) << v83;
        if ((v107 & 0x80) == 0)
        {
          goto LABEL_207;
        }
      }

      else
      {
        [a2 _setError];
        v85 |= (v107 & 0x7F) << v83;
        if ((v107 & 0x80) == 0)
        {
          goto LABEL_207;
        }
      }

      v83 += 7;
      v11 = v84++ >= 9;
    }

    while (!v11);
LABEL_208:
    PBRepeatedUInt32Add();
LABEL_4:
    v4 = [a2 position];
    if (v4 >= [a2 length])
    {
      return [a2 hasError] ^ 1;
    }
  }

  if (v14 == 1)
  {
    if (v13 != 2)
    {
      v65 = 0;
      v66 = 0;
      v67 = 0;
      while (1)
      {
        LOBYTE(v107) = 0;
        v68 = [a2 position] + 1;
        if (v68 >= [a2 position] && (v69 = objc_msgSend(a2, "position") + 1, v69 <= objc_msgSend(a2, "length")))
        {
          v70 = [a2 data];
          [v70 getBytes:&v107 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          v67 |= (v107 & 0x7F) << v65;
          if ((v107 & 0x80) == 0)
          {
LABEL_207:
            [a2 hasError];
            goto LABEL_208;
          }
        }

        else
        {
          [a2 _setError];
          v67 |= (v107 & 0x7F) << v65;
          if ((v107 & 0x80) == 0)
          {
            goto LABEL_207;
          }
        }

        v65 += 7;
        v11 = v66++ >= 9;
        if (v11)
        {
          goto LABEL_208;
        }
      }
    }

    v107 = 0;
    v108 = 0;
    result = PBReaderPlaceMark();
    if (result)
    {
LABEL_83:
      v37 = [a2 position];
      if (v37 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
      {
LABEL_3:
        PBReaderRecallMark();
        goto LABEL_4;
      }

      v38 = 0;
      v39 = 0;
      v40 = 0;
      while (1)
      {
        v109 = 0;
        v41 = [a2 position] + 1;
        if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
        {
          v43 = [a2 data];
          [v43 getBytes:&v109 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          v40 |= (v109 & 0x7F) << v38;
          if ((v109 & 0x80) == 0)
          {
LABEL_81:
            [a2 hasError];
LABEL_82:
            PBRepeatedUInt32Add();
            goto LABEL_83;
          }
        }

        else
        {
          [a2 _setError];
          v40 |= (v109 & 0x7F) << v38;
          if ((v109 & 0x80) == 0)
          {
            goto LABEL_81;
          }
        }

        v38 += 7;
        v11 = v39++ >= 9;
        if (v11)
        {
          goto LABEL_82;
        }
      }
    }

    return result;
  }

  if (v14 != 2)
  {
    if (v14 == 3)
    {
      if (v13 != 2)
      {
        v95 = 0;
        v96 = 0;
        v97 = 0;
        do
        {
          LOBYTE(v107) = 0;
          v98 = [a2 position] + 1;
          if (v98 >= [a2 position] && (v99 = objc_msgSend(a2, "position") + 1, v99 <= objc_msgSend(a2, "length")))
          {
            v100 = [a2 data];
            [v100 getBytes:&v107 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            v97 |= (v107 & 0x7F) << v95;
            if ((v107 & 0x80) == 0)
            {
              goto LABEL_207;
            }
          }

          else
          {
            [a2 _setError];
            v97 |= (v107 & 0x7F) << v95;
            if ((v107 & 0x80) == 0)
            {
              goto LABEL_207;
            }
          }

          v95 += 7;
          v11 = v96++ >= 9;
        }

        while (!v11);
        goto LABEL_208;
      }

      v107 = 0;
      v108 = 0;
      result = PBReaderPlaceMark();
      if (result)
      {
LABEL_67:
        v30 = [a2 position];
        if (v30 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
        {
          goto LABEL_3;
        }

        v31 = 0;
        v32 = 0;
        v33 = 0;
        while (1)
        {
          v109 = 0;
          v34 = [a2 position] + 1;
          if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
          {
            v36 = [a2 data];
            [v36 getBytes:&v109 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            v33 |= (v109 & 0x7F) << v31;
            if ((v109 & 0x80) == 0)
            {
LABEL_65:
              [a2 hasError];
LABEL_66:
              PBRepeatedUInt32Add();
              goto LABEL_67;
            }
          }

          else
          {
            [a2 _setError];
            v33 |= (v109 & 0x7F) << v31;
            if ((v109 & 0x80) == 0)
            {
              goto LABEL_65;
            }
          }

          v31 += 7;
          v11 = v32++ >= 9;
          if (v11)
          {
            goto LABEL_66;
          }
        }
      }

      return result;
    }

LABEL_94:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_4;
  }

  if (v13 != 2)
  {
    v101 = 0;
    v102 = 0;
    v103 = 0;
    do
    {
      LOBYTE(v107) = 0;
      v104 = [a2 position] + 1;
      if (v104 >= [a2 position] && (v105 = objc_msgSend(a2, "position") + 1, v105 <= objc_msgSend(a2, "length")))
      {
        v106 = [a2 data];
        [v106 getBytes:&v107 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        v103 |= (v107 & 0x7F) << v101;
        if ((v107 & 0x80) == 0)
        {
          goto LABEL_207;
        }
      }

      else
      {
        [a2 _setError];
        v103 |= (v107 & 0x7F) << v101;
        if ((v107 & 0x80) == 0)
        {
          goto LABEL_207;
        }
      }

      v101 += 7;
      v11 = v102++ >= 9;
    }

    while (!v11);
    goto LABEL_208;
  }

  v107 = 0;
  v108 = 0;
  result = PBReaderPlaceMark();
  if (result)
  {
LABEL_133:
    v58 = [a2 position];
    if (v58 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      goto LABEL_3;
    }

    v59 = 0;
    v60 = 0;
    v61 = 0;
    while (1)
    {
      v109 = 0;
      v62 = [a2 position] + 1;
      if (v62 >= [a2 position] && (v63 = objc_msgSend(a2, "position") + 1, v63 <= objc_msgSend(a2, "length")))
      {
        v64 = [a2 data];
        [v64 getBytes:&v109 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        v61 |= (v109 & 0x7F) << v59;
        if ((v109 & 0x80) == 0)
        {
LABEL_131:
          [a2 hasError];
LABEL_132:
          PBRepeatedUInt32Add();
          goto LABEL_133;
        }
      }

      else
      {
        [a2 _setError];
        v61 |= (v109 & 0x7F) << v59;
        if ((v109 & 0x80) == 0)
        {
          goto LABEL_131;
        }
      }

      v59 += 7;
      v11 = v60++ >= 9;
      if (v11)
      {
        goto LABEL_132;
      }
    }
  }

  return result;
}

uint64_t AWDCountersPowerSReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        LOBYTE(v35[0]) = 0;
        v9 = [a2 position] + 1;
        if (v9 >= [a2 position])
        {
          v10 = [a2 position] + 1;
          if (v10 <= [a2 length])
          {
            break;
          }
        }

        [a2 _setError];
        v8 |= (v35[0] & 0x7F) << v6;
        if ((v35[0] & 0x80) == 0)
        {
          goto LABEL_16;
        }

LABEL_12:
        v6 += 7;
        v12 = v7++ >= 9;
        if (v12)
        {
          v13 = 0;
          if ([a2 hasError])
          {
            return [a2 hasError] ^ 1;
          }

          goto LABEL_20;
        }
      }

      v11 = [a2 data];
      [v11 getBytes:v35 range:{objc_msgSend(a2, "position"), 1}];

      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      v8 |= (v35[0] & 0x7F) << v6;
      if ((v35[0] & 0x80) != 0)
      {
        goto LABEL_12;
      }

LABEL_16:
      if ([a2 hasError])
      {
        v13 = 0;
      }

      else
      {
        v13 = v8;
      }

      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

LABEL_20:
      if ((v13 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v13 >> 3) == 2)
      {
        if ((v13 & 7) != 2)
        {
          v29 = 0;
          v30 = 0;
          v31 = 0;
          while (1)
          {
            LOBYTE(v35[0]) = 0;
            v32 = [a2 position] + 1;
            if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
            {
              v34 = [a2 data];
              [v34 getBytes:v35 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v31 |= (v35[0] & 0x7F) << v29;
              if ((v35[0] & 0x80) == 0)
              {
LABEL_62:
                [a2 hasError];
LABEL_63:
                PBRepeatedUInt32Add();
                goto LABEL_4;
              }
            }

            else
            {
              [a2 _setError];
              v31 |= (v35[0] & 0x7F) << v29;
              if ((v35[0] & 0x80) == 0)
              {
                goto LABEL_62;
              }
            }

            v29 += 7;
            v12 = v30++ >= 9;
            if (v12)
            {
              goto LABEL_63;
            }
          }
        }

        v35[0] = 0;
        v35[1] = 0;
        result = PBReaderPlaceMark();
        if (result)
        {
LABEL_37:
          v22 = [a2 position];
          if (v22 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            PBReaderRecallMark();
            goto LABEL_4;
          }

          v23 = 0;
          v24 = 0;
          v25 = 0;
          while (1)
          {
            v36 = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v36 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v25 |= (v36 & 0x7F) << v23;
              if ((v36 & 0x80) == 0)
              {
LABEL_35:
                [a2 hasError];
LABEL_36:
                PBRepeatedUInt32Add();
                goto LABEL_37;
              }
            }

            else
            {
              [a2 _setError];
              v25 |= (v36 & 0x7F) << v23;
              if ((v36 & 0x80) == 0)
              {
                goto LABEL_35;
              }
            }

            v23 += 7;
            v12 = v24++ >= 9;
            if (v12)
            {
              goto LABEL_36;
            }
          }
        }

        return result;
      }

      if ((v13 >> 3) != 1)
      {
        if (PBReaderSkipValueWithTag())
        {
          goto LABEL_4;
        }

        return 0;
      }

      v14 = 0;
      v15 = 0;
      v16 = 0;
      *(a1 + 36) |= 1u;
      while (2)
      {
        LOBYTE(v35[0]) = 0;
        v17 = [a2 position] + 1;
        if (v17 < [a2 position] || (v18 = objc_msgSend(a2, "position") + 1, v18 > objc_msgSend(a2, "length")))
        {
          [a2 _setError];
          v16 |= (v35[0] & 0x7F) << v14;
          if ((v35[0] & 0x80) == 0)
          {
            break;
          }

          goto LABEL_29;
        }

        v19 = [a2 data];
        [v19 getBytes:v35 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        v16 |= (v35[0] & 0x7F) << v14;
        if ((v35[0] & 0x80) != 0)
        {
LABEL_29:
          v14 += 7;
          v12 = v15++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_51;
          }

          continue;
        }

        break;
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v16;
      }

LABEL_51:
      *(a1 + 32) = v20;
LABEL_4:
      v5 = [a2 position];
    }

    while (v5 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDCountersRadioSReadFrom(uint64_t a1, void *a2)
{
  v4 = a2;
LABEL_2:
  v5 = [v4 position];
  if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
  {
    return [a2 hasError] ^ 1;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  while (1)
  {
    LOBYTE(v360[0]) = 0;
    v9 = [a2 position] + 1;
    if (v9 < [a2 position] || (v10 = objc_msgSend(a2, "position") + 1, v10 > objc_msgSend(a2, "length")))
    {
      [a2 _setError];
      v8 |= (v360[0] & 0x7F) << v6;
      if ((v360[0] & 0x80) == 0)
      {
        break;
      }

      goto LABEL_10;
    }

    v11 = [a2 data];
    [v11 getBytes:v360 range:{objc_msgSend(a2, "position"), 1}];

    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
    v8 |= (v360[0] & 0x7F) << v6;
    if ((v360[0] & 0x80) == 0)
    {
      break;
    }

LABEL_10:
    v6 += 7;
    v12 = v7++ >= 9;
    if (v12)
    {
      v13 = 0;
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

LABEL_18:
      if ((v13 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      switch((v13 >> 3))
      {
        case 1u:
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 248) |= 1uLL;
          while (1)
          {
            LOBYTE(v360[0]) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:v360 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v16 |= (v360[0] & 0x7F) << v14;
              if ((v360[0] & 0x80) == 0)
              {
LABEL_642:
                if ([a2 hasError])
                {
                  v20 = 0;
                }

                else
                {
                  v20 = v16;
                }

                goto LABEL_645;
              }
            }

            else
            {
              [a2 _setError];
              v16 |= (v360[0] & 0x7F) << v14;
              if ((v360[0] & 0x80) == 0)
              {
                goto LABEL_642;
              }
            }

            v14 += 7;
            v12 = v15++ >= 9;
            if (v12)
            {
              v20 = 0;
LABEL_645:
              v358 = 8;
              goto LABEL_766;
            }
          }

        case 2u:
          v178 = 0;
          v179 = 0;
          v180 = 0;
          *(a1 + 248) |= 0x10uLL;
          while (2)
          {
            LOBYTE(v360[0]) = 0;
            v181 = [a2 position] + 1;
            if (v181 >= [a2 position] && (v182 = objc_msgSend(a2, "position") + 1, v182 <= objc_msgSend(a2, "length")))
            {
              v183 = [a2 data];
              [v183 getBytes:v360 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v180 |= (v360[0] & 0x7F) << v178;
              if ((v360[0] & 0x80) != 0)
              {
LABEL_272:
                v178 += 7;
                v12 = v179++ >= 9;
                if (v12)
                {
                  v20 = 0;
                  goto LABEL_649;
                }

                continue;
              }
            }

            else
            {
              [a2 _setError];
              v180 |= (v360[0] & 0x7F) << v178;
              if ((v360[0] & 0x80) != 0)
              {
                goto LABEL_272;
              }
            }

            break;
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v180;
          }

LABEL_649:
          v358 = 24;
          goto LABEL_766;
        case 3u:
          v154 = 0;
          v155 = 0;
          v156 = 0;
          *(a1 + 248) |= 0x40uLL;
          while (2)
          {
            LOBYTE(v360[0]) = 0;
            v157 = [a2 position] + 1;
            if (v157 >= [a2 position] && (v158 = objc_msgSend(a2, "position") + 1, v158 <= objc_msgSend(a2, "length")))
            {
              v159 = [a2 data];
              [v159 getBytes:v360 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v156 |= (v360[0] & 0x7F) << v154;
              if ((v360[0] & 0x80) != 0)
              {
LABEL_236:
                v154 += 7;
                v12 = v155++ >= 9;
                if (v12)
                {
                  v20 = 0;
                  goto LABEL_629;
                }

                continue;
              }
            }

            else
            {
              [a2 _setError];
              v156 |= (v360[0] & 0x7F) << v154;
              if ((v360[0] & 0x80) != 0)
              {
                goto LABEL_236;
              }
            }

            break;
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v156;
          }

LABEL_629:
          v358 = 32;
          goto LABEL_766;
        case 4u:
          v166 = 0;
          v167 = 0;
          v168 = 0;
          *(a1 + 248) |= 0x100uLL;
          while (2)
          {
            LOBYTE(v360[0]) = 0;
            v169 = [a2 position] + 1;
            if (v169 >= [a2 position] && (v170 = objc_msgSend(a2, "position") + 1, v170 <= objc_msgSend(a2, "length")))
            {
              v171 = [a2 data];
              [v171 getBytes:v360 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v168 |= (v360[0] & 0x7F) << v166;
              if ((v360[0] & 0x80) != 0)
              {
LABEL_254:
                v166 += 7;
                v12 = v167++ >= 9;
                if (v12)
                {
                  v20 = 0;
                  goto LABEL_637;
                }

                continue;
              }
            }

            else
            {
              [a2 _setError];
              v168 |= (v360[0] & 0x7F) << v166;
              if ((v360[0] & 0x80) != 0)
              {
                goto LABEL_254;
              }
            }

            break;
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v168;
          }

LABEL_637:
          v358 = 40;
          goto LABEL_766;
        case 5u:
          v123 = objc_alloc_init(AWDRadioStatsS);
          objc_storeStrong((a1 + 144), v123);
          v360[0] = 0;
          v360[1] = 0;
          if (!PBReaderPlaceMark() || !AWDRadioStatsSReadFrom(v123, a2))
          {

            return 0;
          }

          PBReaderRecallMark();

          v4 = a2;
          break;
        case 6u:
          v208 = 0;
          v209 = 0;
          v210 = 0;
          *(a1 + 248) |= 0x20000uLL;
          while (2)
          {
            LOBYTE(v360[0]) = 0;
            v211 = [a2 position] + 1;
            if (v211 >= [a2 position] && (v212 = objc_msgSend(a2, "position") + 1, v212 <= objc_msgSend(a2, "length")))
            {
              v213 = [a2 data];
              [v213 getBytes:v360 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v210 |= (v360[0] & 0x7F) << v208;
              if ((v360[0] & 0x80) != 0)
              {
LABEL_317:
                v208 += 7;
                v12 = v209++ >= 9;
                if (v12)
                {
                  v20 = 0;
                  goto LABEL_669;
                }

                continue;
              }
            }

            else
            {
              [a2 _setError];
              v210 |= (v360[0] & 0x7F) << v208;
              if ((v360[0] & 0x80) != 0)
              {
                goto LABEL_317;
              }
            }

            break;
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v210;
          }

LABEL_669:
          v358 = 76;
          goto LABEL_766;
        case 7u:
          v226 = 0;
          v227 = 0;
          v228 = 0;
          *(a1 + 248) |= 0x10000uLL;
          while (2)
          {
            LOBYTE(v360[0]) = 0;
            v229 = [a2 position] + 1;
            if (v229 >= [a2 position] && (v230 = objc_msgSend(a2, "position") + 1, v230 <= objc_msgSend(a2, "length")))
            {
              v231 = [a2 data];
              [v231 getBytes:v360 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v228 |= (v360[0] & 0x7F) << v226;
              if ((v360[0] & 0x80) != 0)
              {
LABEL_344:
                v226 += 7;
                v12 = v227++ >= 9;
                if (v12)
                {
                  v20 = 0;
                  goto LABEL_681;
                }

                continue;
              }
            }

            else
            {
              [a2 _setError];
              v228 |= (v360[0] & 0x7F) << v226;
              if ((v360[0] & 0x80) != 0)
              {
                goto LABEL_344;
              }
            }

            break;
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v228;
          }

LABEL_681:
          v358 = 72;
          goto LABEL_766;
        case 8u:
          v172 = 0;
          v173 = 0;
          v174 = 0;
          *(a1 + 248) |= 0x8000uLL;
          while (2)
          {
            LOBYTE(v360[0]) = 0;
            v175 = [a2 position] + 1;
            if (v175 >= [a2 position] && (v176 = objc_msgSend(a2, "position") + 1, v176 <= objc_msgSend(a2, "length")))
            {
              v177 = [a2 data];
              [v177 getBytes:v360 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v174 |= (v360[0] & 0x7F) << v172;
              if ((v360[0] & 0x80) != 0)
              {
LABEL_263:
                v172 += 7;
                v12 = v173++ >= 9;
                if (v12)
                {
                  v20 = 0;
                  goto LABEL_641;
                }

                continue;
              }
            }

            else
            {
              [a2 _setError];
              v174 |= (v360[0] & 0x7F) << v172;
              if ((v360[0] & 0x80) != 0)
              {
                goto LABEL_263;
              }
            }

            break;
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v174;
          }

LABEL_641:
          v358 = 68;
          goto LABEL_766;
        case 9u:
          v244 = 0;
          v245 = 0;
          v246 = 0;
          *(a1 + 248) |= 0x4000uLL;
          while (2)
          {
            LOBYTE(v360[0]) = 0;
            v247 = [a2 position] + 1;
            if (v247 >= [a2 position] && (v248 = objc_msgSend(a2, "position") + 1, v248 <= objc_msgSend(a2, "length")))
            {
              v249 = [a2 data];
              [v249 getBytes:v360 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v246 |= (v360[0] & 0x7F) << v244;
              if ((v360[0] & 0x80) != 0)
              {
LABEL_371:
                v244 += 7;
                v12 = v245++ >= 9;
                if (v12)
                {
                  v20 = 0;
                  goto LABEL_693;
                }

                continue;
              }
            }

            else
            {
              [a2 _setError];
              v246 |= (v360[0] & 0x7F) << v244;
              if ((v360[0] & 0x80) != 0)
              {
                goto LABEL_371;
              }
            }

            break;
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v246;
          }

LABEL_693:
          v358 = 64;
          goto LABEL_766;
        case 0xAu:
          v136 = 0;
          v137 = 0;
          v138 = 0;
          *(a1 + 248) |= 0x2000uLL;
          while (2)
          {
            LOBYTE(v360[0]) = 0;
            v139 = [a2 position] + 1;
            if (v139 >= [a2 position] && (v140 = objc_msgSend(a2, "position") + 1, v140 <= objc_msgSend(a2, "length")))
            {
              v141 = [a2 data];
              [v141 getBytes:v360 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v138 |= (v360[0] & 0x7F) << v136;
              if ((v360[0] & 0x80) != 0)
              {
LABEL_209:
                v136 += 7;
                v12 = v137++ >= 9;
                if (v12)
                {
                  v20 = 0;
                  goto LABEL_617;
                }

                continue;
              }
            }

            else
            {
              [a2 _setError];
              v138 |= (v360[0] & 0x7F) << v136;
              if ((v360[0] & 0x80) != 0)
              {
                goto LABEL_209;
              }
            }

            break;
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v138;
          }

LABEL_617:
          v358 = 60;
          goto LABEL_766;
        case 0xBu:
          v238 = 0;
          v239 = 0;
          v240 = 0;
          *(a1 + 248) |= 0x1000uLL;
          while (2)
          {
            LOBYTE(v360[0]) = 0;
            v241 = [a2 position] + 1;
            if (v241 >= [a2 position] && (v242 = objc_msgSend(a2, "position") + 1, v242 <= objc_msgSend(a2, "length")))
            {
              v243 = [a2 data];
              [v243 getBytes:v360 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v240 |= (v360[0] & 0x7F) << v238;
              if ((v360[0] & 0x80) != 0)
              {
LABEL_362:
                v238 += 7;
                v12 = v239++ >= 9;
                if (v12)
                {
                  v20 = 0;
                  goto LABEL_689;
                }

                continue;
              }
            }

            else
            {
              [a2 _setError];
              v240 |= (v360[0] & 0x7F) << v238;
              if ((v360[0] & 0x80) != 0)
              {
                goto LABEL_362;
              }
            }

            break;
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v240;
          }

LABEL_689:
          v358 = 56;
          goto LABEL_766;
        case 0xCu:
          v111 = 0;
          v112 = 0;
          v113 = 0;
          *(a1 + 248) |= 0x800uLL;
          while (2)
          {
            LOBYTE(v360[0]) = 0;
            v114 = [a2 position] + 1;
            if (v114 >= [a2 position] && (v115 = objc_msgSend(a2, "position") + 1, v115 <= objc_msgSend(a2, "length")))
            {
              v116 = [a2 data];
              [v116 getBytes:v360 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v113 |= (v360[0] & 0x7F) << v111;
              if ((v360[0] & 0x80) != 0)
              {
LABEL_170:
                v111 += 7;
                v12 = v112++ >= 9;
                if (v12)
                {
                  v20 = 0;
                  goto LABEL_601;
                }

                continue;
              }
            }

            else
            {
              [a2 _setError];
              v113 |= (v360[0] & 0x7F) << v111;
              if ((v360[0] & 0x80) != 0)
              {
                goto LABEL_170;
              }
            }

            break;
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v113;
          }

LABEL_601:
          v358 = 52;
          goto LABEL_766;
        case 0xDu:
          v130 = 0;
          v131 = 0;
          v132 = 0;
          *(a1 + 248) |= 0x400uLL;
          while (2)
          {
            LOBYTE(v360[0]) = 0;
            v133 = [a2 position] + 1;
            if (v133 >= [a2 position] && (v134 = objc_msgSend(a2, "position") + 1, v134 <= objc_msgSend(a2, "length")))
            {
              v135 = [a2 data];
              [v135 getBytes:v360 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v132 |= (v360[0] & 0x7F) << v130;
              if ((v360[0] & 0x80) != 0)
              {
LABEL_200:
                v130 += 7;
                v12 = v131++ >= 9;
                if (v12)
                {
                  v20 = 0;
                  goto LABEL_613;
                }

                continue;
              }
            }

            else
            {
              [a2 _setError];
              v132 |= (v360[0] & 0x7F) << v130;
              if ((v360[0] & 0x80) != 0)
              {
                goto LABEL_200;
              }
            }

            break;
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v132;
          }

LABEL_613:
          v358 = 48;
          goto LABEL_766;
        case 0xEu:
          v220 = 0;
          v221 = 0;
          v222 = 0;
          *(a1 + 248) |= 0x8000000000uLL;
          while (2)
          {
            LOBYTE(v360[0]) = 0;
            v223 = [a2 position] + 1;
            if (v223 >= [a2 position] && (v224 = objc_msgSend(a2, "position") + 1, v224 <= objc_msgSend(a2, "length")))
            {
              v225 = [a2 data];
              [v225 getBytes:v360 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v222 |= (v360[0] & 0x7F) << v220;
              if ((v360[0] & 0x80) != 0)
              {
LABEL_335:
                v220 += 7;
                v12 = v221++ >= 9;
                if (v12)
                {
                  v20 = 0;
                  goto LABEL_677;
                }

                continue;
              }
            }

            else
            {
              [a2 _setError];
              v222 |= (v360[0] & 0x7F) << v220;
              if ((v360[0] & 0x80) != 0)
              {
                goto LABEL_335;
              }
            }

            break;
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v222;
          }

LABEL_677:
          v358 = 176;
          goto LABEL_766;
        case 0xFu:
          v93 = 0;
          v94 = 0;
          v95 = 0;
          *(a1 + 248) |= 0x4000000000uLL;
          while (2)
          {
            LOBYTE(v360[0]) = 0;
            v96 = [a2 position] + 1;
            if (v96 >= [a2 position] && (v97 = objc_msgSend(a2, "position") + 1, v97 <= objc_msgSend(a2, "length")))
            {
              v98 = [a2 data];
              [v98 getBytes:v360 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v95 |= (v360[0] & 0x7F) << v93;
              if ((v360[0] & 0x80) != 0)
              {
LABEL_143:
                v93 += 7;
                v12 = v94++ >= 9;
                if (v12)
                {
                  v20 = 0;
                  goto LABEL_589;
                }

                continue;
              }
            }

            else
            {
              [a2 _setError];
              v95 |= (v360[0] & 0x7F) << v93;
              if ((v360[0] & 0x80) != 0)
              {
                goto LABEL_143;
              }
            }

            break;
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v95;
          }

LABEL_589:
          v358 = 172;
          goto LABEL_766;
        case 0x10u:
          v160 = 0;
          v161 = 0;
          v162 = 0;
          *(a1 + 248) |= 0x2000000000uLL;
          while (2)
          {
            LOBYTE(v360[0]) = 0;
            v163 = [a2 position] + 1;
            if (v163 >= [a2 position] && (v164 = objc_msgSend(a2, "position") + 1, v164 <= objc_msgSend(a2, "length")))
            {
              v165 = [a2 data];
              [v165 getBytes:v360 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v162 |= (v360[0] & 0x7F) << v160;
              if ((v360[0] & 0x80) != 0)
              {
LABEL_245:
                v160 += 7;
                v12 = v161++ >= 9;
                if (v12)
                {
                  v20 = 0;
                  goto LABEL_633;
                }

                continue;
              }
            }

            else
            {
              [a2 _setError];
              v162 |= (v360[0] & 0x7F) << v160;
              if ((v360[0] & 0x80) != 0)
              {
                goto LABEL_245;
              }
            }

            break;
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v162;
          }

LABEL_633:
          v358 = 168;
          goto LABEL_766;
        case 0x11u:
          v81 = 0;
          v82 = 0;
          v83 = 0;
          *(a1 + 248) |= 0x1000000000uLL;
          while (2)
          {
            LOBYTE(v360[0]) = 0;
            v84 = [a2 position] + 1;
            if (v84 >= [a2 position] && (v85 = objc_msgSend(a2, "position") + 1, v85 <= objc_msgSend(a2, "length")))
            {
              v86 = [a2 data];
              [v86 getBytes:v360 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v83 |= (v360[0] & 0x7F) << v81;
              if ((v360[0] & 0x80) != 0)
              {
LABEL_125:
                v81 += 7;
                v12 = v82++ >= 9;
                if (v12)
                {
                  v20 = 0;
                  goto LABEL_581;
                }

                continue;
              }
            }

            else
            {
              [a2 _setError];
              v83 |= (v360[0] & 0x7F) << v81;
              if ((v360[0] & 0x80) != 0)
              {
                goto LABEL_125;
              }
            }

            break;
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v83;
          }

LABEL_581:
          v358 = 164;
          goto LABEL_766;
        case 0x12u:
          v190 = 0;
          v191 = 0;
          v192 = 0;
          *(a1 + 248) |= 8uLL;
          while (2)
          {
            LOBYTE(v360[0]) = 0;
            v193 = [a2 position] + 1;
            if (v193 >= [a2 position] && (v194 = objc_msgSend(a2, "position") + 1, v194 <= objc_msgSend(a2, "length")))
            {
              v195 = [a2 data];
              [v195 getBytes:v360 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v192 |= (v360[0] & 0x7F) << v190;
              if ((v360[0] & 0x80) != 0)
              {
LABEL_290:
                v190 += 7;
                v12 = v191++ >= 9;
                if (v12)
                {
                  v20 = 0;
                  goto LABEL_657;
                }

                continue;
              }
            }

            else
            {
              [a2 _setError];
              v192 |= (v360[0] & 0x7F) << v190;
              if ((v360[0] & 0x80) != 0)
              {
                goto LABEL_290;
              }
            }

            break;
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v192;
          }

LABEL_657:
          v358 = 20;
          goto LABEL_766;
        case 0x13u:
          v232 = 0;
          v233 = 0;
          v234 = 0;
          *(a1 + 248) |= 0x200uLL;
          while (2)
          {
            LOBYTE(v360[0]) = 0;
            v235 = [a2 position] + 1;
            if (v235 >= [a2 position] && (v236 = objc_msgSend(a2, "position") + 1, v236 <= objc_msgSend(a2, "length")))
            {
              v237 = [a2 data];
              [v237 getBytes:v360 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v234 |= (v360[0] & 0x7F) << v232;
              if ((v360[0] & 0x80) != 0)
              {
LABEL_353:
                v232 += 7;
                v12 = v233++ >= 9;
                if (v12)
                {
                  v20 = 0;
                  goto LABEL_685;
                }

                continue;
              }
            }

            else
            {
              [a2 _setError];
              v234 |= (v360[0] & 0x7F) << v232;
              if ((v360[0] & 0x80) != 0)
              {
                goto LABEL_353;
              }
            }

            break;
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v234;
          }

LABEL_685:
          v358 = 44;
          goto LABEL_766;
        case 0x14u:
          v280 = 0;
          v281 = 0;
          v282 = 0;
          *(a1 + 248) |= 0x800000000uLL;
          while (2)
          {
            LOBYTE(v360[0]) = 0;
            v283 = [a2 position] + 1;
            if (v283 >= [a2 position] && (v284 = objc_msgSend(a2, "position") + 1, v284 <= objc_msgSend(a2, "length")))
            {
              v285 = [a2 data];
              [v285 getBytes:v360 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v282 |= (v360[0] & 0x7F) << v280;
              if ((v360[0] & 0x80) != 0)
              {
LABEL_425:
                v280 += 7;
                v12 = v281++ >= 9;
                if (v12)
                {
                  v20 = 0;
                  goto LABEL_717;
                }

                continue;
              }
            }

            else
            {
              [a2 _setError];
              v282 |= (v360[0] & 0x7F) << v280;
              if ((v360[0] & 0x80) != 0)
              {
                goto LABEL_425;
              }
            }

            break;
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v282;
          }

LABEL_717:
          v358 = 160;
          goto LABEL_766;
        case 0x15u:
          v202 = 0;
          v203 = 0;
          v204 = 0;
          *(a1 + 248) |= 0x400000000uLL;
          while (2)
          {
            LOBYTE(v360[0]) = 0;
            v205 = [a2 position] + 1;
            if (v205 >= [a2 position] && (v206 = objc_msgSend(a2, "position") + 1, v206 <= objc_msgSend(a2, "length")))
            {
              v207 = [a2 data];
              [v207 getBytes:v360 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v204 |= (v360[0] & 0x7F) << v202;
              if ((v360[0] & 0x80) != 0)
              {
LABEL_308:
                v202 += 7;
                v12 = v203++ >= 9;
                if (v12)
                {
                  v20 = 0;
                  goto LABEL_665;
                }

                continue;
              }
            }

            else
            {
              [a2 _setError];
              v204 |= (v360[0] & 0x7F) << v202;
              if ((v360[0] & 0x80) != 0)
              {
                goto LABEL_308;
              }
            }

            break;
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v204;
          }

LABEL_665:
          v358 = 156;
          goto LABEL_766;
        case 0x16u:
          v214 = 0;
          v215 = 0;
          v216 = 0;
          *(a1 + 248) |= 0x1000000000000uLL;
          while (2)
          {
            LOBYTE(v360[0]) = 0;
            v217 = [a2 position] + 1;
            if (v217 >= [a2 position] && (v218 = objc_msgSend(a2, "position") + 1, v218 <= objc_msgSend(a2, "length")))
            {
              v219 = [a2 data];
              [v219 getBytes:v360 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v216 |= (v360[0] & 0x7F) << v214;
              if ((v360[0] & 0x80) != 0)
              {
LABEL_326:
                v214 += 7;
                v12 = v215++ >= 9;
                if (v12)
                {
                  v20 = 0;
                  goto LABEL_673;
                }

                continue;
              }
            }

            else
            {
              [a2 _setError];
              v216 |= (v360[0] & 0x7F) << v214;
              if ((v360[0] & 0x80) != 0)
              {
                goto LABEL_326;
              }
            }

            break;
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v216;
          }

LABEL_673:
          v358 = 212;
          goto LABEL_766;
        case 0x17u:
          v268 = 0;
          v269 = 0;
          v270 = 0;
          *(a1 + 248) |= 0x800000000000uLL;
          while (2)
          {
            LOBYTE(v360[0]) = 0;
            v271 = [a2 position] + 1;
            if (v271 >= [a2 position] && (v272 = objc_msgSend(a2, "position") + 1, v272 <= objc_msgSend(a2, "length")))
            {
              v273 = [a2 data];
              [v273 getBytes:v360 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v270 |= (v360[0] & 0x7F) << v268;
              if ((v360[0] & 0x80) != 0)
              {
LABEL_407:
                v268 += 7;
                v12 = v269++ >= 9;
                if (v12)
                {
                  v20 = 0;
                  goto LABEL_709;
                }

                continue;
              }
            }

            else
            {
              [a2 _setError];
              v270 |= (v360[0] & 0x7F) << v268;
              if ((v360[0] & 0x80) != 0)
              {
                goto LABEL_407;
              }
            }

            break;
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v270;
          }

LABEL_709:
          v358 = 208;
          goto LABEL_766;
        case 0x18u:
          v298 = 0;
          v299 = 0;
          v300 = 0;
          *(a1 + 248) |= 0x20000000000uLL;
          while (2)
          {
            LOBYTE(v360[0]) = 0;
            v301 = [a2 position] + 1;
            if (v301 >= [a2 position] && (v302 = objc_msgSend(a2, "position") + 1, v302 <= objc_msgSend(a2, "length")))
            {
              v303 = [a2 data];
              [v303 getBytes:v360 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v300 |= (v360[0] & 0x7F) << v298;
              if ((v360[0] & 0x80) != 0)
              {
LABEL_452:
                v298 += 7;
                v12 = v299++ >= 9;
                if (v12)
                {
                  v20 = 0;
                  goto LABEL_729;
                }

                continue;
              }
            }

            else
            {
              [a2 _setError];
              v300 |= (v360[0] & 0x7F) << v298;
              if ((v360[0] & 0x80) != 0)
              {
                goto LABEL_452;
              }
            }

            break;
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v300;
          }

LABEL_729:
          v358 = 184;
          goto LABEL_766;
        case 0x19u:
          v148 = 0;
          v149 = 0;
          v150 = 0;
          *(a1 + 248) |= 0x40000000000uLL;
          while (2)
          {
            LOBYTE(v360[0]) = 0;
            v151 = [a2 position] + 1;
            if (v151 >= [a2 position] && (v152 = objc_msgSend(a2, "position") + 1, v152 <= objc_msgSend(a2, "length")))
            {
              v153 = [a2 data];
              [v153 getBytes:v360 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v150 |= (v360[0] & 0x7F) << v148;
              if ((v360[0] & 0x80) != 0)
              {
LABEL_227:
                v148 += 7;
                v12 = v149++ >= 9;
                if (v12)
                {
                  v20 = 0;
                  goto LABEL_625;
                }

                continue;
              }
            }

            else
            {
              [a2 _setError];
              v150 |= (v360[0] & 0x7F) << v148;
              if ((v360[0] & 0x80) != 0)
              {
                goto LABEL_227;
              }
            }

            break;
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v150;
          }

LABEL_625:
          v358 = 188;
          goto LABEL_766;
        case 0x1Au:
          v142 = 0;
          v143 = 0;
          v144 = 0;
          *(a1 + 248) |= 0x80000000000uLL;
          while (2)
          {
            LOBYTE(v360[0]) = 0;
            v145 = [a2 position] + 1;
            if (v145 >= [a2 position] && (v146 = objc_msgSend(a2, "position") + 1, v146 <= objc_msgSend(a2, "length")))
            {
              v147 = [a2 data];
              [v147 getBytes:v360 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v144 |= (v360[0] & 0x7F) << v142;
              if ((v360[0] & 0x80) != 0)
              {
LABEL_218:
                v142 += 7;
                v12 = v143++ >= 9;
                if (v12)
                {
                  v20 = 0;
                  goto LABEL_621;
                }

                continue;
              }
            }

            else
            {
              [a2 _setError];
              v144 |= (v360[0] & 0x7F) << v142;
              if ((v360[0] & 0x80) != 0)
              {
                goto LABEL_218;
              }
            }

            break;
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v144;
          }

LABEL_621:
          v358 = 192;
          goto LABEL_766;
        case 0x1Bu:
          v322 = 0;
          v323 = 0;
          v324 = 0;
          *(a1 + 248) |= 0x2000000000000uLL;
          while (2)
          {
            LOBYTE(v360[0]) = 0;
            v325 = [a2 position] + 1;
            if (v325 >= [a2 position] && (v326 = objc_msgSend(a2, "position") + 1, v326 <= objc_msgSend(a2, "length")))
            {
              v327 = [a2 data];
              [v327 getBytes:v360 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v324 |= (v360[0] & 0x7F) << v322;
              if ((v360[0] & 0x80) != 0)
              {
LABEL_488:
                v322 += 7;
                v12 = v323++ >= 9;
                if (v12)
                {
                  v20 = 0;
                  goto LABEL_745;
                }

                continue;
              }
            }

            else
            {
              [a2 _setError];
              v324 |= (v360[0] & 0x7F) << v322;
              if ((v360[0] & 0x80) != 0)
              {
                goto LABEL_488;
              }
            }

            break;
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v324;
          }

LABEL_745:
          v358 = 216;
          goto LABEL_766;
        case 0x1Cu:
          v69 = 0;
          v70 = 0;
          v71 = 0;
          *(a1 + 248) |= 0x10000000000000uLL;
          while (2)
          {
            LOBYTE(v360[0]) = 0;
            v72 = [a2 position] + 1;
            if (v72 >= [a2 position] && (v73 = objc_msgSend(a2, "position") + 1, v73 <= objc_msgSend(a2, "length")))
            {
              v74 = [a2 data];
              [v74 getBytes:v360 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v71 |= (v360[0] & 0x7F) << v69;
              if ((v360[0] & 0x80) != 0)
              {
LABEL_107:
                v69 += 7;
                v12 = v70++ >= 9;
                if (v12)
                {
                  v20 = 0;
                  goto LABEL_573;
                }

                continue;
              }
            }

            else
            {
              [a2 _setError];
              v71 |= (v360[0] & 0x7F) << v69;
              if ((v360[0] & 0x80) != 0)
              {
                goto LABEL_107;
              }
            }

            break;
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v71;
          }

LABEL_573:
          v358 = 228;
          goto LABEL_766;
        case 0x1Du:
          v304 = 0;
          v305 = 0;
          v306 = 0;
          *(a1 + 248) |= 0x8000000000000uLL;
          while (2)
          {
            LOBYTE(v360[0]) = 0;
            v307 = [a2 position] + 1;
            if (v307 >= [a2 position] && (v308 = objc_msgSend(a2, "position") + 1, v308 <= objc_msgSend(a2, "length")))
            {
              v309 = [a2 data];
              [v309 getBytes:v360 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v306 |= (v360[0] & 0x7F) << v304;
              if ((v360[0] & 0x80) != 0)
              {
LABEL_461:
                v304 += 7;
                v12 = v305++ >= 9;
                if (v12)
                {
                  v20 = 0;
                  goto LABEL_733;
                }

                continue;
              }
            }

            else
            {
              [a2 _setError];
              v306 |= (v360[0] & 0x7F) << v304;
              if ((v360[0] & 0x80) != 0)
              {
                goto LABEL_461;
              }
            }

            break;
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v306;
          }

LABEL_733:
          v358 = 224;
          goto LABEL_766;
        case 0x1Eu:
          v310 = 0;
          v311 = 0;
          v312 = 0;
          *(a1 + 248) |= 0x20000000000000uLL;
          while (2)
          {
            LOBYTE(v360[0]) = 0;
            v313 = [a2 position] + 1;
            if (v313 >= [a2 position] && (v314 = objc_msgSend(a2, "position") + 1, v314 <= objc_msgSend(a2, "length")))
            {
              v315 = [a2 data];
              [v315 getBytes:v360 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v312 |= (v360[0] & 0x7F) << v310;
              if ((v360[0] & 0x80) != 0)
              {
LABEL_470:
                v310 += 7;
                v12 = v311++ >= 9;
                if (v12)
                {
                  v20 = 0;
                  goto LABEL_737;
                }

                continue;
              }
            }

            else
            {
              [a2 _setError];
              v312 |= (v360[0] & 0x7F) << v310;
              if ((v360[0] & 0x80) != 0)
              {
                goto LABEL_470;
              }
            }

            break;
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v312;
          }

LABEL_737:
          v358 = 232;
          goto LABEL_766;
        case 0x1Fu:
          v250 = 0;
          v251 = 0;
          v252 = 0;
          *(a1 + 248) |= 0x40000000000000uLL;
          while (2)
          {
            LOBYTE(v360[0]) = 0;
            v253 = [a2 position] + 1;
            if (v253 >= [a2 position] && (v254 = objc_msgSend(a2, "position") + 1, v254 <= objc_msgSend(a2, "length")))
            {
              v255 = [a2 data];
              [v255 getBytes:v360 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v252 |= (v360[0] & 0x7F) << v250;
              if ((v360[0] & 0x80) != 0)
              {
LABEL_380:
                v250 += 7;
                v12 = v251++ >= 9;
                if (v12)
                {
                  v20 = 0;
                  goto LABEL_697;
                }

                continue;
              }
            }

            else
            {
              [a2 _setError];
              v252 |= (v360[0] & 0x7F) << v250;
              if ((v360[0] & 0x80) != 0)
              {
                goto LABEL_380;
              }
            }

            break;
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v252;
          }

LABEL_697:
          v358 = 236;
          goto LABEL_766;
        case 0x20u:
          v184 = 0;
          v185 = 0;
          v186 = 0;
          *(a1 + 248) |= 0x80000000000000uLL;
          while (2)
          {
            LOBYTE(v360[0]) = 0;
            v187 = [a2 position] + 1;
            if (v187 >= [a2 position] && (v188 = objc_msgSend(a2, "position") + 1, v188 <= objc_msgSend(a2, "length")))
            {
              v189 = [a2 data];
              [v189 getBytes:v360 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v186 |= (v360[0] & 0x7F) << v184;
              if ((v360[0] & 0x80) != 0)
              {
LABEL_281:
                v184 += 7;
                v12 = v185++ >= 9;
                if (v12)
                {
                  v20 = 0;
                  goto LABEL_653;
                }

                continue;
              }
            }

            else
            {
              [a2 _setError];
              v186 |= (v360[0] & 0x7F) << v184;
              if ((v360[0] & 0x80) != 0)
              {
                goto LABEL_281;
              }
            }

            break;
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v186;
          }

LABEL_653:
          v358 = 240;
          goto LABEL_766;
        case 0x21u:
          v256 = 0;
          v257 = 0;
          v258 = 0;
          *(a1 + 248) |= 0x4000000000000uLL;
          while (2)
          {
            LOBYTE(v360[0]) = 0;
            v259 = [a2 position] + 1;
            if (v259 >= [a2 position] && (v260 = objc_msgSend(a2, "position") + 1, v260 <= objc_msgSend(a2, "length")))
            {
              v261 = [a2 data];
              [v261 getBytes:v360 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v258 |= (v360[0] & 0x7F) << v256;
              if ((v360[0] & 0x80) != 0)
              {
LABEL_389:
                v256 += 7;
                v12 = v257++ >= 9;
                if (v12)
                {
                  v20 = 0;
                  goto LABEL_701;
                }

                continue;
              }
            }

            else
            {
              [a2 _setError];
              v258 |= (v360[0] & 0x7F) << v256;
              if ((v360[0] & 0x80) != 0)
              {
                goto LABEL_389;
              }
            }

            break;
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v258;
          }

LABEL_701:
          v358 = 220;
          goto LABEL_766;
        case 0x22u:
          v99 = 0;
          v100 = 0;
          v101 = 0;
          *(a1 + 248) |= 0x100000000000000uLL;
          while (2)
          {
            LOBYTE(v360[0]) = 0;
            v102 = [a2 position] + 1;
            if (v102 >= [a2 position] && (v103 = objc_msgSend(a2, "position") + 1, v103 <= objc_msgSend(a2, "length")))
            {
              v104 = [a2 data];
              [v104 getBytes:v360 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v101 |= (v360[0] & 0x7F) << v99;
              if ((v360[0] & 0x80) != 0)
              {
LABEL_152:
                v99 += 7;
                v12 = v100++ >= 9;
                if (v12)
                {
                  v20 = 0;
                  goto LABEL_593;
                }

                continue;
              }
            }

            else
            {
              [a2 _setError];
              v101 |= (v360[0] & 0x7F) << v99;
              if ((v360[0] & 0x80) != 0)
              {
                goto LABEL_152;
              }
            }

            break;
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v101;
          }

LABEL_593:
          v358 = 244;
          goto LABEL_766;
        case 0x23u:
          v75 = 0;
          v76 = 0;
          v77 = 0;
          *(a1 + 248) |= 0x400000000000uLL;
          while (2)
          {
            LOBYTE(v360[0]) = 0;
            v78 = [a2 position] + 1;
            if (v78 >= [a2 position] && (v79 = objc_msgSend(a2, "position") + 1, v79 <= objc_msgSend(a2, "length")))
            {
              v80 = [a2 data];
              [v80 getBytes:v360 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v77 |= (v360[0] & 0x7F) << v75;
              if ((v360[0] & 0x80) != 0)
              {
LABEL_116:
                v75 += 7;
                v12 = v76++ >= 9;
                if (v12)
                {
                  v20 = 0;
                  goto LABEL_577;
                }

                continue;
              }
            }

            else
            {
              [a2 _setError];
              v77 |= (v360[0] & 0x7F) << v75;
              if ((v360[0] & 0x80) != 0)
              {
                goto LABEL_116;
              }
            }

            break;
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v77;
          }

LABEL_577:
          v358 = 204;
          goto LABEL_766;
        case 0x24u:
          v57 = 0;
          v58 = 0;
          v59 = 0;
          *(a1 + 248) |= 0x100000000000uLL;
          while (2)
          {
            LOBYTE(v360[0]) = 0;
            v60 = [a2 position] + 1;
            if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
            {
              v62 = [a2 data];
              [v62 getBytes:v360 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v59 |= (v360[0] & 0x7F) << v57;
              if ((v360[0] & 0x80) != 0)
              {
LABEL_89:
                v57 += 7;
                v12 = v58++ >= 9;
                if (v12)
                {
                  v20 = 0;
                  goto LABEL_565;
                }

                continue;
              }
            }

            else
            {
              [a2 _setError];
              v59 |= (v360[0] & 0x7F) << v57;
              if ((v360[0] & 0x80) != 0)
              {
                goto LABEL_89;
              }
            }

            break;
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v59;
          }

LABEL_565:
          v358 = 196;
          goto LABEL_766;
        case 0x25u:
          v63 = 0;
          v64 = 0;
          v65 = 0;
          *(a1 + 248) |= 0x200000000000uLL;
          while (2)
          {
            LOBYTE(v360[0]) = 0;
            v66 = [a2 position] + 1;
            if (v66 >= [a2 position] && (v67 = objc_msgSend(a2, "position") + 1, v67 <= objc_msgSend(a2, "length")))
            {
              v68 = [a2 data];
              [v68 getBytes:v360 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v65 |= (v360[0] & 0x7F) << v63;
              if ((v360[0] & 0x80) != 0)
              {
LABEL_98:
                v63 += 7;
                v12 = v64++ >= 9;
                if (v12)
                {
                  v20 = 0;
                  goto LABEL_569;
                }

                continue;
              }
            }

            else
            {
              [a2 _setError];
              v65 |= (v360[0] & 0x7F) << v63;
              if ((v360[0] & 0x80) != 0)
              {
                goto LABEL_98;
              }
            }

            break;
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v65;
          }

LABEL_569:
          v358 = 200;
          goto LABEL_766;
        case 0x26u:
          v33 = 0;
          v34 = 0;
          v35 = 0;
          *(a1 + 248) |= 0x10000000000uLL;
          while (2)
          {
            LOBYTE(v360[0]) = 0;
            v36 = [a2 position] + 1;
            if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
            {
              v38 = [a2 data];
              [v38 getBytes:v360 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v35 |= (v360[0] & 0x7F) << v33;
              if ((v360[0] & 0x80) != 0)
              {
LABEL_53:
                v33 += 7;
                v12 = v34++ >= 9;
                if (v12)
                {
                  v20 = 0;
                  goto LABEL_549;
                }

                continue;
              }
            }

            else
            {
              [a2 _setError];
              v35 |= (v360[0] & 0x7F) << v33;
              if ((v360[0] & 0x80) != 0)
              {
                goto LABEL_53;
              }
            }

            break;
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v35;
          }

LABEL_549:
          v358 = 180;
          goto LABEL_766;
        case 0x27u:
          v316 = 0;
          v317 = 0;
          v318 = 0;
          *(a1 + 248) |= 0x80uLL;
          while (2)
          {
            LOBYTE(v360[0]) = 0;
            v319 = [a2 position] + 1;
            if (v319 >= [a2 position] && (v320 = objc_msgSend(a2, "position") + 1, v320 <= objc_msgSend(a2, "length")))
            {
              v321 = [a2 data];
              [v321 getBytes:v360 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v318 |= (v360[0] & 0x7F) << v316;
              if ((v360[0] & 0x80) != 0)
              {
LABEL_479:
                v316 += 7;
                v12 = v317++ >= 9;
                if (v12)
                {
                  v20 = 0;
                  goto LABEL_741;
                }

                continue;
              }
            }

            else
            {
              [a2 _setError];
              v318 |= (v360[0] & 0x7F) << v316;
              if ((v360[0] & 0x80) != 0)
              {
                goto LABEL_479;
              }
            }

            break;
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v318;
          }

LABEL_741:
          v358 = 36;
          goto LABEL_766;
        case 0x28u:
          v274 = 0;
          v275 = 0;
          v276 = 0;
          *(a1 + 248) |= 0x40000000uLL;
          while (2)
          {
            LOBYTE(v360[0]) = 0;
            v277 = [a2 position] + 1;
            if (v277 >= [a2 position] && (v278 = objc_msgSend(a2, "position") + 1, v278 <= objc_msgSend(a2, "length")))
            {
              v279 = [a2 data];
              [v279 getBytes:v360 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v276 |= (v360[0] & 0x7F) << v274;
              if ((v360[0] & 0x80) != 0)
              {
LABEL_416:
                v274 += 7;
                v12 = v275++ >= 9;
                if (v12)
                {
                  v20 = 0;
                  goto LABEL_713;
                }

                continue;
              }
            }

            else
            {
              [a2 _setError];
              v276 |= (v360[0] & 0x7F) << v274;
              if ((v360[0] & 0x80) != 0)
              {
                goto LABEL_416;
              }
            }

            break;
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v276;
          }

LABEL_713:
          v358 = 128;
          goto LABEL_766;
        case 0x29u:
          v124 = 0;
          v125 = 0;
          v126 = 0;
          *(a1 + 248) |= 0x10000000uLL;
          while (2)
          {
            LOBYTE(v360[0]) = 0;
            v127 = [a2 position] + 1;
            if (v127 >= [a2 position] && (v128 = objc_msgSend(a2, "position") + 1, v128 <= objc_msgSend(a2, "length")))
            {
              v129 = [a2 data];
              [v129 getBytes:v360 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v126 |= (v360[0] & 0x7F) << v124;
              if ((v360[0] & 0x80) != 0)
              {
LABEL_191:
                v124 += 7;
                v12 = v125++ >= 9;
                if (v12)
                {
                  v20 = 0;
                  goto LABEL_609;
                }

                continue;
              }
            }

            else
            {
              [a2 _setError];
              v126 |= (v360[0] & 0x7F) << v124;
              if ((v360[0] & 0x80) != 0)
              {
                goto LABEL_191;
              }
            }

            break;
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v126;
          }

LABEL_609:
          v358 = 120;
          goto LABEL_766;
        case 0x2Au:
          v196 = 0;
          v197 = 0;
          v198 = 0;
          *(a1 + 248) |= 0x800000uLL;
          while (2)
          {
            LOBYTE(v360[0]) = 0;
            v199 = [a2 position] + 1;
            if (v199 >= [a2 position] && (v200 = objc_msgSend(a2, "position") + 1, v200 <= objc_msgSend(a2, "length")))
            {
              v201 = [a2 data];
              [v201 getBytes:v360 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v198 |= (v360[0] & 0x7F) << v196;
              if ((v360[0] & 0x80) != 0)
              {
LABEL_299:
                v196 += 7;
                v12 = v197++ >= 9;
                if (v12)
                {
                  v20 = 0;
                  goto LABEL_661;
                }

                continue;
              }
            }

            else
            {
              [a2 _setError];
              v198 |= (v360[0] & 0x7F) << v196;
              if ((v360[0] & 0x80) != 0)
              {
                goto LABEL_299;
              }
            }

            break;
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v198;
          }

LABEL_661:
          v358 = 100;
          goto LABEL_766;
        case 0x2Bu:
          v292 = 0;
          v293 = 0;
          v294 = 0;
          *(a1 + 248) |= 0x8000000uLL;
          while (2)
          {
            LOBYTE(v360[0]) = 0;
            v295 = [a2 position] + 1;
            if (v295 >= [a2 position] && (v296 = objc_msgSend(a2, "position") + 1, v296 <= objc_msgSend(a2, "length")))
            {
              v297 = [a2 data];
              [v297 getBytes:v360 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v294 |= (v360[0] & 0x7F) << v292;
              if ((v360[0] & 0x80) != 0)
              {
LABEL_443:
                v292 += 7;
                v12 = v293++ >= 9;
                if (v12)
                {
                  v20 = 0;
                  goto LABEL_725;
                }

                continue;
              }
            }

            else
            {
              [a2 _setError];
              v294 |= (v360[0] & 0x7F) << v292;
              if ((v360[0] & 0x80) != 0)
              {
                goto LABEL_443;
              }
            }

            break;
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v294;
          }

LABEL_725:
          v358 = 116;
          goto LABEL_766;
        case 0x2Cu:
          v27 = 0;
          v28 = 0;
          v29 = 0;
          *(a1 + 248) |= 0x2000000uLL;
          while (2)
          {
            LOBYTE(v360[0]) = 0;
            v30 = [a2 position] + 1;
            if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
            {
              v32 = [a2 data];
              [v32 getBytes:v360 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v29 |= (v360[0] & 0x7F) << v27;
              if ((v360[0] & 0x80) != 0)
              {
LABEL_44:
                v27 += 7;
                v12 = v28++ >= 9;
                if (v12)
                {
                  v20 = 0;
                  goto LABEL_545;
                }

                continue;
              }
            }

            else
            {
              [a2 _setError];
              v29 |= (v360[0] & 0x7F) << v27;
              if ((v360[0] & 0x80) != 0)
              {
                goto LABEL_44;
              }
            }

            break;
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v29;
          }

LABEL_545:
          v358 = 108;
          goto LABEL_766;
        case 0x2Du:
          v87 = 0;
          v88 = 0;
          v89 = 0;
          *(a1 + 248) |= 0x80000000uLL;
          while (2)
          {
            LOBYTE(v360[0]) = 0;
            v90 = [a2 position] + 1;
            if (v90 >= [a2 position] && (v91 = objc_msgSend(a2, "position") + 1, v91 <= objc_msgSend(a2, "length")))
            {
              v92 = [a2 data];
              [v92 getBytes:v360 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v89 |= (v360[0] & 0x7F) << v87;
              if ((v360[0] & 0x80) != 0)
              {
LABEL_134:
                v87 += 7;
                v12 = v88++ >= 9;
                if (v12)
                {
                  v20 = 0;
                  goto LABEL_585;
                }

                continue;
              }
            }

            else
            {
              [a2 _setError];
              v89 |= (v360[0] & 0x7F) << v87;
              if ((v360[0] & 0x80) != 0)
              {
                goto LABEL_134;
              }
            }

            break;
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v89;
          }

LABEL_585:
          v358 = 132;
          goto LABEL_766;
        case 0x2Eu:
          v262 = 0;
          v263 = 0;
          v264 = 0;
          *(a1 + 248) |= &_mh_execute_header;
          while (2)
          {
            LOBYTE(v360[0]) = 0;
            v265 = [a2 position] + 1;
            if (v265 >= [a2 position] && (v266 = objc_msgSend(a2, "position") + 1, v266 <= objc_msgSend(a2, "length")))
            {
              v267 = [a2 data];
              [v267 getBytes:v360 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v264 |= (v360[0] & 0x7F) << v262;
              if ((v360[0] & 0x80) != 0)
              {
LABEL_398:
                v262 += 7;
                v12 = v263++ >= 9;
                if (v12)
                {
                  v20 = 0;
                  goto LABEL_705;
                }

                continue;
              }
            }

            else
            {
              [a2 _setError];
              v264 |= (v360[0] & 0x7F) << v262;
              if ((v360[0] & 0x80) != 0)
              {
                goto LABEL_398;
              }
            }

            break;
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v264;
          }

LABEL_705:
          v358 = 136;
          goto LABEL_766;
        case 0x2Fu:
          v346 = 0;
          v347 = 0;
          v348 = 0;
          *(a1 + 248) |= 0x40000uLL;
          while (2)
          {
            LOBYTE(v360[0]) = 0;
            v349 = [a2 position] + 1;
            if (v349 >= [a2 position] && (v350 = objc_msgSend(a2, "position") + 1, v350 <= objc_msgSend(a2, "length")))
            {
              v351 = [a2 data];
              [v351 getBytes:v360 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v348 |= (v360[0] & 0x7F) << v346;
              if ((v360[0] & 0x80) != 0)
              {
LABEL_524:
                v346 += 7;
                v12 = v347++ >= 9;
                if (v12)
                {
                  v20 = 0;
                  goto LABEL_761;
                }

                continue;
              }
            }

            else
            {
              [a2 _setError];
              v348 |= (v360[0] & 0x7F) << v346;
              if ((v360[0] & 0x80) != 0)
              {
                goto LABEL_524;
              }
            }

            break;
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v348;
          }

LABEL_761:
          v358 = 80;
          goto LABEL_766;
        case 0x30u:
          v45 = 0;
          v46 = 0;
          v47 = 0;
          *(a1 + 248) |= 0x1000000uLL;
          while (2)
          {
            LOBYTE(v360[0]) = 0;
            v48 = [a2 position] + 1;
            if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 1, v49 <= objc_msgSend(a2, "length")))
            {
              v50 = [a2 data];
              [v50 getBytes:v360 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v47 |= (v360[0] & 0x7F) << v45;
              if ((v360[0] & 0x80) != 0)
              {
LABEL_71:
                v45 += 7;
                v12 = v46++ >= 9;
                if (v12)
                {
                  v20 = 0;
                  goto LABEL_557;
                }

                continue;
              }
            }

            else
            {
              [a2 _setError];
              v47 |= (v360[0] & 0x7F) << v45;
              if ((v360[0] & 0x80) != 0)
              {
                goto LABEL_71;
              }
            }

            break;
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v47;
          }

LABEL_557:
          v358 = 104;
          goto LABEL_766;
        case 0x31u:
          v105 = 0;
          v106 = 0;
          v107 = 0;
          *(a1 + 248) |= 0x20000000uLL;
          while (2)
          {
            LOBYTE(v360[0]) = 0;
            v108 = [a2 position] + 1;
            if (v108 >= [a2 position] && (v109 = objc_msgSend(a2, "position") + 1, v109 <= objc_msgSend(a2, "length")))
            {
              v110 = [a2 data];
              [v110 getBytes:v360 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v107 |= (v360[0] & 0x7F) << v105;
              if ((v360[0] & 0x80) != 0)
              {
LABEL_161:
                v105 += 7;
                v12 = v106++ >= 9;
                if (v12)
                {
                  v20 = 0;
                  goto LABEL_597;
                }

                continue;
              }
            }

            else
            {
              [a2 _setError];
              v107 |= (v360[0] & 0x7F) << v105;
              if ((v360[0] & 0x80) != 0)
              {
                goto LABEL_161;
              }
            }

            break;
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v107;
          }

LABEL_597:
          v358 = 124;
          goto LABEL_766;
        case 0x32u:
          v117 = 0;
          v118 = 0;
          v119 = 0;
          *(a1 + 248) |= 0x4000000uLL;
          while (2)
          {
            LOBYTE(v360[0]) = 0;
            v120 = [a2 position] + 1;
            if (v120 >= [a2 position] && (v121 = objc_msgSend(a2, "position") + 1, v121 <= objc_msgSend(a2, "length")))
            {
              v122 = [a2 data];
              [v122 getBytes:v360 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v119 |= (v360[0] & 0x7F) << v117;
              if ((v360[0] & 0x80) != 0)
              {
LABEL_179:
                v117 += 7;
                v12 = v118++ >= 9;
                if (v12)
                {
                  v20 = 0;
                  goto LABEL_605;
                }

                continue;
              }
            }

            else
            {
              [a2 _setError];
              v119 |= (v360[0] & 0x7F) << v117;
              if ((v360[0] & 0x80) != 0)
              {
                goto LABEL_179;
              }
            }

            break;
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v119;
          }

LABEL_605:
          v358 = 112;
          goto LABEL_766;
        case 0x33u:
          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 248) |= 0x400000uLL;
          while (2)
          {
            LOBYTE(v360[0]) = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:v360 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v23 |= (v360[0] & 0x7F) << v21;
              if ((v360[0] & 0x80) != 0)
              {
LABEL_35:
                v21 += 7;
                v12 = v22++ >= 9;
                if (v12)
                {
                  v20 = 0;
                  goto LABEL_541;
                }

                continue;
              }
            }

            else
            {
              [a2 _setError];
              v23 |= (v360[0] & 0x7F) << v21;
              if ((v360[0] & 0x80) != 0)
              {
                goto LABEL_35;
              }
            }

            break;
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v23;
          }

LABEL_541:
          v358 = 96;
          goto LABEL_766;
        case 0x34u:
          v352 = 0;
          v353 = 0;
          v354 = 0;
          *(a1 + 248) |= 0x200000uLL;
          while (2)
          {
            LOBYTE(v360[0]) = 0;
            v355 = [a2 position] + 1;
            if (v355 >= [a2 position] && (v356 = objc_msgSend(a2, "position") + 1, v356 <= objc_msgSend(a2, "length")))
            {
              v357 = [a2 data];
              [v357 getBytes:v360 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v354 |= (v360[0] & 0x7F) << v352;
              if ((v360[0] & 0x80) != 0)
              {
LABEL_533:
                v352 += 7;
                v12 = v353++ >= 9;
                if (v12)
                {
                  v20 = 0;
                  goto LABEL_765;
                }

                continue;
              }
            }

            else
            {
              [a2 _setError];
              v354 |= (v360[0] & 0x7F) << v352;
              if ((v360[0] & 0x80) != 0)
              {
                goto LABEL_533;
              }
            }

            break;
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v354;
          }

LABEL_765:
          v358 = 92;
LABEL_766:
          *(a1 + v358) = v20;
LABEL_767:
          v4 = a2;
          goto LABEL_2;
        case 0x35u:
          v340 = 0;
          v341 = 0;
          v342 = 0;
          *(a1 + 248) |= 0x100000uLL;
          while (2)
          {
            LOBYTE(v360[0]) = 0;
            v343 = [a2 position] + 1;
            if (v343 >= [a2 position] && (v344 = objc_msgSend(a2, "position") + 1, v344 <= objc_msgSend(a2, "length")))
            {
              v345 = [a2 data];
              [v345 getBytes:v360 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v342 |= (v360[0] & 0x7F) << v340;
              if ((v360[0] & 0x80) != 0)
              {
LABEL_515:
                v340 += 7;
                v12 = v341++ >= 9;
                if (v12)
                {
                  v20 = 0;
                  goto LABEL_757;
                }

                continue;
              }
            }

            else
            {
              [a2 _setError];
              v342 |= (v360[0] & 0x7F) << v340;
              if ((v360[0] & 0x80) != 0)
              {
                goto LABEL_515;
              }
            }

            break;
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v342;
          }

LABEL_757:
          v358 = 88;
          goto LABEL_766;
        case 0x36u:
          v39 = 0;
          v40 = 0;
          v41 = 0;
          *(a1 + 248) |= 0x80000uLL;
          while (2)
          {
            LOBYTE(v360[0]) = 0;
            v42 = [a2 position] + 1;
            if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
            {
              v44 = [a2 data];
              [v44 getBytes:v360 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v41 |= (v360[0] & 0x7F) << v39;
              if ((v360[0] & 0x80) != 0)
              {
LABEL_62:
                v39 += 7;
                v12 = v40++ >= 9;
                if (v12)
                {
                  v20 = 0;
                  goto LABEL_553;
                }

                continue;
              }
            }

            else
            {
              [a2 _setError];
              v41 |= (v360[0] & 0x7F) << v39;
              if ((v360[0] & 0x80) != 0)
              {
                goto LABEL_62;
              }
            }

            break;
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v41;
          }

LABEL_553:
          v358 = 84;
          goto LABEL_766;
        case 0x37u:
          v328 = 0;
          v329 = 0;
          v330 = 0;
          *(a1 + 248) |= 0x200000000uLL;
          while (2)
          {
            LOBYTE(v360[0]) = 0;
            v331 = [a2 position] + 1;
            if (v331 >= [a2 position] && (v332 = objc_msgSend(a2, "position") + 1, v332 <= objc_msgSend(a2, "length")))
            {
              v333 = [a2 data];
              [v333 getBytes:v360 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v330 |= (v360[0] & 0x7F) << v328;
              if ((v360[0] & 0x80) != 0)
              {
LABEL_497:
                v328 += 7;
                v12 = v329++ >= 9;
                if (v12)
                {
                  v20 = 0;
                  goto LABEL_749;
                }

                continue;
              }
            }

            else
            {
              [a2 _setError];
              v330 |= (v360[0] & 0x7F) << v328;
              if ((v360[0] & 0x80) != 0)
              {
                goto LABEL_497;
              }
            }

            break;
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v330;
          }

LABEL_749:
          v358 = 152;
          goto LABEL_766;
        case 0x38u:
          v334 = 0;
          v335 = 0;
          v336 = 0;
          *(a1 + 248) |= 4uLL;
          while (2)
          {
            LOBYTE(v360[0]) = 0;
            v337 = [a2 position] + 1;
            if (v337 >= [a2 position] && (v338 = objc_msgSend(a2, "position") + 1, v338 <= objc_msgSend(a2, "length")))
            {
              v339 = [a2 data];
              [v339 getBytes:v360 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v336 |= (v360[0] & 0x7F) << v334;
              if ((v360[0] & 0x80) != 0)
              {
LABEL_506:
                v334 += 7;
                v12 = v335++ >= 9;
                if (v12)
                {
                  v20 = 0;
                  goto LABEL_753;
                }

                continue;
              }
            }

            else
            {
              [a2 _setError];
              v336 |= (v360[0] & 0x7F) << v334;
              if ((v360[0] & 0x80) != 0)
              {
                goto LABEL_506;
              }
            }

            break;
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v336;
          }

LABEL_753:
          v358 = 16;
          goto LABEL_766;
        case 0x39u:
          v51 = 0;
          v52 = 0;
          v53 = 0;
          *(a1 + 248) |= 2uLL;
          while (2)
          {
            LOBYTE(v360[0]) = 0;
            v54 = [a2 position] + 1;
            if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
            {
              v56 = [a2 data];
              [v56 getBytes:v360 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v53 |= (v360[0] & 0x7F) << v51;
              if ((v360[0] & 0x80) != 0)
              {
LABEL_80:
                v51 += 7;
                v12 = v52++ >= 9;
                if (v12)
                {
                  v20 = 0;
                  goto LABEL_561;
                }

                continue;
              }
            }

            else
            {
              [a2 _setError];
              v53 |= (v360[0] & 0x7F) << v51;
              if ((v360[0] & 0x80) != 0)
              {
                goto LABEL_80;
              }
            }

            break;
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v53;
          }

LABEL_561:
          v358 = 12;
          goto LABEL_766;
        case 0x3Au:
          v286 = 0;
          v287 = 0;
          v288 = 0;
          *(a1 + 248) |= 0x20uLL;
          while (2)
          {
            LOBYTE(v360[0]) = 0;
            v289 = [a2 position] + 1;
            if (v289 >= [a2 position] && (v290 = objc_msgSend(a2, "position") + 1, v290 <= objc_msgSend(a2, "length")))
            {
              v291 = [a2 data];
              [v291 getBytes:v360 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              v288 |= (v360[0] & 0x7F) << v286;
              if ((v360[0] & 0x80) != 0)
              {
LABEL_434:
                v286 += 7;
                v12 = v287++ >= 9;
                if (v12)
                {
                  v20 = 0;
                  goto LABEL_721;
                }

                continue;
              }
            }

            else
            {
              [a2 _setError];
              v288 |= (v360[0] & 0x7F) << v286;
              if ((v360[0] & 0x80) != 0)
              {
                goto LABEL_434;
              }
            }

            break;
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v288;
          }

LABEL_721:
          v358 = 28;
          goto LABEL_766;
        default:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            return 0;
          }

          goto LABEL_767;
      }

      goto LABEL_2;
    }
  }

  if ([a2 hasError])
  {
    v13 = 0;
  }

  else
  {
    v13 = v8;
  }

  if (([a2 hasError] & 1) == 0)
  {
    goto LABEL_18;
  }

  return [a2 hasError] ^ 1;
}