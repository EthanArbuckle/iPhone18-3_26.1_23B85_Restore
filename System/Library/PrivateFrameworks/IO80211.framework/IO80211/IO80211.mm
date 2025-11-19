uint64_t Apple80211SetWithIOCTL()
{
  v0 = MEMORY[0x28223BE20]();
  v5 = v4;
  v392 = *MEMORY[0x277D85DE8];
  v391 = 0;
  v389 = 0u;
  v390 = 0u;
  number = 0xAAAAAAAAAAAAAAAALL;
  v388 = 0;
  v387 = 0;
  if (!v0)
  {
    goto LABEL_597;
  }

  v6 = v0;
  if ((*v0 & 0x80000000) != 0 || !*(v0 + 4))
  {
    goto LABEL_597;
  }

  v7 = v3;
  v8 = v2;
  v9 = v1;
  v391 = 0;
  v389 = 0uLL;
  v390 = 0uLL;
  __strlcpy_chk();
  LODWORD(v390) = v5;
  __strlcpy_chk();
  HIBYTE(v388) = 0;
  LQMConfigFromDict = 4294963393;
  if (v5 > 367)
  {
    switch(v5)
    {
      case 380:
        v77 = buffer;
        *buffer = 1;
        *&buffer[4] = v9;
        *&buffer[8] = 0xAAAA000000000000;
        if (v9)
        {
          Value = CFDictionaryGetValue(v8, @"RANGING_TOKEN_ID");
          if (Value)
          {
            v203 = Value;
            v204 = CFGetTypeID(Value);
            if (v204 == CFStringGetTypeID())
            {
              memset(__dst, 170, 20);
              CFStringGetCString(v203, __dst, 20, 0x8000100u);
              strlen(__dst);
              __memcpy_chk();
            }

            else
            {
              if (CFDataGetLength(v203) > 6)
              {
                v362.length = 6;
              }

              else
              {
                v362.length = CFDataGetLength(v203);
              }

              v362.location = 0;
              CFDataGetBytes(v203, v362, &buffer[8]);
            }
          }
        }

        *buffer = 1;
        *&buffer[4] = v9;
        DWORD2(v390) = 16;
        goto LABEL_898;
      case 381:
        LQMConfigFromDict = 4294963396;
        if (!v8 || !v7)
        {
          goto LABEL_902;
        }

        *(__dst + 4) = 0;
        LODWORD(__dst[0]) = 1;
        v230 = CFDictionaryGetValue(v8, @"APPLE80211KEY_RANGING_FOLLOW_MODE");
        number = v230;
        if (v230 && !CFNumberGetValue(v230, kCFNumberSInt32Type, __dst + 4))
        {
          goto LABEL_872;
        }

        v231 = CFDictionaryGetValue(v8, @"APPLE80211KEY_RANGING_FOLLOW_MODE_BAND");
        number = v231;
        if (v231)
        {
          if (!CFNumberGetValue(v231, kCFNumberSInt32Type, &__dst[1]))
          {
            goto LABEL_872;
          }
        }

        DWORD2(v390) = 12;
        v391 = __dst;
        goto LABEL_899;
      case 382:
        v205 = 1;
        goto LABEL_639;
      case 383:
      case 384:
      case 385:
      case 386:
      case 387:
      case 389:
      case 390:
      case 391:
      case 393:
      case 395:
      case 396:
      case 397:
      case 398:
      case 400:
      case 401:
      case 402:
      case 406:
      case 410:
      case 411:
      case 414:
      case 415:
      case 416:
      case 417:
      case 418:
      case 419:
      case 421:
      case 423:
      case 424:
      case 425:
      case 426:
      case 427:
      case 428:
      case 429:
      case 430:
      case 431:
      case 432:
      case 433:
      case 434:
      case 435:
      case 436:
      case 437:
      case 438:
      case 439:
      case 440:
      case 441:
      case 442:
      case 443:
      case 444:
      case 445:
      case 446:
      case 447:
      case 449:
      case 450:
      case 451:
      case 452:
      case 454:
      case 455:
      case 456:
      case 457:
      case 458:
      case 460:
      case 461:
      case 462:
      case 463:
      case 464:
      case 465:
      case 466:
      case 467:
      case 468:
      case 474:
      case 475:
      case 476:
      case 477:
      case 478:
      case 491:
      case 492:
      case 493:
      case 494:
      case 495:
      case 502:
      case 504:
      case 505:
      case 506:
      case 515:
      case 517:
      case 518:
      case 522:
      case 523:
      case 524:
      case 525:
      case 526:
      case 527:
      case 528:
      case 529:
      case 530:
      case 533:
      case 534:
      case 535:
      case 549:
      case 550:
      case 552:
      case 553:
      case 554:
      case 555:
      case 556:
      case 557:
      case 558:
      case 559:
      case 561:
      case 563:
      case 566:
      case 567:
      case 568:
      case 569:
      case 570:
      case 573:
      case 574:
      case 576:
      case 577:
      case 579:
      case 580:
      case 581:
      case 583:
        goto LABEL_902;
      case 388:
        LQMConfigFromDict = 4294963396;
        if (!v8 || !v7)
        {
          goto LABEL_902;
        }

        memset(&__dst[1], 0, 48);
        LODWORD(__dst[0]) = 1;
        HIDWORD(__dst[0]) = CFArrayGetCount(v8);
        if ((HIDWORD(__dst[0]) - 1) > 3)
        {
          goto LABEL_911;
        }

        v206 = 0;
        v207 = &__dst[1] + 4;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v8, v206);
          number = ValueAtIndex;
          if (ValueAtIndex)
          {
            CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, v207);
          }

          ++v206;
          v207 += 12;
        }

        while (v206 < SHIDWORD(__dst[0]));
        v49 = 56;
        break;
      case 392:
        __dst[0] = 1;
        HIDWORD(__dst[0]) = *v8;
        goto LABEL_446;
      case 394:
      case 407:
        goto LABEL_11;
      case 399:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(__dst[0]) = 136315394;
          *(__dst + 4) = "Apple80211SetWithIOCTL";
          WORD2(__dst[1]) = 1024;
          *(&__dst[1] + 6) = 13955;
          _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s:%d Processing APPLE80211_IOC_REASSOCIATE_WITH_CORECAPTURE\n", __dst, 0x12u);
        }

        LODWORD(__dst[0]) = 1;
        *(__dst + 4) = 0u;
        *(&__dst[2] + 4) = 0u;
        *(&__dst[4] + 4) = 0u;
        *(&__dst[6] + 4) = 0u;
        if (!v8)
        {
          goto LABEL_884;
        }

        v249 = CFDictionaryGetValue(v8, @"REASSOC_CC_TRIGGER");
        v250 = v249;
        if (!v249 || CFStringGetLength(v249) >= 65)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buffer = 138412290;
            *&buffer[4] = v250;
            _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "APPLE80211_IOC_REASSOCIATE_WITH_CORECAPTURE: Validation failed... triggerString:%@", buffer, 0xCu);
          }

          goto LABEL_808;
        }

        CFStringGetCStringPtr(v250, 0);
        CFStringGetLength(v250);
        __memcpy_chk();
LABEL_884:
        DWORD2(v390) = 68;
        v391 = __dst;
        if (Apple80211IOCTLSetWrapper())
        {
          goto LABEL_826;
        }

        LQMConfigFromDict = 0;
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_901;
        }

        *buffer = 136315394;
        *&buffer[4] = "Apple80211SetWithIOCTL";
        *&buffer[12] = 1024;
        *&buffer[14] = 0;
        _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Processed APPLE80211_IOC_REASSOCIATE_WITH_CORECAPTURE Ioctl error:%u", buffer, 0x12u);
        goto LABEL_900;
      case 403:
        LQMConfigFromDict = 4294963396;
        if (!v8 || !v7)
        {
          goto LABEL_902;
        }

        buffer[0] = 0;
        memset(__dst, 0, 18);
        v246 = CFDictionaryGetValue(v8, @"HostSoftapNanCapabilityFlag");
        number = v246;
        if (v246)
        {
          v247 = CFGetTypeID(v246);
          if (v247 == CFNumberGetTypeID())
          {
            if (CFNumberGetValue(number, kCFNumberSInt8Type, buffer))
            {
              LOBYTE(__dst[0]) = buffer[0];
            }

            if (buffer[0] == 1)
            {
              v248 = CFDictionaryGetValue(v8, @"HostSoftapNanServiceName");
              CFStringGetCStringPtr(v248, 0x8000100u);
              CFStringGetLength(v248);
              __memcpy_chk();
            }
          }
        }

        v13 = 18;
        goto LABEL_572;
      case 404:
        syslog(3, "[WiFiTimeSync] %s %s:%d APPLE80211_IOC_ENABLE_PACKET_TS\n");
        goto LABEL_593;
      case 405:
        syslog(3, "[WiFiTimeSync] %s %s:%d APPLE80211_IOC_DISABLE_PACKET_TS\n");
LABEL_593:
        if (Apple80211RawSet())
        {
          goto LABEL_594;
        }

        goto LABEL_837;
      case 408:
        *(&__dst[1] + 4) = 0;
        *(__dst + 4) = 0;
        *(&__dst[2] + 4) = 0;
        LODWORD(__dst[0]) = 1;
        SensingRequest = _getSensingRequest(v8, __dst);
        if (SensingRequest)
        {
          goto LABEL_753;
        }

        DWORD2(v390) = 28;
        v391 = __dst;
        if (Apple80211IOCTLSetWrapper())
        {
          goto LABEL_868;
        }

        pthread_mutex_lock((v6 + 1752));
        if (!*(v6 + 1816))
        {
          *(v6 + 1816) = 1;
        }

LABEL_587:
        pthread_mutex_unlock((v6 + 1752));
        goto LABEL_900;
      case 409:
        *(&__dst[1] + 4) = 0;
        *(__dst + 4) = 0;
        *(&__dst[2] + 4) = 0;
        LODWORD(__dst[0]) = 1;
        DWORD2(v390) = 28;
        v391 = __dst;
        if (Apple80211IOCTLSetWrapper())
        {
          goto LABEL_643;
        }

        pthread_mutex_lock((v6 + 1752));
        goto LABEL_587;
      case 412:
      case 413:
        LQMConfigFromDict = 4294963396;
        if (!v8 || !v7)
        {
          goto LABEL_902;
        }

        memset(buffer, 170, 18);
        memset(__dst, 0, 39);
        v63 = CFDictionaryGetValue(v8, @"SSID");
        CFStringGetCStringPtr(v63, 0x8000100u);
        CFStringGetLength(v63);
        __memcpy_chk();
        LODWORD(__dst[4]) = CFStringGetLength(v63);
        v64 = CFDictionaryGetValue(v8, @"BSSID");
        if (!v64)
        {
          goto LABEL_872;
        }

        if (!CFStringGetCString(v64, buffer, 18, 0x8000100u))
        {
          goto LABEL_872;
        }

        v65 = ether_aton(buffer);
        if (!v65)
        {
          goto LABEL_872;
        }

        v66 = *v65->octet;
        *(&__dst[4] + 5) = *&v65->octet[4];
        *(&__dst[4] + 1) = v66;
        v49 = 39;
        break;
      case 420:
        LQMConfigFromDict = 4294963396;
        if (!v8 || !v7)
        {
          goto LABEL_902;
        }

        LOBYTE(__dst[0]) = 0;
        buffer[0] = 0;
        v257 = CFDictionaryGetValue(v8, @"HostApEnabled");
        number = v257;
        if (v257)
        {
          v258 = CFGetTypeID(v257);
          if (v258 == CFNumberGetTypeID())
          {
            if (CFNumberGetValue(number, kCFNumberSInt8Type, buffer))
            {
              LOBYTE(__dst[0]) = buffer[0];
            }
          }
        }

        v200 = 1;
        goto LABEL_615;
      case 422:
        LODWORD(__dst[0]) = 1;
        LQMConfigFromDict = 4294963396;
        if (!v8 || v7 != 4)
        {
          goto LABEL_901;
        }

        HIDWORD(__dst[0]) = *v8;
        v200 = 8;
LABEL_615:
        DWORD2(v390) = v200;
        v391 = __dst;
        if (!Apple80211IOCTLSetWrapper())
        {
          goto LABEL_900;
        }

        if (*__error() == 102 || *__error() == 6)
        {
          goto LABEL_870;
        }

        if (*__error() == 22)
        {
          goto LABEL_901;
        }

        goto LABEL_873;
      case 448:
        if (!v8)
        {
          goto LABEL_597;
        }

        v195 = v8;
        goto LABEL_638;
      case 453:
        if (!v8)
        {
          goto LABEL_597;
        }

        LOBYTE(__dst[0]) = 0;
        v201 = CFDictionaryGetValue(v8, @"APPLE80211KEY_REGKEY_WIFI_VOICE_IND_STATE");
        number = v201;
        if (!v201 || !CFNumberGetValue(v201, kCFNumberSInt8Type, __dst))
        {
          goto LABEL_872;
        }

        DWORD2(v390) = 1;
        goto LABEL_421;
      case 459:
        if (!v8)
        {
          goto LABEL_597;
        }

        WORD2(__dst[0]) = 0;
        LODWORD(__dst[0]) = 0;
        v266 = CFDictionaryGetValue(v8, @"APPLE80211KEY_MWS_ACCESSORY_COEX_ENABLE");
        number = v266;
        if (!v266)
        {
          goto LABEL_872;
        }

        if (!CFNumberGetValue(v266, kCFNumberSInt8Type, __dst + 4))
        {
          goto LABEL_872;
        }

        v267 = CFDictionaryGetValue(v8, @"APPLE80211KEY_MWS_ACCESSORY_COEX_CELL_BAND");
        number = v267;
        if (!v267)
        {
          goto LABEL_872;
        }

        if (!CFNumberGetValue(v267, kCFNumberSInt16Type, __dst + 2))
        {
          goto LABEL_872;
        }

        v268 = CFDictionaryGetValue(v8, @"APPLE80211KEY_MWS_ACCESSORY_COEX_ACCESSORY_TYPE");
        number = v268;
        if (!v268)
        {
          goto LABEL_872;
        }

        if (!CFNumberGetValue(v268, kCFNumberSInt8Type, __dst))
        {
          goto LABEL_872;
        }

        v269 = CFDictionaryGetValue(v8, @"APPLE80211KEY_MWS_ACCESSORY_COEX_CELL_RAT");
        number = v269;
        if (!v269 || !CFNumberGetValue(v269, kCFNumberSInt8Type, __dst + 1))
        {
          goto LABEL_872;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buffer = 0;
          _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "APPLE80211_IOC_MWS_ACCESSORY_POWER_LIMIT_WIFI_ENH Triggered \n", buffer, 2u);
        }

        v135 = 6;
        goto LABEL_823;
      case 469:
        if (!v8)
        {
          goto LABEL_597;
        }

        number = v8;
        __dst[0] = 0;
        if (CFNumberGetValue(v8, kCFNumberSInt64Type, __dst))
        {
          goto LABEL_440;
        }

        goto LABEL_872;
      case 470:
      case 471:
      case 480:
      case 482:
      case 483:
      case 486:
      case 511:
      case 512:
      case 513:
      case 519:
      case 520:
      case 578:
        goto LABEL_6;
      case 472:
        if (!v8)
        {
          goto LABEL_597;
        }

        v195 = CFDictionaryGetValue(v8, @"IO80211InterfaceBatterySaveModeState");
        if (!v195)
        {
          goto LABEL_872;
        }

        goto LABEL_638;
      case 473:
        if (!v8)
        {
          goto LABEL_597;
        }

        v195 = CFDictionaryGetValue(v8, @"IO80211InterfaceRadioMODE");
        if (!v195)
        {
          goto LABEL_872;
        }

        goto LABEL_638;
      case 479:
      case 497:
        if (!v8)
        {
          goto LABEL_597;
        }

        number = v8;
        LODWORD(__dst[0]) = 0;
        if (!CFNumberGetValue(v8, kCFNumberSInt32Type, __dst))
        {
          goto LABEL_872;
        }

        goto LABEL_419;
      case 481:
        goto LABEL_836;
      case 484:
        if (!v8)
        {
          goto LABEL_597;
        }

        number = v8;
        LODWORD(__dst[0]) = 0;
        if (CFNumberGetValue(v8, kCFNumberSInt32Type, __dst))
        {
          goto LABEL_419;
        }

        goto LABEL_872;
      case 485:
        if (!v8)
        {
          goto LABEL_597;
        }

        v251 = CFDictionaryGetValue(v8, @"IO80211IsInHomeScreen");
        if (!v251)
        {
          goto LABEL_872;
        }

        LOBYTE(__dst[0]) = CFBooleanGetValue(v251);
        v252 = CFDictionaryGetValue(v8, @"IO80211IsLatencySensitiveAppActive");
        if (!v252)
        {
          goto LABEL_872;
        }

        BYTE1(__dst[0]) = CFBooleanGetValue(v252);
        v11 = 2;
        goto LABEL_641;
      case 487:
        if (!v8)
        {
          goto LABEL_597;
        }

        memset(__dst, 0, 32);
        v259 = CFDictionaryGetValue(v8, @"IO80211DPSSymptomsInputARPFail");
        number = v259;
        if (!v259)
        {
          goto LABEL_872;
        }

        if (!CFNumberGetValue(v259, kCFNumberSInt32Type, __dst + 4))
        {
          goto LABEL_872;
        }

        v260 = CFDictionaryGetValue(v8, @"IO80211DPSSymptomsInputDNSServersTotal");
        number = v260;
        if (!v260)
        {
          goto LABEL_872;
        }

        if (!CFNumberGetValue(v260, kCFNumberSInt32Type, &__dst[1]))
        {
          goto LABEL_872;
        }

        v261 = CFDictionaryGetValue(v8, @"IO80211DPSSymptomsInputDNSServersImpacted");
        number = v261;
        if (!v261)
        {
          goto LABEL_872;
        }

        if (!CFNumberGetValue(v261, kCFNumberSInt32Type, (__dst | 0xC)))
        {
          goto LABEL_872;
        }

        v262 = CFDictionaryGetValue(v8, @"IO80211DPSSymptomsInputUserImpactFlags");
        number = v262;
        if (!v262)
        {
          goto LABEL_872;
        }

        if (!CFNumberGetValue(v262, kCFNumberSInt32Type, &__dst[2]))
        {
          goto LABEL_872;
        }

        v263 = CFDictionaryGetValue(v8, @"IO80211DPSSymptomsInputDataStallScore");
        number = v263;
        if (!v263)
        {
          goto LABEL_872;
        }

        if (!CFNumberGetValue(v263, kCFNumberSInt32Type, &__dst[2] + 4))
        {
          goto LABEL_872;
        }

        v264 = CFDictionaryGetValue(v8, @"IO80211DPSSymptomsInputAppPolicyScore");
        number = v264;
        if (!v264)
        {
          goto LABEL_872;
        }

        if (!CFNumberGetValue(v264, kCFNumberSInt32Type, &__dst[3]))
        {
          goto LABEL_872;
        }

        v265 = CFDictionaryGetValue(v8, @"IO80211DPSSymptomsInputNetScore");
        number = v265;
        if (!v265 || !CFNumberGetValue(v265, kCFNumberSInt32Type, &__dst[3] + 4))
        {
          goto LABEL_872;
        }

        v49 = 32;
        break;
      case 488:
        if (!v8)
        {
          goto LABEL_597;
        }

        v195 = CFDictionaryGetValue(v8, @"IO80211InterfaceCallStatus");
        if (!v195)
        {
          goto LABEL_872;
        }

LABEL_638:
        v205 = CFBooleanGetValue(v195) != 0;
LABEL_639:
        LODWORD(__dst[0]) = v205;
        goto LABEL_640;
      case 489:
        if (!v8)
        {
          goto LABEL_597;
        }

        *buffer = 0;
        *&buffer[8] = 0;
        v295 = CFDictionaryGetValue(v8, @"IO80211InterfaceIPV4Address");
        number = v295;
        if (!v295)
        {
          goto LABEL_872;
        }

        if (!CFNumberGetValue(v295, kCFNumberSInt32Type, buffer))
        {
          goto LABEL_872;
        }

        v296 = CFDictionaryGetValue(v8, @"IO80211InterfaceIPV4RouterAddress");
        number = v296;
        if (!v296)
        {
          goto LABEL_872;
        }

        if (!CFNumberGetValue(v296, kCFNumberSInt32Type, &buffer[4]))
        {
          goto LABEL_872;
        }

        v297 = CFDictionaryGetValue(v8, @"IO80211InterfaceRouterMACAddress");
        if (!v297)
        {
          goto LABEL_872;
        }

        v298 = v297;
        if (CFDataGetLength(v297) < 7)
        {
          v395.length = CFDataGetLength(v298);
          v395.location = 0;
          CFDataGetBytes(v298, v395, &buffer[8]);
          v94 = 16;
          goto LABEL_880;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_872;
        }

        Length = CFDataGetLength(v298);
        LODWORD(__dst[0]) = 136315906;
        *(__dst + 4) = "Apple80211SetWithIOCTL";
        WORD2(__dst[1]) = 2080;
        *(&__dst[1] + 6) = "IO80211InterfaceRouterMACAddress";
        HIWORD(__dst[2]) = 1024;
        LODWORD(__dst[3]) = Length;
        WORD2(__dst[3]) = 1024;
        *(&__dst[3] + 6) = 6;
        v345 = MEMORY[0x277D86220];
        v346 = "%s: Value size exceeds the limit for key: %s (%u >= %u)\n";
        v363 = __dst;
        goto LABEL_936;
      case 490:
        if (!v8)
        {
          goto LABEL_597;
        }

        memset(__dst, 0, 300);
        v299 = CFDictionaryGetValue(v8, @"IO80211InterfaceProductType");
        if (!v299)
        {
          goto LABEL_872;
        }

        v300 = v299;
        if (CFStringGetLength(v299) >= 201)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_872;
          }

          *buffer = 136315906;
          *&buffer[4] = "Apple80211SetWithIOCTL";
          *&buffer[12] = 2080;
          *&buffer[14] = "IO80211InterfaceProductType";
          *&buffer[22] = 1024;
          *&buffer[24] = CFStringGetLength(v300);
          *&buffer[28] = 1024;
          *&buffer[30] = 200;
          v345 = MEMORY[0x277D86220];
          v346 = "%s: Value length exceeds the limit for key: %s (%u >= %u)\n";
          goto LABEL_933;
        }

        v396.length = CFStringGetLength(v300);
        v396.location = 0;
        CFStringGetBytes(v300, v396, 0x600u, 0, 0, __dst, 200, 0);
        v301 = CFDictionaryGetValue(v8, @"IO80211InterfaceOSVersion");
        if (!v301)
        {
          goto LABEL_872;
        }

        v302 = v301;
        if (CFStringGetLength(v301) < 101)
        {
          v397.length = CFStringGetLength(v302);
          v397.location = 0;
          CFStringGetBytes(v302, v397, 0x600u, 0, 0, &__dst[25], 100, 0);
          v194 = 300;
          goto LABEL_420;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buffer = 136315906;
          *&buffer[4] = "Apple80211SetWithIOCTL";
          *&buffer[12] = 2080;
          *&buffer[14] = "IO80211InterfaceOSVersion";
          *&buffer[22] = 1024;
          *&buffer[24] = CFStringGetLength(v302);
          *&buffer[28] = 1024;
          *&buffer[30] = 100;
          v345 = MEMORY[0x277D86220];
          v346 = "%s: Value length exceeds the limit for key: %s (%u >= %u)\n";
LABEL_933:
          v363 = buffer;
LABEL_936:
          v364 = 34;
          goto LABEL_890;
        }

        goto LABEL_872;
      case 496:
        if (!v8)
        {
          goto LABEL_597;
        }

        __dst[0] = 0;
        __dst[1] = 0;
        v196 = CFDictionaryGetValue(v8, @"IO80211InterfaceEnableWoW");
        number = v196;
        if (!v196)
        {
          goto LABEL_872;
        }

        if (!CFNumberGetValue(v196, kCFNumberSInt32Type, __dst))
        {
          goto LABEL_872;
        }

        v197 = CFDictionaryGetValue(v8, @"IO80211InterfaceEnableLowPwrAssocMode");
        number = v197;
        if (!v197)
        {
          goto LABEL_872;
        }

        if (!CFNumberGetValue(v197, kCFNumberSInt32Type, __dst + 4))
        {
          goto LABEL_872;
        }

        v198 = CFDictionaryGetValue(v8, @"IO80211InterfaceEnableWoWOnCaptive");
        number = v198;
        if (!v198)
        {
          goto LABEL_872;
        }

        if (!CFNumberGetValue(v198, kCFNumberSInt32Type, &__dst[1]))
        {
          goto LABEL_872;
        }

        v199 = CFDictionaryGetValue(v8, @"IO80211InterfaceNetworkWoWDenyListed");
        number = v199;
        if (!v199 || !CFNumberGetValue(v199, kCFNumberSInt32Type, &__dst[1] + 4))
        {
          goto LABEL_872;
        }

        v49 = 16;
        break;
      case 498:
      case 584:
        if (!v8)
        {
          goto LABEL_597;
        }

        goto LABEL_355;
      case 499:
        if (!v8)
        {
          goto LABEL_597;
        }

        LODWORD(__dst[1]) = 0;
        __dst[0] = 0;
        v188 = CFDictionaryGetValue(v8, @"IO80211InterfaceDualPowerCallInProgress");
        number = v188;
        if (v188)
        {
          if (CFNumberGetValue(v188, kCFNumberSInt32Type, __dst))
          {
            v189 = CFDictionaryGetValue(v8, @"IO80211InterfaceDualPowerCellularTxStarted");
            number = v189;
            if (v189)
            {
              if (CFNumberGetValue(v189, kCFNumberSInt32Type, __dst + 4))
              {
                v190 = CFDictionaryGetValue(v8, @"IO80211InterfaceDualPowerCellularTxShort");
                number = v190;
                if (v190)
                {
                  if (CFNumberGetValue(v190, kCFNumberSInt32Type, &__dst[1]))
                  {
                    goto LABEL_405;
                  }
                }
              }
            }
          }
        }

        goto LABEL_872;
      case 500:
        if (!v8)
        {
          goto LABEL_597;
        }

        bzero(__dst, 0x12F0uLL);
        v303 = CFDictionaryGetValue(v8, @"IO80211InterfaceBGScanFreq");
        number = v303;
        if (!v303)
        {
          goto LABEL_719;
        }

        if (!CFNumberGetValue(v303, kCFNumberSInt32Type, __dst + 4))
        {
          goto LABEL_872;
        }

        LOBYTE(__dst[0]) = 1;
LABEL_719:
        v304 = CFDictionaryGetValue(v8, @"IO80211InterfaceBGScanLostNetTO");
        number = v304;
        if (!v304)
        {
          goto LABEL_722;
        }

        if (!CFNumberGetValue(v304, kCFNumberSInt32Type, &__dst[1] + 4))
        {
          goto LABEL_872;
        }

        LOBYTE(__dst[1]) = 1;
LABEL_722:
        v305 = CFDictionaryGetValue(v8, @"IO80211InterfaceBGScanAdaptScan");
        number = v305;
        if (!v305)
        {
          goto LABEL_725;
        }

        if (!CFNumberGetValue(v305, kCFNumberSInt32Type, &__dst[2] + 4))
        {
          goto LABEL_872;
        }

        LOBYTE(__dst[2]) = 1;
LABEL_725:
        v306 = CFDictionaryGetValue(v8, @"IO80211InterfaceBGScanBestNetScan");
        number = v306;
        if (!v306)
        {
          goto LABEL_728;
        }

        if (!CFNumberGetValue(v306, kCFNumberSInt32Type, &__dst[3] + 4))
        {
          goto LABEL_872;
        }

        LOBYTE(__dst[3]) = 1;
LABEL_728:
        v307 = CFDictionaryGetValue(v8, @"IO80211InterfaceBGScanScanRecord");
        number = v307;
        if (!v307)
        {
          goto LABEL_731;
        }

        if (!CFNumberGetValue(v307, kCFNumberSInt32Type, &__dst[4] + 4))
        {
          goto LABEL_872;
        }

        LOBYTE(__dst[4]) = 1;
LABEL_731:
        v308 = CFDictionaryGetValue(v8, @"IO80211InterfaceBGScanChannels");
        if (!v308)
        {
          goto LABEL_741;
        }

        v309 = v308;
        Count = CFArrayGetCount(v308);
        if (Count >= 0x190)
        {
          v311 = 400;
        }

        else
        {
          v311 = Count;
        }

        HIDWORD(__dst[5]) = v311;
        if (!Count)
        {
          goto LABEL_740;
        }

        v312 = 0;
        v313 = &__dst[6] + 4;
        while (1)
        {
          v314 = CFArrayGetValueAtIndex(v309, v312);
          number = v314;
          if (!v314 || !CFNumberGetValue(v314, kCFNumberSInt32Type, v313))
          {
            goto LABEL_808;
          }

          ++v312;
          v313 += 12;
          if (v312 >= HIDWORD(__dst[5]))
          {
LABEL_740:
            LOBYTE(__dst[5]) = 1;
LABEL_741:
            v49 = 4848;
            goto LABEL_865;
          }
        }

      case 501:
        if (!v8)
        {
          goto LABEL_597;
        }

        memset(__dst, 0, 24);
        v191 = CFDictionaryGetValue(v8, @"IO80211InterfaceBGScanDynamicProfileStartTime");
        number = v191;
        if (!v191)
        {
          goto LABEL_410;
        }

        if (!CFNumberGetValue(v191, kCFNumberSInt32Type, __dst + 4))
        {
          goto LABEL_872;
        }

        LOBYTE(__dst[0]) = 1;
LABEL_410:
        v192 = CFDictionaryGetValue(v8, @"IO80211InterfaceBGScanDynamicProfileDuration");
        number = v192;
        if (!v192)
        {
          goto LABEL_413;
        }

        if (!CFNumberGetValue(v192, kCFNumberSInt32Type, &__dst[1] + 4))
        {
          goto LABEL_872;
        }

        LOBYTE(__dst[1]) = 1;
LABEL_413:
        v193 = CFDictionaryGetValue(v8, @"IO80211InterfaceBGScanDynamicProfileScanFreq");
        number = v193;
        if (!v193)
        {
          goto LABEL_416;
        }

        if (!CFNumberGetValue(v193, kCFNumberSInt32Type, &__dst[2] + 4))
        {
          goto LABEL_872;
        }

        LOBYTE(__dst[2]) = 1;
LABEL_416:
        v49 = 24;
        break;
      case 503:
        if (!v8)
        {
          goto LABEL_597;
        }

        memset(__dst, 0, 20);
        v315 = CFDictionaryGetValue(v8, @"IO80211InterfaceVirtualIfStateIsActive");
        number = v315;
        if (v315)
        {
          if (CFNumberGetValue(v315, kCFNumberSInt32Type, __dst))
          {
            v316 = CFDictionaryGetValue(v8, @"IO80211InterfaceVirtualIfStateIsType");
            number = v316;
            if (v316)
            {
              if (CFNumberGetValue(v316, kCFNumberSInt32Type, __dst + 4))
              {
                v317 = CFDictionaryGetValue(v8, @"IO80211InterfaceVirtualIfStateChannel");
                number = v317;
                if (v317)
                {
                  if (CFNumberGetValue(v317, kCFNumberSInt32Type, &__dst[1] + 4))
                  {
                    v318 = CFDictionaryGetValue(v8, @"IO80211InterfaceVirtualIfStateChannelFlag");
                    number = v318;
                    if (v318)
                    {
                      if (CFNumberGetValue(v318, kCFNumberSInt32Type, &__dst[2]))
                      {
                        goto LABEL_751;
                      }
                    }
                  }
                }
              }
            }
          }
        }

        goto LABEL_872;
      case 507:
      case 509:
        if (!v8)
        {
          goto LABEL_597;
        }

        LOBYTE(__dst[0]) = *MEMORY[0x277CBED28] == v8;
        goto LABEL_8;
      case 508:
      case 514:
      case 536:
      case 537:
        goto LABEL_94;
      case 510:
        if (!v8)
        {
          goto LABEL_597;
        }

        memset(__dst, 0, 164);
        v186 = CFDictionaryGetValue(v8, @"IO80211InterfaceIPV6Address");
        if (!v186)
        {
          goto LABEL_872;
        }

        v187 = v186;
        if (CFArrayGetCount(v186) < 11)
        {
          LODWORD(__dst[0]) = CFArrayGetCount(v187);
          if (!LODWORD(__dst[0]))
          {
            goto LABEL_818;
          }
        }

        else
        {
          LODWORD(__dst[0]) = 10;
        }

        v340 = 0;
        v341 = __dst + 4;
        do
        {
          v342 = CFArrayGetValueAtIndex(v187, v340);
          if (!v342)
          {
            goto LABEL_872;
          }

          v398.location = 0;
          v398.length = 16;
          CFDataGetBytes(v342, v398, v341);
          ++v340;
          v341 += 16;
        }

        while (v340 < LODWORD(__dst[0]));
LABEL_818:
        v49 = 164;
        break;
      case 516:
        if (!v8)
        {
          goto LABEL_597;
        }

        LODWORD(__dst[0]) = 0;
        if (CFArrayGetCount(v8) < 1)
        {
          goto LABEL_674;
        }

        v270 = 0;
        v271 = 0;
        while (2)
        {
          v272 = CFArrayGetValueAtIndex(v8, v270);
          number = v272;
          if (!v272)
          {
            goto LABEL_670;
          }

          *buffer = -1431655766;
          CFNumberGetValue(v272, kCFNumberSInt32Type, buffer);
          if (*buffer > 1)
          {
            if (*buffer == 2)
            {
              v271 |= 2u;
            }

            else
            {
              if (*buffer != 3)
              {
                goto LABEL_670;
              }

              v271 |= 4u;
            }

            goto LABEL_669;
          }

          if (*buffer == 1)
          {
            v271 |= 1u;
LABEL_669:
            LOBYTE(__dst[0]) = v271;
            goto LABEL_670;
          }

          if (*buffer)
          {
LABEL_670:
            if (++v270 >= CFArrayGetCount(v8))
            {
              goto LABEL_674;
            }

            continue;
          }

          break;
        }

        LOBYTE(__dst[0]) = v271 & 0xF8;
LABEL_674:
        v49 = 4;
        break;
      case 521:
        if (!v8)
        {
          goto LABEL_597;
        }

        memset(__dst, 0, 20);
        v284 = *MEMORY[0x277CBECE8];
        v285 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], "MWS_LE_SCAN_EN", 0x8000100u);
        v286 = CFDictionaryGetValue(v8, v285);
        number = v286;
        if (!v286)
        {
          goto LABEL_872;
        }

        if (!CFNumberGetValue(v286, kCFNumberSInt8Type, __dst))
        {
          goto LABEL_872;
        }

        CFRelease(v285);
        v287 = CFStringCreateWithCString(v284, "MWS_LE_SCAN_PEAK", 0x8000100u);
        v288 = CFDictionaryGetValue(v8, v287);
        number = v288;
        if (!v288)
        {
          goto LABEL_872;
        }

        if (!CFNumberGetValue(v288, kCFNumberSInt32Type, __dst + 4))
        {
          goto LABEL_872;
        }

        CFRelease(v287);
        v289 = CFStringCreateWithCString(v284, "MWS_LE_SCAN_DUR", 0x8000100u);
        v290 = CFDictionaryGetValue(v8, v289);
        number = v290;
        if (!v290)
        {
          goto LABEL_872;
        }

        if (!CFNumberGetValue(v290, kCFNumberSInt32Type, &__dst[1]))
        {
          goto LABEL_872;
        }

        CFRelease(v289);
        v291 = CFStringCreateWithCString(v284, "MWS_LE_SCAN_DC", 0x8000100u);
        v292 = CFDictionaryGetValue(v8, v291);
        number = v292;
        if (!v292)
        {
          goto LABEL_872;
        }

        if (!CFNumberGetValue(v292, kCFNumberSInt32Type, &__dst[1] + 4))
        {
          goto LABEL_872;
        }

        CFRelease(v291);
        v293 = CFStringCreateWithCString(v284, "MWS_LE_SCAN_REASON", 0x8000100u);
        v294 = CFDictionaryGetValue(v8, v293);
        number = v294;
        if (!v294 || !CFNumberGetValue(v294, kCFNumberSInt32Type, &__dst[2]))
        {
          goto LABEL_872;
        }

        CFRelease(v293);
LABEL_751:
        v49 = 20;
        break;
      case 531:
        if (!v8)
        {
          goto LABEL_597;
        }

        WORD2(__dst[0]) = 0;
        LODWORD(__dst[0]) = 0;
        v232 = CFDictionaryGetValue(v8, @"IO80211InterfaceRoamProfile");
        number = v232;
        if (!v232 || !CFNumberGetValue(v232, kCFNumberSInt8Type, __dst))
        {
          goto LABEL_872;
        }

        v233 = CFDictionaryGetValue(v8, @"IO80211InterfaceRoamProfileMotion");
        if (v233)
        {
          BYTE3(__dst[0]) = CFBooleanGetValue(v233);
        }

        v234 = CFDictionaryGetValue(v8, @"IO80211InterfaceRoamProfilePoorLinkQuality");
        if (v234)
        {
          BYTE2(__dst[0]) = CFBooleanGetValue(v234);
        }

        v235 = CFDictionaryGetValue(v8, @"IO80211InterfaceRoamMultiAP");
        if (v235)
        {
          BYTE1(__dst[0]) = CFBooleanGetValue(v235);
        }

        v236 = CFDictionaryGetValue(v8, @"IO80211InterfaceRoamProfileMotionRssiDelta");
        number = v236;
        if (v236)
        {
          CFNumberGetValue(v236, kCFNumberSInt16Type, __dst + 4);
        }

        v11 = 6;
        goto LABEL_641;
      case 532:
        if (!v8)
        {
          goto LABEL_597;
        }

        memset(__dst, 0, 128);
        v273 = CFDictionaryGetValue(v8, @"IO80211InterfaceAdaptiveRoamChanList");
        if (!v273)
        {
          goto LABEL_686;
        }

        v274 = v273;
        v275 = CFArrayGetCount(v273);
        v276 = v275 >= 10 ? 10 : v275;
        LODWORD(__dst[15]) = v276;
        if (v275 < 1)
        {
          goto LABEL_686;
        }

        v277 = 0;
        v278 = &__dst[1];
        while (1)
        {
          v279 = CFArrayGetValueAtIndex(v274, v277);
          if (!v279)
          {
            goto LABEL_872;
          }

          v280 = v279;
          v281 = CFDictionaryGetValue(v279, @"IO80211Channel");
          number = v281;
          if (!v281)
          {
            goto LABEL_872;
          }

          CFNumberGetValue(v281, kCFNumberSInt32Type, v278 - 4);
          v282 = CFDictionaryGetValue(v280, @"IO80211ChannelFlags");
          number = v282;
          if (!v282)
          {
            goto LABEL_872;
          }

          CFNumberGetValue(v282, kCFNumberSInt32Type, v278);
          ++v277;
          v278 = (v278 + 12);
          if (v277 >= SLODWORD(__dst[15]))
          {
LABEL_686:
            v283 = CFDictionaryGetValue(v8, @"IO80211InterfaceAdaptiveRoamRSSITrigger");
            number = v283;
            if (v283)
            {
              CFNumberGetValue(v283, kCFNumberSInt16Type, &__dst[15] + 4);
            }

            v49 = 128;
            goto LABEL_865;
          }
        }

      case 538:
        if (!v8)
        {
          goto LABEL_597;
        }

        number = v8;
        __dst[0] = 0;
        if (!CFNumberGetValue(v8, kCFNumberSInt32Type, __dst))
        {
          goto LABEL_872;
        }

LABEL_440:
        v194 = 8;
        goto LABEL_420;
      case 539:
        if (!v8)
        {
          goto LABEL_597;
        }

        v209 = CFArrayGetCount(v8);
        if (v209 >= 0xF)
        {
          goto LABEL_808;
        }

        *buffer = 0;
        v210 = 0;
        if (!v209)
        {
          goto LABEL_471;
        }

        v211 = 0;
        v212 = v209 & 0xF;
        while (1)
        {
          LODWORD(__dst[0]) = -1431655766;
          v213 = CFArrayGetValueAtIndex(v8, v211);
          number = v213;
          if (!v213 || !CFNumberGetValue(v213, kCFNumberSInt32Type, __dst))
          {
            goto LABEL_597;
          }

          if (LODWORD(__dst[0]) > 0xE)
          {
            goto LABEL_808;
          }

          v210 |= 1 << (LOBYTE(__dst[0]) - 1);
          *buffer = v210;
          if (v212 == ++v211)
          {
LABEL_471:
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(__dst[0]) = 67109120;
              HIDWORD(__dst[0]) = v210;
              _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "APPLE80211_IOC_MWS_TIME_SHARING_WIFI_ENH channel_bitmap = 0x%X\n", __dst, 8u);
            }

            v120 = 4;
LABEL_860:
            DWORD2(v390) = v120;
            v344 = buffer;
            goto LABEL_824;
          }
        }

      case 540:
        if (!v8)
        {
          goto LABEL_597;
        }

        memset(__dst, 0, 36);
        v329 = CFDictionaryGetValue(v8, @"MWSType72GBITMAPWiFiEnh");
        number = v329;
        if (v329)
        {
          if (CFNumberGetValue(v329, kCFNumberSInt32Type, __dst))
          {
            v330 = CFDictionaryGetValue(v8, @"MWSType75GBITMAPLOWWiFiEnh");
            number = v330;
            if (v330)
            {
              if (CFNumberGetValue(v330, kCFNumberSInt32Type, __dst + 4))
              {
                v331 = CFDictionaryGetValue(v8, @"MWSType75GBITMAPMIDWiFiEnh");
                number = v331;
                if (v331)
                {
                  if (CFNumberGetValue(v331, kCFNumberSInt32Type, &__dst[1]))
                  {
                    v332 = CFDictionaryGetValue(v8, @"MWSType75GBITMAPHIWiFiEnh");
                    number = v332;
                    if (v332)
                    {
                      if (CFNumberGetValue(v332, kCFNumberSInt32Type, (__dst | 0xC)))
                      {
                        v333 = CFDictionaryGetValue(v8, @"MWSType7U5LowBITMAPWiFiEnh");
                        number = v333;
                        if (v333)
                        {
                          if (CFNumberGetValue(v333, kCFNumberSInt32Type, &__dst[2]))
                          {
                            v334 = CFDictionaryGetValue(v8, @"MWSType7U5HighBITMAPWiFiEnh");
                            number = v334;
                            if (v334)
                            {
                              if (CFNumberGetValue(v334, kCFNumberSInt32Type, &__dst[2] + 4))
                              {
                                v335 = CFDictionaryGetValue(v8, @"MWSType7U6BITMAPWiFiEnh");
                                number = v335;
                                if (v335)
                                {
                                  if (CFNumberGetValue(v335, kCFNumberSInt32Type, &__dst[3]))
                                  {
                                    v336 = CFDictionaryGetValue(v8, @"MWSType7U7BITMAPWiFiEnh");
                                    number = v336;
                                    if (v336)
                                    {
                                      if (CFNumberGetValue(v336, kCFNumberSInt32Type, &__dst[3] + 4))
                                      {
                                        v337 = CFDictionaryGetValue(v8, @"MWSType7U8BITMAPWiFiEnh");
                                        number = v337;
                                        if (v337)
                                        {
                                          if (CFNumberGetValue(v337, kCFNumberSInt32Type, &__dst[4]))
                                          {
                                            goto LABEL_797;
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        goto LABEL_872;
      case 541:
      case 544:
        if (!v8)
        {
          goto LABEL_597;
        }

        memset(__dst, 0, 36);
        v67 = CFDictionaryGetValue(v8, @"MWS2GBITMAPWiFiEnh");
        number = v67;
        if (!v67)
        {
          goto LABEL_872;
        }

        if (!CFNumberGetValue(v67, kCFNumberSInt32Type, __dst))
        {
          goto LABEL_872;
        }

        v68 = CFDictionaryGetValue(v8, @"MWS5GBITMAPLOWWiFiEnh");
        number = v68;
        if (!v68)
        {
          goto LABEL_872;
        }

        if (!CFNumberGetValue(v68, kCFNumberSInt32Type, __dst + 4))
        {
          goto LABEL_872;
        }

        v69 = CFDictionaryGetValue(v8, @"MWS5GBITMAPMIDWiFiEnh");
        number = v69;
        if (!v69)
        {
          goto LABEL_872;
        }

        if (!CFNumberGetValue(v69, kCFNumberSInt32Type, &__dst[1]))
        {
          goto LABEL_872;
        }

        v70 = CFDictionaryGetValue(v8, @"MWS5GBITMAPHIWiFiEnh");
        number = v70;
        if (!v70)
        {
          goto LABEL_872;
        }

        if (!CFNumberGetValue(v70, kCFNumberSInt32Type, (__dst | 0xC)))
        {
          goto LABEL_872;
        }

        v71 = CFDictionaryGetValue(v8, @"MWSU5LowBITMAPWiFiEnh");
        number = v71;
        if (!v71)
        {
          goto LABEL_872;
        }

        if (!CFNumberGetValue(v71, kCFNumberSInt32Type, &__dst[2]))
        {
          goto LABEL_872;
        }

        v72 = CFDictionaryGetValue(v8, @"MWSU5HighBITMAPWiFiEnh");
        number = v72;
        if (!v72)
        {
          goto LABEL_872;
        }

        if (!CFNumberGetValue(v72, kCFNumberSInt32Type, &__dst[2] + 4))
        {
          goto LABEL_872;
        }

        v73 = CFDictionaryGetValue(v8, @"MWSU6BITMAPWiFiEnh");
        number = v73;
        if (!v73)
        {
          goto LABEL_872;
        }

        if (!CFNumberGetValue(v73, kCFNumberSInt32Type, &__dst[3]))
        {
          goto LABEL_872;
        }

        v74 = CFDictionaryGetValue(v8, @"MWSU7BITMAPWiFiEnh");
        number = v74;
        if (!v74)
        {
          goto LABEL_872;
        }

        if (!CFNumberGetValue(v74, kCFNumberSInt32Type, &__dst[3] + 4))
        {
          goto LABEL_872;
        }

        v75 = CFDictionaryGetValue(v8, @"MWSU8BITMAPWiFiEnh");
        number = v75;
        if (!v75 || !CFNumberGetValue(v75, kCFNumberSInt32Type, &__dst[4]))
        {
          goto LABEL_872;
        }

LABEL_797:
        DWORD2(v390) = 36;
        v391 = __dst;
        goto LABEL_642;
      case 542:
        if (!v8)
        {
          goto LABEL_597;
        }

        memset(__dst, 0, 36);
        v172 = CFDictionaryGetValue(v8, @"MWSOCL2GBITMAPWiFiEnh");
        number = v172;
        if (!v172)
        {
          goto LABEL_872;
        }

        if (!CFNumberGetValue(v172, kCFNumberSInt32Type, __dst))
        {
          goto LABEL_872;
        }

        v173 = CFDictionaryGetValue(v8, @"MWSOCL5GBITMAPLOWWiFiEnh");
        number = v173;
        if (!v173)
        {
          goto LABEL_872;
        }

        if (!CFNumberGetValue(v173, kCFNumberSInt32Type, __dst + 4))
        {
          goto LABEL_872;
        }

        v174 = CFDictionaryGetValue(v8, @"MWSOCL5GBITMAPMIDWiFiEnh");
        number = v174;
        if (!v174)
        {
          goto LABEL_872;
        }

        if (!CFNumberGetValue(v174, kCFNumberSInt32Type, &__dst[1]))
        {
          goto LABEL_872;
        }

        v175 = CFDictionaryGetValue(v8, @"MWSOCL5GBITMAPHIWiFiEnh");
        number = v175;
        if (!v175)
        {
          goto LABEL_872;
        }

        if (!CFNumberGetValue(v175, kCFNumberSInt32Type, (__dst | 0xC)))
        {
          goto LABEL_872;
        }

        v176 = CFDictionaryGetValue(v8, @"MWSOCLU5LowBITMAPWiFiEnh");
        number = v176;
        if (!v176)
        {
          goto LABEL_872;
        }

        if (!CFNumberGetValue(v176, kCFNumberSInt32Type, &__dst[2]))
        {
          goto LABEL_872;
        }

        v177 = CFDictionaryGetValue(v8, @"MWSOCLU5HighBITMAPWiFiEnh");
        number = v177;
        if (!v177)
        {
          goto LABEL_872;
        }

        if (!CFNumberGetValue(v177, kCFNumberSInt32Type, &__dst[2] + 4))
        {
          goto LABEL_872;
        }

        v178 = CFDictionaryGetValue(v8, @"MWSOCLU6BITMAPWiFiEnh");
        number = v178;
        if (!v178)
        {
          goto LABEL_872;
        }

        if (!CFNumberGetValue(v178, kCFNumberSInt32Type, &__dst[3]))
        {
          goto LABEL_872;
        }

        v179 = CFDictionaryGetValue(v8, @"MWSOCLU7BITMAPWiFiEnh");
        number = v179;
        if (!v179)
        {
          goto LABEL_872;
        }

        if (!CFNumberGetValue(v179, kCFNumberSInt32Type, &__dst[3] + 4))
        {
          goto LABEL_872;
        }

        v180 = CFDictionaryGetValue(v8, @"MWSOCLU8BITMAPWiFiEnh");
        number = v180;
        if (!v180 || !CFNumberGetValue(v180, kCFNumberSInt32Type, &__dst[4]))
        {
          goto LABEL_872;
        }

        v181 = 36;
        goto LABEL_777;
      case 543:
        if (!v8)
        {
          goto LABEL_597;
        }

        memset(__dst, 0, 40);
        if (!CFDictionaryContainsKey(v8, @"MWS2GBITMAPWiFiEnh"))
        {
          goto LABEL_530;
        }

        v237 = CFDictionaryGetValue(v8, @"MWS2GBITMAPWiFiEnh");
        number = v237;
        if (!v237 || !CFNumberGetValue(v237, kCFNumberSInt32Type, __dst))
        {
          goto LABEL_872;
        }

        HIDWORD(__dst[4]) |= 1u;
LABEL_530:
        if (!CFDictionaryContainsKey(v8, @"MWS5GBITMAPLOWWiFiEnh"))
        {
          goto LABEL_534;
        }

        v238 = CFDictionaryGetValue(v8, @"MWS5GBITMAPLOWWiFiEnh");
        number = v238;
        if (!v238 || !CFNumberGetValue(v238, kCFNumberSInt32Type, __dst + 4))
        {
          goto LABEL_872;
        }

        HIDWORD(__dst[4]) |= 2u;
LABEL_534:
        if (!CFDictionaryContainsKey(v8, @"MWS5GBITMAPMIDWiFiEnh"))
        {
          goto LABEL_538;
        }

        v239 = CFDictionaryGetValue(v8, @"MWS5GBITMAPMIDWiFiEnh");
        number = v239;
        if (!v239 || !CFNumberGetValue(v239, kCFNumberSInt32Type, &__dst[1]))
        {
          goto LABEL_872;
        }

        HIDWORD(__dst[4]) |= 2u;
LABEL_538:
        if (!CFDictionaryContainsKey(v8, @"MWS5GBITMAPHIWiFiEnh"))
        {
          goto LABEL_542;
        }

        v240 = CFDictionaryGetValue(v8, @"MWS5GBITMAPHIWiFiEnh");
        number = v240;
        if (!v240 || !CFNumberGetValue(v240, kCFNumberSInt32Type, (__dst | 0xC)))
        {
          goto LABEL_872;
        }

        HIDWORD(__dst[4]) |= 2u;
LABEL_542:
        if (!CFDictionaryContainsKey(v8, @"MWSU5LowBITMAPWiFiEnh"))
        {
          goto LABEL_546;
        }

        v241 = CFDictionaryGetValue(v8, @"MWSU5LowBITMAPWiFiEnh");
        number = v241;
        if (!v241 || !CFNumberGetValue(v241, kCFNumberSInt32Type, &__dst[2]))
        {
          goto LABEL_872;
        }

        HIDWORD(__dst[4]) |= 4u;
LABEL_546:
        if (!CFDictionaryContainsKey(v8, @"MWSU5HighBITMAPWiFiEnh"))
        {
          goto LABEL_550;
        }

        v242 = CFDictionaryGetValue(v8, @"MWSU5HighBITMAPWiFiEnh");
        number = v242;
        if (!v242 || !CFNumberGetValue(v242, kCFNumberSInt32Type, &__dst[2] + 4))
        {
          goto LABEL_872;
        }

        HIDWORD(__dst[4]) |= 4u;
LABEL_550:
        if (!CFDictionaryContainsKey(v8, @"MWSU6BITMAPWiFiEnh"))
        {
          goto LABEL_554;
        }

        v243 = CFDictionaryGetValue(v8, @"MWSU6BITMAPWiFiEnh");
        number = v243;
        if (!v243 || !CFNumberGetValue(v243, kCFNumberSInt32Type, &__dst[3]))
        {
          goto LABEL_872;
        }

        HIDWORD(__dst[4]) |= 4u;
LABEL_554:
        if (!CFDictionaryContainsKey(v8, @"MWSU7BITMAPWiFiEnh"))
        {
          goto LABEL_558;
        }

        v244 = CFDictionaryGetValue(v8, @"MWSU7BITMAPWiFiEnh");
        number = v244;
        if (!v244 || !CFNumberGetValue(v244, kCFNumberSInt32Type, &__dst[3] + 4))
        {
          goto LABEL_872;
        }

        HIDWORD(__dst[4]) |= 4u;
LABEL_558:
        if (!CFDictionaryContainsKey(v8, @"MWSU8BITMAPWiFiEnh"))
        {
          goto LABEL_562;
        }

        v245 = CFDictionaryGetValue(v8, @"MWSU8BITMAPWiFiEnh");
        number = v245;
        if (!v245 || !CFNumberGetValue(v245, kCFNumberSInt32Type, &__dst[4]))
        {
          goto LABEL_872;
        }

        HIDWORD(__dst[4]) |= 4u;
LABEL_562:
        v11 = 40;
        goto LABEL_641;
      case 545:
        if (!v8)
        {
          goto LABEL_597;
        }

        memset(__dst, 0, 40);
        v319 = CFDictionaryGetValue(v8, @"MWS_SCAN_FREQ_INDEX_Enh");
        number = v319;
        if (v319)
        {
          if (CFNumberGetValue(v319, kCFNumberSInt32Type, &__dst[4] + 4))
          {
            v320 = CFDictionaryGetValue(v8, @"MWSType4Blanking2GBITMAPWiFiEnh");
            number = v320;
            if (v320)
            {
              if (CFNumberGetValue(v320, kCFNumberSInt32Type, __dst))
              {
                v321 = CFDictionaryGetValue(v8, @"MWSType4Blanking5GBITMAPLOWWiFiEnh");
                number = v321;
                if (v321)
                {
                  if (CFNumberGetValue(v321, kCFNumberSInt32Type, __dst + 4))
                  {
                    v322 = CFDictionaryGetValue(v8, @"MWSType4Blanking5GBITMAPMIDWiFiEnh");
                    number = v322;
                    if (v322)
                    {
                      if (CFNumberGetValue(v322, kCFNumberSInt32Type, &__dst[1]))
                      {
                        v323 = CFDictionaryGetValue(v8, @"MWSType4Blanking5GBITMAPHIWiFiEnh");
                        number = v323;
                        if (v323)
                        {
                          if (CFNumberGetValue(v323, kCFNumberSInt32Type, (__dst | 0xC)))
                          {
                            v324 = CFDictionaryGetValue(v8, @"MWSType4BlankingU5LowBITMAPWiFiEnh");
                            number = v324;
                            if (v324)
                            {
                              if (CFNumberGetValue(v324, kCFNumberSInt32Type, &__dst[2]))
                              {
                                v325 = CFDictionaryGetValue(v8, @"MWSType4BlankingU5HighBITMAPWiFiEnh");
                                number = v325;
                                if (v325)
                                {
                                  if (CFNumberGetValue(v325, kCFNumberSInt32Type, &__dst[2] + 4))
                                  {
                                    v326 = CFDictionaryGetValue(v8, @"MWSType4BlankingU6BITMAPWiFiEnh");
                                    number = v326;
                                    if (v326)
                                    {
                                      if (CFNumberGetValue(v326, kCFNumberSInt32Type, &__dst[3]))
                                      {
                                        v327 = CFDictionaryGetValue(v8, @"MWSType4BlankingU7BITMAPWiFiEnh");
                                        number = v327;
                                        if (v327)
                                        {
                                          if (CFNumberGetValue(v327, kCFNumberSInt32Type, &__dst[3] + 4))
                                          {
                                            v328 = CFDictionaryGetValue(v8, @"MWSType4BlankingU8BITMAPWiFiEnh");
                                            number = v328;
                                            if (v328)
                                            {
                                              if (CFNumberGetValue(v328, kCFNumberSInt32Type, &__dst[4]))
                                              {
                                                goto LABEL_776;
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        goto LABEL_872;
      case 546:
        if (!v8)
        {
          goto LABEL_597;
        }

        memset(__dst, 0, 40);
        v253 = CFDictionaryGetValue(v8, @"MWS_SCAN_FREQ_INDEX_Enh");
        number = v253;
        if (!v253)
        {
          goto LABEL_872;
        }

        if (!CFNumberGetValue(v253, kCFNumberSInt32Type, &__dst[4] + 4))
        {
          goto LABEL_872;
        }

        LODWORD(__dst[0]) = 0;
        v254 = CFDictionaryGetValue(v8, @"MWSType4Blanking5GBITMAPLOWWiFiEnh");
        number = v254;
        if (!v254)
        {
          goto LABEL_872;
        }

        if (!CFNumberGetValue(v254, kCFNumberSInt32Type, __dst + 4))
        {
          goto LABEL_872;
        }

        v255 = CFDictionaryGetValue(v8, @"MWSType4Blanking5GBITMAPMIDWiFiEnh");
        number = v255;
        if (!v255)
        {
          goto LABEL_872;
        }

        if (!CFNumberGetValue(v255, kCFNumberSInt32Type, &__dst[1]))
        {
          goto LABEL_872;
        }

        v256 = CFDictionaryGetValue(v8, @"MWSType4Blanking5GBITMAPHIWiFiEnh");
        number = v256;
        if (!v256 || !CFNumberGetValue(v256, kCFNumberSInt32Type, (__dst | 0xC)))
        {
          goto LABEL_872;
        }

        memset(&__dst[2], 0, 20);
LABEL_776:
        v181 = 40;
LABEL_777:
        DWORD2(v390) = v181;
        v391 = __dst;
        goto LABEL_803;
      case 547:
        LOWORD(valuePtr) = 250;
        if (!v8)
        {
          goto LABEL_597;
        }

        memset(__dst, 0, 324);
        v214 = CFDictionaryGetValue(v8, @"MWS_TIMER_GRANULARITY_MS");
        number = v214;
        if (!v214)
        {
          goto LABEL_872;
        }

        if (!CFNumberGetValue(v214, kCFNumberSInt8Type, &valuePtr))
        {
          goto LABEL_872;
        }

        LOWORD(__dst[0]) = valuePtr;
        v215 = CFDictionaryGetValue(v8, @"MWS_WIFI_CONDITION_CHANNEL_CONFIG");
        if (!v215)
        {
          goto LABEL_872;
        }

        v216 = v215;
        BYTE2(__dst[0]) = CFArrayGetCount(v215);
        if (!BYTE2(__dst[0]))
        {
          goto LABEL_501;
        }

        v217 = 0;
        v218 = 0;
        while (1)
        {
          *buffer = 0;
          v219 = CFArrayGetValueAtIndex(v216, v218);
          v220 = CFDictionaryGetValue(v219, @"MWS_CONDITION_ID_Value");
          number = v220;
          if (!v220)
          {
            goto LABEL_597;
          }

          if (!CFNumberGetValue(v220, kCFNumberSInt8Type, buffer))
          {
            goto LABEL_597;
          }

          LOBYTE(__dst[v217 + 5]) = buffer[0];
          v221 = CFDictionaryGetValue(v219, @"MWS2GBITMAPWiFiEnh");
          number = v221;
          if (!v221)
          {
            goto LABEL_597;
          }

          if (!CFNumberGetValue(v221, kCFNumberSInt32Type, &__dst[v217] + 4))
          {
            goto LABEL_597;
          }

          v222 = CFDictionaryGetValue(v219, @"MWS5GBITMAPLOWWiFiEnh");
          number = v222;
          if (!v222)
          {
            goto LABEL_597;
          }

          if (!CFNumberGetValue(v222, kCFNumberSInt32Type, &__dst[v217 + 1]))
          {
            goto LABEL_597;
          }

          v223 = CFDictionaryGetValue(v219, @"MWS5GBITMAPMIDWiFiEnh");
          number = v223;
          if (!v223)
          {
            goto LABEL_597;
          }

          if (!CFNumberGetValue(v223, kCFNumberSInt32Type, &__dst[v217 + 1] + 4))
          {
            goto LABEL_597;
          }

          v224 = CFDictionaryGetValue(v219, @"MWS5GBITMAPHIWiFiEnh");
          number = v224;
          if (!v224)
          {
            goto LABEL_597;
          }

          if (!CFNumberGetValue(v224, kCFNumberSInt32Type, &__dst[v217 + 2]))
          {
            goto LABEL_597;
          }

          v225 = CFDictionaryGetValue(v219, @"MWSU5LowBITMAPWiFiEnh");
          number = v225;
          if (!v225)
          {
            goto LABEL_597;
          }

          if (!CFNumberGetValue(v225, kCFNumberSInt32Type, &__dst[v217 + 2] + 4))
          {
            goto LABEL_597;
          }

          v226 = CFDictionaryGetValue(v219, @"MWSU5HighBITMAPWiFiEnh");
          number = v226;
          if (!v226)
          {
            goto LABEL_597;
          }

          if (!CFNumberGetValue(v226, kCFNumberSInt32Type, &__dst[v217 + 3]))
          {
            goto LABEL_597;
          }

          v227 = CFDictionaryGetValue(v219, @"MWSU6BITMAPWiFiEnh");
          number = v227;
          if (!v227)
          {
            goto LABEL_597;
          }

          if (!CFNumberGetValue(v227, kCFNumberSInt32Type, &__dst[v217 + 3] + 4))
          {
            goto LABEL_597;
          }

          v228 = CFDictionaryGetValue(v219, @"MWSU7BITMAPWiFiEnh");
          number = v228;
          if (!v228)
          {
            goto LABEL_597;
          }

          if (!CFNumberGetValue(v228, kCFNumberSInt32Type, &__dst[v217 + 4]))
          {
            goto LABEL_597;
          }

          v229 = CFDictionaryGetValue(v219, @"MWSU8BITMAPWiFiEnh");
          number = v229;
          if (!v229 || !CFNumberGetValue(v229, kCFNumberSInt32Type, &__dst[v217 + 4] + 4))
          {
            goto LABEL_597;
          }

          ++v218;
          v217 += 5;
          if (v218 >= BYTE2(__dst[0]))
          {
LABEL_501:
            v135 = 324;
            goto LABEL_823;
          }
        }

      case 548:
        if (!v8)
        {
          goto LABEL_597;
        }

        memset(__dst, 0, 20);
        if (CFArrayGetCount(v8) != 9)
        {
          goto LABEL_808;
        }

        v182 = __dst;
        v183 = 1;
        while (v183 != 9)
        {
          v184 = CFArrayGetValueAtIndex(v8, v183);
          number = v184;
          if (v184)
          {
            v185 = CFNumberGetValue(v184, kCFNumberSInt16Type, v182);
            ++v183;
            v182 = (v182 + 2);
            if (v185)
            {
              continue;
            }
          }

          goto LABEL_597;
        }

        *buffer = -1431655766;
        v343 = CFArrayGetValueAtIndex(v8, 0);
        number = v343;
        if (!v343 || !CFNumberGetValue(v343, kCFNumberSInt32Type, buffer))
        {
          goto LABEL_872;
        }

        LODWORD(__dst[2]) = *buffer;
LABEL_822:
        v135 = 20;
        goto LABEL_823;
      case 551:
        LQMConfigFromDict = 4294963396;
        if (!v8 || v7 != 244)
        {
          goto LABEL_902;
        }

        v76 = 244;
        goto LABEL_392;
      case 560:
        LQMConfigFromDict = 4294963396;
        if (!v8 || v7 != 4)
        {
          goto LABEL_902;
        }

        v391 = v8;
        DWORD2(v390) = 4;
        goto LABEL_14;
      case 562:
        SensingRequest = _setUCMExtProfile(v6, &v389, v8);
        goto LABEL_753;
      case 564:
        LQMConfigFromDict = 4294963396;
        if (!v8 || v7 != 32)
        {
          goto LABEL_902;
        }

        v76 = 32;
        goto LABEL_392;
      case 565:
      case 575:
        LQMConfigFromDict = 4294963396;
        if (!v8 || v7 != 4)
        {
          goto LABEL_902;
        }

        v76 = 4;
        goto LABEL_392;
      case 571:
        SensingRequest = _setDeviceOrientation(v6, &v389, v8);
        goto LABEL_753;
      case 572:
        SensingRequest = _setAccessoryState(v6, &v389, v8);
        goto LABEL_753;
      case 582:
        if (!v8)
        {
          goto LABEL_597;
        }

        if ((*(v6 + 108) & 1) == 0)
        {
          goto LABEL_902;
        }

LABEL_355:
        LODWORD(__dst[0]) = CFBooleanGetValue(v8);
LABEL_640:
        v11 = 4;
        goto LABEL_641;
      default:
        if (v5 == 368)
        {
          LODWORD(__dst[0]) = *v8;
          WORD2(__dst[0]) = *(v8 + 2);
          v155 = 6;
          goto LABEL_802;
        }

        if (v5 != 372)
        {
          goto LABEL_902;
        }

        if (!v8)
        {
          goto LABEL_597;
        }

        *buffer = 0;
        memset(__dst, 0, 43);
        v30 = CFDictionaryGetValue(v8, @"IO80211InterfaceBssidBlacklistMode");
        number = v30;
        if (!v30)
        {
          goto LABEL_872;
        }

        CFNumberGetValue(v30, kCFNumberSInt32Type, buffer);
        v31 = CFDictionaryGetValue(v8, @"IO80211InterfaceBssidBlacklistBssids");
        if (!v31)
        {
          goto LABEL_864;
        }

        v32 = v31;
        if (CFArrayGetCount(v31) >= 7uLL)
        {
          LOBYTE(__dst[0]) = 7;
        }

        else
        {
          LOBYTE(__dst[0]) = CFArrayGetCount(v32);
          if (!LOBYTE(__dst[0]))
          {
            goto LABEL_864;
          }
        }

        v358 = 0;
        v359 = __dst + 1;
        do
        {
          v360 = CFArrayGetValueAtIndex(v32, v358);
          v399.length = CFDataGetLength(v360);
          v399.location = 0;
          CFDataGetBytes(v360, v399, v359);
          ++v358;
          v359 += 6;
        }

        while (v358 < LOBYTE(__dst[0]));
LABEL_864:
        v49 = 43;
        break;
    }

LABEL_865:
    DWORD2(v390) = v49;
    v361 = __dst;
LABEL_866:
    v391 = v361;
    goto LABEL_867;
  }

  if (v5 <= 238)
  {
    switch(v5)
    {
      case 1:
        if (!v8)
        {
          goto LABEL_872;
        }

        if (CFStringGetLength(v8) > 32)
        {
          goto LABEL_872;
        }

        if (CFStringGetLength(v8) < 1)
        {
          goto LABEL_872;
        }

        memset(__dst, 0, 33);
        if (!CFStringGetCString(v8, __dst, 33, 0x8000100u))
        {
          goto LABEL_872;
        }

        DWORD2(v390) = strlen(__dst);
        goto LABEL_310;
      case 2:
        LQMConfigFromDict = 4294963396;
        if (!v8 || !v7)
        {
          goto LABEL_902;
        }

        *__dst = xmmword_2548C5030;
        v129 = CFDictionaryGetValue(v8, @"AUTH_LOWER");
        number = v129;
        if (!v129)
        {
          goto LABEL_901;
        }

        if (!CFNumberGetValue(v129, kCFNumberSInt32Type, __dst + 4))
        {
          goto LABEL_872;
        }

        v130 = CFDictionaryGetValue(v8, @"AUTH_UPPER");
        number = v130;
        if (v130)
        {
          if (!CFNumberGetValue(v130, kCFNumberSInt32Type, &__dst[1]))
          {
            goto LABEL_872;
          }
        }

        v127 = CFDictionaryGetValue(v8, @"AUTH_UPPER_EXT");
        number = v127;
        if (!v127)
        {
          goto LABEL_342;
        }

LABEL_340:
        v128 = (__dst | 0xC);
        goto LABEL_341;
      case 3:
        LQMConfigFromDict = 4294963396;
        if (!v8 || v7 != 148)
        {
          goto LABEL_902;
        }

        v76 = 148;
LABEL_392:
        DWORD2(v390) = v76;
        v391 = v8;
        goto LABEL_14;
      case 4:
        LQMConfigFromDict = 4294963396;
        if (!v8 || !v7)
        {
          goto LABEL_902;
        }

        v126 = CFDictionaryGetValue(v8, @"CHANNEL");
        number = v126;
        if (!v126)
        {
          goto LABEL_901;
        }

        HIDWORD(__dst[1]) = 0;
        *(__dst + 4) = 0;
        LODWORD(__dst[0]) = 1;
        if (!CFNumberGetValue(v126, kCFNumberSInt32Type, &__dst[1]))
        {
          goto LABEL_872;
        }

        v127 = CFDictionaryGetValue(v8, @"CHANNEL_FLAGS");
        number = v127;
        if (v127)
        {
          v128 = &__dst[1] + 4;
LABEL_341:
          if (!CFNumberGetValue(v127, kCFNumberSInt32Type, v128))
          {
            goto LABEL_872;
          }
        }

        else
        {
          if (LODWORD(__dst[1]) >= 0xF)
          {
            v347 = 18;
          }

          else
          {
            v347 = 10;
          }

          HIDWORD(__dst[1]) = v347;
        }

LABEL_342:
        v135 = 16;
        goto LABEL_823;
      case 5:
      case 8:
      case 14:
      case 18:
      case 26:
      case 28:
      case 31:
      case 33:
      case 34:
      case 35:
      case 36:
      case 41:
      case 52:
      case 55:
      case 56:
      case 57:
      case 58:
      case 59:
      case 60:
      case 63:
      case 64:
      case 67:
      case 68:
      case 70:
      case 71:
      case 72:
      case 82:
      case 91:
      case 102:
      case 104:
        goto LABEL_11;
      case 6:
        if (!v8)
        {
          goto LABEL_597;
        }

        LODWORD(__dst[1]) = -1431655766;
        __dst[0] = 0xAAAAAAAA00000001;
        v157 = CFDictionaryGetValue(v8, @"PROTMODE");
        number = v157;
        if (!v157 || !CFNumberGetValue(v157, kCFNumberSInt32Type, __dst + 4))
        {
          goto LABEL_872;
        }

        v140 = @"PROTMODE_THRESHOLD";
LABEL_318:
        v158 = CFDictionaryGetValue(v8, v140);
        number = v158;
        if (!v158 || !CFNumberGetValue(v158, kCFNumberSInt32Type, &__dst[1]))
        {
          goto LABEL_872;
        }

LABEL_320:
        v135 = 12;
        goto LABEL_823;
      case 7:
        LQMConfigFromDict = 4294963396;
        if (!v8 || !v7)
        {
          goto LABEL_902;
        }

        LODWORD(__dst[1]) = 0;
        __dst[0] = 0;
        if (!CFDictionaryGetValueIfPresent(v8, @"TX_POWER", &number))
        {
          goto LABEL_901;
        }

        CFNumberGetValue(number, kCFNumberSInt32Type, &__dst[1]);
        if (!CFDictionaryGetValueIfPresent(v8, @"TX_POWER_UNIT", &number))
        {
          goto LABEL_872;
        }

        CFNumberGetValue(number, kCFNumberSInt32Type, __dst + 4);
LABEL_405:
        v49 = 12;
        goto LABEL_865;
      case 9:
        memset(__dst, 170, 18);
        if (!v8 || !CFStringGetCString(v8, __dst, 18, 0x8000100u))
        {
          goto LABEL_872;
        }

        v115 = ether_aton(__dst);
        if (!v115)
        {
          goto LABEL_928;
        }

        DWORD2(v390) = 6;
        v391 = v115;
        goto LABEL_803;
      case 10:
      case 11:
      case 12:
      case 13:
      case 15:
      case 16:
      case 17:
      case 20:
      case 21:
      case 23:
      case 27:
      case 30:
      case 38:
      case 40:
      case 42:
      case 43:
      case 44:
      case 45:
      case 46:
      case 48:
      case 49:
      case 50:
      case 53:
      case 54:
      case 73:
      case 74:
      case 75:
      case 76:
      case 77:
      case 78:
      case 79:
      case 83:
      case 86:
      case 87:
      case 88:
      case 89:
      case 90:
      case 92:
      case 93:
      case 96:
      case 97:
      case 98:
      case 99:
      case 100:
      case 101:
      case 103:
      case 105:
      case 106:
        goto LABEL_902;
      case 19:
        LODWORD(__dst[0]) = 1;
        *(&__dst[1] + 4) = 0;
        *(__dst + 4) = 0;
        HIDWORD(__dst[2]) = 0;
        v131 = CFArrayGetCount(v8);
        if (v131 > 4)
        {
          goto LABEL_872;
        }

        v132 = v131;
        if (v131 < 1)
        {
          goto LABEL_266;
        }

        v133 = 0;
        v134 = &__dst[1];
        while (1)
        {
          number = CFArrayGetValueAtIndex(v8, v133);
          if (!CFNumberGetValue(number, kCFNumberSInt32Type, v134))
          {
            goto LABEL_872;
          }

          ++v133;
          v134 = (v134 + 4);
          if (v132 == v133)
          {
LABEL_266:
            HIDWORD(__dst[0]) = v132;
            v135 = 24;
            goto LABEL_823;
          }
        }

      case 22:
        _WAPIStop(v6 + 4);
        if (!v8)
        {
          goto LABEL_203;
        }

        if (!v7)
        {
          goto LABEL_597;
        }

        LODWORD(__dst[1]) = 0;
        __dst[0] = 0;
        v102 = CFDictionaryGetValue(v8, @"DISASSOC_REASON");
        if (!v102)
        {
          goto LABEL_597;
        }

        CFNumberGetValue(v102, kCFNumberSInt32Type, __dst + 4);
        v103 = CFDictionaryGetValue(v8, @"APPLE80211KEY_DISASSOC_FLUSH_SCAN_CACHE");
        if (v103)
        {
          CFNumberGetValue(v103, kCFNumberSInt32Type, &__dst[1]);
        }

        DWORD2(v390) = 12;
        v391 = __dst;
LABEL_203:
        if (!Apple80211IOCTLSetWrapper())
        {
          goto LABEL_837;
        }

        if (*__error() != 102 && *__error() != 6)
        {
          goto LABEL_596;
        }

        goto LABEL_17;
      case 24:
        if (!v8)
        {
          goto LABEL_835;
        }

        v136 = v6;
        v137 = v8;
        v138 = 24;
        goto LABEL_313;
      case 25:
        if (v8)
        {
          v136 = v6;
          v137 = v8;
          v138 = 25;
LABEL_313:
          SensingRequest = _startAPMode(v136, v137, v138);
          goto LABEL_753;
        }

        if ((*(v6 + 95) & 0x20) == 0)
        {
          _stopHostAPD(v6);
        }

LABEL_835:
        DWORD1(v390) = 2;
LABEL_836:
        if (!Apple80211IOCTLSetWrapper())
        {
          goto LABEL_837;
        }

LABEL_594:
        if (*__error() == 102 || *__error() == 6)
        {
          goto LABEL_902;
        }

LABEL_596:
        if (*__error() != 22)
        {
          goto LABEL_873;
        }

        goto LABEL_597;
      case 29:
        memset(buffer, 170, 16);
        memset(__dst, 170, 18);
        v116 = CFDictionaryGetValue(v8, @"DEAUTH_REASON");
        number = v116;
        if (!v116)
        {
          goto LABEL_872;
        }

        if (!CFNumberGetValue(v116, kCFNumberSInt32Type, &buffer[4]))
        {
          goto LABEL_872;
        }

        v117 = CFDictionaryGetValue(v8, @"DEAUTH_EA");
        if (!v117 || !CFStringGetCString(v117, __dst, 18, 0x8000100u))
        {
          goto LABEL_872;
        }

        v118 = ether_aton(__dst);
        if (!v118)
        {
          goto LABEL_928;
        }

        v119 = *v118->octet;
        *&buffer[12] = *&v118->octet[4];
        *&buffer[8] = v119;
        *buffer = 1;
        v120 = 16;
        goto LABEL_860;
      case 32:
        LQMConfigFromDict = 4294963396;
        if (!v8 || !v7)
        {
          goto LABEL_902;
        }

        v147 = CFArrayGetCount(v8);
        *(&__dst[22] + 4) = 0;
        *(&__dst[20] + 4) = 0u;
        *(&__dst[18] + 4) = 0u;
        *(&__dst[16] + 4) = 0u;
        *(&__dst[14] + 4) = 0u;
        *(&__dst[12] + 4) = 0u;
        *(&__dst[10] + 4) = 0u;
        *(&__dst[8] + 4) = 0u;
        *(&__dst[6] + 4) = 0u;
        *(&__dst[4] + 4) = 0u;
        *(&__dst[2] + 4) = 0u;
        *(__dst + 4) = 0u;
        LODWORD(__dst[0]) = 1;
        if (v147 < 1)
        {
          goto LABEL_302;
        }

        v148 = 0;
        v149 = &__dst[2];
        while (1)
        {
          v150 = CFArrayGetValueAtIndex(v8, v148);
          if (!v150)
          {
            goto LABEL_872;
          }

          v151 = v150;
          v152 = CFDictionaryGetValue(v150, @"RATESET_RATE");
          number = v152;
          if (!v152)
          {
            goto LABEL_872;
          }

          if (!CFNumberGetValue(v152, kCFNumberSInt32Type, v149 - 4))
          {
            goto LABEL_872;
          }

          v153 = CFDictionaryGetValue(v151, @"RATESET_FLAGS");
          number = v153;
          if (!v153 || !CFNumberGetValue(v153, kCFNumberSInt32Type, v149))
          {
            goto LABEL_872;
          }

          ++v148;
          v149 = (v149 + 12);
          if (v147 == v148)
          {
LABEL_302:
            WORD2(__dst[0]) = v147;
            v135 = 188;
            goto LABEL_823;
          }
        }

      case 37:
      case 39:
        LODWORD(__dst[0]) = 1;
        *(&__dst[1] + 4) = 0;
        *(__dst + 4) = 0;
        HIDWORD(__dst[2]) = 0;
        v59 = CFArrayGetCount(v8);
        if (v59 < 1)
        {
          goto LABEL_119;
        }

        v60 = 0;
        v61 = &__dst[1];
        while (1)
        {
          v62 = CFArrayGetValueAtIndex(v8, v60);
          number = v62;
          if (!v62 || !CFNumberGetValue(v62, kCFNumberSInt32Type, v61))
          {
            goto LABEL_872;
          }

          ++v60;
          v61 = (v61 + 4);
          if (v59 == v60)
          {
LABEL_119:
            HIDWORD(__dst[0]) = v59;
            DWORD2(v390) = 24;
            v391 = __dst;
            goto LABEL_825;
          }
        }

      case 47:
        LQMConfigFromDict = 4294963396;
        if (!v8 || !v7)
        {
          goto LABEL_902;
        }

        memset(__dst, 170, sizeof(__dst));
        SensingRequest = _getBGScanData(v8, __dst, v6 + 88);
        if (SensingRequest)
        {
          goto LABEL_753;
        }

        DWORD2(v390) = 8240;
        v391 = __dst;
        goto LABEL_825;
      case 51:
        __dst[0] = 0;
        LQMConfigFromDict = 4294963396;
        if (!v8 || !v7)
        {
          goto LABEL_901;
        }

        CFStringGetCString(v8, __dst + 4, 3, 0x8000100u);
        LODWORD(__dst[0]) = 1;
        v156 = 8;
        goto LABEL_309;
      case 61:
        __dst[0] = 1;
        LODWORD(__dst[1]) = 0;
        v139 = CFDictionaryGetValue(v8, @"MAX_FACTOR");
        number = v139;
        if (!v139 || !CFNumberGetValue(v139, kCFNumberSInt32Type, __dst + 4))
        {
          goto LABEL_872;
        }

        v140 = @"MAX_DENSITY";
        goto LABEL_318;
      case 62:
        LODWORD(__dst[0]) = 1;
        v121 = CFDictionaryGetValue(v8, @"BA");
        BoolRef = makeBoolRef(v121);
        if (!BoolRef)
        {
          goto LABEL_872;
        }

        BYTE4(__dst[0]) = CFBooleanGetValue(BoolRef) != 0;
        v123 = CFDictionaryGetValue(v8, @"IMMEDIATE_BA");
        if (!v123)
        {
          goto LABEL_872;
        }

        BYTE5(__dst[0]) = CFBooleanGetValue(v123) != 0;
        v124 = CFDictionaryGetValue(v8, @"CCBA");
        if (!v124)
        {
          goto LABEL_872;
        }

        BYTE6(__dst[0]) = CFBooleanGetValue(v124) != 0;
        v125 = CFDictionaryGetValue(v8, @"IMPLICIT_BA");
        if (!v125)
        {
          goto LABEL_872;
        }

        HIBYTE(__dst[0]) = CFBooleanGetValue(v125) != 0;
LABEL_446:
        v155 = 8;
        goto LABEL_802;
      case 65:
        *__dst = xmmword_2548C5030;
        v168 = CFDictionaryGetValue(v8, @"MODE");
        number = v168;
        if (!v168)
        {
          goto LABEL_872;
        }

        if (!CFNumberGetValue(v168, kCFNumberSInt32Type, __dst + 4))
        {
          goto LABEL_872;
        }

        v169 = CFDictionaryGetValue(v8, @"SUBMODE");
        number = v169;
        if (!v169)
        {
          goto LABEL_872;
        }

        if (!CFNumberGetValue(v169, kCFNumberSInt32Type, &__dst[1]))
        {
          goto LABEL_872;
        }

        v127 = CFDictionaryGetValue(v8, @"FLAGS");
        number = v127;
        if (!v127)
        {
          goto LABEL_872;
        }

        goto LABEL_340;
      case 66:
        LODWORD(__dst[0]) = 1;
        *(__dst + 4) = 0;
        HIDWORD(__dst[1]) = 0;
        v159 = CFArrayGetCount(v8);
        *buffer = -1431655766;
        if (v159 < 1)
        {
          goto LABEL_326;
        }

        v160 = v159;
        v161 = 0;
        while (1)
        {
          v162 = CFArrayGetValueAtIndex(v8, v161);
          number = v162;
          if (!v162 || !CFNumberGetValue(v162, kCFNumberSInt32Type, buffer))
          {
            goto LABEL_872;
          }

          *(__dst + *buffer / 8 + 4) |= 1 << (buffer[0] & 7);
          if (v160 == ++v161)
          {
LABEL_326:
            v82 = 16;
            goto LABEL_327;
          }
        }

      case 69:
        v104 = malloc_type_malloc(0x3AD8uLL, 0x1000040BBD6A9C0uLL);
        LODWORD(__dst[0]) = -1431655766;
        if (!v104)
        {
          goto LABEL_830;
        }

        v105 = v104;
        *v104 = 1;
        v106 = CFDictionaryGetValue(v8, @"WOW_WAKE_CONDITIONS");
        if (!v106)
        {
          goto LABEL_215;
        }

        v107 = v106;
        v108 = CFArrayGetCount(v106);
        if (v108 > 6)
        {
          goto LABEL_219;
        }

        v109 = v108;
        if (v108 < 1)
        {
          goto LABEL_215;
        }

        v110 = 0;
        do
        {
          number = CFArrayGetValueAtIndex(v107, v110);
          if (!CFNumberGetValue(number, kCFNumberSInt32Type, __dst) || LODWORD(__dst[0]) > 5)
          {
            goto LABEL_219;
          }

          *(v105 + 4) |= 1 << SLOBYTE(__dst[0]);
          ++v110;
        }

        while (v109 != v110);
LABEL_215:
        v111 = CFDictionaryGetValue(v8, @"WOW_BEACON_LOSS_TIME");
        number = v111;
        if (v111 && !CFNumberGetValue(v111, kCFNumberSInt32Type, v105 + 2))
        {
          goto LABEL_219;
        }

        v112 = CFDictionaryGetValue(v8, @"WOW_PATTERNS");
        if (!v112)
        {
          goto LABEL_917;
        }

        v113 = v112;
        v114 = CFArrayGetCount(v112);
        if (v114 > 10)
        {
          goto LABEL_219;
        }

        v370 = v114;
        if (v114 >= 1)
        {
          v371 = 0;
          v372 = v105 + 5;
          while (1)
          {
            v373 = CFArrayGetValueAtIndex(v113, v371);
            v374 = CFDataGetLength(v373);
            *(v372 - 1) = v374;
            if (v374 > 0x5DC)
            {
              break;
            }

            BytePtr = CFDataGetBytePtr(v373);
            memcpy(v372, BytePtr, 0x5DCuLL);
            ++v371;
            v372 += 376;
            if (v370 == v371)
            {
              goto LABEL_916;
            }
          }

LABEL_219:
          free(v105);
          goto LABEL_808;
        }

LABEL_916:
        v105[3] = v370;
LABEL_917:
        v376 = CFDictionaryGetValue(v8, @"WOW_ENABLE_LPAS");
        if (v376)
        {
          LODWORD(v376) = CFBooleanGetValue(v376);
        }

        v105[3764] = v376;
        v377 = CFDictionaryGetValue(v8, @"WOW_ENABLE_CAPTIVE");
        if (v377)
        {
          LODWORD(v377) = CFBooleanGetValue(v377);
        }

        v105[3765] = v377;
        DWORD2(v390) = 15064;
        v391 = v105;
        v378 = Apple80211RawSet();
        free(v105);
        if (!v378)
        {
          goto LABEL_900;
        }

        goto LABEL_826;
      case 80:
        __dst[0] = 1;
        LODWORD(__dst[1]) = 0;
        v170 = CFDictionaryGetValue(v8, @"ROAM_THRESH_RSSI");
        number = v170;
        if (!v170)
        {
          goto LABEL_808;
        }

        if (!CFNumberGetValue(v170, kCFNumberSInt32Type, __dst + 4))
        {
          goto LABEL_808;
        }

        v171 = CFDictionaryGetValue(v8, @"ROAM_THRESH_RATE");
        number = v171;
        if (!v171 || !CFNumberGetValue(v171, kCFNumberSInt32Type, &__dst[1]))
        {
          goto LABEL_808;
        }

        goto LABEL_320;
      case 81:
        LOBYTE(__dst[0]) = 0;
        v141 = CFDictionaryGetValue(v8, @"V_DBG_FLAG_ASSOC");
        if (v141 && CFBooleanGetValue(v141))
        {
          LOBYTE(__dst[0]) = 1;
          v142 = 3;
        }

        else
        {
          v142 = 2;
        }

        v339 = CFDictionaryGetValue(v8, @"V_DBG_FLAG_CONNECTION");
        if (v339 && CFBooleanGetValue(v339))
        {
          LOBYTE(__dst[0]) = v142;
        }

        v135 = 1;
        goto LABEL_823;
      case 84:
        LODWORD(__dst[0]) = 1;
        *(&__dst[1] + 4) = 0;
        *(__dst + 4) = 0;
        v95 = CFDictionaryGetValue(v8, @"LQ_RSSI_DIVISOR");
        number = v95;
        if (!v95)
        {
          goto LABEL_808;
        }

        if (!CFNumberGetValue(v95, kCFNumberSInt32Type, __dst + 4))
        {
          goto LABEL_808;
        }

        v96 = CFDictionaryGetValue(v8, @"LQ_TX_RATE_DIVISOR");
        number = v96;
        if (!v96)
        {
          goto LABEL_808;
        }

        if (!CFNumberGetValue(v96, kCFNumberSInt32Type, &__dst[1]))
        {
          goto LABEL_808;
        }

        v97 = CFDictionaryGetValue(v8, @"LQ_EVENT_MIN_INTERVAL");
        number = v97;
        if (!v97 || !CFNumberGetValue(v97, kCFNumberSInt32Type, &__dst[1] + 4))
        {
          goto LABEL_808;
        }

        goto LABEL_822;
      case 85:
        bzero(__dst + 4, 0x810uLL);
        LODWORD(__dst[0]) = 1;
        v163 = CFDictionaryGetValue(v8, @"CUSTOM_IE_FRAME_TYPE");
        number = v163;
        if (!v163)
        {
          goto LABEL_808;
        }

        if (!CFNumberGetValue(v163, kCFNumberSInt32Type, __dst + 4))
        {
          goto LABEL_808;
        }

        v164 = CFDictionaryGetValue(v8, @"CUSTOM_IE_ADD");
        if (!v164)
        {
          goto LABEL_808;
        }

        LODWORD(__dst[1]) = CFBooleanGetValue(v164) != 0;
        v165 = CFDictionaryGetValue(v8, @"CUSTOM_IE_SIG_LEN");
        number = v165;
        if (!v165)
        {
          goto LABEL_808;
        }

        if (!CFNumberGetValue(v165, kCFNumberSInt32Type, &__dst[1] + 4))
        {
          goto LABEL_808;
        }

        v166 = CFDictionaryGetValue(v8, @"CUSTOM_IE_DATA");
        if (!v166)
        {
          goto LABEL_808;
        }

        v167 = v166;
        LODWORD(__dst[2]) = CFDataGetLength(v166);
        CFDataGetBytePtr(v167);
        __memcpy_chk();
        v156 = 2068;
LABEL_309:
        DWORD2(v390) = v156;
LABEL_310:
        v391 = __dst;
        goto LABEL_825;
      case 94:
        LODWORD(__dst[0]) = 1;
        *(__dst + 4) = 0;
        *(&__dst[2] + 4) = 0;
        *(&__dst[1] + 4) = 0;
        HIDWORD(__dst[3]) = 0;
        v98 = CFDictionaryGetValue(v8, @"VIRT_IF_ROLE");
        number = v98;
        if (!v98 || !CFNumberGetValue(v98, kCFNumberSInt32Type, &__dst[1] + 4))
        {
          CStringPtr = CFStringGetCStringPtr(@"VIRT_IF_ROLE", 0x600u);
          syslog(3, "APPLE80211_IOC_VIRTUAL_IF_CREATE %s is invalid\n", CStringPtr);
          goto LABEL_808;
        }

        DWORD2(v390) = 32;
        v391 = __dst;
        v99 = Apple80211IOCTLSetWrapper();
        syslog(3, "APPLE80211_IOC_VIRTUAL_IF_CREATE bsdErr %d\n", v99);
        if (v99)
        {
          goto LABEL_826;
        }

        v100 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], &__dst[2], 0x8000100u);
        if (v100)
        {
          v101 = v100;
          CFDictionarySetValue(v8, @"VIRT_IF_NAME", v100);
          CFRelease(v101);
          goto LABEL_900;
        }

LABEL_830:
        LQMConfigFromDict = 4294963395;
        goto LABEL_911;
      case 95:
        LODWORD(__dst[0]) = 1;
        *(&__dst[1] + 4) = 0;
        *(__dst + 4) = 0;
        v154 = CFDictionaryGetValue(v8, @"VIRT_IF_NAME");
        if (!v154 || !CFStringGetCString(v154, __dst + 4, 16, 0x8000100u))
        {
          goto LABEL_808;
        }

        v155 = 20;
LABEL_802:
        DWORD2(v390) = v155;
        v391 = __dst;
LABEL_803:
        if (!Apple80211IOCTLSetWrapper())
        {
          goto LABEL_900;
        }

        if (*__error() != 102 && *__error() != 6)
        {
          goto LABEL_828;
        }

        goto LABEL_901;
      case 107:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(__dst[0]) = 136315394;
          *(__dst + 4) = "Apple80211SetWithIOCTL";
          WORD2(__dst[1]) = 1024;
          *(&__dst[1] + 6) = 13985;
          _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s:%d WiFiRoam : Processing APPLE80211_IOC_ROAM\n", __dst, 0x12u);
        }

        *&buffer[4] = 0;
        *buffer = 1;
        *&buffer[8] = -1;
        *&buffer[12] = 0xFFFFLL;
        if (v8)
        {
          v143 = CFDictionaryGetValue(v8, @"BSSID");
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(__dst[0]) = 136315650;
            *(__dst + 4) = "Apple80211SetWithIOCTL";
            WORD2(__dst[1]) = 1024;
            *(&__dst[1] + 6) = 13999;
            WORD1(__dst[2]) = 2048;
            *(&__dst[2] + 4) = v143;
            _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s:%d WiFiRoam : Processing APPLE80211_IOC_ROAM dataRef:%p\n", __dst, 0x1Cu);
          }

          if (!v143)
          {
            goto LABEL_872;
          }

          v144 = CFGetTypeID(v143);
          if (v144 == CFStringGetTypeID())
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(__dst[0]) = 136315394;
              *(__dst + 4) = "Apple80211SetWithIOCTL";
              WORD2(__dst[1]) = 1024;
              *(&__dst[1] + 6) = 14005;
              _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s:%d WiFiRoam : CFType is CFString\n", __dst, 0x12u);
            }

            memset(__dst, 170, 18);
            if (!CFStringGetCString(v143, __dst, 18, 0x8000100u))
            {
              goto LABEL_872;
            }

            v145 = ether_aton(__dst);
            if (!v145)
            {
              goto LABEL_872;
            }

            v146 = *v145->octet;
            *&buffer[12] = *&v145->octet[4];
            *&buffer[8] = v146;
          }

          else
          {
            v348 = CFGetTypeID(v143);
            TypeID = CFDataGetTypeID();
            v350 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
            if (v348 != TypeID)
            {
              if (!v350)
              {
                goto LABEL_872;
              }

              LODWORD(__dst[0]) = 136315394;
              *(__dst + 4) = "Apple80211SetWithIOCTL";
              WORD2(__dst[1]) = 1024;
              *(&__dst[1] + 6) = 14027;
              v345 = MEMORY[0x277D86220];
              v346 = "%s:%d WiFiRoam : Unexpected CFType\n";
              goto LABEL_889;
            }

            if (v350)
            {
              LODWORD(__dst[0]) = 136315394;
              *(__dst + 4) = "Apple80211SetWithIOCTL";
              WORD2(__dst[1]) = 1024;
              *(&__dst[1] + 6) = 14020;
              _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s:%d WiFiRoam : CFType is CFData\n", __dst, 0x12u);
            }

            if (CFDataGetLength(v143) != 6)
            {
              goto LABEL_872;
            }

            v351 = CFDataGetBytePtr(v143);
            v352 = *(v351 + 2);
            *&buffer[8] = *v351;
            *&buffer[12] = v352;
          }

          v353 = CFDictionaryGetValue(v8, @"CHANNEL");
          v354 = CFDictionaryGetValue(v8, @"BAND_FOR_CHANNEL");
          v355 = CFDictionaryGetValue(v8, @"BAND_PREFERENCE");
          v356 = CFDictionaryGetValue(v8, @"ROAM_FLAGS");
          LOBYTE(valuePtr) = 0;
          if (!v353)
          {
LABEL_855:
            if (v356)
            {
              CFNumberGetValue(v356, kCFNumberSInt32Type, &buffer[16]);
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(__dst[0]) = 136315650;
                *(__dst + 4) = "Apple80211SetWithIOCTL";
                WORD2(__dst[1]) = 1024;
                *(&__dst[1] + 6) = 14060;
                WORD1(__dst[2]) = 1024;
                HIDWORD(__dst[2]) = *&buffer[16];
                _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s:%d WiFiRoam : roaming flags present in setRoam :%u \n", __dst, 0x18u);
              }
            }

            if (valuePtr)
            {
              goto LABEL_859;
            }

            if (!v355)
            {
              buffer[6] = 0;
LABEL_859:
              v120 = 20;
              goto LABEL_860;
            }

            LOBYTE(v382) = 0;
            CFNumberGetValue(v355, kCFNumberSInt8Type, &v382);
            v365 = v382;
            if (v382 <= 4u)
            {
              buffer[7] = v382;
              buffer[6] = 1;
              buffer[4] = 0;
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(__dst[0]) = 136315650;
                *(__dst + 4) = "Apple80211SetWithIOCTL";
                WORD2(__dst[1]) = 1024;
                *(&__dst[1] + 6) = 14075;
                WORD1(__dst[2]) = 1024;
                HIDWORD(__dst[2]) = v365;
                _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s:%d WiFiRoam : Band present in setRoam :%u \n", __dst, 0x18u);
              }

              goto LABEL_859;
            }

            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_872;
            }

            LODWORD(__dst[0]) = 136315650;
            *(__dst + 4) = "Apple80211SetWithIOCTL";
            WORD2(__dst[1]) = 1024;
            *(&__dst[1] + 6) = 14078;
            WORD1(__dst[2]) = 1024;
            HIDWORD(__dst[2]) = buffer[7];
            v345 = MEMORY[0x277D86220];
            v346 = "%s:%d WiFiRoam : Invalid band in setRoam :%u \n";
            v363 = __dst;
            v364 = 24;
LABEL_890:
            _os_log_impl(&dword_254882000, v345, OS_LOG_TYPE_DEFAULT, v346, v363, v364);
            goto LABEL_872;
          }

          CFNumberGetValue(v353, kCFNumberSInt8Type, &valuePtr);
          v357 = valuePtr;
          if (!valuePtr || !v355)
          {
            buffer[7] = valuePtr;
            buffer[4] = 1;
            buffer[6] = 0;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(__dst[0]) = 136315650;
              *(__dst + 4) = "Apple80211SetWithIOCTL";
              WORD2(__dst[1]) = 1024;
              *(&__dst[1] + 6) = 14050;
              WORD1(__dst[2]) = 1024;
              HIDWORD(__dst[2]) = v357;
              _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s:%d WiFiRoam : Channel present in setRoam :%u \n", __dst, 0x18u);
            }

            if (v354)
            {
              CFNumberGetValue(v354, kCFNumberSInt8Type, &buffer[5]);
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(__dst[0]) = 136315650;
                *(__dst + 4) = "Apple80211SetWithIOCTL";
                WORD2(__dst[1]) = 1024;
                *(&__dst[1] + 6) = 14053;
                WORD1(__dst[2]) = 1024;
                HIDWORD(__dst[2]) = buffer[5];
                _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s:%d WiFiRoam : Band for the channel present in setRoam :%u \n", __dst, 0x18u);
              }
            }

            goto LABEL_855;
          }

          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_872;
          }

          LODWORD(__dst[0]) = 136315394;
          *(__dst + 4) = "Apple80211SetWithIOCTL";
          WORD2(__dst[1]) = 1024;
          *(&__dst[1] + 6) = 14046;
          v345 = MEMORY[0x277D86220];
          v346 = "%s:%d WiFiRoam : Invalid config. Contains both channel and band. Exiting!\n";
        }

        else
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_872;
          }

          LODWORD(__dst[0]) = 136315394;
          *(__dst + 4) = "Apple80211SetWithIOCTL";
          WORD2(__dst[1]) = 1024;
          *(&__dst[1] + 6) = 14088;
          v345 = MEMORY[0x277D86220];
          v346 = "%s:%d WiFiRoam : Null request dictionary! \n";
        }

LABEL_889:
        v363 = __dst;
        v364 = 18;
        goto LABEL_890;
      default:
        if (v5 != 216)
        {
          goto LABEL_902;
        }

        SensingRequest = _setRoamProfile(v6, &v389, v8);
        goto LABEL_753;
    }
  }

  if (v5 <= 335)
  {
    if (v5 > 254)
    {
      if ((v5 - 256) > 9)
      {
LABEL_348:
        if (v5 != 255)
        {
          goto LABEL_902;
        }

        SensingRequest = _setUCMProfile(v6, &v389, v8);
LABEL_753:
        LQMConfigFromDict = SensingRequest;
        if (!SensingRequest)
        {
          goto LABEL_911;
        }

        goto LABEL_902;
      }

      if (((1 << v5) & 0x324) == 0)
      {
        if (v5 != 256)
        {
          if (v5 == 260)
          {
            SensingRequest = _set2GChainDisable(v6, &v389, v8);
            goto LABEL_753;
          }

          goto LABEL_348;
        }

        LODWORD(__dst[0]) = -1431655766;
        if (!v8)
        {
          goto LABEL_872;
        }

        number = v8;
        if (!CFNumberGetValue(v8, kCFNumberSInt32Type, __dst))
        {
          goto LABEL_872;
        }

        DWORD1(v390) = __dst[0];
LABEL_642:
        if (Apple80211IOCTLSetWrapper())
        {
LABEL_643:
          if (*__error() != 102 && *__error() != 6)
          {
            goto LABEL_871;
          }

LABEL_901:
          if (!LQMConfigFromDict)
          {
            goto LABEL_911;
          }

          goto LABEL_902;
        }

LABEL_900:
        LQMConfigFromDict = 0;
        goto LABEL_901;
      }

      goto LABEL_11;
    }

    switch(v5)
    {
      case 239:
        HIDWORD(__dst[16]) = 0;
        LODWORD(__dst[0]) = 1;
        *(__dst + 4) = 0u;
        *(&__dst[2] + 4) = 0u;
        *(&__dst[4] + 4) = 0u;
        *(&__dst[6] + 4) = 0u;
        *(&__dst[8] + 4) = 0u;
        *(&__dst[10] + 4) = 0u;
        *(&__dst[12] + 4) = 0u;
        *(&__dst[14] + 4) = 0u;
        if (v8)
        {
          v78 = CFDictionaryGetValue(v8, @"CHIP_RESET_TRIGGER");
          v79 = CFDictionaryGetValue(v8, @"CHIP_RESET_NONFATAL");
          v80 = makeBoolRef(v79);
          if (!v78 || (v81 = v80, CFStringGetLength(v78) > 128))
          {
LABEL_808:
            LQMConfigFromDict = 4294963396;
            goto LABEL_911;
          }

          CFStringGetCStringPtr(v78, 0);
          CFStringGetLength(v78);
          __memcpy_chk();
          if (v81)
          {
            BYTE4(__dst[16]) = CFBooleanGetValue(v81) != 0;
          }
        }

        v82 = 136;
LABEL_327:
        DWORD2(v390) = v82;
        v391 = __dst;
        break;
      case 241:
        v77 = __dst;
        memcpy(__dst, &unk_2548C54F8, 0x708uLL);
        SensingRequest = _getRangingPeerRequest(v8, __dst);
        if (SensingRequest)
        {
          goto LABEL_753;
        }

        *(&v390 + 4) = v9 | 0x70800000000;
LABEL_898:
        v391 = v77;
LABEL_899:
        if (!Apple80211RawSet())
        {
          goto LABEL_900;
        }

LABEL_826:
        if (*__error() == 102 || *__error() == 6)
        {
LABEL_870:
          LQMConfigFromDict = 4294963393;
          goto LABEL_902;
        }

LABEL_828:
        if (*__error() == 22)
        {
          goto LABEL_872;
        }

        goto LABEL_873;
      case 245:
        bzero(__dst + 4, 0x4D8uLL);
        LODWORD(__dst[0]) = 2;
        v14 = CFDictionaryGetValue(v8, @"LEAKY_AP_SSID");
        if (!v14)
        {
          goto LABEL_872;
        }

        v15 = v14;
        if (CFEqual(v14, &stru_2866A9700) || CFStringGetLength(v15) > 31 || !CFStringGetCString(v15, &__dst[1], 32, 0x8000100u))
        {
          goto LABEL_872;
        }

        HIDWORD(__dst[0]) = CFStringGetLength(v15);
        v16 = CFDictionaryGetValue(v8, @"LEAKY_AP_LEARNED_DATA_ARRAY");
        if (v16)
        {
          v17 = v16;
          v18 = CFArrayGetCount(v16);
          memset(buffer, 170, 18);
          v19 = v18 - 1;
          if (v18 >= 1)
          {
            v20 = 0;
            if (v19 >= 9)
            {
              v19 = 9;
            }

            v380 = v19;
            v21 = v19 + 1;
            v22 = &__dst[11] + 4;
            while (1)
            {
              v23 = CFArrayGetValueAtIndex(v17, v20);
              v24 = CFDictionaryGetValue(v23, @"LEAKY_AP_BSSID");
              if (!v24 || !CFStringGetCString(v24, buffer, 18, 0x8000100u))
              {
                goto LABEL_872;
              }

              v25 = ether_aton(buffer);
              if (!v25)
              {
LABEL_928:
                LQMConfigFromDict = 4294963395;
                goto LABEL_902;
              }

              v26 = *v25->octet;
              *(v22 - 2) = *&v25->octet[4];
              *(v22 - 2) = v26;
              v27 = CFDictionaryGetValue(v23, @"LEAKY_AP_LEARNED_DATA");
              if (!v27)
              {
                goto LABEL_872;
              }

              v28 = v27;
              if (CFDataGetLength(v27) != 72)
              {
                goto LABEL_872;
              }

              v393.location = 0;
              v393.length = 72;
              CFDataGetBytes(v28, v393, v22);
              ++v20;
              v22 += 120;
              if (v21 == v20)
              {
                v29 = v380 + 1;
                goto LABEL_924;
              }
            }
          }
        }

        v29 = 0;
LABEL_924:
        LODWORD(__dst[5]) = v29;
        v135 = 1244;
LABEL_823:
        DWORD2(v390) = v135;
        v344 = __dst;
LABEL_824:
        v391 = v344;
        break;
      default:
        goto LABEL_902;
    }

LABEL_825:
    if (!Apple80211IOCTLSetWrapper())
    {
      goto LABEL_900;
    }

    goto LABEL_826;
  }

  if (v5 <= 348)
  {
    if (v5 > 344)
    {
      if (v5 != 345)
      {
        if (v5 == 347)
        {
          LQMConfigFromDict = 4294963396;
          if (v8)
          {
            if (v7)
            {
              *buffer = 0;
              LOBYTE(valuePtr) = 0;
              memset(__dst, 0, 28);
              v33 = CFDictionaryGetValue(v8, @"SOFTAP_LOWPOWER_ACTIVE_TO_DYNAMIC_TIMEOUT");
              number = v33;
              if (!v33)
              {
                goto LABEL_901;
              }

              v34 = CFGetTypeID(v33);
              if (v34 != CFNumberGetTypeID())
              {
                goto LABEL_872;
              }

              if (!CFNumberGetValue(number, kCFNumberSInt32Type, buffer))
              {
                goto LABEL_872;
              }

              HIDWORD(__dst[0]) = *buffer;
              v35 = CFDictionaryGetValue(v8, @"SOFTAP_LOWPOWER_DYNAMIC_TO_LOW_TIMEOUT");
              number = v35;
              if (!v35)
              {
                goto LABEL_872;
              }

              v36 = CFGetTypeID(v35);
              if (v36 != CFNumberGetTypeID())
              {
                goto LABEL_872;
              }

              if (!CFNumberGetValue(number, kCFNumberSInt32Type, buffer))
              {
                goto LABEL_872;
              }

              LODWORD(__dst[1]) = *buffer;
              v37 = CFDictionaryGetValue(v8, @"SOFTAP_LOWPOWER_LOW_TO_DISABLE_INTERVAL");
              number = v37;
              if (!v37)
              {
                goto LABEL_872;
              }

              v38 = CFGetTypeID(v37);
              if (v38 != CFNumberGetTypeID())
              {
                goto LABEL_872;
              }

              if (!CFNumberGetValue(number, kCFNumberSInt32Type, buffer))
              {
                goto LABEL_872;
              }

              HIDWORD(__dst[1]) = *buffer;
              v39 = CFDictionaryGetValue(v8, @"SOFTAP_LOWPOWER_RX_PACKET_THRESHOLD");
              number = v39;
              if (!v39)
              {
                goto LABEL_872;
              }

              v40 = CFGetTypeID(v39);
              if (v40 != CFNumberGetTypeID())
              {
                goto LABEL_872;
              }

              if (!CFNumberGetValue(number, kCFNumberSInt32Type, buffer))
              {
                goto LABEL_872;
              }

              LODWORD(__dst[2]) = *buffer;
              v41 = CFDictionaryGetValue(v8, @"SOFTAP_LOWPOWER_BEACON_INTERVAL");
              number = v41;
              if (!v41)
              {
                goto LABEL_872;
              }

              v42 = CFGetTypeID(v41);
              if (v42 != CFNumberGetTypeID())
              {
                goto LABEL_872;
              }

              if (!CFNumberGetValue(number, kCFNumberSInt32Type, buffer))
              {
                goto LABEL_872;
              }

              WORD2(__dst[2]) = *buffer;
              v43 = CFDictionaryGetValue(v8, @"SOFTAP_LOWPOWER_PS_STATE");
              number = v43;
              if (!v43)
              {
                goto LABEL_872;
              }

              v44 = CFGetTypeID(v43);
              if (v44 != CFNumberGetTypeID())
              {
                goto LABEL_872;
              }

              if (!CFNumberGetValue(number, kCFNumberSInt8Type, &valuePtr))
              {
                goto LABEL_872;
              }

              BYTE6(__dst[2]) = valuePtr;
              v45 = CFDictionaryGetValue(v8, @"SOFTAP_LOWPOWER_PS_ENABLE");
              number = v45;
              if (!v45)
              {
                goto LABEL_872;
              }

              v46 = CFGetTypeID(v45);
              if (v46 != CFNumberGetTypeID())
              {
                goto LABEL_872;
              }

              if (!CFNumberGetValue(number, kCFNumberSInt8Type, &valuePtr))
              {
                goto LABEL_872;
              }

              HIBYTE(__dst[2]) = valuePtr;
              v47 = CFDictionaryGetValue(v8, @"SOFTAP_LOWPOWER_AWAKE_LEVEL");
              number = v47;
              if (!v47)
              {
                goto LABEL_872;
              }

              v48 = CFGetTypeID(v47);
              if (v48 != CFNumberGetTypeID() || !CFNumberGetValue(number, kCFNumberSInt8Type, &valuePtr))
              {
                goto LABEL_872;
              }

              LOBYTE(__dst[3]) = valuePtr;
              v49 = 28;
              goto LABEL_865;
            }
          }
        }

        goto LABEL_902;
      }

LABEL_94:
      if (!v8)
      {
LABEL_597:
        LQMConfigFromDict = 4294963396;
        goto LABEL_902;
      }

      number = v8;
      LODWORD(__dst[0]) = 0;
      if (!CFNumberGetValue(v8, kCFNumberSInt32Type, __dst))
      {
        goto LABEL_872;
      }

LABEL_419:
      v194 = 4;
LABEL_420:
      DWORD2(v390) = v194;
LABEL_421:
      v391 = __dst;
    }

    else
    {
      if (v5 == 336)
      {
LABEL_11:
        LQMConfigFromDict = 4294963396;
        if (v8 && v7 == 4)
        {
          DWORD1(v390) = *v8;
LABEL_14:
          if (!Apple80211IOCTLSetWrapper())
          {
LABEL_837:
            LQMConfigFromDict = 0;
            goto LABEL_911;
          }

          if (*__error() == 102 || *__error() == 6)
          {
LABEL_17:
            LQMConfigFromDict = 4294963393;
            goto LABEL_902;
          }

          if (*__error() != 22)
          {
            goto LABEL_873;
          }
        }

        goto LABEL_902;
      }

      if (v5 != 337)
      {
        goto LABEL_902;
      }

      *(&__dst[2] + 4) = 0u;
      *(__dst + 4) = 0u;
      LODWORD(__dst[0]) = 1;
      LQMConfigFromDict = _getLQMConfigFromDict(v8, __dst);
      if (LQMConfigFromDict)
      {
        goto LABEL_901;
      }

      v13 = 36;
LABEL_572:
      DWORD2(v390) = v13;
      v391 = __dst;
    }

LABEL_867:
    if (Apple80211IOCTLSetWrapper())
    {
LABEL_868:
      if (*__error() == 102 || *__error() == 6)
      {
        goto LABEL_870;
      }

LABEL_871:
      if (*__error() == 22)
      {
        goto LABEL_872;
      }

LABEL_873:
      LQMConfigFromDict = *__error();
      if (!LQMConfigFromDict)
      {
        goto LABEL_911;
      }

      goto LABEL_902;
    }

    goto LABEL_900;
  }

  if (v5 <= 357)
  {
    if (v5 == 349)
    {
      LQMConfigFromDict = 4294963396;
      if (!v8 || !v7)
      {
        goto LABEL_902;
      }

      memset(buffer, 0, 24);
      valuePtr = -1431655766;
      v86 = CFDictionaryGetValue(v8, @"IO80211InterfaceSoftAPCSAChannel");
      number = v86;
      if (!v86)
      {
        goto LABEL_901;
      }

      CFNumberGetValue(v86, kCFNumberSInt32Type, &valuePtr);
      v87 = valuePtr;
      *&buffer[8] = valuePtr;
      v382 = -1431655766;
      v88 = CFDictionaryGetValue(v8, @"IO80211InterfaceSoftAPCSAChannelFlag");
      number = v88;
      if (!v88)
      {
        goto LABEL_872;
      }

      CFNumberGetValue(v88, kCFNumberSInt32Type, &v382);
      v89 = v382;
      *&buffer[12] = v382;
      v381 = -1431655766;
      v90 = CFDictionaryGetValue(v8, @"IO80211InterfaceSoftAPCSASwitchCount");
      number = v90;
      if (!v90)
      {
        goto LABEL_872;
      }

      CFNumberGetValue(v90, kCFNumberSInt32Type, &v381);
      v91 = v381;
      *&buffer[16] = v381;
      v92 = CFDictionaryGetValue(v8, @"IO80211InterfaceSoftAPCSAForceDisconnect");
      if (!v92)
      {
        goto LABEL_872;
      }

      v93 = CFBooleanGetValue(v92);
      buffer[20] = v93 != 0;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(__dst[0]) = 136316162;
        *(__dst + 4) = "Apple80211SetWithIOCTL";
        WORD2(__dst[1]) = 1024;
        *(&__dst[1] + 6) = v87;
        WORD1(__dst[2]) = 1024;
        HIDWORD(__dst[2]) = v89;
        LOWORD(__dst[3]) = 1024;
        *(&__dst[3] + 2) = v91;
        HIWORD(__dst[3]) = 1024;
        LODWORD(__dst[4]) = v93 != 0;
        _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: APPLE80211_IOC_SOFTAP_TRIGGER_CSA channel %d, flags 0x%x, count %d, disconnect %d\n", __dst, 0x24u);
      }

      v94 = 24;
    }

    else
    {
      if (v5 != 352)
      {
        goto LABEL_902;
      }

      LQMConfigFromDict = 4294963396;
      if (!v8 || !v7)
      {
        goto LABEL_902;
      }

      LOBYTE(valuePtr) = 0;
      memset(buffer, 0, 36);
      v50 = CFDictionaryGetValue(v8, @"HostApBatteryLevel");
      number = v50;
      if (v50)
      {
        v51 = CFGetTypeID(v50);
        if (v51 == CFNumberGetTypeID())
        {
          if (CFNumberGetValue(number, kCFNumberSInt8Type, &valuePtr))
          {
            buffer[2] = valuePtr;
          }
        }
      }

      v52 = CFDictionaryGetValue(v8, @"HostApWiFiNetworkFlag");
      number = v52;
      if (v52)
      {
        v53 = CFGetTypeID(v52);
        if (v53 == CFNumberGetTypeID())
        {
          if (CFNumberGetValue(number, kCFNumberSInt8Type, &valuePtr))
          {
            *buffer = 0;
          }
        }
      }

      v54 = CFDictionaryGetValue(v8, @"SSID_STR");
      v55 = v54;
      if (v54)
      {
        v56 = CFStringGetLength(v54);
        if ((v56 - 33) < 0xFFFFFFFFFFFFFFE0)
        {
LABEL_872:
          LQMConfigFromDict = 4294963396;
          goto LABEL_902;
        }

        v57 = v56;
        __dst[0] = 0;
        if (CFStringGetLength(v55))
        {
          v394.location = 0;
          v394.length = v57;
          if (!CFStringGetBytes(v55, v394, 0x8000100u, 0, 0, &buffer[4], 32, __dst))
          {
            goto LABEL_597;
          }

          v58 = __dst[0];
        }

        else
        {
          v58 = 0;
        }

        buffer[3] = v58;
        LODWORD(v55) = v58;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(__dst[0]) = 136316418;
        *(__dst + 4) = "Apple80211SetWithIOCTL";
        WORD2(__dst[1]) = 1024;
        *(&__dst[1] + 6) = 15279;
        WORD1(__dst[2]) = 1024;
        HIDWORD(__dst[2]) = buffer[2];
        LOWORD(__dst[3]) = 1024;
        *(&__dst[3] + 2) = *buffer;
        HIWORD(__dst[3]) = 1024;
        LODWORD(__dst[4]) = v55;
        WORD2(__dst[4]) = 2080;
        *(&__dst[4] + 6) = &buffer[4];
        _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: %u : battery: %d flags: %d ssid_len: %d ssid: %s \n ", __dst, 0x2Eu);
      }

      v94 = 36;
    }

LABEL_880:
    DWORD2(v390) = v94;
    v361 = buffer;
    goto LABEL_866;
  }

  if (v5 == 358)
  {
LABEL_6:
    if (v8)
    {
      LOBYTE(__dst[0]) = CFBooleanGetValue(v8);
LABEL_8:
      v11 = 1;
LABEL_641:
      DWORD2(v390) = v11;
      v391 = __dst;
      goto LABEL_642;
    }

    goto LABEL_597;
  }

  if (v5 != 363)
  {
    if (v5 != 365)
    {
      goto LABEL_902;
    }

    goto LABEL_11;
  }

  LQMConfigFromDict = 4294963396;
  if (v8 && v7)
  {
    *&buffer[12] = 0;
    *&buffer[4] = 0;
    *buffer = 1;
    v83 = CFDictionaryGetValue(v8, @"USB_HOST_NOTIFICATION_SEQUENCE_NUM");
    number = v83;
    if (!v83)
    {
      goto LABEL_901;
    }

    if (!CFNumberGetValue(v83, kCFNumberSInt32Type, &buffer[4]))
    {
      goto LABEL_872;
    }

    v84 = CFDictionaryGetValue(v8, @"USB_HOST_NOTIFICATION_USB_CHANGE");
    number = v84;
    if (!v84)
    {
      goto LABEL_872;
    }

    if (!CFNumberGetValue(v84, kCFNumberSInt32Type, &buffer[8]))
    {
      goto LABEL_872;
    }

    v85 = CFDictionaryGetValue(v8, @"USB_HOST_NOTIFICATION_USB_PRESENCE");
    number = v85;
    if (!v85 || !CFNumberGetValue(v85, kCFNumberSInt32Type, &buffer[12]))
    {
      goto LABEL_872;
    }

    DWORD2(v390) = 16;
    v391 = buffer;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(__dst[0]) = 136315394;
      *(__dst + 4) = "Apple80211SetWithIOCTL";
      WORD2(__dst[1]) = 1024;
      *(&__dst[1] + 6) = 16273;
      _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s:%d APPLE80211_IOC_USB_HOST_NOTIFICATION \n", __dst, 0x12u);
    }

    goto LABEL_867;
  }

LABEL_902:
  v366 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    if (v5 > 584)
    {
      v367 = "Error Invalid ioctl";
    }

    else if (v5 == -1)
    {
      v367 = "APPLE80211_IOC_CARD_SPECIFIC";
    }

    else if (v5 < 0 || (v367 = gAppleIoucIndexToString[v5]) == 0)
    {
      v367 = "unknown Apple80211_IOC_";
    }

    LODWORD(__dst[0]) = 136448258;
    *(__dst + 4) = "Apple80211SetWithIOCTL";
    WORD2(__dst[1]) = 1024;
    *(&__dst[1] + 6) = 17428;
    WORD1(__dst[2]) = 2048;
    *(&__dst[2] + 4) = v366 / 0x3B9ACA00;
    WORD2(__dst[3]) = 2048;
    *(&__dst[3] + 6) = v366 % 0x3B9ACA00 / 0x3E8;
    HIWORD(__dst[4]) = 2082;
    __dst[5] = &v387;
    LOWORD(__dst[6]) = 1024;
    *(&__dst[6] + 2) = v5;
    HIWORD(__dst[6]) = 2082;
    __dst[7] = v367;
    LOWORD(__dst[8]) = 1024;
    *(&__dst[8] + 2) = LQMConfigFromDict;
    HIWORD(__dst[8]) = 1024;
    LODWORD(__dst[9]) = LQMConfigFromDict;
    _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s:%u @[%llu.%06llu] ifname['%{public}s'] IOCTL type %d/'%{public}s' return %d/0x%08x\n", __dst, 0x4Cu);
  }

LABEL_911:
  v368 = *MEMORY[0x277D85DE8];
  return LQMConfigFromDict;
}

void Apple80211EventMonitoringHelper(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v75 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 1820) || (v9 = *(a1 + 1848)) == 0 || !*(a1 + 1856) || !*(a1 + 1872))
  {
    _logEventPipeLogWithFormat(0, 0, 0, 1, "%s:%u IOUCPipe is invalid\n", a6, a7, a8, "Apple80211EventMonitoringHelper");
    goto LABEL_9;
  }

  v71 = 0;
  IONotificationPortGetMachPort(v9);
  current_queue = dispatch_get_current_queue();
  dispatch_queue_get_label(current_queue);
  pthread_threadid_np(0, &v71);
  v11 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v12 = *(a1 + 1872);
  v13 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v61 = *v12;
  v63 = *(a1 + 1952);
  v58 = *(a1 + 1848);
  _logEventPipeLogWithFormat(0, *(a1 + 1832), 2, 0, "%s:%u @[%llu.%06llu] tid[0x%llx], dq[%p]/'%s' opaque[%p] ioucPort[%u] machPort[%u], ENTERED readOffset[%d], suspended[%u]\n", v14, v15, v16, "Apple80211EventMonitoringHelper");
  if (!*(a1 + 1952))
  {
    v17 = v12[1];
    v18 = v11;
    if (v17 == *v12)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v67 = *v12;
      v73 = 0u;
      v74 = 0u;
      v72 = 0u;
      v26 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) - v13;
      if (*(a1 + 1840))
      {
        v27 = v26 >= 0xBEBC201;
      }

      else
      {
        v27 = 0;
      }

      if (v27)
      {
        _logEventPipeLogWithFormat(0, 0, 0, 1, "%s:%u processing events for %llu ms, temporarily suspending to prevent starvation", v23, v24, v25, "Apple80211EventMonitoringHelper");
        *(a1 + 1952) = 1;
        v49 = *(a1 + 1840);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = __Apple80211EventMonitoringHelper_block_invoke;
        block[3] = &__block_descriptor_tmp_1882;
        block[4] = a1;
        block[5] = a1;
        block[6] = a3;
        v69 = a2;
        v70 = a4;
        dispatch_async(v49, block);
        goto LABEL_7;
      }

      __dmb(0xBu);
      v28 = *(a1 + 1864);
      if (v28 < v67)
      {
        v50 = "%s:%u Ring offset out of range: %u > %llu\n";
LABEL_55:
        _logEventPipeLogWithFormat(0, 0, 0, 1, v50, v23, v24, v25, "Apple80211EventMonitoringHelper");
        goto LABEL_9;
      }

      v29 = *(a1 + 1856);
      v30 = v29 + v67;
      if ((v30 & 3) != 0)
      {
        v50 = "%s:%u Read Ptr is not multiple of %lu (%d) \n";
        goto LABEL_55;
      }

      v31 = *v30;
      if (*v30 == 80 || v28 - v67 <= 0x2F)
      {
        break;
      }

      v35 = *v30;
      v36 = *(v30 + 32);
      v73 = *(v30 + 16);
      v74 = v36;
      v72 = v35;
      if (v67 == *v12 && v31 == v72)
      {
        if (v72 != 87)
        {
          if ((HIDWORD(v73) - 246) >= 0xFFFFFF0B)
          {
            v51 = gAppleMIndexToString[HIDWORD(v73)];
          }

          v52 = "%s:%u Invalid Metadata state, dump METADATA[%p]: state %d, sequenceNumber %u, payload %u, padding %u, event_code %u/'%s', ifname '%s', readOffset 0x%x, writeOffset 0x%x\n";
LABEL_62:
          _logEventPipeLogWithFormat(0, 0, 0, 1, v52, v23, v24, v25, "Apple80211EventMonitoringHelper");
LABEL_7:
          clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
          v62 = *v12;
          v59 = *(a1 + 1848);
          _logEventPipeLogWithFormat(0, *(a1 + 1832), 2, 0, "%s:%u @[%llu.%06llu] tid[0x%llx], dq[%p]/'%s' opaque[%p] ioucPort[%u] machPort[%u], EXIT readOffset[%d], total time [%llu.%06llu]\n", v19, v20, v21, "Apple80211EventMonitoringHelper");
          goto LABEL_9;
        }

        v37 = (v67 + 48) % v28;
        v38 = v37 + v29;
        v39 = WORD4(v73);
        if (v37 + WORD4(v73) <= v28)
        {
          v42 = 0;
          v41 = 0;
        }

        else
        {
          v40 = (v28 - v37);
          v41 = WORD4(v73) - v40;
          v42 = v29;
          v60 = *(a1 + 1848);
          v43 = v18;
          v44 = v37 + v29;
          _logEventPipeLogWithFormat(0, *(a1 + 1832), 2, 0, "%s:%u @[%llu.%06llu] tid[0x%llx], dq[%p]/'%s' opaque[%p] ioucPort[%u] machPort[%u], log continuation/rollover, logMetadata[%p] log[%p] logSize[%llu] logPayloadOffset[%llu] logContinue[%p] logContinueSize[%llu]\n", v23, v24, v25, "Apple80211EventMonitoringHelper");
          v38 = v44;
          v18 = v43;
          v29 = *(a1 + 1856);
          v28 = *(a1 + 1864);
          v39 = v40;
        }

        v45 = v38 < v29 + v28 && v38 >= v29;
        if (!v45 || v42 && (v42 < v29 || v42 >= v29 + v28) || v39 >= v28 || v41 >= v28)
        {
          v52 = "%s: Unexpected log parameters ring state3(0x%llx), ring buffer(0x%llx), ring size(%llu), logSize(%lu), logContinueSize(%lu)\n";
          v54 = *(a1 + 1872);
          goto LABEL_62;
        }

        if (_writeEventBuffer())
        {
          v46 = *v12;
          if ((HIDWORD(v73) - 246) >= 0xFFFFFF0B)
          {
            v47 = gAppleMIndexToString[HIDWORD(v73)];
          }

          _logEventPipeLogWithFormat(0, 0, 0, 1, "%s: Unexpected _writeEventBuffer err[%d] while processing event, [%u->%u], state[0x%08x] flags[0x%04x] sequenceNumber[0x%04x] timestamp[0x%016llx sec, 0x%016llx usec] payloadLength[0x%04x/%u] padding[%u] event_code[%u]/'%s' ifname['%s']\n", v23, v24, v25, "Apple80211EventMonitoringHelper");
        }

        if (v67 != *v12)
        {
          v56 = *v12;
          v52 = "%s:read pointer moved [%u->%u] unexpected while processing event\n";
          goto LABEL_62;
        }

        v48 = (*(a1 + 1856) + *v12);
        if (v72 == *v48)
        {
          if (__PAIR64__(WORD5(v73), WORD4(v73)) == __PAIR64__(*(v48 + 13), *(v48 + 12)))
          {
            v32 = (WORD4(v73) + WORD5(v73) + v67 + 48) % *(a1 + 1864);
            if ((v32 & 3) != 0)
            {
              v57 = *v12;
              v52 = "%s: Created a bad offset, don't save it, localReadOffset %u, payload %u, padding %u, total length %lu, oldOffset %u, newOffset %u, ringSize 0x%llx";
              goto LABEL_62;
            }

            goto LABEL_19;
          }

          _logEventPipeLogWithFormat(0, 0, 0, 1, "%s:metadata payload/padding changed [%u/%u->%u/%u] while processing event, retrying\n", v23, v24, v25, "Apple80211EventMonitoringHelper");
        }

        else
        {
          v55 = *v48;
          _logEventPipeLogWithFormat(0, 0, 0, 1, "%s:metadata state changed [%d->%d] while processing event, retrying\n", v23, v24, v25, "Apple80211EventMonitoringHelper");
        }
      }

      else
      {
        _logEventPipeLogWithFormat(0, 0, 0, 1, "%s:%u Read pointer moved while copying metadata. Retrying.\n", v23, v24, v25, "Apple80211EventMonitoringHelper");
      }

LABEL_28:
      if (v17 == *v12)
      {
        goto LABEL_7;
      }
    }

    _logEventPipeLogWithFormat(0, 0, 0, 1, "%s:%u Skipping Padding Read offset is %d\n", v23, v24, v25, "Apple80211EventMonitoringHelper");
    LODWORD(v32) = (v67 + 4) % *(a1 + 1864);
LABEL_19:
    v33 = v67;
    v34 = v67;
    atomic_compare_exchange_strong_explicit(v12, &v34, v32, memory_order_relaxed, memory_order_relaxed);
    if (v34 == v33)
    {
      v17 = v12[1];
    }

    else
    {
      v53 = *v12;
      _logEventPipeLogWithFormat(0, 0, 0, 1, "%s: Couldn't update read ptr, ringRead Offset %u, oldReadOffset %u, newOffset %u\n", v23, v24, v25, "Apple80211EventMonitoringHelper");
    }

    goto LABEL_28;
  }

LABEL_9:
  v22 = *MEMORY[0x277D85DE8];
}

uint64_t Apple80211IOCTLSetWrapper()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v3 = v0;
  v65 = *MEMORY[0x277D85DE8];
  v4 = *(v1 + 16);
  if (!*(v0 + 109))
  {
    if (!*(v0 + 1817))
    {
      memset(v40, 0, 32);
      v10 = v0 + 4;
      __strlcpy_chk();
      v11 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
      ioctl(*v3, 0xC0206911uLL, v40);
      v12 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) - v11;
      if (v12 > 0x3B9AC9FF && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136448258;
        v54 = "_logTimeIfThresholdExceeded";
        v55 = 2082;
        *v56 = v40;
        *&v56[8] = 2080;
        *&v56[10] = " 'SIOCGIFFLAGS' ";
        *&v56[18] = 1024;
        *&v56[20] = -1071617775;
        v57 = 1024;
        *v58 = -1071617775;
        *&v58[4] = 2048;
        *&v58[6] = v12 / 0x3B9ACA00;
        v59 = 2048;
        *v60 = v12 % 0x3B9ACA00 / 0x3E8;
        *&v60[8] = 2048;
        *&v60[10] = 1;
        *&v60[18] = 2048;
        v61 = 0;
        _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s: ['%{public}s']%s: ioctl[0x%08x/%u] [%llu.%06llu] Exceeded threshold >= [%llu.%06llu]\n", buf, 0x54u);
      }

      __strlcpy_chk();
      if (*(v3 + 2008))
      {
        v13 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          if (v4 > 584)
          {
            v14 = "Error Invalid ioctl";
          }

          else if (v4 == -1)
          {
            v14 = "APPLE80211_IOC_CARD_SPECIFIC";
          }

          else if (v4 < 0 || (v14 = gAppleIoucIndexToString[v4]) == 0)
          {
            v14 = "unknown Apple80211_IOC_";
          }

          v28 = *(v2 + 24);
          *buf = 136448258;
          v54 = "Apple80211IOCTLSetWrapper";
          v55 = 1024;
          *v56 = 6559;
          *&v56[4] = 2048;
          *&v56[6] = v13 / 0x3B9ACA00;
          *&v56[14] = 2048;
          *&v56[16] = v13 % 0x3B9ACA00 / 0x3E8;
          v57 = 2082;
          *v58 = v3 + 4;
          *&v58[8] = 1024;
          *&v58[10] = *&v40[16];
          v59 = 1024;
          *v60 = v4;
          *&v60[4] = 2082;
          *&v60[6] = v14;
          *&v60[14] = 1024;
          *&v60[16] = v28;
          _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s:%u @[%llu.%06llu] ifname['%{public}s']/0x%08x IOCTL type %d/'%{public}s', len[%d]\n", buf, 0x4Cu);
        }
      }

      v21 = ioctl(*v3, 0x802869C8uLL, v2);
      if (!v21)
      {
        goto LABEL_84;
      }

      v29 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_84;
      }

      v30 = *(v2 + 16);
      if (v30 > 584)
      {
        v31 = "Error Invalid ioctl";
      }

      else if (v30 == -1)
      {
        v31 = "APPLE80211_IOC_CARD_SPECIFIC";
      }

      else if (v30 < 0 || (v31 = gAppleIoucIndexToString[v30]) == 0)
      {
        v31 = "unknown Apple80211_IOC_";
      }

      v32 = *(v2 + 24);
      *buf = 136448770;
      v54 = "Apple80211IOCTLSetWrapper";
      v55 = 1024;
      *v56 = 6565;
      *&v56[4] = 2048;
      *&v56[6] = v29 / 0x3B9ACA00;
      *&v56[14] = 2048;
      *&v56[16] = v29 % 0x3B9ACA00 / 0x3E8;
      v57 = 2082;
      *v58 = v10;
      *&v58[8] = 1024;
      *&v58[10] = *&v40[16];
      v59 = 1024;
      *v60 = v30;
      *&v60[4] = 2082;
      *&v60[6] = v31;
      *&v60[14] = 1024;
      *&v60[16] = v32;
      LOWORD(v61) = 1024;
      *(&v61 + 2) = v21;
      HIWORD(v61) = 1024;
      v62 = v21;
      v33 = MEMORY[0x277D86220];
      v34 = "%{public}s:%u @[%llu.%06llu] ifname['%{public}s']/0x%08x IOCTL type %d/'%{public}s', len[%d] return %d/0x%08x\n";
      v35 = buf;
      v36 = 88;
      goto LABEL_83;
    }

    outputStructCnt = 0;
    bzero(buf, 0x3C30uLL);
    *buf = -2144835128;
    v7 = v3 + 4;
    __strlcpy_chk();
    v63 = v4;
    if (*(v3 + 2008))
    {
      v8 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        if (v4 > 584)
        {
          v9 = "Error Invalid ioctl";
        }

        else if (v4 == -1)
        {
          v9 = "APPLE80211_IOC_CARD_SPECIFIC";
        }

        else if (v4 < 0 || (v9 = gAppleIoucIndexToString[v4]) == 0)
        {
          v9 = "unknown Apple80211_IOC_";
        }

        v15 = *(v2 + 24);
        *v40 = 136448002;
        *&v40[4] = "Apple80211IOCTLSetWrapper";
        *&v40[12] = 1024;
        *&v40[14] = 6489;
        *&v40[18] = 2048;
        *&v40[20] = v8 / 0x3B9ACA00;
        *&v40[28] = 2048;
        *&v40[30] = v8 % 0x3B9ACA00 / 0x3E8;
        v41 = 2082;
        v42 = v3 + 4;
        v43 = 1024;
        v44 = v4;
        v45 = 2082;
        v46 = v9;
        v47 = 1024;
        v48 = v15;
        _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s:%u @[%llu.%06llu] ifname['%{public}s'] IOUC type %d/'%{public}s', len[%d]\n", v40, 0x46u);
      }
    }

    v16 = *(v2 + 20);
    if (v16)
    {
      v64 = *(v2 + 20);
    }

    v17 = *(v2 + 24);
    if (v17 >= 0x3C01)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *v40 = 136446466;
        *&v40[4] = "Apple80211IOCTLSetWrapper";
        *&v40[12] = 1024;
        *&v40[14] = v17;
        v18 = MEMORY[0x277D86220];
        v19 = "%{public}s: req_len %d exceeds max input buffer length\n";
LABEL_38:
        _os_log_impl(&dword_254882000, v18, OS_LOG_TYPE_DEFAULT, v19, v40, 0x12u);
        goto LABEL_39;
      }

      goto LABEL_39;
    }

    v20 = *(v2 + 32);
    if (v17)
    {
      if (v20)
      {
        LODWORD(v54) = *(v2 + 24);
        __memcpy_chk();
LABEL_40:
        v22 = *(v2 + 16);
        if (v22 == 94 || v22 == 293 || v22 == 153)
        {
          outputStructCnt = v17;
        }

        else
        {
          v20 = 0;
          if ((v22 & 0xFFFFFFFE) == 0x18)
          {
            v64 = v16;
          }
        }

        if (*(v3 + 1820))
        {
          pthread_self();
          v23 = IOConnectCallStructMethod(*(v3 + 1820), 0, buf, 0x3C30uLL, v20, &outputStructCnt);
          if (!v23)
          {
            if (outputStructCnt && outputStructCnt != *(v2 + 24))
            {
              v21 = 0;
              *(v2 + 24) = outputStructCnt;
            }

            else
            {
              v21 = 0;
            }

            goto LABEL_84;
          }

          v21 = v23;
          *__error() = v23;
          v24 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
LABEL_84:
            v38 = *MEMORY[0x277D85DE8];
            return v21;
          }

          if (v4 > 584)
          {
            v25 = "Error Invalid ioctl";
          }

          else if (v4 == -1)
          {
            v25 = "APPLE80211_IOC_CARD_SPECIFIC";
          }

          else if (v4 < 0 || (v25 = gAppleIoucIndexToString[v4]) == 0)
          {
            v25 = "unknown Apple80211_IOC_";
          }

          v37 = *(v2 + 24);
          *v40 = 136448514;
          *&v40[4] = "Apple80211IOCTLSetWrapper";
          *&v40[12] = 1024;
          *&v40[14] = 6538;
          *&v40[18] = 2048;
          *&v40[20] = v24 / 0x3B9ACA00;
          *&v40[28] = 2048;
          *&v40[30] = v24 % 0x3B9ACA00 / 0x3E8;
          v41 = 2082;
          v42 = v7;
          v43 = 1024;
          v44 = v4;
          v45 = 2082;
          v46 = v25;
          v47 = 1024;
          v48 = v37;
          v49 = 1024;
          v50 = v21;
          v51 = 1024;
          v52 = v21;
          v33 = MEMORY[0x277D86220];
          v34 = "%{public}s:%u @[%llu.%06llu] ifname['%{public}s'] IOUC type %d/'%{public}s', len[%d] return %d/0x%08x\n";
          v35 = v40;
          v36 = 82;
        }

        else
        {
          v21 = 3758097088;
          v26 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_84;
          }

          if (v4 > 584)
          {
            v27 = "Error Invalid ioctl";
          }

          else if (v4 == -1)
          {
            v27 = "APPLE80211_IOC_CARD_SPECIFIC";
          }

          else if (v4 < 0 || (v27 = gAppleIoucIndexToString[v4]) == 0)
          {
            v27 = "unknown Apple80211_IOC_";
          }

          *v40 = 136447746;
          *&v40[4] = "Apple80211IOCTLSetWrapper";
          *&v40[12] = 1024;
          *&v40[14] = 6520;
          *&v40[18] = 2048;
          *&v40[20] = v26 / 0x3B9ACA00;
          *&v40[28] = 2048;
          *&v40[30] = v26 % 0x3B9ACA00 / 0x3E8;
          v41 = 2082;
          v42 = v7;
          v43 = 1024;
          v44 = v4;
          v45 = 2082;
          v46 = v27;
          v33 = MEMORY[0x277D86220];
          v34 = "%{public}s:%u @[%llu.%06llu] ifname['%{public}s'] WiFi is in the middle of recovery, ignore command, type %d/'%{public}s'\n";
          v35 = v40;
          v36 = 64;
        }

LABEL_83:
        _os_log_impl(&dword_254882000, v33, OS_LOG_TYPE_DEFAULT, v34, v35, v36);
        goto LABEL_84;
      }
    }

    else if (!v20)
    {
      goto LABEL_40;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v40 = 136446466;
      *&v40[4] = "Apple80211IOCTLSetWrapper";
      *&v40[12] = 1024;
      *&v40[14] = v17;
      v18 = MEMORY[0x277D86220];
      v19 = "%{public}s: Invalid data or length in req: len %d\n";
      goto LABEL_38;
    }

LABEL_39:
    v21 = 22;
    goto LABEL_84;
  }

  v5 = *MEMORY[0x277D85DE8];

  return _Apple80211AWDLCompatibilityCall();
}

void _logEventPipeLogWithFormat(uint64_t a1, uint64_t a2, uint64_t a3, int a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v17 = *MEMORY[0x277D85DE8];
  bzero(__str, 0x400uLL);
  if (a5 && ((a3 & a2) != 0 || a4))
  {
    vsnprintf(__str, 0x400uLL, a5, &a9);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v15 = __str;
      _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void _eventRead(uint64_t a1, unsigned int *a2)
{
  v84 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  if (*a2 - 24 < 0x10 || strncmp(a2 + 24, (a1 + 4), 0x10uLL))
  {
    goto LABEL_189;
  }

  v65 = 0;
  if (a1)
  {
    v5 = *(a1 + 1848);
    if (v5)
    {
      IONotificationPortGetMachPort(v5);
    }
  }

  v68 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v66 = v6;
  v67 = v6;
  current_queue = dispatch_get_current_queue();
  dispatch_queue_get_label(current_queue);
  pthread_threadid_np(0, &v65);
  v8 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v12 = v8;
  if (a1)
  {
    v13 = *(a1 + 1832);
  }

  else
  {
    v13 = 0;
  }

  v14 = (v2 - 40);
  v15 = *(a1 + 1848);
  v16 = *a2;
  v17 = a2[5];
  if ((v17 - 246) >= 0xFFFFFF0B)
  {
    v18 = gAppleMIndexToString[v17];
  }

  v59 = a2[5];
  v63 = v8 / 0x3B9ACA00;
  v64 = v8 % 0x3B9ACA00 / 0x3E8;
  _logEventPipeLogWithFormat(0, v13, 2, 0, "%s:%u, tag[%s:0x%llx/%llu] @[%llu.%06llu] tid[0x%llx], dq[%p]/'%s' opaque[%p] ioucPort[%u] machPort[%u] processing event totalSize[%d], %d/'%s'\n", v9, v10, v11, "_eventRead");
  v19 = *(a1 + 52);
  if (*(a1 + 51))
  {
    v20 = a2[5];
    if (*(a1 + 52) || (v21 = (v20 - 1), v22 = 1 << ((v20 - 1) & 7), (v22 & *(a1 + (v21 >> 3) + 20)) != 0))
    {
      if (v2 == 40)
      {
        v23 = 0;
      }

      else
      {
        v23 = a2 + 10;
      }

      (*(a1 + 72))(0, a1, v20, v23, v14, *(a1 + 80));
      if (a2[5] != 10)
      {
        goto LABEL_184;
      }

      v24 = *(a1 + 152);
      if (!v24)
      {
        goto LABEL_184;
      }

      goto LABEL_19;
    }

    v25 = v21 >> 3;
  }

  else
  {
    v20 = a2[5];
    if (*(a1 + 52))
    {
      goto LABEL_24;
    }

    v25 = (v20 - 1) >> 3;
    v22 = 1 << ((v20 - 1) & 7);
  }

  if ((v22 & *(a1 + v25 + 20)) == 0)
  {
    goto LABEL_184;
  }

LABEL_24:
  if (v20 <= 137)
  {
    if (v20 > 38)
    {
      switch(v20)
      {
        case '7':
          _dispatchDriverAvailable(a1, (a2 + 10));
          goto LABEL_184;
        case '8':
        case ':':
        case ';':
        case '>':
        case '@':
        case 'A':
        case 'B':
        case 'C':
        case 'D':
        case 'E':
        case 'F':
        case 'G':
        case 'M':
        case 'O':
        case 'R':
        case 'T':
        case 'U':
        case 'V':
        case 'W':
        case 'X':
        case '[':
          goto LABEL_109;
        case '9':
          _dispatchGasResults();
          goto LABEL_184;
        case '<':
          _dispatchCCAChangedEvent(a1, a2 + 40, v14);
          goto LABEL_184;
        case '=':
          _dispatchPowerStatsUpdateEvent(a1, (a2 + 10));
          goto LABEL_184;
        case '?':
          _dispatchBGScanCachedNetworks(a1, a2[10]);
          goto LABEL_184;
        case 'H':
          _dispatchDissasocReceived(a1, (a2 + 10), v14);
          goto LABEL_184;
        case 'I':
          _dispatchReassoc(a1, (a2 + 10), v14);
          goto LABEL_184;
        case 'J':
          _dispatchAuth(a1, (a2 + 10), v14);
          goto LABEL_184;
        case 'K':
          _dispatchPrune(a1, a2 + 40, v14);
          goto LABEL_184;
        case 'L':
          _dispatchSupplicant(a1, (a2 + 10), v14);
          goto LABEL_184;
        case 'N':
          _dispatchAssoc(a1, (a2 + 10), v14);
          goto LABEL_184;
        case 'P':
          _dispatchRoamStatus(a1, a2 + 40, v14);
          goto LABEL_184;
        case 'Q':
          v40 = _dispatchLeakyStatsEvent(a1, (a2 + 10), v14);
          if (v40)
          {
            v41 = Apple80211ErrToStr(v40);
            syslog(3, "%s Unable to parse event: leaky ap stats error (%s)", "_eventRead", v41);
          }

          goto LABEL_184;
        case 'S':
          _dispatchRangingResults(a1, (a2 + 10));
          goto LABEL_184;
        case 'Y':
          _dispatchTxFailureHistoryEvent(a1, a2 + 10, v14);
          goto LABEL_184;
        case 'Z':
          _dispatchScanBackoffReport(a1, (a2 + 10), v14);
          goto LABEL_184;
        case '\\':
          _dispatchTxInhibitEvent(a1, (a2 + 10), v14);
          goto LABEL_184;
        case ']':
          _dispatchLocalMitigationEvent(a1, (a2 + 10), v14);
          goto LABEL_184;
        default:
          if (v20 == 39)
          {
            _dispatchlqmChangedEvent(a1, (a2 + 10), v14);
          }

          else
          {
            if (v20 != 137)
            {
              goto LABEL_109;
            }

            _dispatchRoamScanStart(a1, (a2 + 10), v14);
          }

          break;
      }

      goto LABEL_184;
    }

    if (v20 > 9)
    {
      if (v20 > 30)
      {
        if (v20 == 31)
        {
          _dispatchBGScanNetworkDiscoveredEvent(a1, (a2 + 10), v14);
          goto LABEL_184;
        }

        if (v20 == 34)
        {
          _dispatchDeauthReceived(a1, (a2 + 10), v14);
          goto LABEL_184;
        }

        goto LABEL_109;
      }

      if (v20 != 10)
      {
        if (v20 == 14)
        {
          _dispatchDecryptionFailure(a1, (a2 + 10), v14);
          goto LABEL_184;
        }

LABEL_109:
        if (v2 == 40)
        {
          v33 = 0;
        }

        else
        {
          v33 = a2 + 10;
        }

        v35 = *(a1 + 72);
        v34 = *(a1 + 80);
        v36 = 0;
LABEL_113:
        v37 = a1;
        v38 = (v2 - 40);
LABEL_134:
        v35(v36, v37, v20, v33, v38, v34);
        goto LABEL_184;
      }

      v62 = v14 == 4;
      if (v2 == 44)
      {
        v44 = a2[10];
      }

      else
      {
        v44 = 0;
      }

      pthread_mutex_lock((a1 + 160));
      if (*(a1 + 56))
      {
        v45 = *(a1 + 224);
        v46 = v45 != pthread_self();
      }

      else
      {
        v46 = 0;
      }

      v47 = *(a1 + 232);
      if (!v46 && !*(a1 + 232))
      {
        *(a1 + 224) = 0;
      }

      pthread_mutex_unlock((a1 + 160));
      if (v46)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = "_eventRead";
          _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Error: Thread mismatch detected in scan done event, bailing, not dispatching async scan callback", buf, 0xCu);
        }

        goto LABEL_184;
      }

      if (v47)
      {
        _dispatchAsyncScanEvent(a1, v62, v44);
      }

      else
      {
        (*(a1 + 72))(v44, a1, 10, 0, 0, *(a1 + 80));
        v24 = *(a1 + 152);
        if (v24)
        {
LABEL_19:
          dispatch_semaphore_signal(v24);
          goto LABEL_184;
        }
      }

      goto LABEL_184;
    }

    if (v20 == 2)
    {
      _dispatchSSIDChanged(a1, (a2 + 10), v14);
      goto LABEL_184;
    }

    if (v20 == 4)
    {
      _dispatchLinkChangedEvent(a1, (a2 + 10), v14);
      goto LABEL_184;
    }

    if (v20 != 9)
    {
      goto LABEL_109;
    }

    pthread_mutex_lock((a1 + 272));
    v26 = *(a1 + 352);
    v27 = *(a1 + 344);
    v28 = *(a1 + 56);
    if (v28)
    {
      v29 = 1;
    }

    else
    {
      v29 = v27 == 0;
    }

    v30 = !v29;
    v61 = v30;
    if (v28 && v27)
    {
      v31 = *(a1 + 336);
      v61 = v31 == pthread_self();
    }

    pthread_mutex_unlock((a1 + 272));
    if (v2 == 44)
    {
      v32 = a2[10];
    }

    else
    {
      v32 = 0;
    }

    if (!v61 && *(a1 + 56) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "_eventRead";
      _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Error: Thread mismatch detected in assoc done event", buf, 0xCu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v60 = *(a1 + 344);
      v42 = *(a1 + 336);
      v29 = v42 == pthread_self();
      v32 = v32;
      *buf = 136315906;
      v43 = v29;
      *&buf[4] = "_eventRead";
      *&buf[12] = 1024;
      *&buf[14] = v61;
      *&buf[18] = 2048;
      *&buf[20] = v60;
      *&buf[28] = 1024;
      *&buf[30] = v43;
      _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: asyncAssoc %d, assoc record %p, assocThread & current thread %d\n", buf, 0x22u);
    }

    if (v61)
    {
      _dispatchAsyncAssocEvent(a1, a2 + 10);
      goto LABEL_184;
    }

    if (!*(a1 + 4) || (*a1 & 0x80000000) != 0 || !v26)
    {
      goto LABEL_184;
    }

    if (v2 != 44)
    {
      v68 = 0;
      v66 = 0u;
      v67 = 0u;
      __strlcpy_chk();
      LODWORD(v67) = 21;
      if (!Apple80211IOCTLGetWrapper(a1, &v66))
      {
        v36 = _errorForAssociateResult(SDWORD1(v67));
        v20 = a2[5];
        if (v2 == 40)
        {
          v33 = 0;
        }

        else
        {
          v33 = a2 + 10;
        }

        v35 = *(a1 + 72);
        v34 = *(a1 + 80);
        goto LABEL_113;
      }

      goto LABEL_184;
    }

    v20 = a2[5];
    v35 = *(a1 + 72);
    v34 = *(a1 + 80);
    v33 = a2 + 10;
    v36 = v32;
    v37 = a1;
LABEL_133:
    v38 = 4;
    goto LABEL_134;
  }

  if (v20 <= 179)
  {
    if (v20 <= 149)
    {
      if (v20 <= 140)
      {
        if (v20 == 138)
        {
          _dispatchRoamScanEnd(a1, a2 + 40, v14);
        }

        else if (v20 == 139)
        {
          _dispatchRoamPrep(a1, (a2 + 10), v14);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            *&buf[4] = "_eventRead";
            *&buf[12] = 1024;
            *&buf[14] = 5303;
            _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s:%d Processing _dispatchBssSteeringRequest\n", buf, 0x12u);
          }

          _dispatchBssSteeringRequest(a1, (a2 + 10), v14);
        }

        goto LABEL_184;
      }

      switch(v20)
      {
        case 0x8D:
          _dispatchSoftAPLPMEvent(a1, a2 + 10, v14);
          goto LABEL_184;
        case 0x8F:
          _dispatchActionFrameEvent(a1, a2 + 40, v14);
          goto LABEL_184;
        case 0x91:
          _dispatchWeightedAvgLQMUpdateEvent(a1, (a2 + 10), v14);
          goto LABEL_184;
      }
    }

    else if (v20 <= 163)
    {
      switch(v20)
      {
        case 0x96:
          _dispatchDPS(a1, (a2 + 10), v14);
          goto LABEL_184;
        case 0x97:
          _dispatchSlowWiFi(a1, (a2 + 10), v14);
          goto LABEL_184;
        case 0x9C:
          _dispatchRealtimeSessionEvent(a1, (a2 + 10), v14);
          goto LABEL_184;
      }
    }

    else if (v20 > 168)
    {
      if (v20 == 169)
      {
        _dispatchLqmTxStatsUpdate(a1, (a2 + 10), v14);
        goto LABEL_184;
      }

      if (v20 == 176)
      {
        _dispatchLqmCrashTracer(a1, a2 + 10, v14);
        goto LABEL_184;
      }
    }

    else
    {
      if (v20 == 164)
      {
        _dispatchSlowWiFiLinkProbeTrigger(a1, (a2 + 10), v14);
        goto LABEL_184;
      }

      if (v20 == 165)
      {
        _dispatchSlowWiFiUserInputTrigger(a1, (a2 + 10), v14);
        goto LABEL_184;
      }
    }

    goto LABEL_109;
  }

  if (v20 > 209)
  {
    if (v20 <= 237)
    {
      switch(v20)
      {
        case 0xD2:
          _dispatchP2PCountryCodeChange(a1, a2 + 40);
          goto LABEL_184;
        case 0xD9:
          if (v2 != 40)
          {
            v39 = *(a2 + 14);
            *buf = *(a2 + 10);
            *&buf[16] = v39;
            *&buf[29] = *(a2 + 69);
            (*(a1 + 72))(0, a1, 217, buf, 37, *(a1 + 80));
          }

          goto LABEL_184;
        case 0xDA:
          _dispatchObssMitInfoEvent(a1, a2 + 40, v14);
          goto LABEL_184;
      }

      goto LABEL_109;
    }

    if (v20 > 239)
    {
      if (v20 != 240)
      {
        if (v20 == 245)
        {
          _dispatchRxStall(a1, a2 + 10, v14);
          goto LABEL_184;
        }

        goto LABEL_109;
      }

      _dispatchScanForwardStatsUpdateEvent(a1, (a2 + 10), v14);
      goto LABEL_184;
    }

    if (v20 != 238)
    {
      if (a1 && v2 == 88)
      {
        (*(a1 + 72))(0, a1, 239, a2 + 10, 48, *(a1 + 80));
      }

      goto LABEL_184;
    }

    if (!a1 || v2 != 44)
    {
      goto LABEL_184;
    }

    v35 = *(a1 + 72);
    v34 = *(a1 + 80);
    v33 = a2 + 10;
    v36 = 0;
    v37 = a1;
    v20 = 238;
    goto LABEL_133;
  }

  if (v20 <= 191)
  {
    switch(v20)
    {
      case 0xB4:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "_eventRead";
          *&buf[12] = 1024;
          *&buf[14] = 5298;
          _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s:%d Processing _dispatchBeaconCacheUpdate\n", buf, 0x12u);
        }

        _dispatchBeaconCacheUpdate(a1, (a2 + 10), v14);
        goto LABEL_184;
      case 0xBD:
        _dispatchTrafficInfoEvent(a1, a2 + 40, v14);
        goto LABEL_184;
      case 0xBE:
        _dispatchBTCoexStatsUpdateEvent(a1, (a2 + 10), v14);
        goto LABEL_184;
    }

    goto LABEL_109;
  }

  if (v20 <= 195)
  {
    if (v20 == 192)
    {
      _dispatchSIBEvent(a1, a2 + 10, v14);
      goto LABEL_184;
    }

    if (v20 == 193)
    {
      _dispatchSensingResults(a1, a2 + 40, v14);
      goto LABEL_184;
    }

    goto LABEL_109;
  }

  if (v20 != 196)
  {
    if (v20 == 199)
    {
      _dispatchColocatedCacheEvent(a1, a2 + 10, v14);
      goto LABEL_184;
    }

    goto LABEL_109;
  }

  _dispatchTTRFromDriver(a1, a2 + 40, v14);
LABEL_184:
  v51 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) - v12;
  v52 = a2[5];
  v53 = *a2;
  if (v51 >= 0xBEBC200 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    if (v52 - 246 >= 0xFFFFFF0B)
    {
      v57 = gAppleMIndexToString[v52];
    }

    else
    {
      v57 = "unknown APPLE80211_M_";
    }

    *buf = 136449026;
    *&buf[4] = "_logTimeIfEventThresholdExceeded";
    *&buf[12] = 2082;
    *&buf[14] = "_eventRead exceeded threshold";
    *&buf[22] = 1024;
    *&buf[24] = v52;
    *&buf[28] = 1024;
    *&buf[30] = v52;
    *&buf[34] = 1024;
    *&buf[36] = v53;
    v70 = 2048;
    v71 = v63;
    v72 = 2048;
    v73 = v64;
    v74 = 2048;
    v75 = v51 / 0x3B9ACA00;
    v76 = 2048;
    v77 = (274877907 * (v51 % 0x3B9ACA00)) >> 38;
    v78 = 2048;
    v79 = 0;
    v80 = 2048;
    v81 = 200000;
    v82 = 2082;
    v83 = v57;
    _os_log_error_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}s: '%{public}s': eventCode[0x%08x/%u] totalSize[%u] @[%llu.%06llu], [%llu.%06llu] Exceeded threshold >= [%llu.%06llu], event:'%{public}s'\n", buf, 0x6Eu);
    v58 = *a2;
    v52 = a2[5];
  }

  v54 = *(a1 + 1848);
  if (v52 - 246 >= 0xFFFFFF0B)
  {
    v55 = gAppleMIndexToString[v52];
  }

  _logEventPipeLogWithFormat(0, *(a1 + 1832), 2, v51 > 0xBEBC1FF, "%s:%u, tag[%s:0x%llx/%llu] @[%llu.%06llu] tid[0x%llx], dq[%p]/'%s' opaque[%p] ioucPort[%u] machPort[%u], total time [%llu.%06llu], processed event totalSize[%d], %d/'%s'\n", v48, v49, v50, "_eventRead");
LABEL_189:
  v56 = *MEMORY[0x277D85DE8];
}

uint64_t _writeEventBuffer()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v0;
  v91 = *MEMORY[0x277D85DE8];
  bzero(v63, 0x1018uLL);
  v62 = 0;
  if (v11)
  {
    v12 = *(v11 + 1848);
    if (v12)
    {
      IONotificationPortGetMachPort(v12);
    }
  }

  current_queue = dispatch_get_current_queue();
  dispatch_queue_get_label(current_queue);
  pthread_threadid_np(0, &v62);
  v13 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v17 = *(v10 + 28);
  v63[0] = 0;
  v64 = v17;
  if (v11)
  {
    v18 = *(v11 + 1832);
    v19 = *(v11 + 1848);
  }

  else
  {
    v18 = 0;
  }

  v20 = v13 / 0x3B9ACA00;
  v60 = v13 % 0x3B9ACA00 / 0x3E8;
  _logEventPipeLogWithFormat(0, v18, 2, 0, "%s:%u @[%llu.%06llu] tid[0x%llx], dq[%p]/'%s' opaque[%p] ioucPort[%u] machPort[%u] processing event, logMetadata[%p] log[%p] length[%llu] logContinue[%p] lengthContinue[%llu], KEV_MSG_HEADER_SIZE[%u] APPLE80211_M_MAX_LEN[%u] IFNAMSIZ[%u] SIZEOF_IOUCMETADATA[%u] kmsg[%p] khdr[%p] total_size[%d]/khdr->total_size[%u] copy_size[%u]\n", v14, v15, v16, "_writeEventBuffer");
  v24 = (v10 + 32);
  if (v10 + 32 > &v65 && buf > v24 || v24 < &v65 && v10 + 48 > &v65)
  {
    bzero(&v65, 0x1000uLL);
    v28 = 34;
LABEL_25:
    if (v11)
    {
      v32 = *(v11 + 1848);
    }

    if ((v64 - 246) >= 0xFFFFFF0B)
    {
      v33 = gAppleMIndexToString[v64];
    }

    _logEventPipeLogWithFormat(0, 0, 0, 1, "FAILED: %s:%u/err[%u] @[%llu.%06llu] tid[0x%llx], dq[%p]/'%s' opaque[%p] ioucPort[%u] machPort[%u], processed event, logMetadata[%p] log[%p] length[%llu] logContinue[%p] lengthContinue[%llu], KEV_MSG_HEADER_SIZE[%u] APPLE80211_M_MAX_LEN[%u] IFNAMSIZ[%u] SIZEOF_IOUCMETADATA[%u] kmsg[%p] khdr[%p] total_size[%d]/khdr->total_size[%u] copy_size[%u], %d/'%s'\n", v25, v26, v27, "_writeEventBuffer");
    goto LABEL_30;
  }

  v65 = *v24;
  if (v6 >= 0xFF0)
  {
    v29 = 4080;
  }

  else
  {
    v29 = v6;
  }

  if (v11)
  {
    v30 = *(v11 + 1832);
    v31 = *(v11 + 1848);
  }

  else
  {
    v30 = 0;
  }

  _logEventPipeLogWithFormat(0, v30, 2, 0, "%s:%u @[%llu.%06llu] tid[0x%llx], dq[%p]/'%s' opaque[%p] ioucPort[%u] machPort[%u], processing event, logMetadata[%p] log[%p] length[%llu] logContinue[%p] lengthContinue[%llu], KEV_MSG_HEADER_SIZE[%u] APPLE80211_M_MAX_LEN[%u] IFNAMSIZ[%u] SIZEOF_IOUCMETADATA[%u] kmsg[%p] khdr[%p] total_size[%d]/khdr->total_size[%u] copy_size[%u]\n", v21, v22, v23, "_writeEventBuffer");
  if (!v8)
  {
    bzero(v66, 0xFF0uLL);
    v28 = 22;
    goto LABEL_25;
  }

  if (v66 < v8 && buf > v8 || v66 > v8 && v8 + v29 > v66)
  {
    bzero(v66, 0xFF0uLL);
    v28 = 34;
    goto LABEL_25;
  }

  __memcpy_chk();
  v39 = &v66[v29];
  if (v11)
  {
    v40 = *(v11 + 1832);
    v41 = *(v11 + 1848);
  }

  else
  {
    v40 = 0;
  }

  v59 = v29 + 16;
  _logEventPipeLogWithFormat(0, v40, 2, 0, "%s:%u @[%llu.%06llu] tid[0x%llx], dq[%p]/'%s' opaque[%p] ioucPort[%u] machPort[%u], processing event, logMetadata[%p] log[%p] length[%llu] logContinue[%p] lengthContinue[%llu], KEV_MSG_HEADER_SIZE[%u] APPLE80211_M_MAX_LEN[%u] IFNAMSIZ[%u] SIZEOF_IOUCMETADATA[%u] kmsg[%p] khdr[%p] total_size[%d]/khdr->total_size[%u] copy_size[%u]\n", v36, v37, v38, "_writeEventBuffer");
  if (v4)
  {
    if (__CFADD__(v59, v2))
    {
      v28 = 34;
      goto LABEL_25;
    }

    v42 = 4080 - v29;
    if (v59 + v2 > 0x1000)
    {
      if (v39 < v4 && buf > v4 || v39 > v4 && &v4[v42] > v39)
      {
        goto LABEL_45;
      }

      v44 = 4096;
    }

    else
    {
      if ((v2 & 0x8000000000000000) != 0 || v42 < v2)
      {
        bzero(v39, 4080 - v29);
        v28 = 7;
        goto LABEL_25;
      }

      if (v39 < v4 && buf > v4 || v39 > v4 && &v4[v2] > v39)
      {
LABEL_45:
        bzero(v39, 4080 - v29);
        v28 = 34;
        goto LABEL_25;
      }

      v44 = v59 + v2;
      v42 = v2;
    }

    memcpy(v39, v4, v42);
    v43 = v44;
  }

  else
  {
    v43 = v29 + 16;
  }

  v45 = *(v10 + 28);
  v63[0] = v43 + 24;
  v64 = v45;
  if (v11)
  {
    v46 = *(v11 + 1832);
    v47 = *(v11 + 1848);
  }

  else
  {
    v46 = 0;
  }

  _logEventPipeLogWithFormat(0, v46, 2, 0, "%s:%u @[%llu.%06llu] tid[0x%llx], dq[%p]/'%s' opaque[%p] ioucPort[%u] machPort[%u] processing event, logMetadata[%p] log[%p] length[%llu] logContinue[%p] lengthContinue[%llu], KEV_MSG_HEADER_SIZE[%u] APPLE80211_M_MAX_LEN[%u] IFNAMSIZ[%u] SIZEOF_IOUCMETADATA[%u] kmsg[%p] khdr[%p] total_size[%d]/khdr->total_size[%u] copy_size[%u]\n", v25, v26, v27, "_writeEventBuffer");
  v48 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  _eventRead(v11, v63);
  v52 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) - v48;
  if (v52 >= 0xBEBC200)
  {
    v53 = v64;
    v54 = v63[0];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      if ((v53 - 246) >= 0xFFFFFF0B)
      {
        v57 = gAppleMIndexToString[v53];
      }

      else
      {
        v57 = "unknown APPLE80211_M_";
      }

      *buf = 136449026;
      v68 = "_logTimeIfEventThresholdExceeded";
      v69 = 2082;
      v70 = "_writeEventBuffer exceeded threshold";
      v71 = 1024;
      v72 = v53;
      v73 = 1024;
      v74 = v53;
      v75 = 1024;
      v76 = v54;
      v77 = 2048;
      v78 = v20;
      v79 = 2048;
      v80 = v60;
      v81 = 2048;
      v82 = v52 / 0x3B9ACA00;
      v83 = 2048;
      v84 = (274877907 * (v52 % 0x3B9ACA00)) >> 38;
      v85 = 2048;
      v86 = 0;
      v87 = 2048;
      v88 = 200000;
      v89 = 2082;
      v90 = v57;
      _os_log_error_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}s: '%{public}s': eventCode[0x%08x/%u] totalSize[%u] @[%llu.%06llu], [%llu.%06llu] Exceeded threshold >= [%llu.%06llu], event:'%{public}s'\n", buf, 0x6Eu);
      if (v11)
      {
        goto LABEL_60;
      }

LABEL_65:
      v55 = 0;
      goto LABEL_66;
    }
  }

  if (!v11)
  {
    goto LABEL_65;
  }

LABEL_60:
  v55 = *(v11 + 1832);
  v56 = *(v11 + 1848);
LABEL_66:
  if ((v64 - 246) >= 0xFFFFFF0B)
  {
    v58 = gAppleMIndexToString[v64];
  }

  _logEventPipeLogWithFormat(0, v55, 2, v52 > 0xBEBC1FF, "%s:%u @[%llu.%06llu] tid[0x%llx], dq[%p]/'%s' opaque[%p] ioucPort[%u] machPort[%u], total time [%llu.%06llu], processed event total_size[%d]/khdr->total_size[%u], %d/'%s'\n", v49, v50, v51, "_writeEventBuffer");
  v28 = 0;
LABEL_30:
  v34 = *MEMORY[0x277D85DE8];
  return v28;
}

uint64_t Apple80211CopyValue()
{
  v0 = MEMORY[0x28223BE20]();
  v33 = *MEMORY[0x277D85DE8];
  if (!v0 || (*v0 & 0x80000000) != 0)
  {
    goto LABEL_29;
  }

  v4 = v3;
  v5 = 4294963396;
  if (!v3 || !*(v0 + 4))
  {
    goto LABEL_41;
  }

  v6 = v2;
  v7 = v1;
  memset(__b, 170, sizeof(__b));
  v30 = 0u;
  v31 = 0u;
  v32 = 0;
  __strlcpy_chk();
  LODWORD(v31) = v7;
  bzero(__b, 0x3C30uLL);
  __b[0] = -1071093303;
  __strlcpy_chk();
  __b[3846] = v7;
  if (v31 <= 247)
  {
    v5 = 4294963394;
    switch(v31)
    {
      case -1:
        goto LABEL_41;
      case 0:
      case 3:
      case 10:
      case 11:
      case 20:
      case 22:
      case 23:
      case 24:
      case 25:
      case 30:
      case 46:
      case 47:
      case 48:
      case 56:
      case 67:
      case 68:
      case 69:
      case 71:
      case 72:
      case 73:
      case 74:
      case 75:
      case 76:
      case 77:
      case 78:
      case 80:
      case 81:
      case 82:
      case 84:
      case 85:
      case 86:
      case 87:
      case 88:
      case 89:
      case 90:
      case 91:
      case 92:
      case 93:
      case 94:
      case 95:
      case 96:
      case 98:
      case 99:
      case 100:
      case 101:
      case 105:
      case 107:
      case 108:
      case 109:
      case 110:
      case 111:
      case 112:
      case 113:
      case 114:
        goto LABEL_10;
      case 1:
      case 40:
        Mutable = CFDataCreateMutable(*MEMORY[0x277CBECE8], 0);
        goto LABEL_38;
      case 2:
      case 4:
      case 6:
      case 7:
      case 14:
      case 16:
      case 17:
      case 29:
      case 49:
      case 53:
      case 54:
      case 61:
      case 62:
      case 103:
      case 106:
      case 115:
        goto LABEL_27;
      case 5:
      case 8:
      case 15:
      case 18:
      case 21:
      case 26:
      case 28:
      case 31:
      case 33:
      case 34:
      case 35:
      case 36:
      case 41:
      case 45:
      case 50:
      case 52:
      case 55:
      case 57:
      case 58:
      case 59:
      case 60:
      case 63:
      case 64:
      case 70:
      case 102:
      case 104:
        goto LABEL_7;
      case 9:
      case 43:
      case 44:
      case 51:
      case 97:
        Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
        goto LABEL_38;
      case 12:
      case 19:
      case 27:
      case 32:
      case 37:
      case 38:
      case 39:
      case 42:
      case 66:
      case 83:
        goto LABEL_37;
      case 13:
        v28 = 0;
        v23 = Apple80211GetWithIOCTL();
        if (v23)
        {
          goto LABEL_59;
        }

        v9 = *MEMORY[0x277CBECE8];
        v10 = &v28;
        goto LABEL_20;
      case 65:
        Value = CFDictionaryGetValue(v6, @"MODE");
        if (!Value)
        {
          goto LABEL_29;
        }

        v25 = Value;
        v26 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        *v4 = v26;
        if (!v26)
        {
          goto LABEL_63;
        }

        CFDictionarySetValue(v26, @"MODE", v25);
        v27 = *v4;
        goto LABEL_39;
      case 79:
        v23 = Apple80211GetWithIOCTL();
LABEL_59:
        v5 = v23;
        goto LABEL_41;
      default:
        if (v31 == 166)
        {
          goto LABEL_7;
        }

        if (v31 == 207)
        {
          goto LABEL_37;
        }

        goto LABEL_10;
    }
  }

  if (v31 > 367)
  {
    v8 = v31 - 112;
    if ((v31 - 368) > 0x37)
    {
LABEL_16:
      if (v31 != 516)
      {
        if (v31 != 574)
        {
LABEL_10:
          v5 = 4294963393;
          goto LABEL_41;
        }

        goto LABEL_27;
      }

LABEL_37:
      Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
LABEL_38:
      *v4 = Mutable;
      if (Mutable)
      {
LABEL_39:
        v5 = Apple80211GetWithIOCTL();
        if (!v5)
        {
          goto LABEL_41;
        }

LABEL_40:
        CFRelease(*v4);
        *v4 = 0;
        goto LABEL_41;
      }

LABEL_63:
      v5 = 4294963395;
      goto LABEL_41;
    }

    if (((1 << v8) & 0x80008022000000) == 0)
    {
      if (((1 << v8) & 0x40080) == 0)
      {
        if (v31 == 368)
        {
          goto LABEL_37;
        }

        goto LABEL_16;
      }

LABEL_27:
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      goto LABEL_38;
    }

    goto LABEL_7;
  }

  if ((v31 - 254) > 0xA)
  {
LABEL_32:
    if (v31 == 248)
    {
      v15 = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
      *v4 = v15;
      if (!v15)
      {
        goto LABEL_63;
      }

      v16 = 1;
      v17 = 0x2000;
LABEL_45:
      v18 = v17;
      do
      {
        v19 = v16;
        v20 = malloc_type_malloc(v18, 0x100004077774924uLL);
        if (!v20)
        {
          goto LABEL_52;
        }

        v21 = v20;
        v22 = Apple80211GetWithIOCTL();
        if (v22 == -3901)
        {
          v17 = 2 * v18;
          free(v21);
          v16 = 0;
          if (v19)
          {
            goto LABEL_45;
          }

LABEL_52:
          v5 = 4294963395;
          goto LABEL_40;
        }

        v5 = v22;
        if (!v22)
        {
          *(v21 + (v18 - 1)) = 0;
          CFStringAppendCString(*v4, v21, 0x8000100u);
          free(v21);
          goto LABEL_41;
        }

        free(v21);
        v16 = 0;
      }

      while ((v19 & 1) != 0);
      if (v5)
      {
        goto LABEL_40;
      }

      goto LABEL_41;
    }

    if (v31 != 353)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  if (((1 << (v31 + 2)) & 0xB4) == 0)
  {
    if (v31 == 254)
    {
      goto LABEL_37;
    }

    if (v31 == 264)
    {
      goto LABEL_27;
    }

    goto LABEL_32;
  }

LABEL_7:
  if (Apple80211IOCTLGetWrapper())
  {
    if (*__error() == 102 || *__error() == 6)
    {
      goto LABEL_10;
    }

    if (*__error() != 22)
    {
      v5 = *__error();
      goto LABEL_41;
    }

LABEL_29:
    v5 = 4294963396;
    goto LABEL_41;
  }

  v9 = *MEMORY[0x277CBECE8];
  v10 = &v31 + 4;
LABEL_20:
  v11 = CFNumberCreate(v9, kCFNumberIntType, v10);
  *v4 = v11;
  if (v11)
  {
    v5 = 0;
  }

  else
  {
    v5 = 4294963395;
  }

LABEL_41:
  v13 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t Apple80211GetWithIOCTL()
{
  v0 = MEMORY[0x28223BE20]();
  v4 = v3;
  v1100 = *MEMORY[0x277D85DE8];
  v1099 = 0;
  v1097 = 0u;
  v1098 = 0u;
  v1095 = 0;
  v1096 = 0;
  if ((*v0 & 0x80000000) != 0)
  {
    goto LABEL_48;
  }

  v5 = v1;
  v6 = 4294963396;
  if (!v1)
  {
    goto LABEL_898;
  }

  v7 = v0;
  if (!*(v0 + 4))
  {
    goto LABEL_898;
  }

  v8 = v2;
  v1099 = 0;
  v1097 = 0uLL;
  v1098 = 0uLL;
  __strlcpy_chk();
  LODWORD(v1098) = v4;
  __strlcpy_chk();
  HIBYTE(v1096) = 0;
  if (v4 > 215)
  {
    if (v4 > 358)
    {
      if (v4 <= 406)
      {
        if (v4 <= 389)
        {
          if (v4 > 383)
          {
            if (v4 != 384)
            {
              if (v4 != 386)
              {
                if (v4 == 387)
                {
                  memset(__src, 0, 37);
                  DWORD2(v1098) = 37;
                  v1099 = __src;
                  if (!Apple80211IOCTLGetWrapper())
                  {
LABEL_354:
                    v241 = __src;
LABEL_355:
                    CFStringAppendCString(v5, v241, 0x8000100u);
                    goto LABEL_798;
                  }

                  goto LABEL_231;
                }

LABEL_10:
                v6 = 4294963393;
                goto LABEL_898;
              }

              LQMSummary = _getLQMSummary();
LABEL_843:
              v6 = LQMSummary;
              if (!LQMSummary)
              {
                goto LABEL_907;
              }

              goto LABEL_898;
            }

LABEL_123:
            v65 = malloc_type_malloc(0x18004uLL, 0x100004013E943BCuLL);
            if (v65)
            {
              v66 = v65;
              bzero(v65, 0x18004uLL);
              DWORD2(v1098) = 98308;
              v1099 = v66;
              if (!Apple80211RawGet(v7, &v1097))
              {
                LODWORD(__src[0]) = 2;
                v67 = *MEMORY[0x277CBECE8];
                v68 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, __src);
                if (v68)
                {
                  v69 = v68;
                  v70 = CFDataCreate(v67, v66 + 4, 98304);
                  if (v70)
                  {
                    v71 = v70;
                    CFDictionarySetValue(v5, v69, v70);
                    CFRelease(v69);
                    CFRelease(v71);
                    free(v66);
                    goto LABEL_227;
                  }

                  free(v66);
                  CFRelease(v69);
                }

                else
                {
                  free(v66);
                }

LABEL_889:
                v6 = 4294963396;
                goto LABEL_907;
              }

              goto LABEL_198;
            }

            goto LABEL_919;
          }

          if (v4 != 359)
          {
            if (v4 != 375)
            {
              goto LABEL_10;
            }

            *&__src[0] = 0xAAAAAAAAAAAAAAAALL;
            WORD4(__src[0]) = -21846;
            DWORD2(v1098) = 10;
            v1099 = __src;
            if (Apple80211IOCTLGetWrapper())
            {
              goto LABEL_231;
            }

            v44 = *MEMORY[0x277CBECE8];
            v45 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt8Type, __src);
            if (v45)
            {
              v46 = v45;
              CFDictionaryAddValue(v5, @"MIMOSTATUS_VERSION", v45);
              CFRelease(v46);
              v47 = CFNumberCreate(v44, kCFNumberSInt8Type, __src + 1);
              if (v47)
              {
                v48 = v47;
                CFDictionaryAddValue(v5, @"MIMOSTATUS_BSSMIMOCAP", v47);
                CFRelease(v48);
                v49 = CFNumberCreate(v44, kCFNumberSInt8Type, __src + 6);
                if (v49)
                {
                  v50 = v49;
                  CFDictionaryAddValue(v5, @"MIMOSTATUS_ASSOCMIMOSTATUS", v49);
                  CFRelease(v50);
                  v51 = CFNumberCreate(v44, kCFNumberSInt8Type, __src + 5);
                  if (v51)
                  {
                    v52 = v51;
                    CFDictionaryAddValue(v5, @"MIMOSTATUS_MRCSTATE", v51);
                    CFRelease(v52);
                    v53 = CFNumberCreate(v44, kCFNumberSInt8Type, __src + 2);
                    if (v53)
                    {
                      v54 = v53;
                      CFDictionaryAddValue(v5, @"MIMOSTATUS_BSSRXCHAIN", v53);
                      CFRelease(v54);
                      v55 = CFNumberCreate(v44, kCFNumberSInt8Type, __src + 3);
                      if (v55)
                      {
                        v56 = v55;
                        CFDictionaryAddValue(v5, @"MIMOSTATUS_BSSTXCHAIN", v55);
                        CFRelease(v56);
                        v57 = CFNumberCreate(v44, kCFNumberSInt8Type, __src + 4);
                        if (v57)
                        {
                          v58 = v57;
                          CFDictionaryAddValue(v5, @"MIMOSTATUS_BSSBW", v57);
                          CFRelease(v58);
                          v59 = CFNumberCreate(v44, kCFNumberSInt8Type, __src + 7);
                          if (v59)
                          {
                            v60 = v59;
                            CFDictionaryAddValue(v5, @"MIMOSTATUS_ASSOCRXCHAIN", v59);
                            CFRelease(v60);
                            v61 = CFNumberCreate(v44, kCFNumberSInt8Type, __src + 8);
                            if (v61)
                            {
                              v62 = v61;
                              CFDictionaryAddValue(v5, @"MIMOSTATUS_ASSOCTXCHAIN", v61);
                              CFRelease(v62);
                              v63 = CFNumberCreate(v44, kCFNumberSInt8Type, __src + 9);
                              if (v63)
                              {
                                v25 = v63;
                                v64 = @"MIMOSTATUS_ASSOCBW";
LABEL_758:
                                v83 = v5;
LABEL_759:
                                CFDictionaryAddValue(v83, v64, v25);
LABEL_796:
                                v1028 = v25;
LABEL_797:
                                CFRelease(v1028);
                                goto LABEL_798;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }

LABEL_885:
            v6 = 4294963395;
            goto LABEL_898;
          }

          LODWORD(v5->info) = 0;
          v5->isa = 0;
          v27 = 12;
          goto LABEL_220;
        }

        if (v4 <= 395)
        {
          if (v4 == 390)
          {
            memset(__src, 170, 0x8D8uLL);
            v1099 = __src;
            DWORD2(v1098) = 2264;
            Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
            bzero(__src, 0x8D8uLL);
            WORD5(__src[8]) = 2048;
            if (Apple80211IOCTLGetWrapper())
            {
              v6 = 4294963394;
            }

            else
            {
              v1030 = -9998;
              do
              {
                v6 = _addScanResultToList(v7, __src, Mutable, v5, 0, 0, 0, 0, 0, 1, 0, 0);
                bzero(__src, 0x8D8uLL);
                WORD5(__src[8]) = 2048;
                v1031 = Apple80211IOCTLGetWrapper();
                if (!v1030)
                {
                  break;
                }

                ++v1030;
              }

              while (!v1031);
            }

            if ((*(v7 + 99) & 0x40) != 0)
            {
              _Apple80211AddOriginatingRNRChannelListToScanResults(Mutable, v5, 0, 0, 0, 0, 0);
            }

            if (Mutable)
            {
              CFRelease(Mutable);
              if (!v6)
              {
                goto LABEL_907;
              }

              goto LABEL_898;
            }

LABEL_897:
            if (!v6)
            {
              goto LABEL_907;
            }

            goto LABEL_898;
          }

          if (v4 != 393)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v4 == 396)
          {
            goto LABEL_123;
          }

          if (v4 != 397)
          {
            if (v4 == 406)
            {
              *&v14 = 0xAAAAAAAAAAAAAAAALL;
              *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
              __src[14] = v14;
              __src[15] = v14;
              __src[12] = v14;
              __src[13] = v14;
              __src[10] = v14;
              __src[11] = v14;
              __src[8] = v14;
              __src[9] = v14;
              __src[7] = v14;
              __src[5] = v14;
              __src[6] = v14;
              __src[3] = v14;
              __src[4] = v14;
              __src[1] = v14;
              __src[2] = v14;
              __src[0] = v14;
              syslog(3, "[WiFiTimeSync] %s %s:%d APPLE80211_IOC_TIMESYNC_INFO\n", "/Library/Caches/com.apple.xbs/Sources/IO80211/IO80211API/Apple80211API.c", "Apple80211GetWithIOCTL", 13479);
              DWORD2(v1098) = 256;
              v1099 = __src;
              if (!Apple80211RawGet(v7, &v1097))
              {
LABEL_342:
                CFDataAppendBytes(v5, __src, DWORD2(v1098));
                goto LABEL_798;
              }

              goto LABEL_231;
            }

            goto LABEL_10;
          }
        }

LABEL_6:
        if (v8 != 4)
        {
          goto LABEL_48;
        }

        if (!Apple80211IOCTLGetWrapper())
        {
          v6 = 0;
          LODWORD(v5->isa) = DWORD1(v1098);
          goto LABEL_907;
        }

        goto LABEL_8;
      }

      if (v4 <= 515)
      {
        if (v4 <= 422)
        {
          if (v4 != 407)
          {
            if (v4 != 421)
            {
              goto LABEL_10;
            }

            if (v8 != 14728)
            {
              syslog(3, "APPLE80211_IOR_LEGEND::%s(%d) bad valLen %d compared to sizeof apple80211_ior_legend_query_t %lu\n", "Apple80211GetWithIOCTL", 13501, v8, 14728);
              goto LABEL_898;
            }

            DWORD2(v1098) = 14728;
            v1099 = v5;
            if (!Apple80211IOCTLGetWrapper())
            {
              if (!DWORD1(v1098))
              {
LABEL_227:
                v6 = 0;
                goto LABEL_907;
              }

              syslog(3, "APPLE80211_IOR_LEGEND::%s(%d) Command returned error, exiting\n", "Apple80211GetWithIOCTL", 13509);
              goto LABEL_919;
            }

LABEL_223:
            if (*__error() != 102 && *__error() != 6)
            {
              if (*__error() == 22)
              {
                goto LABEL_898;
              }

              goto LABEL_809;
            }

            goto LABEL_10;
          }

          goto LABEL_6;
        }

        if (v4 == 423)
        {
          goto LABEL_6;
        }

        if (v4 != 447)
        {
          if (v4 != 515)
          {
            goto LABEL_10;
          }

          *&__src[0] = 1;
          DWORD2(__src[0]) = 0;
          DWORD2(v1098) = 12;
          v1099 = __src;
          if (!Apple80211IOCTLGetWrapper())
          {
            if (!DWORD1(__src[0]))
            {
              goto LABEL_798;
            }

            v10 = 0;
            v11 = *MEMORY[0x277CBECE8];
            while (1)
            {
              v12 = CFNumberCreate(v11, kCFNumberSInt8Type, __src + v10 + 8);
              if (!v12)
              {
                goto LABEL_885;
              }

              v13 = v12;
              CFArrayAppendValue(v5, v12);
              CFRelease(v13);
              v6 = 0;
              if (v10 <= 2 && ++v10 < DWORD1(__src[0]))
              {
                continue;
              }

              goto LABEL_897;
            }
          }

          goto LABEL_804;
        }

        bzero(__src + 8, 0x29CuLL);
        *&__src[0] = 0x200000001;
        DWORD2(v1098) = 676;
        v1099 = __src;
LABEL_217:
        if (!Apple80211IOCTLGetWrapper())
        {
          goto LABEL_798;
        }

        goto LABEL_231;
      }

      if (v4 > 560)
      {
        if (v4 == 561)
        {
          *&__src[0] = 1;
          DWORD2(__src[0]) = 0;
          DWORD2(v1098) = 12;
          v1099 = __src;
          goto LABEL_217;
        }

        if (v4 == 563)
        {
          if (v8 != 4)
          {
            goto LABEL_898;
          }

          v1099 = v5;
          DWORD2(v1098) = 4;
LABEL_222:
          if (!Apple80211IOCTLGetWrapper())
          {
            goto LABEL_227;
          }

          goto LABEL_223;
        }

        if (v4 != 574)
        {
          goto LABEL_10;
        }

        if (!v8)
        {
          goto LABEL_898;
        }

        bzero(__src, 0x308uLL);
        v1099 = __src;
        DWORD2(v1098) = 776;
        if (Apple80211IOCTLGetWrapper())
        {
          goto LABEL_804;
        }

        v15 = *MEMORY[0x277CBECE8];
        v16 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt16Type, __src + 4);
        if (v16)
        {
          v17 = v16;
          CFDictionarySetValue(v5, @"PTV_API_MAJOR_VERSION", v16);
          CFRelease(v17);
          v18 = CFNumberCreate(v15, kCFNumberSInt16Type, __src + 6);
          if (v18)
          {
            v19 = v18;
            CFDictionarySetValue(v5, @"PTV_API_MINOR_VERSION", v18);
            CFRelease(v19);
            v20 = CFStringCreateWithCString(v15, __src + 8, 0x8000100u);
            if (v20)
            {
              v21 = v20;
              CFDictionarySetValue(v5, @"PTV_BINARY_FILENAME", v20);
              CFRelease(v21);
              v22 = CFStringCreateWithCString(v15, &__src[16] + 8, 0x8000100u);
              if (v22)
              {
                v23 = v22;
                CFDictionarySetValue(v5, @"PTV_TABLE_VERSION", v22);
                CFRelease(v23);
                v24 = CFStringCreateWithCString(v15, &__src[32] + 8, 0x8000100u);
                if (v24)
                {
                  v25 = v24;
                  v26 = @"PTV_TABLE_DATE";
                  goto LABEL_795;
                }
              }
            }
          }
        }

        v1051 = 0;
LABEL_909:
        CFRelease(v1051);
LABEL_910:
        v6 = 4294963395;
        goto LABEL_907;
      }

      if (v4 != 516)
      {
        if (v4 != 552)
        {
          goto LABEL_10;
        }

        goto LABEL_6;
      }

      LODWORD(__src[0]) = 0;
      DWORD2(v1098) = 4;
      v1099 = __src;
      if (!Apple80211IOCTLGetWrapper())
      {
        LODWORD(valuePtr[0]) = 0;
        if (__src[0])
        {
          LODWORD(valuePtr[0]) = 1;
          v1032 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, valuePtr);
          if (v1032)
          {
            v1033 = v1032;
            CFArrayAppendValue(v5, v1032);
            CFRelease(v1033);
          }
        }

        if ((__src[0] & 2) != 0)
        {
          LODWORD(valuePtr[0]) = 2;
          v1034 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, valuePtr);
          if (v1034)
          {
            v1035 = v1034;
            CFArrayAppendValue(v5, v1034);
            CFRelease(v1035);
          }
        }

        if ((__src[0] & 4) != 0)
        {
          LODWORD(valuePtr[0]) = 3;
          v1036 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, valuePtr);
          if (v1036)
          {
            v1037 = v1036;
            CFArrayAppendValue(v5, v1036);
            CFRelease(v1037);
          }
        }

        if (LODWORD(valuePtr[0]))
        {
          goto LABEL_798;
        }

        v1038 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, valuePtr);
        if (!v1038)
        {
          goto LABEL_798;
        }

        v25 = v1038;
        CFArrayAppendValue(v5, v1038);
        goto LABEL_796;
      }

LABEL_231:
      if (*__error() != 102 && *__error() != 6)
      {
        if (*__error() == 22)
        {
          goto LABEL_897;
        }

LABEL_809:
        v6 = *__error();
        if (!v6)
        {
          goto LABEL_907;
        }

        goto LABEL_898;
      }

LABEL_806:
      v6 = 4294963393;
      goto LABEL_898;
    }

    if (v4 > 335)
    {
      if (v4 > 346)
      {
        if (v4 > 349)
        {
          if (v4 != 350)
          {
            if (v4 != 353)
            {
              goto LABEL_10;
            }

            goto LABEL_6;
          }

          if (!v8)
          {
            goto LABEL_898;
          }

          memset(__src, 0, 88);
          DWORD2(v1098) = 88;
          v1099 = __src;
          if (Apple80211IOCTLGetWrapper())
          {
            goto LABEL_231;
          }

          v119 = *MEMORY[0x277CBECE8];
          v120 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt64Type, &__src[1]);
          if (!v120)
          {
            goto LABEL_808;
          }

          v121 = v120;
          CFDictionarySetValue(v5, @"SOFTAP_LOWPOWER_STATS_TXPACKETS", v120);
          CFRelease(v121);
          v122 = CFNumberCreate(v119, kCFNumberSInt64Type, __src + 8);
          if (!v122)
          {
            goto LABEL_808;
          }

          v123 = v122;
          CFDictionarySetValue(v5, @"SOFTAP_LOWPOWER_STATS_RXPACKETS", v122);
          CFRelease(v123);
          v124 = CFNumberCreate(v119, kCFNumberSInt32Type, &__src[1] + 8);
          if (!v124)
          {
            goto LABEL_808;
          }

          v125 = v124;
          CFDictionarySetValue(v5, @"SOFTAP_LOWPOWER_STATS_OFF_STATE_COUNT", v124);
          CFRelease(v125);
          v126 = CFNumberCreate(v119, kCFNumberSInt64Type, &__src[2]);
          if (!v126)
          {
            goto LABEL_808;
          }

          v127 = v126;
          CFDictionarySetValue(v5, @"SOFTAP_LOWPOWER_STATS_OFF_STATE_DURATION", v126);
          CFRelease(v127);
          v128 = CFNumberCreate(v119, kCFNumberSInt32Type, &__src[2] + 8);
          if (!v128)
          {
            goto LABEL_808;
          }

          v129 = v128;
          CFDictionarySetValue(v5, @"SOFTAP_LOWPOWER_STATS_ACTIVE_STATE_COUNT", v128);
          CFRelease(v129);
          v130 = CFNumberCreate(v119, kCFNumberSInt64Type, &__src[3]);
          if (!v130)
          {
            goto LABEL_808;
          }

          v131 = v130;
          CFDictionarySetValue(v5, @"SOFTAP_LOWPOWER_STATS_ACTIVE_STATE_DURATION", v130);
          CFRelease(v131);
          v132 = CFNumberCreate(v119, kCFNumberSInt32Type, &__src[3] + 8);
          if (!v132)
          {
            goto LABEL_808;
          }

          v133 = v132;
          CFDictionarySetValue(v5, @"SOFTAP_LOWPOWER_STATS_DYNAMIC_STATE_COUNT", v132);
          CFRelease(v133);
          v134 = CFNumberCreate(v119, kCFNumberSInt64Type, &__src[4]);
          if (!v134)
          {
            goto LABEL_808;
          }

          v135 = v134;
          CFDictionarySetValue(v5, @"SOFTAP_LOWPOWER_STATS_DYNAMIC_STATE_DURATION", v134);
          CFRelease(v135);
          v136 = CFNumberCreate(v119, kCFNumberSInt32Type, &__src[4] + 8);
          if (!v136)
          {
            goto LABEL_808;
          }

          v137 = v136;
          CFDictionarySetValue(v5, @"SOFTAP_LOWPOWER_STATS_LOWPOWER_STATE_COUNT", v136);
          CFRelease(v137);
          v138 = CFNumberCreate(v119, kCFNumberSInt64Type, &__src[5]);
          if (!v138)
          {
            goto LABEL_808;
          }

          v25 = v138;
          v26 = @"SOFTAP_LOWPOWER_STATS_LOWPOWER_STATE_DURATION";
        }

        else
        {
          if (v4 != 347)
          {
            if (v4 != 348)
            {
              goto LABEL_10;
            }

            LODWORD(v5[1].data) = 0;
            *&v5->data = 0u;
            *&v5[1].isa = 0u;
            *&v5->isa = 0u;
            v27 = 52;
LABEL_220:
            DWORD2(v1098) = v27;
LABEL_221:
            v1099 = v5;
            goto LABEL_222;
          }

          if (!v8)
          {
            goto LABEL_898;
          }

          memset(__src, 0, 28);
          DWORD2(v1098) = 28;
          v1099 = __src;
          if (Apple80211IOCTLGetWrapper())
          {
            goto LABEL_231;
          }

          v102 = *MEMORY[0x277CBECE8];
          v103 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, __src + 4);
          if (!v103)
          {
            goto LABEL_808;
          }

          v104 = v103;
          CFDictionarySetValue(v5, @"SOFTAP_LOWPOWER_ACTIVE_TO_DYNAMIC_TIMEOUT", v103);
          CFRelease(v104);
          v105 = CFNumberCreate(v102, kCFNumberSInt32Type, __src + 8);
          if (!v105)
          {
            goto LABEL_808;
          }

          v106 = v105;
          CFDictionarySetValue(v5, @"SOFTAP_LOWPOWER_DYNAMIC_TO_LOW_TIMEOUT", v105);
          CFRelease(v106);
          v107 = CFNumberCreate(v102, kCFNumberSInt32Type, __src + 12);
          if (!v107)
          {
            goto LABEL_808;
          }

          v108 = v107;
          CFDictionarySetValue(v5, @"SOFTAP_LOWPOWER_LOW_TO_DISABLE_INTERVAL", v107);
          CFRelease(v108);
          v109 = CFNumberCreate(v102, kCFNumberSInt32Type, &__src[1]);
          if (!v109)
          {
            goto LABEL_808;
          }

          v110 = v109;
          CFDictionarySetValue(v5, @"SOFTAP_LOWPOWER_RX_PACKET_THRESHOLD", v109);
          CFRelease(v110);
          v111 = CFNumberCreate(v102, kCFNumberSInt16Type, &__src[1] + 4);
          if (!v111)
          {
            goto LABEL_808;
          }

          v112 = v111;
          CFDictionarySetValue(v5, @"SOFTAP_LOWPOWER_BEACON_INTERVAL", v111);
          CFRelease(v112);
          v113 = CFNumberCreate(v102, kCFNumberSInt8Type, &__src[1] + 6);
          if (!v113)
          {
            goto LABEL_808;
          }

          v114 = v113;
          CFDictionarySetValue(v5, @"SOFTAP_LOWPOWER_PS_STATE", v113);
          CFRelease(v114);
          v115 = CFNumberCreate(v102, kCFNumberSInt8Type, &__src[1] + 7);
          if (!v115)
          {
            goto LABEL_808;
          }

          v116 = v115;
          CFDictionarySetValue(v5, @"SOFTAP_LOWPOWER_PS_ENABLE", v115);
          CFRelease(v116);
          v117 = CFNumberCreate(v102, kCFNumberSInt8Type, &__src[1] + 8);
          if (!v117)
          {
            goto LABEL_808;
          }

          v25 = v117;
          v26 = @"SOFTAP_LOWPOWER_AWAKE_LEVEL";
        }

LABEL_795:
        CFDictionarySetValue(v5, v26, v25);
        goto LABEL_796;
      }

      if (v4 <= 338)
      {
        if (v4 == 336)
        {
          goto LABEL_6;
        }

        if (v4 != 337)
        {
          goto LABEL_10;
        }

        if (!v8)
        {
          goto LABEL_898;
        }

        memset(__src, 0, 36);
        v1099 = __src;
        DWORD2(v1098) = 36;
        if (!Apple80211IOCTLGetWrapper())
        {
          LQMSummary = _setLQMConfigIntoDict(__src, v5);
          goto LABEL_843;
        }

        goto LABEL_231;
      }

      if (v4 == 339)
      {
        v118 = malloc_type_malloc(0x19004uLL, 0x1000040E60EA1F3uLL);
        if (v118)
        {
          v66 = v118;
          bzero(v118, 0x19004uLL);
          DWORD2(v1098) = 102404;
          v1099 = v66;
          if (!Apple80211RawGet(v7, &v1097))
          {
            v1039 = _storeTrapCrashTracerMiniDumpinDict(v5, v66);
            free(v66);
            v6 = v1039;
            if (!v1039)
            {
              goto LABEL_907;
            }

            goto LABEL_898;
          }

LABEL_198:
          free(v66);
LABEL_8:
          if (*__error() == 102 || *__error() == 6)
          {
            goto LABEL_10;
          }

          if (*__error() != 22)
          {
            goto LABEL_809;
          }

          goto LABEL_48;
        }

LABEL_919:
        v6 = 4294963395;
        goto LABEL_898;
      }

      if (v4 != 346)
      {
        goto LABEL_10;
      }

      if (v8 != 2056)
      {
        goto LABEL_898;
      }

      bzero(__src, 0x808uLL);
      DWORD2(v1098) = 2056;
      v1099 = __src;
      if (!Apple80211IOCTLGetWrapper())
      {
        memcpy(v5, __src, 0x808uLL);
        goto LABEL_798;
      }
    }

    else
    {
      if (v4 <= 254)
      {
        if (v4 == 216)
        {
          LQMSummary = _getRoamProfile(v7, &v1097, v5);
          goto LABEL_843;
        }

        if (v4 == 248)
        {
          if (v8 != 0x2000)
          {
            goto LABEL_898;
          }

          bzero(v5, 0x2000uLL);
          DWORD2(v1098) = 0x2000;
          goto LABEL_221;
        }

        if (v4 != 254)
        {
          goto LABEL_10;
        }

LABEL_74:
        if (!v8)
        {
LABEL_48:
          v6 = 4294963396;
          goto LABEL_898;
        }

        bzero(__src, 0x12D8uLL);
        v1099 = __src;
        DWORD2(v1098) = 4824;
        if (Apple80211IOCTLGetWrapper())
        {
          goto LABEL_804;
        }

        if (!DWORD1(__src[0]))
        {
          goto LABEL_798;
        }

        v1091 = v4;
        v28 = 0;
        v29 = *MEMORY[0x277CBECE8];
        v30 = &__src[1];
        v31 = MEMORY[0x277CBF138];
        v32 = MEMORY[0x277CBF150];
        while (1)
        {
          v33 = CFDictionaryCreateMutable(v29, 0, v31, v32);
          if (!v33)
          {
            goto LABEL_910;
          }

          v34 = v33;
          v35 = CFNumberCreate(v29, kCFNumberSInt32Type, v30 - 4);
          if (!v35)
          {
            break;
          }

          v36 = v35;
          CFDictionarySetValue(v34, @"SUP_CHANNEL", v35);
          CFRelease(v36);
          v37 = CFNumberCreate(v29, kCFNumberSInt32Type, v30);
          if (!v37)
          {
            break;
          }

          v38 = v37;
          CFDictionarySetValue(v34, @"SUP_CHANNEL_FLAGS", v37);
          CFRelease(v38);
          CFArrayAppendValue(v5, v34);
          CFRelease(v34);
          ++v28;
          v30 = (v30 + 12);
          if (v28 >= DWORD1(__src[0]))
          {
            v6 = 0;
LABEL_917:
            LODWORD(v4) = v1091;
            if (!v6)
            {
              goto LABEL_907;
            }

LABEL_898:
            v1085 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              if (v4 > 584)
              {
                v1086 = "Error Invalid ioctl";
              }

              else if (v4 == -1)
              {
                v1086 = "APPLE80211_IOC_CARD_SPECIFIC";
              }

              else if ((v4 & 0x80000000) != 0 || (v1086 = gAppleIoucIndexToString[v4]) == 0)
              {
                v1086 = "unknown Apple80211_IOC_";
              }

              LODWORD(__src[0]) = 136448258;
              *(__src + 4) = "Apple80211GetWithIOCTL";
              WORD6(__src[0]) = 1024;
              *(__src + 14) = 13664;
              WORD1(__src[1]) = 2048;
              *(&__src[1] + 4) = v1085 / 0x3B9ACA00;
              WORD6(__src[1]) = 2048;
              *(&__src[1] + 14) = v1085 % 0x3B9ACA00 / 0x3E8;
              WORD3(__src[2]) = 2082;
              *(&__src[2] + 1) = &v1095;
              LOWORD(__src[3]) = 1024;
              *(&__src[3] + 2) = v4;
              WORD3(__src[3]) = 2082;
              *(&__src[3] + 1) = v1086;
              LOWORD(__src[4]) = 1024;
              *(&__src[4] + 2) = v6;
              WORD3(__src[4]) = 1024;
              DWORD2(__src[4]) = v6;
              _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s:%u @[%llu.%06llu] ifname['%{public}s'] IOCTL type %d/'%{public}s' return %d/0x%08x\n", __src, 0x4Cu);
            }

            goto LABEL_907;
          }
        }

        v1051 = v34;
        goto LABEL_909;
      }

      if ((v4 - 256) > 9)
      {
LABEL_799:
        if (v4 != 255)
        {
          goto LABEL_10;
        }

        LQMSummary = _getUCMProfile(v7, &v1097, v5);
        goto LABEL_843;
      }

      if (((1 << v4) & 0x22D) != 0)
      {
        goto LABEL_6;
      }

      if (v4 != 257)
      {
        if (v4 == 260)
        {
          LQMSummary = _get2GChainDisable(v7, &v1097, v5);
          goto LABEL_843;
        }

        goto LABEL_799;
      }

      bzero(__src, 0x210uLL);
      DWORD2(v1098) = 528;
      v1099 = __src;
      Value = CFDictionaryGetValue(v5, @"APPLE80211KEY_AWD_TRAP_TYPE");
      if (!Value || !CFNumberGetValue(Value, kCFNumberSInt32Type, &v1098 + 4))
      {
        goto LABEL_808;
      }

      if (!Apple80211IOCTLGetWrapper())
      {
        LQMSummary = _storeTrapInfoDataInDict(v5, __src);
        goto LABEL_843;
      }
    }

LABEL_804:
    if (*__error() == 102 || *__error() == 6)
    {
      goto LABEL_806;
    }

    if (*__error() != 22)
    {
      goto LABEL_809;
    }

LABEL_808:
    v6 = 4294963396;
    goto LABEL_898;
  }

  v6 = 4294963394;
  switch(v4)
  {
    case -1:
      goto LABEL_898;
    case 0:
    case 3:
    case 10:
    case 11:
    case 20:
    case 22:
    case 23:
    case 24:
    case 25:
    case 30:
    case 46:
    case 47:
    case 56:
    case 74:
    case 75:
    case 76:
    case 77:
    case 78:
    case 86:
    case 87:
    case 88:
    case 89:
    case 90:
    case 92:
    case 93:
    case 94:
    case 95:
    case 98:
    case 99:
    case 100:
    case 101:
    case 105:
    case 107:
    case 108:
    case 109:
    case 110:
    case 111:
    case 112:
    case 113:
    case 114:
    case 116:
    case 117:
    case 118:
    case 119:
    case 120:
    case 121:
    case 122:
    case 123:
    case 124:
    case 125:
    case 126:
    case 127:
    case 128:
    case 129:
    case 130:
    case 131:
    case 132:
    case 133:
    case 134:
    case 135:
    case 136:
    case 137:
    case 138:
    case 139:
    case 140:
    case 141:
    case 142:
    case 143:
    case 144:
    case 145:
    case 146:
    case 147:
    case 148:
    case 149:
    case 150:
    case 151:
    case 152:
    case 153:
    case 154:
    case 155:
    case 156:
    case 157:
    case 158:
    case 159:
    case 160:
    case 161:
    case 162:
    case 163:
    case 164:
    case 165:
      goto LABEL_10;
    case 1:
      memset(__src, 0, 33);
      DWORD2(v1098) = 32;
      v1099 = __src;
      goto LABEL_341;
    case 2:
      if (!v8)
      {
        goto LABEL_48;
      }

      __src[0] = 0uLL;
      DWORD2(v1098) = 16;
      v1099 = __src;
      if (Apple80211IOCTLGetWrapper())
      {
        goto LABEL_804;
      }

      v223 = *MEMORY[0x277CBECE8];
      v224 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, __src + 4);
      if (!v224)
      {
        goto LABEL_885;
      }

      v225 = v224;
      CFDictionarySetValue(v5, @"AUTH_LOWER", v224);
      CFRelease(v225);
      if (!DWORD2(__src[0]))
      {
        goto LABEL_333;
      }

      v226 = CFNumberCreate(v223, kCFNumberSInt32Type, __src + 8);
      if (!v226)
      {
        goto LABEL_885;
      }

      v227 = v226;
      CFDictionarySetValue(v5, @"AUTH_UPPER", v226);
      CFRelease(v227);
LABEL_333:
      if (!HIDWORD(__src[0]))
      {
        goto LABEL_798;
      }

      v228 = CFNumberCreate(v223, kCFNumberSInt32Type, __src + 12);
      if (!v228)
      {
        goto LABEL_885;
      }

      v25 = v228;
      v26 = @"AUTH_UPPER_EXT";
      goto LABEL_795;
    case 4:
      if (!v8)
      {
        goto LABEL_48;
      }

      __src[0] = 1uLL;
      DWORD2(v1098) = 16;
      v1099 = __src;
      if (Apple80211IOCTLGetWrapper())
      {
        goto LABEL_804;
      }

      v237 = *MEMORY[0x277CBECE8];
      v238 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, __src + 8);
      if (!v238)
      {
        goto LABEL_885;
      }

      v239 = v238;
      CFDictionarySetValue(v5, @"CHANNEL", v238);
      CFRelease(v239);
      v240 = CFNumberCreate(v237, kCFNumberSInt32Type, __src + 12);
      if (!v240)
      {
        goto LABEL_885;
      }

      v25 = v240;
      v26 = @"CHANNEL_FLAGS";
      goto LABEL_795;
    case 5:
    case 8:
    case 15:
    case 18:
    case 21:
    case 26:
    case 28:
    case 31:
    case 33:
    case 34:
    case 35:
    case 36:
    case 41:
    case 45:
    case 50:
    case 52:
    case 55:
    case 57:
    case 58:
    case 59:
    case 60:
    case 63:
    case 64:
    case 67:
    case 68:
    case 70:
    case 71:
    case 72:
    case 82:
    case 91:
    case 96:
    case 102:
    case 104:
    case 166:
      goto LABEL_6;
    case 6:
      DWORD2(__src[0]) = 0;
      *&__src[0] = 0;
      DWORD2(v1098) = 12;
      v1099 = __src;
      if (Apple80211IOCTLGetWrapper())
      {
        goto LABEL_804;
      }

      v233 = *MEMORY[0x277CBECE8];
      v234 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, __src + 4);
      if (v234)
      {
        v235 = v234;
        CFDictionarySetValue(v5, @"PROTMODE", v234);
        CFRelease(v235);
        v236 = CFNumberCreate(v233, kCFNumberSInt32Type, __src + 8);
        if (v236)
        {
          v25 = v236;
          v26 = @"PROTMODE_THRESHOLD";
          goto LABEL_795;
        }
      }

      CFRelease(v5);
      goto LABEL_885;
    case 7:
      if (!v8)
      {
        goto LABEL_48;
      }

      DWORD2(__src[0]) = 0;
      *&__src[0] = 0;
      DWORD2(v1098) = 12;
      v1099 = __src;
      if (Apple80211IOCTLGetWrapper())
      {
        goto LABEL_804;
      }

      v989 = *MEMORY[0x277CBECE8];
      v990 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, __src + 8);
      if (!v990)
      {
        goto LABEL_910;
      }

      v991 = v990;
      CFDictionarySetValue(v5, @"TX_POWER", v990);
      CFRelease(v991);
      v992 = CFNumberCreate(v989, kCFNumberSInt32Type, __src + 4);
      if (!v992)
      {
        goto LABEL_910;
      }

      v25 = v992;
      v26 = @"TX_POWER_UNIT";
      goto LABEL_795;
    case 9:
      WORD2(__src[0]) = 0;
      LODWORD(__src[0]) = 0;
      DWORD2(v1098) = 6;
      v1099 = __src;
      if (Apple80211IOCTLGetWrapper())
      {
        goto LABEL_804;
      }

      if (v8 == 6)
      {
        v6 = 0;
        LODWORD(v5->isa) = __src[0];
        WORD2(v5->isa) = WORD2(__src[0]);
        goto LABEL_907;
      }

      v1084 = ether_ntoa(__src);
      if (!v1084)
      {
        goto LABEL_885;
      }

      v241 = v1084;
      goto LABEL_355;
    case 12:
      memset(__src, 0, 28);
      v1099 = __src + 4;
      DWORD2(v1098) = 21;
      if (Apple80211IOCTLGetWrapper())
      {
        goto LABEL_804;
      }

      v207 = 0;
      LODWORD(valuePtr[0]) = 0;
      v208 = *MEMORY[0x277CBECE8];
      do
      {
        if ((*(__src + v207 / 8 + 4) >> (v207 & 7)))
        {
          v209 = CFNumberCreate(v208, kCFNumberSInt32Type, valuePtr);
          if (!v209)
          {
            goto LABEL_885;
          }

          v210 = v209;
          CFArrayAppendValue(v5, v209);
          CFRelease(v210);
          v207 = valuePtr[0];
        }

        LODWORD(valuePtr[0]) = v207 + 1;
        v211 = v207++ < 165;
      }

      while (v211);
      goto LABEL_798;
    case 13:
      if (!v8)
      {
        goto LABEL_48;
      }

      *&__src[0] = 0;
      v1099 = __src;
      DWORD2(v1098) = 8;
      if (Apple80211IOCTLGetWrapper())
      {
        goto LABEL_804;
      }

      v6 = 0;
      LODWORD(v5->isa) = DWORD1(__src[0]);
      goto LABEL_907;
    case 14:
      *&__src[0] = 1;
      DWORD2(__src[0]) = 0;
      DWORD2(v1098) = 12;
      v1099 = __src;
      if (Apple80211IOCTLGetWrapper())
      {
        goto LABEL_804;
      }

      v1001 = *MEMORY[0x277CBECE8];
      v1002 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, __src + 4);
      if (!v1002)
      {
        goto LABEL_885;
      }

      v1003 = v1002;
      CFDictionaryAddValue(v5, @"PHYMODE_SUPPORTED", v1002);
      CFRelease(v1003);
      v1004 = CFNumberCreate(v1001, kCFNumberSInt32Type, __src + 8);
      if (!v1004)
      {
        goto LABEL_885;
      }

      v25 = v1004;
      v64 = @"PHYMODE_ACTIVE";
      goto LABEL_758;
    case 16:
    case 17:
      *(&__src[2] + 4) = 0u;
      *(&__src[1] + 4) = 0u;
      *(__src + 4) = 0u;
      LODWORD(__src[0]) = 1;
      DWORD2(v1098) = 52;
      v1099 = __src;
      if (Apple80211IOCTLGetWrapper())
      {
        goto LABEL_804;
      }

      v73 = v1098;
      if (v1098 == 16)
      {
        v74 = @"RSSI_EXT_AGR";
      }

      else
      {
        v74 = @"NOISE_EXT_AGR";
      }

      if (v1098 == 16)
      {
        v75 = @"RSSI_EXT_LIST";
      }

      else
      {
        v75 = @"NOISE_EXT_LIST";
      }

      if (v1098 == 16)
      {
        v76 = @"RSSI_CTL_LIST";
      }

      else
      {
        v76 = @"NOISE_CTL_LIST";
      }

      if (v1098 == 16)
      {
        v77 = @"RSSI_CTL_AGR";
      }

      else
      {
        v77 = @"NOISE_CTL_AGR";
      }

      v78 = *MEMORY[0x277CBECE8];
      v79 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, __src + 8);
      if (!v79)
      {
        goto LABEL_885;
      }

      v80 = v79;
      if (v73 == 16)
      {
        v81 = @"RSSI_UNIT";
      }

      else
      {
        v81 = @"NOISE_UNIT";
      }

      CFDictionaryAddValue(v5, v81, v79);
      CFRelease(v80);
      if (!DWORD1(__src[0]))
      {
        v6 = 4294963394;
        goto LABEL_898;
      }

      if (DWORD1(__src[0]) == 1)
      {
        v82 = CFNumberCreate(v78, kCFNumberSInt32Type, __src + 12);
        if (!v82)
        {
          goto LABEL_885;
        }

        v25 = v82;
        v83 = v5;
        v64 = v77;
        goto LABEL_759;
      }

      v1091 = v4;
      v1052 = CFArrayCreateMutable(v78, 0, MEMORY[0x277CBF128]);
      if (!v1052)
      {
        goto LABEL_916;
      }

      v1053 = v1052;
      v1054 = CFArrayCreateMutable(v78, 0, MEMORY[0x277CBF128]);
      if (v1054)
      {
        v1055 = v1054;
        key = v74;
        if (!DWORD1(__src[0]))
        {
LABEL_858:
          CFDictionaryAddValue(v5, v76, v1053);
          CFDictionaryAddValue(v5, v75, v1055);
          CFRelease(v1053);
          CFRelease(v1055);
          v1062 = CFNumberCreate(v78, kCFNumberSInt32Type, &__src[1] + 12);
          if (v1062)
          {
            v1063 = v1062;
            CFDictionaryAddValue(v5, v77, v1062);
            CFRelease(v1063);
            v1064 = CFNumberCreate(v78, kCFNumberSInt32Type, &__src[3]);
            LODWORD(v4) = v1091;
            if (!v1064)
            {
              goto LABEL_885;
            }

            v1065 = v1064;
            CFDictionaryAddValue(v5, key, v1064);
            v1028 = v1065;
            goto LABEL_797;
          }

LABEL_916:
          v6 = 4294963395;
          goto LABEL_917;
        }

        v1056 = 0;
        v1057 = &__src[2];
        while (1)
        {
          v1058 = CFNumberCreate(v78, kCFNumberSInt32Type, v1057 - 20);
          if (!v1058)
          {
            break;
          }

          v1059 = v1058;
          CFArrayAppendValue(v1053, v1058);
          CFRelease(v1059);
          v1060 = CFNumberCreate(v78, kCFNumberSInt32Type, v1057);
          if (!v1060)
          {
            break;
          }

          v1061 = v1060;
          CFArrayAppendValue(v1055, v1060);
          CFRelease(v1061);
          if (v1056 <= 2)
          {
            ++v1056;
            v1057 = (v1057 + 4);
            if (v1056 < DWORD1(__src[0]))
            {
              continue;
            }
          }

          goto LABEL_858;
        }

        CFRelease(v1053);
        v1089 = v1055;
      }

      else
      {
        v1089 = v1053;
      }

      CFRelease(v1089);
      goto LABEL_916;
    case 19:
      LODWORD(__src[0]) = 1;
      *(__src + 12) = 0;
      *(__src + 4) = 0;
      DWORD1(__src[1]) = 0;
      DWORD2(v1098) = 24;
      v1099 = __src;
      if (Apple80211IOCTLGetWrapper())
      {
        goto LABEL_804;
      }

      if (!DWORD1(__src[0]))
      {
        goto LABEL_798;
      }

      v197 = 0;
      v198 = __src + 8;
      v199 = *MEMORY[0x277CBECE8];
      while (1)
      {
        v200 = CFNumberCreate(v199, kCFNumberSInt32Type, v198);
        if (!v200)
        {
          goto LABEL_885;
        }

        v201 = v200;
        CFArrayAppendValue(v5, v200);
        CFRelease(v201);
        v6 = 0;
        if (v197 <= 2)
        {
          ++v197;
          v198 += 4;
          if (v197 < DWORD1(__src[0]))
          {
            continue;
          }
        }

        goto LABEL_897;
      }

    case 27:
      goto LABEL_74;
    case 29:
      __src[0] = 0uLL;
      DWORD2(v1098) = 16;
      v1099 = __src;
      if (Apple80211IOCTLGetWrapper())
      {
        goto LABEL_804;
      }

      v218 = *MEMORY[0x277CBECE8];
      v219 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, __src + 4);
      if (!v219)
      {
        goto LABEL_885;
      }

      v220 = v219;
      CFDictionarySetValue(v5, @"DEAUTH_REASON", v219);
      CFRelease(v220);
      v221 = ether_ntoa((__src + 8));
      if (!v221)
      {
        goto LABEL_885;
      }

      v222 = CFStringCreateWithCString(v218, v221, 0x8000100u);
      if (!v222)
      {
        goto LABEL_885;
      }

      v25 = v222;
      v26 = @"DEAUTH_EA";
      goto LABEL_795;
    case 32:
      if (!v8)
      {
        goto LABEL_48;
      }

      memset(__src, 0, 188);
      DWORD2(v1098) = 188;
      v1099 = __src;
      v84 = v4;
      if (Apple80211IOCTLGetWrapper())
      {
        goto LABEL_314;
      }

      if (!WORD2(__src[0]))
      {
        goto LABEL_895;
      }

      v1040 = 0;
      v1041 = *MEMORY[0x277CBECE8];
      v1042 = &__src[1];
      v1043 = MEMORY[0x277CBF138];
      v1044 = MEMORY[0x277CBF150];
      while (2)
      {
        v1045 = CFDictionaryCreateMutable(v1041, 0, v1043, v1044);
        if (v1045)
        {
          v1046 = v1045;
          v1047 = CFNumberCreate(v1041, kCFNumberSInt32Type, v1042 - 4);
          if (v1047)
          {
            v1048 = v1047;
            CFDictionarySetValue(v1046, @"RATESET_RATE", v1047);
            CFRelease(v1048);
            v1049 = CFNumberCreate(v1041, kCFNumberSInt32Type, v1042);
            if (v1049)
            {
              v1050 = v1049;
              CFDictionarySetValue(v1046, @"RATESET_FLAGS", v1049);
              CFRelease(v1050);
              CFArrayAppendValue(v5, v1046);
              CFRelease(v1046);
              v6 = 0;
              if (v1040 > 0xD)
              {
                goto LABEL_896;
              }

              ++v1040;
              v1042 = (v1042 + 12);
              if (v1040 >= WORD2(__src[0]))
              {
                goto LABEL_896;
              }

              continue;
            }
          }

          CFRelease(v1046);
        }

        break;
      }

LABEL_891:
      v6 = 4294963395;
      goto LABEL_896;
    case 37:
    case 38:
    case 39:
      LODWORD(__src[0]) = 1;
      *(__src + 12) = 0;
      *(__src + 4) = 0;
      DWORD1(__src[1]) = 0;
      DWORD2(v1098) = 24;
      v1099 = __src;
      if (Apple80211IOCTLGetWrapper())
      {
        goto LABEL_804;
      }

      if (!DWORD1(__src[0]))
      {
        goto LABEL_798;
      }

      v39 = 0;
      v40 = __src + 8;
      v41 = *MEMORY[0x277CBECE8];
      while (1)
      {
        v42 = CFNumberCreate(v41, kCFNumberSInt32Type, v40);
        if (!v42)
        {
          goto LABEL_885;
        }

        v43 = v42;
        CFArrayAppendValue(v5, v42);
        CFRelease(v43);
        ++v39;
        v40 += 4;
        if (v39 >= DWORD1(__src[0]))
        {
          goto LABEL_798;
        }
      }

    case 40:
      memset(__src, 170, sizeof(__src));
      DWORD2(v1098) = 0x8000;
      v1099 = __src;
LABEL_341:
      if (!Apple80211IOCTLGetWrapper())
      {
        goto LABEL_342;
      }

      goto LABEL_804;
    case 42:
      if (!v8)
      {
        goto LABEL_48;
      }

      bzero(__src + 4, 0x804uLL);
      LODWORD(__src[0]) = 1;
      DWORD2(v1098) = 2056;
      v1099 = __src;
      v84 = v4;
      if (Apple80211IOCTLGetWrapper())
      {
LABEL_314:
        if (*__error() == 102 || *__error() == 6)
        {
          v6 = 4294963393;
        }

        else if (*__error() == 22)
        {
          v6 = 4294963396;
        }

        else
        {
          v6 = *__error();
        }
      }

      else
      {
        if (!DWORD1(__src[0]))
        {
          goto LABEL_895;
        }

        v155 = 0;
        v156 = *MEMORY[0x277CBECE8];
        v157 = &__src[1] + 4;
        v158 = MEMORY[0x277CBF138];
        v159 = MEMORY[0x277CBF150];
        do
        {
          v160 = ether_ntoa((v157 - 8));
          if (v160)
          {
            v161 = v160;
            v162 = CFDictionaryCreateMutable(v156, 0, v158, v159);
            if (!v162)
            {
              goto LABEL_891;
            }

            v163 = v162;
            v164 = CFStringCreateWithCString(v156, v161, 0x8000100u);
            if (!v164 || (v165 = v164, CFDictionarySetValue(v163, @"STATION_MAC", v164), CFRelease(v165), (v166 = CFNumberCreate(v156, kCFNumberIntType, v157)) == 0))
            {
              CFRelease(v163);
              goto LABEL_895;
            }

            v167 = v166;
            CFDictionarySetValue(v163, @"STATION_RSSI", v166);
            CFRelease(v167);
            CFArrayAppendValue(v5, v163);
            CFRelease(v163);
          }

          v6 = 0;
          if (v155 > 0x7E)
          {
            break;
          }

          ++v155;
          v157 += 16;
        }

        while (v155 < DWORD1(__src[0]));
      }

      goto LABEL_896;
    case 43:
    case 44:
      if (!v8)
      {
        goto LABEL_48;
      }

      memset(__src, 0, 257);
      v72 = 256;
      goto LABEL_353;
    case 48:
      bzero(__src + 4, 0x804uLL);
      LODWORD(__src[0]) = 1;
      DWORD2(v1098) = 2056;
      v1099 = __src;
      if (Apple80211IOCTLGetWrapper())
      {
        goto LABEL_804;
      }

      LQMSummary = _parseIEs(__src + 8, WORD2(__src[0]), v5, v7 + 88);
      goto LABEL_843;
    case 49:
      memset(__src, 0, 20);
      DWORD2(v1098) = 20;
      v1099 = __src;
      if (Apple80211IOCTLGetWrapper())
      {
        goto LABEL_804;
      }

      v993 = *MEMORY[0x277CBECE8];
      v994 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, __src + 4);
      if (!v994)
      {
        goto LABEL_885;
      }

      v995 = v994;
      CFDictionarySetValue(v5, @"STATS_TX_FRAME_COUNT", v994);
      CFRelease(v995);
      v996 = CFNumberCreate(v993, kCFNumberSInt32Type, __src + 8);
      if (!v996)
      {
        goto LABEL_885;
      }

      v997 = v996;
      CFDictionarySetValue(v5, @"STATS_TX_ERRORS", v996);
      CFRelease(v997);
      v998 = CFNumberCreate(v993, kCFNumberSInt32Type, __src + 12);
      if (!v998)
      {
        goto LABEL_885;
      }

      v999 = v998;
      CFDictionarySetValue(v5, @"STATS_RX_FRAME_COUNT", v998);
      CFRelease(v999);
      v1000 = CFNumberCreate(v993, kCFNumberSInt32Type, &__src[1]);
      if (!v1000)
      {
        goto LABEL_885;
      }

      v25 = v1000;
      v26 = @"STATS_RX_ERRORS";
      goto LABEL_795;
    case 51:
      LODWORD(__src[0]) = 0;
      v72 = 3;
      goto LABEL_353;
    case 53:
      LODWORD(__src[0]) = 1;
      *(__src + 12) = 0;
      *(__src + 4) = 0;
      DWORD1(__src[1]) = 0;
      DWORD2(v1098) = 24;
      v1099 = __src;
      if (Apple80211IOCTLGetWrapper())
      {
        goto LABEL_804;
      }

      v188 = *MEMORY[0x277CBECE8];
      v189 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, __src + 4);
      if (!v189)
      {
        goto LABEL_885;
      }

      v190 = v189;
      CFDictionarySetValue(v5, @"LAST_RX_RATE", v189);
      CFRelease(v190);
      v191 = CFNumberCreate(v188, kCFNumberSInt32Type, __src + 8);
      if (!v191)
      {
        goto LABEL_885;
      }

      v192 = v191;
      CFDictionarySetValue(v5, @"LAST_RX_RSSI", v191);
      CFRelease(v192);
      v193 = CFNumberCreate(v188, kCFNumberSInt32Type, __src + 12);
      if (!v193)
      {
        goto LABEL_885;
      }

      v194 = v193;
      CFDictionarySetValue(v5, @"LAST_RX_NUM_STREAMS", v193);
      CFRelease(v194);
      v195 = ether_ntoa(&__src[1]);
      v196 = CFStringCreateWithCString(v188, v195, 0x8000100u);
      if (!v196)
      {
        goto LABEL_885;
      }

      v25 = v196;
      v26 = @"LAST_RX_SA";
      goto LABEL_795;
    case 54:
      *&__src[0] = 1;
      DWORD2(v1098) = 8;
      v1099 = __src;
      if (Apple80211IOCTLGetWrapper())
      {
        goto LABEL_804;
      }

      v1027 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, __src + 4);
      if (!v1027)
      {
        goto LABEL_885;
      }

      v25 = v1027;
      v26 = @"COUNT";
      goto LABEL_795;
    case 61:
      *&__src[0] = 1;
      DWORD2(__src[0]) = 0;
      DWORD2(v1098) = 12;
      v1099 = __src;
      if (Apple80211IOCTLGetWrapper())
      {
        goto LABEL_804;
      }

      v229 = *MEMORY[0x277CBECE8];
      v230 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, __src + 4);
      if (!v230)
      {
        goto LABEL_885;
      }

      v231 = v230;
      CFDictionarySetValue(v5, @"MAX_FACTOR", v230);
      CFRelease(v231);
      v232 = CFNumberCreate(v229, kCFNumberSInt32Type, __src + 8);
      if (!v232)
      {
        goto LABEL_885;
      }

      v25 = v232;
      v26 = @"MAX_DENSITY";
      goto LABEL_795;
    case 62:
      *&__src[0] = 1;
      DWORD2(v1098) = 8;
      v1099 = __src;
      if (Apple80211IOCTLGetWrapper())
      {
        goto LABEL_804;
      }

      v1022 = *MEMORY[0x277CBED28];
      v1023 = *MEMORY[0x277CBED10];
      if (BYTE4(__src[0]))
      {
        v1024 = *MEMORY[0x277CBED28];
      }

      else
      {
        v1024 = *MEMORY[0x277CBED10];
      }

      CFDictionarySetValue(v5, @"BA", v1024);
      if (BYTE5(__src[0]))
      {
        v1025 = v1022;
      }

      else
      {
        v1025 = v1023;
      }

      CFDictionarySetValue(v5, @"IMMEDIATE_BA", v1025);
      if (BYTE6(__src[0]))
      {
        v1026 = v1022;
      }

      else
      {
        v1026 = v1023;
      }

      CFDictionarySetValue(v5, @"CCBA", v1026);
      if (BYTE7(__src[0]))
      {
        v181 = v1022;
      }

      else
      {
        v181 = v1023;
      }

      v182 = @"IMPLICIT_BA";
      goto LABEL_791;
    case 65:
      __src[0] = xmmword_2548C5030;
      v202 = CFDictionaryGetValue(v5, @"MODE");
      if (!v202 || !CFNumberGetValue(v202, kCFNumberSInt32Type, __src + 4))
      {
        goto LABEL_808;
      }

      DWORD2(v1098) = 16;
      v1099 = __src;
      if (Apple80211IOCTLGetWrapper())
      {
        goto LABEL_804;
      }

      v203 = *MEMORY[0x277CBECE8];
      v204 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, __src + 8);
      if (!v204)
      {
        goto LABEL_885;
      }

      v205 = v204;
      CFDictionarySetValue(v5, @"SUBMODE", v204);
      CFRelease(v205);
      v206 = CFNumberCreate(v203, kCFNumberSInt32Type, (__src | 0xC));
      if (!v206)
      {
        goto LABEL_885;
      }

      v25 = v206;
      v26 = @"FLAGS";
      goto LABEL_795;
    case 66:
      __src[0] = 1uLL;
      DWORD2(v1098) = 16;
      v1099 = __src;
      if (Apple80211IOCTLGetWrapper())
      {
        goto LABEL_804;
      }

      v1012 = 0;
      LODWORD(valuePtr[0]) = 0;
      v1013 = *MEMORY[0x277CBECE8];
      do
      {
        if ((*(__src + v1012 / 8 + 4) >> (v1012 & 7)))
        {
          v1014 = CFNumberCreate(v1013, kCFNumberSInt32Type, valuePtr);
          if (!v1014)
          {
            goto LABEL_885;
          }

          v1015 = v1014;
          CFArrayAppendValue(v5, v1014);
          CFRelease(v1015);
          v1012 = valuePtr[0];
        }

        LODWORD(valuePtr[0]) = v1012 + 1;
        v211 = v1012++ < 76;
      }

      while (v211);
      goto LABEL_798;
    case 69:
      v982 = malloc_type_malloc(0x3AD8uLL, 0x1000040BBD6A9C0uLL);
      if (!v982)
      {
        goto LABEL_910;
      }

      v983 = v982;
      *v982 = 1;
      v984 = v982 + 4;
      v985 = xmmword_2548C5040;
      v986 = vdupq_n_s64(0xAuLL);
      v987 = 0x3FFFFFFFFFFFF150;
      v988 = vdupq_n_s64(2uLL);
      do
      {
        if (vmovn_s64(vcgtq_u64(v986, v985)).u8[0])
        {
          v982[v987 + 3764] = 1500;
        }

        if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0xAuLL), *&v985)).i32[1])
        {
          v982[v987 + 4140] = 1500;
        }

        v985 = vaddq_s64(v985, v988);
        v987 += 752;
      }

      while (v987 * 4);
      v982[3] = 10;
      DWORD2(v1098) = 15064;
      v1099 = v982;
      if (Apple80211RawGet(v7, &v1097))
      {
        free(v983);
        goto LABEL_804;
      }

      v1066 = *MEMORY[0x277CBECE8];
      v1067 = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
      if (!v1067)
      {
        goto LABEL_913;
      }

      v1068 = v1067;
      v1069 = 0;
      LODWORD(__src[0]) = 0;
      break;
    case 73:
      v183 = CFDictionaryGetValue(v5, @"STA_MAC");
      memset(valuePtr, 170, 18);
      if (!v183)
      {
        goto LABEL_889;
      }

      if (!CFStringGetCString(v183, valuePtr, 18, 0x8000100u))
      {
        goto LABEL_889;
      }

      v184 = ether_aton(valuePtr);
      if (!v184)
      {
        goto LABEL_889;
      }

      v185 = v184;
      bzero(__src + 8, 0x408uLL);
      LODWORD(__src[0]) = 1;
      v186 = *v185->octet;
      WORD4(__src[0]) = *&v185->octet[4];
      DWORD1(__src[0]) = v186;
      HIDWORD(__src[0]) = 1024;
      DWORD2(v1098) = 1040;
      v1099 = __src;
      if (Apple80211IOCTLGetWrapper())
      {
        goto LABEL_804;
      }

      v187 = CFDataCreate(*MEMORY[0x277CBECE8], &__src[1], HIDWORD(__src[0]));
      if (!v187)
      {
        goto LABEL_910;
      }

      v25 = v187;
      v64 = @"STA_IE_LIST";
      goto LABEL_758;
    case 79:
      v1005 = CFDictionaryGetValue(v5, @"STATION_MAC");
      memset(valuePtr, 170, 18);
      if (!v1005)
      {
        goto LABEL_889;
      }

      if (!CFStringGetCString(v1005, valuePtr, 18, 0x8000100u))
      {
        goto LABEL_889;
      }

      v1006 = ether_aton(valuePtr);
      if (!v1006)
      {
        goto LABEL_889;
      }

      LODWORD(__src[0]) = 1;
      *(&__src[0] + 1) = 0;
      *&__src[1] = 0;
      DWORD2(__src[1]) = 0;
      v1007 = *v1006->octet;
      WORD4(__src[0]) = *&v1006->octet[4];
      DWORD1(__src[0]) = v1007;
      DWORD2(v1098) = 28;
      v1099 = __src;
      if (Apple80211IOCTLGetWrapper())
      {
        goto LABEL_804;
      }

      v1008 = *MEMORY[0x277CBECE8];
      v1009 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &__src[1]);
      CFDictionarySetValue(v5, @"STA_RXBYTES", v1009);
      CFRelease(v1009);
      v1010 = CFNumberCreate(v1008, kCFNumberSInt32Type, &__src[1] + 8);
      CFDictionarySetValue(v5, @"STA_TXBYTES", v1010);
      CFRelease(v1010);
      v1011 = CFNumberCreate(v1008, kCFNumberSInt32Type, __src + 12);
      CFDictionarySetValue(v5, @"STA_RXPACKETS", v1011);
      CFRelease(v1011);
      v25 = CFNumberCreate(v1008, kCFNumberSInt32Type, &__src[1] + 4);
      v26 = @"STA_TXPACKETS";
      goto LABEL_795;
    case 80:
      *&__src[0] = 1;
      DWORD2(__src[0]) = 0;
      DWORD2(v1098) = 12;
      v1099 = __src;
      if (Apple80211IOCTLGetWrapper())
      {
        goto LABEL_804;
      }

      v176 = *MEMORY[0x277CBECE8];
      v177 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, __src + 4);
      if (!v177)
      {
        goto LABEL_910;
      }

      v178 = v177;
      CFDictionaryAddValue(v5, @"ROAM_THRESH_RSSI", v177);
      CFRelease(v178);
      v179 = CFNumberCreate(v176, kCFNumberSInt32Type, __src + 8);
      if (!v179)
      {
        goto LABEL_910;
      }

      v25 = v179;
      v64 = @"ROAM_THRESH_RATE";
      goto LABEL_758;
    case 81:
      LOBYTE(__src[0]) = -86;
      DWORD2(v1098) = 1;
      v1099 = __src;
      if (Apple80211IOCTLGetWrapper())
      {
        goto LABEL_804;
      }

      v180 = __src[0];
      if (__src[0])
      {
        CFDictionarySetValue(v5, @"V_DBG_FLAG_ASSOC", *MEMORY[0x277CBED28]);
        v180 = __src[0];
      }

      if ((v180 & 2) == 0)
      {
        goto LABEL_798;
      }

      v181 = *MEMORY[0x277CBED28];
      v182 = @"V_DBG_FLAG_CONNECTION";
LABEL_791:
      CFDictionarySetValue(v5, v182, v181);
      goto LABEL_798;
    case 83:
      bzero(__src + 4, 0x804uLL);
      LODWORD(__src[0]) = 1;
      DWORD2(v1098) = 2056;
      v1099 = __src;
      if (Apple80211IOCTLGetWrapper())
      {
        goto LABEL_804;
      }

      if (!DWORD1(__src[0]))
      {
        goto LABEL_798;
      }

      v140 = 0;
      v141 = *MEMORY[0x277CBECE8];
      v142 = &__src[1];
      v143 = MEMORY[0x277CBF138];
      v144 = MEMORY[0x277CBF150];
      while (2)
      {
        v145 = CFDictionaryCreateMutable(v141, 0, v143, v144);
        if (!v145)
        {
          goto LABEL_910;
        }

        v146 = v145;
        v147 = v4;
        v148 = CFNumberCreate(v141, kCFNumberSInt32Type, &v142[-2].octet[4]);
        if (v148)
        {
          v149 = v148;
          CFDictionaryAddValue(v146, @"PMKSA_AGE", v148);
          CFRelease(v149);
          v150 = CFNumberCreate(v141, kCFNumberSInt32Type, &v142[-1].octet[2]);
          if (v150)
          {
            v151 = v150;
            CFDictionaryAddValue(v146, @"PMKSA_AKMP", v150);
            CFRelease(v151);
            v152 = ether_ntoa(v142);
            if (v152)
            {
              v153 = CFStringCreateWithCString(v141, v152, 0x8000100u);
              if (v153)
              {
                v154 = v153;
                CFDictionaryAddValue(v146, @"PMKSA_AUTHENTICATOR", v153);
                CFRelease(v154);
                CFArrayAppendValue(v5, v146);
                CFRelease(v146);
                ++v140;
                v142 = (v142 + 16);
                v4 = v147;
                if (v140 >= DWORD1(__src[0]))
                {
                  goto LABEL_798;
                }

                continue;
              }
            }
          }
        }

        break;
      }

      v1051 = v146;
      goto LABEL_909;
    case 84:
      LODWORD(__src[0]) = 1;
      *(__src + 12) = 0;
      *(__src + 4) = 0;
      DWORD2(v1098) = 20;
      v1099 = __src;
      if (Apple80211IOCTLGetWrapper())
      {
        goto LABEL_804;
      }

      v1016 = *MEMORY[0x277CBECE8];
      v1017 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, __src + 4);
      if (!v1017)
      {
        goto LABEL_910;
      }

      v1018 = v1017;
      CFDictionaryAddValue(v5, @"LQ_RSSI_DIVISOR", v1017);
      CFRelease(v1018);
      v1019 = CFNumberCreate(v1016, kCFNumberSInt32Type, __src + 8);
      if (!v1019)
      {
        goto LABEL_910;
      }

      v1020 = v1019;
      CFDictionaryAddValue(v5, @"LQ_TX_RATE_DIVISOR", v1019);
      CFRelease(v1020);
      v1021 = CFNumberCreate(v1016, kCFNumberSInt32Type, __src + 12);
      if (!v1021)
      {
        goto LABEL_910;
      }

      v25 = v1021;
      v64 = @"LQ_EVENT_MIN_INTERVAL";
      goto LABEL_758;
    case 85:
      bzero(__src + 4, 0x810uLL);
      LODWORD(__src[0]) = 1;
      v168 = CFDictionaryGetValue(v5, @"CUSTOM_IE_DATA");
      if (!v168)
      {
        goto LABEL_889;
      }

      v169 = v168;
      HIDWORD(__src[0]) = CFDataGetLength(v168);
      if (HIDWORD(__src[0]) > 0x800)
      {
        goto LABEL_889;
      }

      CFDataGetBytePtr(v169);
      __memcpy_chk();
      LODWORD(__src[1]) = 2048;
      DWORD2(v1098) = 2068;
      v1099 = __src;
      if (Apple80211IOCTLGetWrapper())
      {
        goto LABEL_804;
      }

      v170 = *MEMORY[0x277CBECE8];
      v171 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, __src + 4);
      if (!v171)
      {
        goto LABEL_910;
      }

      v172 = v171;
      CFDictionarySetValue(v5, @"CUSTOM_IE_FRAME_TYPE", v171);
      CFRelease(v172);
      v173 = CFNumberCreate(v170, kCFNumberSInt32Type, __src + 12);
      if (!v173)
      {
        goto LABEL_910;
      }

      v174 = v173;
      CFDictionarySetValue(v5, @"CUSTOM_IE_SIG_LEN", v173);
      CFRelease(v174);
      v175 = CFDataCreate(v170, &__src[1] + 4, LODWORD(__src[1]));
      if (!v175)
      {
        goto LABEL_910;
      }

      v25 = v175;
      v26 = @"CUSTOM_IE_DATA";
      goto LABEL_795;
    case 97:
      memset(__src, 0, 17);
      v72 = 16;
LABEL_353:
      DWORD2(v1098) = v72;
      v1099 = __src;
      if (!Apple80211IOCTLGetWrapper())
      {
        goto LABEL_354;
      }

      goto LABEL_804;
    case 103:
      if (!v8)
      {
        goto LABEL_48;
      }

      bzero(__src, 0x8D8uLL);
      WORD5(__src[8]) = 2048;
      DWORD2(v1098) = 2264;
      v1099 = __src;
      if (Apple80211IOCTLGetWrapper())
      {
        goto LABEL_804;
      }

      LQMSummary = _addScanResultToList(v7, __src, 0, 0, v5, 0, 0, 0, 0, 0, 1, 0);
      goto LABEL_843;
    case 106:
      __src[0] = xmmword_2548C5030;
      DWORD2(v1098) = 16;
      v1099 = __src;
      if (Apple80211IOCTLGetWrapper())
      {
        goto LABEL_804;
      }

      v212 = *MEMORY[0x277CBECE8];
      v213 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, __src + 4);
      if (!v213)
      {
        goto LABEL_885;
      }

      v214 = v213;
      CFDictionarySetValue(v5, @"RSSI_MIN", v213);
      CFRelease(v214);
      v215 = CFNumberCreate(v212, kCFNumberSInt32Type, __src + 8);
      if (!v215)
      {
        goto LABEL_885;
      }

      v216 = v215;
      CFDictionarySetValue(v5, @"RSSI_MAX", v215);
      CFRelease(v216);
      v217 = CFNumberCreate(v212, kCFNumberSInt32Type, (__src | 0xC));
      if (!v217)
      {
        goto LABEL_885;
      }

      v25 = v217;
      v26 = @"RSSI_THRESHOLD";
      goto LABEL_795;
    case 115:
      bzero(__src, 0x728uLL);
      DWORD2(v1098) = 1832;
      v1099 = __src;
      if (Apple80211IOCTLGetWrapper())
      {
        goto LABEL_804;
      }

      v242 = *MEMORY[0x277CBECE8];
      v243 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, __src + 4);
      if (!v243)
      {
        goto LABEL_885;
      }

      v244 = v243;
      CFDictionarySetValue(v5, @"INSTANT_ASSOCIATED_SLEEP_DURATION", v243);
      CFRelease(v244);
      v245 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[44] + 4);
      if (!v245)
      {
        goto LABEL_885;
      }

      v246 = v245;
      CFDictionarySetValue(v5, @"CACHED_ASSOCIATED_SLEEP_DURATION", v245);
      CFRelease(v246);
      v247 = CFNumberCreate(v242, kCFNumberSInt32Type, __src + 8);
      if (!v247)
      {
        goto LABEL_885;
      }

      v248 = v247;
      CFDictionarySetValue(v5, @"INSTANT_UNASSOCIATED_SLEEP_DURATION", v247);
      CFRelease(v248);
      v249 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[44] + 8);
      if (!v249)
      {
        goto LABEL_885;
      }

      v250 = v249;
      CFDictionarySetValue(v5, @"CACHED_UNASSOCIATED_SLEEP_DURATION", v249);
      CFRelease(v250);
      v251 = CFNumberCreate(v242, kCFNumberSInt32Type, __src);
      if (!v251)
      {
        goto LABEL_885;
      }

      v252 = v251;
      CFDictionarySetValue(v5, @"INSTANT_TIME_STAMP", v251);
      CFRelease(v252);
      v253 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[44]);
      if (!v253)
      {
        goto LABEL_885;
      }

      v254 = v253;
      CFDictionarySetValue(v5, @"CACHED_TIME_STAMP", v253);
      CFRelease(v254);
      v255 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[31] + 8);
      if (!v255)
      {
        goto LABEL_885;
      }

      v256 = v255;
      CFDictionarySetValue(v5, @"INSTANT_TIME_STAMP_USEC", v255);
      CFRelease(v256);
      v257 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[75] + 8);
      if (!v257)
      {
        goto LABEL_885;
      }

      v258 = v257;
      CFDictionarySetValue(v5, @"CACHED_TIME_STAMP_USEC", v257);
      CFRelease(v258);
      v259 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[4] + 12);
      if (!v259)
      {
        goto LABEL_885;
      }

      v260 = v259;
      CFDictionarySetValue(v5, @"INSTANT_USER_SCAN_COUNT", v259);
      CFRelease(v260);
      v261 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[48] + 12);
      if (!v261)
      {
        goto LABEL_885;
      }

      v262 = v261;
      CFDictionarySetValue(v5, @"CACHED_USER_SCAN_COUNT", v261);
      CFRelease(v262);
      v263 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[5]);
      if (!v263)
      {
        goto LABEL_885;
      }

      v264 = v263;
      CFDictionarySetValue(v5, @"INSTANT_USER_SCAN_DURATION", v263);
      CFRelease(v264);
      v265 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[49]);
      if (!v265)
      {
        goto LABEL_885;
      }

      v266 = v265;
      CFDictionarySetValue(v5, @"CACHED_USER_SCAN_DURATION", v265);
      CFRelease(v266);
      v267 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[5] + 4);
      if (!v267)
      {
        goto LABEL_885;
      }

      v268 = v267;
      CFDictionarySetValue(v5, @"INSTANT_ASSOC_SCAN_COUNT", v267);
      CFRelease(v268);
      v269 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[49] + 4);
      if (!v269)
      {
        goto LABEL_885;
      }

      v270 = v269;
      CFDictionarySetValue(v5, @"CACHED_ASSOC_SCAN_COUNT", v269);
      CFRelease(v270);
      v271 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[5] + 8);
      if (!v271)
      {
        goto LABEL_885;
      }

      v272 = v271;
      CFDictionarySetValue(v5, @"INSTANT_ASSOC_SCAN_DURATION", v271);
      CFRelease(v272);
      v273 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[49] + 8);
      if (!v273)
      {
        goto LABEL_885;
      }

      v274 = v273;
      CFDictionarySetValue(v5, @"CACHED_ASSOC_SCAN_DURATION", v273);
      CFRelease(v274);
      v275 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[5] + 12);
      if (!v275)
      {
        goto LABEL_885;
      }

      v276 = v275;
      CFDictionarySetValue(v5, @"INSTANT_ROAM_SCAN_COUNT", v275);
      CFRelease(v276);
      v277 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[49] + 12);
      if (!v277)
      {
        goto LABEL_885;
      }

      v278 = v277;
      CFDictionarySetValue(v5, @"CACHED_ROAM_SCAN_COUNT", v277);
      CFRelease(v278);
      v279 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[6]);
      if (!v279)
      {
        goto LABEL_885;
      }

      v280 = v279;
      CFDictionarySetValue(v5, @"INSTANT_ROAM_SCAN_DURATION", v279);
      CFRelease(v280);
      v281 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[50]);
      if (!v281)
      {
        goto LABEL_885;
      }

      v282 = v281;
      CFDictionarySetValue(v5, @"CACHED_ROAM_SCAN_DURATION", v281);
      CFRelease(v282);
      v283 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[6] + 4);
      if (!v283)
      {
        goto LABEL_885;
      }

      v284 = v283;
      CFDictionarySetValue(v5, @"INSTANT_PNO_SCAN_BSSID_COUNT", v283);
      CFRelease(v284);
      v285 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[50] + 4);
      if (!v285)
      {
        goto LABEL_885;
      }

      v286 = v285;
      CFDictionarySetValue(v5, @"CACHED_PNO_SCAN_BSSID_COUNT", v285);
      CFRelease(v286);
      v287 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[6] + 8);
      if (!v287)
      {
        goto LABEL_885;
      }

      v288 = v287;
      CFDictionarySetValue(v5, @"INSTANT_PNO_SCAN_BSSID_DURATION", v287);
      CFRelease(v288);
      v289 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[50] + 8);
      if (!v289)
      {
        goto LABEL_885;
      }

      v290 = v289;
      CFDictionarySetValue(v5, @"CACHED_PNO_SCAN_BSSID_DURATION", v289);
      CFRelease(v290);
      v291 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[6] + 12);
      if (!v291)
      {
        goto LABEL_885;
      }

      v292 = v291;
      CFDictionarySetValue(v5, @"INSTANT_PNO_SCAN_SSID_COUNT", v291);
      CFRelease(v292);
      v293 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[50] + 12);
      if (!v293)
      {
        goto LABEL_885;
      }

      v294 = v293;
      CFDictionarySetValue(v5, @"CACHED_PNO_SCAN_SSID_COUNT", v293);
      CFRelease(v294);
      v295 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[7]);
      if (!v295)
      {
        goto LABEL_885;
      }

      v296 = v295;
      CFDictionarySetValue(v5, @"INSTANT_PNO_SCAN_SSID_DURATION", v295);
      CFRelease(v296);
      v297 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[51]);
      if (!v297)
      {
        goto LABEL_885;
      }

      v298 = v297;
      CFDictionarySetValue(v5, @"CACHED_PNO_SCAN_SSID_DURATION", v297);
      CFRelease(v298);
      v299 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[7] + 4);
      if (!v299)
      {
        goto LABEL_885;
      }

      v300 = v299;
      CFDictionarySetValue(v5, @"INSTANT_OTHER_SCAN_COUNT", v299);
      CFRelease(v300);
      v301 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[51] + 4);
      if (!v301)
      {
        goto LABEL_885;
      }

      v302 = v301;
      CFDictionarySetValue(v5, @"CACHED_OTHER_SCAN_COUNT", v301);
      CFRelease(v302);
      v303 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[7] + 8);
      if (!v303)
      {
        goto LABEL_885;
      }

      v304 = v303;
      CFDictionarySetValue(v5, @"INSTANT_OTHER_SCAN_DURATION", v303);
      CFRelease(v304);
      v305 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[51] + 8);
      if (!v305)
      {
        goto LABEL_885;
      }

      v306 = v305;
      CFDictionarySetValue(v5, @"CACHED_OTHER_SCAN_DURATION", v305);
      CFRelease(v306);
      v307 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[34] + 8);
      if (!v307)
      {
        goto LABEL_885;
      }

      v308 = v307;
      CFDictionarySetValue(v5, @"INSTANT_USER_SCAN_OFF_CHANNEL_DURATION", v307);
      CFRelease(v308);
      v309 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[78] + 8);
      if (!v309)
      {
        goto LABEL_885;
      }

      v310 = v309;
      CFDictionarySetValue(v5, @"CACHED_USER_SCAN_OFF_CHANNEL_DURATION", v309);
      CFRelease(v310);
      v311 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[34] + 12);
      if (!v311)
      {
        goto LABEL_885;
      }

      v312 = v311;
      CFDictionarySetValue(v5, @"INSTANT_ASSOC_SCAN_OFF_CHANNEL_DURATION", v311);
      CFRelease(v312);
      v313 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[78] + 12);
      if (!v313)
      {
        goto LABEL_885;
      }

      v314 = v313;
      CFDictionarySetValue(v5, @"CACHED_ASSOC_SCAN_OFF_CHANNEL_DURATION", v313);
      CFRelease(v314);
      v315 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[35]);
      if (!v315)
      {
        goto LABEL_885;
      }

      v316 = v315;
      CFDictionarySetValue(v5, @"INSTANT_ROAM_SCAN_OFF_CHANNEL_DURATION", v315);
      CFRelease(v316);
      v317 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[79]);
      if (!v317)
      {
        goto LABEL_885;
      }

      v318 = v317;
      CFDictionarySetValue(v5, @"CACHED_ROAM_SCAN_OFF_CHANNEL_DURATION", v317);
      CFRelease(v318);
      v319 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[35] + 4);
      if (!v319)
      {
        goto LABEL_885;
      }

      v320 = v319;
      CFDictionarySetValue(v5, @"INSTANT_PNO_SCAN_BSSID_OFF_CHANNEL_DURATION", v319);
      CFRelease(v320);
      v321 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[79] + 4);
      if (!v321)
      {
        goto LABEL_885;
      }

      v322 = v321;
      CFDictionarySetValue(v5, @"CACHED_PNO_SCAN_BSSID_OFF_CHANNEL_DURATION", v321);
      CFRelease(v322);
      v323 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[35] + 8);
      if (!v323)
      {
        goto LABEL_885;
      }

      v324 = v323;
      CFDictionarySetValue(v5, @"INSTANT_PNO_SCAN_SSID_OFF_CHANNEL_DURATION", v323);
      CFRelease(v324);
      v325 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[79] + 8);
      if (!v325)
      {
        goto LABEL_885;
      }

      v326 = v325;
      CFDictionarySetValue(v5, @"CACHED_PNO_SCAN_SSID_OFF_CHANNEL_DURATION", v325);
      CFRelease(v326);
      v327 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[35] + 12);
      if (!v327)
      {
        goto LABEL_885;
      }

      v328 = v327;
      CFDictionarySetValue(v5, @"INSTANT_OTHER_SCAN_OFF_CHANNEL_DURATION", v327);
      CFRelease(v328);
      v329 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[79] + 12);
      if (!v329)
      {
        goto LABEL_885;
      }

      v330 = v329;
      CFDictionarySetValue(v5, @"CACHED_OTHER_SCAN_OFF_CHANNEL_DURATION", v329);
      CFRelease(v330);
      v331 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[2] + 8);
      if (!v331)
      {
        goto LABEL_885;
      }

      v332 = v331;
      CFDictionarySetValue(v5, @"INSTANT_NUM_CONNECTIONS", v331);
      CFRelease(v332);
      v333 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[46] + 8);
      if (!v333)
      {
        goto LABEL_885;
      }

      v334 = v333;
      CFDictionarySetValue(v5, @"CACHED_NUM_CONNECTIONS", v333);
      CFRelease(v334);
      v335 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[2] + 12);
      if (!v335)
      {
        goto LABEL_885;
      }

      v336 = v335;
      CFDictionarySetValue(v5, @"INSTANT_CONNECT_TIME", v335);
      CFRelease(v336);
      v337 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[46] + 12);
      if (!v337)
      {
        goto LABEL_885;
      }

      v338 = v337;
      CFDictionarySetValue(v5, @"CACHED_CONNECT_TIME", v337);
      CFRelease(v338);
      v339 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[3]);
      if (!v339)
      {
        goto LABEL_885;
      }

      v340 = v339;
      CFDictionarySetValue(v5, @"INSTANT_TX_DURATION", v339);
      CFRelease(v340);
      v341 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[47]);
      if (!v341)
      {
        goto LABEL_885;
      }

      v342 = v341;
      CFDictionarySetValue(v5, @"CACHED_TX_DURATION", v341);
      CFRelease(v342);
      v343 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[31] + 12);
      if (!v343)
      {
        goto LABEL_885;
      }

      v344 = v343;
      CFDictionarySetValue(v5, @"INSTANT_TX_DURATION_USEC", v343);
      CFRelease(v344);
      v345 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[75] + 12);
      if (!v345)
      {
        goto LABEL_885;
      }

      v346 = v345;
      CFDictionarySetValue(v5, @"CACHED_TX_DURATION_USEC", v345);
      CFRelease(v346);
      v347 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[3] + 4);
      if (!v347)
      {
        goto LABEL_885;
      }

      v348 = v347;
      CFDictionarySetValue(v5, @"INSTANT_TX_COUNT", v347);
      CFRelease(v348);
      v349 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[47] + 4);
      if (!v349)
      {
        goto LABEL_885;
      }

      v350 = v349;
      CFDictionarySetValue(v5, @"CACHED_TX_COUNT", v349);
      CFRelease(v350);
      v351 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[3] + 8);
      if (!v351)
      {
        goto LABEL_885;
      }

      v352 = v351;
      CFDictionarySetValue(v5, @"INSTANT_RX_DURATION", v351);
      CFRelease(v352);
      v353 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[47] + 8);
      if (!v353)
      {
        goto LABEL_885;
      }

      v354 = v353;
      CFDictionarySetValue(v5, @"CACHED_RX_DURATION", v353);
      CFRelease(v354);
      v355 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[32]);
      if (!v355)
      {
        goto LABEL_885;
      }

      v356 = v355;
      CFDictionarySetValue(v5, @"INSTANT_RX_DURATION_USEC", v355);
      CFRelease(v356);
      v357 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[76]);
      if (!v357)
      {
        goto LABEL_885;
      }

      v358 = v357;
      CFDictionarySetValue(v5, @"CACHED_RX_DURATION_USEC", v357);
      CFRelease(v358);
      v359 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[32] + 8);
      if (!v359)
      {
        goto LABEL_885;
      }

      v360 = v359;
      CFDictionarySetValue(v5, @"INSTANT_RX_DURATION_BROADCAST", v359);
      CFRelease(v360);
      v361 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[76] + 8);
      if (!v361)
      {
        goto LABEL_885;
      }

      v362 = v361;
      CFDictionarySetValue(v5, @"CACHED_RX_DURATION_BROADCAST", v361);
      CFRelease(v362);
      v363 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[32] + 12);
      if (!v363)
      {
        goto LABEL_885;
      }

      v364 = v363;
      CFDictionarySetValue(v5, @"INSTANT_RX_DURATION_MULTICAST", v363);
      CFRelease(v364);
      v365 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[76] + 12);
      if (!v365)
      {
        goto LABEL_885;
      }

      v366 = v365;
      CFDictionarySetValue(v5, @"CACHED_RX_DURATION_MULTICAST", v365);
      CFRelease(v366);
      v367 = CFNumberCreate(v242, kCFNumberSInt64Type, &__src[33]);
      if (!v367)
      {
        goto LABEL_885;
      }

      v368 = v367;
      CFDictionarySetValue(v5, @"INSTANT_RX_COUNT_MULTICAST_PKTS", v367);
      CFRelease(v368);
      v369 = CFNumberCreate(v242, kCFNumberSInt64Type, &__src[77]);
      if (!v369)
      {
        goto LABEL_885;
      }

      v370 = v369;
      CFDictionarySetValue(v5, @"CACHED_RX_COUNT_MULTICAST_PKTS", v369);
      CFRelease(v370);
      v371 = CFNumberCreate(v242, kCFNumberSInt64Type, &__src[33] + 8);
      if (!v371)
      {
        goto LABEL_885;
      }

      v372 = v371;
      CFDictionarySetValue(v5, @"INSTANT_RX_COUNT_MULTICAST_BYTES", v371);
      CFRelease(v372);
      v373 = CFNumberCreate(v242, kCFNumberSInt64Type, &__src[77] + 8);
      if (!v373)
      {
        goto LABEL_885;
      }

      v374 = v373;
      CFDictionarySetValue(v5, @"CACHED_RX_COUNT_MULTICAST_BYTES", v373);
      CFRelease(v374);
      v375 = CFNumberCreate(v242, kCFNumberSInt64Type, &__src[34]);
      if (!v375)
      {
        goto LABEL_885;
      }

      v376 = v375;
      CFDictionarySetValue(v5, @"INSTANT_RX_COUNT_MULTICAST_TOTAL", v375);
      CFRelease(v376);
      v377 = CFNumberCreate(v242, kCFNumberSInt64Type, &__src[78]);
      if (!v377)
      {
        goto LABEL_885;
      }

      v378 = v377;
      CFDictionarySetValue(v5, @"CACHED_RX_COUNT_MULTICAST_TOTAL", v377);
      CFRelease(v378);
      v379 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[3] + 12);
      if (!v379)
      {
        goto LABEL_885;
      }

      v380 = v379;
      CFDictionarySetValue(v5, @"INSTANT_RX_COUNT", v379);
      CFRelease(v380);
      v381 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[47] + 12);
      if (!v381)
      {
        goto LABEL_885;
      }

      v382 = v381;
      CFDictionarySetValue(v5, @"CACHED_RX_COUNT", v381);
      CFRelease(v382);
      v383 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[4]);
      if (!v383)
      {
        goto LABEL_885;
      }

      v384 = v383;
      CFDictionarySetValue(v5, @"INSTANT_RX_SEARCH_DURATION", v383);
      CFRelease(v384);
      v385 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[48]);
      if (!v385)
      {
        goto LABEL_885;
      }

      v386 = v385;
      CFDictionarySetValue(v5, @"CACHED_RX_SEARCH_DURATION", v385);
      CFRelease(v386);
      v387 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[4] + 4);
      if (!v387)
      {
        goto LABEL_885;
      }

      v388 = v387;
      CFDictionarySetValue(v5, @"INSTANT_RX_SEARCH_COUNT", v387);
      CFRelease(v388);
      v389 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[48] + 4);
      if (!v389)
      {
        goto LABEL_885;
      }

      v390 = v389;
      CFDictionarySetValue(v5, @"CACHED_RX_SEARCH_COUNT", v389);
      CFRelease(v390);
      v391 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[4] + 8);
      if (!v391)
      {
        goto LABEL_885;
      }

      v392 = v391;
      CFDictionarySetValue(v5, @"INSTANT_MAC_ACTIVE_TIME", v391);
      CFRelease(v392);
      v393 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[48] + 8);
      if (!v393)
      {
        goto LABEL_885;
      }

      v394 = v393;
      CFDictionarySetValue(v5, @"CACHED_MAC_ACTIVE_TIME", v393);
      CFRelease(v394);
      v395 = CFNumberCreate(v242, kCFNumberSInt64Type, &__src[26] + 8);
      if (!v395)
      {
        goto LABEL_885;
      }

      v396 = v395;
      CFDictionarySetValue(v5, @"INSTANT_LPRX_SEARCH_DURATION", v395);
      CFRelease(v396);
      v397 = CFNumberCreate(v242, kCFNumberSInt64Type, &__src[70] + 8);
      if (!v397)
      {
        goto LABEL_885;
      }

      v398 = v397;
      CFDictionarySetValue(v5, @"CACHED_LPRX_SEARCH_DURATION", v397);
      CFRelease(v398);
      v399 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[27]);
      if (!v399)
      {
        goto LABEL_885;
      }

      v400 = v399;
      CFDictionarySetValue(v5, @"INSTANT_LPRX_SEARCH_COUNT", v399);
      CFRelease(v400);
      v401 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[71]);
      if (!v401)
      {
        goto LABEL_885;
      }

      v402 = v401;
      CFDictionarySetValue(v5, @"CACHED_LPRX_SEARCH_COUNT", v401);
      CFRelease(v402);
      v403 = CFNumberCreate(v242, kCFNumberSInt64Type, &__src[27] + 8);
      if (!v403)
      {
        goto LABEL_885;
      }

      v404 = v403;
      CFDictionarySetValue(v5, @"INSTANT_LPRX_ACTIVE_DURATION", v403);
      CFRelease(v404);
      v405 = CFNumberCreate(v242, kCFNumberSInt64Type, &__src[71] + 8);
      if (!v405)
      {
        goto LABEL_885;
      }

      v406 = v405;
      CFDictionarySetValue(v5, @"CACHED_LPRX_ACTIVE_DURATION", v405);
      CFRelease(v406);
      v407 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[28]);
      if (!v407)
      {
        goto LABEL_885;
      }

      v408 = v407;
      CFDictionarySetValue(v5, @"INSTANT_LPRX_ACTIVE_COUNT", v407);
      CFRelease(v408);
      v409 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[72]);
      if (!v409)
      {
        goto LABEL_885;
      }

      v410 = v409;
      CFDictionarySetValue(v5, @"CACHED_LPRX_ACTIVE_COUNT", v409);
      CFRelease(v410);
      v411 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[7] + 12);
      if (!v411)
      {
        goto LABEL_885;
      }

      v412 = v411;
      CFDictionarySetValue(v5, @"INSTANT_USER_SCAN_COUNT_5G", v411);
      CFRelease(v412);
      v413 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[51] + 12);
      if (!v413)
      {
        goto LABEL_885;
      }

      v414 = v413;
      CFDictionarySetValue(v5, @"CACHED_USER_SCAN_COUNT_5G", v413);
      CFRelease(v414);
      v415 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[8]);
      if (!v415)
      {
        goto LABEL_885;
      }

      v416 = v415;
      CFDictionarySetValue(v5, @"INSTANT_USER_SCAN_DURATION_5G", v415);
      CFRelease(v416);
      v417 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[52]);
      if (!v417)
      {
        goto LABEL_885;
      }

      v418 = v417;
      CFDictionarySetValue(v5, @"CACHED_USER_SCAN_DURATION_5G", v417);
      CFRelease(v418);
      v419 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[8] + 4);
      if (!v419)
      {
        goto LABEL_885;
      }

      v420 = v419;
      CFDictionarySetValue(v5, @"INSTANT_ASSOC_SCAN_COUNT_5G", v419);
      CFRelease(v420);
      v421 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[52] + 4);
      if (!v421)
      {
        goto LABEL_885;
      }

      v422 = v421;
      CFDictionarySetValue(v5, @"CACHED_ASSOC_SCAN_COUNT_5G", v421);
      CFRelease(v422);
      v423 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[8] + 8);
      if (!v423)
      {
        goto LABEL_885;
      }

      v424 = v423;
      CFDictionarySetValue(v5, @"INSTANT_ASSOC_SCAN_DURATION_5G", v423);
      CFRelease(v424);
      v425 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[52] + 8);
      if (!v425)
      {
        goto LABEL_885;
      }

      v426 = v425;
      CFDictionarySetValue(v5, @"CACHED_ASSOC_SCAN_DURATION_5G", v425);
      CFRelease(v426);
      v427 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[8] + 12);
      if (!v427)
      {
        goto LABEL_885;
      }

      v428 = v427;
      CFDictionarySetValue(v5, @"INSTANT_ROAM_SCAN_COUNT_5G", v427);
      CFRelease(v428);
      v429 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[52] + 12);
      if (!v429)
      {
        goto LABEL_885;
      }

      v430 = v429;
      CFDictionarySetValue(v5, @"CACHED_ROAM_SCAN_COUNT_5G", v429);
      CFRelease(v430);
      v431 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[9]);
      if (!v431)
      {
        goto LABEL_885;
      }

      v432 = v431;
      CFDictionarySetValue(v5, @"INSTANT_ROAM_SCAN_DURATION_5G", v431);
      CFRelease(v432);
      v433 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[53]);
      if (!v433)
      {
        goto LABEL_885;
      }

      v434 = v433;
      CFDictionarySetValue(v5, @"CACHED_ROAM_SCAN_DURATION_5G", v433);
      CFRelease(v434);
      v435 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[9] + 4);
      if (!v435)
      {
        goto LABEL_885;
      }

      v436 = v435;
      CFDictionarySetValue(v5, @"INSTANT_PNO_SCAN_BSSID_COUNT_5G", v435);
      CFRelease(v436);
      v437 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[53] + 4);
      if (!v437)
      {
        goto LABEL_885;
      }

      v438 = v437;
      CFDictionarySetValue(v5, @"CACHED_PNO_SCAN_BSSID_COUNT_5G", v437);
      CFRelease(v438);
      v439 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[9] + 8);
      if (!v439)
      {
        goto LABEL_885;
      }

      v440 = v439;
      CFDictionarySetValue(v5, @"INSTANT_PNO_SCAN_BSSID_DURATION_5G", v439);
      CFRelease(v440);
      v441 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[53] + 8);
      if (!v441)
      {
        goto LABEL_885;
      }

      v442 = v441;
      CFDictionarySetValue(v5, @"CACHED_PNO_SCAN_BSSID_DURATION_5G", v441);
      CFRelease(v442);
      v443 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[9] + 12);
      if (!v443)
      {
        goto LABEL_885;
      }

      v444 = v443;
      CFDictionarySetValue(v5, @"INSTANT_PNO_SCAN_SSID_COUNT_5G", v443);
      CFRelease(v444);
      v445 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[53] + 12);
      if (!v445)
      {
        goto LABEL_885;
      }

      v446 = v445;
      CFDictionarySetValue(v5, @"CACHED_PNO_SCAN_SSID_COUNT_5G", v445);
      CFRelease(v446);
      v447 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[10]);
      if (!v447)
      {
        goto LABEL_885;
      }

      v448 = v447;
      CFDictionarySetValue(v5, @"INSTANT_PNO_SCAN_SSID_DURATION_5G", v447);
      CFRelease(v448);
      v449 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[54]);
      if (!v449)
      {
        goto LABEL_885;
      }

      v450 = v449;
      CFDictionarySetValue(v5, @"CACHED_PNO_SCAN_SSID_DURATION_5G", v449);
      CFRelease(v450);
      v451 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[10] + 4);
      if (!v451)
      {
        goto LABEL_885;
      }

      v452 = v451;
      CFDictionarySetValue(v5, @"INSTANT_OTHER_SCAN_COUNT_5G", v451);
      CFRelease(v452);
      v453 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[54] + 4);
      if (!v453)
      {
        goto LABEL_885;
      }

      v454 = v453;
      CFDictionarySetValue(v5, @"CACHED_OTHER_SCAN_COUNT_5G", v453);
      CFRelease(v454);
      v455 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[10] + 8);
      if (!v455)
      {
        goto LABEL_885;
      }

      v456 = v455;
      CFDictionarySetValue(v5, @"INSTANT_OTHER_SCAN_DURATION_5G", v455);
      CFRelease(v456);
      v457 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[54] + 8);
      if (!v457)
      {
        goto LABEL_885;
      }

      v458 = v457;
      CFDictionarySetValue(v5, @"CACHED_OTHER_SCAN_DURATION_5G", v457);
      CFRelease(v458);
      v459 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[36]);
      if (!v459)
      {
        goto LABEL_885;
      }

      v460 = v459;
      CFDictionarySetValue(v5, @"INSTANT_USER_SCAN_OFF_5G_INFRA_CH_DUR_5G", v459);
      CFRelease(v460);
      v461 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[80]);
      if (!v461)
      {
        goto LABEL_885;
      }

      v462 = v461;
      CFDictionarySetValue(v5, @"CACHED_USER_SCAN_OFF_5G_INFRA_CH_DUR_5G", v461);
      CFRelease(v462);
      v463 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[36] + 4);
      if (!v463)
      {
        goto LABEL_885;
      }

      v464 = v463;
      CFDictionarySetValue(v5, @"INSTANT_ASSOC_SCAN_OFF_5G_INFRA_CH_DUR_5G", v463);
      CFRelease(v464);
      v465 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[80] + 4);
      if (!v465)
      {
        goto LABEL_885;
      }

      v466 = v465;
      CFDictionarySetValue(v5, @"CACHED_ASSOC_SCAN_OFF_5G_INFRA_CH_DUR_5G", v465);
      CFRelease(v466);
      v467 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[36] + 8);
      if (!v467)
      {
        goto LABEL_885;
      }

      v468 = v467;
      CFDictionarySetValue(v5, @"INSTANT_ROAM_SCAN_OFF_5G_INFRA_CH_DUR_5G", v467);
      CFRelease(v468);
      v469 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[80] + 8);
      if (!v469)
      {
        goto LABEL_885;
      }

      v470 = v469;
      CFDictionarySetValue(v5, @"CACHED_ROAM_SCAN_OFF_5G_INFRA_CH_DUR_5G", v469);
      CFRelease(v470);
      v471 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[36] + 12);
      if (!v471)
      {
        goto LABEL_885;
      }

      v472 = v471;
      CFDictionarySetValue(v5, @"INSTANT_PNO_SCAN_BSSID_OFF_5G_INFRA_CH_DUR_5G", v471);
      CFRelease(v472);
      v473 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[80] + 12);
      if (!v473)
      {
        goto LABEL_885;
      }

      v474 = v473;
      CFDictionarySetValue(v5, @"CACHED_PNO_SCAN_BSSID_OFF_5G_INFRA_CH_DUR_5G", v473);
      CFRelease(v474);
      v475 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[37]);
      if (!v475)
      {
        goto LABEL_885;
      }

      v476 = v475;
      CFDictionarySetValue(v5, @"INSTANT_PNO_SCAN_SSID_OFF_5G_INFRA_CH_DUR_5G", v475);
      CFRelease(v476);
      v477 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[81]);
      if (!v477)
      {
        goto LABEL_885;
      }

      v478 = v477;
      CFDictionarySetValue(v5, @"CACHED_PNO_SCAN_SSID_OFF_5G_INFRA_CH_DUR_5G", v477);
      CFRelease(v478);
      v479 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[37] + 4);
      if (!v479)
      {
        goto LABEL_885;
      }

      v480 = v479;
      CFDictionarySetValue(v5, @"INSTANT_OTHER_SCAN_OFF_5G_INFRA_CH_DUR_5G", v479);
      CFRelease(v480);
      v481 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[81] + 4);
      if (!v481)
      {
        goto LABEL_885;
      }

      v482 = v481;
      CFDictionarySetValue(v5, @"CACHED_OTHER_SCAN_OFF_5G_INFRA_CH_DUR_5G", v481);
      CFRelease(v482);
      v483 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[10] + 12);
      if (!v483)
      {
        goto LABEL_885;
      }

      v484 = v483;
      CFDictionarySetValue(v5, @"INSTANT_USER_SCAN_COUNT_2G", v483);
      CFRelease(v484);
      v485 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[54] + 12);
      if (!v485)
      {
        goto LABEL_885;
      }

      v486 = v485;
      CFDictionarySetValue(v5, @"CACHED_USER_SCAN_COUNT_2G", v485);
      CFRelease(v486);
      v487 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[11]);
      if (!v487)
      {
        goto LABEL_885;
      }

      v488 = v487;
      CFDictionarySetValue(v5, @"INSTANT_USER_SCAN_DURATION_2G", v487);
      CFRelease(v488);
      v489 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[55]);
      if (!v489)
      {
        goto LABEL_885;
      }

      v490 = v489;
      CFDictionarySetValue(v5, @"CACHED_USER_SCAN_DURATION_2G", v489);
      CFRelease(v490);
      v491 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[11] + 4);
      if (!v491)
      {
        goto LABEL_885;
      }

      v492 = v491;
      CFDictionarySetValue(v5, @"INSTANT_ASSOC_SCAN_COUNT_2G", v491);
      CFRelease(v492);
      v493 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[55] + 4);
      if (!v493)
      {
        goto LABEL_885;
      }

      v494 = v493;
      CFDictionarySetValue(v5, @"CACHED_ASSOC_SCAN_COUNT_2G", v493);
      CFRelease(v494);
      v495 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[11] + 8);
      if (!v495)
      {
        goto LABEL_885;
      }

      v496 = v495;
      CFDictionarySetValue(v5, @"INSTANT_ASSOC_SCAN_DURATION_2G", v495);
      CFRelease(v496);
      v497 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[55] + 8);
      if (!v497)
      {
        goto LABEL_885;
      }

      v498 = v497;
      CFDictionarySetValue(v5, @"CACHED_ASSOC_SCAN_DURATION_2G", v497);
      CFRelease(v498);
      v499 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[11] + 12);
      if (!v499)
      {
        goto LABEL_885;
      }

      v500 = v499;
      CFDictionarySetValue(v5, @"INSTANT_ROAM_SCAN_COUNT_2G", v499);
      CFRelease(v500);
      v501 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[55] + 12);
      if (!v501)
      {
        goto LABEL_885;
      }

      v502 = v501;
      CFDictionarySetValue(v5, @"CACHED_ROAM_SCAN_COUNT_2G", v501);
      CFRelease(v502);
      v503 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[12]);
      if (!v503)
      {
        goto LABEL_885;
      }

      v504 = v503;
      CFDictionarySetValue(v5, @"INSTANT_ROAM_SCAN_DURATION_2G", v503);
      CFRelease(v504);
      v505 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[56]);
      if (!v505)
      {
        goto LABEL_885;
      }

      v506 = v505;
      CFDictionarySetValue(v5, @"CACHED_ROAM_SCAN_DURATION_2G", v505);
      CFRelease(v506);
      v507 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[12] + 4);
      if (!v507)
      {
        goto LABEL_885;
      }

      v508 = v507;
      CFDictionarySetValue(v5, @"INSTANT_PNO_SCAN_BSSID_COUNT_2G", v507);
      CFRelease(v508);
      v509 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[56] + 4);
      if (!v509)
      {
        goto LABEL_885;
      }

      v510 = v509;
      CFDictionarySetValue(v5, @"CACHED_PNO_SCAN_BSSID_COUNT_2G", v509);
      CFRelease(v510);
      v511 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[12] + 8);
      if (!v511)
      {
        goto LABEL_885;
      }

      v512 = v511;
      CFDictionarySetValue(v5, @"INSTANT_PNO_SCAN_BSSID_DURATION_2G", v511);
      CFRelease(v512);
      v513 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[56] + 8);
      if (!v513)
      {
        goto LABEL_885;
      }

      v514 = v513;
      CFDictionarySetValue(v5, @"CACHED_PNO_SCAN_BSSID_DURATION_2G", v513);
      CFRelease(v514);
      v515 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[12] + 12);
      if (!v515)
      {
        goto LABEL_885;
      }

      v516 = v515;
      CFDictionarySetValue(v5, @"INSTANT_PNO_SCAN_SSID_COUNT_2G", v515);
      CFRelease(v516);
      v517 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[56] + 12);
      if (!v517)
      {
        goto LABEL_885;
      }

      v518 = v517;
      CFDictionarySetValue(v5, @"CACHED_PNO_SCAN_SSID_COUNT_2G", v517);
      CFRelease(v518);
      v519 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[13]);
      if (!v519)
      {
        goto LABEL_885;
      }

      v520 = v519;
      CFDictionarySetValue(v5, @"INSTANT_PNO_SCAN_SSID_DURATION_2G", v519);
      CFRelease(v520);
      v521 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[57]);
      if (!v521)
      {
        goto LABEL_885;
      }

      v522 = v521;
      CFDictionarySetValue(v5, @"CACHED_PNO_SCAN_SSID_DURATION_2G", v521);
      CFRelease(v522);
      v523 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[13] + 4);
      if (!v523)
      {
        goto LABEL_885;
      }

      v524 = v523;
      CFDictionarySetValue(v5, @"INSTANT_OTHER_SCAN_COUNT_2G", v523);
      CFRelease(v524);
      v525 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[57] + 4);
      if (!v525)
      {
        goto LABEL_885;
      }

      v526 = v525;
      CFDictionarySetValue(v5, @"CACHED_OTHER_SCAN_COUNT_2G", v525);
      CFRelease(v526);
      v527 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[13] + 8);
      if (!v527)
      {
        goto LABEL_885;
      }

      v528 = v527;
      CFDictionarySetValue(v5, @"INSTANT_OTHER_SCAN_DURATION_2G", v527);
      CFRelease(v528);
      v529 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[57] + 8);
      if (!v529)
      {
        goto LABEL_885;
      }

      v530 = v529;
      CFDictionarySetValue(v5, @"CACHED_OTHER_SCAN_DURATION_2G", v529);
      CFRelease(v530);
      v531 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[37] + 8);
      if (!v531)
      {
        goto LABEL_885;
      }

      v532 = v531;
      CFDictionarySetValue(v5, @"INSTANT_USER_SCAN_OFF_2G_INFRA_CH_DUR_2G", v531);
      CFRelease(v532);
      v533 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[81] + 8);
      if (!v533)
      {
        goto LABEL_885;
      }

      v534 = v533;
      CFDictionarySetValue(v5, @"CACHED_USER_SCAN_OFF_2G_INFRA_CH_DUR_2G", v533);
      CFRelease(v534);
      v535 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[37] + 12);
      if (!v535)
      {
        goto LABEL_885;
      }

      v536 = v535;
      CFDictionarySetValue(v5, @"INSTANT_ASSOC_SCAN_OFF_2G_INFRA_CH_DUR_2G", v535);
      CFRelease(v536);
      v537 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[81] + 12);
      if (!v537)
      {
        goto LABEL_885;
      }

      v538 = v537;
      CFDictionarySetValue(v5, @"CACHED_ASSOC_SCAN_OFF_2G_INFRA_CH_DUR_2G", v537);
      CFRelease(v538);
      v539 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[38]);
      if (!v539)
      {
        goto LABEL_885;
      }

      v540 = v539;
      CFDictionarySetValue(v5, @"INSTANT_ROAM_SCAN_OFF_2G_INFRA_CH_DUR_2G", v539);
      CFRelease(v540);
      v541 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[82]);
      if (!v541)
      {
        goto LABEL_885;
      }

      v542 = v541;
      CFDictionarySetValue(v5, @"CACHED_ROAM_SCAN_OFF_2G_INFRA_CH_DUR_2G", v541);
      CFRelease(v542);
      v543 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[38] + 4);
      if (!v543)
      {
        goto LABEL_885;
      }

      v544 = v543;
      CFDictionarySetValue(v5, @"INSTANT_PNO_SCAN_BSSID_OFF_2G_INFRA_CH_DUR_2G", v543);
      CFRelease(v544);
      v545 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[82] + 4);
      if (!v545)
      {
        goto LABEL_885;
      }

      v546 = v545;
      CFDictionarySetValue(v5, @"CACHED_PNO_SCAN_BSSID_OFF_2G_INFRA_CH_DUR_2G", v545);
      CFRelease(v546);
      v547 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[38] + 8);
      if (!v547)
      {
        goto LABEL_885;
      }

      v548 = v547;
      CFDictionarySetValue(v5, @"INSTANT_PNO_SCAN_SSID_OFF_2G_INFRA_CH_DUR_2G", v547);
      CFRelease(v548);
      v549 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[82] + 8);
      if (!v549)
      {
        goto LABEL_885;
      }

      v550 = v549;
      CFDictionarySetValue(v5, @"CACHED_PNO_SCAN_SSID_OFF_2G_INFRA_CH_DUR_2G", v549);
      CFRelease(v550);
      v551 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[38] + 12);
      if (!v551)
      {
        goto LABEL_885;
      }

      v552 = v551;
      CFDictionarySetValue(v5, @"INSTANT_OTHER_SCAN_OFF_2G_INFRA_CH_DUR_2G", v551);
      CFRelease(v552);
      v553 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[82] + 12);
      if (!v553)
      {
        goto LABEL_885;
      }

      v554 = v553;
      CFDictionarySetValue(v5, @"CACHED_OTHER_SCAN_OFF_2G_INFRA_CH_DUR_2G", v553);
      CFRelease(v554);
      v555 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[13] + 12);
      if (!v555)
      {
        goto LABEL_885;
      }

      v556 = v555;
      CFDictionarySetValue(v5, @"INSTANT_DFS_PASSIVE_TO_ACTIVE_COUNT", v555);
      CFRelease(v556);
      v557 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[57] + 12);
      if (!v557)
      {
        goto LABEL_885;
      }

      v558 = v557;
      CFDictionarySetValue(v5, @"CACHED_DFS_PASSIVE_TO_ACTIVE_COUNT", v557);
      CFRelease(v558);
      v559 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[14]);
      if (!v559)
      {
        goto LABEL_885;
      }

      v560 = v559;
      CFDictionarySetValue(v5, @"INSTANT_AWDL_TX_DUR", v559);
      CFRelease(v560);
      v561 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[58]);
      if (!v561)
      {
        goto LABEL_885;
      }

      v562 = v561;
      CFDictionarySetValue(v5, @"CACHED_AWDL_TX_DUR", v561);
      CFRelease(v562);
      v563 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[14] + 4);
      if (!v563)
      {
        goto LABEL_885;
      }

      v564 = v563;
      CFDictionarySetValue(v5, @"INSTANT_AWDL_RX_DUR", v563);
      CFRelease(v564);
      v565 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[58] + 4);
      if (!v565)
      {
        goto LABEL_885;
      }

      v566 = v565;
      CFDictionarySetValue(v5, @"CACHED_AWDL_RX_DUR", v565);
      CFRelease(v566);
      v567 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[14] + 8);
      if (!v567)
      {
        goto LABEL_885;
      }

      v568 = v567;
      CFDictionarySetValue(v5, @"INSTANT_AWDL_AW_DUR", v567);
      CFRelease(v568);
      v569 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[58] + 8);
      if (!v569)
      {
        goto LABEL_885;
      }

      v570 = v569;
      CFDictionarySetValue(v5, @"CACHED_AWDL_AW_DUR", v569);
      CFRelease(v570);
      v571 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[14] + 12);
      if (!v571)
      {
        goto LABEL_885;
      }

      v572 = v571;
      CFDictionarySetValue(v5, @"INSTANT_AWDL_PSCANS_DUR", v571);
      CFRelease(v572);
      v573 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[58] + 12);
      if (!v573)
      {
        goto LABEL_885;
      }

      v574 = v573;
      CFDictionarySetValue(v5, @"CACHED_AWDL_PSCANS_DUR", v573);
      CFRelease(v574);
      v575 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[15]);
      if (!v575)
      {
        goto LABEL_885;
      }

      v576 = v575;
      CFDictionarySetValue(v5, @"INSTANT_PCIE_D3_SUSPEND_CT ", v575);
      CFRelease(v576);
      v577 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[59]);
      if (!v577)
      {
        goto LABEL_885;
      }

      v578 = v577;
      CFDictionarySetValue(v5, @"CACHED_PCIE_D3_SUSPEND_CT ", v577);
      CFRelease(v578);
      v579 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[15] + 4);
      if (!v579)
      {
        goto LABEL_885;
      }

      v580 = v579;
      CFDictionarySetValue(v5, @"INSTANT_PCIE_D0_RESUME_CT", v579);
      CFRelease(v580);
      v581 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[59] + 4);
      if (!v581)
      {
        goto LABEL_885;
      }

      v582 = v581;
      CFDictionarySetValue(v5, @"CACHED_PCIE_D0_RESUME_CT", v581);
      CFRelease(v582);
      v583 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[15] + 8);
      if (!v583)
      {
        goto LABEL_885;
      }

      v584 = v583;
      CFDictionarySetValue(v5, @"INSTANT_PCIE_PERST_ASSRT_CT", v583);
      CFRelease(v584);
      v585 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[59] + 8);
      if (!v585)
      {
        goto LABEL_885;
      }

      v586 = v585;
      CFDictionarySetValue(v5, @"CACHED_PCIE_PERST_ASSRT_CT", v585);
      CFRelease(v586);
      v587 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[15] + 12);
      if (!v587)
      {
        goto LABEL_885;
      }

      v588 = v587;
      CFDictionarySetValue(v5, @"INSTANT_PCIE_PERST_DEASSRT_CT ", v587);
      CFRelease(v588);
      v589 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[59] + 12);
      if (!v589)
      {
        goto LABEL_885;
      }

      v590 = v589;
      CFDictionarySetValue(v5, @"CACHED_PCIE_PERST_DEASSRT_CT ", v589);
      CFRelease(v590);
      v591 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[16]);
      if (!v591)
      {
        goto LABEL_885;
      }

      v592 = v591;
      CFDictionarySetValue(v5, @"INSTANT_PCIE_ACTIVE_DUR", v591);
      CFRelease(v592);
      v593 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[60]);
      if (!v593)
      {
        goto LABEL_885;
      }

      v594 = v593;
      CFDictionarySetValue(v5, @"CACHED_PCIE_ACTIVE_DUR", v593);
      CFRelease(v594);
      v595 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[16] + 4);
      if (!v595)
      {
        goto LABEL_885;
      }

      v596 = v595;
      CFDictionarySetValue(v5, @"INSTANT_PCIE_D3_SUSPEND_DUR ", v595);
      CFRelease(v596);
      v597 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[60] + 4);
      if (!v597)
      {
        goto LABEL_885;
      }

      v598 = v597;
      CFDictionarySetValue(v5, @"CACHED_PCIE_D3_SUSPEND_DUR ", v597);
      CFRelease(v598);
      v599 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[16] + 8);
      if (!v599)
      {
        goto LABEL_885;
      }

      v600 = v599;
      CFDictionarySetValue(v5, @"INSTANT_PCIE_PERST_DUR", v599);
      CFRelease(v600);
      v601 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[60] + 8);
      if (!v601)
      {
        goto LABEL_885;
      }

      v602 = v601;
      CFDictionarySetValue(v5, @"CACHED_PCIE_PERST_DUR", v601);
      CFRelease(v602);
      v603 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[16] + 12);
      if (!v603)
      {
        goto LABEL_885;
      }

      v604 = v603;
      CFDictionarySetValue(v5, @"INSTANT_PCIE_L0_CT", v603);
      CFRelease(v604);
      v605 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[60] + 12);
      if (!v605)
      {
        goto LABEL_885;
      }

      v606 = v605;
      CFDictionarySetValue(v5, @"CACHED_PCIE_L0_CT", v605);
      CFRelease(v606);
      v607 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[17]);
      if (!v607)
      {
        goto LABEL_885;
      }

      v608 = v607;
      CFDictionarySetValue(v5, @"INSTANT_PCIE_L0_DUR", v607);
      CFRelease(v608);
      v609 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[61]);
      if (!v609)
      {
        goto LABEL_885;
      }

      v610 = v609;
      CFDictionarySetValue(v5, @"CACHED_PCIE_L0_DUR", v609);
      CFRelease(v610);
      v611 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[17] + 4);
      if (!v611)
      {
        goto LABEL_885;
      }

      v612 = v611;
      CFDictionarySetValue(v5, @"INSTANT_PCIE_L1_CT", v611);
      CFRelease(v612);
      v613 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[61] + 4);
      if (!v613)
      {
        goto LABEL_885;
      }

      v614 = v613;
      CFDictionarySetValue(v5, @"CACHED_PCIE_L1_CT", v613);
      CFRelease(v614);
      v615 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[17] + 8);
      if (!v615)
      {
        goto LABEL_885;
      }

      v616 = v615;
      CFDictionarySetValue(v5, @"INSTANT_PCIE_L1_DUR", v615);
      CFRelease(v616);
      v617 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[61] + 8);
      if (!v617)
      {
        goto LABEL_885;
      }

      v618 = v617;
      CFDictionarySetValue(v5, @"CACHED_PCIE_L1_DUR", v617);
      CFRelease(v618);
      v619 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[17] + 12);
      if (!v619)
      {
        goto LABEL_885;
      }

      v620 = v619;
      CFDictionarySetValue(v5, @"INSTANT_PCIE_L1_1_CT", v619);
      CFRelease(v620);
      v621 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[61] + 12);
      if (!v621)
      {
        goto LABEL_885;
      }

      v622 = v621;
      CFDictionarySetValue(v5, @"CACHED_PCIE_L1_1_CT", v621);
      CFRelease(v622);
      v623 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[18]);
      if (!v623)
      {
        goto LABEL_885;
      }

      v624 = v623;
      CFDictionarySetValue(v5, @"INSTANT_PCIE_L1_1_DUR", v623);
      CFRelease(v624);
      v625 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[62]);
      if (!v625)
      {
        goto LABEL_885;
      }

      v626 = v625;
      CFDictionarySetValue(v5, @"CACHED_PCIE_L1_1_DUR", v625);
      CFRelease(v626);
      v627 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[18] + 4);
      if (!v627)
      {
        goto LABEL_885;
      }

      v628 = v627;
      CFDictionarySetValue(v5, @"INSTANT_PCIE_L1_2_CT", v627);
      CFRelease(v628);
      v629 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[62] + 4);
      if (!v629)
      {
        goto LABEL_885;
      }

      v630 = v629;
      CFDictionarySetValue(v5, @"CACHED_PCIE_L1_2_CT", v629);
      CFRelease(v630);
      v631 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[18] + 8);
      if (!v631)
      {
        goto LABEL_885;
      }

      v632 = v631;
      CFDictionarySetValue(v5, @"INSTANT_PCIE_L1_2_DUR", v631);
      CFRelease(v632);
      v633 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[62] + 8);
      if (!v633)
      {
        goto LABEL_885;
      }

      v634 = v633;
      CFDictionarySetValue(v5, @"CACHED_PCIE_L1_2_DUR", v633);
      CFRelease(v634);
      v635 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[18] + 12);
      if (!v635)
      {
        goto LABEL_885;
      }

      v636 = v635;
      CFDictionarySetValue(v5, @"INSTANT_PCIE_L2_CT", v635);
      CFRelease(v636);
      v637 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[62] + 12);
      if (!v637)
      {
        goto LABEL_885;
      }

      v638 = v637;
      CFDictionarySetValue(v5, @"CACHED_PCIE_L2_CT", v637);
      CFRelease(v638);
      v639 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[19]);
      if (!v639)
      {
        goto LABEL_885;
      }

      v640 = v639;
      CFDictionarySetValue(v5, @"INSTANT_PCIE_L2_DUR", v639);
      CFRelease(v640);
      v641 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[63]);
      if (!v641)
      {
        goto LABEL_885;
      }

      v642 = v641;
      CFDictionarySetValue(v5, @"CACHED_PCIE_L2_DUR", v641);
      CFRelease(v642);
      v643 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[19] + 4);
      if (!v643)
      {
        goto LABEL_885;
      }

      v644 = v643;
      CFDictionarySetValue(v5, @"INSTANT_PCIE_DEEPSLEEP_CT", v643);
      CFRelease(v644);
      v645 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[63] + 4);
      if (!v645)
      {
        goto LABEL_885;
      }

      v646 = v645;
      CFDictionarySetValue(v5, @"CACHED_PCIE_DEEPSLEEP_CT", v645);
      CFRelease(v646);
      v647 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[19] + 8);
      if (!v647)
      {
        goto LABEL_885;
      }

      v648 = v647;
      CFDictionarySetValue(v5, @"INSTANT_PCIE_DEEPSLEEP_DUR", v647);
      CFRelease(v648);
      v649 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[63] + 8);
      if (!v649)
      {
        goto LABEL_885;
      }

      v650 = v649;
      CFDictionarySetValue(v5, @"CACHED_PCIE_DEEPSLEEP_DUR", v649);
      CFRelease(v650);
      v651 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[19] + 12);
      if (!v651)
      {
        goto LABEL_885;
      }

      v652 = v651;
      CFDictionarySetValue(v5, @"INSTANT_PCIE_LTR_ACTIVE_CT", v651);
      CFRelease(v652);
      v653 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[63] + 12);
      if (!v653)
      {
        goto LABEL_885;
      }

      v654 = v653;
      CFDictionarySetValue(v5, @"CACHED_PCIE_LTR_ACTIVE_CT", v653);
      CFRelease(v654);
      v655 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[20]);
      if (!v655)
      {
        goto LABEL_885;
      }

      v656 = v655;
      CFDictionarySetValue(v5, @"INSTANT_PCIE_LTR_ACTIVE_DUR", v655);
      CFRelease(v656);
      v657 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[64]);
      if (!v657)
      {
        goto LABEL_885;
      }

      v658 = v657;
      CFDictionarySetValue(v5, @"CACHED_PCIE_LTR_ACTIVE_DUR", v657);
      CFRelease(v658);
      v659 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[20] + 4);
      if (!v659)
      {
        goto LABEL_885;
      }

      v660 = v659;
      CFDictionarySetValue(v5, @"INSTANT_PCIE_LTR_SLEEP_CT", v659);
      CFRelease(v660);
      v661 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[64] + 4);
      if (!v661)
      {
        goto LABEL_885;
      }

      v662 = v661;
      CFDictionarySetValue(v5, @"CACHED_PCIE_LTR_SLEEP_CT", v661);
      CFRelease(v662);
      v663 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[20] + 8);
      if (!v663)
      {
        goto LABEL_885;
      }

      v664 = v663;
      CFDictionarySetValue(v5, @"INSTANT_PCIE_LTR_SLEEP_DUR", v663);
      CFRelease(v664);
      v665 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[64] + 8);
      if (!v665)
      {
        goto LABEL_885;
      }

      v666 = v665;
      CFDictionarySetValue(v5, @"CACHED_PCIE_LTR_SLEEP_DUR", v665);
      CFRelease(v666);
      v667 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[2]);
      if (!v667)
      {
        goto LABEL_885;
      }

      v668 = v667;
      CFDictionarySetValue(v5, @"INSTANT_FRTS_TIME", v667);
      CFRelease(v668);
      v669 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[46]);
      if (!v669)
      {
        goto LABEL_885;
      }

      v670 = v669;
      CFDictionarySetValue(v5, @"CACHED_FRTS_TIME", v669);
      CFRelease(v670);
      v671 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[2] + 4);
      if (!v671)
      {
        goto LABEL_885;
      }

      v672 = v671;
      CFDictionarySetValue(v5, @"INSTANT_FRTS_CNT", v671);
      CFRelease(v672);
      v673 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[46] + 4);
      if (!v673)
      {
        goto LABEL_885;
      }

      v674 = v673;
      CFDictionarySetValue(v5, @"CACHED_FRTS_CNT", v673);
      CFRelease(v674);
      v675 = CFNumberCreate(v242, kCFNumberSInt16Type, &__src[25] + 4);
      if (!v675)
      {
        goto LABEL_885;
      }

      v676 = v675;
      CFDictionarySetValue(v5, @"INSTANT_SLICE_INDEX", v675);
      CFRelease(v676);
      v677 = CFNumberCreate(v242, kCFNumberSInt16Type, &__src[69] + 4);
      if (!v677)
      {
        goto LABEL_885;
      }

      v678 = v677;
      CFDictionarySetValue(v5, @"CACHED_SLICE_INDEX", v677);
      CFRelease(v678);
      v679 = CFNumberCreate(v242, kCFNumberSInt16Type, &__src[25] + 6);
      if (!v679)
      {
        goto LABEL_885;
      }

      v680 = v679;
      CFDictionarySetValue(v5, @"INSTANT_BAND_TYPE", v679);
      CFRelease(v680);
      v681 = CFNumberCreate(v242, kCFNumberSInt16Type, &__src[69] + 6);
      if (!v681)
      {
        goto LABEL_885;
      }

      v682 = v681;
      CFDictionarySetValue(v5, @"CACHED_BAND_TYPE", v681);
      CFRelease(v682);
      v683 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[25] + 8);
      if (!v683)
      {
        goto LABEL_885;
      }

      v684 = v683;
      CFDictionarySetValue(v5, @"INSTANT_PSBW_ENABLED_DURATION", v683);
      CFRelease(v684);
      v685 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[69] + 8);
      if (!v685)
      {
        goto LABEL_885;
      }

      v686 = v685;
      CFDictionarySetValue(v5, @"CACHED_PSBW_ENABLED_DURATION", v685);
      CFRelease(v686);
      v687 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[25] + 12);
      if (!v687)
      {
        goto LABEL_885;
      }

      v688 = v687;
      CFDictionarySetValue(v5, @"INSTANT_PHY_OFFLINE_DURATION", v687);
      CFRelease(v688);
      v689 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[69] + 12);
      if (!v689)
      {
        goto LABEL_885;
      }

      v690 = v689;
      CFDictionarySetValue(v5, @"CACHED_CACHED_PHY_OFFLINE_DURATION", v689);
      CFRelease(v690);
      v691 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[29]);
      if (!v691)
      {
        goto LABEL_885;
      }

      v692 = v691;
      CFDictionarySetValue(v5, @"INSTANT_PHY_CALIBRATION_DURATION", v691);
      CFRelease(v692);
      v693 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[73]);
      if (!v693)
      {
        goto LABEL_885;
      }

      v694 = v693;
      CFDictionarySetValue(v5, @"CACHED_PHY_CALIBRATION_DURATION", v693);
      CFRelease(v694);
      v695 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[29] + 4);
      if (!v695)
      {
        goto LABEL_885;
      }

      v696 = v695;
      CFDictionarySetValue(v5, @"INSTANT_PHY_CALIBRATION_COUNT", v695);
      CFRelease(v696);
      v697 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[73] + 4);
      if (!v697)
      {
        goto LABEL_885;
      }

      v698 = v697;
      CFDictionarySetValue(v5, @"CACHED_PHY_CALIBRATION_COUNT", v697);
      CFRelease(v698);
      v699 = CFNumberCreate(v242, kCFNumberSInt64Type, &__src[39] + 8);
      if (!v699)
      {
        goto LABEL_885;
      }

      v700 = v699;
      CFDictionarySetValue(v5, @"INSTANT_EXT_PHY_POWER_GATE_DURATION_2G", v699);
      CFRelease(v700);
      v701 = CFNumberCreate(v242, kCFNumberSInt64Type, &__src[83] + 8);
      if (!v701)
      {
        goto LABEL_885;
      }

      v702 = v701;
      CFDictionarySetValue(v5, @"CACHED_EXT_PHY_POWER_GATE_DURATION_2G", v701);
      CFRelease(v702);
      v703 = CFNumberCreate(v242, kCFNumberSInt64Type, &__src[40]);
      if (!v703)
      {
        goto LABEL_885;
      }

      v704 = v703;
      CFDictionarySetValue(v5, @"INSTANT_EXT_PHY_POWER_GATE_DURATION_5G", v703);
      CFRelease(v704);
      v705 = CFNumberCreate(v242, kCFNumberSInt64Type, &__src[84]);
      if (!v705)
      {
        goto LABEL_885;
      }

      v706 = v705;
      CFDictionarySetValue(v5, @"CACHED_EXT_PHY_POWER_GATE_DURATION_5G", v705);
      CFRelease(v706);
      v707 = CFNumberCreate(v242, kCFNumberSInt64Type, &__src[40] + 8);
      if (!v707)
      {
        goto LABEL_885;
      }

      v708 = v707;
      CFDictionarySetValue(v5, @"INSTANT_EXT_PHY_POWER_GATE_DURATION_SC", v707);
      CFRelease(v708);
      v709 = CFNumberCreate(v242, kCFNumberSInt64Type, &__src[84] + 8);
      if (!v709)
      {
        goto LABEL_885;
      }

      v710 = v709;
      CFDictionarySetValue(v5, @"CACHED_EXT_PHY_POWER_GATE_DURATION_SC", v709);
      CFRelease(v710);
      v711 = CFNumberCreate(v242, kCFNumberSInt64Type, &__src[41]);
      if (!v711)
      {
        goto LABEL_885;
      }

      v712 = v711;
      CFDictionarySetValue(v5, @"INSTANT_EXT_PHY_OFFLINE_DURATION_2G", v711);
      CFRelease(v712);
      v713 = CFNumberCreate(v242, kCFNumberSInt64Type, &__src[85]);
      if (!v713)
      {
        goto LABEL_885;
      }

      v714 = v713;
      CFDictionarySetValue(v5, @"CACHED_EXT_PHY_OFFLINE_DURATION_2G", v713);
      CFRelease(v714);
      v715 = CFNumberCreate(v242, kCFNumberSInt64Type, &__src[41] + 8);
      if (!v715)
      {
        goto LABEL_885;
      }

      v716 = v715;
      CFDictionarySetValue(v5, @"INSTANT_EXT_PHY_OFFLINE_DURATION_5G", v715);
      CFRelease(v716);
      v717 = CFNumberCreate(v242, kCFNumberSInt64Type, &__src[85] + 8);
      if (!v717)
      {
        goto LABEL_885;
      }

      v718 = v717;
      CFDictionarySetValue(v5, @"CACHED_EXT_PHY_OFFLINE_DURATION_5G", v717);
      CFRelease(v718);
      v719 = CFNumberCreate(v242, kCFNumberSInt64Type, &__src[42]);
      if (!v719)
      {
        goto LABEL_885;
      }

      v720 = v719;
      CFDictionarySetValue(v5, @"INSTANT_EXT_PHY_OFFLINE_DURATION_SC", v719);
      CFRelease(v720);
      v721 = CFNumberCreate(v242, kCFNumberSInt64Type, &__src[86]);
      if (!v721)
      {
        goto LABEL_885;
      }

      v722 = v721;
      CFDictionarySetValue(v5, @"CACHED_EXT_PHY_OFFLINE_DURATION_SC", v721);
      CFRelease(v722);
      v723 = CFNumberCreate(v242, kCFNumberSInt64Type, &__src[42] + 8);
      if (!v723)
      {
        goto LABEL_885;
      }

      v724 = v723;
      CFDictionarySetValue(v5, @"INSTANT_EXT_PHY_RX_DURATION_2G", v723);
      CFRelease(v724);
      v725 = CFNumberCreate(v242, kCFNumberSInt64Type, &__src[86] + 8);
      if (!v725)
      {
        goto LABEL_885;
      }

      v726 = v725;
      CFDictionarySetValue(v5, @"CACHED_EXT_PHY_RX_DURATION_2G", v725);
      CFRelease(v726);
      v727 = CFNumberCreate(v242, kCFNumberSInt64Type, &__src[43]);
      if (!v727)
      {
        goto LABEL_885;
      }

      v728 = v727;
      CFDictionarySetValue(v5, @"INSTANT_EXT_PHY_RX_DURATION_5G", v727);
      CFRelease(v728);
      v729 = CFNumberCreate(v242, kCFNumberSInt64Type, &__src[87]);
      if (!v729)
      {
        goto LABEL_885;
      }

      v730 = v729;
      CFDictionarySetValue(v5, @"CACHED_EXT_PHY_RX_DURATION_5G", v729);
      CFRelease(v730);
      v731 = CFNumberCreate(v242, kCFNumberSInt64Type, &__src[43] + 8);
      if (!v731)
      {
        goto LABEL_885;
      }

      v732 = v731;
      CFDictionarySetValue(v5, @"INSTANT_EXT_PHY_RX_DURATION_SC", v731);
      CFRelease(v732);
      v733 = CFNumberCreate(v242, kCFNumberSInt64Type, &__src[87] + 8);
      if (!v733)
      {
        goto LABEL_885;
      }

      v734 = v733;
      CFDictionarySetValue(v5, @"CACHED_EXT_PHY_RX_DURATION_SC", v733);
      CFRelease(v734);
      v735 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[28] + 12);
      if (!v735)
      {
        goto LABEL_885;
      }

      v736 = v735;
      CFDictionarySetValue(v5, @"INSTANT_RET_DURATION", v735);
      CFRelease(v736);
      v737 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[72] + 12);
      if (!v737)
      {
        goto LABEL_885;
      }

      v738 = v737;
      CFDictionarySetValue(v5, @"CACHED_RET_DURATION", v737);
      CFRelease(v738);
      v739 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[20] + 12);
      if (!v739)
      {
        goto LABEL_885;
      }

      v740 = v739;
      CFDictionarySetValue(v5, @"INSTANT_MIMO_PS_TOTAL_IDLE_TIME_MIMO", v739);
      CFRelease(v740);
      v741 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[64] + 12);
      if (!v741)
      {
        goto LABEL_885;
      }

      v742 = v741;
      CFDictionarySetValue(v5, @"CACHED_MIMO_PS_TOTAL_IDLE_TIME_MIMO", v741);
      CFRelease(v742);
      v743 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[21]);
      if (!v743)
      {
        goto LABEL_885;
      }

      v744 = v743;
      CFDictionarySetValue(v5, @"INSTANT_MIMO_PS_TOTAL_IDLE_TIME_SISO", v743);
      CFRelease(v744);
      v745 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[65]);
      if (!v745)
      {
        goto LABEL_885;
      }

      v746 = v745;
      CFDictionarySetValue(v5, @"CACHED_MIMO_PS_TOTAL_IDLE_TIME_SISO", v745);
      CFRelease(v746);
      v747 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[21] + 4);
      if (!v747)
      {
        goto LABEL_885;
      }

      v748 = v747;
      CFDictionarySetValue(v5, @"INSTANT_MIMO_PS_TOTAL_RX_TIME_SISO", v747);
      CFRelease(v748);
      v749 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[65] + 4);
      if (!v749)
      {
        goto LABEL_885;
      }

      v750 = v749;
      CFDictionarySetValue(v5, @"CACHED_MIMO_PS_TOTAL_RX_TIME_SISO", v749);
      CFRelease(v750);
      v751 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[21] + 8);
      if (!v751)
      {
        goto LABEL_885;
      }

      v752 = v751;
      CFDictionarySetValue(v5, @"INSTANT_MIMO_PS_TOTAL_RX_TIME_MIMO", v751);
      CFRelease(v752);
      v753 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[65] + 8);
      if (!v753)
      {
        goto LABEL_885;
      }

      v754 = v753;
      CFDictionarySetValue(v5, @"CACHED_MIMO_PS_TOTAL_RX_TIME_MIMO", v753);
      CFRelease(v754);
      v755 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[21] + 12);
      if (!v755)
      {
        goto LABEL_885;
      }

      v756 = v755;
      CFDictionarySetValue(v5, @"INSTANT_MIMO_PS_TOTAL_TX_TIME_1CHAIN", v755);
      CFRelease(v756);
      v757 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[65] + 12);
      if (!v757)
      {
        goto LABEL_885;
      }

      v758 = v757;
      CFDictionarySetValue(v5, @"CACHED_MIMO_PS_TOTAL_TX_TIME_1CHAIN", v757);
      CFRelease(v758);
      v759 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[22]);
      if (!v759)
      {
        goto LABEL_885;
      }

      v760 = v759;
      CFDictionarySetValue(v5, @"INSTANT_MIMO_PS_TOTAL_TX_TIME_2CHAIN", v759);
      CFRelease(v760);
      v761 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[66]);
      if (!v761)
      {
        goto LABEL_885;
      }

      v762 = v761;
      CFDictionarySetValue(v5, @"CACHED_MIMO_PS_TOTAL_TX_TIME_2CHAIN", v761);
      CFRelease(v762);
      v763 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[22] + 4);
      if (!v763)
      {
        goto LABEL_885;
      }

      v764 = v763;
      CFDictionarySetValue(v5, @"INSTANT_MIMO_PS_TOTAL_TX_TIME_3CHAIN", v763);
      CFRelease(v764);
      v765 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[66] + 4);
      if (!v765)
      {
        goto LABEL_885;
      }

      v766 = v765;
      CFDictionarySetValue(v5, @"CACHED_MIMO_PS_TOTAL_TX_TIME_3CHAIN", v765);
      CFRelease(v766);
      v767 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[22] + 12);
      if (!v767)
      {
        goto LABEL_885;
      }

      v768 = v767;
      CFDictionarySetValue(v5, @"INSTANT_OCL_TOTAL_RX_TIME", v767);
      CFRelease(v768);
      v769 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[66] + 12);
      if (!v769)
      {
        goto LABEL_885;
      }

      v770 = v769;
      CFDictionarySetValue(v5, @"CACHED_OCL_TOTAL_RX_TIME", v769);
      CFRelease(v770);
      v771 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[22] + 8);
      if (!v771)
      {
        goto LABEL_885;
      }

      v772 = v771;
      CFDictionarySetValue(v5, @"INSTANT_OCL_TOTAL_IDLE_TIME", v771);
      CFRelease(v772);
      v773 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[66] + 8);
      if (!v773)
      {
        goto LABEL_885;
      }

      v774 = v773;
      CFDictionarySetValue(v5, @"CACHED_OCL_TOTAL_IDLE_TIME", v773);
      CFRelease(v774);
      v775 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[23]);
      if (!v775)
      {
        goto LABEL_885;
      }

      v776 = v775;
      CFDictionarySetValue(v5, @"INSTANT_EBT_BCN_SCHEDULED", v775);
      CFRelease(v776);
      v777 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[67]);
      if (!v777)
      {
        goto LABEL_885;
      }

      v778 = v777;
      CFDictionarySetValue(v5, @"CACHED_EBT_BCN_SCHEDULED", v777);
      CFRelease(v778);
      v779 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[23] + 4);
      if (!v779)
      {
        goto LABEL_885;
      }

      v780 = v779;
      CFDictionarySetValue(v5, @"INSTANT_EBT_BCN_RXED", v779);
      CFRelease(v780);
      v781 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[67] + 4);
      if (!v781)
      {
        goto LABEL_885;
      }

      v782 = v781;
      CFDictionarySetValue(v5, @"CACHED_EBT_BCN_RXED", v781);
      CFRelease(v782);
      v783 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[23] + 8);
      if (!v783)
      {
        goto LABEL_885;
      }

      v784 = v783;
      CFDictionarySetValue(v5, @"INSTANT_EBT_BCN_EARLY_TERMINATED", v783);
      CFRelease(v784);
      v785 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[67] + 8);
      if (!v785)
      {
        goto LABEL_885;
      }

      v786 = v785;
      CFDictionarySetValue(v5, @"CACHED_EBT_BCN_EARLY_TERMINATED", v785);
      CFRelease(v786);
      v787 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[23] + 12);
      if (!v787)
      {
        goto LABEL_885;
      }

      v788 = v787;
      CFDictionarySetValue(v5, @"INSTANT_EBT_BCN_MISSED", v787);
      CFRelease(v788);
      v789 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[67] + 12);
      if (!v789)
      {
        goto LABEL_885;
      }

      v790 = v789;
      CFDictionarySetValue(v5, @"CACHED_EBT_BCN_MISSED", v789);
      CFRelease(v790);
      v791 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[24]);
      if (!v791)
      {
        goto LABEL_885;
      }

      v792 = v791;
      CFDictionarySetValue(v5, @"INSTANT_OPS_PARTIAL_DURATION", v791);
      CFRelease(v792);
      v793 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[68]);
      if (!v793)
      {
        goto LABEL_885;
      }

      v794 = v793;
      CFDictionarySetValue(v5, @"CACHED_OPS_PARTIAL_DURATION", v793);
      CFRelease(v794);
      v795 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[24] + 4);
      if (!v795)
      {
        goto LABEL_885;
      }

      v796 = v795;
      CFDictionarySetValue(v5, @"INSTANT_OPS_FULL_DURATION", v795);
      CFRelease(v796);
      v797 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[68] + 4);
      if (!v797)
      {
        goto LABEL_885;
      }

      v798 = v797;
      CFDictionarySetValue(v5, @"CACHED_OPS_FULL_DURATION", v797);
      CFRelease(v798);
      v799 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[24] + 8);
      if (!v799)
      {
        goto LABEL_885;
      }

      v800 = v799;
      CFDictionarySetValue(v5, @"INSTANT_OPS_RX_DURATION_MBSS", v799);
      CFRelease(v800);
      v801 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[68] + 8);
      if (!v801)
      {
        goto LABEL_885;
      }

      v802 = v801;
      CFDictionarySetValue(v5, @"CACHED_OPS_RX_DURATION_MBSS", v801);
      CFRelease(v802);
      v803 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[24] + 12);
      if (!v803)
      {
        goto LABEL_885;
      }

      v804 = v803;
      CFDictionarySetValue(v5, @"INSTANT_OPS_RX_DURATION_IBSS", v803);
      CFRelease(v804);
      v805 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[68] + 12);
      if (!v805)
      {
        goto LABEL_885;
      }

      v806 = v805;
      CFDictionarySetValue(v5, @"CACHED_OPS_RX_DURATION_IBSS", v805);
      CFRelease(v806);
      v807 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[25]);
      if (!v807)
      {
        goto LABEL_885;
      }

      v808 = v807;
      CFDictionarySetValue(v5, @"INSTANT_OPS_RX_DURATION_OBSS", v807);
      CFRelease(v808);
      v809 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[69]);
      if (!v809)
      {
        goto LABEL_885;
      }

      v810 = v809;
      CFDictionarySetValue(v5, @"CACHED_OPS_RX_DURATION_OBSS", v809);
      CFRelease(v810);
      v811 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[88]);
      if (!v811)
      {
        goto LABEL_885;
      }

      v812 = v811;
      CFDictionarySetValue(v5, @"INSTANT_SC_TIME_STAMP", v811);
      CFRelease(v812);
      v813 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[94] + 8);
      if (!v813)
      {
        goto LABEL_885;
      }

      v814 = v813;
      CFDictionarySetValue(v5, @"CACHED_SC_TIME_STAMP", v813);
      CFRelease(v814);
      v815 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[88] + 8);
      if (!v815)
      {
        goto LABEL_885;
      }

      v816 = v815;
      CFDictionarySetValue(v5, @"INSTANT_SC_USR_SCAN_CNT", v815);
      CFRelease(v816);
      v817 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[95]);
      if (!v817)
      {
        goto LABEL_885;
      }

      v818 = v817;
      CFDictionarySetValue(v5, @"CACHED_SC_USR_SCAN_CNT", v817);
      CFRelease(v818);
      v819 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[88] + 12);
      if (!v819)
      {
        goto LABEL_885;
      }

      v820 = v819;
      CFDictionarySetValue(v5, @"INSTANT_SC_USR_SCAN_DUR", v819);
      CFRelease(v820);
      v821 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[95] + 4);
      if (!v821)
      {
        goto LABEL_885;
      }

      v822 = v821;
      CFDictionarySetValue(v5, @"CACHED_SC_USR_SCAN_DUR", v821);
      CFRelease(v822);
      v823 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[89]);
      if (!v823)
      {
        goto LABEL_885;
      }

      v824 = v823;
      CFDictionarySetValue(v5, @"INSTANT_SC_ASSOC_SCAN_CNT", v823);
      CFRelease(v824);
      v825 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[95] + 8);
      if (!v825)
      {
        goto LABEL_885;
      }

      v826 = v825;
      CFDictionarySetValue(v5, @"CACHED_SC_ASSOC_SCAN_CNT", v825);
      CFRelease(v826);
      v827 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[89] + 4);
      if (!v827)
      {
        goto LABEL_885;
      }

      v828 = v827;
      CFDictionarySetValue(v5, @"INSTANT_SC_ASSOC_SCAN_DUR", v827);
      CFRelease(v828);
      v829 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[95] + 12);
      if (!v829)
      {
        goto LABEL_885;
      }

      v830 = v829;
      CFDictionarySetValue(v5, @"CACHED_SC_ASSOC_SCAN_DUR", v829);
      CFRelease(v830);
      v831 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[89] + 8);
      if (!v831)
      {
        goto LABEL_885;
      }

      v832 = v831;
      CFDictionarySetValue(v5, @"INSTANT_SC_ROAM_SCAN_CNT", v831);
      CFRelease(v832);
      v833 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[96]);
      if (!v833)
      {
        goto LABEL_885;
      }

      v834 = v833;
      CFDictionarySetValue(v5, @"CACHED_SC_ROAM_SCAN_CNT", v833);
      CFRelease(v834);
      v835 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[89] + 12);
      if (!v835)
      {
        goto LABEL_885;
      }

      v836 = v835;
      CFDictionarySetValue(v5, @"INSTANT_SC_ROAM_SCAN_DUR", v835);
      CFRelease(v836);
      v837 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[96] + 4);
      if (!v837)
      {
        goto LABEL_885;
      }

      v838 = v837;
      CFDictionarySetValue(v5, @"CACHED_SC_ROAM_SCAN_DUR", v837);
      CFRelease(v838);
      v839 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[90]);
      if (!v839)
      {
        goto LABEL_885;
      }

      v840 = v839;
      CFDictionarySetValue(v5, @"INSTANT_SC_PNO_SCAN_CNT", v839);
      CFRelease(v840);
      v841 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[96] + 8);
      if (!v841)
      {
        goto LABEL_885;
      }

      v842 = v841;
      CFDictionarySetValue(v5, @"CACHED_SC_PNO_SCAN_CNT", v841);
      CFRelease(v842);
      v843 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[90] + 4);
      if (!v843)
      {
        goto LABEL_885;
      }

      v844 = v843;
      CFDictionarySetValue(v5, @"INSTANT_SC_PNO_SCAN_DUR", v843);
      CFRelease(v844);
      v845 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[96] + 12);
      if (!v845)
      {
        goto LABEL_885;
      }

      v846 = v845;
      CFDictionarySetValue(v5, @"CACHED_SC_PNO_SCAN_DUR", v845);
      CFRelease(v846);
      v847 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[91] + 12);
      if (!v847)
      {
        goto LABEL_885;
      }

      v848 = v847;
      CFDictionarySetValue(v5, @"INSTANT_SC_RX_DURATION_SISO", v847);
      CFRelease(v848);
      v849 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[98] + 4);
      if (!v849)
      {
        goto LABEL_885;
      }

      v850 = v849;
      CFDictionarySetValue(v5, @"CACHED_SC_RX_DURATION_SISO", v849);
      CFRelease(v850);
      v851 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[91] + 8);
      if (!v851)
      {
        goto LABEL_885;
      }

      v852 = v851;
      CFDictionarySetValue(v5, @"INSTANT_SC_IDLE_DURATION_SISO", v851);
      CFRelease(v852);
      v853 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[98]);
      if (!v853)
      {
        goto LABEL_885;
      }

      v854 = v853;
      CFDictionarySetValue(v5, @"CACHED_SC_IDLE_DURATION_SISO", v853);
      CFRelease(v854);
      v855 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[92] + 4);
      if (!v855)
      {
        goto LABEL_885;
      }

      v856 = v855;
      CFDictionarySetValue(v5, @"INSTANT_SC_PM_DURATION", v855);
      CFRelease(v856);
      v857 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[98] + 12);
      if (!v857)
      {
        goto LABEL_885;
      }

      v858 = v857;
      CFDictionarySetValue(v5, @"CACHED_SC_PM_DURATION", v857);
      CFRelease(v858);
      v859 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[92] + 8);
      if (!v859)
      {
        goto LABEL_885;
      }

      v860 = v859;
      CFDictionarySetValue(v5, @"INSTANT_SC_RX_MPC_DURATION", v859);
      CFRelease(v860);
      v861 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[99]);
      if (!v861)
      {
        goto LABEL_885;
      }

      v862 = v861;
      CFDictionarySetValue(v5, @"CACHED_SC_RX_MPC_DURATION", v861);
      CFRelease(v862);
      v863 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[92] + 12);
      if (!v863)
      {
        goto LABEL_885;
      }

      v864 = v863;
      CFDictionarySetValue(v5, @"INSTANT_SC_BLANKED_SCAN_CNT", v863);
      CFRelease(v864);
      v865 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[99] + 4);
      if (!v865)
      {
        goto LABEL_885;
      }

      v866 = v865;
      CFDictionarySetValue(v5, @"CACHED_SC_BLANKED_SCAN_CNT", v865);
      CFRelease(v866);
      v867 = CFNumberCreate(v242, kCFNumberSInt64Type, &__src[93] + 8);
      if (!v867)
      {
        goto LABEL_885;
      }

      v868 = v867;
      CFDictionarySetValue(v5, @"INSTANT_SC_EXT_PHY_POWER_GATE_DURATION", v867);
      CFRelease(v868);
      v869 = CFNumberCreate(v242, kCFNumberSInt64Type, &__src[100]);
      if (!v869)
      {
        goto LABEL_885;
      }

      v870 = v869;
      CFDictionarySetValue(v5, @"CACHED_SC_EXT_PHY_POWER_GATE_DURATION", v869);
      CFRelease(v870);
      v871 = CFNumberCreate(v242, kCFNumberSInt64Type, &__src[94]);
      if (!v871)
      {
        goto LABEL_885;
      }

      v872 = v871;
      CFDictionarySetValue(v5, @"INSTANT_SC_EXT_PHY_OFFLINE_DURATION", v871);
      CFRelease(v872);
      v873 = CFNumberCreate(v242, kCFNumberSInt64Type, &__src[100] + 8);
      if (!v873)
      {
        goto LABEL_885;
      }

      v874 = v873;
      CFDictionarySetValue(v5, @"CACHED_SC_EXT_PHY_OFFLINE_DURATION", v873);
      CFRelease(v874);
      v875 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[101]);
      if (!v875)
      {
        goto LABEL_885;
      }

      v876 = v875;
      CFDictionarySetValue(v5, @"INACTVITY_DURATION", v875);
      CFRelease(v876);
      v877 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[101] + 4);
      if (!v877)
      {
        goto LABEL_885;
      }

      v878 = v877;
      CFDictionarySetValue(v5, @"INACTVITY_MPC_WAKE_DURATION", v877);
      CFRelease(v878);
      v879 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[101] + 8);
      if (!v879)
      {
        goto LABEL_885;
      }

      v880 = v879;
      CFDictionarySetValue(v5, @"INACTVITY_MPC_BEACONS_SCHEDULED", v879);
      CFRelease(v880);
      v881 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[101] + 12);
      if (!v881)
      {
        goto LABEL_885;
      }

      v882 = v881;
      CFDictionarySetValue(v5, @"INACTVITY_MPC_EARLY_BEACONS_TERMINATED", v881);
      CFRelease(v882);
      v883 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[102]);
      if (!v883)
      {
        goto LABEL_885;
      }

      v884 = v883;
      CFDictionarySetValue(v5, @"INACTVITY_MPC_BEACONS_RECEIVED", v883);
      CFRelease(v884);
      v885 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[102] + 4);
      if (!v885)
      {
        goto LABEL_885;
      }

      v886 = v885;
      CFDictionarySetValue(v5, @"INACTVITY_MPC_BEACONS_MISSED", v885);
      CFRelease(v886);
      v887 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[102] + 8);
      if (!v887)
      {
        goto LABEL_885;
      }

      v888 = v887;
      CFDictionarySetValue(v5, @"INACTVITY_LPSC_WAKE_DURATION", v887);
      CFRelease(v888);
      v889 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[102] + 12);
      if (!v889)
      {
        goto LABEL_885;
      }

      v890 = v889;
      CFDictionarySetValue(v5, @"INACTVITY_LPSC_BEACONS_SCHEDULED", v889);
      CFRelease(v890);
      v891 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[103]);
      if (!v891)
      {
        goto LABEL_885;
      }

      v892 = v891;
      CFDictionarySetValue(v5, @"INACTVITY_LPSC_EARLY_BEACONS_TERMINATED", v891);
      CFRelease(v892);
      v893 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[103] + 4);
      if (!v893)
      {
        goto LABEL_885;
      }

      v894 = v893;
      CFDictionarySetValue(v5, @"INACTVITY_LPSC_BEACONS_RECEIVED", v893);
      CFRelease(v894);
      v895 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[103] + 8);
      if (!v895)
      {
        goto LABEL_885;
      }

      v896 = v895;
      CFDictionarySetValue(v5, @"INACTVITY_LPSC_BEACONS_MISSED", v895);
      CFRelease(v896);
      v897 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[30] + 4);
      if (!v897)
      {
        goto LABEL_885;
      }

      v898 = v897;
      CFDictionarySetValue(v5, @"INSTANT_RX_UPR_PROCESSED", v897);
      CFRelease(v898);
      v899 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[74] + 4);
      if (!v899)
      {
        goto LABEL_885;
      }

      v900 = v899;
      CFDictionarySetValue(v5, @"CACHED_RX_UPR_PROCESSED", v899);
      CFRelease(v900);
      v901 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[30] + 8);
      if (!v901)
      {
        goto LABEL_885;
      }

      v902 = v901;
      CFDictionarySetValue(v5, @"INSTANT_RX_UPR_IGNORED", v901);
      CFRelease(v902);
      v903 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[74] + 8);
      if (!v903)
      {
        goto LABEL_885;
      }

      v904 = v903;
      CFDictionarySetValue(v5, @"CACHED_RX_UPR_IGNORED", v903);
      CFRelease(v904);
      v905 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[30] + 12);
      if (!v905)
      {
        goto LABEL_885;
      }

      v906 = v905;
      CFDictionarySetValue(v5, @"INSTANT_RX_FILS_PROCESSED", v905);
      CFRelease(v906);
      v907 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[74] + 12);
      if (!v907)
      {
        goto LABEL_885;
      }

      v908 = v907;
      CFDictionarySetValue(v5, @"CACHED_RX_FILS_PROCESSED", v907);
      CFRelease(v908);
      v909 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[31]);
      if (!v909)
      {
        goto LABEL_885;
      }

      v910 = v909;
      CFDictionarySetValue(v5, @"INSTANT_RX_FILS_IGNORED", v909);
      CFRelease(v910);
      v911 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[75]);
      if (!v911)
      {
        goto LABEL_885;
      }

      v912 = v911;
      CFDictionarySetValue(v5, @"CACHED_RX_FILS_IGNORED", v911);
      CFRelease(v912);
      v913 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[31] + 4);
      if (!v913)
      {
        goto LABEL_885;
      }

      v914 = v913;
      CFDictionarySetValue(v5, @"INSTANT_REFERRED_6G_SCANS", v913);
      CFRelease(v914);
      v915 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[75] + 4);
      if (!v915)
      {
        goto LABEL_885;
      }

      v916 = v915;
      CFDictionarySetValue(v5, @"CACHED_REFERRED_6G_SCANS", v915);
      CFRelease(v916);
      v917 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[103] + 12);
      if (!v917)
      {
        goto LABEL_885;
      }

      v918 = v917;
      CFDictionarySetValue(v5, @"INSTANT_TOTAL_SCAN_DUR_2G", v917);
      CFRelease(v918);
      v919 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[104]);
      if (!v919)
      {
        goto LABEL_885;
      }

      v920 = v919;
      CFDictionarySetValue(v5, @"INSTANT_TOTAL_SCAN_DUR_5G", v919);
      CFRelease(v920);
      v921 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[104] + 4);
      if (!v921)
      {
        goto LABEL_885;
      }

      v922 = v921;
      CFDictionarySetValue(v5, @"INSTANT_TOTAL_SCAN_DUR_6G", v921);
      CFRelease(v922);
      v923 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[104] + 8);
      if (!v923)
      {
        goto LABEL_885;
      }

      v924 = v923;
      CFDictionarySetValue(v5, @"INSTANT_TOTAL_CHANNEL_CNT_2G", v923);
      CFRelease(v924);
      v925 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[104] + 12);
      if (!v925)
      {
        goto LABEL_885;
      }

      v926 = v925;
      CFDictionarySetValue(v5, @"INSTANT_TOTAL_CHANNEL_CNT_5G", v925);
      CFRelease(v926);
      v927 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[105]);
      if (!v927)
      {
        goto LABEL_885;
      }

      v928 = v927;
      CFDictionarySetValue(v5, @"INSTANT_TOTAL_CHANNEL_CNT_6G", v927);
      CFRelease(v928);
      v929 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[105] + 4);
      if (!v929)
      {
        goto LABEL_885;
      }

      v930 = v929;
      CFDictionarySetValue(v5, @"INSTANT_TOTAL_CHANNEL_CNT_SC_2G", v929);
      CFRelease(v930);
      v931 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[105] + 8);
      if (!v931)
      {
        goto LABEL_885;
      }

      v932 = v931;
      CFDictionarySetValue(v5, @"INSTANT_TOTAL_CHANNEL_CNT_SC_5G", v931);
      CFRelease(v932);
      v933 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[105] + 12);
      if (!v933)
      {
        goto LABEL_885;
      }

      v934 = v933;
      CFDictionarySetValue(v5, @"INSTANT_TOTAL_CHANNEL_CNT_SC_6G", v933);
      CFRelease(v934);
      v935 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[106]);
      if (!v935)
      {
        goto LABEL_885;
      }

      v936 = v935;
      CFDictionarySetValue(v5, @"INSTANT_TOTAL_ACTIVE_CHANNEL_CNT", v935);
      CFRelease(v936);
      v937 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[106] + 4);
      if (!v937)
      {
        goto LABEL_885;
      }

      v938 = v937;
      CFDictionarySetValue(v5, @"INSTANT_TOTAL_PASSIVE_CHANNEL_CNT", v937);
      CFRelease(v938);
      v939 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[106] + 8);
      if (!v939)
      {
        goto LABEL_885;
      }

      v940 = v939;
      CFDictionarySetValue(v5, @"INSTANT_SCAN_START_TIME", v939);
      CFRelease(v940);
      v941 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[106] + 12);
      if (!v941)
      {
        goto LABEL_885;
      }

      v942 = v941;
      CFDictionarySetValue(v5, @"INSTANT_SCAN_END_TIME", v941);
      CFRelease(v942);
      v943 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[107]);
      if (!v943)
      {
        goto LABEL_885;
      }

      v944 = v943;
      CFDictionarySetValue(v5, @"INSTANT_SCAN_DUR_2G", v943);
      CFRelease(v944);
      v945 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[107] + 4);
      if (!v945)
      {
        goto LABEL_885;
      }

      v946 = v945;
      CFDictionarySetValue(v5, @"INSTANT_SCAN_DUR_5G", v945);
      CFRelease(v946);
      v947 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[107] + 8);
      if (!v947)
      {
        goto LABEL_885;
      }

      v948 = v947;
      CFDictionarySetValue(v5, @"INSTANT_SCAN_DUR_6G", v947);
      CFRelease(v948);
      v949 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[107] + 12);
      if (!v949)
      {
        goto LABEL_885;
      }

      v950 = v949;
      CFDictionarySetValue(v5, @"INSTANT_TOTAL_CHAN_NUM", v949);
      CFRelease(v950);
      v951 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[108]);
      if (!v951)
      {
        goto LABEL_885;
      }

      v952 = v951;
      CFDictionarySetValue(v5, @"INSTANT_CHANNEL_CNT_2G", v951);
      CFRelease(v952);
      v953 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[108] + 4);
      if (!v953)
      {
        goto LABEL_885;
      }

      v954 = v953;
      CFDictionarySetValue(v5, @"INSTANT_CHANNEL_CNT_5G", v953);
      CFRelease(v954);
      v955 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[108] + 8);
      if (!v955)
      {
        goto LABEL_885;
      }

      v956 = v955;
      CFDictionarySetValue(v5, @"INSTANT_CHANNEL_CNT_6G", v955);
      CFRelease(v956);
      v957 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[108] + 12);
      if (!v957)
      {
        goto LABEL_885;
      }

      v958 = v957;
      CFDictionarySetValue(v5, @"INSTANT_CHANNEL_CNT_SC_2G", v957);
      CFRelease(v958);
      v959 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[109]);
      if (!v959)
      {
        goto LABEL_885;
      }

      v960 = v959;
      CFDictionarySetValue(v5, @"INSTANT_CHANNEL_CNT_SC_5G", v959);
      CFRelease(v960);
      v961 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[109] + 4);
      if (!v961)
      {
        goto LABEL_885;
      }

      v962 = v961;
      CFDictionarySetValue(v5, @"INSTANT_CHANNEL_CNT_SC_6G", v961);
      CFRelease(v962);
      v963 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[109] + 8);
      if (!v963)
      {
        goto LABEL_885;
      }

      v964 = v963;
      CFDictionarySetValue(v5, @"INSTANT_ACTIVE_CHANNEL_CNT", v963);
      CFRelease(v964);
      v965 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[109] + 12);
      if (!v965)
      {
        goto LABEL_885;
      }

      v966 = v965;
      CFDictionarySetValue(v5, @"INSTANT_ACTIVE_PASSIVE_CNT", v965);
      CFRelease(v966);
      v967 = CFNumberCreate(v242, kCFNumberSInt8Type, &__src[110]);
      if (!v967)
      {
        goto LABEL_885;
      }

      v968 = v967;
      CFDictionarySetValue(v5, @"INSTANT_SCAN_CLIENT", v967);
      CFRelease(v968);
      v969 = CFNumberCreate(v242, kCFNumberSInt8Type, &__src[110] + 1);
      if (!v969)
      {
        goto LABEL_885;
      }

      v970 = v969;
      CFDictionarySetValue(v5, @"INSTANT_SCAN_MODE", v969);
      CFRelease(v970);
      v971 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[110] + 4);
      if (!v971)
      {
        goto LABEL_885;
      }

      v972 = v971;
      CFDictionarySetValue(v5, @"SCANFORWARD_FORWARDED_BSSS_IN_WAKE", v971);
      CFRelease(v972);
      v973 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[110] + 8);
      if (!v973)
      {
        goto LABEL_885;
      }

      v974 = v973;
      CFDictionarySetValue(v5, @"SCANFORWARD_FORWARDED_BSSS_IN_SLEEP", v973);
      CFRelease(v974);
      v975 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[111] + 12);
      if (!v975)
      {
        goto LABEL_885;
      }

      v976 = v975;
      CFDictionarySetValue(v5, @"SCANFORWARD_CURRENT_BSSS_IN_WAKE", v975);
      CFRelease(v976);
      v977 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[112]);
      if (!v977)
      {
        goto LABEL_885;
      }

      v978 = v977;
      CFDictionarySetValue(v5, @"SCANFORWARD_CURRENT_BSSS_IN_SLEEP", v977);
      CFRelease(v978);
      v979 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[112] + 12);
      if (!v979)
      {
        goto LABEL_885;
      }

      v980 = v979;
      CFDictionarySetValue(v5, @"SCANFORWARD_TOTAL_SPMI_MSGS_IN_WAKE", v979);
      CFRelease(v980);
      v981 = CFNumberCreate(v242, kCFNumberSInt32Type, &__src[113]);
      if (!v981)
      {
        goto LABEL_885;
      }

      v25 = v981;
      v26 = @"SCANFORWARD_TOTAL_SPMI_MSGS_IN_SLEEP";
      goto LABEL_795;
    default:
      if (v4 != 207)
      {
        goto LABEL_10;
      }

      if (!v8)
      {
        goto LABEL_898;
      }

      bzero(__src, 0x2720uLL);
      v1099 = __src;
      DWORD2(v1098) = 10016;
      if (Apple80211IOCTLGetWrapper())
      {
        goto LABEL_804;
      }

      if (!WORD6(__src[0]))
      {
        goto LABEL_798;
      }

      v84 = v4;
      v85 = 0;
      v86 = *MEMORY[0x277CBECE8];
      v87 = *MEMORY[0x277CBED28];
      v88 = *MEMORY[0x277CBED10];
      while (1)
      {
        LODWORD(valuePtr[0]) = -1431655766;
        v89 = CFDictionaryCreateMutable(v86, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (!v89)
        {
          goto LABEL_910;
        }

        v90 = v89;
        LODWORD(valuePtr[0]) = *(&__src[50] + v85 + 14);
        v91 = CFNumberCreate(v86, kCFNumberSInt32Type, valuePtr);
        if (!v91)
        {
          break;
        }

        v92 = v91;
        CFDictionarySetValue(v90, @"CHANNELINFO_CH_NUM", v91);
        CFRelease(v92);
        if (*(&__src[426] + v85))
        {
          v1092 = 1;
        }

        else
        {
          v1092 = LODWORD(valuePtr[0]) > 0xE ? 3 : 0;
        }

        v93 = CFNumberCreate(v86, kCFNumberSInt32Type, &v1092);
        if (!v93)
        {
          break;
        }

        v94 = v93;
        CFDictionarySetValue(v90, @"CHANNELINFO_BAND_NUM", v93);
        CFRelease(v94);
        v95 = CFNumberCreate(v86, kCFNumberSInt32Type, &__src[301] + 4 * v85);
        if (!v95)
        {
          break;
        }

        v96 = v95;
        CFDictionarySetValue(v90, @"CHANNELINFO_CH_BITMAP", v95);
        CFRelease(v96);
        if (*(&__src[75] + v85 + 14))
        {
          v97 = v87;
        }

        else
        {
          v97 = v88;
        }

        CFDictionarySetValue(v90, @"CHANNELINFO_INDOOR_RESTRICTED", v97);
        if (*(&__src[100] + v85 + 14))
        {
          v98 = v87;
        }

        else
        {
          v98 = v88;
        }

        CFDictionarySetValue(v90, @"CHANNELINFO_DFS", v98);
        if (*(&__src[125] + v85 + 14))
        {
          v99 = v87;
        }

        else
        {
          v99 = v88;
        }

        CFDictionarySetValue(v90, @"CHANNELINFO_PASSIVE", v99);
        if (*(&__src[150] + v85 + 14))
        {
          v100 = v87;
        }

        else
        {
          v100 = v88;
        }

        CFDictionarySetValue(v90, @"CHANNELINFO_40MHZ", v100);
        if (*(&__src[175] + v85 + 14))
        {
          v101 = v87;
        }

        else
        {
          v101 = v88;
        }

        CFDictionarySetValue(v90, @"CHANNELINFO_80MHZ", v101);
        CFArrayAppendValue(v5, v90);
        CFRelease(v90);
        if (++v85 >= WORD6(__src[0]))
        {
LABEL_895:
          v6 = 0;
LABEL_896:
          LODWORD(v4) = v84;
          goto LABEL_897;
        }
      }

      v1051 = v90;
      goto LABEL_909;
  }

  do
  {
    if ((*(v983 + 4) >> v1069))
    {
      v1070 = CFNumberCreate(v1066, kCFNumberSInt32Type, __src);
      if (!v1070)
      {
LABEL_912:
        CFRelease(v1068);
        goto LABEL_913;
      }

      v1071 = v1070;
      CFArrayAppendValue(v1068, v1070);
      CFRelease(v1071);
      v1069 = __src[0];
    }

    LODWORD(__src[0]) = ++v1069;
  }

  while (v1069 < 6);
  CFDictionaryAddValue(v5, @"WOW_WAKE_CONDITIONS", v1068);
  CFRelease(v1068);
  if (!v983[2])
  {
    goto LABEL_870;
  }

  v1072 = CFNumberCreate(v1066, kCFNumberSInt32Type, v983 + 2);
  if (!v1072)
  {
LABEL_913:
    free(v983);
    goto LABEL_910;
  }

  v1073 = v1072;
  CFDictionaryAddValue(v5, @"WOW_BEACON_LOSS_TIME", v1072);
  CFRelease(v1073);
LABEL_870:
  v1068 = CFArrayCreateMutable(v1066, 0, MEMORY[0x277CBF128]);
  v1074 = v983[3];
  if (v1074)
  {
    v1075 = 0;
    LODWORD(__src[0]) = 0;
    do
    {
      v1076 = &v984[376 * v1075];
      v1077 = *v1076;
      if (v1077 <= 0x5DC)
      {
        v1078 = CFDataCreate(v1066, v1076 + 4, v1077);
        if (!v1078)
        {
          goto LABEL_912;
        }

        v1079 = v1078;
        CFArrayAppendValue(v1068, v1078);
        CFRelease(v1079);
        v1075 = __src[0];
        v1074 = v983[3];
      }

      LODWORD(__src[0]) = ++v1075;
    }

    while (v1075 <= 9 && v1075 < v1074);
  }

  v1080 = *MEMORY[0x277CBED28];
  v1081 = *MEMORY[0x277CBED10];
  if (v983[3764])
  {
    v1082 = *MEMORY[0x277CBED28];
  }

  else
  {
    v1082 = *MEMORY[0x277CBED10];
  }

  CFDictionaryAddValue(v5, @"WOW_ENABLE_LPAS", v1082);
  if (v983[3765])
  {
    v1083 = v1080;
  }

  else
  {
    v1083 = v1081;
  }

  CFDictionaryAddValue(v5, @"WOW_ENABLE_CAPTIVE", v1083);
  CFDictionaryAddValue(v5, @"WOW_PATTERNS", v1068);
  CFRelease(v1068);
  free(v983);
LABEL_798:
  v6 = 0;
LABEL_907:
  v1087 = *MEMORY[0x277D85DE8];
  return v6;
}