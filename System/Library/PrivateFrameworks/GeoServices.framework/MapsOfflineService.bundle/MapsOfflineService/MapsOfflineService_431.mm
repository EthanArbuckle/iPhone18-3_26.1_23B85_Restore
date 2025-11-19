uint64_t *sub_17872D8(uint64_t *result, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      result = sub_13AE3BC(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = sub_12A47E0(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

const std::string::value_type *sub_17873E4(uint64_t a1, unsigned int a2, char *a3)
{

  return sub_19525AC((v4 + 16), a2, a3, v5, (v4 + 8), v3);
}

uint64_t sub_1787408(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_19587DC(a3, v3);
}

void sub_1787420()
{

  operator new();
}

void sub_17874B0()
{
  dword_278E7D0 = 10000;
  qword_278E7D8 = &unk_23573F8;
  sub_194EE44(&off_2781728, 10000, 12, 0, 0);
  dword_278E7E0 = 10000;
  qword_278E7E8 = &unk_2357410;
  sub_194EE44(&off_2781C08, 10000, 12, 0, 0);
  dword_278E7F0 = 10001;
  qword_278E7F8 = &unk_2357428;
  sub_194EE44(&off_2781C08, 10001, 12, 0, 0);
  dword_278E800 = 10002;
  qword_278E808 = &unk_2357440;
  sub_194EE44(&off_2781C08, 10002, 12, 0, 0);
  dword_278E810 = 10003;
  qword_278E818 = &unk_2357458;

  sub_194EE44(&off_2781C08, 10003, 12, 0, 0);
}

char *sub_17875E4()
{
  qword_27E50D0 = "CLICK_SEARCHNO_ACTIONTAP_CLIENT_RESULTTAP_RESULT";
  *algn_27E50D8 = 12;
  dword_27E50E0 = 1;
  qword_27E50E8 = "NO_ACTIONTAP_CLIENT_RESULTTAP_RESULT";
  unk_27E50F0 = 9;
  dword_27E50F8 = 0;
  qword_27E5100 = "TAP_CLIENT_RESULTTAP_RESULT";
  unk_27E5108 = 17;
  dword_27E5110 = 3;
  qword_27E5118 = "TAP_RESULT";
  unk_27E5120 = 10;
  dword_27E5128 = 2;
  qword_27E5130 = "ACTION_CONVERSION_FAVORABLE_ACTIONACTION_CONVERSION_GUIDE_CAROUSEL_RELEVANT_GUIDEACTION_CONVERSION_GUIDE_CAROUSEL_SCROLLACTION_CONVERSION_GUIDE_CAROUSEL_TAP_GUIDEACTION_CONVERSION_GUIDE_DWELLACTION_CONVERSION_GUIDE_FAVORABLE_ACTIONACTION_CONVERSION_GUIDE_TAP_GUIDE_ITEMACTION_CONVERSION_LOG_LOSSACTION_CONVERSION_NAVIGATIONACTION_CONVERSION_NOT_APPLICABLEACTION_CONVERSION_NO_ACTIONSACTION_CONVERSION_NO_RESULTSACTION_CONVERSION_OTHER_INTERACTIONACTION_CONVERSION_PLACECARD_DWELLACTION_CONVERSION_ROUTINGACTION_CONVERSION_SCROLL_RESULTSACTION_CONVERSION_SIRI_PUNCH_OUT_NAV";
  *algn_27E5138 = 34;
  dword_27E5140 = 2;
  qword_27E5148 = "ACTION_CONVERSION_GUIDE_CAROUSEL_RELEVANT_GUIDEACTION_CONVERSION_GUIDE_CAROUSEL_SCROLLACTION_CONVERSION_GUIDE_CAROUSEL_TAP_GUIDEACTION_CONVERSION_GUIDE_DWELLACTION_CONVERSION_GUIDE_FAVORABLE_ACTIONACTION_CONVERSION_GUIDE_TAP_GUIDE_ITEMACTION_CONVERSION_LOG_LOSSACTION_CONVERSION_NAVIGATIONACTION_CONVERSION_NOT_APPLICABLEACTION_CONVERSION_NO_ACTIONSACTION_CONVERSION_NO_RESULTSACTION_CONVERSION_OTHER_INTERACTIONACTION_CONVERSION_PLACECARD_DWELLACTION_CONVERSION_ROUTINGACTION_CONVERSION_SCROLL_RESULTSACTION_CONVERSION_SIRI_PUNCH_OUT_NAV";
  unk_27E5150 = 47;
  dword_27E5158 = 11;
  qword_27E5160 = "ACTION_CONVERSION_GUIDE_CAROUSEL_SCROLLACTION_CONVERSION_GUIDE_CAROUSEL_TAP_GUIDEACTION_CONVERSION_GUIDE_DWELLACTION_CONVERSION_GUIDE_FAVORABLE_ACTIONACTION_CONVERSION_GUIDE_TAP_GUIDE_ITEMACTION_CONVERSION_LOG_LOSSACTION_CONVERSION_NAVIGATIONACTION_CONVERSION_NOT_APPLICABLEACTION_CONVERSION_NO_ACTIONSACTION_CONVERSION_NO_RESULTSACTION_CONVERSION_OTHER_INTERACTIONACTION_CONVERSION_PLACECARD_DWELLACTION_CONVERSION_ROUTINGACTION_CONVERSION_SCROLL_RESULTSACTION_CONVERSION_SIRI_PUNCH_OUT_NAV";
  unk_27E5168 = 39;
  dword_27E5170 = 13;
  qword_27E5178 = "ACTION_CONVERSION_GUIDE_CAROUSEL_TAP_GUIDEACTION_CONVERSION_GUIDE_DWELLACTION_CONVERSION_GUIDE_FAVORABLE_ACTIONACTION_CONVERSION_GUIDE_TAP_GUIDE_ITEMACTION_CONVERSION_LOG_LOSSACTION_CONVERSION_NAVIGATIONACTION_CONVERSION_NOT_APPLICABLEACTION_CONVERSION_NO_ACTIONSACTION_CONVERSION_NO_RESULTSACTION_CONVERSION_OTHER_INTERACTIONACTION_CONVERSION_PLACECARD_DWELLACTION_CONVERSION_ROUTINGACTION_CONVERSION_SCROLL_RESULTSACTION_CONVERSION_SIRI_PUNCH_OUT_NAV";
  unk_27E5180 = 42;
  dword_27E5188 = 12;
  qword_27E5190 = "ACTION_CONVERSION_GUIDE_DWELLACTION_CONVERSION_GUIDE_FAVORABLE_ACTIONACTION_CONVERSION_GUIDE_TAP_GUIDE_ITEMACTION_CONVERSION_LOG_LOSSACTION_CONVERSION_NAVIGATIONACTION_CONVERSION_NOT_APPLICABLEACTION_CONVERSION_NO_ACTIONSACTION_CONVERSION_NO_RESULTSACTION_CONVERSION_OTHER_INTERACTIONACTION_CONVERSION_PLACECARD_DWELLACTION_CONVERSION_ROUTINGACTION_CONVERSION_SCROLL_RESULTSACTION_CONVERSION_SIRI_PUNCH_OUT_NAV";
  unk_27E5198 = 29;
  dword_27E51A0 = 16;
  qword_27E51A8 = "ACTION_CONVERSION_GUIDE_FAVORABLE_ACTIONACTION_CONVERSION_GUIDE_TAP_GUIDE_ITEMACTION_CONVERSION_LOG_LOSSACTION_CONVERSION_NAVIGATIONACTION_CONVERSION_NOT_APPLICABLEACTION_CONVERSION_NO_ACTIONSACTION_CONVERSION_NO_RESULTSACTION_CONVERSION_OTHER_INTERACTIONACTION_CONVERSION_PLACECARD_DWELLACTION_CONVERSION_ROUTINGACTION_CONVERSION_SCROLL_RESULTSACTION_CONVERSION_SIRI_PUNCH_OUT_NAV";
  unk_27E51B0 = 40;
  dword_27E51B8 = 14;
  qword_27E51C0 = "ACTION_CONVERSION_GUIDE_TAP_GUIDE_ITEMACTION_CONVERSION_LOG_LOSSACTION_CONVERSION_NAVIGATIONACTION_CONVERSION_NOT_APPLICABLEACTION_CONVERSION_NO_ACTIONSACTION_CONVERSION_NO_RESULTSACTION_CONVERSION_OTHER_INTERACTIONACTION_CONVERSION_PLACECARD_DWELLACTION_CONVERSION_ROUTINGACTION_CONVERSION_SCROLL_RESULTSACTION_CONVERSION_SIRI_PUNCH_OUT_NAV";
  unk_27E51C8 = 38;
  dword_27E51D0 = 15;
  qword_27E51D8 = "ACTION_CONVERSION_LOG_LOSSACTION_CONVERSION_NAVIGATIONACTION_CONVERSION_NOT_APPLICABLEACTION_CONVERSION_NO_ACTIONSACTION_CONVERSION_NO_RESULTSACTION_CONVERSION_OTHER_INTERACTIONACTION_CONVERSION_PLACECARD_DWELLACTION_CONVERSION_ROUTINGACTION_CONVERSION_SCROLL_RESULTSACTION_CONVERSION_SIRI_PUNCH_OUT_NAV";
  unk_27E51E0 = 26;
  dword_27E51E8 = 9;
  qword_27E51F0 = "ACTION_CONVERSION_NAVIGATIONACTION_CONVERSION_NOT_APPLICABLEACTION_CONVERSION_NO_ACTIONSACTION_CONVERSION_NO_RESULTSACTION_CONVERSION_OTHER_INTERACTIONACTION_CONVERSION_PLACECARD_DWELLACTION_CONVERSION_ROUTINGACTION_CONVERSION_SCROLL_RESULTSACTION_CONVERSION_SIRI_PUNCH_OUT_NAV";
  unk_27E51F8 = 28;
  dword_27E5200 = 1;
  qword_27E5208 = "ACTION_CONVERSION_NOT_APPLICABLEACTION_CONVERSION_NO_ACTIONSACTION_CONVERSION_NO_RESULTSACTION_CONVERSION_OTHER_INTERACTIONACTION_CONVERSION_PLACECARD_DWELLACTION_CONVERSION_ROUTINGACTION_CONVERSION_SCROLL_RESULTSACTION_CONVERSION_SIRI_PUNCH_OUT_NAV";
  unk_27E5210 = 32;
  dword_27E5218 = 0;
  qword_27E5220 = "ACTION_CONVERSION_NO_ACTIONSACTION_CONVERSION_NO_RESULTSACTION_CONVERSION_OTHER_INTERACTIONACTION_CONVERSION_PLACECARD_DWELLACTION_CONVERSION_ROUTINGACTION_CONVERSION_SCROLL_RESULTSACTION_CONVERSION_SIRI_PUNCH_OUT_NAV";
  unk_27E5228 = 28;
  dword_27E5230 = 7;
  qword_27E5238 = "ACTION_CONVERSION_NO_RESULTSACTION_CONVERSION_OTHER_INTERACTIONACTION_CONVERSION_PLACECARD_DWELLACTION_CONVERSION_ROUTINGACTION_CONVERSION_SCROLL_RESULTSACTION_CONVERSION_SIRI_PUNCH_OUT_NAV";
  unk_27E5240 = 28;
  dword_27E5248 = 8;
  qword_27E5250 = "ACTION_CONVERSION_OTHER_INTERACTIONACTION_CONVERSION_PLACECARD_DWELLACTION_CONVERSION_ROUTINGACTION_CONVERSION_SCROLL_RESULTSACTION_CONVERSION_SIRI_PUNCH_OUT_NAV";
  unk_27E5258 = 35;
  dword_27E5260 = 6;
  qword_27E5268 = "ACTION_CONVERSION_PLACECARD_DWELLACTION_CONVERSION_ROUTINGACTION_CONVERSION_SCROLL_RESULTSACTION_CONVERSION_SIRI_PUNCH_OUT_NAV";
  unk_27E5270 = 33;
  dword_27E5278 = 4;
  qword_27E5280 = "ACTION_CONVERSION_ROUTINGACTION_CONVERSION_SCROLL_RESULTSACTION_CONVERSION_SIRI_PUNCH_OUT_NAV";
  unk_27E5288 = 25;
  dword_27E5290 = 3;
  qword_27E5298 = "ACTION_CONVERSION_SCROLL_RESULTSACTION_CONVERSION_SIRI_PUNCH_OUT_NAV";
  unk_27E52A0 = 32;
  dword_27E52A8 = 5;
  qword_27E52B0 = "ACTION_CONVERSION_SIRI_PUNCH_OUT_NAV";
  unk_27E52B8 = 36;
  dword_27E52C0 = 10;
  qword_27E52C8 = "INTERACTED_WITH_RESULTSINTERESTNO_ACTIONNO_RESULTSOTHER_MAP_INTERACTIONREFINEMENTRESULT_INTERACTIONSTRONG_INTERESTUNKNOWNWIN";
  unk_27E52D0 = 23;
  dword_27E52D8 = 3;
  qword_27E52E0 = "INTERESTNO_ACTIONNO_RESULTSOTHER_MAP_INTERACTIONREFINEMENTRESULT_INTERACTIONSTRONG_INTERESTUNKNOWNWIN";
  unk_27E52E8 = 8;
  dword_27E52F0 = 7;
  qword_27E52F8 = "NO_ACTIONNO_RESULTSOTHER_MAP_INTERACTIONREFINEMENTRESULT_INTERACTIONSTRONG_INTERESTUNKNOWNWIN";
  unk_27E5300 = 9;
  dword_27E5308 = 4;
  qword_27E5310 = "NO_RESULTSOTHER_MAP_INTERACTIONREFINEMENTRESULT_INTERACTIONSTRONG_INTERESTUNKNOWNWIN";
  unk_27E5318 = 10;
  dword_27E5320 = 5;
  qword_27E5328 = "OTHER_MAP_INTERACTIONREFINEMENTRESULT_INTERACTIONSTRONG_INTERESTUNKNOWNWIN";
  unk_27E5330 = 21;
  dword_27E5338 = 9;
  qword_27E5340 = "REFINEMENTRESULT_INTERACTIONSTRONG_INTERESTUNKNOWNWIN";
  unk_27E5348 = 10;
  dword_27E5350 = 10;
  qword_27E5358 = "RESULT_INTERACTIONSTRONG_INTERESTUNKNOWNWIN";
  unk_27E5360 = 18;
  dword_27E5368 = 8;
  qword_27E5370 = "STRONG_INTERESTUNKNOWNWIN";
  unk_27E5378 = 15;
  dword_27E5380 = 6;
  qword_27E5388 = "UNKNOWNWIN";
  unk_27E5390 = 7;
  dword_27E5398 = 1;
  qword_27E53A0 = "WIN";
  unk_27E53A8 = 3;
  dword_27E53B0 = 2;
  qword_27E53B8 = "AC_CATEGORY_TAPBROWSE_CATEGORY_TAPBROWSE_ZKW_CATEGORY_TAPCATEGORY_FILTERED_ACCATEGORY_FILTERED_SEARCHCLIENT_ACCLIENT_NO_TYPINGNORMAL_ACNORMAL_SEARCHNORMAL_SEARCH_NO_TYPINGPOPULAR_NEARBYROUTING_QUERY_SOURCESEARCH_ALONG_ROUTE_IN_NAVSERVER_ACUNDETERMINISTICUNKNOWN_MAPS_SOURCEUNKNOWN_QUERY_SOURCEURLZKW_CATEGORY_TAP";
  unk_27E53C0 = 15;
  dword_27E53C8 = 1;
  qword_27E53D0 = "BROWSE_CATEGORY_TAPBROWSE_ZKW_CATEGORY_TAPCATEGORY_FILTERED_ACCATEGORY_FILTERED_SEARCHCLIENT_ACCLIENT_NO_TYPINGNORMAL_ACNORMAL_SEARCHNORMAL_SEARCH_NO_TYPINGPOPULAR_NEARBYROUTING_QUERY_SOURCESEARCH_ALONG_ROUTE_IN_NAVSERVER_ACUNDETERMINISTICUNKNOWN_MAPS_SOURCEUNKNOWN_QUERY_SOURCEURLZKW_CATEGORY_TAP";
  unk_27E53D8 = 19;
  dword_27E53E0 = 9;
  qword_27E53E8 = "BROWSE_ZKW_CATEGORY_TAPCATEGORY_FILTERED_ACCATEGORY_FILTERED_SEARCHCLIENT_ACCLIENT_NO_TYPINGNORMAL_ACNORMAL_SEARCHNORMAL_SEARCH_NO_TYPINGPOPULAR_NEARBYROUTING_QUERY_SOURCESEARCH_ALONG_ROUTE_IN_NAVSERVER_ACUNDETERMINISTICUNKNOWN_MAPS_SOURCEUNKNOWN_QUERY_SOURCEURLZKW_CATEGORY_TAP";
  unk_27E53F0 = 23;
  dword_27E53F8 = 2;
  qword_27E5400 = "CATEGORY_FILTERED_ACCATEGORY_FILTERED_SEARCHCLIENT_ACCLIENT_NO_TYPINGNORMAL_ACNORMAL_SEARCHNORMAL_SEARCH_NO_TYPINGPOPULAR_NEARBYROUTING_QUERY_SOURCESEARCH_ALONG_ROUTE_IN_NAVSERVER_ACUNDETERMINISTICUNKNOWN_MAPS_SOURCEUNKNOWN_QUERY_SOURCEURLZKW_CATEGORY_TAP";
  unk_27E5408 = 20;
  dword_27E5410 = 14;
  qword_27E5418 = "CATEGORY_FILTERED_SEARCHCLIENT_ACCLIENT_NO_TYPINGNORMAL_ACNORMAL_SEARCHNORMAL_SEARCH_NO_TYPINGPOPULAR_NEARBYROUTING_QUERY_SOURCESEARCH_ALONG_ROUTE_IN_NAVSERVER_ACUNDETERMINISTICUNKNOWN_MAPS_SOURCEUNKNOWN_QUERY_SOURCEURLZKW_CATEGORY_TAP";
  unk_27E5420 = 24;
  dword_27E5428 = 3;
  qword_27E5430 = "CLIENT_ACCLIENT_NO_TYPINGNORMAL_ACNORMAL_SEARCHNORMAL_SEARCH_NO_TYPINGPOPULAR_NEARBYROUTING_QUERY_SOURCESEARCH_ALONG_ROUTE_IN_NAVSERVER_ACUNDETERMINISTICUNKNOWN_MAPS_SOURCEUNKNOWN_QUERY_SOURCEURLZKW_CATEGORY_TAP";
  unk_27E5438 = 9;
  dword_27E5440 = 11;
  qword_27E5448 = "CLIENT_NO_TYPINGNORMAL_ACNORMAL_SEARCHNORMAL_SEARCH_NO_TYPINGPOPULAR_NEARBYROUTING_QUERY_SOURCESEARCH_ALONG_ROUTE_IN_NAVSERVER_ACUNDETERMINISTICUNKNOWN_MAPS_SOURCEUNKNOWN_QUERY_SOURCEURLZKW_CATEGORY_TAP";
  unk_27E5450 = 16;
  dword_27E5458 = 10;
  qword_27E5460 = "NORMAL_ACNORMAL_SEARCHNORMAL_SEARCH_NO_TYPINGPOPULAR_NEARBYROUTING_QUERY_SOURCESEARCH_ALONG_ROUTE_IN_NAVSERVER_ACUNDETERMINISTICUNKNOWN_MAPS_SOURCEUNKNOWN_QUERY_SOURCEURLZKW_CATEGORY_TAP";
  unk_27E5468 = 9;
  dword_27E5470 = 5;
  qword_27E5478 = "NORMAL_SEARCHNORMAL_SEARCH_NO_TYPINGPOPULAR_NEARBYROUTING_QUERY_SOURCESEARCH_ALONG_ROUTE_IN_NAVSERVER_ACUNDETERMINISTICUNKNOWN_MAPS_SOURCEUNKNOWN_QUERY_SOURCEURLZKW_CATEGORY_TAP";
  unk_27E5480 = 13;
  dword_27E5488 = 4;
  qword_27E5490 = "NORMAL_SEARCH_NO_TYPINGPOPULAR_NEARBYROUTING_QUERY_SOURCESEARCH_ALONG_ROUTE_IN_NAVSERVER_ACUNDETERMINISTICUNKNOWN_MAPS_SOURCEUNKNOWN_QUERY_SOURCEURLZKW_CATEGORY_TAP";
  unk_27E5498 = 23;
  dword_27E54A0 = 12;
  qword_27E54A8 = "POPULAR_NEARBYROUTING_QUERY_SOURCESEARCH_ALONG_ROUTE_IN_NAVSERVER_ACUNDETERMINISTICUNKNOWN_MAPS_SOURCEUNKNOWN_QUERY_SOURCEURLZKW_CATEGORY_TAP";
  unk_27E54B0 = 14;
  dword_27E54B8 = 7;
  qword_27E54C0 = "ROUTING_QUERY_SOURCESEARCH_ALONG_ROUTE_IN_NAVSERVER_ACUNDETERMINISTICUNKNOWN_MAPS_SOURCEUNKNOWN_QUERY_SOURCEURLZKW_CATEGORY_TAP";
  unk_27E54C8 = 20;
  dword_27E54D0 = 16;
  qword_27E54D8 = "SEARCH_ALONG_ROUTE_IN_NAVSERVER_ACUNDETERMINISTICUNKNOWN_MAPS_SOURCEUNKNOWN_QUERY_SOURCEURLZKW_CATEGORY_TAP";
  unk_27E54E0 = 25;
  dword_27E54E8 = 18;
  qword_27E54F0 = "SERVER_ACUNDETERMINISTICUNKNOWN_MAPS_SOURCEUNKNOWN_QUERY_SOURCEURLZKW_CATEGORY_TAP";
  unk_27E54F8 = 9;
  dword_27E5500 = 13;
  qword_27E5508 = "UNDETERMINISTICUNKNOWN_MAPS_SOURCEUNKNOWN_QUERY_SOURCEURLZKW_CATEGORY_TAP";
  unk_27E5510 = 15;
  dword_27E5518 = 6;
  qword_27E5520 = "UNKNOWN_MAPS_SOURCEUNKNOWN_QUERY_SOURCEURLZKW_CATEGORY_TAP";
  unk_27E5528 = 19;
  dword_27E5530 = 17;
  qword_27E5538 = "UNKNOWN_QUERY_SOURCEURLZKW_CATEGORY_TAP";
  unk_27E5540 = 20;
  dword_27E5548 = 0;
  qword_27E5550 = "URLZKW_CATEGORY_TAP";
  unk_27E5558 = 3;
  dword_27E5560 = 15;
  qword_27E5568 = "ZKW_CATEGORY_TAP";
  unk_27E5570 = 16;
  dword_27E5578 = 8;
  qword_27E5580 = "SEARCH_PURPOSE_ORIGINALSEARCH_PURPOSE_REDOSEARCH_PURPOSE_REFINESEARCH_PURPOSE_UNKNOWN";
  *algn_27E5588 = 23;
  dword_27E5590 = 1;
  qword_27E5598 = "SEARCH_PURPOSE_REDOSEARCH_PURPOSE_REFINESEARCH_PURPOSE_UNKNOWN";
  unk_27E55A0 = 19;
  dword_27E55A8 = 3;
  qword_27E55B0 = "SEARCH_PURPOSE_REFINESEARCH_PURPOSE_UNKNOWN";
  unk_27E55B8 = 21;
  dword_27E55C0 = 2;
  qword_27E55C8 = "SEARCH_PURPOSE_UNKNOWN";
  unk_27E55D0 = 22;
  dword_27E55D8 = 0;
  qword_27E55E0 = "IOSMAC_OSOTHER_OSTV_OSUNKNOWN_OSWATCH_OS";
  *algn_27E55E8 = 3;
  dword_27E55F0 = 1;
  qword_27E55F8 = "MAC_OSOTHER_OSTV_OSUNKNOWN_OSWATCH_OS";
  unk_27E5600 = 6;
  dword_27E5608 = 2;
  qword_27E5610 = "OTHER_OSTV_OSUNKNOWN_OSWATCH_OS";
  unk_27E5618 = 8;
  dword_27E5620 = 10;
  qword_27E5628 = "TV_OSUNKNOWN_OSWATCH_OS";
  unk_27E5630 = 5;
  dword_27E5638 = 4;
  qword_27E5640 = "UNKNOWN_OSWATCH_OS";
  unk_27E5648 = 10;
  dword_27E5650 = 0;
  qword_27E5658 = "WATCH_OS";
  unk_27E5660 = 8;
  dword_27E5668 = 3;
  qword_27E5670 = "NAV_MODE_TYPE_FULL_GUIDANCENAV_MODE_TYPE_LIGHT_GUIDANCENAV_MODE_TYPE_UNKNOWN";
  *algn_27E5678 = 27;
  dword_27E5680 = 2;
  qword_27E5688 = "NAV_MODE_TYPE_LIGHT_GUIDANCENAV_MODE_TYPE_UNKNOWN";
  unk_27E5690 = 28;
  dword_27E5698 = 1;
  qword_27E56A0 = "NAV_MODE_TYPE_UNKNOWN";
  unk_27E56A8 = 21;
  dword_27E56B0 = 0;
  qword_27E56B8 = "FEEDBACKROUTINGSEARCHUNKNOWN_EVENT_TYPE";
  unk_27E56C0 = 8;
  dword_27E56C8 = 2;
  qword_27E56D0 = "ROUTINGSEARCHUNKNOWN_EVENT_TYPE";
  unk_27E56D8 = 7;
  dword_27E56E0 = 3;
  qword_27E56E8 = "SEARCHUNKNOWN_EVENT_TYPE";
  unk_27E56F0 = 6;
  dword_27E56F8 = 4;
  qword_27E5700 = "UNKNOWN_EVENT_TYPE";
  unk_27E5708 = 18;
  dword_27E5710 = 1;
  qword_27E5718 = "DEVICE_CONNECTIVITY_CELLULARDEVICE_CONNECTIVITY_UNKNOWNDEVICE_CONNECTIVITY_WIFI";
  unk_27E5720 = 28;
  dword_27E5728 = 1;
  qword_27E5730 = "DEVICE_CONNECTIVITY_UNKNOWNDEVICE_CONNECTIVITY_WIFI";
  unk_27E5738 = 27;
  dword_27E5740 = 0;
  qword_27E5748 = "DEVICE_CONNECTIVITY_WIFI";
  unk_27E5750 = 24;
  dword_27E5758 = 2;
  qword_27E5760 = "CONNECTIONSHIGH_FREQUENCYLOW_FREQUENCYMIXED_FREQUENCYSUMMARYUNKNOWN_CATEGORY";
  *algn_27E5768 = 11;
  dword_27E5770 = 5;
  qword_27E5778 = "HIGH_FREQUENCYLOW_FREQUENCYMIXED_FREQUENCYSUMMARYUNKNOWN_CATEGORY";
  unk_27E5780 = 14;
  dword_27E5788 = 3;
  qword_27E5790 = "LOW_FREQUENCYMIXED_FREQUENCYSUMMARYUNKNOWN_CATEGORY";
  unk_27E5798 = 13;
  dword_27E57A0 = 2;
  qword_27E57A8 = "MIXED_FREQUENCYSUMMARYUNKNOWN_CATEGORY";
  unk_27E57B0 = 15;
  dword_27E57B8 = 4;
  qword_27E57C0 = "SUMMARYUNKNOWN_CATEGORY";
  unk_27E57C8 = 7;
  dword_27E57D0 = 1;
  qword_27E57D8 = "UNKNOWN_CATEGORY";
  unk_27E57E0 = 16;
  dword_27E57E8 = 0;
  qword_27E57F0 = "UI_TARGET_CALLOUTUI_TARGET_DROPPED_PINUI_TARGET_POIUI_TARGET_POPULAR_NEARBY_LISTUI_TARGET_SEARCH_PINUI_TARGET_SEARCH_RESULT_LISTUI_TARGET_TRANSIT_LINEUI_TARGET_UNKNOWN";
  *algn_27E57F8 = 17;
  dword_27E5800 = 4;
  qword_27E5808 = "UI_TARGET_DROPPED_PINUI_TARGET_POIUI_TARGET_POPULAR_NEARBY_LISTUI_TARGET_SEARCH_PINUI_TARGET_SEARCH_RESULT_LISTUI_TARGET_TRANSIT_LINEUI_TARGET_UNKNOWN";
  unk_27E5810 = 21;
  dword_27E5818 = 6;
  result = "UI_TARGET_POIUI_TARGET_POPULAR_NEARBY_LISTUI_TARGET_SEARCH_PINUI_TARGET_SEARCH_RESULT_LISTUI_TARGET_TRANSIT_LINEUI_TARGET_UNKNOWN";
  qword_27E5820 = "UI_TARGET_POIUI_TARGET_POPULAR_NEARBY_LISTUI_TARGET_SEARCH_PINUI_TARGET_SEARCH_RESULT_LISTUI_TARGET_TRANSIT_LINEUI_TARGET_UNKNOWN";
  unk_27E5828 = 13;
  dword_27E5830 = 1;
  qword_27E5838 = "UI_TARGET_POPULAR_NEARBY_LISTUI_TARGET_SEARCH_PINUI_TARGET_SEARCH_RESULT_LISTUI_TARGET_TRANSIT_LINEUI_TARGET_UNKNOWN";
  unk_27E5840 = 29;
  dword_27E5848 = 3;
  qword_27E5850 = "UI_TARGET_SEARCH_PINUI_TARGET_SEARCH_RESULT_LISTUI_TARGET_TRANSIT_LINEUI_TARGET_UNKNOWN";
  unk_27E5858 = 20;
  dword_27E5860 = 5;
  qword_27E5868 = "UI_TARGET_SEARCH_RESULT_LISTUI_TARGET_TRANSIT_LINEUI_TARGET_UNKNOWN";
  unk_27E5870 = 28;
  dword_27E5878 = 2;
  qword_27E5880 = "UI_TARGET_TRANSIT_LINEUI_TARGET_UNKNOWN";
  unk_27E5888 = 22;
  dword_27E5890 = 7;
  qword_27E5898 = "UI_TARGET_UNKNOWN";
  unk_27E58A0 = 17;
  dword_27E58A8 = 0;
  return result;
}

void *sub_1787B2C(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_13B31E8(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1787BAC(void *a1)
{
  sub_1787B2C(a1);

  operator delete();
}

uint64_t sub_1787BE4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 >= 1)
  {
    v3 = (*(result + 32) + 8);
    do
    {
      v4 = *v3++;
      result = sub_16E72AC(v4);
      --v2;
    }

    while (v2);
    *(v1 + 24) = 0;
  }

  v6 = *(v1 + 8);
  v5 = (v1 + 8);
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

char *sub_1787C60(uint64_t a1, char *a2, int32x2_t *a3)
{
  v19 = a2;
  if ((sub_195ADC0(a3, &v19, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v5 = v19 + 1;
      v6 = *v19;
      if (*v19 < 0)
      {
        v7 = v6 + (*v5 << 7);
        v6 = v7 - 128;
        if (*v5 < 0)
        {
          v5 = sub_1958824(v19, v7 - 128);
          v6 = v8;
        }

        else
        {
          v5 = v19 + 2;
        }
      }

      v19 = v5;
      if (v6 == 10)
      {
        v12 = v5 - 1;
        while (1)
        {
          v13 = (v12 + 1);
          v19 = v12 + 1;
          v14 = *(a1 + 32);
          if (v14 && (v15 = *(a1 + 24), v15 < *v14))
          {
            *(a1 + 24) = v15 + 1;
            v16 = *&v14[2 * v15 + 2];
          }

          else
          {
            v17 = sub_16F5A54(*(a1 + 16));
            v16 = sub_19593CC(a1 + 16, v17);
            v13 = v19;
          }

          v12 = sub_22002C0(a3, v16, v13);
          v19 = v12;
          if (!v12)
          {
            return 0;
          }

          if (*a3 <= v12 || *v12 != 10)
          {
            goto LABEL_23;
          }
        }
      }

      if (!v6 || (v6 & 7) == 4)
      {
        break;
      }

      v10 = *(a1 + 8);
      if (v10)
      {
        v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v11 = sub_11F1920((a1 + 8));
        v5 = v19;
      }

      v19 = sub_1952690(v6, v11, v5, a3);
      if (!v19)
      {
        return 0;
      }

LABEL_23:
      if (sub_195ADC0(a3, &v19, a3[11].i32[1]))
      {
        return v19;
      }
    }

    if (v5)
    {
      a3[10].i32[0] = v6 - 1;
      return v19;
    }

    return 0;
  }

  return v19;
}

char *sub_1787DF0(uint64_t a1, char *__dst, void *a3)
{
  v6 = *(a1 + 24);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v8 = *(*(a1 + 32) + 8 * i + 8);
      *__dst = 10;
      v9 = *(v8 + 20);
      __dst[1] = v9;
      if (v9 > 0x7F)
      {
        v10 = sub_19575D0(v9, __dst + 1);
      }

      else
      {
        v10 = __dst + 2;
      }

      __dst = sub_16E74A8(v8, v10, a3);
    }
  }

  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return __dst;
  }

  v13 = v11 & 0xFFFFFFFFFFFFFFFCLL;
  v14 = *(v13 + 31);
  if (v14 < 0)
  {
    v15 = *(v13 + 8);
    v14 = *(v13 + 16);
  }

  else
  {
    v15 = (v13 + 8);
  }

  if (*a3 - __dst >= v14)
  {
    v16 = v14;
    memcpy(__dst, v15, v14);
    __dst += v16;
    return __dst;
  }

  return sub_1957130(a3, v15, v14, __dst);
}

uint64_t sub_1787F30(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = sub_16E7590(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(a1 + 8);
  if (v8)
  {
    v10 = v8 & 0xFFFFFFFFFFFFFFFCLL;
    v11 = *((v8 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v11 < 0)
    {
      v11 = *(v10 + 16);
    }

    v2 += v11;
  }

  *(a1 + 40) = v2;
  return v2;
}

uint64_t sub_1787FF0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_2709788;
  *(result + 8) = a1;
  *(result + 32) = 0;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_1788090(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_9;
    }
  }

  else if (v4)
  {
    goto LABEL_9;
  }

  v5 = (a1 + 24);
  if (*(a1 + 24) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 32) != &qword_278E990)
  {
    sub_194E89C((a1 + 32));
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_9:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1788148(uint64_t a1)
{
  sub_1788090(a1);

  operator delete();
}

uint64_t sub_1788180(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    goto LABEL_11;
  }

  if ((v1 & 1) == 0)
  {
LABEL_5:
    if ((v1 & 2) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v2 + 23) & 0x80000000) == 0)
  {
    *v2 = 0;
    *(v2 + 23) = 0;
    goto LABEL_5;
  }

  **v2 = 0;
  *(v2 + 8) = 0;
  if ((v1 & 2) != 0)
  {
LABEL_6:
    v3 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v3 + 23) < 0)
    {
      **v3 = 0;
      *(v3 + 8) = 0;
    }

    else
    {
      *v3 = 0;
      *(v3 + 23) = 0;
    }
  }

LABEL_11:
  v5 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v5)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_17881FC(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v21 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, v21, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = (*v21 + 1);
    v7 = **v21;
    if (**v21 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v21, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v21 + 2);
      }
    }

    *v21 = v6;
    if (v7 >> 3 == 2)
    {
      if (v7 == 18)
      {
        *(a1 + 16) |= 2u;
        v15 = *(a1 + 8);
        v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        if (v15)
        {
          v16 = *v16;
        }

        v17 = (a1 + 32);
        goto LABEL_26;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v18 = *(a1 + 8);
      v16 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
      if (v18)
      {
        v16 = *v16;
      }

      v17 = (a1 + 24);
LABEL_26:
      v19 = sub_194DB04(v17, v16);
      v14 = sub_1958890(v19, *v21, a3);
      goto LABEL_27;
    }

    if (v7)
    {
      v11 = (v7 & 7) == 4;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      if (v6)
      {
        a3[10].i32[0] = v7 - 1;
        return *v21;
      }

LABEL_33:
      *v21 = 0;
      return *v21;
    }

    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v13 = sub_11F1920((a1 + 8));
      v6 = *v21;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
LABEL_27:
    *v21 = v14;
    if (!v14)
    {
      goto LABEL_33;
    }
  }

  return *v21;
}

char *sub_178837C(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, __dst);
  }

  if ((v6 & 2) != 0)
  {
    v4 = sub_128AEEC(a3, 2, *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL, v4);
  }

  v7 = *(a1 + 8);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

  v9 = v7 & 0xFFFFFFFFFFFFFFFCLL;
  v10 = *(v9 + 31);
  if (v10 < 0)
  {
    v11 = *(v9 + 8);
    v10 = *(v9 + 16);
  }

  else
  {
    v11 = (v9 + 8);
  }

  if (*a3 - v4 >= v10)
  {
    v12 = v10;
    memcpy(v4, v11, v10);
    v4 += v12;
    return v4;
  }

  return sub_1957130(a3, v11, v10, v4);
}

uint64_t sub_1788464(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    v2 = 0;
    goto LABEL_12;
  }

  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v3 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  v4 = *(v3 + 23);
  v5 = *(v3 + 8);
  if ((v4 & 0x80u) == 0)
  {
    v5 = v4;
  }

  v2 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 2) != 0)
  {
LABEL_9:
    v6 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v7 = *(v6 + 23);
    v8 = *(v6 + 8);
    if ((v7 & 0x80u) == 0)
    {
      v8 = v7;
    }

    v2 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  v9 = *(a1 + 8);
  if (v9)
  {
    v11 = v9 & 0xFFFFFFFFFFFFFFFCLL;
    v12 = *((v9 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v12 < 0)
    {
      v12 = *(v11 + 16);
    }

    v2 += v12;
  }

  *(a1 + 20) = v2;
  return v2;
}

void *sub_1788550(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_2709808;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  return result;
}

uint64_t sub_17885D4(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_8;
    }
  }

  else if (v4)
  {
    goto LABEL_8;
  }

  if (a1 != &off_2781FA8 && *(a1 + 24))
  {
    sub_14B662C();
    operator delete();
  }

  if (*(a1 + 8))
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_178868C(uint64_t a1)
{
  sub_17885D4(a1);

  operator delete();
}

uint64_t sub_17886C4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = sub_144E6A8(*(result + 24));
    }

    *(v1 + 32) = 1;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

char *sub_1788730(uint64_t a1, char *a2, int32x2_t *a3)
{
  v24 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v24, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = v24 + 1;
    v7 = *v24;
    if (*v24 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v24, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v24 + 2;
      }
    }

    v24 = v6;
    if (v7 >> 3 != 2)
    {
      if (v7 >> 3 == 1 && v7 == 8)
      {
        v18 = v6 + 1;
        v19 = *v6;
        if ((v19 & 0x8000000000000000) == 0)
        {
          goto LABEL_30;
        }

        v20 = *v18;
        v21 = (v20 << 7) + v19;
        LODWORD(v19) = v21 - 128;
        if (v20 < 0)
        {
          v24 = sub_19587DC(v6, (v21 - 128));
          if (!v24)
          {
            return 0;
          }

          LODWORD(v19) = v22;
        }

        else
        {
          v18 = v6 + 2;
LABEL_30:
          v24 = v18;
        }

        if (sub_1538BA4(v19))
        {
          *(a1 + 16) |= 2u;
          *(a1 + 32) = v19;
        }

        else
        {
          sub_12E8450();
        }

        continue;
      }

LABEL_12:
      if (v7)
      {
        v11 = (v7 & 7) == 4;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
        if (v6)
        {
          a3[10].i32[0] = v7 - 1;
          return v24;
        }

        return 0;
      }

      v12 = *(a1 + 8);
      if (v12)
      {
        v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v13 = sub_11F1920((a1 + 8));
        v6 = v24;
      }

      v14 = sub_1952690(v7, v13, v6, a3);
      goto LABEL_25;
    }

    if (v7 != 18)
    {
      goto LABEL_12;
    }

    *(a1 + 16) |= 1u;
    v15 = *(a1 + 24);
    if (!v15)
    {
      v16 = *(a1 + 8);
      v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
      if (v16)
      {
        v17 = *v17;
      }

      v15 = sub_14BF484(v17);
      *(a1 + 24) = v15;
      v6 = v24;
    }

    v14 = sub_2209138(a3, v15, v6);
LABEL_25:
    v24 = v14;
    if (!v14)
    {
      return 0;
    }
  }

  return v24;
}

char *sub_178890C(uint64_t a1, char *__dst, void *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 32);
    *__dst = 8;
    __dst[1] = v7;
    if (v7 > 0x7F)
    {
      __dst[1] = v7 | 0x80;
      v8 = v7 >> 7;
      __dst[2] = v7 >> 7;
      v6 = __dst + 3;
      if (v7 >= 0x4000)
      {
        LOBYTE(v9) = __dst[2];
        do
        {
          *(v6 - 1) = v9 | 0x80;
          v9 = v8 >> 7;
          *v6++ = v8 >> 7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
      }
    }

    else
    {
      v6 = __dst + 2;
    }
  }

  else
  {
    v6 = __dst;
  }

  if (v5)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v11 = *(a1 + 24);
    *v6 = 18;
    v12 = *(v11 + 44);
    v6[1] = v12;
    if (v12 > 0x7F)
    {
      v13 = sub_19575D0(v12, v6 + 1);
    }

    else
    {
      v13 = v6 + 2;
    }

    v6 = sub_14B6D24(v11, v13, a3);
  }

  v14 = *(a1 + 8);
  if ((v14 & 1) == 0)
  {
    return v6;
  }

  v16 = v14 & 0xFFFFFFFFFFFFFFFCLL;
  v17 = *(v16 + 31);
  if (v17 < 0)
  {
    v18 = *(v16 + 8);
    v17 = *(v16 + 16);
  }

  else
  {
    v18 = (v16 + 8);
  }

  if (*a3 - v6 >= v17)
  {
    v19 = v17;
    memcpy(v6, v18, v17);
    v6 += v19;
    return v6;
  }

  return sub_1957130(a3, v18, v17, v6);
}

uint64_t sub_1788A98(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) == 0)
  {
    result = 0;
    goto LABEL_11;
  }

  if (v2)
  {
    v4 = sub_14B71B8(*(a1 + 24));
    result = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    result = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v5 = *(a1 + 32);
  if (v5 < 0)
  {
    v6 = 11;
  }

  else
  {
    v6 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v6;
LABEL_11:
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    v9 = *((v7 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v9 < 0)
    {
      v9 = *(v8 + 16);
    }

    result += v9;
  }

  *(a1 + 20) = result;
  return result;
}

void sub_1788B60(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 3) != 0)
  {
    if (v4)
    {
      *(a1 + 16) |= 1u;
      v5 = *(a1 + 24);
      if (!v5)
      {
        v6 = *(a1 + 8);
        v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
        if (v6)
        {
          v7 = *v7;
        }

        v5 = sub_14BF484(v7);
        *(a1 + 24) = v5;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &off_2773AC8;
      }

      sub_144F194(v5, v8);
    }

    if ((v4 & 2) != 0)
    {
      *(a1 + 32) = *(a2 + 32);
    }

    *(a1 + 16) |= v4;
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((a1 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1788C30(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_144F5D0(*(a1 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1788C70(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_2709888;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 1;
  return result;
}

void sub_1788E20()
{
  dword_278E820 = 1000;
  qword_278E828 = &off_278C088;
  sub_194F72C(&off_278BD20, 1000, 11, 0, 0, &off_278C088);
  dword_278E830 = 1000;
  qword_278E838 = &off_277E6F0;
  sub_194F72C(&off_278C088, 1000, 11, 1, 0, &off_277E6F0);
  dword_278E840 = 1001;
  qword_278E848 = &off_277E6F0;
  sub_194F72C(&off_278C088, 1001, 11, 1, 0, &off_277E6F0);
  dword_278E850 = 1002;
  qword_278E858 = &off_277E6F0;
  sub_194F72C(&off_278C088, 1002, 11, 1, 0, &off_277E6F0);
  dword_278E860 = 1001;
  qword_278E868 = &off_2781F50;
  sub_194F72C(&off_278C0D0, 1001, 11, 1, 0, &off_2781F50);
  dword_278E870 = 1002;
  qword_278E878 = &off_27746C0;
  sub_194F72C(&off_278C0D0, 1002, 11, 1, 0, &off_27746C0);
  dword_278E880 = 1000;
  byte_278E884 = 0;
  sub_194EE44(&off_278BC98, 1000, 8, 0, 0);
  dword_278E888 = 1001;
  qword_278E890 = &off_278C088;
  sub_194F72C(&off_278BC98, 1001, 11, 0, 0, &off_278C088);
  dword_278E898 = 200;
  qword_278E8A0 = 0;
  sub_194EE44(&off_2787AD8, 200, 4, 0, 0);
  dword_278E8A8 = 1001;
  byte_278E8AC = 0;
  sub_194EE44(&off_276FD90, 1001, 8, 0, 0);
  dword_278E8B0 = 1002;
  qword_278E8B8 = &off_277E6F0;
  sub_194F72C(&off_276FD90, 1002, 11, 1, 0, &off_277E6F0);
  dword_278E8C0 = 1003;
  qword_278E8C8 = &off_2781FA8;
  sub_194F72C(&off_276FD90, 1003, 11, 1, 0, &off_2781FA8);
  dword_278E8D0 = 1004;
  byte_278E8D4 = 0;
  sub_194EE44(&off_276FD90, 1004, 8, 0, 0);
  dword_278E8D8 = 1005;
  byte_278E8DC = 0;
  sub_194EE44(&off_276FD90, 1005, 8, 0, 0);
  dword_278E8E0 = 1006;
  byte_278E8E4 = 0;
  sub_194EE44(&off_276FD90, 1006, 8, 0, 0);
  dword_278E8E8 = 1001;
  qword_278E8F0 = &off_277E6F0;
  sub_194F72C(&off_276FEF0, 1001, 11, 1, 0, &off_277E6F0);
  dword_278E8F8 = 1002;
  qword_278E900 = &off_277E6F0;
  sub_194F72C(&off_276FEF0, 1002, 11, 1, 0, &off_277E6F0);
  dword_278E908 = 1003;
  byte_278E90C = 0;

  sub_194EE44(&off_276FEF0, 1003, 8, 0, 0);
}

const char *sub_17891B8()
{
  qword_27E58B0 = "DIRECTIVE_TYPE_HEARTBEATDIRECTIVE_TYPE_UNKNOWN";
  *algn_27E58B8 = 24;
  dword_27E58C0 = 1;
  qword_27E58C8 = "DIRECTIVE_TYPE_UNKNOWN";
  unk_27E58D0 = 22;
  dword_27E58D8 = 0;
  qword_27E58E0 = "UPDATE_TYPE_POIUPDATE_TYPE_UNKNOWNUPDATE_TYPE_VOLATILE";
  *algn_27E58E8 = 15;
  dword_27E58F0 = 1;
  qword_27E58F8 = "UPDATE_TYPE_UNKNOWNUPDATE_TYPE_VOLATILE";
  unk_27E5900 = 19;
  dword_27E5908 = 0;
  qword_27E5910 = "UPDATE_TYPE_VOLATILE";
  unk_27E5918 = 20;
  dword_27E5920 = 2;
  qword_27E5928 = "ACCESS_POINTHALLLINESTATIONSTOPUNKNOWN";
  unk_27E5930 = 12;
  dword_27E5938 = 5;
  qword_27E5940 = "HALLLINESTATIONSTOPUNKNOWN";
  unk_27E5948 = 4;
  dword_27E5950 = 2;
  qword_27E5958 = "LINESTATIONSTOPUNKNOWN";
  unk_27E5960 = 4;
  dword_27E5968 = 4;
  qword_27E5970 = "STATIONSTOPUNKNOWN";
  unk_27E5978 = 7;
  dword_27E5980 = 3;
  qword_27E5988 = "STOPUNKNOWN";
  unk_27E5990 = 4;
  dword_27E5998 = 1;
  qword_27E59A0 = "UNKNOWN";
  unk_27E59A8 = 7;
  dword_27E59B0 = 0;
  qword_27E59B8 = "ACTION_COMPONENT_TYPE_DEALACTION_COMPONENT_TYPE_PHOTOACTION_COMPONENT_TYPE_REVIEWACTION_COMPONENT_TYPE_TIPACTION_COMPONENT_TYPE_UNKNOWN";
  unk_27E59C0 = 26;
  dword_27E59C8 = 3;
  qword_27E59D0 = "ACTION_COMPONENT_TYPE_PHOTOACTION_COMPONENT_TYPE_REVIEWACTION_COMPONENT_TYPE_TIPACTION_COMPONENT_TYPE_UNKNOWN";
  unk_27E59D8 = 27;
  dword_27E59E0 = 2;
  qword_27E59E8 = "ACTION_COMPONENT_TYPE_REVIEWACTION_COMPONENT_TYPE_TIPACTION_COMPONENT_TYPE_UNKNOWN";
  unk_27E59F0 = 28;
  dword_27E59F8 = 1;
  qword_27E5A00 = "ACTION_COMPONENT_TYPE_TIPACTION_COMPONENT_TYPE_UNKNOWN";
  unk_27E5A08 = 25;
  dword_27E5A10 = 4;
  qword_27E5A18 = "ACTION_COMPONENT_TYPE_UNKNOWN";
  unk_27E5A20 = 29;
  dword_27E5A28 = 0;
  result = "RESULT_TYPE_ADDRESSRESULT_TYPE_BUSINESSRESULT_TYPE_CATEGORYRESULT_TYPE_NARESULT_TYPE_QUERYRESULT_TYPE_UNKNOWN";
  qword_27E5A30 = "RESULT_TYPE_ADDRESSRESULT_TYPE_BUSINESSRESULT_TYPE_CATEGORYRESULT_TYPE_NARESULT_TYPE_QUERYRESULT_TYPE_UNKNOWN";
  *algn_27E5A38 = 19;
  dword_27E5A40 = 2;
  qword_27E5A48 = "RESULT_TYPE_BUSINESSRESULT_TYPE_CATEGORYRESULT_TYPE_NARESULT_TYPE_QUERYRESULT_TYPE_UNKNOWN";
  unk_27E5A50 = 20;
  dword_27E5A58 = 3;
  qword_27E5A60 = "RESULT_TYPE_CATEGORYRESULT_TYPE_NARESULT_TYPE_QUERYRESULT_TYPE_UNKNOWN";
  unk_27E5A68 = 20;
  dword_27E5A70 = 4;
  qword_27E5A78 = "RESULT_TYPE_NARESULT_TYPE_QUERYRESULT_TYPE_UNKNOWN";
  unk_27E5A80 = 14;
  dword_27E5A88 = 0;
  qword_27E5A90 = "RESULT_TYPE_QUERYRESULT_TYPE_UNKNOWN";
  unk_27E5A98 = 17;
  dword_27E5AA0 = 5;
  qword_27E5AA8 = "RESULT_TYPE_UNKNOWN";
  unk_27E5AB0 = 19;
  dword_27E5AB8 = 1;
  qword_27E5AC0 = "QUERY_INTENT_TYPE_CATEGORYQUERY_INTENT_TYPE_CHAINQUERY_INTENT_TYPE_GEO_TYPEQUERY_INTENT_TYPE_NAQUERY_INTENT_TYPE_UNKNOWN";
  *algn_27E5AC8 = 26;
  dword_27E5AD0 = 2;
  qword_27E5AD8 = "QUERY_INTENT_TYPE_CHAINQUERY_INTENT_TYPE_GEO_TYPEQUERY_INTENT_TYPE_NAQUERY_INTENT_TYPE_UNKNOWN";
  unk_27E5AE0 = 23;
  dword_27E5AE8 = 3;
  qword_27E5AF0 = "QUERY_INTENT_TYPE_GEO_TYPEQUERY_INTENT_TYPE_NAQUERY_INTENT_TYPE_UNKNOWN";
  unk_27E5AF8 = 26;
  dword_27E5B00 = 4;
  qword_27E5B08 = "QUERY_INTENT_TYPE_NAQUERY_INTENT_TYPE_UNKNOWN";
  unk_27E5B10 = 20;
  dword_27E5B18 = 0;
  qword_27E5B20 = "QUERY_INTENT_TYPE_UNKNOWN";
  unk_27E5B28 = 25;
  dword_27E5B30 = 1;
  return result;
}

uint64_t sub_1789398(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v2 + 23) < 0)
    {
      **v2 = 0;
      *(v2 + 8) = 0;
    }

    else
    {
      *v2 = 0;
      *(v2 + 23) = 0;
    }
  }

  if ((v1 & 0xE) != 0)
  {
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
  }

  v4 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v4)
  {
    return sub_1957EA8(result);
  }

  return result;
}

std::string *sub_17893E8(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if ((v4 & 0xF) != 0)
  {
    if (v4)
    {
      v6 = *(a2 + 24);
      LODWORD(result->__r_.__value_.__r.__words[2]) |= 1u;
      size = result->__r_.__value_.__l.__size_;
      v8 = (size & 0xFFFFFFFFFFFFFFFCLL);
      if (size)
      {
        v8 = *v8;
      }

      result = sub_194EA1C(&result[1], (v6 & 0xFFFFFFFFFFFFFFFELL), v8);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_16;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    v3[1].__r_.__value_.__l.__size_ = *(a2 + 32);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
LABEL_7:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v4;
        goto LABEL_8;
      }

LABEL_6:
      HIDWORD(v3[1].__r_.__value_.__r.__words[2]) = *(a2 + 44);
      goto LABEL_7;
    }

LABEL_16:
    LODWORD(v3[1].__r_.__value_.__r.__words[2]) = *(a2 + 40);
    if ((v4 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_8:
  v5 = *(a2 + 8);
  if (v5)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_17894C8(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_7;
    }
  }

  else if (v4)
  {
    goto LABEL_7;
  }

  v5 = (a1 + 24);
  if (*(a1 + 24) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (v2)
  {
    sub_11F19CC(v3);
  }

LABEL_7:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1789568(uint64_t a1)
{
  sub_17894C8(a1);

  operator delete();
}

uint64_t sub_17895A0(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v26 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v26, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v26 + 1);
    v8 = **v26;
    if (**v26 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v26, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v26 + 2);
      }
    }

    *v26 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 2)
    {
      break;
    }

    if (v11 != 1)
    {
      if (v11 == 2 && v8 == 17)
      {
        v14 = *v7;
        v13 = v7 + 2;
        v5 |= 2u;
        *(a1 + 32) = v14;
LABEL_19:
        *v26 = v13;
        goto LABEL_39;
      }

      goto LABEL_31;
    }

    if (v8 != 10)
    {
      goto LABEL_31;
    }

    *(a1 + 16) |= 1u;
    v16 = *(a1 + 8);
    v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
    if (v16)
    {
      v17 = *v17;
    }

    v18 = sub_194DB04((a1 + 24), v17);
    v19 = sub_1958890(v18, *v26, a3);
LABEL_38:
    *v26 = v19;
    if (!v19)
    {
      goto LABEL_47;
    }

LABEL_39:
    if (sub_195ADC0(a3, v26, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 3)
  {
    if (v8 != 24)
    {
      goto LABEL_31;
    }

    v21 = v7 + 1;
    v20 = *v7;
    if (v20 < 0)
    {
      v22 = *v21;
      v20 = (v22 << 7) + v20 - 128;
      if (v22 < 0)
      {
        *v26 = sub_19587DC(v7, v20);
        if (!*v26)
        {
          goto LABEL_47;
        }

        goto LABEL_29;
      }

      v21 = v7 + 2;
    }

    *v26 = v21;
LABEL_29:
    if (v20 > 1)
    {
      sub_1313740();
    }

    else
    {
      *(a1 + 16) |= 4u;
      *(a1 + 40) = v20;
    }

    goto LABEL_39;
  }

  if (v11 == 4 && v8 == 37)
  {
    v15 = *v7;
    v13 = v7 + 1;
    v5 |= 8u;
    *(a1 + 44) = v15;
    goto LABEL_19;
  }

LABEL_31:
  if (v8)
  {
    v23 = (v8 & 7) == 4;
  }

  else
  {
    v23 = 1;
  }

  if (!v23)
  {
    v24 = *(a1 + 8);
    if (v24)
    {
      v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v25 = sub_11F1920((a1 + 8));
      v7 = *v26;
    }

    v19 = sub_1952690(v8, v25, v7, a3);
    goto LABEL_38;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_47:
  *v26 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v26;
}

char *sub_17897D8(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 32);
    *v4 = 17;
    *(v4 + 1) = v8;
    v4 += 9;
    if ((v6 & 4) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v4 = sub_128AEEC(a3, 1, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, __dst);
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
LABEL_4:
    v7 = v4;
    goto LABEL_16;
  }

LABEL_9:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v9 = *(a1 + 40);
  *v4 = 24;
  v4[1] = v9;
  if (v9 > 0x7F)
  {
    v4[1] = v9 | 0x80;
    v10 = v9 >> 7;
    v4[2] = v9 >> 7;
    v7 = v4 + 3;
    if (v9 >= 0x4000)
    {
      LOBYTE(v11) = v4[2];
      do
      {
        *(v7 - 1) = v11 | 0x80;
        v11 = v10 >> 7;
        *v7++ = v10 >> 7;
        v12 = v10 >> 14;
        v10 >>= 7;
      }

      while (v12);
    }
  }

  else
  {
    v7 = v4 + 2;
  }

LABEL_16:
  if ((v6 & 8) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v13 = *(a1 + 44);
    *v7 = 37;
    *(v7 + 1) = v13;
    v7 += 5;
  }

  v14 = *(a1 + 8);
  if ((v14 & 1) == 0)
  {
    return v7;
  }

  v16 = v14 & 0xFFFFFFFFFFFFFFFCLL;
  v17 = *(v16 + 31);
  if (v17 < 0)
  {
    v18 = *(v16 + 8);
    v17 = *(v16 + 16);
  }

  else
  {
    v18 = (v16 + 8);
  }

  if (*a3 - v7 >= v17)
  {
    v19 = v17;
    memcpy(v7, v18, v17);
    v7 += v19;
    return v7;
  }

  return sub_1957130(a3, v18, v17, v7);
}

uint64_t sub_178999C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0xF) != 0)
  {
    if (v1)
    {
      v4 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
      v5 = *(v4 + 23);
      v6 = *(v4 + 8);
      if ((v5 & 0x80u) == 0)
      {
        v6 = v5;
      }

      v2 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    if ((v1 & 2) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 4) != 0)
    {
      v7 = *(a1 + 40);
      v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v7 >= 0)
      {
        v9 = v8;
      }

      else
      {
        v9 = 11;
      }

      v2 += v9;
    }

    if ((v1 & 8) != 0)
    {
      v3 = v2 + 5;
    }

    else
    {
      v3 = v2;
    }
  }

  else
  {
    v3 = 0;
  }

  v10 = *(a1 + 8);
  if (v10)
  {
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v13 = *((v10 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v13 < 0)
    {
      v13 = *(v12 + 16);
    }

    v3 += v13;
  }

  *(a1 + 20) = v3;
  return v3;
}

void *sub_1789A8C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_2709950;
  result[2] = 0;
  result[4] = 0;
  result[5] = 0;
  result[3] = &qword_278E990;
  return result;
}

uint64_t sub_1789B14(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_12;
    }
  }

  else if (v4)
  {
    goto LABEL_12;
  }

  if (a1 != &off_2782000)
  {
    v5 = *(a1 + 72);
    if (v5)
    {
      sub_178B218(v5);
      operator delete();
    }

    v6 = *(a1 + 80);
    if (v6)
    {
      sub_178B218(v6);
      operator delete();
    }

    v7 = *(a1 + 88);
    if (v7)
    {
      sub_178C41C(v7);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_12:
  sub_178FB60((a1 + 48));
  sub_178FADC((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1789C1C(uint64_t a1)
{
  sub_1789B14(a1);

  operator delete();
}

uint64_t sub_1789C54(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_178B8C8(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 56);
  if (v5 >= 1)
  {
    v6 = (*(v1 + 64) + 8);
    do
    {
      v7 = *v6++;
      result = sub_178D6E4(v7);
      --v5;
    }

    while (v5);
    *(v1 + 56) = 0;
  }

  v8 = *(v1 + 16);
  if ((v8 & 7) != 0)
  {
    if (v8)
    {
      result = sub_1789D3C(*(v1 + 72));
      if ((v8 & 2) == 0)
      {
LABEL_12:
        if ((v8 & 4) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    else if ((v8 & 2) == 0)
    {
      goto LABEL_12;
    }

    result = sub_1789D3C(*(v1 + 80));
    if ((v8 & 4) != 0)
    {
LABEL_13:
      result = sub_1789DD0(*(v1 + 88));
    }
  }

LABEL_14:
  v10 = *(v1 + 8);
  v9 = v1 + 8;
  *(v9 + 88) = 0;
  *(v9 + 8) = 0;
  if (v10)
  {

    return sub_1957EA8(v9);
  }

  return result;
}

uint64_t sub_1789D3C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1789D3C(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if ((*(v1 + 16) & 3) != 0)
  {
    *(v1 + 56) = 0;
    *(v1 + 48) = 0;
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

uint64_t sub_1789DD0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2)
  {
    v3 = *(result + 24);
    v4 = *(v3 + 8);
    result = v3 + 8;
    *(result + 16) = 0;
    *(result + 8) = 0;
    if (v4)
    {
      result = sub_1957EA8(result);
    }
  }

  if ((v2 & 0xFE) != 0)
  {
    *(v1 + 64) = 0;
    *(v1 + 32) = 0u;
    *(v1 + 48) = 0u;
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

char *sub_1789E50(uint64_t a1, char *a2, int32x2_t *a3)
{
  v38 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v38, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v38 + 1;
    v8 = *v38;
    if (*v38 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v38, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v38 + 2;
      }
    }

    v38 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 3)
    {
      if (v11 == 1)
      {
        if (v8 != 10)
        {
          goto LABEL_57;
        }

        *(a1 + 16) |= 1u;
        v24 = *(a1 + 72);
        if (!v24)
        {
          v25 = *(a1 + 8);
          v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
          if (v25)
          {
            v26 = *v26;
          }

          v24 = sub_178E360(v26);
          *(a1 + 72) = v24;
          goto LABEL_53;
        }
      }

      else
      {
        if (v11 != 2)
        {
          if (v11 == 3 && v8 == 26)
          {
            v13 = v7 - 1;
            while (1)
            {
              v14 = (v13 + 1);
              v38 = v13 + 1;
              v15 = *(a1 + 40);
              if (v15 && (v16 = *(a1 + 32), v16 < *v15))
              {
                *(a1 + 32) = v16 + 1;
                v17 = *&v15[2 * v16 + 2];
              }

              else
              {
                v18 = sub_178E404(*(a1 + 24));
                v17 = sub_19593CC(a1 + 24, v18);
                v14 = v38;
              }

              v13 = sub_22420AC(a3, v17, v14);
              v38 = v13;
              if (!v13)
              {
                goto LABEL_70;
              }

              if (*a3 <= v13 || *v13 != 26)
              {
                goto LABEL_65;
              }
            }
          }

          goto LABEL_57;
        }

        if (v8 != 18)
        {
          goto LABEL_57;
        }

        *(a1 + 16) |= 2u;
        v24 = *(a1 + 80);
        if (!v24)
        {
          v33 = *(a1 + 8);
          v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
          if (v33)
          {
            v34 = *v34;
          }

          v24 = sub_178E360(v34);
          *(a1 + 80) = v24;
LABEL_53:
          v7 = v38;
        }
      }

      v23 = sub_224201C(a3, v24, v7);
      goto LABEL_64;
    }

    if (v11 == 4)
    {
      if (v8 == 34)
      {
        v27 = v7 - 1;
        while (1)
        {
          v28 = (v27 + 1);
          v38 = v27 + 1;
          v29 = *(a1 + 64);
          if (v29 && (v30 = *(a1 + 56), v30 < *v29))
          {
            *(a1 + 56) = v30 + 1;
            v31 = *&v29[2 * v30 + 2];
          }

          else
          {
            sub_178E634(*(a1 + 48));
            v31 = sub_19593CC(a1 + 48, v32);
            v28 = v38;
          }

          v27 = sub_224213C(a3, v31, v28);
          v38 = v27;
          if (!v27)
          {
            goto LABEL_70;
          }

          if (*a3 <= v27 || *v27 != 34)
          {
            goto LABEL_65;
          }
        }
      }

      goto LABEL_57;
    }

    if (v11 == 5)
    {
      break;
    }

    if (v11 != 6 || v8 != 50)
    {
      goto LABEL_57;
    }

    *(a1 + 16) |= 4u;
    v19 = *(a1 + 88);
    if (!v19)
    {
      v20 = *(a1 + 8);
      v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
      if (v20)
      {
        v21 = *v21;
      }

      sub_178E538(v21);
      v19 = v22;
      *(a1 + 88) = v22;
      v7 = v38;
    }

    v23 = sub_22421CC(a3, v19, v7);
LABEL_64:
    v38 = v23;
    if (!v23)
    {
      goto LABEL_70;
    }

LABEL_65:
    if (sub_195ADC0(a3, &v38, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 41)
  {
    v5 |= 8u;
    *(a1 + 96) = *v7;
    v38 = v7 + 8;
    goto LABEL_65;
  }

LABEL_57:
  if (v8)
  {
    v35 = (v8 & 7) == 4;
  }

  else
  {
    v35 = 1;
  }

  if (!v35)
  {
    v36 = *(a1 + 8);
    if (v36)
    {
      v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v37 = sub_11F1920((a1 + 8));
      v7 = v38;
    }

    v23 = sub_1952690(v8, v37, v7, a3);
    goto LABEL_64;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_70:
  v38 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v38;
}

char *sub_178A1C0(uint64_t a1, unint64_t __dst, _DWORD *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 72);
    *v4 = 10;
    v8 = *(v7 + 20);
    v4[1] = v8;
    if (v8 > 0x7F)
    {
      v9 = sub_19575D0(v8, v4 + 1);
    }

    else
    {
      v9 = v4 + 2;
    }

    v4 = sub_178B508(v7, v9, a3);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v10 = *(a1 + 80);
    *v4 = 18;
    v11 = *(v10 + 20);
    v4[1] = v11;
    if (v11 > 0x7F)
    {
      v12 = sub_19575D0(v11, v4 + 1);
    }

    else
    {
      v12 = v4 + 2;
    }

    v4 = sub_178B508(v10, v12, a3);
  }

  v13 = *(a1 + 32);
  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v15 = *(*(a1 + 40) + 8 * i + 8);
      *v4 = 26;
      v16 = *(v15 + 20);
      v4[1] = v16;
      if (v16 > 0x7F)
      {
        v17 = sub_19575D0(v16, v4 + 1);
      }

      else
      {
        v17 = v4 + 2;
      }

      v4 = sub_178BAF4(v15, v17, a3);
    }
  }

  v18 = *(a1 + 56);
  if (v18)
  {
    for (j = 0; j != v18; ++j)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v20 = *(*(a1 + 64) + 8 * j + 8);
      *v4 = 34;
      v21 = *(v20 + 20);
      v4[1] = v21;
      if (v21 > 0x7F)
      {
        v22 = sub_19575D0(v21, v4 + 1);
      }

      else
      {
        v22 = v4 + 2;
      }

      v4 = sub_178D9D4(v20, v22, a3);
    }
  }

  if ((v6 & 8) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v23 = *(a1 + 96);
    *v4 = 41;
    *(v4 + 1) = v23;
    v4 += 9;
  }

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v24 = *(a1 + 88);
    *v4 = 50;
    v25 = *(v24 + 20);
    v4[1] = v25;
    if (v25 > 0x7F)
    {
      v26 = sub_19575D0(v25, v4 + 1);
    }

    else
    {
      v26 = v4 + 2;
    }

    v4 = sub_178C940(v24, v26, a3);
  }

  v27 = *(a1 + 8);
  if ((v27 & 1) == 0)
  {
    return v4;
  }

  v29 = v27 & 0xFFFFFFFFFFFFFFFCLL;
  v30 = *(v29 + 31);
  if (v30 < 0)
  {
    v31 = *(v29 + 8);
    v30 = *(v29 + 16);
  }

  else
  {
    v31 = (v29 + 8);
  }

  if (*a3 - v4 >= v30)
  {
    v32 = v30;
    memcpy(v4, v31, v30);
    v4 += v32;
    return v4;
  }

  return sub_1957130(a3, v31, v30, v4);
}

uint64_t sub_178A4EC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = sub_178BE08(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(a1 + 56);
  v9 = v2 + v8;
  v10 = *(a1 + 64);
  if (v10)
  {
    v11 = (v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  if (v8)
  {
    v12 = 8 * v8;
    do
    {
      v13 = *v11++;
      v14 = sub_178DE3C(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 16);
  if ((v15 & 0xF) != 0)
  {
    if (v15)
    {
      v19 = sub_178B700(*(a1 + 72));
      v9 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v15 & 2) == 0)
      {
LABEL_18:
        if ((v15 & 4) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }
    }

    else if ((v15 & 2) == 0)
    {
      goto LABEL_18;
    }

    v20 = sub_178B700(*(a1 + 80));
    v9 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v15 & 4) == 0)
    {
LABEL_20:
      if ((v15 & 8) != 0)
      {
        v9 += 9;
      }

      goto LABEL_22;
    }

LABEL_19:
    v16 = sub_178CDF4(*(a1 + 88));
    v9 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
    goto LABEL_20;
  }

LABEL_22:
  v17 = *(a1 + 8);
  if (v17)
  {
    v21 = v17 & 0xFFFFFFFFFFFFFFFCLL;
    v22 = *((v17 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v22 < 0)
    {
      v22 = *(v21 + 16);
    }

    v9 += v22;
  }

  *(a1 + 20) = v9;
  return v9;
}

void sub_178A698(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_178FCEC((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 56);
  if (v9)
  {
    v10 = *(a2 + 64);
    v11 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_178FD78((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
    v12 = *(a1 + 56) + v9;
    *(a1 + 56) = v12;
    v13 = *(a1 + 64);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 16);
  if ((v14 & 0xF) != 0)
  {
    if (v14)
    {
      *(a1 + 16) |= 1u;
      v16 = *(a1 + 72);
      if (!v16)
      {
        v17 = *(a1 + 8);
        v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
        if (v17)
        {
          v18 = *v18;
        }

        v16 = sub_178E360(v18);
        *(a1 + 72) = v16;
      }

      if (*(a2 + 72))
      {
        v19 = *(a2 + 72);
      }

      else
      {
        v19 = &off_27820A0;
      }

      sub_178A8C0(v16, v19);
      if ((v14 & 2) == 0)
      {
LABEL_10:
        if ((v14 & 4) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_34;
      }
    }

    else if ((v14 & 2) == 0)
    {
      goto LABEL_10;
    }

    *(a1 + 16) |= 2u;
    v20 = *(a1 + 80);
    if (!v20)
    {
      v21 = *(a1 + 8);
      v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
      if (v21)
      {
        v22 = *v22;
      }

      v20 = sub_178E360(v22);
      *(a1 + 80) = v20;
    }

    if (*(a2 + 80))
    {
      v23 = *(a2 + 80);
    }

    else
    {
      v23 = &off_27820A0;
    }

    sub_178A8C0(v20, v23);
    if ((v14 & 4) == 0)
    {
LABEL_11:
      if ((v14 & 8) == 0)
      {
LABEL_13:
        *(a1 + 16) |= v14;
        goto LABEL_14;
      }

LABEL_12:
      *(a1 + 96) = *(a2 + 96);
      goto LABEL_13;
    }

LABEL_34:
    *(a1 + 16) |= 4u;
    v24 = *(a1 + 88);
    if (!v24)
    {
      v25 = *(a1 + 8);
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
      if (v25)
      {
        v26 = *v26;
      }

      sub_178E538(v26);
      *(a1 + 88) = v24;
    }

    if (*(a2 + 88))
    {
      v27 = *(a2 + 88);
    }

    else
    {
      v27 = &off_2782100;
    }

    sub_178A9AC(v24, v27);
    if ((v14 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_14:
  v15 = *(a2 + 8);
  if (v15)
  {

    sub_1957EF4((a1 + 8), (v15 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

std::string *sub_178A8C0(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_178FE90(&v3[1], v6, (v5 + 8), v4, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
    v7 = LODWORD(v3[1].__r_.__value_.__r.__words[1]) + v4;
    LODWORD(v3[1].__r_.__value_.__r.__words[1]) = v7;
    v8 = v3[1].__r_.__value_.__r.__words[2];
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 16);
  if ((v9 & 3) != 0)
  {
    if (v9)
    {
      v3[2].__r_.__value_.__r.__words[0] = *(a2 + 48);
    }

    if ((v9 & 2) != 0)
    {
      LODWORD(v3[2].__r_.__value_.__r.__words[1]) = *(a2 + 56);
    }

    LODWORD(v3->__r_.__value_.__r.__words[2]) |= v9;
  }

  v10 = *(a2 + 8);
  if (v10)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

std::string *sub_178A9AC(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4)
  {
    if (v4)
    {
      LODWORD(result->__r_.__value_.__r.__words[2]) |= 1u;
      data = result[1].__r_.__value_.__l.__data_;
      if (!data)
      {
        size = v3->__r_.__value_.__l.__size_;
        v8 = (size & 0xFFFFFFFFFFFFFFFCLL);
        if (size)
        {
          v8 = *v8;
        }

        data = sub_178E4BC(v8);
        v3[1].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_27820E0;
      }

      result = sub_12B9D50(data, v9);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_25;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    v3[1].__r_.__value_.__l.__size_ = *(a2 + 32);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_26;
    }

LABEL_25:
    v3[1].__r_.__value_.__r.__words[2] = *(a2 + 40);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_27;
    }

LABEL_26:
    LODWORD(v3[2].__r_.__value_.__l.__data_) = *(a2 + 48);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_28;
    }

LABEL_27:
    HIDWORD(v3[2].__r_.__value_.__r.__words[0]) = *(a2 + 52);
    if ((v4 & 0x20) == 0)
    {
LABEL_8:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_29;
    }

LABEL_28:
    LODWORD(v3[2].__r_.__value_.__r.__words[1]) = *(a2 + 56);
    if ((v4 & 0x40) == 0)
    {
LABEL_9:
      if ((v4 & 0x80) == 0)
      {
LABEL_11:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v4;
        goto LABEL_12;
      }

LABEL_10:
      LODWORD(v3[2].__r_.__value_.__r.__words[2]) = *(a2 + 64);
      goto LABEL_11;
    }

LABEL_29:
    HIDWORD(v3[2].__r_.__value_.__r.__words[1]) = *(a2 + 60);
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_12:
  v5 = *(a2 + 8);
  if (v5)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_178AAFC(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_8;
    }
  }

  else if (v4)
  {
    goto LABEL_8;
  }

  v5 = *(a1 + 8) & 1;
  if (a1 != &off_2782068)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      sub_178C41C(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_178FBE4((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_178ABC0(uint64_t a1)
{
  sub_178AAFC(a1);

  operator delete();
}

uint64_t sub_178ABF8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1789C54(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if (*(v1 + 16))
  {
    result = sub_1789DD0(*(v1 + 48));
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

char *sub_178AC88(uint64_t a1, char *a2, int32x2_t *a3)
{
  v26 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v26, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = v26 + 1;
    v7 = *v26;
    if (*v26 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v26, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v26 + 2;
      }
    }

    v26 = v6;
    if (v7 >> 3 == 3)
    {
      if (v7 == 26)
      {
        v15 = v6 - 1;
        while (1)
        {
          v16 = (v15 + 1);
          v26 = v15 + 1;
          v17 = *(a1 + 40);
          if (v17 && (v18 = *(a1 + 32), v18 < *v17))
          {
            *(a1 + 32) = v18 + 1;
            v19 = *&v17[2 * v18 + 2];
          }

          else
          {
            sub_178E20C(*(a1 + 24));
            v19 = sub_19593CC(a1 + 24, v20);
            v16 = v26;
          }

          v15 = sub_224225C(a3, v19, v16);
          v26 = v15;
          if (!v15)
          {
            return 0;
          }

          if (*a3 <= v15 || *v15 != 26)
          {
            goto LABEL_35;
          }
        }
      }
    }

    else if (v7 >> 3 == 2 && v7 == 18)
    {
      *(a1 + 16) |= 1u;
      v21 = *(a1 + 48);
      if (!v21)
      {
        v22 = *(a1 + 8);
        v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
        if (v22)
        {
          v23 = *v23;
        }

        sub_178E538(v23);
        v21 = v24;
        *(a1 + 48) = v24;
        v6 = v26;
      }

      v14 = sub_22421CC(a3, v21, v6);
      goto LABEL_34;
    }

    if (v7)
    {
      v11 = (v7 & 7) == 4;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      if (v6)
      {
        a3[10].i32[0] = v7 - 1;
        return v26;
      }

      return 0;
    }

    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v13 = sub_11F1920((a1 + 8));
      v6 = v26;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
LABEL_34:
    v26 = v14;
    if (!v14)
    {
      return 0;
    }

LABEL_35:
    ;
  }

  return v26;
}

char *sub_178AE6C(uint64_t a1, unint64_t __dst, _DWORD *a3)
{
  v4 = __dst;
  if (*(a1 + 16))
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 48);
    *v4 = 18;
    v7 = *(v6 + 20);
    v4[1] = v7;
    if (v7 > 0x7F)
    {
      v8 = sub_19575D0(v7, v4 + 1);
    }

    else
    {
      v8 = v4 + 2;
    }

    v4 = sub_178C940(v6, v8, a3);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v11 = *(*(a1 + 40) + 8 * i + 8);
      *v4 = 26;
      v12 = *(v11 + 20);
      v4[1] = v12;
      if (v12 > 0x7F)
      {
        v13 = sub_19575D0(v12, v4 + 1);
      }

      else
      {
        v13 = v4 + 2;
      }

      v4 = sub_178A1C0(v11, v13, a3);
    }
  }

  v14 = *(a1 + 8);
  if ((v14 & 1) == 0)
  {
    return v4;
  }

  v16 = v14 & 0xFFFFFFFFFFFFFFFCLL;
  v17 = *(v16 + 31);
  if (v17 < 0)
  {
    v18 = *(v16 + 8);
    v17 = *(v16 + 16);
  }

  else
  {
    v18 = (v16 + 8);
  }

  if (*a3 - v4 >= v17)
  {
    v19 = v17;
    memcpy(v4, v18, v17);
    v4 += v19;
    return v4;
  }

  return sub_1957130(a3, v18, v17, v4);
}

uint64_t sub_178B014(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = sub_178A4EC(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  if (*(a1 + 16))
  {
    v8 = sub_178CDF4(*(a1 + 48));
    v2 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v9 = *(a1 + 8);
  if (v9)
  {
    v11 = v9 & 0xFFFFFFFFFFFFFFFCLL;
    v12 = *((v9 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v12 < 0)
    {
      v12 = *(v11 + 16);
    }

    v2 += v12;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_178B0F0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_178FE04((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  if (*(a2 + 16))
  {
    v9 = *(a2 + 48);
    *(a1 + 16) |= 1u;
    v10 = *(a1 + 48);
    if (!v10)
    {
      v11 = *(a1 + 8);
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
      if (v11)
      {
        v12 = *v12;
      }

      sub_178E538(v12);
      *(a1 + 48) = v10;
      v9 = *(a2 + 48);
    }

    if (v9)
    {
      v13 = v9;
    }

    else
    {
      v13 = &off_2782100;
    }

    sub_178A9AC(v10, v13);
  }

  v14 = *(a2 + 8);
  if (v14)
  {

    sub_1957EF4((a1 + 8), (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void *sub_178B218(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_178FC68(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_178B298(void *a1)
{
  sub_178B218(a1);

  operator delete();
}

char *sub_178B2D0(uint64_t a1, char *a2, int32x2_t *a3)
{
  v26 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v26, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v26 + 1;
    v8 = *v26;
    if (*v26 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v26, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v26 + 2;
      }
    }

    v26 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 == 4)
    {
      if (v8 == 34)
      {
        v19 = v7 - 1;
        while (1)
        {
          v26 = v19 + 1;
          v20 = *(a1 + 40);
          if (v20 && (v21 = *(a1 + 32), v21 < *v20))
          {
            *(a1 + 32) = v21 + 1;
            v22 = *&v20[2 * v21 + 2];
          }

          else
          {
            v23 = sub_178E360(*(a1 + 24));
            v22 = sub_19593CC(a1 + 24, v23);
          }

          v19 = sub_224201C(a3, v22);
          v26 = v19;
          if (!v19)
          {
            goto LABEL_44;
          }

          if (*a3 <= v19 || *v19 != 34)
          {
            goto LABEL_37;
          }
        }
      }

      goto LABEL_13;
    }

    if (v11 != 3)
    {
      break;
    }

    if (v8 != 24)
    {
      goto LABEL_13;
    }

    v5 |= 2u;
    v17 = v7 + 1;
    LODWORD(v16) = *v7;
    if ((v16 & 0x80) == 0)
    {
      goto LABEL_25;
    }

    v18 = *v17;
    v16 = v16 + (v18 << 7) - 128;
    if ((v18 & 0x80000000) == 0)
    {
      v17 = v7 + 2;
LABEL_25:
      v26 = v17;
      *(a1 + 56) = v16;
      goto LABEL_37;
    }

    v24 = sub_19587DC(v7, v16);
    v26 = v24;
    *(a1 + 56) = v25;
    if (!v24)
    {
      goto LABEL_44;
    }

LABEL_37:
    if (sub_195ADC0(a3, &v26, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1 && v8 == 9)
  {
    v5 |= 1u;
    *(a1 + 48) = *v7;
    v26 = v7 + 8;
    goto LABEL_37;
  }

LABEL_13:
  if (v8)
  {
    v13 = (v8 & 7) == 4;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    v14 = *(a1 + 8);
    if (v14)
    {
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v15 = sub_11F1920((a1 + 8));
      v7 = v26;
    }

    v26 = sub_1952690(v8, v15, v7, a3);
    if (!v26)
    {
      goto LABEL_44;
    }

    goto LABEL_37;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_44:
  v26 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v26;
}

char *sub_178B508(uint64_t a1, char *a2, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v6 = *(a1 + 48);
    *a2 = 9;
    *(a2 + 1) = v6;
    a2 += 9;
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v8 = *(a1 + 56);
    *a2 = 24;
    a2[1] = v8;
    if (v8 > 0x7F)
    {
      a2[1] = v8 | 0x80;
      v9 = v8 >> 7;
      a2[2] = v8 >> 7;
      v7 = a2 + 3;
      if (v8 >= 0x4000)
      {
        LOBYTE(v10) = a2[2];
        do
        {
          *(v7 - 1) = v10 | 0x80;
          v10 = v9 >> 7;
          *v7++ = v9 >> 7;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
      }
    }

    else
    {
      v7 = a2 + 2;
    }
  }

  else
  {
    v7 = a2;
  }

  v12 = *(a1 + 32);
  if (v12)
  {
    for (i = 0; i != v12; ++i)
    {
      if (*a3 <= v7)
      {
        v7 = sub_225EB68(a3, v7);
      }

      v14 = *(*(a1 + 40) + 8 * i + 8);
      *v7 = 34;
      v15 = *(v14 + 20);
      v7[1] = v15;
      if (v15 > 0x7F)
      {
        v16 = sub_19575D0(v15, v7 + 1);
      }

      else
      {
        v16 = v7 + 2;
      }

      v7 = sub_178B508(v14, v16, a3);
    }
  }

  v17 = *(a1 + 8);
  if ((v17 & 1) == 0)
  {
    return v7;
  }

  v19 = v17 & 0xFFFFFFFFFFFFFFFCLL;
  v20 = *(v19 + 31);
  if (v20 < 0)
  {
    v21 = *(v19 + 8);
    v20 = *(v19 + 16);
  }

  else
  {
    v21 = (v19 + 8);
  }

  if (*a3 - v7 >= v20)
  {
    v22 = v20;
    memcpy(v7, v21, v20);
    v7 += v22;
    return v7;
  }

  return sub_1957130(a3, v21, v20, v7);
}

uint64_t sub_178B700(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = sub_178B700(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(a1 + 16);
  if ((v8 & 3) != 0)
  {
    if (v8)
    {
      v2 += 9;
    }

    if ((v8 & 2) != 0)
    {
      v9 = *(a1 + 56);
      if (v9 < 0)
      {
        v10 = 11;
      }

      else
      {
        v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v2 += v10;
    }
  }

  v11 = *(a1 + 8);
  if (v11)
  {
    v13 = v11 & 0xFFFFFFFFFFFFFFFCLL;
    v14 = *((v11 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v14 < 0)
    {
      v14 = *(v13 + 16);
    }

    v2 += v14;
  }

  *(a1 + 20) = v2;
  return v2;
}

void *sub_178B80C(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1956ABC((a1 + 6));
  sub_1956ABC((a1 + 3));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_178B890(void *a1)
{
  sub_178B80C(a1);

  operator delete();
}

uint64_t sub_178B8C8(uint64_t a1)
{
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  if ((*(a1 + 16) & 3) != 0)
  {
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
  }

  v2 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_178B8F4(uint64_t a1, char *a2, int32x2_t *a3)
{
  v21 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v21, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v21 + 1;
    v8 = *v21;
    if (*v21 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v21, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v21 + 2;
      }
    }

    v21 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 4)
    {
      if (v11 == 5)
      {
        if (v8 != 41)
        {
          goto LABEL_28;
        }

        v16 = *v7;
        v13 = v7 + 8;
        v5 |= 1u;
        *(a1 + 72) = v16;
      }

      else
      {
        if (v11 != 6 || v8 != 49)
        {
          goto LABEL_28;
        }

        v14 = *v7;
        v13 = v7 + 8;
        v5 |= 2u;
        *(a1 + 80) = v14;
      }

      v21 = v13;
      goto LABEL_36;
    }

    if (v11 == 3)
    {
      if (v8 == 26)
      {
        v12 = (a1 + 24);
        goto LABEL_18;
      }

      if (v8 == 24)
      {
        v22 = sub_1212760(&v21);
        v17 = (a1 + 24);
LABEL_26:
        sub_1950044(v17, &v22);
        if (!v21)
        {
          goto LABEL_41;
        }

        goto LABEL_36;
      }
    }

    else if (v11 == 4)
    {
      if (v8 == 34)
      {
        v12 = (a1 + 48);
LABEL_18:
        v15 = sub_1958958(v12, v7, a3);
        goto LABEL_35;
      }

      if (v8 == 32)
      {
        v22 = sub_1212760(&v21);
        v17 = (a1 + 48);
        goto LABEL_26;
      }
    }

LABEL_28:
    if (!v8 || (v8 & 7) == 4)
    {
      break;
    }

    v19 = *(a1 + 8);
    if (v19)
    {
      v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v20 = sub_11F1920((a1 + 8));
      v7 = v21;
    }

    v15 = sub_1952690(v8, v20, v7, a3);
LABEL_35:
    v21 = v15;
    if (!v15)
    {
      goto LABEL_41;
    }

LABEL_36:
    if (sub_195ADC0(a3, &v21, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_41:
  v21 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v21;
}

char *sub_178BAF4(uint64_t a1, unint64_t __dst, _DWORD *a3)
{
  v4 = __dst;
  v6 = *(a1 + 40);
  if (v6 >= 1)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    *v4 = 26;
    v7 = v4 + 1;
    if (v6 >= 0x80)
    {
      do
      {
        *v7++ = v6 | 0x80;
        v34 = v6 >> 14;
        v6 >>= 7;
      }

      while (v34);
      v4 = v7 - 1;
    }

    v8 = v4 + 2;
    *v7 = v6;
    v9 = *(a1 + 32);
    v10 = &v9[*(a1 + 24)];
    do
    {
      if (*a3 <= v8)
      {
        v8 = sub_225EB68(a3, v8);
      }

      v11 = *v9++;
      v12 = (2 * v11) ^ (v11 >> 63);
      *v8 = v12;
      if (v12 > 0x7F)
      {
        *v8 = v12 | 0x80;
        v13 = v12 >> 7;
        v8[1] = v12 >> 7;
        v4 = v8 + 2;
        if (v12 >= 0x4000)
        {
          LOBYTE(v14) = v8[1];
          do
          {
            *(v4 - 1) = v14 | 0x80;
            v14 = v13 >> 7;
            *v4++ = v13 >> 7;
            v15 = v13 >> 14;
            v13 >>= 7;
          }

          while (v15);
        }
      }

      else
      {
        v4 = v8 + 1;
      }

      v8 = v4;
    }

    while (v9 < v10);
  }

  v16 = *(a1 + 64);
  if (v16 >= 1)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    *v4 = 34;
    v17 = v4 + 1;
    if (v16 >= 0x80)
    {
      do
      {
        *v17++ = v16 | 0x80;
        v35 = v16 >> 14;
        v16 >>= 7;
      }

      while (v35);
      v4 = v17 - 1;
    }

    v18 = v4 + 2;
    *v17 = v16;
    v19 = *(a1 + 56);
    v20 = &v19[*(a1 + 48)];
    do
    {
      if (*a3 <= v18)
      {
        v18 = sub_225EB68(a3, v18);
      }

      v21 = *v19++;
      v22 = (2 * v21) ^ (v21 >> 63);
      *v18 = v22;
      if (v22 > 0x7F)
      {
        *v18 = v22 | 0x80;
        v23 = v22 >> 7;
        v18[1] = v22 >> 7;
        v4 = v18 + 2;
        if (v22 >= 0x4000)
        {
          LOBYTE(v24) = v18[1];
          do
          {
            *(v4 - 1) = v24 | 0x80;
            v24 = v23 >> 7;
            *v4++ = v23 >> 7;
            v25 = v23 >> 14;
            v23 >>= 7;
          }

          while (v25);
        }
      }

      else
      {
        v4 = v18 + 1;
      }

      v18 = v4;
    }

    while (v19 < v20);
  }

  v26 = *(a1 + 16);
  if (v26)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v27 = *(a1 + 72);
    *v4 = 41;
    *(v4 + 1) = v27;
    v4 += 9;
  }

  if ((v26 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v28 = *(a1 + 80);
    *v4 = 49;
    *(v4 + 1) = v28;
    v4 += 9;
  }

  v29 = *(a1 + 8);
  if ((v29 & 1) == 0)
  {
    return v4;
  }

  v31 = v29 & 0xFFFFFFFFFFFFFFFCLL;
  v32 = *(v31 + 31);
  if (v32 < 0)
  {
    v33 = *(v31 + 8);
    v32 = *(v31 + 16);
  }

  else
  {
    v33 = (v31 + 8);
  }

  if (*a3 - v4 >= v32)
  {
    v36 = v32;
    memcpy(v4, v33, v32);
    v4 += v36;
    return v4;
  }

  return sub_1957130(a3, v33, v32, v4);
}

uint64_t sub_178BE08(uint64_t a1)
{
  v2 = sub_1959F64((a1 + 24));
  if (v2)
  {
    v3 = v2;
    if ((v2 & 0x80000000) != 0)
    {
      v4 = 11;
    }

    else
    {
      v4 = ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  *(a1 + 40) = v3;
  v5 = v4 + v2;
  v6 = sub_1959F64((a1 + 48));
  if (v6)
  {
    v7 = v6;
    if ((v6 & 0x80000000) != 0)
    {
      v8 = 11;
    }

    else
    {
      v8 = ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v5 += v8;
  }

  else
  {
    v7 = 0;
  }

  *(a1 + 64) = v7;
  v9 = *(a1 + 16);
  v10 = v5 + v6 + 9;
  if ((v9 & 1) == 0)
  {
    v10 = v5 + v6;
  }

  if ((v9 & 2) != 0)
  {
    v10 += 9;
  }

  if ((v9 & 3) != 0)
  {
    result = v10;
  }

  else
  {
    result = v5 + v6;
  }

  v12 = *(a1 + 8);
  if (v12)
  {
    v13 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    v14 = *((v12 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v14 < 0)
    {
      v14 = *(v13 + 16);
    }

    result += v14;
  }

  *(a1 + 20) = result;
  return result;
}

std::string *sub_178BF0C(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = result + 1;
    data_low = SLODWORD(result[1].__r_.__value_.__l.__data_);
    sub_1959094(&result[1], data_low + v4);
    size = v3[1].__r_.__value_.__l.__size_;
    LODWORD(v5->__r_.__value_.__l.__data_) += *(a2 + 24);
    result = memcpy((size + 8 * data_low), *(a2 + 32), 8 * *(a2 + 24));
  }

  v8 = *(a2 + 48);
  if (v8)
  {
    v9 = SLODWORD(v3[2].__r_.__value_.__l.__data_);
    sub_1959094(&v3[2], v9 + v8);
    v10 = v3[2].__r_.__value_.__l.__size_;
    LODWORD(v3[2].__r_.__value_.__l.__data_) += *(a2 + 48);
    result = memcpy((v10 + 8 * v9), *(a2 + 56), 8 * *(a2 + 48));
  }

  v11 = *(a2 + 16);
  if ((v11 & 3) != 0)
  {
    if (v11)
    {
      v3[3].__r_.__value_.__r.__words[0] = *(a2 + 72);
    }

    if ((v11 & 2) != 0)
    {
      v3[3].__r_.__value_.__l.__size_ = *(a2 + 80);
    }

    LODWORD(v3->__r_.__value_.__r.__words[2]) |= v11;
  }

  v12 = *(a2 + 8);
  if (v12)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_178C03C(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_178C0B0(void *a1)
{
  sub_178C03C(a1);

  operator delete();
}

uint64_t sub_178C0E8(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = a1 + 8;
  *(result + 16) = 0;
  *(result + 8) = 0;
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_178C100(uint64_t a1, char *a2, int32x2_t *a3)
{
  v19 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v19, a3[11].i32[1]))
  {
    goto LABEL_26;
  }

  while (1)
  {
    v6 = v19 + 1;
    v7 = *v19;
    if (*v19 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v19, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v19 + 2;
      }
    }

    v19 = v6;
    if (v7 != 8)
    {
      break;
    }

    v14 = v6 + 1;
    LODWORD(v13) = *v6;
    if ((v13 & 0x80) == 0)
    {
      goto LABEL_18;
    }

    v15 = *v14;
    v13 = v13 + (v15 << 7) - 128;
    if ((v15 & 0x80000000) == 0)
    {
      v14 = v6 + 2;
LABEL_18:
      v19 = v14;
      *(a1 + 24) = v13;
      v5 = 1;
      goto LABEL_19;
    }

    v16 = sub_19587DC(v6, v13);
    v19 = v16;
    *(a1 + 24) = v17;
    v5 = 1;
    if (!v16)
    {
      goto LABEL_27;
    }

LABEL_19:
    if (sub_195ADC0(a3, &v19, a3[11].i32[1]))
    {
      goto LABEL_26;
    }
  }

  if (v7)
  {
    v10 = (v7 & 7) == 4;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v11 = *(a1 + 8);
    if (v11)
    {
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v12 = sub_11F1920((a1 + 8));
      v6 = v19;
    }

    v19 = sub_1952690(v7, v12, v6, a3);
    if (!v19)
    {
      goto LABEL_27;
    }

    goto LABEL_19;
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    goto LABEL_26;
  }

LABEL_27:
  v19 = 0;
LABEL_26:
  *(a1 + 16) |= v5;
  return v19;
}

char *sub_178C270(uint64_t a1, char *__dst, _DWORD *a3)
{
  if (*(a1 + 16))
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 24);
    *__dst = 8;
    __dst[1] = v6;
    if (v6 > 0x7F)
    {
      __dst[1] = v6 | 0x80;
      v7 = v6 >> 7;
      __dst[2] = v6 >> 7;
      v5 = __dst + 3;
      if (v6 >= 0x4000)
      {
        LOBYTE(v8) = __dst[2];
        do
        {
          *(v5 - 1) = v8 | 0x80;
          v8 = v7 >> 7;
          *v5++ = v7 >> 7;
          v9 = v7 >> 14;
          v7 >>= 7;
        }

        while (v9);
      }
    }

    else
    {
      v5 = __dst + 2;
    }
  }

  else
  {
    v5 = __dst;
  }

  v10 = *(a1 + 8);
  if ((v10 & 1) == 0)
  {
    return v5;
  }

  v12 = v10 & 0xFFFFFFFFFFFFFFFCLL;
  v13 = *(v12 + 31);
  if (v13 < 0)
  {
    v14 = *(v12 + 8);
    v13 = *(v12 + 16);
  }

  else
  {
    v14 = (v12 + 8);
  }

  if (*a3 - v5 >= v13)
  {
    v15 = v13;
    memcpy(v5, v14, v13);
    v5 += v15;
    return v5;
  }

  return sub_1957130(a3, v14, v13, v5);
}

uint64_t sub_178C398(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = *(a1 + 24);
    if (v2 < 0)
    {
      v1 = 11;
    }

    else
    {
      v1 = ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  else
  {
    v1 = 0;
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    v5 = v3 & 0xFFFFFFFFFFFFFFFCLL;
    v6 = *((v3 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v6 < 0)
    {
      v6 = *(v5 + 16);
    }

    v1 += v6;
  }

  *(a1 + 20) = v1;
  return v1;
}

uint64_t sub_178C41C(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_8;
    }
  }

  else if (v4)
  {
    goto LABEL_8;
  }

  v5 = *(a1 + 8) & 1;
  if (a1 != &off_2782100)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_178C03C(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_178C4D4(uint64_t a1)
{
  sub_178C41C(a1);

  operator delete();
}

char *sub_178C50C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v55 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v55, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v55 + 1;
    v8 = *v55;
    if (*v55 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v55, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v55 + 2;
      }
    }

    v55 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 5)
    {
      break;
    }

    if (v8 >> 3 > 2)
    {
      if (v11 == 3)
      {
        if (v8 != 24)
        {
          goto LABEL_62;
        }

        v5 |= 4u;
        v33 = v7 + 1;
        v32 = *v7;
        if ((v32 & 0x8000000000000000) == 0)
        {
          goto LABEL_56;
        }

        v34 = *v33;
        v32 = (v34 << 7) + v32 - 128;
        if ((v34 & 0x80000000) == 0)
        {
          v33 = v7 + 2;
LABEL_56:
          v55 = v33;
          *(a1 + 40) = v32;
          goto LABEL_70;
        }

        v45 = sub_19587DC(v7, v32);
        v55 = v45;
        *(a1 + 40) = v46;
        if (!v45)
        {
          goto LABEL_89;
        }
      }

      else
      {
        if (v11 != 5 || v8 != 40)
        {
          goto LABEL_62;
        }

        v5 |= 0x10u;
        v20 = v7 + 1;
        LODWORD(v19) = *v7;
        if ((v19 & 0x80) == 0)
        {
          goto LABEL_33;
        }

        v21 = *v20;
        v19 = v19 + (v21 << 7) - 128;
        if ((v21 & 0x80000000) == 0)
        {
          v20 = v7 + 2;
LABEL_33:
          v55 = v20;
          *(a1 + 52) = v19;
          goto LABEL_70;
        }

        v53 = sub_19587DC(v7, v19);
        v55 = v53;
        *(a1 + 52) = v54;
        if (!v53)
        {
          goto LABEL_89;
        }
      }
    }

    else if (v11 == 1)
    {
      if (v8 != 8)
      {
        goto LABEL_62;
      }

      v5 |= 8u;
      v27 = v7 + 1;
      LODWORD(v26) = *v7;
      if ((v26 & 0x80) == 0)
      {
        goto LABEL_46;
      }

      v28 = *v27;
      v26 = v26 + (v28 << 7) - 128;
      if ((v28 & 0x80000000) == 0)
      {
        v27 = v7 + 2;
LABEL_46:
        v55 = v27;
        *(a1 + 48) = v26;
        goto LABEL_70;
      }

      v41 = sub_19587DC(v7, v26);
      v55 = v41;
      *(a1 + 48) = v42;
      if (!v41)
      {
        goto LABEL_89;
      }
    }

    else
    {
      if (v11 != 2 || v8 != 16)
      {
        goto LABEL_62;
      }

      v5 |= 2u;
      v14 = v7 + 1;
      v13 = *v7;
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_18;
      }

      v15 = *v14;
      v13 = (v15 << 7) + v13 - 128;
      if ((v15 & 0x80000000) == 0)
      {
        v14 = v7 + 2;
LABEL_18:
        v55 = v14;
        *(a1 + 32) = v13;
        goto LABEL_70;
      }

      v49 = sub_19587DC(v7, v13);
      v55 = v49;
      *(a1 + 32) = v50;
      if (!v49)
      {
        goto LABEL_89;
      }
    }

LABEL_70:
    if (sub_195ADC0(a3, &v55, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 <= 7)
  {
    if (v11 == 6)
    {
      if (v8 != 48)
      {
        goto LABEL_62;
      }

      v5 |= 0x20u;
      v30 = v7 + 1;
      LODWORD(v29) = *v7;
      if ((v29 & 0x80) == 0)
      {
        goto LABEL_51;
      }

      v31 = *v30;
      v29 = v29 + (v31 << 7) - 128;
      if ((v31 & 0x80000000) == 0)
      {
        v30 = v7 + 2;
LABEL_51:
        v55 = v30;
        *(a1 + 56) = v29;
        goto LABEL_70;
      }

      v43 = sub_19587DC(v7, v29);
      v55 = v43;
      *(a1 + 56) = v44;
      if (!v43)
      {
        goto LABEL_89;
      }
    }

    else
    {
      if (v11 != 7 || v8 != 56)
      {
        goto LABEL_62;
      }

      v5 |= 0x40u;
      v17 = v7 + 1;
      LODWORD(v16) = *v7;
      if ((v16 & 0x80) == 0)
      {
        goto LABEL_26;
      }

      v18 = *v17;
      v16 = v16 + (v18 << 7) - 128;
      if ((v18 & 0x80000000) == 0)
      {
        v17 = v7 + 2;
LABEL_26:
        v55 = v17;
        *(a1 + 60) = v16;
        goto LABEL_70;
      }

      v51 = sub_19587DC(v7, v16);
      v55 = v51;
      *(a1 + 60) = v52;
      if (!v51)
      {
        goto LABEL_89;
      }
    }

    goto LABEL_70;
  }

  if (v11 == 8)
  {
    if (v8 != 64)
    {
      goto LABEL_62;
    }

    v5 |= 0x80u;
    v36 = v7 + 1;
    LODWORD(v35) = *v7;
    if ((v35 & 0x80) == 0)
    {
      goto LABEL_61;
    }

    v37 = *v36;
    v35 = v35 + (v37 << 7) - 128;
    if ((v37 & 0x80000000) == 0)
    {
      v36 = v7 + 2;
LABEL_61:
      v55 = v36;
      *(a1 + 64) = v35;
      goto LABEL_70;
    }

    v47 = sub_19587DC(v7, v35);
    v55 = v47;
    *(a1 + 64) = v48;
    if (!v47)
    {
      goto LABEL_89;
    }

    goto LABEL_70;
  }

  if (v11 == 9 && v8 == 74)
  {
    *(a1 + 16) |= 1u;
    v22 = *(a1 + 24);
    if (!v22)
    {
      v23 = *(a1 + 8);
      v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
      if (v23)
      {
        v24 = *v24;
      }

      v22 = sub_178E4BC(v24);
      *(a1 + 24) = v22;
      v7 = v55;
    }

    v25 = sub_22422EC(a3, v22, v7);
LABEL_69:
    v55 = v25;
    if (!v25)
    {
      goto LABEL_89;
    }

    goto LABEL_70;
  }

LABEL_62:
  if (v8)
  {
    v38 = (v8 & 7) == 4;
  }

  else
  {
    v38 = 1;
  }

  if (!v38)
  {
    v39 = *(a1 + 8);
    if (v39)
    {
      v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v40 = sub_11F1920((a1 + 8));
      v7 = v55;
    }

    v25 = sub_1952690(v8, v40, v7, a3);
    goto LABEL_69;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_89:
  v55 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v55;
}

char *sub_178C940(uint64_t a1, char *__dst, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 8) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 48);
    *__dst = 8;
    __dst[1] = v7;
    if (v7 > 0x7F)
    {
      __dst[1] = v7 | 0x80;
      v8 = v7 >> 7;
      __dst[2] = v7 >> 7;
      v6 = __dst + 3;
      if (v7 >= 0x4000)
      {
        LOBYTE(v9) = __dst[2];
        do
        {
          *(v6 - 1) = v9 | 0x80;
          v9 = v8 >> 7;
          *v6++ = v8 >> 7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
      }
    }

    else
    {
      v6 = __dst + 2;
    }
  }

  else
  {
    v6 = __dst;
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 32);
    *v6 = 16;
    v6[1] = v12;
    if (v12 > 0x7F)
    {
      v6[1] = v12 | 0x80;
      v13 = v12 >> 7;
      v6[2] = v12 >> 7;
      v11 = v6 + 3;
      if (v12 >= 0x4000)
      {
        LOBYTE(v6) = v6[2];
        do
        {
          *(v11 - 1) = v6 | 0x80;
          v6 = (v13 >> 7);
          *v11++ = v13 >> 7;
          v14 = v13 >> 14;
          v13 >>= 7;
        }

        while (v14);
      }
    }

    else
    {
      v11 = v6 + 2;
    }
  }

  else
  {
    v11 = v6;
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v16 = *(a1 + 40);
    *v11 = 24;
    v11[1] = v16;
    if (v16 > 0x7F)
    {
      v11[1] = v16 | 0x80;
      v17 = v16 >> 7;
      v11[2] = v16 >> 7;
      v15 = v11 + 3;
      if (v16 >= 0x4000)
      {
        LOBYTE(v11) = v11[2];
        do
        {
          *(v15 - 1) = v11 | 0x80;
          v11 = (v17 >> 7);
          *v15++ = v17 >> 7;
          v18 = v17 >> 14;
          v17 >>= 7;
        }

        while (v18);
      }
    }

    else
    {
      v15 = v11 + 2;
    }
  }

  else
  {
    v15 = v11;
  }

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v20 = *(a1 + 52);
    *v15 = 40;
    v15[1] = v20;
    if (v20 > 0x7F)
    {
      v15[1] = v20 | 0x80;
      v21 = v20 >> 7;
      v15[2] = v20 >> 7;
      v19 = v15 + 3;
      if (v20 >= 0x4000)
      {
        LOBYTE(v22) = v15[2];
        do
        {
          *(v19 - 1) = v22 | 0x80;
          v22 = v21 >> 7;
          *v19++ = v21 >> 7;
          v23 = v21 >> 14;
          v21 >>= 7;
        }

        while (v23);
      }
    }

    else
    {
      v19 = v15 + 2;
    }
  }

  else
  {
    v19 = v15;
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v25 = *(a1 + 56);
    *v19 = 48;
    v19[1] = v25;
    if (v25 > 0x7F)
    {
      v19[1] = v25 | 0x80;
      v26 = v25 >> 7;
      v19[2] = v25 >> 7;
      v24 = v19 + 3;
      if (v25 >= 0x4000)
      {
        LOBYTE(v19) = v19[2];
        do
        {
          *(v24 - 1) = v19 | 0x80;
          v19 = (v26 >> 7);
          *v24++ = v26 >> 7;
          v27 = v26 >> 14;
          v26 >>= 7;
        }

        while (v27);
      }
    }

    else
    {
      v24 = v19 + 2;
    }
  }

  else
  {
    v24 = v19;
  }

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v24)
    {
      v24 = sub_225EB68(a3, v24);
    }

    v29 = *(a1 + 60);
    *v24 = 56;
    v24[1] = v29;
    if (v29 > 0x7F)
    {
      v24[1] = v29 | 0x80;
      v30 = v29 >> 7;
      v24[2] = v29 >> 7;
      v28 = v24 + 3;
      if (v29 >= 0x4000)
      {
        LOBYTE(v31) = v24[2];
        do
        {
          *(v28 - 1) = v31 | 0x80;
          v31 = v30 >> 7;
          *v28++ = v30 >> 7;
          v32 = v30 >> 14;
          v30 >>= 7;
        }

        while (v32);
      }
    }

    else
    {
      v28 = v24 + 2;
    }
  }

  else
  {
    v28 = v24;
  }

  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v28)
    {
      v28 = sub_225EB68(a3, v28);
    }

    v34 = *(a1 + 64);
    *v28 = 64;
    v28[1] = v34;
    if (v34 > 0x7F)
    {
      v28[1] = v34 | 0x80;
      v35 = v34 >> 7;
      v28[2] = v34 >> 7;
      v33 = v28 + 3;
      if (v34 >= 0x4000)
      {
        LOBYTE(v28) = v28[2];
        do
        {
          *(v33 - 1) = v28 | 0x80;
          v28 = (v35 >> 7);
          *v33++ = v35 >> 7;
          v36 = v35 >> 14;
          v35 >>= 7;
        }

        while (v36);
      }
    }

    else
    {
      v33 = v28 + 2;
    }
  }

  else
  {
    v33 = v28;
  }

  if (v5)
  {
    if (*a3 <= v33)
    {
      v33 = sub_225EB68(a3, v33);
    }

    v37 = *(a1 + 24);
    *v33 = 74;
    v38 = *(v37 + 20);
    v33[1] = v38;
    if (v38 > 0x7F)
    {
      v39 = sub_19575D0(v38, v33 + 1);
    }

    else
    {
      v39 = v33 + 2;
    }

    v33 = sub_178C270(v37, v39, a3);
  }

  v40 = *(a1 + 8);
  if ((v40 & 1) == 0)
  {
    return v33;
  }

  v42 = v40 & 0xFFFFFFFFFFFFFFFCLL;
  v43 = *(v42 + 31);
  if (v43 < 0)
  {
    v44 = *(v42 + 8);
    v43 = *(v42 + 16);
  }

  else
  {
    v44 = (v42 + 8);
  }

  if (*a3 - v33 >= v43)
  {
    v45 = v43;
    memcpy(v33, v44, v43);
    v33 += v45;
    return v33;
  }

  return sub_1957130(a3, v44, v43, v33);
}

uint64_t sub_178CDF4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    result = 0;
    goto LABEL_36;
  }

  if (*(a1 + 16))
  {
    v4 = sub_178C398(*(a1 + 24));
    result = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  result = 0;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    result += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    result += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_10:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_20;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_10;
  }

  v5 = *(a1 + 48);
  if (v5 < 0)
  {
    v6 = 11;
  }

  else
  {
    v6 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v6;
  if ((v2 & 0x10) == 0)
  {
LABEL_11:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_20:
  v7 = *(a1 + 52);
  if (v7 < 0)
  {
    v8 = 11;
  }

  else
  {
    v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v8;
  if ((v2 & 0x20) == 0)
  {
LABEL_12:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_24:
  v9 = *(a1 + 56);
  if (v9 < 0)
  {
    v10 = 11;
  }

  else
  {
    v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v10;
  if ((v2 & 0x40) == 0)
  {
LABEL_13:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_32;
  }

LABEL_28:
  v11 = *(a1 + 60);
  if (v11 < 0)
  {
    v12 = 11;
  }

  else
  {
    v12 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v12;
  if (v2 < 0)
  {
LABEL_32:
    v13 = *(a1 + 64);
    if (v13 < 0)
    {
      v14 = 11;
    }

    else
    {
      v14 = ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    result += v14;
  }

LABEL_36:
  v15 = *(a1 + 8);
  if (v15)
  {
    v16 = v15 & 0xFFFFFFFFFFFFFFFCLL;
    v17 = *((v15 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v17 < 0)
    {
      v17 = *(v16 + 16);
    }

    result += v17;
  }

  *(a1 + 20) = result;
  return result;
}

void *sub_178D000(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_178D074(void *a1)
{
  sub_178D000(a1);

  operator delete();
}

uint64_t sub_178D0AC(uint64_t a1)
{
  if ((*(a1 + 16) & 7) != 0)
  {
    *(a1 + 24) = 0;
  }

  v2 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_178D0D0(uint64_t a1, char *a2, int32x2_t *a3)
{
  v31 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v31, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v31 + 1;
    v8 = *v31;
    if (*v31 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v31, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v31 + 2;
      }
    }

    v31 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 != 3)
    {
      break;
    }

    if (v8 != 24)
    {
      goto LABEL_13;
    }

    v5 |= 4u;
    v20 = v7 + 1;
    LODWORD(v19) = *v7;
    if ((v19 & 0x80) == 0)
    {
      goto LABEL_30;
    }

    v21 = *v20;
    v19 = v19 + (v21 << 7) - 128;
    if ((v21 & 0x80000000) == 0)
    {
      v20 = v7 + 2;
LABEL_30:
      v31 = v20;
      *(a1 + 28) = v19;
      goto LABEL_35;
    }

    v29 = sub_19587DC(v7, v19);
    v31 = v29;
    *(a1 + 28) = v30;
    if (!v29)
    {
      goto LABEL_46;
    }

LABEL_35:
    if (sub_195ADC0(a3, &v31, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 2)
  {
    if (v8 != 16)
    {
      goto LABEL_13;
    }

    v5 |= 2u;
    v17 = v7 + 1;
    v16 = *v7;
    if ((v16 & 0x8000000000000000) == 0)
    {
      goto LABEL_25;
    }

    v18 = *v17;
    v16 = (v18 << 7) + v16 - 128;
    if ((v18 & 0x80000000) == 0)
    {
      v17 = v7 + 2;
LABEL_25:
      v31 = v17;
      *(a1 + 25) = v16 != 0;
      goto LABEL_35;
    }

    v25 = sub_19587DC(v7, v16);
    v31 = v25;
    *(a1 + 25) = v26 != 0;
    if (!v25)
    {
      goto LABEL_46;
    }

    goto LABEL_35;
  }

  if (v11 == 1 && v8 == 8)
  {
    v5 |= 1u;
    v23 = v7 + 1;
    v22 = *v7;
    if ((v22 & 0x8000000000000000) == 0)
    {
      goto LABEL_34;
    }

    v24 = *v23;
    v22 = (v24 << 7) + v22 - 128;
    if ((v24 & 0x80000000) == 0)
    {
      v23 = v7 + 2;
LABEL_34:
      v31 = v23;
      *(a1 + 24) = v22 != 0;
      goto LABEL_35;
    }

    v27 = sub_19587DC(v7, v22);
    v31 = v27;
    *(a1 + 24) = v28 != 0;
    if (!v27)
    {
      goto LABEL_46;
    }

    goto LABEL_35;
  }

LABEL_13:
  if (v8)
  {
    v13 = (v8 & 7) == 4;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    v14 = *(a1 + 8);
    if (v14)
    {
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v15 = sub_11F1920((a1 + 8));
      v7 = v31;
    }

    v31 = sub_1952690(v8, v15, v7, a3);
    if (!v31)
    {
      goto LABEL_46;
    }

    goto LABEL_35;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_46:
  v31 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v31;
}

char *sub_178D334(uint64_t a1, char *__dst, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v8 = *(a1 + 25);
    *__dst = 16;
    __dst[1] = v8;
    __dst += 2;
    if ((v5 & 4) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v7 = *(a1 + 24);
  *__dst = 8;
  __dst[1] = v7;
  __dst += 2;
  if ((v5 & 2) != 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v5 & 4) == 0)
  {
LABEL_4:
    v6 = __dst;
    goto LABEL_18;
  }

LABEL_11:
  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v9 = *(a1 + 28);
  *__dst = 24;
  __dst[1] = v9;
  if (v9 > 0x7F)
  {
    __dst[1] = v9 | 0x80;
    v10 = v9 >> 7;
    __dst[2] = v9 >> 7;
    v6 = __dst + 3;
    if (v9 >= 0x4000)
    {
      LOBYTE(v11) = __dst[2];
      do
      {
        *(v6 - 1) = v11 | 0x80;
        v11 = v10 >> 7;
        *v6++ = v10 >> 7;
        v12 = v10 >> 14;
        v10 >>= 7;
      }

      while (v12);
    }
  }

  else
  {
    v6 = __dst + 2;
  }

LABEL_18:
  v13 = *(a1 + 8);
  if ((v13 & 1) == 0)
  {
    return v6;
  }

  v15 = v13 & 0xFFFFFFFFFFFFFFFCLL;
  v16 = *(v15 + 31);
  if (v16 < 0)
  {
    v17 = *(v15 + 8);
    v16 = *(v15 + 16);
  }

  else
  {
    v17 = (v15 + 8);
  }

  if (*a3 - v6 >= v16)
  {
    v18 = v16;
    memcpy(v6, v17, v16);
    v6 += v18;
    return v6;
  }

  return sub_1957130(a3, v17, v16, v6);
}

uint64_t sub_178D4CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 7) != 0)
  {
    v2 = 2 * (*(a1 + 16) & 1) + (*(a1 + 16) & 2u);
    if ((v1 & 4) != 0)
    {
      v3 = *(a1 + 28);
      v4 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v3 >= 0)
      {
        v5 = v4;
      }

      else
      {
        v5 = 11;
      }

      v2 += v5;
    }
  }

  else
  {
    v2 = 0;
  }

  v6 = *(a1 + 8);
  if (v6)
  {
    v8 = v6 & 0xFFFFFFFFFFFFFFFCLL;
    v9 = *((v6 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v9 < 0)
    {
      v9 = *(v8 + 16);
    }

    v2 += v9;
  }

  *(a1 + 20) = v2;
  return v2;
}

std::string *sub_178D550(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((v2 & 7) == 0)
  {
    goto LABEL_7;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_10:
    result[1].__r_.__value_.__s.__data_[1] = *(a2 + 25);
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  result[1].__r_.__value_.__s.__data_[0] = *(a2 + 24);
  if ((v2 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v2 & 4) != 0)
  {
LABEL_5:
    HIDWORD(result[1].__r_.__value_.__r.__words[0]) = *(a2 + 28);
  }

LABEL_6:
  LODWORD(result->__r_.__value_.__r.__words[2]) |= v2;
LABEL_7:
  v3 = *(a2 + 8);
  if (v3)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_178D5CC(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_8;
    }
  }

  else if (v4)
  {
    goto LABEL_8;
  }

  v5 = *(a1 + 8) & 1;
  if (a1 != &off_2782168)
  {
    v6 = *(a1 + 104);
    if (v6)
    {
      sub_178D000(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_1956ABC(a1 + 88);
  sub_1956ABC(a1 + 72);
  sub_1956ABC(a1 + 56);
  sub_1956ABC(a1 + 40);
  sub_1956ABC(a1 + 24);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_178D6AC(uint64_t a1)
{
  sub_178D5CC(a1);

  operator delete();
}

uint64_t sub_178D6E4(uint64_t result)
{
  v1 = result;
  *(result + 24) = 0;
  *(result + 40) = 0;
  *(result + 56) = 0;
  *(result + 72) = 0;
  *(result + 88) = 0;
  if (*(result + 16))
  {
    result = sub_178D0AC(*(result + 104));
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_1957EA8(v2);
  }

  return result;
}

char *sub_178D754(uint64_t a1, char *a2, int32x2_t *a3)
{
  v21 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v21, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = v21 + 1;
    v7 = *v21;
    if (*v21 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v21, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v21 + 2;
      }
    }

    v21 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 <= 3)
    {
      switch(v10)
      {
        case 1u:
          if (v7 != 10)
          {
            if (v7 == 9)
            {
              v22 = *v6;
              v16 = (a1 + 24);
LABEL_43:
              sub_1950044(v16, &v22);
              v21 += 8;
              continue;
            }

            goto LABEL_44;
          }

          v11 = a1 + 24;
          break;
        case 2u:
          if (v7 != 18)
          {
            if (v7 == 17)
            {
              v22 = *v6;
              v16 = (a1 + 40);
              goto LABEL_43;
            }

            goto LABEL_44;
          }

          v11 = a1 + 40;
          break;
        case 3u:
          if (v7 != 26)
          {
            if (v7 == 25)
            {
              v22 = *v6;
              v16 = (a1 + 56);
              goto LABEL_43;
            }

            goto LABEL_44;
          }

          v11 = a1 + 56;
          break;
        default:
          goto LABEL_44;
      }

      goto LABEL_30;
    }

    if (v10 == 4)
    {
      if (v7 != 34)
      {
        if (v7 == 33)
        {
          v22 = *v6;
          v16 = (a1 + 72);
          goto LABEL_43;
        }

        goto LABEL_44;
      }

      v11 = a1 + 72;
LABEL_30:
      v15 = sub_1958A20(v11, v6, a3);
      goto LABEL_31;
    }

    if (v10 == 5)
    {
      if (v7 != 42)
      {
        if (v7 == 41)
        {
          v22 = *v6;
          v16 = (a1 + 88);
          goto LABEL_43;
        }

LABEL_44:
        if (v7)
        {
          v17 = (v7 & 7) == 4;
        }

        else
        {
          v17 = 1;
        }

        if (v17)
        {
          if (v6)
          {
            a3[10].i32[0] = v7 - 1;
            return v21;
          }

          return 0;
        }

        v18 = *(a1 + 8);
        if (v18)
        {
          v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL) + 8;
        }

        else
        {
          v19 = sub_11F1920((a1 + 8));
          v6 = v21;
        }

        v15 = sub_1952690(v7, v19, v6, a3);
        goto LABEL_31;
      }

      v11 = a1 + 88;
      goto LABEL_30;
    }

    if (v10 != 6 || v7 != 50)
    {
      goto LABEL_44;
    }

    *(a1 + 16) |= 1u;
    v12 = *(a1 + 104);
    if (!v12)
    {
      v13 = *(a1 + 8);
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
      if (v13)
      {
        v14 = *v14;
      }

      v12 = sub_178E5BC(v14);
      *(a1 + 104) = v12;
      v6 = v21;
    }

    v15 = sub_224237C(a3, v12, v6);
LABEL_31:
    v21 = v15;
    if (!v15)
    {
      return 0;
    }
  }

  return v21;
}

char *sub_178D9D4(uint64_t a1, unint64_t __dst, _DWORD *a3)
{
  v4 = __dst;
  v6 = *(a1 + 24);
  if (v6 >= 1)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
      v6 = *(a1 + 24);
    }

    v7 = 8 * v6;
    *v4 = 10;
    v8 = v4 + 1;
    v9 = v7;
    if (v7 >= 0x80)
    {
      do
      {
        *v8++ = v9 | 0x80;
        v49 = v9 >> 14;
        v9 >>= 7;
      }

      while (v49);
      v4 = v8 - 1;
    }

    v10 = v4 + 2;
    *v8 = v9;
    v11 = *(a1 + 32);
    if (*a3 - v10 < v7)
    {
      v4 = sub_1957130(a3, v11, v7, v10);
    }

    else
    {
      v12 = v7;
      memcpy(v10, v11, v7);
      v4 = &v10[v12];
    }
  }

  v13 = *(a1 + 40);
  if (v13 >= 1)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
      v13 = *(a1 + 40);
    }

    v14 = 8 * v13;
    *v4 = 18;
    v15 = v4 + 1;
    v16 = v14;
    if (v14 >= 0x80)
    {
      do
      {
        *v15++ = v16 | 0x80;
        v50 = v16 >> 14;
        v16 >>= 7;
      }

      while (v50);
      v4 = v15 - 1;
    }

    v17 = v4 + 2;
    *v15 = v16;
    v18 = *(a1 + 48);
    if (*a3 - v17 < v14)
    {
      v4 = sub_1957130(a3, v18, v14, v17);
    }

    else
    {
      v19 = v14;
      memcpy(v17, v18, v14);
      v4 = &v17[v19];
    }
  }

  v20 = *(a1 + 56);
  if (v20 >= 1)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
      v20 = *(a1 + 56);
    }

    v21 = 8 * v20;
    *v4 = 26;
    v22 = v4 + 1;
    v23 = v21;
    if (v21 >= 0x80)
    {
      do
      {
        *v22++ = v23 | 0x80;
        v51 = v23 >> 14;
        v23 >>= 7;
      }

      while (v51);
      v4 = v22 - 1;
    }

    v24 = v4 + 2;
    *v22 = v23;
    v25 = *(a1 + 64);
    if (*a3 - v24 < v21)
    {
      v4 = sub_1957130(a3, v25, v21, v24);
    }

    else
    {
      v26 = v21;
      memcpy(v24, v25, v21);
      v4 = &v24[v26];
    }
  }

  v27 = *(a1 + 72);
  if (v27 >= 1)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
      v27 = *(a1 + 72);
    }

    v28 = 8 * v27;
    *v4 = 34;
    v29 = v4 + 1;
    v30 = v28;
    if (v28 >= 0x80)
    {
      do
      {
        *v29++ = v30 | 0x80;
        v52 = v30 >> 14;
        v30 >>= 7;
      }

      while (v52);
      v4 = v29 - 1;
    }

    v31 = v4 + 2;
    *v29 = v30;
    v32 = *(a1 + 80);
    if (*a3 - v31 < v28)
    {
      v4 = sub_1957130(a3, v32, v28, v31);
    }

    else
    {
      v33 = v28;
      memcpy(v31, v32, v28);
      v4 = &v31[v33];
    }
  }

  v34 = *(a1 + 88);
  if (v34 >= 1)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
      v34 = *(a1 + 88);
    }

    v35 = 8 * v34;
    *v4 = 42;
    v36 = v4 + 1;
    v37 = v35;
    if (v35 >= 0x80)
    {
      do
      {
        *v36++ = v37 | 0x80;
        v53 = v37 >> 14;
        v37 >>= 7;
      }

      while (v53);
      v4 = v36 - 1;
    }

    v38 = v4 + 2;
    *v36 = v37;
    v39 = *(a1 + 96);
    if (*a3 - v38 < v35)
    {
      v4 = sub_1957130(a3, v39, v35, v38);
    }

    else
    {
      v40 = v35;
      memcpy(v38, v39, v35);
      v4 = &v38[v40];
    }
  }

  if (*(a1 + 16))
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v41 = *(a1 + 104);
    *v4 = 50;
    v42 = *(v41 + 20);
    v4[1] = v42;
    if (v42 > 0x7F)
    {
      v43 = sub_19575D0(v42, v4 + 1);
    }

    else
    {
      v43 = v4 + 2;
    }

    v4 = sub_178D334(v41, v43, a3);
  }

  v44 = *(a1 + 8);
  if ((v44 & 1) == 0)
  {
    return v4;
  }

  v46 = v44 & 0xFFFFFFFFFFFFFFFCLL;
  v47 = *(v46 + 31);
  if (v47 < 0)
  {
    v48 = *(v46 + 8);
    v47 = *(v46 + 16);
  }

  else
  {
    v48 = (v46 + 8);
  }

  if (*a3 - v4 >= v47)
  {
    v54 = v47;
    memcpy(v4, v48, v47);
    v4 += v54;
    return v4;
  }

  return sub_1957130(a3, v48, v47, v4);
}

uint64_t sub_178DE3C(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = 8 * v2;
  if (v2)
  {
    if ((v3 & 0x80000000) != 0)
    {
      v4 = 11;
    }

    else
    {
      v4 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 + v3;
  v6 = *(a1 + 40);
  v7 = 8 * v6;
  if (v6)
  {
    if ((v7 & 0x80000000) != 0)
    {
      v8 = 11;
    }

    else
    {
      v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v5 += v8;
  }

  v9 = v5 + v7;
  v10 = *(a1 + 56);
  v11 = 8 * v10;
  if (v10)
  {
    if ((v11 & 0x80000000) != 0)
    {
      v12 = 11;
    }

    else
    {
      v12 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v9 += v12;
  }

  v13 = v9 + v11;
  v14 = *(a1 + 72);
  v15 = 8 * v14;
  if (v14)
  {
    v16 = 11;
    v17 = ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v15 >= 0)
    {
      v16 = v17;
    }

    v13 += v16;
  }

  v18 = v13 + v15;
  v19 = *(a1 + 88);
  v20 = 8 * v19;
  if (v19)
  {
    v21 = 11;
    v22 = ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v20 >= 0)
    {
      v21 = v22;
    }

    v18 += v21;
  }

  v23 = v18 + v20;
  if (*(a1 + 16))
  {
    v24 = sub_178D4CC(*(a1 + 104));
    v23 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v25 = *(a1 + 8);
  if (v25)
  {
    v27 = v25 & 0xFFFFFFFFFFFFFFFCLL;
    v28 = *((v25 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v28 < 0)
    {
      v28 = *(v27 + 16);
    }

    v23 += v28;
  }

  *(a1 + 20) = v23;
  return v23;
}

std::string *sub_178DFEC(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = result + 1;
    data_low = SLODWORD(result[1].__r_.__value_.__l.__data_);
    sub_1959094(&result[1], data_low + v4);
    size = v3[1].__r_.__value_.__l.__size_;
    LODWORD(v5->__r_.__value_.__l.__data_) += *(a2 + 24);
    result = memcpy((size + 8 * data_low), *(a2 + 32), 8 * *(a2 + 24));
  }

  v8 = *(a2 + 40);
  if (v8)
  {
    v9 = SLODWORD(v3[1].__r_.__value_.__r.__words[2]);
    sub_1959094(&v3[1].__r_.__value_.__r.__words[2], v9 + v8);
    data = v3[2].__r_.__value_.__l.__data_;
    LODWORD(v3[1].__r_.__value_.__r.__words[2]) += *(a2 + 40);
    result = memcpy(&data[8 * v9], *(a2 + 48), 8 * *(a2 + 40));
  }

  v11 = *(a2 + 56);
  if (v11)
  {
    v12 = SLODWORD(v3[2].__r_.__value_.__r.__words[1]);
    sub_1959094(&v3[2].__r_.__value_.__r.__words[1], v12 + v11);
    v13 = v3[2].__r_.__value_.__r.__words[2];
    LODWORD(v3[2].__r_.__value_.__r.__words[1]) += *(a2 + 56);
    result = memcpy((v13 + 8 * v12), *(a2 + 64), 8 * *(a2 + 56));
  }

  v14 = *(a2 + 72);
  if (v14)
  {
    v15 = SLODWORD(v3[3].__r_.__value_.__l.__data_);
    sub_1959094(&v3[3], v15 + v14);
    v16 = v3[3].__r_.__value_.__l.__size_;
    LODWORD(v3[3].__r_.__value_.__l.__data_) += *(a2 + 72);
    result = memcpy((v16 + 8 * v15), *(a2 + 80), 8 * *(a2 + 72));
  }

  v17 = *(a2 + 88);
  if (v17)
  {
    v18 = SLODWORD(v3[3].__r_.__value_.__r.__words[2]);
    sub_1959094(&v3[3].__r_.__value_.__r.__words[2], v18 + v17);
    v19 = v3[4].__r_.__value_.__l.__data_;
    LODWORD(v3[3].__r_.__value_.__r.__words[2]) += *(a2 + 88);
    result = memcpy(&v19[8 * v18], *(a2 + 96), 8 * *(a2 + 88));
  }

  if (*(a2 + 16))
  {
    v20 = *(a2 + 104);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
    v21 = v3[4].__r_.__value_.__l.__size_;
    if (!v21)
    {
      v22 = v3->__r_.__value_.__l.__size_;
      v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      if (v22)
      {
        v23 = *v23;
      }

      v21 = sub_178E5BC(v23);
      v3[4].__r_.__value_.__l.__size_ = v21;
      v20 = *(a2 + 104);
    }

    if (v20)
    {
      v24 = v20;
    }

    else
    {
      v24 = &off_2782148;
    }

    result = sub_178D550(v21, v24);
  }

  v25 = *(a2 + 8);
  if (v25)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v25 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

double sub_178E20C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = off_27099D0;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = a1;
  result = 0.0;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  return result;
}

void *sub_178E2C4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_2709A50;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = 0;
  return result;
}

uint64_t sub_178E360(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_2709AD0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  return result;
}

uint64_t sub_178E404(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_2709B50;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a1;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = a1;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 80) = 0;
  return result;
}

uint64_t sub_178E4BC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_2709BD0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

double sub_178E538(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = off_2709C50;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0;
  return result;
}

void *sub_178E5BC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_2709CD0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

double sub_178E634(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = off_2709D50;
  v2[1] = a1;
  v2[2] = 0;
  v2[3] = 0;
  v2[4] = a1;
  result = 0.0;
  v2[5] = 0;
  v2[6] = a1;
  v2[7] = 0;
  v2[8] = a1;
  v2[9] = 0;
  v2[10] = a1;
  v2[11] = 0;
  v2[12] = a1;
  v2[13] = 0;
  return result;
}

void *sub_178E6F8(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1956ABC((a1 + 6));
  sub_1956ABC((a1 + 3));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_178E77C(void *a1)
{
  sub_178E6F8(a1);

  operator delete();
}

uint64_t sub_178E7B4(uint64_t a1)
{
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  if ((*(a1 + 16) & 3) != 0)
  {
    *(a1 + 80) = 0;
    *(a1 + 72) = 0;
  }

  v2 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_178E7E4(uint64_t a1, char *a2, int32x2_t *a3)
{
  v28 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v28, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v28 + 1;
    v8 = *v28;
    if (*v28 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v28, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v28 + 2;
      }
    }

    v28 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 4)
    {
      break;
    }

    if (v11 != 2)
    {
      if (v11 == 4)
      {
        if (v8 == 34)
        {
          v12 = (a1 + 24);
          goto LABEL_16;
        }

        if (v8 == 32)
        {
          v29 = sub_1211E88(&v28);
          v24 = (a1 + 24);
          goto LABEL_35;
        }
      }

      goto LABEL_37;
    }

    if (v8 != 16)
    {
      goto LABEL_37;
    }

    v5 |= 2u;
    v14 = v7 + 1;
    v15 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    v16 = *v14;
    v15 = v15 + (v16 << 7) - 128;
    if ((v16 & 0x80000000) == 0)
    {
      v14 = v7 + 2;
LABEL_21:
      v28 = v14;
      *(a1 + 80) = v15;
      goto LABEL_45;
    }

    v20 = sub_1958770(v7, v15);
    v28 = v20;
    *(a1 + 80) = v21;
    if (!v20)
    {
      goto LABEL_50;
    }

LABEL_45:
    if (sub_195ADC0(a3, &v28, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 5)
  {
    if (v8 != 40)
    {
      goto LABEL_37;
    }

    v5 |= 1u;
    v18 = v7 + 1;
    v17 = *v7;
    if ((v17 & 0x8000000000000000) == 0)
    {
      goto LABEL_26;
    }

    v19 = *v18;
    v17 = (v19 << 7) + v17 - 128;
    if ((v19 & 0x80000000) == 0)
    {
      v18 = v7 + 2;
LABEL_26:
      v28 = v18;
      *(a1 + 72) = v17;
      goto LABEL_45;
    }

    v22 = sub_19587DC(v7, v17);
    v28 = v22;
    *(a1 + 72) = v23;
    if (!v22)
    {
      goto LABEL_50;
    }

    goto LABEL_45;
  }

  if (v11 == 6)
  {
    if (v8 == 50)
    {
      v12 = (a1 + 48);
LABEL_16:
      v13 = sub_1958918(v12, v7, a3);
LABEL_44:
      v28 = v13;
      if (!v13)
      {
        goto LABEL_50;
      }

      goto LABEL_45;
    }

    if (v8 == 48)
    {
      v29 = sub_1211E88(&v28);
      v24 = (a1 + 48);
LABEL_35:
      sub_194FE98(v24, &v29);
      if (!v28)
      {
        goto LABEL_50;
      }

      goto LABEL_45;
    }
  }

LABEL_37:
  if (v8)
  {
    v25 = (v8 & 7) == 4;
  }

  else
  {
    v25 = 1;
  }

  if (!v25)
  {
    v26 = *(a1 + 8);
    if (v26)
    {
      v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v27 = sub_11F1920((a1 + 8));
      v7 = v28;
    }

    v13 = sub_1952690(v8, v27, v7, a3);
    goto LABEL_44;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_50:
  v28 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v28;
}

char *sub_178EA60(uint64_t a1, char *__dst, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 80);
    *__dst = 16;
    __dst[1] = v7;
    if (v7 > 0x7F)
    {
      __dst[1] = v7 | 0x80;
      v8 = v7 >> 7;
      __dst[2] = v7 >> 7;
      v6 = __dst + 3;
      if (v7 >= 0x4000)
      {
        LOBYTE(v9) = __dst[2];
        do
        {
          *(v6 - 1) = v9 | 0x80;
          v9 = v8 >> 7;
          *v6++ = v8 >> 7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
      }
    }

    else
    {
      v6 = __dst + 2;
    }
  }

  else
  {
    v6 = __dst;
  }

  v11 = *(a1 + 40);
  if (v11 >= 1)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    *v6 = 34;
    v12 = v6 + 1;
    if (v11 >= 0x80)
    {
      do
      {
        *v12++ = v11 | 0x80;
        v39 = v11 >> 14;
        v11 >>= 7;
      }

      while (v39);
      v6 = v12 - 1;
    }

    v13 = v6 + 2;
    *v12 = v11;
    v14 = *(a1 + 32);
    v15 = &v14[*(a1 + 24)];
    do
    {
      if (*a3 <= v13)
      {
        v13 = sub_225EB68(a3, v13);
      }

      v17 = *v14++;
      v16 = v17;
      *v13 = v17;
      if (v17 > 0x7F)
      {
        *v13 = v16 | 0x80;
        v18 = v16 >> 7;
        v13[1] = v16 >> 7;
        v6 = v13 + 2;
        if (v16 >= 0x4000)
        {
          LOBYTE(v13) = v13[1];
          do
          {
            *(v6 - 1) = v13 | 0x80;
            LODWORD(v13) = v18 >> 7;
            *v6++ = v18 >> 7;
            v19 = v18 >> 14;
            v18 >>= 7;
          }

          while (v19);
        }
      }

      else
      {
        v6 = v13 + 1;
      }

      v13 = v6;
    }

    while (v14 < v15);
  }

  if (v5)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v21 = *(a1 + 72);
    *v6 = 40;
    v6[1] = v21;
    if (v21 > 0x7F)
    {
      v6[1] = v21 | 0x80;
      v22 = v21 >> 7;
      v6[2] = v21 >> 7;
      v20 = v6 + 3;
      if (v21 >= 0x4000)
      {
        LOBYTE(v6) = v6[2];
        do
        {
          *(v20 - 1) = v6 | 0x80;
          v6 = (v22 >> 7);
          *v20++ = v22 >> 7;
          v23 = v22 >> 14;
          v22 >>= 7;
        }

        while (v23);
      }
    }

    else
    {
      v20 = v6 + 2;
    }
  }

  else
  {
    v20 = v6;
  }

  v24 = *(a1 + 64);
  if (v24 >= 1)
  {
    if (*a3 <= v20)
    {
      v20 = sub_225EB68(a3, v20);
    }

    *v20 = 50;
    v25 = v20 + 1;
    if (v24 >= 0x80)
    {
      do
      {
        *v25++ = v24 | 0x80;
        v40 = v24 >> 14;
        v24 >>= 7;
      }

      while (v40);
      v20 = v25 - 1;
    }

    v26 = v20 + 2;
    *v25 = v24;
    v27 = *(a1 + 56);
    v28 = &v27[*(a1 + 48)];
    do
    {
      if (*a3 <= v26)
      {
        v26 = sub_225EB68(a3, v26);
      }

      v30 = *v27++;
      v29 = v30;
      *v26 = v30;
      if (v30 > 0x7F)
      {
        *v26 = v29 | 0x80;
        v31 = v29 >> 7;
        v26[1] = v29 >> 7;
        v20 = v26 + 2;
        if (v29 >= 0x4000)
        {
          LOBYTE(v32) = v26[1];
          do
          {
            *(v20 - 1) = v32 | 0x80;
            v32 = v31 >> 7;
            *v20++ = v31 >> 7;
            v33 = v31 >> 14;
            v31 >>= 7;
          }

          while (v33);
        }
      }

      else
      {
        v20 = v26 + 1;
      }

      v26 = v20;
    }

    while (v27 < v28);
  }

  v34 = *(a1 + 8);
  if ((v34 & 1) == 0)
  {
    return v20;
  }

  v36 = v34 & 0xFFFFFFFFFFFFFFFCLL;
  v37 = *(v36 + 31);
  if (v37 < 0)
  {
    v38 = *(v36 + 8);
    v37 = *(v36 + 16);
  }

  else
  {
    v38 = (v36 + 8);
  }

  if (*a3 - v20 >= v37)
  {
    v41 = v37;
    memcpy(v20, v38, v37);
    v20 += v41;
    return v20;
  }

  return sub_1957130(a3, v38, v37, v20);
}

uint64_t sub_178EE00(uint64_t a1)
{
  v2 = sub_1959E5C((a1 + 24));
  if (v2)
  {
    v3 = v2;
    if ((v2 & 0x80000000) != 0)
    {
      v4 = 11;
    }

    else
    {
      v4 = ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  *(a1 + 40) = v3;
  v5 = v4 + v2;
  v6 = sub_1959E5C((a1 + 48));
  if (v6)
  {
    v7 = v6;
    if ((v6 & 0x80000000) != 0)
    {
      v8 = 11;
    }

    else
    {
      v8 = ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v5 += v8;
  }

  else
  {
    v7 = 0;
  }

  *(a1 + 64) = v7;
  result = v5 + v6;
  v10 = *(a1 + 16);
  if ((v10 & 3) != 0)
  {
    if (v10)
    {
      result += ((9 * (__clz(*(a1 + 72) | 1) ^ 0x3F) + 73) >> 6) + 1;
    }

    if ((v10 & 2) != 0)
    {
      result += ((9 * (__clz(*(a1 + 80) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  v11 = *(a1 + 8);
  if (v11)
  {
    v12 = v11 & 0xFFFFFFFFFFFFFFFCLL;
    v13 = *((v11 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v13 < 0)
    {
      v13 = *(v12 + 16);
    }

    result += v13;
  }

  *(a1 + 20) = result;
  return result;
}

std::string *sub_178EF38(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = result + 1;
    data_low = SLODWORD(result[1].__r_.__value_.__l.__data_);
    sub_1958E5C(&result[1], data_low + v4);
    size = v3[1].__r_.__value_.__l.__size_;
    LODWORD(v5->__r_.__value_.__l.__data_) += *(a2 + 24);
    result = memcpy((size + 4 * data_low), *(a2 + 32), 4 * *(a2 + 24));
  }

  v8 = *(a2 + 48);
  if (v8)
  {
    v9 = SLODWORD(v3[2].__r_.__value_.__l.__data_);
    sub_1958E5C(&v3[2], v9 + v8);
    v10 = v3[2].__r_.__value_.__l.__size_;
    LODWORD(v3[2].__r_.__value_.__l.__data_) += *(a2 + 48);
    result = memcpy((v10 + 4 * v9), *(a2 + 56), 4 * *(a2 + 48));
  }

  v11 = *(a2 + 16);
  if ((v11 & 3) != 0)
  {
    if (v11)
    {
      v3[3].__r_.__value_.__r.__words[0] = *(a2 + 72);
    }

    if ((v11 & 2) != 0)
    {
      LODWORD(v3[3].__r_.__value_.__r.__words[1]) = *(a2 + 80);
    }

    LODWORD(v3->__r_.__value_.__r.__words[2]) |= v11;
  }

  v12 = *(a2 + 8);
  if (v12)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_178F068(uint64_t a1)
{
  if ((*(a1 + 16) & 3) != 0)
  {
    *(a1 + 24) = 0;
  }

  v2 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

std::string *sub_178F08C(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      LODWORD(result[1].__r_.__value_.__l.__data_) = *(a2 + 24);
    }

    if ((v2 & 2) != 0)
    {
      HIDWORD(result[1].__r_.__value_.__r.__words[0]) = *(a2 + 28);
    }

    LODWORD(result->__r_.__value_.__r.__words[2]) |= v2;
  }

  v3 = *(a2 + 8);
  if (v3)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_178F0D8(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_178F14C(void *a1)
{
  sub_178F0D8(a1);

  operator delete();
}

char *sub_178F184(uint64_t a1, char *a2, int32x2_t *a3)
{
  v18 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v18, a3[11].i32[1]))
  {
    goto LABEL_35;
  }

  while (1)
  {
    v6 = v18 + 1;
    v7 = *v18;
    if (*v18 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v18, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v18 + 2;
      }
    }

    v18 = v6;
    if (v7 >> 3 == 3)
    {
      if (v7 != 24)
      {
        goto LABEL_11;
      }

      v15 = v6 + 1;
      v14 = *v6;
      if (v14 < 0)
      {
        v16 = *v15;
        v14 = (v16 << 7) + v14 - 128;
        if (v16 < 0)
        {
          v18 = sub_19587DC(v6, v14);
          if (!v18)
          {
            goto LABEL_36;
          }

          goto LABEL_24;
        }

        v15 = v6 + 2;
      }

      v18 = v15;
LABEL_24:
      if (v14 > 4)
      {
        sub_1313740();
      }

      else
      {
        *(a1 + 16) |= 2u;
        *(a1 + 28) = v14;
      }

      goto LABEL_27;
    }

    if (v7 >> 3 == 1 && v7 == 13)
    {
      *(a1 + 24) = *v6;
      v18 = v6 + 4;
      v5 = 1;
      goto LABEL_27;
    }

LABEL_11:
    if (!v7 || (v7 & 7) == 4)
    {
      break;
    }

    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v13 = sub_11F1920((a1 + 8));
      v6 = v18;
    }

    v18 = sub_1952690(v7, v13, v6, a3);
    if (!v18)
    {
      goto LABEL_36;
    }

LABEL_27:
    if (sub_195ADC0(a3, &v18, a3[11].i32[1]))
    {
      goto LABEL_35;
    }
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    goto LABEL_35;
  }

LABEL_36:
  v18 = 0;
LABEL_35:
  *(a1 + 16) |= v5;
  return v18;
}

char *sub_178F340(uint64_t a1, char *__dst, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 24);
    *__dst = 13;
    *(__dst + 1) = v6;
    __dst += 5;
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v8 = *(a1 + 28);
    *__dst = 24;
    __dst[1] = v8;
    if (v8 > 0x7F)
    {
      __dst[1] = v8 | 0x80;
      v9 = v8 >> 7;
      __dst[2] = v8 >> 7;
      v7 = __dst + 3;
      if (v8 >= 0x4000)
      {
        LOBYTE(v10) = __dst[2];
        do
        {
          *(v7 - 1) = v10 | 0x80;
          v10 = v9 >> 7;
          *v7++ = v9 >> 7;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
      }
    }

    else
    {
      v7 = __dst + 2;
    }
  }

  else
  {
    v7 = __dst;
  }

  v12 = *(a1 + 8);
  if ((v12 & 1) == 0)
  {
    return v7;
  }

  v14 = v12 & 0xFFFFFFFFFFFFFFFCLL;
  v15 = *(v14 + 31);
  if (v15 < 0)
  {
    v16 = *(v14 + 8);
    v15 = *(v14 + 16);
  }

  else
  {
    v16 = (v14 + 8);
  }

  if (*a3 - v7 >= v15)
  {
    v17 = v15;
    memcpy(v7, v16, v15);
    v7 += v17;
    return v7;
  }

  return sub_1957130(a3, v16, v15, v7);
}

uint64_t sub_178F49C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) != 0)
  {
    v2 = 5;
    if ((v1 & 1) == 0)
    {
      v2 = 0;
    }

    if ((v1 & 2) != 0)
    {
      v3 = *(a1 + 28);
      if (v3 < 0)
      {
        v4 = 11;
      }

      else
      {
        v4 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v2 += v4;
    }
  }

  else
  {
    v2 = 0;
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL;
    v8 = *((v5 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v8 < 0)
    {
      v8 = *(v7 + 16);
    }

    v2 += v8;
  }

  *(a1 + 20) = v2;
  return v2;
}

uint64_t sub_178F538(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_2709DD0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a1;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = a1;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 80) = 0;
  return result;
}

void *sub_178F5F8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_2709E50;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void sub_178FADC(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_178B80C(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_178FB60(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_178D5CC(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_178FBE4(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_1789B14(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_178FC68(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 2;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_178B218();
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t *sub_178FCEC(uint64_t *result, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      result = sub_178E404(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = sub_178FD68(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_178FD78(uint64_t *a1, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      sub_178E634(v9);
      *v10++ = v11;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v13 = *a3++;
      v12 = v13;
      v14 = *v7++;
      sub_178FDF4(v12, v14);
      --v5;
    }

    while (v5);
  }
}

void sub_178FE04(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      sub_178E20C(v9);
      *v10++ = v11;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v13 = *a3++;
      v12 = v13;
      v14 = *v7++;
      sub_178FE80(v12, v14);
      --v5;
    }

    while (v5);
  }
}

uint64_t *sub_178FE90(uint64_t *result, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      result = sub_178E360(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = sub_178FF0C(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t *sub_178FF1C(int a1)
{
  if ((atomic_load_explicit(&qword_27E5BD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E5BD0))
  {
    byte_27E5BC8 = sub_1956BB4(&qword_27E5B38, dword_23579A8, 6, byte_27E5BD8);
    __cxa_guard_release(&qword_27E5BD0);
  }

  v2 = sub_1956B30(&qword_27E5B38, dword_23579A8, 6uLL, a1);
  if (v2 != -1)
  {
    return &byte_27E5BD8[24 * v2];
  }

  if ((atomic_load_explicit(byte_278E9A8, memory_order_acquire) & 1) == 0)
  {
    sub_1956C4C();
  }

  return &qword_278E990;
}

uint64_t sub_1790004(uint64_t result, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *result = off_2709FD8;
  *(result + 8) = v3;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  *(result + 40) = 0;
  return result;
}

void *sub_179003C(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_17900B0(void *a1)
{
  sub_179003C(a1);

  operator delete();
}

uint64_t sub_17900E8(uint64_t a1)
{
  if ((*(a1 + 16) & 7) != 0)
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
  }

  v2 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_1790110(uint64_t a1, char *a2, int32x2_t *a3)
{
  v29 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v29, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v29 + 1;
    v8 = *v29;
    if (*v29 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v29, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v29 + 2;
      }
    }

    v29 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 == 3)
    {
      break;
    }

    if (v11 == 2)
    {
      if (v8 != 16)
      {
        goto LABEL_13;
      }

      v5 |= 2u;
      v17 = v7 + 1;
      v16 = *v7;
      if ((v16 & 0x8000000000000000) == 0)
      {
        goto LABEL_25;
      }

      v18 = *v17;
      v16 = (v18 << 7) + v16 - 128;
      if ((v18 & 0x80000000) == 0)
      {
        v17 = v7 + 2;
LABEL_25:
        v29 = v17;
        *(a1 + 32) = v16;
        goto LABEL_37;
      }

      v25 = sub_19587DC(v7, v16);
      v29 = v25;
      *(a1 + 32) = v26;
      if (!v25)
      {
        goto LABEL_49;
      }
    }

    else
    {
      if (v11 != 1 || v8 != 8)
      {
        goto LABEL_13;
      }

      v5 |= 1u;
      v23 = v7 + 1;
      v22 = *v7;
      if ((v22 & 0x8000000000000000) == 0)
      {
        goto LABEL_36;
      }

      v24 = *v23;
      v22 = (v24 << 7) + v22 - 128;
      if ((v24 & 0x80000000) == 0)
      {
        v23 = v7 + 2;
LABEL_36:
        v29 = v23;
        *(a1 + 24) = v22;
        goto LABEL_37;
      }

      v27 = sub_19587DC(v7, v22);
      v29 = v27;
      *(a1 + 24) = v28;
      if (!v27)
      {
        goto LABEL_49;
      }
    }

LABEL_37:
    if (sub_195ADC0(a3, &v29, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 24)
  {
    v20 = v7 + 1;
    v19 = *v7;
    if (v19 < 0)
    {
      v21 = *v20;
      v19 = (v21 << 7) + v19 - 128;
      if (v21 < 0)
      {
        v29 = sub_19587DC(v7, v19);
        if (!v29)
        {
          goto LABEL_49;
        }

        goto LABEL_31;
      }

      v20 = v7 + 2;
    }

    v29 = v20;
LABEL_31:
    if (v19 > 6)
    {
      sub_1313740();
    }

    else
    {
      *(a1 + 16) |= 4u;
      *(a1 + 40) = v19;
    }

    goto LABEL_37;
  }

LABEL_13:
  if (v8)
  {
    v13 = (v8 & 7) == 4;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    v14 = *(a1 + 8);
    if (v14)
    {
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v15 = sub_11F1920((a1 + 8));
      v7 = v29;
    }

    v29 = sub_1952690(v8, v15, v7, a3);
    if (!v29)
    {
      goto LABEL_49;
    }

    goto LABEL_37;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_49:
  v29 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v29;
}

char *sub_1790370(uint64_t a1, char *__dst, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 24);
    *__dst = 8;
    __dst[1] = v7;
    if (v7 > 0x7F)
    {
      __dst[1] = v7 | 0x80;
      v8 = v7 >> 7;
      __dst[2] = v7 >> 7;
      v6 = __dst + 3;
      if (v7 >= 0x4000)
      {
        LOBYTE(v9) = __dst[2];
        do
        {
          *(v6 - 1) = v9 | 0x80;
          v9 = v8 >> 7;
          *v6++ = v8 >> 7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
      }
    }

    else
    {
      v6 = __dst + 2;
    }
  }

  else
  {
    v6 = __dst;
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 32);
    *v6 = 16;
    v6[1] = v12;
    if (v12 > 0x7F)
    {
      v6[1] = v12 | 0x80;
      v13 = v12 >> 7;
      v6[2] = v12 >> 7;
      v11 = v6 + 3;
      if (v12 >= 0x4000)
      {
        LOBYTE(v6) = v6[2];
        do
        {
          *(v11 - 1) = v6 | 0x80;
          v6 = (v13 >> 7);
          *v11++ = v13 >> 7;
          v14 = v13 >> 14;
          v13 >>= 7;
        }

        while (v14);
      }
    }

    else
    {
      v11 = v6 + 2;
    }
  }

  else
  {
    v11 = v6;
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v16 = *(a1 + 40);
    *v11 = 24;
    v11[1] = v16;
    if (v16 > 0x7F)
    {
      v11[1] = v16 | 0x80;
      v17 = v16 >> 7;
      v11[2] = v16 >> 7;
      v15 = v11 + 3;
      if (v16 >= 0x4000)
      {
        LOBYTE(v18) = v11[2];
        do
        {
          *(v15 - 1) = v18 | 0x80;
          v18 = v17 >> 7;
          *v15++ = v17 >> 7;
          v19 = v17 >> 14;
          v17 >>= 7;
        }

        while (v19);
      }
    }

    else
    {
      v15 = v11 + 2;
    }
  }

  else
  {
    v15 = v11;
  }

  v20 = *(a1 + 8);
  if ((v20 & 1) == 0)
  {
    return v15;
  }

  v22 = v20 & 0xFFFFFFFFFFFFFFFCLL;
  v23 = *(v22 + 31);
  if (v23 < 0)
  {
    v24 = *(v22 + 8);
    v23 = *(v22 + 16);
  }

  else
  {
    v24 = (v22 + 8);
  }

  if (*a3 - v15 >= v23)
  {
    v25 = v23;
    memcpy(v15, v24, v23);
    v15 += v25;
    return v15;
  }

  return sub_1957130(a3, v24, v23, v15);
}

unint64_t sub_17905A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 7) == 0)
  {
    v2 = 0;
    goto LABEL_13;
  }

  if (v1)
  {
    v2 = ((9 * (__clz(*(a1 + 24) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v1 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v2 = 0;
  if ((v1 & 2) != 0)
  {
LABEL_7:
    v2 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v1 & 4) != 0)
  {
    v3 = *(a1 + 40);
    if (v3 < 0)
    {
      v4 = 11;
    }

    else
    {
      v4 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v4;
  }

LABEL_13:
  v5 = *(a1 + 8);
  if (v5)
  {
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL;
    v8 = *((v5 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v8 < 0)
    {
      v8 = *(v7 + 16);
    }

    v2 += v8;
  }

  *(a1 + 20) = v2;
  return v2;
}

std::string *sub_1790670(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((v2 & 7) == 0)
  {
    goto LABEL_7;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_10:
    result[1].__r_.__value_.__l.__size_ = *(a2 + 32);
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  result[1].__r_.__value_.__r.__words[0] = *(a2 + 24);
  if ((v2 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v2 & 4) != 0)
  {
LABEL_5:
    LODWORD(result[1].__r_.__value_.__r.__words[2]) = *(a2 + 40);
  }

LABEL_6:
  LODWORD(result->__r_.__value_.__r.__words[2]) |= v2;
LABEL_7:
  v3 = *(a2 + 8);
  if (v3)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

std::string *sub_17906D4(std::string *result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_17900E8(result);

    return sub_1790670(v4, a2);
  }

  return result;
}

void *sub_1790738(void *result, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *result = off_270A058;
  result[1] = v3;
  result[2] = 0;
  result[3] = a2;
  result[4] = 0;
  result[5] = 0;
  result[6] = &qword_278E990;
  result[7] = &qword_278E990;
  result[8] = &qword_278E990;
  result[9] = &qword_278E990;
  return result;
}

uint64_t sub_1790780(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_270A058;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 44) = 0;
  *(a1 + 28) = 0;
  *(a1 + 36) = 0;
  *(a1 + 20) = 0;
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_193A45C((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
    v8 = *(a1 + 32) + v5;
    *(a1 + 32) = v8;
    v9 = *(a1 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 8);
  if (v10)
  {
    sub_1957EF4(v4, (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  *(a1 + 48) = &qword_278E990;
  v11 = *(a2 + 16);
  if (v11)
  {
    v12 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v12 = *v12;
    }

    sub_194EA1C((a1 + 48), (*(a2 + 48) & 0xFFFFFFFFFFFFFFFELL), v12);
    v11 = *(a2 + 16);
  }

  *(a1 + 56) = &qword_278E990;
  if ((v11 & 2) != 0)
  {
    v13 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v13 = *v13;
    }

    sub_194EA1C((a1 + 56), (*(a2 + 56) & 0xFFFFFFFFFFFFFFFELL), v13);
    v11 = *(a2 + 16);
  }

  *(a1 + 64) = &qword_278E990;
  if ((v11 & 4) != 0)
  {
    v14 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v14 = *v14;
    }

    sub_194EA1C((a1 + 64), (*(a2 + 64) & 0xFFFFFFFFFFFFFFFELL), v14);
    v11 = *(a2 + 16);
  }

  *(a1 + 72) = &qword_278E990;
  if ((v11 & 8) != 0)
  {
    v15 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v15 = *v15;
    }

    sub_194EA1C((a1 + 72), (*(a2 + 72) & 0xFFFFFFFFFFFFFFFELL), v15);
  }

  return a1;
}

void sub_1790930(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1790974(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_13;
    }
  }

  else if (v4)
  {
    goto LABEL_13;
  }

  v5 = (a1 + 48);
  if (*(a1 + 48) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 56) != &qword_278E990)
  {
    sub_194E89C((a1 + 56));
  }

  if (*(a1 + 64) != &qword_278E990)
  {
    sub_194E89C((a1 + 64));
  }

  if (*(a1 + 72) != &qword_278E990)
  {
    sub_194E89C((a1 + 72));
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_13:
  sub_193A3D8((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1790A60(uint64_t a1)
{
  sub_1790974(a1);

  operator delete();
}

uint64_t sub_1790A98(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_17900E8(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if ((v5 & 0xF) != 0)
  {
    if ((v5 & 1) == 0)
    {
      if ((v5 & 2) == 0)
      {
        goto LABEL_8;
      }

LABEL_15:
      v7 = *(v1 + 56) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v7 + 23) < 0)
      {
        **v7 = 0;
        *(v7 + 8) = 0;
        if ((v5 & 4) != 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        *v7 = 0;
        *(v7 + 23) = 0;
        if ((v5 & 4) != 0)
        {
          goto LABEL_19;
        }
      }

LABEL_9:
      if ((v5 & 8) == 0)
      {
        goto LABEL_26;
      }

LABEL_23:
      v9 = *(v1 + 72) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v9 + 23) < 0)
      {
        **v9 = 0;
        *(v9 + 8) = 0;
      }

      else
      {
        *v9 = 0;
        *(v9 + 23) = 0;
      }

      goto LABEL_26;
    }

    v6 = *(v1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
      if ((v5 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v5 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

LABEL_8:
    if ((v5 & 4) == 0)
    {
      goto LABEL_9;
    }

LABEL_19:
    v8 = *(v1 + 64) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v8 + 23) < 0)
    {
      **v8 = 0;
      *(v8 + 8) = 0;
      if ((v5 & 8) == 0)
      {
        goto LABEL_26;
      }
    }

    else
    {
      *v8 = 0;
      *(v8 + 23) = 0;
      if ((v5 & 8) == 0)
      {
        goto LABEL_26;
      }
    }

    goto LABEL_23;
  }

LABEL_26:
  v11 = *(v1 + 8);
  v10 = v1 + 8;
  *(v10 + 8) = 0;
  if (v11)
  {

    return sub_1957EA8(v10);
  }

  return result;
}

uint64_t sub_1790BF0(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v30 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, v30, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = (*v30 + 1);
    v7 = **v30;
    if (**v30 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v30, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v30 + 2);
      }
    }

    *v30 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 <= 2)
    {
      if (v10 == 1)
      {
        if (v7 == 10)
        {
          *(a1 + 16) |= 1u;
          v23 = *(a1 + 8);
          v19 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
          if (v23)
          {
            v19 = *v19;
          }

          v20 = (a1 + 48);
          goto LABEL_42;
        }
      }

      else if (v10 == 2 && v7 == 18)
      {
        *(a1 + 16) |= 2u;
        v18 = *(a1 + 8);
        v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
        if (v18)
        {
          v19 = *v19;
        }

        v20 = (a1 + 56);
        goto LABEL_42;
      }
    }

    else if (v10 == 3)
    {
      if (v7 == 26)
      {
        *(a1 + 16) |= 4u;
        v21 = *(a1 + 8);
        v19 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
        if (v21)
        {
          v19 = *v19;
        }

        v20 = (a1 + 64);
        goto LABEL_42;
      }
    }

    else if (v10 == 4)
    {
      if (v7 == 34)
      {
        *(a1 + 16) |= 8u;
        v22 = *(a1 + 8);
        v19 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
        if (v22)
        {
          v19 = *v19;
        }

        v20 = (a1 + 72);
LABEL_42:
        v24 = sub_194DB04(v20, v19);
        v25 = sub_1958890(v24, *v30, a3);
        goto LABEL_43;
      }
    }

    else if (v10 == 5 && v7 == 42)
    {
      v11 = v6 - 1;
      while (1)
      {
        v12 = (v11 + 1);
        *v30 = v11 + 1;
        v13 = *(a1 + 40);
        if (v13 && (v14 = *(a1 + 32), v14 < *v13))
        {
          *(a1 + 32) = v14 + 1;
          v15 = *&v13[2 * v14 + 2];
        }

        else
        {
          v16 = sub_1792A8C(*(a1 + 24));
          v15 = sub_19593CC(a1 + 24, v16);
          v12 = *v30;
        }

        v11 = sub_224240C(a3, v15, v12);
        *v30 = v11;
        if (!v11)
        {
          break;
        }

        if (*a3 <= v11 || *v11 != 42)
        {
          goto LABEL_44;
        }
      }

LABEL_56:
      *v30 = 0;
      return *v30;
    }

    if (v7)
    {
      v26 = (v7 & 7) == 4;
    }

    else
    {
      v26 = 1;
    }

    if (v26)
    {
      if (v6)
      {
        a3[10].i32[0] = v7 - 1;
        return *v30;
      }

      goto LABEL_56;
    }

    v27 = *(a1 + 8);
    if (v27)
    {
      v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v28 = sub_11F1920((a1 + 8));
      v6 = *v30;
    }

    v25 = sub_1952690(v7, v28, v6, a3);
LABEL_43:
    *v30 = v25;
    if (!v25)
    {
      goto LABEL_56;
    }

LABEL_44:
    ;
  }

  return *v30;
}

char *sub_1790E84(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, __dst);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_128AEEC(a3, 2, *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_18:
  v4 = sub_128AEEC(a3, 3, *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 8) != 0)
  {
LABEL_5:
    v4 = sub_128AEEC(a3, 4, *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL, v4);
  }

LABEL_6:
  v7 = *(a1 + 32);
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v9 = *(*(a1 + 40) + 8 * i + 8);
      *v4 = 42;
      v10 = *(v9 + 20);
      v4[1] = v10;
      if (v10 > 0x7F)
      {
        v11 = sub_19575D0(v10, v4 + 1);
      }

      else
      {
        v11 = v4 + 2;
      }

      v4 = sub_1790370(v9, v11, a3);
    }
  }

  v12 = *(a1 + 8);
  if ((v12 & 1) == 0)
  {
    return v4;
  }

  v14 = v12 & 0xFFFFFFFFFFFFFFFCLL;
  v15 = *(v14 + 31);
  if (v15 < 0)
  {
    v16 = *(v14 + 8);
    v15 = *(v14 + 16);
  }

  else
  {
    v16 = (v14 + 8);
  }

  if (*a3 - v4 >= v15)
  {
    v17 = v15;
    memcpy(v4, v16, v15);
    v4 += v17;
    return v4;
  }

  return sub_1957130(a3, v16, v15, v4);
}

uint64_t sub_1791058(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = sub_17905A4(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(a1 + 16);
  if ((v8 & 0xF) == 0)
  {
    goto LABEL_17;
  }

  if (v8)
  {
    v14 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v15 = *(v14 + 23);
    v16 = *(v14 + 8);
    if ((v15 & 0x80u) == 0)
    {
      v16 = v15;
    }

    v2 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 2) == 0)
    {
LABEL_12:
      if ((v8 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_25;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_12;
  }

  v17 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  v18 = *(v17 + 23);
  v19 = *(v17 + 8);
  if ((v18 & 0x80u) == 0)
  {
    v19 = v18;
  }

  v2 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 4) == 0)
  {
LABEL_13:
    if ((v8 & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

LABEL_25:
  v20 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
  v21 = *(v20 + 23);
  v22 = *(v20 + 8);
  if ((v21 & 0x80u) == 0)
  {
    v22 = v21;
  }

  v2 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 8) != 0)
  {
LABEL_14:
    v9 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    v10 = *(v9 + 23);
    v11 = *(v9 + 8);
    if ((v10 & 0x80u) == 0)
    {
      v11 = v10;
    }

    v2 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_17:
  v12 = *(a1 + 8);
  if (v12)
  {
    v23 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    v24 = *((v12 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v24 < 0)
    {
      v24 = *(v23 + 16);
    }

    v2 += v24;
  }

  *(a1 + 20) = v2;
  return v2;
}

std::string *sub_179122C(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_193A45C(&v3[1], v6, (v5 + 8), v4, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
    v7 = LODWORD(v3[1].__r_.__value_.__r.__words[1]) + v4;
    LODWORD(v3[1].__r_.__value_.__r.__words[1]) = v7;
    v8 = v3[1].__r_.__value_.__r.__words[2];
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 16);
  if ((v9 & 0xF) == 0)
  {
    goto LABEL_22;
  }

  if ((v9 & 1) == 0)
  {
    if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    v13 = *(a2 + 56);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
    size = v3->__r_.__value_.__l.__size_;
    v15 = (size & 0xFFFFFFFFFFFFFFFCLL);
    if (size)
    {
      v15 = *v15;
    }

    result = sub_194EA1C(&v3[2].__r_.__value_.__l.__size_, (v13 & 0xFFFFFFFFFFFFFFFELL), v15);
    if ((v9 & 4) == 0)
    {
LABEL_8:
      if ((v9 & 8) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v10 = *(a2 + 48);
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
  v11 = v3->__r_.__value_.__l.__size_;
  v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
  if (v11)
  {
    v12 = *v12;
  }

  result = sub_194EA1C(&v3[2], (v10 & 0xFFFFFFFFFFFFFFFELL), v12);
  if ((v9 & 2) != 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  if ((v9 & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_16:
  v16 = *(a2 + 64);
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 4u;
  v17 = v3->__r_.__value_.__l.__size_;
  v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
  if (v17)
  {
    v18 = *v18;
  }

  result = sub_194EA1C(&v3[2].__r_.__value_.__r.__words[2], (v16 & 0xFFFFFFFFFFFFFFFELL), v18);
  if ((v9 & 8) != 0)
  {
LABEL_19:
    v19 = *(a2 + 72);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 8u;
    v20 = v3->__r_.__value_.__l.__size_;
    v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
    if (v20)
    {
      v21 = *v21;
    }

    result = sub_194EA1C(&v3[3], (v19 & 0xFFFFFFFFFFFFFFFELL), v21);
  }

LABEL_22:
  v22 = *(a2 + 8);
  if (v22)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v22 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

std::string *sub_17913D4(std::string *result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_1790A98(result);

    return sub_179122C(v4, a2);
  }

  return result;
}

void *sub_1791438(void *result, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *result = off_270A0D8;
  result[1] = v3;
  result[2] = 0;
  result[3] = a2;
  result[4] = 0;
  result[5] = 0;
  result[6] = &qword_278E990;
  result[7] = 0;
  *(result + 62) = 0;
  return result;
}

uint64_t sub_1791480(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_270A0D8;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 44) = 0;
  *(a1 + 28) = 0;
  *(a1 + 36) = 0;
  *(a1 + 20) = 0;
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_13B5364((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
    v8 = *(a1 + 32) + v5;
    *(a1 + 32) = v8;
    v9 = *(a1 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 8);
  if (v10)
  {
    sub_1957EF4(v4, (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  *(a1 + 48) = &qword_278E990;
  if (*(a2 + 16))
  {
    v11 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v11 = *v11;
    }

    sub_194EA1C((a1 + 48), (*(a2 + 48) & 0xFFFFFFFFFFFFFFFELL), v11);
  }

  v12 = *(a2 + 56);
  *(a1 + 62) = *(a2 + 62);
  *(a1 + 56) = v12;
  return a1;
}

void sub_17915B0(_Unwind_Exception *a1)
{
  sub_13B52E0(v1 + 3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_17915F8(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_7;
    }
  }

  else if (v4)
  {
    goto LABEL_7;
  }

  v5 = (a1 + 48);
  if (*(a1 + 48) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (v2)
  {
    sub_11F19CC(v3);
  }

LABEL_7:
  sub_13B52E0((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}