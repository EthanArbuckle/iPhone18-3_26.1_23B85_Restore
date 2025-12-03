@interface GEOAPSequence
- (BOOL)processUserAction:(uint64_t)action target:(double)target atTime:;
- (id)initWithStartingState:(id *)state;
- (void)reset;
- (void)setName:(uint64_t)name;
@end

@implementation GEOAPSequence

- (void)reset
{
  v17 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = GEOGetGEOAPSequenceAnalyticsLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v3 = *(self + 24);
      *buf = 138412290;
      v16 = v3;
      _os_log_impl(&dword_1AB634000, v2, OS_LOG_TYPE_DEBUG, "sequence '%@' is resetting", buf, 0xCu);
    }

    *(self + 16) = 0;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = *(self + 8);
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

          [*(*(&v10 + 1) + 8 * v8++) reset];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)initWithStartingState:(id *)state
{
  v3 = a2;
  if (state)
  {
    v7.receiver = state;
    v7.super_class = GEOAPSequence;
    state = objc_msgSendSuper2(&v7, sel_init);
    if (state)
    {
      v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:3];
      v5 = state[1];
      state[1] = v4;

      [state[1] addObject:v3];
      state[2] = 0;
    }
  }

  return state;
}

- (BOOL)processUserAction:(uint64_t)action target:(double)target atTime:
{
  v31 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    goto LABEL_2016;
  }

  v7 = result;
  v8 = GEOGetGEOAPSequenceAnalyticsLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(v7 + 24);
    if (a2 <= 3000)
    {
      if (a2 > 1500)
      {
        if (a2 <= 1503)
        {
          if (a2 == 1501)
          {
            v10 = @"TAP_DIRECTIONS";
          }

          else if (a2 == 1502)
          {
            v10 = @"TAP_PROXIMITY_FIND";
          }

          else
          {
            v10 = @"TAP_PRECISION_FIND";
          }
        }

        else
        {
          switch(a2)
          {
            case 2001:
              v10 = @"TAP_SEARCH_FIELD";
              goto LABEL_1427;
            case 2002:
              v10 = @"CLEAR_SEARCH";
              goto LABEL_1427;
            case 2003:
              v10 = @"CANCEL_SEARCH";
              goto LABEL_1427;
            case 2004:
              v10 = @"TAP_BROWSE_TOP_CATEGORY";
              goto LABEL_1427;
            case 2005:
              v10 = @"TAP_BROWSE_SUB_CATEGORY";
              goto LABEL_1427;
            case 2006:
              v10 = @"TAP_BACK_TO_BROWSE_TOP_CATEGORY";
              goto LABEL_1427;
            case 2007:
              v10 = @"TAP_LIST_ITEM";
              goto LABEL_1427;
            case 2008:
              v10 = @"SHARE_LIST_ITEM";
              goto LABEL_1427;
            case 2009:
              v10 = @"DELETE_LIST_ITEM";
              goto LABEL_1427;
            case 2010:
              v10 = @"EDIT_LIST_ITEM";
              goto LABEL_1427;
            case 2011:
              v10 = @"REFRESH_SEARCH";
              goto LABEL_1427;
            case 2012:
              v10 = @"REVEAL_LIST_ITEM_ACTIONS";
              goto LABEL_1427;
            case 2013:
              v10 = @"HIDE_LIST_ITEM_ACTIONS";
              goto LABEL_1427;
            case 2014:
              v10 = @"TAP_SEARCH_BUTTON";
              goto LABEL_1427;
            case 2015:
              v10 = @"SHOW_SEARCH_RESULTS";
              goto LABEL_1427;
            case 2016:
              v10 = @"SHOW_REFRESH_SEARCH";
              goto LABEL_1427;
            case 2017:
              v10 = @"PASTE_TEXT";
              goto LABEL_1427;
            case 2018:
              v10 = @"TAP_LIST_SUB_ITEM";
              goto LABEL_1427;
            case 2019:
              v10 = @"DISPLAY_DID_YOU_MEAN_MESSAGE";
              goto LABEL_1427;
            case 2020:
              v10 = @"TAP_DID_YOU_MEAN_MESSAGE";
              goto LABEL_1427;
            case 2021:
              v10 = @"CLOSE_DID_YOU_MEAN_MESSAGE";
              goto LABEL_1427;
            case 2022:
              v10 = @"SCROLL_LEFT_DID_YOU_MEAN_MESSAGE";
              goto LABEL_1427;
            case 2023:
              v10 = @"SCROLL_RIGHT_DID_YOU_MEAN_MESSAGE";
              goto LABEL_1427;
            case 2024:
              v10 = @"RETAINED_QUERY";
              goto LABEL_1427;
            case 2025:
              v10 = @"TAP_RECENT_AC_SUGGESTION";
              goto LABEL_1427;
            case 2026:
              v10 = @"CLEAR_RECENT_AC_SUGGESTION";
              goto LABEL_1427;
            case 2027:
              v10 = @"DELETE_RECENT_AC_SUGGESTION";
              goto LABEL_1427;
            case 2028:
            case 2029:
              goto LABEL_117;
            case 2030:
              v10 = @"TAP_BROWSE_NEARBY_CATEGORY";
              goto LABEL_1427;
            case 2031:
              v10 = @"TAP_SUBACTION";
              goto LABEL_1427;
            case 2032:
              v10 = @"TAP_QUERY_BUILDING_ARROW";
              goto LABEL_1427;
            case 2033:
              v10 = @"CLICK_ON_EDIT_SEARCH";
              goto LABEL_1427;
            case 2034:
              v10 = @"REMOVE_CLIENT_AC_SUGGESTION";
              goto LABEL_1427;
            case 2035:
              v10 = @"SHARE_CLIENT_AC_SUGGESTION";
              goto LABEL_1427;
            case 2036:
              v10 = @"TAP_ON_MORE_RESULTS";
              goto LABEL_1427;
            case 2037:
              v10 = @"SHARE_ITEM";
              goto LABEL_1427;
            case 2038:
              v10 = @"HIDE_ITEM";
              goto LABEL_1427;
            case 2039:
              v10 = @"TAP_SUGGESTED_ITEM";
              goto LABEL_1427;
            case 2040:
              v10 = @"SHARE_SUGGESTED_ITEM";
              goto LABEL_1427;
            case 2041:
              v10 = @"HIDE_SUGGESTED_ITEM";
              goto LABEL_1427;
            case 2042:
              v10 = @"ADD_HOME_FAVORITE";
              goto LABEL_1427;
            case 2043:
              v10 = @"ADD_WORK_FAVORITE";
              goto LABEL_1427;
            case 2044:
              v10 = @"ADD_FAVORITE";
              goto LABEL_1427;
            case 2045:
              v10 = @"VIEW_FAVORITES_LIST";
              goto LABEL_1427;
            case 2046:
              v10 = @"TAP_HOME_FAVORITE";
              goto LABEL_1427;
            case 2047:
              v10 = @"TAP_WORK_FAVORITE";
              goto LABEL_1427;
            case 2048:
              v10 = @"TAP_CAR_FAVORITE";
              goto LABEL_1427;
            case 2049:
              v10 = @"TAP_FAVORITE_ITEM";
              goto LABEL_1427;
            case 2050:
              v10 = @"CREATE_HOME_FAVORITE";
              goto LABEL_1427;
            case 2051:
              v10 = @"CREATE_WORK_FAVORITE";
              goto LABEL_1427;
            case 2052:
              v10 = @"CREATE_FAVORITE";
              goto LABEL_1427;
            case 2053:
              v10 = @"SUBMIT_FAVORITE_EDIT";
              goto LABEL_1427;
            case 2054:
              v10 = @"ADD_RECOMMENDED_FAVORITE";
              goto LABEL_1427;
            case 2055:
              v10 = @"EDIT_FAVORITE";
              goto LABEL_1427;
            case 2056:
              v10 = @"REMOVE_FAVORITE";
              goto LABEL_1427;
            case 2057:
              v10 = @"SHARE_FAVORITE";
              goto LABEL_1427;
            case 2058:
              v10 = @"EDIT_FAVORITES";
              goto LABEL_1427;
            case 2059:
              v10 = @"ADD_FAVORITE_PLACE";
              goto LABEL_1427;
            case 2060:
              v10 = @"REMOVE_FAVORITE_PLACE";
              goto LABEL_1427;
            case 2061:
              v10 = @"CHANGE_HOME_ADDRESS";
              goto LABEL_1427;
            case 2062:
              v10 = @"CHANGE_WORK_ADDRESS";
              goto LABEL_1427;
            case 2063:
              v10 = @"REFINE_LOCATION";
              goto LABEL_1427;
            case 2064:
              v10 = @"TAP_RECENTLY_VIEWED_ITEM";
              goto LABEL_1427;
            case 2065:
              v10 = @"SHOW_COLLECTION_LIST";
              goto LABEL_1427;
            case 2066:
              v10 = @"SHOW_FAVORITES_COLLECTION";
              goto LABEL_1427;
            case 2067:
              v10 = @"SHOW_COLLECTION";
              goto LABEL_1427;
            case 2068:
              v10 = @"TAP_COLLECTION_ITEM";
              goto LABEL_1427;
            case 2069:
              v10 = @"SHARE_COLLECTION_ITEM";
              goto LABEL_1427;
            case 2070:
              v10 = @"REMOVE_COLLECTION_ITEM";
              goto LABEL_1427;
            case 2071:
              v10 = @"SAVE_SHARED_COLLECTION";
              goto LABEL_1427;
            case 2072:
              v10 = @"CREATE_NEW_COLLECTION";
              goto LABEL_1427;
            case 2073:
              v10 = @"SAVE_TO_COLLECTION";
              goto LABEL_1427;
            case 2074:
              v10 = @"EDIT_PHOTO";
              goto LABEL_1427;
            case 2075:
              v10 = @"SORT_BY_NAME";
              goto LABEL_1427;
            case 2076:
              v10 = @"SORT_BY_DISTANCE";
              goto LABEL_1427;
            case 2077:
              v10 = @"SORT_BY_RECENT";
              goto LABEL_1427;
            case 2078:
              v10 = @"AUTO_SHARE_ETA";
              goto LABEL_1427;
            case 2079:
              v10 = @"CANCEL_AUTO_SHARE_ETA";
              goto LABEL_1427;
            case 2080:
              v10 = @"MAP_SEARCH";
              goto LABEL_1427;
            case 2081:
              v10 = @"DELETE_COLLECTION";
              goto LABEL_1427;
            case 2082:
              v10 = @"SHARE_COLLECTION";
              goto LABEL_1427;
            case 2083:
              v10 = @"SHOW_TRANSIT_LINES_COLLECTION";
              goto LABEL_1427;
            case 2084:
              v10 = @"SHOW_MY_PLACES";
              goto LABEL_1427;
            case 2085:
              v10 = @"SHOW_ALL_PLACES";
              goto LABEL_1427;
            case 2086:
              v10 = @"TAP_RECENT_QUERY";
              goto LABEL_1427;
            case 2087:
              v10 = @"TAP_QUERY_SUGGESTION";
              goto LABEL_1427;
            case 2088:
              v10 = @"DELETE_CURATED_COLLECTION";
              goto LABEL_1427;
            case 2089:
              v10 = @"FOLLOW";
              goto LABEL_1427;
            case 2090:
              v10 = @"PUNCH_IN";
              goto LABEL_1427;
            case 2091:
              v10 = @"SAVE_CURATED_COLLECTION";
              goto LABEL_1427;
            case 2092:
              v10 = @"SCROLL_LEFT_COLLECTIONS";
              goto LABEL_1427;
            case 2093:
              v10 = @"SCROLL_RIGHT_COLLECTIONS";
              goto LABEL_1427;
            case 2094:
              v10 = @"SEE_ALL_CURATED_COLLECTION";
              goto LABEL_1427;
            case 2095:
              v10 = @"SEE_ALL_PUBLISHERS";
              goto LABEL_1427;
            case 2096:
              v10 = @"SHARE_CURATED_COLLECTION";
              goto LABEL_1427;
            case 2097:
              v10 = @"SHARE_PUBLISHER";
              goto LABEL_1427;
            case 2098:
              v10 = @"SHOW_MORE_COLLECTION";
              goto LABEL_1427;
            case 2099:
              v10 = @"TAP_CURATED_COLLECTION";
              goto LABEL_1427;
            case 2100:
              v10 = @"TAP_FEATURED_COLLECTIONS";
              goto LABEL_1427;
            case 2101:
              v10 = @"TAP_LOCATION";
              goto LABEL_1427;
            case 2102:
              v10 = @"TAP_PUBLISHER";
              goto LABEL_1427;
            case 2103:
              v10 = @"TAP_PUBLISHER_APP";
              goto LABEL_1427;
            case 2104:
              v10 = @"TAP_PUBLISHER_COLLECTIONS";
              goto LABEL_1427;
            case 2105:
              v10 = @"UNFOLLOW";
              goto LABEL_1427;
            case 2106:
              v10 = @"CHANGE_SCHOOL_ADDRESS";
              goto LABEL_1427;
            case 2107:
              v10 = @"ADD_VEHICLE";
              goto LABEL_1427;
            case 2108:
              v10 = @"DISPLAY_VIRTUAL_GARAGE";
              goto LABEL_1427;
            case 2109:
              v10 = @"ENTER_VIRTUAL_GARAGE";
              goto LABEL_1427;
            case 2110:
              v10 = @"PUNCH_OUT_MANUFACTURER_APP";
              goto LABEL_1427;
            case 2111:
              v10 = @"REMOVE_LICENSE_PLATE";
              goto LABEL_1427;
            case 2112:
              v10 = @"REMOVE_VEHICLE";
              goto LABEL_1427;
            case 2113:
              v10 = @"SELECT_VEHICLE";
              goto LABEL_1427;
            case 2114:
              v10 = @"SUBMIT_LICENSE_PLATE";
              goto LABEL_1427;
            case 2115:
              v10 = @"TAP_ADD_LICENSE_PLATE";
              goto LABEL_1427;
            case 2116:
              v10 = @"TAP_ADD_NEW_CAR";
              goto LABEL_1427;
            case 2117:
              v10 = @"TAP_BANNER";
              goto LABEL_1427;
            case 2118:
              v10 = @"TAP_CONNECT";
              goto LABEL_1427;
            case 2119:
              v10 = @"TAP_CONTINUE";
              goto LABEL_1427;
            case 2120:
              v10 = @"TAP_EDIT";
              goto LABEL_1427;
            case 2121:
              v10 = @"TAP_NAME";
              goto LABEL_1427;
            case 2122:
              v10 = @"TAP_NOT_NOW";
              goto LABEL_1427;
            case 2123:
              v10 = @"TAP_OTHER_VEHICLE";
              goto LABEL_1427;
            case 2124:
              v10 = @"TAP_REMOVE_LICENSE_PLATE";
              goto LABEL_1427;
            case 2125:
              v10 = @"TAP_UPDATE_PLATE_NUMBER";
              goto LABEL_1427;
            case 2126:
              v10 = @"TAP_VEHICLE";
              goto LABEL_1427;
            case 2127:
              v10 = @"TAP_VEHICLE_NAME";
              goto LABEL_1427;
            case 2128:
              v10 = @"UPDATE_NAME";
              goto LABEL_1427;
            case 2129:
              v10 = @"DONE_TAKING_PHOTO";
              goto LABEL_1427;
            case 2130:
              v10 = @"ENABLE_SHOW_PHOTO_NAME";
              goto LABEL_1427;
            case 2131:
              v10 = @"SUBMIT_PHOTO";
              goto LABEL_1427;
            case 2132:
              v10 = @"USE_PHOTO";
              goto LABEL_1427;
            case 2133:
              v10 = @"ADD_RECOMMENDATION_TO_MAPS";
              goto LABEL_1427;
            case 2134:
              v10 = @"CANCEL_PHOTO_SUBMISSION";
              goto LABEL_1427;
            case 2135:
              v10 = @"CLOSE_RECOMMENDATION_CARD";
              goto LABEL_1427;
            case 2136:
              v10 = @"EDIT_RATING";
              goto LABEL_1427;
            case 2137:
              v10 = @"PROMPTED_TO_ADD_PHOTO";
              goto LABEL_1427;
            case 2138:
              v10 = @"PROMPTED_TO_ADD_RATING";
              goto LABEL_1427;
            case 2139:
              v10 = @"PROMPTED_TO_ADD_RECOMMENDATION_NOTIFICATION";
              goto LABEL_1427;
            case 2140:
              v10 = @"PROMPTED_TO_ADD_RECOMMENDATION_SIRI";
              goto LABEL_1427;
            case 2141:
              v10 = @"RETAKE_PHOTO";
              goto LABEL_1427;
            case 2142:
              v10 = @"REVEAL_RECOMMENDATION_CARD";
              goto LABEL_1427;
            case 2143:
              v10 = @"SUBMIT_NEGATIVE_RATING";
              goto LABEL_1427;
            case 2144:
              v10 = @"SUBMIT_POSITIVE_RATING";
              goto LABEL_1427;
            case 2145:
              v10 = @"TAP_CHOOSING_PHOTO";
              goto LABEL_1427;
            case 2146:
              v10 = @"TAP_TAKE_NEW_PHOTO";
              goto LABEL_1427;
            case 2147:
              v10 = @"TAP_TO_ADD_PHOTO";
              goto LABEL_1427;
            case 2148:
              v10 = @"CANCEL_INCIDENT_REPORT";
              goto LABEL_1427;
            case 2149:
              v10 = @"INCIDENT_REPORT_SUBMITTED";
              goto LABEL_1427;
            case 2150:
              v10 = @"REPORTED_INCIDENT_NOT_RECEIVED";
              goto LABEL_1427;
            case 2151:
              v10 = @"REPORTED_INCIDENT_RECEIVED";
              goto LABEL_1427;
            case 2152:
              v10 = @"REPORT_INCIDENT";
              goto LABEL_1427;
            case 2153:
              v10 = @"SELECT_INCIDENT_TYPE";
              goto LABEL_1427;
            case 2154:
              v10 = @"SIRI_NOT_RESPOND_TO_REPORTED_INCIDENT";
              goto LABEL_1427;
            case 2155:
              v10 = @"TAP_TO_START_REPORT_INCIDENT";
              goto LABEL_1427;
            case 2156:
              v10 = @"ACTIVELY_DISPLAY_VLF_ENTRY_POINT";
              goto LABEL_1427;
            case 2157:
              v10 = @"ATTEMPT_VLF_CORRECTION";
              goto LABEL_1427;
            case 2158:
              v10 = @"DISMISS_VLF_PROMPT";
              goto LABEL_1427;
            case 2159:
              v10 = @"PASSIVELY_DISPLAY_VLF_ENTRY_POINT";
              goto LABEL_1427;
            case 2160:
              v10 = @"VLF_CORRECTION_FAILED";
              goto LABEL_1427;
            case 2161:
              v10 = @"VLF_CORRECTION_SUCCESSFUL";
              goto LABEL_1427;
            case 2162:
              v10 = @"ENABLE_WIDGET_SUGGESTIONS";
              goto LABEL_1427;
            case 2163:
              v10 = @"DISPLAY_CZ_ADVISORY";
              goto LABEL_1427;
            case 2164:
              v10 = @"PUNCH_OUT_URL_PAY";
              goto LABEL_1427;
            case 2165:
              v10 = @"TAP_SHOW_CZ_ADVISORY_DETAILS";
              goto LABEL_1427;
            case 2166:
              v10 = @"DELETE_ITEM";
              goto LABEL_1427;
            case 2167:
              v10 = @"CANCEL_REMOVE";
              goto LABEL_1427;
            case 2168:
              v10 = @"DELETE_SUGGESTION";
              goto LABEL_1427;
            case 2169:
              v10 = @"ADD_SCHOOL_FAVORITE";
              goto LABEL_1427;
            case 2170:
              v10 = @"GO_TO_WEBSITE";
              goto LABEL_1427;
            case 2171:
              v10 = @"TRY_AGAIN";
              goto LABEL_1427;
            case 2172:
              v10 = @"CHECK_AUTO_RECORD_WORKOUT";
              goto LABEL_1427;
            case 2173:
              v10 = @"CHECK_EBIKE";
              goto LABEL_1427;
            case 2174:
              v10 = @"DISPLAY_AUTOMATIC_WORKOUT_OPTION";
              goto LABEL_1427;
            case 2175:
              v10 = @"DISPLAY_CYCLING_DEFAULT_OPTION";
              goto LABEL_1427;
            case 2176:
              v10 = @"DISPLAY_CYCLING_NO_BIKE_ADVISORY";
              goto LABEL_1427;
            case 2177:
              v10 = @"DISPLAY_CYCLING_STAIRS_ADVISORY";
              goto LABEL_1427;
            case 2178:
              v10 = @"DISPLAY_CYCLING_STEEP_CLIMB_ADVISORY";
              goto LABEL_1427;
            case 2179:
              v10 = @"TAP_AUTOMATIC_WORKOUT_OPTION";
              goto LABEL_1427;
            case 2180:
              v10 = @"TAP_CYCLING_DEFAULT_OPTION";
              goto LABEL_1427;
            case 2181:
              v10 = @"TAP_CYCLING_NO_BIKE_ADVISORY";
              goto LABEL_1427;
            case 2182:
              v10 = @"TAP_CYCLING_STAIRS_ADVISORY";
              goto LABEL_1427;
            case 2183:
              v10 = @"TAP_CYCLING_STEEP_CLIMB_ADVISORY";
              goto LABEL_1427;
            case 2184:
              v10 = @"UNCHECK_AUTO_RECORD_WORKOUT";
              goto LABEL_1427;
            case 2185:
              v10 = @"UNCHECK_EBIKE";
              goto LABEL_1427;
            case 2186:
              v10 = @"DISPLAY_LICENSE_PLATE_SUGGESTION";
              goto LABEL_1427;
            case 2187:
              v10 = @"DISPLAY_LPR_ADVISORY";
              goto LABEL_1427;
            case 2188:
              v10 = @"TAP_SHOW_LPR_ADVISORY_DETAILS";
              goto LABEL_1427;
            case 2189:
              v10 = @"CREATE_WIDGET";
              goto LABEL_1427;
            case 2190:
              v10 = @"REVEAL_WIDGET_TRAY";
              goto LABEL_1427;
            case 2191:
              v10 = @"LPR_ERROR_CODE";
              goto LABEL_1427;
            case 2192:
              v10 = @"TAP_SEE_ALL_RECENTLY_VIEWED";
              goto LABEL_1427;
            case 2193:
              v10 = @"TAP_CLEAR_RECENTLY_VIEWED";
              goto LABEL_1427;
            case 2194:
              v10 = @"LPR_HARD_STOP";
              goto LABEL_1427;
            case 2195:
              v10 = @"TAP_PUBLISHER_SUBACTION";
              goto LABEL_1427;
            case 2196:
              v10 = @"CARPLAY_DISPLAY_ACTIVATED";
              goto LABEL_1427;
            case 2197:
              v10 = @"CARPLAY_DISPLAY_DEACTIVATED";
              goto LABEL_1427;
            case 2198:
              v10 = @"TAP_FEATURED_COLLECTION";
              goto LABEL_1427;
            case 2199:
              v10 = @"SCROLL_FEATURED_COLLECTION_FORWARD";
              goto LABEL_1427;
            case 2200:
              v10 = @"SCROLL_FEATURED_COLLECTION_BACKWARD";
              goto LABEL_1427;
            default:
              if (a2 == 1504)
              {
                v10 = @"TAP_ENABLE_LOST_MODE";
              }

              else
              {
                if (a2 != 1505)
                {
                  goto LABEL_117;
                }

                v10 = @"TAP_ENABLE_NOTIFY_WHEN_FOUND";
              }

              break;
          }
        }
      }

      else
      {
        v10 = @"UI_ACTION_UNKNOWN";
        switch(a2)
        {
          case 0:
            goto LABEL_1427;
          case 1:
            v10 = @"PULL_UP";
            break;
          case 2:
            v10 = @"PULL_DOWN";
            break;
          case 3:
            v10 = @"TAP";
            break;
          case 4:
            v10 = @"CLOSE";
            break;
          case 5:
            v10 = @"SWIPE_PREV";
            break;
          case 6:
            v10 = @"SWIPE_NEXT";
            break;
          case 7:
            v10 = @"SCROLL_UP";
            break;
          case 8:
            v10 = @"SCROLL_DOWN";
            break;
          case 9:
          case 23:
          case 24:
          case 346:
          case 347:
          case 348:
          case 349:
          case 350:
          case 351:
          case 352:
          case 353:
          case 354:
          case 355:
          case 530:
          case 531:
          case 532:
          case 533:
          case 534:
          case 535:
          case 536:
          case 537:
          case 538:
          case 539:
          case 540:
          case 541:
          case 542:
          case 543:
          case 544:
          case 545:
          case 546:
          case 547:
          case 548:
          case 549:
          case 550:
          case 551:
          case 552:
          case 553:
          case 554:
          case 555:
          case 556:
          case 557:
          case 558:
          case 559:
          case 560:
          case 561:
          case 562:
          case 563:
          case 564:
          case 565:
          case 566:
          case 567:
          case 568:
          case 569:
          case 570:
          case 571:
          case 572:
          case 573:
          case 574:
          case 575:
          case 576:
          case 577:
          case 578:
          case 579:
          case 580:
          case 581:
          case 582:
          case 583:
          case 584:
          case 585:
          case 586:
          case 587:
          case 588:
          case 589:
          case 590:
          case 591:
          case 592:
          case 593:
          case 594:
          case 595:
          case 596:
          case 597:
          case 598:
          case 599:
          case 600:
          case 601:
          case 602:
          case 603:
          case 604:
          case 605:
          case 606:
          case 607:
          case 608:
          case 609:
          case 610:
          case 611:
          case 612:
          case 613:
          case 614:
          case 615:
          case 616:
          case 617:
          case 618:
          case 619:
          case 620:
          case 621:
          case 622:
          case 623:
          case 624:
          case 625:
          case 626:
          case 627:
          case 628:
          case 629:
          case 630:
          case 631:
          case 632:
          case 633:
          case 634:
          case 635:
          case 636:
          case 637:
          case 638:
          case 639:
          case 640:
          case 641:
          case 642:
          case 643:
          case 644:
          case 645:
          case 646:
          case 647:
          case 648:
          case 649:
          case 650:
          case 651:
          case 652:
          case 653:
          case 654:
          case 655:
          case 656:
          case 657:
          case 658:
          case 659:
          case 660:
          case 661:
          case 662:
          case 663:
          case 664:
          case 665:
          case 666:
          case 667:
          case 668:
          case 669:
          case 670:
          case 671:
          case 672:
          case 673:
          case 674:
          case 675:
          case 676:
          case 677:
          case 678:
          case 679:
          case 680:
          case 681:
          case 682:
          case 683:
          case 684:
          case 685:
          case 686:
          case 687:
          case 688:
          case 689:
          case 690:
          case 691:
          case 692:
          case 693:
          case 694:
          case 695:
          case 696:
          case 697:
          case 698:
          case 699:
          case 700:
          case 701:
          case 702:
          case 703:
          case 704:
          case 705:
          case 706:
          case 707:
          case 708:
          case 709:
          case 710:
          case 711:
          case 712:
          case 713:
          case 714:
          case 715:
          case 716:
          case 717:
          case 718:
          case 719:
          case 720:
          case 721:
          case 722:
          case 723:
          case 724:
          case 725:
          case 726:
          case 727:
          case 728:
          case 729:
          case 730:
          case 731:
          case 732:
          case 733:
          case 734:
          case 735:
          case 736:
          case 737:
          case 738:
          case 739:
          case 740:
          case 741:
          case 742:
          case 743:
          case 744:
          case 745:
          case 746:
          case 747:
          case 748:
          case 749:
          case 750:
          case 751:
          case 752:
          case 753:
          case 754:
          case 755:
          case 756:
          case 757:
          case 758:
          case 759:
          case 760:
          case 761:
          case 762:
          case 763:
          case 764:
          case 765:
          case 766:
          case 767:
          case 768:
          case 769:
          case 770:
          case 771:
          case 772:
          case 773:
          case 774:
          case 775:
          case 776:
          case 777:
          case 778:
          case 779:
          case 780:
          case 781:
          case 782:
          case 783:
          case 784:
          case 785:
          case 786:
          case 787:
          case 788:
          case 789:
          case 790:
          case 791:
          case 792:
          case 793:
          case 794:
          case 795:
          case 796:
          case 797:
          case 798:
          case 799:
          case 800:
          case 801:
          case 802:
          case 803:
          case 804:
          case 805:
          case 806:
          case 807:
          case 808:
          case 809:
          case 810:
          case 811:
          case 812:
          case 813:
          case 814:
          case 815:
          case 816:
          case 817:
          case 818:
          case 819:
          case 820:
          case 821:
          case 822:
          case 823:
          case 824:
          case 825:
          case 826:
          case 827:
          case 828:
          case 829:
          case 830:
          case 831:
          case 832:
          case 833:
          case 834:
          case 835:
          case 836:
          case 837:
          case 838:
          case 839:
          case 840:
          case 841:
          case 842:
          case 843:
          case 844:
          case 845:
          case 846:
          case 847:
          case 848:
          case 849:
          case 850:
          case 851:
          case 852:
          case 853:
          case 854:
          case 855:
          case 856:
          case 857:
          case 858:
          case 859:
          case 860:
          case 861:
          case 862:
          case 863:
          case 864:
          case 865:
          case 866:
          case 867:
          case 868:
          case 869:
          case 870:
          case 871:
          case 872:
          case 873:
          case 874:
          case 875:
          case 876:
          case 877:
          case 878:
          case 879:
          case 880:
          case 881:
          case 882:
          case 883:
          case 884:
          case 885:
          case 886:
          case 887:
          case 888:
          case 889:
          case 890:
          case 891:
          case 892:
          case 893:
          case 894:
          case 895:
          case 896:
          case 897:
          case 898:
          case 899:
          case 900:
          case 901:
          case 902:
          case 903:
          case 904:
          case 905:
          case 906:
          case 907:
          case 908:
          case 909:
          case 910:
          case 911:
          case 912:
          case 913:
          case 914:
          case 915:
          case 916:
          case 917:
          case 918:
          case 919:
          case 920:
          case 921:
          case 922:
          case 923:
          case 924:
          case 925:
          case 926:
          case 927:
          case 928:
          case 929:
          case 930:
          case 931:
          case 932:
          case 933:
          case 934:
          case 935:
          case 936:
          case 937:
          case 938:
          case 939:
          case 940:
          case 941:
          case 942:
          case 943:
          case 944:
          case 945:
          case 946:
          case 947:
          case 948:
          case 949:
          case 950:
          case 951:
          case 952:
          case 953:
          case 954:
          case 955:
          case 956:
          case 957:
          case 958:
          case 959:
          case 960:
          case 961:
          case 962:
          case 963:
          case 964:
          case 965:
          case 966:
          case 967:
          case 968:
          case 969:
          case 970:
          case 971:
          case 972:
          case 973:
          case 974:
          case 975:
          case 976:
          case 977:
          case 978:
          case 979:
          case 980:
          case 981:
          case 982:
          case 983:
          case 984:
          case 985:
          case 986:
          case 987:
          case 988:
          case 989:
          case 990:
          case 991:
          case 992:
          case 993:
          case 994:
          case 995:
          case 996:
          case 997:
          case 998:
          case 999:
          case 1000:
          case 1005:
          case 1006:
          case 1007:
          case 1008:
          case 1009:
          case 1012:
          case 1013:
          case 1014:
          case 1015:
          case 1016:
          case 1019:
          case 1021:
          case 1022:
          case 1023:
          case 1024:
          case 1025:
          case 1026:
          case 1027:
          case 1028:
          case 1029:
            goto LABEL_117;
          case 10:
            v10 = @"SHOW_MORE";
            break;
          case 11:
            v10 = @"SHOW_LESS";
            break;
          case 12:
            v10 = @"SWIPE_LEFT";
            break;
          case 13:
            v10 = @"SWIPE_RIGHT";
            break;
          case 14:
            v10 = @"MINIMIZE";
            break;
          case 15:
            v10 = @"TAP_PREV";
            break;
          case 16:
            v10 = @"TAP_NEXT";
            break;
          case 17:
            v10 = @"SUBMIT";
            break;
          case 18:
            v10 = @"CANCEL";
            break;
          case 19:
            v10 = @"ENTER_MAPS";
            break;
          case 20:
            v10 = @"EXIT_MAPS";
            break;
          case 21:
            v10 = @"REVEAL";
            break;
          case 22:
            v10 = @"OPEN_NEW_TAB";
            break;
          case 25:
            v10 = @"BACK";
            break;
          case 26:
            v10 = @"ACTIVATE";
            break;
          case 27:
            v10 = @"DEACTIVATE";
            break;
          case 28:
            v10 = @"AGREE";
            break;
          case 29:
            v10 = @"DISAGREE";
            break;
          case 30:
            v10 = @"SKIP_ANSWER";
            break;
          case 31:
            v10 = @"EXPAND";
            break;
          case 32:
            v10 = @"COLLAPSE";
            break;
          case 33:
            v10 = @"ENTER";
            break;
          case 34:
            v10 = @"EXIT";
            break;
          case 35:
            v10 = @"SCROLL_UP_INDEX_BAR";
            break;
          case 36:
            v10 = @"SCROLL_DOWN_INDEX_BAR";
            break;
          case 37:
            v10 = @"TOGGLE_ON";
            break;
          case 38:
            v10 = @"TOGGLE_OFF";
            break;
          case 39:
            v10 = @"LONG_PRESS";
            break;
          case 40:
            v10 = @"CLICK";
            break;
          case 41:
            v10 = @"TAP_DONE";
            break;
          case 42:
            v10 = @"TAP_CLOSE";
            break;
          case 43:
            v10 = @"SCROLL_LEFT";
            break;
          case 44:
            v10 = @"SCROLL_RIGHT";
            break;
          case 45:
            v10 = @"DISPLAY";
            break;
          case 46:
            v10 = @"OPEN_IN_APP";
            break;
          case 47:
            v10 = @"CONCEAL";
            break;
          case 48:
            v10 = @"TAP_DELETE";
            break;
          case 49:
            v10 = @"TAP_FILTER";
            break;
          case 50:
            v10 = @"TAP_SECONDARY_BUTTON";
            break;
          case 51:
            v10 = @"TAP_WIDGET_FOOD";
            break;
          case 52:
            v10 = @"TAP_WIDGET_GAS";
            break;
          case 53:
            v10 = @"TAP_WIDGET_LOADING";
            break;
          case 54:
            v10 = @"TAP_WIDGET_SEARCH";
            break;
          case 55:
            v10 = @"TAP_WIDGET_STORES";
            break;
          case 56:
            v10 = @"DISPLAY_ALLOW_ONCE_PROMPT";
            break;
          case 57:
            v10 = @"SHARE_CURRENT_LOCATION";
            break;
          case 58:
            v10 = @"SHARE_PHOTO";
            break;
          case 59:
            v10 = @"TAP_KEEP_OFF";
            break;
          case 60:
            v10 = @"TAP_PHOTO_CATEGORY";
            break;
          case 61:
            v10 = @"TAP_PRECISE_LOCATION_OFF_BANNER";
            break;
          case 62:
            v10 = @"TAP_TURN_ON";
            break;
          case 63:
            v10 = @"DISPLAY_CYCLING_ANNOTATION";
            break;
          case 64:
            v10 = @"DISPLAY_DRIVING_DEFAULT_OPTION";
            break;
          case 65:
            v10 = @"DISPLAY_TRANSIT_DEFAULT_OPTION";
            break;
          case 66:
            v10 = @"DISPLAY_WALKING_DEFAULT_OPTION";
            break;
          case 67:
            v10 = @"TAP_CYCLING_ANNOTATION";
            break;
          case 68:
            v10 = @"TAP_DRIVING_DEFAULT_OPTION";
            break;
          case 69:
            v10 = @"TAP_TRANSIT_DEFAULT_OPTION";
            break;
          case 70:
            v10 = @"TAP_WALKING_DEFAULT_OPTION";
            break;
          case 71:
            v10 = @"DISPLAY_RIDESHARE_DEFAULT_OPTION";
            break;
          case 72:
            v10 = @"TAP_RIDESHARE_DEFAULT_OPTION";
            break;
          case 73:
            v10 = @"TAP_PERSONAL_COLLECTION";
            break;
          case 74:
            v10 = @"RESUME_ROUTE";
            break;
          case 75:
            v10 = @"DISPLAY_OUT_OF_RANGE_ALERT";
            break;
          case 76:
            v10 = @"TAP_ALLOW_ONCE";
            break;
          case 77:
            v10 = @"TAP_DO_NOT_ALLOW";
            break;
          case 78:
            v10 = @"ADD_RECCOMENDED_FAVORITE";
            break;
          case 79:
            v10 = @"ADD_RECOMMENDED_HOME_FAVORITE";
            break;
          case 80:
            v10 = @"ADD_RECOMMENDED_SCHOOL_FAVORITE";
            break;
          case 81:
            v10 = @"ADD_RECOMMENDED_WORK_FAVORITE";
            break;
          case 82:
            v10 = @"CREATE_RECCOMENDED_SCHOOL_FAVORITE";
            break;
          case 83:
            v10 = @"CREATE_SCHOOL_FAVORITE";
            break;
          case 84:
            v10 = @"TAP_SCHOOL_FAVORITE";
            break;
          case 85:
            v10 = @"SELECT_ROUTING_TYPE_CYCLING";
            break;
          case 86:
            v10 = @"REPORT_PHOTO";
            break;
          case 87:
            v10 = @"TAP_LARGE_WIDGET_BROWSE_CATEGORY";
            break;
          case 88:
            v10 = @"TAP_MEDIUM_WIDGET_BROWSE_CATEGORY";
            break;
          case 89:
            v10 = @"TAP_SMALL_WIDGET_BROWSE_CATEGORY";
            break;
          case 90:
            v10 = @"CREATE_RECOMMENDED_FAVORITE";
            break;
          case 91:
            v10 = @"CREATE_RECOMMENDED_HOME_FAVORITE";
            break;
          case 92:
            v10 = @"CREATE_RECOMMENDED_SCHOOL_FAVORITE";
            break;
          case 93:
            v10 = @"CREATE_RECOMMENDED_WORK_FAVORITE";
            break;
          case 94:
            v10 = @"TAP_SMALL_WIDGET_ITEM";
            break;
          case 95:
            v10 = @"TAP_MEDIUM_WIDGET_ITEM";
            break;
          case 96:
            v10 = @"TAP_LARGE_WIDGET_ITEM";
            break;
          case 97:
            v10 = @"DISPLAY_ARP_TIPKIT";
            break;
          case 98:
            v10 = @"NEXT";
            break;
          case 99:
            v10 = @"TAP_RATE_AND_ADD_PHOTOS";
            break;
          case 100:
            v10 = @"TAP_TO_ADD_POSITIVE_RATING";
            break;
          case 101:
            v10 = @"TAP_TO_ADD_NEGATIVE_RATING";
            break;
          case 102:
            v10 = @"TAP_ACTIVE_SHARING_NOTIFICATION";
            break;
          case 103:
            v10 = @"INVOKE_SIRI_PROMPT";
            break;
          case 104:
            v10 = @"ETA_SHARED_SUCCESSFULLY";
            break;
          case 105:
            v10 = @"ENDED_ETA_SHARE_SUCCESSFULLY";
            break;
          case 106:
            v10 = @"CLEAR_INCIDENT";
            break;
          case 107:
            v10 = @"CONFIRM_INCIDENT";
            break;
          case 108:
            v10 = @"DISMISS_INCIDENT";
            break;
          case 109:
            v10 = @"INCIDENT_ALERT_TIMEOUT";
            break;
          case 110:
            v10 = @"INCIDENT_ALERT_TRAY_SHOWN";
            break;
          case 111:
            v10 = @"INCIDENT_CARD_SHOWN";
            break;
          case 112:
            v10 = @"INCIDENT_REPORT_CONFIRMATION_TRAY_SHOWN";
            break;
          case 113:
            v10 = @"INCIDENT_REPORT_TRAY_SHOWN";
            break;
          case 114:
            v10 = @"NAV_TRAY_DISCOVERY_SHOWN";
            break;
          case 115:
            v10 = @"TAP_TO_REPORT_INCIDENT";
            break;
          case 116:
            v10 = @"TAP_SHORTCUT";
            break;
          case 117:
            v10 = @"BLOCK_CONTACT";
            break;
          case 118:
            v10 = @"TAP_TO_ADD_RATING";
            break;
          case 119:
            v10 = @"AR_WALKING_LOCALIZATION_FAILED";
            break;
          case 120:
            v10 = @"AR_WALKING_LOCALIZATION_FAILED_TO_INITIALIZE";
            break;
          case 121:
            v10 = @"AR_WALKING_LOCALIZATION_SUCCESSFUL";
            break;
          case 122:
            v10 = @"AR_WALKING_LOCALIZATION_USER_ABANDON";
            break;
          case 123:
            v10 = @"ATTEMPT_AR_WALKING_LOCALIZATION";
            break;
          case 124:
            v10 = @"RAISE_TO_ENTER_AR_WALKING";
            break;
          case 125:
            v10 = @"TAP_DISMISS";
            break;
          case 126:
            v10 = @"TAP_ENTER_AR_WALKING";
            break;
          case 127:
            v10 = @"TAP_OK";
            break;
          case 128:
            v10 = @"TAP_TRY_AGAIN";
            break;
          case 129:
            v10 = @"TAP_TURN_ON_IN_SETTINGS";
            break;
          case 130:
            v10 = @"VLF_CORRECTION_FAILED_TO_INITIALIZE";
            break;
          case 131:
            v10 = @"VLF_CORRECTION_USER_ABANDON";
            break;
          case 132:
            v10 = @"AREA_EVENTS_ALERT";
            break;
          case 133:
            v10 = @"TAP_SHOW_EVENTS_ADVISORY_DETAILS";
            break;
          case 134:
            v10 = @"ACCEPT_EVENT_REROUTE";
            break;
          case 135:
            v10 = @"DISPLAY_AREA_EVENTS_ADVISORY";
            break;
          case 136:
            v10 = @"DISMISS_EVENT_REROUTE";
            break;
          case 137:
            v10 = @"PUNCH_OUT_EVENTS_LINK";
            break;
          case 138:
            v10 = @"SELECT_VOICE_GUIDANCE_ALERTS_ONLY";
            break;
          case 139:
            v10 = @"ADJUST_GUIDANCE_SETTINGS";
            break;
          case 140:
            v10 = @"HIDE_DETAILS";
            break;
          case 141:
            v10 = @"SELECT_VOICE_GUIDANCE_ON";
            break;
          case 142:
            v10 = @"SELECT_VOICE_GUIDANCE_OFF";
            break;
          case 143:
            v10 = @"RESULT_REFINEMENT_CONTINUOUS_RANGE_MIN_INCREASE";
            break;
          case 144:
            v10 = @"TAP_TEXT_LABEL";
            break;
          case 145:
            v10 = @"SELECT_PREFERRED_TRAVEL_TYPE_WALKING";
            break;
          case 146:
            v10 = @"TAP_EXIT";
            break;
          case 147:
            v10 = @"TAP_CITY_MENU";
            break;
          case 148:
            v10 = @"CHECK_AVOID_TOLLS";
            break;
          case 149:
            v10 = @"SELECT_PREFERRED_TRAVEL_TYPE_TRANSIT";
            break;
          case 150:
            v10 = @"TAP_ICLOUD";
            break;
          case 151:
            v10 = @"CHECK_AVOID_HIGHWAYS";
            break;
          case 152:
            v10 = @"TAP_FAVORITES";
            break;
          case 153:
            v10 = @"SELECT_DISTANCE_IN_KM";
            break;
          case 154:
            v10 = @"RESULT_REFINEMENT_DISCRETE_RANGE_MIN_DECREASE";
            break;
          case 155:
            v10 = @"OPEN_FULL_CARD_FILTER";
            break;
          case 156:
            v10 = @"SCROLL_TEMPORAL_COLLECTION_BACKWARD";
            break;
          case 157:
            v10 = @"OPEN_SINGLE_CARD_FILTER";
            break;
          case 158:
            v10 = @"SELECT_RESULT_REFINEMENT_MULTI_SELECT";
            break;
          case 159:
            v10 = @"RESULT_REFINEMENT_CONTINUOUS_RANGE_MIN_DECREASE";
            break;
          case 160:
            v10 = @"SESSIONLESS_REVEAL";
            break;
          case 161:
            v10 = @"SCROLL_CITY_CURATED_COLLECTION_BACKWARD";
            break;
          case 162:
            v10 = @"SCROLL_TEMPORAL_COLLECTION_FORWARD";
            break;
          case 163:
            v10 = @"SELECT_PREFERRED_TRAVEL_TYPE_CYCLING";
            break;
          case 164:
            v10 = @"ENTER_RAP_REPORT_MENU";
            break;
          case 165:
            v10 = @"SELECT_PREFERRED_TRAVEL_TYPE_DRIVING";
            break;
          case 166:
            v10 = @"TAP_MY_VEHICLES";
            break;
          case 167:
            v10 = @"SUBMIT_SINGLE_CARD_FILTER";
            break;
          case 168:
            v10 = @"SUBMIT_FULL_CARD_FILTER";
            break;
          case 169:
            v10 = @"RESULT_REFINEMENT_DISCRETE_RANGE_MIN_INCREASE";
            break;
          case 170:
            v10 = @"RESULT_REFINEMENT_CONTINUOUS_RANGE_MAX_DECREASE";
            break;
          case 171:
            v10 = @"TAP_EXPLORE_CURATED_COLELCTIONS";
            break;
          case 172:
            v10 = @"TAP_ACCOUNT";
            break;
          case 173:
            v10 = @"TAP_WORLDWIDE_CURATED_COLLECTIONS";
            break;
          case 174:
            v10 = @"RESULT_REFINEMENT_DISCRETE_RANGE_MAX_DECREASE";
            break;
          case 175:
            v10 = @"TAP_RECENTLY_VIEWED_CURATED_COLLECTION";
            break;
          case 176:
            v10 = @"RESULT_REFINEMENT_TOGGLE_OFF";
            break;
          case 177:
            v10 = @"TAP_CITY_CURATED_COLLECTIONS";
            break;
          case 178:
            v10 = @"TAP_REPORTS";
            break;
          case 179:
            v10 = @"TAP_RATINGS";
            break;
          case 180:
            v10 = @"TAP_EXPLORE_CURATED_COLLECTIONS";
            break;
          case 181:
            v10 = @"TAP_OPEN_SPOTLIGHT_CURATED_COLLECTION";
            break;
          case 182:
            v10 = @"RESULT_REFINEMENT_DISCRETE_RANGE_MAX_INCREASE";
            break;
          case 183:
            v10 = @"SELECT_DISTANCE_IN_MILES";
            break;
          case 184:
            v10 = @"TAP_PRIVACY_STATEMENT";
            break;
          case 185:
            v10 = @"TAP_MAPS_SETTINGS";
            break;
          case 186:
            v10 = @"CANCEL_FULL_CARD_FILTER";
            break;
          case 187:
            v10 = @"TAP_LATEST_CURATED_COLLECTION";
            break;
          case 188:
            v10 = @"TAP_TEMPORAL_CURATED_COLLECTION";
            break;
          case 189:
            v10 = @"UNCHECK_AVOID_TOLLS";
            break;
          case 190:
            v10 = @"UNSELECT_SEARCH_REFINEMENT";
            break;
          case 191:
            v10 = @"TAP_RATING";
            break;
          case 192:
            v10 = @"TAP_ICLOUD_SIGN_IN";
            break;
          case 193:
            v10 = @"RESULT_REFINEMENT_CONTINUOUS_RANGE_MAX_INCREASE";
            break;
          case 194:
            v10 = @"TAP_POI_HIGHLIGHTED_AUXILIARY";
            break;
          case 195:
            v10 = @"UNCHECK_AVOID_HIGHWAYS";
            break;
          case 196:
            v10 = @"SCROLL_CITY_CURATED_COLLECTION_FORWARD";
            break;
          case 197:
            v10 = @"RESULT_REFINEMENT_TOGGLE_ON";
            break;
          case 198:
            v10 = @"TAP_CONTEXT_LINE_HYPERLINK";
            break;
          case 199:
            v10 = @"TAP_MY_GUIDES";
            break;
          case 200:
            v10 = @"SELECT_SEARCH_REFINEMENT";
            break;
          case 201:
            v10 = @"SESSIONLESS_TAP_ACCOUNT";
            break;
          case 202:
            v10 = @"UNSELECT_RESULT_REFINEMENT_MULTI_SELECT";
            break;
          case 203:
            v10 = @"TAP_TRAVEL_PREFERENCES";
            break;
          case 204:
            v10 = @"SHOW_CURATED_COLLECTION_LIST";
            break;
          case 205:
            v10 = @"CANCEL_SINGLE_CARD_FILTER";
            break;
          case 206:
            v10 = @"DISPLAY_HFP_OPTION";
            break;
          case 207:
            v10 = @"SWITCH_OFF_HFP";
            break;
          case 208:
            v10 = @"SWITCH_ON_HFP";
            break;
          case 209:
            v10 = @"TAP_QUICK_ACTION_TRAY";
            break;
          case 210:
            v10 = @"SHOW_ALL_CITIES";
            break;
          case 211:
            v10 = @"TAP_ADD_NEARBY_TRANSIT";
            break;
          case 212:
            v10 = @"RESUME";
            break;
          case 213:
            v10 = @"DISPLAY_TIPKIT_PROMPT";
            break;
          case 214:
            v10 = @"TAP_NEARBY_TRANSIT_FAVORITE";
            break;
          case 215:
            v10 = @"TAP_DRIVING_MODE";
            break;
          case 216:
            v10 = @"SWITCH_ON_VOICE_GUIDANCE";
            break;
          case 217:
            v10 = @"DISMISS_TIPKIT_PROMPT";
            break;
          case 218:
            v10 = @"TAP_EXPAND_EXIT_DETAILS";
            break;
          case 219:
            v10 = @"TAP_NEARBY_TRANSIT_FILTER";
            break;
          case 220:
            v10 = @"TAP_MORE_DEPARTURES";
            break;
          case 221:
            v10 = @"RAP_INDIVIDUAL_PLACE";
            break;
          case 222:
            v10 = @"RAP_ADD_MAP";
            break;
          case 223:
            v10 = @"TAP_SUGGESTED_RAP";
            break;
          case 224:
            v10 = @"RAP_STREET_ISSUE";
            break;
          case 225:
            v10 = @"SWIPE_PIN_REVEAL";
            break;
          case 226:
            v10 = @"TAP_ADD_TIPKIT_FAVORITE";
            break;
          case 227:
            v10 = @"SCROLL_VEHICLE_INFORMATION_BACKWARD";
            break;
          case 228:
            v10 = @"RAP_BAD_TRIP";
            break;
          case 229:
            v10 = @"RAP_PLACE_ISSUE";
            break;
          case 230:
            v10 = @"TAP_OPEN_MAPS";
            break;
          case 231:
            v10 = @"TAP_NEARBY_TRANSIT_RESULT";
            break;
          case 232:
            v10 = @"RAP_GUIDE";
            break;
          case 233:
            v10 = @"SWITCH_OFF_VOICE_GUIDANCE";
            break;
          case 234:
            v10 = @"DISPLAY_TRIP_FEEDBACK_MESSAGE";
            break;
          case 235:
            v10 = @"SELECT_TRANSIT_STEP";
            break;
          case 236:
            v10 = @"SCROLL_VEHICLE_INFORMATION_FORWARD";
            break;
          case 237:
            v10 = @"TAP_SEE_MORE";
            break;
          case 238:
            v10 = @"RAP_IN_REVIEW";
            break;
          case 239:
            v10 = @"TAP_OPEN_MENU";
            break;
          case 240:
            v10 = @"TAP_NEARBY_TRANSIT";
            break;
          case 241:
            v10 = @"TAP_PIN_LINE";
            break;
          case 242:
            v10 = @"SWITCH_OFF_TRIP_FEEDBACK";
            break;
          case 243:
            v10 = @"RAP_GOOD_TRIP";
            break;
          case 244:
            v10 = @"TAP_FILTERED_CURATED_COLLECTION";
            break;
          case 245:
            v10 = @"SHARE_MY_LOCATION";
            break;
          case 246:
            v10 = @"ADD_RECOMMENDATION_TO_MAPS_WITH_SESSION";
            break;
          case 247:
            v10 = @"DISPLAY_GENERIC_ADVISORY";
            break;
          case 248:
            v10 = @"ADVISORY_ALERT";
            break;
          case 249:
            v10 = @"PUNCH_OUT_LINK";
            break;
          case 250:
            v10 = @"TAP_GENERIC_ADVISORY";
            break;
          case 251:
            v10 = @"TAP_EXPLORE_MODE";
            break;
          case 252:
            v10 = @"TAP_UNPIN_LINE";
            break;
          case 253:
            v10 = @"MENU_UNPIN";
            break;
          case 254:
            v10 = @"MENU_PIN";
            break;
          case 255:
            v10 = @"SWIPE_PIN";
            break;
          case 256:
            v10 = @"SWIPE_UNPIN";
            break;
          case 257:
            v10 = @"TAP_MEDIA_APP";
            break;
          case 258:
            v10 = @"TAP_GUIDES_SUBACTION";
            break;
          case 259:
            v10 = @"TAP_MEDIA";
            break;
          case 260:
            v10 = @"PUNCH_OUT_MEDIA";
            break;
          case 261:
            v10 = @"SHOW_MEDIA_APP_MENU";
            break;
          case 262:
            v10 = @"SCROLL_RIGHT_RIBBON";
            break;
          case 263:
            v10 = @"SCROLL_LEFT_RIBBON";
            break;
          case 264:
            v10 = @"TAP_GOOD_TO_KNOW_MORE_BUTTON";
            break;
          case 265:
            v10 = @"TAP_SHOW_MORE_TEXT";
            break;
          case 266:
            v10 = @"SCROLL_LEFT_RATINGS";
            break;
          case 267:
            v10 = @"SCROLL_LEFT_TEMPLATE_PLACE";
            break;
          case 268:
            v10 = @"SCROLL_RIGHT_TEMPLATE_PLACE";
            break;
          case 269:
            v10 = @"SCROLL_RIGHT_RATINGS";
            break;
          case 270:
            v10 = @"TAP_ALLOW";
            break;
          case 271:
            v10 = @"TAP_GO_TO_SETTING";
            break;
          case 272:
            v10 = @"START_SUBMIT_REPORT";
            break;
          case 273:
            v10 = @"AUTHENTICATION_INFO_FAILURE";
            break;
          case 274:
            v10 = @"SUCCESSFULLY_SUBMIT_REPORT";
            break;
          case 275:
            v10 = @"FAILED_SUBMIT_REPORT";
            break;
          case 276:
            v10 = @"AUTHENTICATION_INFO_SUCCESS";
            break;
          case 277:
            v10 = @"EDIT_WAYPOINT";
            break;
          case 278:
            v10 = @"CLEAR_TEXT";
            break;
          case 279:
            v10 = @"REORDER_WAYPOINT";
            break;
          case 280:
            v10 = @"REMOVE_WAYPOINT";
            break;
          case 281:
            v10 = @"TAP_SECONDARY_MULTI_VENDORS_SELECTION";
            break;
          case 282:
            v10 = @"TAP_SHOWCASE_MENU";
            break;
          case 283:
            v10 = @"TAP_SHORTCUT_MULTI_VENDORS_SELECTION";
            break;
          case 284:
            v10 = @"TAP_PHOTO_ALBUM";
            break;
          case 285:
            v10 = @"RESEARVE_TABLE_MULTI_VENDORS_SELECTION";
            break;
          case 286:
            v10 = @"RAP_INLINE_ADD";
            break;
          case 287:
            v10 = @"RAP_TAP_EDIT";
            break;
          case 288:
            v10 = @"CLAIM_BUSINESS";
            break;
          case 289:
            v10 = @"RAP_EDIT_OPTIONS";
            break;
          case 290:
            v10 = @"TAP_IN_REVIEW_RAP";
            break;
          case 291:
            v10 = @"ORB_MENU_ADD_STOP";
            break;
          case 292:
            v10 = @"NEXT_STOP";
            break;
          case 293:
            v10 = @"ARRIVE_AT_WAYPOINT";
            break;
          case 294:
            v10 = @"REMOVE_STOP";
            break;
          case 295:
            v10 = @"DISPLAY_PAUSE_BUTTON";
            break;
          case 296:
            v10 = @"DISPLAY_PAUSE_NEXT_BUTTONS";
            break;
          case 297:
            v10 = @"AUTO_ADVANCE_NEXT_STOP";
            break;
          case 298:
            v10 = @"ADD_INLINE_NEGATIVE_RATING";
            break;
          case 299:
            v10 = @"ADD_INLINE_POSITIVE_RATING";
            break;
          case 300:
            v10 = @"TAP_TO_ADD_RATING_AND_PHOTO";
            break;
          case 301:
            v10 = @"SUBMIT_RATINGS_AND_PHOTOS";
            break;
          case 302:
            v10 = @"TAP_RECENTLY_VIEWED_MULTIPOINT_ROUTE";
            break;
          case 303:
            v10 = @"TAP_RECENTLY_VIEWED_ROUTE";
            break;
          case 304:
            v10 = @"SHOW_ALL_RECENTS";
            break;
          case 305:
            v10 = @"RESUME_MULTIPOINT_ROUTE";
            break;
          case 306:
            v10 = @"DISMISS_TRANSIT_TIPKIT";
            break;
          case 307:
            v10 = @"DISPLAY_TRANSIT_TIPKIT";
            break;
          case 308:
            v10 = @"TAP_TRANSIT_TIPKIT";
            break;
          case 309:
            v10 = @"FILTER_EV";
            break;
          case 310:
            v10 = @"FILTER_SURCHARGE";
            break;
          case 311:
            v10 = @"FILTER_PREFER";
            break;
          case 312:
            v10 = @"TAP_WALKING_ANNOTATION";
            break;
          case 313:
            v10 = @"FILTER_AVOID";
            break;
          case 314:
            v10 = @"FILTER_TRANSPORTATION_MODE";
            break;
          case 315:
            v10 = @"FILTER_RECOMMENDED_ROUTES";
            break;
          case 316:
            v10 = @"FILTER_IC_FARES";
            break;
          case 317:
            v10 = @"FILTER_TRANSIT_CARD_FARES";
            break;
          case 318:
            v10 = @"RESERVE_TABLE_MULTI_VENDORS_SELECTION";
            break;
          case 319:
            v10 = @"TAP_NOTIFICATION_SETTINGS";
            break;
          case 320:
            v10 = @"TAP_ENABLE_NOTIFICATION";
            break;
          case 321:
            v10 = @"ARP_SUGGESTIONS_TURN_OFF";
            break;
          case 322:
            v10 = @"ARP_SUGGESTIONS_TURN_ON";
            break;
          case 323:
            v10 = @"DISMISS_ARP_SUGGESTION";
            break;
          case 324:
            v10 = @"RATINGS_AND_PHOTOS_TURN_ON";
            break;
          case 325:
            v10 = @"SCROLL_RIGHT_SUGGESTED_PHOTOS";
            break;
          case 326:
            v10 = @"UNSELECT_SUGGESTED_PHOTOS";
            break;
          case 327:
            v10 = @"SUGGESTED_PHOTOS_SHOWN";
            break;
          case 328:
            v10 = @"DISMISS_PHOTOS_LIVE_NOTIFICATION";
            break;
          case 329:
            v10 = @"TAP_YOUR_PHOTOS_ALBUM";
            break;
          case 330:
            v10 = @"RATINGS_AND_PHOTOS_TURN_OFF";
            break;
          case 331:
            v10 = @"DELETE_PHOTO";
            break;
          case 332:
            v10 = @"DISPLAY_PHOTOS_LIVE_NOTIFICATION";
            break;
          case 333:
            v10 = @"SCROLL_LEFT_SUGGESTED_PHOTOS";
            break;
          case 334:
            v10 = @"TAP_PHOTOS_LIVE_NOTIFICATION";
            break;
          case 335:
            v10 = @"DISPLAY_YOUR_PHOTOS_ALBUM";
            break;
          case 336:
            v10 = @"SELECT_SUGGESTED_PHOTOS";
            break;
          case 337:
            v10 = @"ADD_STOP";
            break;
          case 338:
            v10 = @"SHOW_CREDIT_TURN_ON";
            break;
          case 339:
            v10 = @"DISPLAY_ARP_SUGGESTION";
            break;
          case 340:
            v10 = @"TAP_TO_ADD_PHOTO_CREDIT";
            break;
          case 341:
            v10 = @"SHOW_CREDIT_TURN_OFF";
            break;
          case 342:
            v10 = @"TAP_TO_EDIT_NICKNAME";
            break;
          case 343:
            v10 = @"SUBMIT_RATINGS";
            break;
          case 344:
            v10 = @"END_NAV_ON_WATCH";
            break;
          case 345:
            v10 = @"FILTER_EBIKE";
            break;
          case 356:
            v10 = @"ADD_STOP_SIRI";
            break;
          case 357:
            v10 = @"TAP_REVIEWED_RAP";
            break;
          case 358:
            v10 = @"TAP_OUTREACH_RAP";
            break;
          case 359:
            v10 = @"DISPLAY_SUGGESTED_ITEM";
            break;
          case 360:
            v10 = @"DISPLAY_HIKING_TIPKIT";
            break;
          case 361:
            v10 = @"DISMISS_HIKING_TIPKIT";
            break;
          case 362:
            v10 = @"TAP_HIKING_TIPKIT";
            break;
          case 363:
            v10 = @"SCROLL_LEFT_TRAILS";
            break;
          case 364:
            v10 = @"TAP_MORE_TRAILS";
            break;
          case 365:
            v10 = @"TAP_RELATED_TRAIL";
            break;
          case 366:
            v10 = @"DISPLAY_EXPIRED_SHOWCASE_ERROR";
            break;
          case 367:
            v10 = @"SCROLL_RIGHT_TRAILS";
            break;
          case 368:
            v10 = @"SELECT_DOWNLOAD_OFFLINE_MAPS_SESSIONLESS";
            break;
          case 369:
            v10 = @"DISPLAY_DOWNLOAD_MAPS_ALERTS";
            break;
          case 370:
            v10 = @"COMPLETE_DOWNLOAD_OFFLINE_MAPS";
            break;
          case 371:
            v10 = @"TAP_DOWNLOAD_MAPS_TIPKIT";
            break;
          case 372:
            v10 = @"SELECT_DOWNLOAD_OFFLINE_MAPS";
            break;
          case 373:
            v10 = @"EXPIRED_MAPS_REMOVED";
            break;
          case 374:
            v10 = @"UPDATE_ALL_DOWNLOAD_MAPS";
            break;
          case 375:
            v10 = @"TAP_EXPIRED_MAPS";
            break;
          case 376:
            v10 = @"DISPLAY_COMPLETE_DOWNLOAD_MAPS";
            break;
          case 377:
            v10 = @"MOVE_DOWNLOAD_MAPS";
            break;
          case 378:
            v10 = @"SAVE_RENAME_DOWNLOAD_MAPS";
            break;
          case 379:
            v10 = @"TAP_COMPLETE_DOWNLOAD_MAPS";
            break;
          case 380:
            v10 = @"TAP_ENTER_OFFLINE_MAPS";
            break;
          case 381:
            v10 = @"TAP_DOWNLOAD_MAPS";
            break;
          case 382:
            v10 = @"TAP_DOWNLOAD_MAPS_CONTINUE";
            break;
          case 383:
            v10 = @"DELETE_DOWNLOAD_MAPS";
            break;
          case 384:
            v10 = @"SLIDE_CLEAR_EXPIRED_MAPS";
            break;
          case 385:
            v10 = @"RENAME_DOWNLOAD_MAPS";
            break;
          case 386:
            v10 = @"RESIZE_DOWNLOAD_MAPS";
            break;
          case 387:
            v10 = @"DISPLAY_COMPLETE_DOWNLOAD_MAPS_SESSIONLESS";
            break;
          case 388:
            v10 = @"RESTORE_EXPIRED_MAPS";
            break;
          case 389:
            v10 = @"CLEAR_EXPIRED_MAPS";
            break;
          case 390:
            v10 = @"TAP_USING_OFFLINE_BAR";
            break;
          case 391:
            v10 = @"UPDATE_DOWNLOAD_MAPS";
            break;
          case 392:
            v10 = @"DISPLAY_DOWNLOAD_MAPS_TIPKIT";
            break;
          case 393:
            v10 = @"DISPLAY_DOWNLOAD_MAPS";
            break;
          case 394:
            v10 = @"TAP_DOWNLOAD_MAPS_SIGNIFICANT_LOCATION";
            break;
          case 395:
            v10 = @"DISPLAY_EXPIRED_MAPS";
            break;
          case 396:
            v10 = @"COMPLETE_DOWNLOAD_OFFLINE_MAPS_SESSIONLESS";
            break;
          case 397:
            v10 = @"DISPLAY_SUGGESTED_DOWNLOAD_MAPS";
            break;
          case 398:
            v10 = @"SLIDE_RESTORE_EXPIRED_MAPS";
            break;
          case 399:
            v10 = @"ETA_SHARE_TRAY_TIMEOUT";
            break;
          case 400:
            v10 = @"START_ETA_SHARING";
            break;
          case 401:
            v10 = @"PERSON_LOCATION_UPDATE";
            break;
          case 402:
            v10 = @"STOP_ETA_SHARING";
            break;
          case 403:
            v10 = @"PUNCH_OUT_TO_FINDMY";
            break;
          case 404:
            v10 = @"TAP_PEOPLE_LOCATION";
            break;
          case 405:
            v10 = @"TAP_TO_REQUEST_LOCATION";
            break;
          case 406:
            v10 = @"ZOOM_OUT_CROWN";
            break;
          case 407:
            v10 = @"TAP_RESIZE_DOWNLOAD_MAPS";
            break;
          case 408:
            v10 = @"TAP_DELETE_DOWNLOAD_MAPS";
            break;
          case 409:
            v10 = @"SELECT_LIST_VIEW";
            break;
          case 410:
            v10 = @"SCROLL_RIGHT_TRAILHEADS";
            break;
          case 411:
            v10 = @"SWITCH_TO_ONLINE_MODE";
            break;
          case 412:
            v10 = @"TAP_RELATED_TRAILHEAD";
            break;
          case 413:
            v10 = @"SELECT_ELEVATION_VIEW";
            break;
          case 414:
            v10 = @"TOGGLE_PROXIMITY_RADIUS_ON";
            break;
          case 415:
            v10 = @"SEE_MORE_RECENTS";
            break;
          case 416:
            v10 = @"SEE_MORE_GUIDES";
            break;
          case 417:
            v10 = @"SELECT_CONTROLS";
            break;
          case 418:
            v10 = @"NO_SEARCH_RESULTS";
            break;
          case 419:
            v10 = @"TAP_VIEW_RESULTS_CAROUSEL";
            break;
          case 420:
            v10 = @"TAP_VIEW_RESULTS_LIST";
            break;
          case 421:
            v10 = @"SELECT_MAP_VIEW";
            break;
          case 422:
            v10 = @"SCROLL_LEFT_TRAILHEADS";
            break;
          case 423:
            v10 = @"SWITCH_TO_OFFLINE_MODE";
            break;
          case 424:
            v10 = @"ZOOM_IN_CROWN";
            break;
          case 425:
            v10 = @"TOGGLE_PROXIMITY_RADIUS_OFF";
            break;
          case 426:
            v10 = @"TAP_MAP";
            break;
          case 427:
            v10 = @"SWIPE_DOWN";
            break;
          case 428:
            v10 = @"TAP_MORE_TRAILHEADS";
            break;
          case 429:
            v10 = @"TAP_ROUTE_OPTIONS";
            break;
          case 430:
            v10 = @"TAP_ROUTE_NAV_MAP";
            break;
          case 431:
            v10 = @"TAP_ROUTE_OVERVIEW_MAP";
            break;
          case 432:
            v10 = @"TAP_AUDIO";
            break;
          case 433:
            v10 = @"TAP_OPEN_PLACECARD";
            break;
          case 434:
            v10 = @"TAP_VIEW_STOPS";
            break;
          case 435:
            v10 = @"TAP_ROUTE_DETAILS";
            break;
          case 436:
            v10 = @"ADD_LPR_VEHICLE";
            break;
          case 437:
            v10 = @"TAP_ADD_VEHICLE";
            break;
          case 438:
            v10 = @"TAP_PLUG_TYPE";
            break;
          case 439:
            v10 = @"UNSELECT_SUGGESTED_NETWORK";
            break;
          case 440:
            v10 = @"TAP_SET_UP_LATER";
            break;
          case 441:
            v10 = @"ADD_EV_VEHICLE";
            break;
          case 442:
            v10 = @"UPDATE_COLOR";
            break;
          case 443:
            v10 = @"SELECT_OTHER_NETWORK";
            break;
          case 444:
            v10 = @"UNSELECT_NETWORK";
            break;
          case 445:
            v10 = @"TAP_BACK";
            break;
          case 446:
            v10 = @"TAP_CANCEL";
            break;
          case 447:
            v10 = @"UNSELECT_VEHICLE";
            break;
          case 448:
            v10 = @"UNSELECT_OTHER_NETWORK";
            break;
          case 449:
            v10 = @"DISPLAY_EV_TIPKIT";
            break;
          case 450:
            v10 = @"SELECT_NETWORK";
            break;
          case 451:
            v10 = @"TAP_EV_TIPKIT";
            break;
          case 452:
            v10 = @"TAP_CHOOSE_NETWORKS";
            break;
          case 453:
            v10 = @"TAP_ADD_NETWORK";
            break;
          case 454:
            v10 = @"FILTER_NETWORK";
            break;
          case 455:
            v10 = @"SELECT_SUGGESTED_NETWORK";
            break;
          case 456:
            v10 = @"TRANSIT_TO_WALKING";
            break;
          case 457:
            v10 = @"TRANSIT_TO_FINDMY";
            break;
          case 458:
            v10 = @"TAP_AC_KEYBOARD";
            break;
          case 459:
            v10 = @"REACH_PHOTO_STRIP_END";
            break;
          case 460:
            v10 = @"SEARCH_HERE_REVEAL";
            break;
          case 461:
            v10 = @"TAP_SEARCH_HERE";
            break;
          case 462:
            v10 = @"TAP_RECENTLY_VIEWED_CURATED_HIKE";
            break;
          case 463:
            v10 = @"SAVE";
            break;
          case 464:
            v10 = @"TAP_MORE_CURATED_HIKES";
            break;
          case 465:
            v10 = @"CREATE_CUSTOM_ROUTE";
            break;
          case 466:
            v10 = @"TAP_TRY_NOW";
            break;
          case 467:
            v10 = @"TAP_CURATED_HIKE";
            break;
          case 468:
            v10 = @"TAP_RECENTLY_VIEWED_CUSTOM_ROUTE";
            break;
          case 469:
            v10 = @"ADD_TO_LIBRARY";
            break;
          case 470:
            v10 = @"START_HIKING";
            break;
          case 471:
            v10 = @"EDIT_NOTE";
            break;
          case 472:
            v10 = @"CREATE_NOTE";
            break;
          case 473:
            v10 = @"DELETE_PIN";
            break;
          case 474:
            v10 = @"ADD_ROUTE";
            break;
          case 475:
            v10 = @"ADD_PIN";
            break;
          case 476:
            v10 = @"REMOVE_FROM_COLLECTION";
            break;
          case 477:
            v10 = @"REMOVE_FROM_LIBRARY";
            break;
          case 478:
            v10 = @"TAP_ITEM";
            break;
          case 479:
            v10 = @"DELETE_ROUTE";
            break;
          case 480:
            v10 = @"TAP_ROUTE";
            break;
          case 481:
            v10 = @"TAP_DOWNLOAD_WATCH_MAPS";
            break;
          case 482:
            v10 = @"DISPLAY_WATCH_NOT_ENOUGH_DOWNLOAD_TIPKIT";
            break;
          case 483:
            v10 = @"STOP_DOWNLOAD_ONTO_WATCH";
            break;
          case 484:
            v10 = @"TAP_DOWNLOAD_ONTO_WATCH";
            break;
          case 485:
            v10 = @"TAP_WATCH_NOT_ENOUGH_DOWNLOAD_TIPKIT";
            break;
          case 486:
            v10 = @"TAP_DOWNLOAD_NOW_WATCH";
            break;
          case 487:
            v10 = @"REVEAL_DETECTION_LIST";
            break;
          case 488:
            v10 = @"TAP_RECOMMENDATION";
            break;
          case 489:
            v10 = @"TAP_EXPAND";
            break;
          case 490:
            v10 = @"EXPAND_DETECTION_LIST";
            break;
          case 491:
            v10 = @"FIRST_PARTY_MAP_VIEW";
            break;
          case 492:
            v10 = @"SECOND_PARTY_MAP_VIEW";
            break;
          case 493:
            v10 = @"THIRD_PARTY_MAP_VIEW";
            break;
          case 494:
            v10 = @"DAEMON_PARTY_MAP_VIEW";
            break;
          case 495:
            v10 = @"MAPS_APP_DWELL_TIME_3_SEC";
            break;
          case 496:
            v10 = @"MAPS_APP_DWELL_TIME_30_SEC";
            break;
          case 497:
            v10 = @"MAPS_CARPLAY_DWELL_TIME_3_SEC";
            break;
          case 498:
            v10 = @"MAPS_CARPLAY_DWELL_TIME_30_SEC";
            break;
          case 499:
            v10 = @"DISPLAY_DOOM";
            break;
          case 500:
            v10 = @"TAP_DOOM";
            break;
          case 501:
            v10 = @"TAP_ROUTE_GENIUS";
            break;
          case 502:
            v10 = @"DISPLAY_ROUTE_GENIUS";
            break;
          case 503:
            v10 = @"TAP_WIDGET";
            break;
          case 504:
            v10 = @"ARRIVE_AT_DESTINATION";
            break;
          case 505:
            v10 = @"DISPLAY_WIDGET";
            break;
          case 506:
            v10 = @"CLEAR_HISTORY";
            break;
          case 507:
            v10 = @"TAP_SECTION";
            break;
          case 508:
            v10 = @"APPROVE_LOCATION";
            break;
          case 509:
            v10 = @"DISMISS_VISITED_PLACES_TIPKIT";
            break;
          case 510:
            v10 = @"DISPLAY_VISITED_PLACES_TIPKIT";
            break;
          case 511:
            v10 = @"MORE_OPTIONS";
            break;
          case 512:
            v10 = @"TAP_VISITED_PLACES_AVAILABLE";
            break;
          case 513:
            v10 = @"AUTO_REFRESH_SEARCH";
            break;
          case 514:
            v10 = @"REMOVE_VISIT";
            break;
          case 515:
            v10 = @"WRONG_LOCATION";
            break;
          case 516:
            v10 = @"CONFIRM";
            break;
          case 517:
            v10 = @"KEEP_HISTORY";
            break;
          case 518:
            v10 = @"DISPLAY_VISITED_PLACES_AVAILABLE";
            break;
          case 519:
            v10 = @"REMOVE";
            break;
          case 520:
            v10 = @"ALLOW";
            break;
          case 521:
            v10 = @"DONT_ALLOW";
            break;
          case 522:
            v10 = @"REMOVE_EVERY_VISIT";
            break;
          case 523:
            v10 = @"CONTINUE_VISITED_PLACES_TIPKIT";
            break;
          case 524:
            v10 = @"REMOVE_FROM_FAVORITE_GUIDE";
            break;
          case 525:
            v10 = @"ADD_TO_FAVORITE_GUIDE";
            break;
          case 526:
            v10 = @"FAMILIAR_ROUTE_DISPLAYED";
            break;
          case 527:
            v10 = @"FAMILIAR_ROUTE_NAV_STARTED";
            break;
          case 528:
            v10 = @"SELECT_AUDIO_VOLUME_LOUDER";
            break;
          case 529:
            v10 = @"SELECT_AUDIO_VOLUME_SOFTER";
            break;
          case 1001:
            v10 = @"PAN";
            break;
          case 1002:
            v10 = @"ZOOM_IN";
            break;
          case 1003:
            v10 = @"ZOOM_OUT";
            break;
          case 1004:
            v10 = @"ROTATE";
            break;
          case 1010:
            v10 = @"TAP_POI";
            break;
          case 1011:
            v10 = @"TAP_POI_TRANSIT";
            break;
          case 1017:
            v10 = @"TAP_POI_HIGHLIGHTED";
            break;
          case 1018:
            v10 = @"TAP_POI_CLUSTERED";
            break;
          case 1020:
            v10 = @"TAP_POI_DROPPED_PIN";
            break;
          case 1030:
            v10 = @"DROP_PIN";
            break;
          case 1031:
            v10 = @"TAP_INCIDENT";
            break;
          case 1032:
            v10 = @"TAP_TRANSIT_LINE";
            break;
          case 1033:
            v10 = @"TAP_POI_CALENDAR";
            break;
          case 1034:
            v10 = @"TAP_POI_CURRENT_LOCATION";
            break;
          case 1035:
            v10 = @"TAP_POI_TRANSIT_LINE";
            break;
          case 1036:
            v10 = @"TAP_POI_LANDMARK";
            break;
          case 1037:
            v10 = @"TAP_POI_FLYOVER";
            break;
          case 1038:
            v10 = @"TAP_TO_HIDE_TRAY";
            break;
          case 1039:
            v10 = @"TAP_TO_REVEAL_TRAY";
            break;
          case 1040:
            v10 = @"TAP_COMPASS";
            break;
          case 1041:
            v10 = @"PITCH_AWAY_FROM_GROUND";
            break;
          case 1042:
            v10 = @"PITCH_CLOSER_TO_GROUND";
            break;
          case 1043:
            v10 = @"ZOOM_IN_PINCH";
            break;
          case 1044:
            v10 = @"ZOOM_OUT_PINCH";
            break;
          case 1045:
            v10 = @"ZOOM_IN_DOUBLE_TAP";
            break;
          case 1046:
            v10 = @"ZOOM_OUT_TWO_FINGER_TAP";
            break;
          case 1047:
            v10 = @"ZOOM_IN_ONE_FINGER";
            break;
          case 1048:
            v10 = @"ZOOM_OUT_ONE_FINGER";
            break;
          case 1049:
            v10 = @"ZOOM_IN_BUTTON";
            break;
          case 1050:
            v10 = @"ZOOM_OUT_BUTTON";
            break;
          case 1051:
            v10 = @"TAP_TRAFFIC_CAMERA";
            break;
          case 1052:
            v10 = @"DISPLAY_INDOOR_MAP_BUTTON";
            break;
          case 1053:
            v10 = @"OPEN_INDOOR_MAP";
            break;
          case 1054:
            v10 = @"DISPLAY_VENUE_BROWSE_BUTTON";
            break;
          case 1055:
            v10 = @"TAP_VENUE_BROWSE_BUTTON";
            break;
          case 1056:
            v10 = @"ENTER_VENUE_EXPERIENCE";
            break;
          case 1057:
            v10 = @"EXIT_VENUE_EXPERIENCE";
            break;
          case 1058:
            v10 = @"ZOOM_IN_SCENE_PINCH";
            break;
          case 1059:
            v10 = @"ZOOM_OUT_SCENE_PINCH";
            break;
          case 1060:
            v10 = @"ZOOM_RESET";
            break;
          case 1061:
            v10 = @"TAP_SCENE_UNAVAILABLE_AREA";
            break;
          case 1062:
            v10 = @"TAP_TRANSIT_ACCESS_POINT";
            break;
          case 1063:
            v10 = @"TAP_SPEED_CAMERA";
            break;
          case 1064:
            v10 = @"TAP_RED_LIGHT_CAMERA";
            break;
          case 1065:
            v10 = @"TAP_GEO";
            break;
          default:
            if (a2 != 1500)
            {
              goto LABEL_117;
            }

            v10 = @"TAP_PLAY_SOUND";
            break;
        }
      }

      goto LABEL_1427;
    }

    if (a2 > 9000)
    {
      if (a2 <= 12000)
      {
        switch(a2)
        {
          case 10101:
            v10 = @"RAP_DIRECTIONS_INSTRUCTIONS_INCORRECT";
            break;
          case 10102:
            v10 = @"RAP_DIRECTIONS_BETTER_ROUTE_AVAILABLE";
            break;
          case 10103:
            v10 = @"RAP_DIRECTIONS_ARRIVAL_ENTRY_POINT_INCORRECT";
            break;
          case 10104:
            v10 = @"RAP_DIRECTIONS_ESTIMATED_ARRIVAL_TIME_INCORRECT";
            break;
          case 10105:
            v10 = @"RAP_DIRECTIONS_ADD_INSTRUCTION_INFO";
            break;
          case 10106:
            v10 = @"RAP_DIRECTIONS_COLLAPSE_INSTRUCTION";
            break;
          case 10107:
            v10 = @"RAP_DIRECTIONS_EXPAND_INSTRUCTION";
            break;
          case 10108:
            v10 = @"RAP_DIRECTIONS_SELECT_INSTRUCTION";
            break;
          case 10109:
            v10 = @"RAP_CANCEL";
            break;
          case 10110:
            v10 = @"RAP_NEXT";
            break;
          case 10111:
            v10 = @"RAP_BACK";
            break;
          case 10112:
            v10 = @"RAP_SEND";
            break;
          case 10113:
            v10 = @"RAP_SKIP";
            break;
          case 10114:
            v10 = @"RAP_SHOW_MORE";
            break;
          case 10115:
            v10 = @"RAP_ADD_PHOTO";
            break;
          case 10116:
            v10 = @"RAP_MAP_INCORRECT";
            break;
          case 10117:
            v10 = @"RAP_BAD_DIRECTIONS";
            break;
          case 10118:
            v10 = @"RAP_TRANSIT_INFO_INCORRECT";
            break;
          case 10119:
            v10 = @"RAP_SATELLITE_IMAGE_PROBLEM";
            break;
          case 10120:
            v10 = @"RAP_SEARCH_RESULTS_INCORRECT";
            break;
          case 10121:
            v10 = @"RAP_ADD_A_PLACE";
            break;
          case 10122:
            v10 = @"RAP_HOME";
            break;
          case 10123:
            v10 = @"RAP_WORK";
            break;
          case 10124:
            v10 = @"RAP_OTHER";
            break;
          case 10125:
            v10 = @"RAP_LOCATION";
            break;
          case 10126:
            v10 = @"RAP_TRANSIT_STATION_INFO_INCORRECT";
            break;
          case 10127:
            v10 = @"RAP_TRANSIT_STATION_ACCESS_POINT_INFO_INCORRECT";
            break;
          case 10128:
            v10 = @"RAP_TRANSIT_LINE_INFO_INCORRECT";
            break;
          case 10129:
            v10 = @"RAP_TRANSIT_LINE_NAME_INCORRECT";
            break;
          case 10130:
            v10 = @"RAP_TRANSIT_LINE_SHAPE_INCORRECT";
            break;
          case 10131:
            v10 = @"RAP_TRANSIT_LINE_SCHEDULE_INCORRECT";
            break;
          case 10132:
            v10 = @"RAP_TRANSIT_DELAY";
            break;
          case 10133:
            v10 = @"RAP_LOCATION_CLOSED";
            break;
          case 10134:
            v10 = @"RAP_CLOSED_PERMANENTLY";
            break;
          case 10135:
            v10 = @"RAP_CLOSED_TEMPORARILY";
            break;
          case 10136:
            v10 = @"RAP_HOURS_HAVE_CHANGED";
            break;
          case 10137:
            v10 = @"RAP_SELECT_STATION";
            break;
          case 10138:
            v10 = @"RAP_SELECT_LINE";
            break;
          case 10139:
            v10 = @"RAP_SELECT_ACCESS_POINT";
            break;
          case 10140:
            v10 = @"RAP_SELECT_SEARCH";
            break;
          case 10141:
            v10 = @"RAP_PAN_MAP";
            break;
          case 10142:
            v10 = @"RAP_CENTER_MAP_ON_USER";
            break;
          case 10143:
            v10 = @"RAP_SEARCH_UNEXPECTED";
            break;
          case 10144:
            v10 = @"RAP_ADD_POI";
            break;
          case 10145:
            v10 = @"RAP_ADD_STREET_ADDRESS";
            break;
          case 10146:
            v10 = @"RAP_ADD_OTHER";
            break;
          case 10147:
            v10 = @"RAP_SELECT_CATEGORY";
            break;
          case 10148:
            v10 = @"RAP_TAKE_PHOTO";
            break;
          case 10149:
            v10 = @"RAP_RETAKE_PHOTO";
            break;
          case 10150:
            v10 = @"RAP_PLACE_DETAILS";
            break;
          case 10151:
            v10 = @"RAP_SATELLITE_IMAGE_OUTDATED";
            break;
          case 10152:
            v10 = @"RAP_SATELLITE_IMAGE_QUALITY";
            break;
          case 10153:
            v10 = @"RAP_SELECT_LABEL";
            break;
          case 10154:
            v10 = @"RAP_SELECT_ROUTE";
            break;
          case 10155:
            v10 = @"RAP_CLAIM_BUSINESS";
            break;
          case 10156:
            v10 = @"RAP_BRAND_DETAILS";
            break;
          case 10157:
            v10 = @"RAP_LOOK_AROUND_IMAGE_QUALITY";
            break;
          case 10158:
            v10 = @"RAP_LOOK_AROUND_LABELS_STREET";
            break;
          case 10159:
            v10 = @"RAP_LOOK_AROUND_BLURRING";
            break;
          case 10160:
            v10 = @"RAP_LOOK_AROUND_REMOVE_HOME";
            break;
          case 10161:
            v10 = @"RAP_LOOK_AROUND_LABELS_STORE";
            break;
          case 10162:
            v10 = @"RAP_LOOK_AROUND_PRIVACY";
            break;
          case 10163:
            v10 = @"RAP_INCORRECT_HOURS";
            break;
          case 10164:
            v10 = @"RAP_INCORRECT_ADDRESS";
            break;
          case 10165:
            v10 = @"RAP_EDIT_PLACE_DETAILS";
            break;
          case 10166:
            v10 = @"RAP_EDIT_PLACE_NAME";
            break;
          case 10167:
            v10 = @"RAP_EDIT_ADDRESS";
            break;
          case 10168:
            v10 = @"RAP_ADD_CATEGORY";
            break;
          case 10169:
            v10 = @"RAP_REMOVE_CATEGORY";
            break;
          case 10170:
            v10 = @"RAP_DESELECT_CATEGORY";
            break;
          case 10171:
            v10 = @"RAP_ADD_HOURS";
            break;
          case 10172:
            v10 = @"RAP_REMOVE_HOURS";
            break;
          case 10173:
            v10 = @"RAP_TAP_DAY_OF_WEEK";
            break;
          case 10174:
            v10 = @"RAP_TAP_24_HOURS_BUTTON";
            break;
          case 10175:
            v10 = @"RAP_TAP_OPEN_TIME";
            break;
          case 10176:
            v10 = @"RAP_TAP_CLOSED_TIME";
            break;
          case 10177:
            v10 = @"RAP_TAP_TEMPORARY_CLOSURE";
            break;
          case 10178:
            v10 = @"RAP_TAP_PERMANENTLY_CLOSED";
            break;
          case 10179:
            v10 = @"RAP_EDIT_WEBSITE";
            break;
          case 10180:
            v10 = @"RAP_EDIT_PHONE_NUMBER";
            break;
          case 10181:
            v10 = @"RAP_TAP_ACCEPTS_APPLE_PAY";
            break;
          case 10182:
            v10 = @"RAP_ADD_COMMENTS";
            break;
          case 10183:
            v10 = @"RAP_EDIT_LOCATION";
            break;
          case 10184:
            v10 = @"RAP_VIEW_LOCATION";
            break;
          case 10185:
            v10 = @"RAP_ZOOM_IN";
            break;
          case 10186:
            v10 = @"RAP_ZOOM_OUT";
            break;
          case 10187:
            v10 = @"RAP_VIEW_ENTRY_POINTS";
            break;
          case 10188:
            v10 = @"RAP_EDIT_EXISTING_ENTRY_POINT";
            break;
          case 10189:
            v10 = @"RAP_ADD_NEW_ENTRY_POINT";
            break;
          case 10190:
            v10 = @"RAP_REMOVE_ENTRY_POINT";
            break;
          case 10191:
            v10 = @"RAP_SELECT_ENTRY_POINT_TYPE";
            break;
          default:
            switch(a2)
            {
              case 9001:
                v10 = @"TAP_WIDGET_ITEM";
                break;
              case 9002:
                v10 = @"DISPLAY_NOTIFICATION";
                break;
              case 9003:
                v10 = @"TAP_NOTIFICATION";
                break;
              case 9004:
                v10 = @"EXPAND_NOTIFICATION";
                break;
              case 9005:
                v10 = @"DISMISS_NOTIFICATION";
                break;
              case 9006:
                v10 = @"OPEN_SEARCH";
                break;
              case 9007:
                v10 = @"OPEN_PAN_VIEW";
                break;
              case 9008:
                v10 = @"PAN_LEFT";
                break;
              case 9009:
                v10 = @"PAN_UP";
                break;
              case 9010:
              case 9041:
              case 9042:
              case 9043:
              case 9044:
              case 9045:
              case 9046:
              case 9047:
              case 9048:
              case 9049:
              case 9050:
              case 9051:
              case 9052:
              case 9053:
              case 9054:
              case 9055:
              case 9056:
              case 9057:
              case 9058:
              case 9059:
              case 9060:
              case 9061:
              case 9062:
              case 9063:
              case 9064:
              case 9065:
              case 9066:
              case 9067:
              case 9068:
              case 9069:
              case 9070:
              case 9071:
              case 9072:
              case 9073:
              case 9074:
              case 9075:
              case 9076:
              case 9077:
              case 9078:
              case 9079:
              case 9080:
              case 9081:
              case 9082:
              case 9083:
              case 9084:
              case 9085:
              case 9086:
              case 9087:
              case 9088:
              case 9089:
              case 9090:
              case 9091:
              case 9092:
              case 9093:
              case 9094:
              case 9095:
              case 9096:
              case 9097:
              case 9098:
              case 9099:
              case 9100:
                goto LABEL_117;
              case 9011:
                v10 = @"PAN_DOWN";
                break;
              case 9012:
                v10 = @"TAP_RECENT_DESTINATIONS";
                break;
              case 9013:
                v10 = @"OPEN_DESTINATIONS";
                break;
              case 9014:
                v10 = @"OPEN_FAVORITES";
                break;
              case 9015:
                v10 = @"VIEW_NAV_OPTIONS";
                break;
              case 9016:
                v10 = @"START_NAV_NO_GUIDANCE";
                break;
              case 9017:
                v10 = @"TURN_OFF_GUIDANCE";
                break;
              case 9018:
                v10 = @"TURN_ON_GUIDANCE";
                break;
              case 9019:
                v10 = @"OPEN_KEYBOARD";
                break;
              case 9020:
                v10 = @"SHARE_DESTINATION";
                break;
              case 9021:
                v10 = @"START_NAV_AUTOMATED";
                break;
              case 9022:
                v10 = @"SHARE_ETA";
                break;
              case 9023:
                v10 = @"SELECT_GROUP";
                break;
              case 9024:
                v10 = @"DESELECT_GROUP";
                break;
              case 9025:
                v10 = @"SELECT_CONTACT";
                break;
              case 9026:
                v10 = @"DESELECT_CONTACT";
                break;
              case 9027:
                v10 = @"TAP_VIEW_CONTACTS";
                break;
              case 9028:
                v10 = @"STOP_RECEIVING_ETA";
                break;
              case 9029:
                v10 = @"DISPLAY_ANNOUNCEMENT";
                break;
              case 9030:
                v10 = @"TAP_ANNOUNCEMENT";
                break;
              case 9031:
                v10 = @"DISPLAY_CYCLING_NOTIFICATION";
                break;
              case 9032:
                v10 = @"TAP_CYCLING_NOTIFICATION";
                break;
              case 9033:
                v10 = @"SHARE_CYCLING_ETA";
                break;
              case 9034:
                v10 = @"MANAGE_NOTIFICATIONS";
                break;
              case 9035:
                v10 = @"PUNCH_OUT_PUBLISHER_REVIEW";
                break;
              case 9036:
                v10 = @"SCROLL_FORWARD";
                break;
              case 9037:
                v10 = @"SCROLL_BACKWARD";
                break;
              case 9038:
                v10 = @"SHOW_ALL_CURATED_COLLECTIONS";
                break;
              case 9039:
                v10 = @"TAP_LESS";
                break;
              case 9040:
                v10 = @"TAP_MORE";
                break;
              case 9101:
                v10 = @"DISPLAY_ADD_HOME_AND_WORK";
                break;
              case 9102:
                v10 = @"TAP_ADD_HOME_AND_WORK";
                break;
              case 9103:
                v10 = @"DISPLAY_ALLOW_FREQUENTS";
                break;
              case 9104:
                v10 = @"TAP_ALLOW_FREQUENTS";
                break;
              case 9105:
                v10 = @"DISPLAY_ALLOW_LOCATION";
                break;
              case 9106:
                v10 = @"TAP_ALLOW_LOCATION";
                break;
              default:
                switch(a2)
                {
                  case 11001:
                    v10 = @"EXIT_MAPS_LOWER_WRIST";
                    break;
                  case 11002:
                    v10 = @"TASK_READY";
                    break;
                  case 11003:
                    v10 = @"TAP_SEARCH";
                    break;
                  case 11004:
                    v10 = @"TAP_MY_LOCATION";
                    break;
                  case 11005:
                    v10 = @"SHOW_NEARBY";
                    break;
                  case 11006:
                    v10 = @"TAP_NEARBY";
                    break;
                  case 11007:
                    v10 = @"TAP_PROACTIVE";
                    break;
                  case 11008:
                    v10 = @"FORCE_PRESS";
                    break;
                  case 11009:
                    v10 = @"TAP_CONTACTS";
                    break;
                  case 11010:
                    v10 = @"TAP_TRANSIT";
                    break;
                  case 11011:
                    v10 = @"TAP_DICTATION";
                    break;
                  case 11012:
                    v10 = @"GET_DIRECTIONS_DRIVING";
                    break;
                  case 11013:
                    v10 = @"GET_DIRECTIONS_WALKING";
                    break;
                  case 11014:
                    v10 = @"GET_DIRECTIONS_TRANSIT";
                    break;
                  case 11015:
                    v10 = @"OPEN_STANDARD_MAP";
                    break;
                  case 11016:
                    v10 = @"OPEN_TRANSIT_MAP";
                    break;
                  case 11017:
                    v10 = @"START_NAV_AUTO";
                    break;
                  case 11018:
                    v10 = @"TAP_RECENT";
                    break;
                  case 11019:
                    v10 = @"TAP_FAVORITE";
                    break;
                  case 11020:
                    v10 = @"TAP_SCRIBBLE";
                    break;
                  case 11021:
                    v10 = @"TAP_VIEW_MAP";
                    break;
                  case 11022:
                    v10 = @"TAP_VIEW_TBT";
                    break;
                  case 11023:
                    v10 = @"VIEW_ROUTE_INFO";
                    break;
                  case 11024:
                    v10 = @"NAV_UNMUTE";
                    break;
                  case 11025:
                    v10 = @"NAV_MUTE";
                    break;
                  case 11026:
                    v10 = @"GET_DIRECTIONS_CYCLING";
                    break;
                  case 11027:
                    v10 = @"TAP_SEARCH_HOME";
                    break;
                  case 11028:
                    v10 = @"ROUTE_PAUSED_ON_WATCH";
                    break;
                  case 11029:
                    v10 = @"NEXT_STOP_TAPPED_ON_WATCH";
                    break;
                  default:
                    goto LABEL_117;
                }

                break;
            }

            break;
        }

        goto LABEL_1427;
      }

      if (a2 > 16000)
      {
        switch(a2)
        {
          case 17001:
            v10 = @"START_DRAG";
            break;
          case 17002:
            v10 = @"CANCEL_DRAG";
            break;
          case 17003:
            v10 = @"COMPLETE_DRAG";
            break;
          case 17004:
            v10 = @"START_DROP";
            break;
          case 17005:
            v10 = @"CANCEL_DROP";
            break;
          case 17006:
            v10 = @"COMPLETE_DROP";
            break;
          case 17007:
            v10 = @"ANNOTATION_SELECT";
            break;
          case 17008:
            v10 = @"ANNOTATION_SELECT_AUTO";
            break;
          case 17009:
            v10 = @"ANNOTATION_SELECT_LIST";
            break;
          case 17010:
            v10 = @"BROWSE_TOP_CATEGORY_DISPLAYED";
            break;
          case 17011:
            v10 = @"CALLOUT_FLYOVER_TOUR";
            break;
          case 17012:
            v10 = @"CALLOUT_INFO";
            break;
          case 17013:
            v10 = @"CALLOUT_NAV_TRANSIT";
            break;
          case 17014:
            v10 = @"CALLOUT_TRAFFIC_INCIDENT_INFO";
            break;
          case 17015:
            v10 = @"CALLOUT_VIEW_TRANSIT_LINE";
            break;
          case 17016:
            v10 = @"DIRECTIONS_SELECT";
            break;
          case 17017:
            v10 = @"DIRECTIONS_TRANSIT_CUSTOM";
            break;
          case 17018:
            v10 = @"DIRECTIONS_TRANSIT_CUSTOM_ARRIVES";
            break;
          case 17019:
            v10 = @"DIRECTIONS_TRANSIT_CUSTOM_DEPARTS";
            break;
          case 17020:
            v10 = @"DIRECTIONS_TRANSIT_CUSTOM_DONE";
            break;
          case 17021:
            v10 = @"DIRECTIONS_TRANSIT_LATER";
            break;
          case 17022:
            v10 = @"DIRECTIONS_TRANSIT_NOW";
            break;
          case 17023:
            v10 = @"FLYOVER_NOTIFICATION_DISMISS";
            break;
          case 17024:
            v10 = @"FLYOVER_NOTIFICATION_START";
            break;
          case 17025:
            v10 = @"FLYOVER_TOUR_COMPLETED";
            break;
          case 17026:
            v10 = @"FLYOVER_TOUR_END";
            break;
          case 17027:
            v10 = @"FLYOVER_TOUR_NOTIFICATION";
            break;
          case 17028:
            v10 = @"FLYOVER_TOUR_START";
            break;
          case 17029:
            v10 = @"INFO_BOOKMARKS";
            break;
          case 17030:
            v10 = @"INFO_CARD_DETACHED";
            break;
          case 17031:
            v10 = @"INFO_CONTACTS";
            break;
          case 17032:
            v10 = @"INFO_DIRECTIONS";
            break;
          case 17033:
            v10 = @"INFO_DIRECTIONS_FROM";
            break;
          case 17034:
            v10 = @"INFO_DIRECTIONS_TO";
            break;
          case 17035:
            v10 = @"INFO_DISMISS";
            break;
          case 17036:
            v10 = @"INFO_INFO";
            break;
          case 17037:
            v10 = @"INFO_PHOTOS";
            break;
          case 17038:
            v10 = @"INFO_REVIEWS";
            break;
          case 17039:
            v10 = @"INFO_SHARE";
            break;
          case 17040:
            v10 = @"INFO_SHARE_AIRDROP";
            break;
          case 17041:
            v10 = @"INFO_SHARE_FACEBOOK";
            break;
          case 17042:
            v10 = @"INFO_SHARE_MAIL";
            break;
          case 17043:
            v10 = @"INFO_SHARE_MESSAGE";
            break;
          case 17044:
            v10 = @"INFO_SHARE_TENCENTWEIBO";
            break;
          case 17045:
            v10 = @"INFO_SHARE_WEIBO";
            break;
          case 17046:
            v10 = @"INFO_YELP";
            break;
          case 17047:
            v10 = @"MAPS_APP_LAUNCH";
            break;
          case 17048:
            v10 = @"MAP_3D_OFF";
            break;
          case 17049:
            v10 = @"MAP_3D_ON";
            break;
          case 17050:
            v10 = @"MAP_OPTIONS_DROP_PIN";
            break;
          case 17051:
            v10 = @"MAP_OPTIONS_HYBRID";
            break;
          case 17052:
            v10 = @"MAP_OPTIONS_PRINT";
            break;
          case 17053:
            v10 = @"MAP_OPTIONS_REMOVE_PIN";
            break;
          case 17054:
            v10 = @"MAP_OPTIONS_SATELLITE";
            break;
          case 17055:
            v10 = @"MAP_OPTIONS_STANDARD";
            break;
          case 17056:
            v10 = @"MAP_OPTIONS_TRAFFIC_HIDE";
            break;
          case 17057:
            v10 = @"MAP_OPTIONS_TRAFFIC_SHOW";
            break;
          case 17058:
            v10 = @"MAP_OPTIONS_TRANSIT";
            break;
          case 17059:
            v10 = @"MAP_TAP_FLYOVER_CITY";
            break;
          case 17060:
            v10 = @"MAP_TAP_LINE";
            break;
          case 17061:
            v10 = @"MAP_TAP_POI_TRANSIT";
            break;
          case 17062:
            v10 = @"MAP_TAP_TRAFFIC_INCIDENT";
            break;
          case 17063:
            v10 = @"MAP_TRANSIT_NOT_AVAIL_SHOWING";
            break;
          case 17064:
            v10 = @"MAP_USER_TRACKING_OFF";
            break;
          case 17065:
            v10 = @"MAP_USER_TRACKING_ON";
            break;
          case 17066:
            v10 = @"MAP_USER_TRACKING_WITH_HEADING_ON";
            break;
          case 17067:
            v10 = @"NAV_CLEAR";
            break;
          case 17068:
            v10 = @"NAV_LIST";
            break;
          case 17069:
            v10 = @"NAV_ROUTE_STEP_NEXT";
            break;
          case 17070:
            v10 = @"NAV_ROUTE_STEP_PREV";
            break;
          case 17071:
            v10 = @"NO_NETWORK_ROUTING_ALERT_DISPLAYED";
            break;
          case 17072:
            v10 = @"ORB_DISPLAY_MENU";
            break;
          case 17073:
            v10 = @"ORB_MENU_CALL";
            break;
          case 17074:
            v10 = @"ORB_MENU_DIRECTIONS";
            break;
          case 17075:
            v10 = @"ORB_MENU_DISMISS";
            break;
          case 17076:
            v10 = @"ORB_MENU_SHARE";
            break;
          case 17077:
            v10 = @"ORB_MENU_SHOW_PLACECARD";
            break;
          case 17078:
            v10 = @"ORB_MENU_TRANSIT_LINE_VIEW_ON_MAP";
            break;
          case 17079:
            v10 = @"ORB_MENU_URL";
            break;
          case 17080:
            v10 = @"ORB_PRESS";
            break;
          case 17081:
            v10 = @"ORB_SPRINGBOARD_MARK_LOCATION";
            break;
          case 17082:
            v10 = @"ORB_SPRINGBOARD_SEARCH";
            break;
          case 17083:
            v10 = @"ORB_SPRINGBOARD_SHARE_LOCATION";
            break;
          case 17084:
            v10 = @"RAP_ENTRY_SEARCH_AUTOCOMPLETE";
            break;
          case 17085:
            v10 = @"RAP_PERMISSION_CANCEL";
            break;
          case 17086:
            v10 = @"RAP_PERMISSION_EMAIL_NA";
            break;
          case 17087:
            v10 = @"RAP_PERMISSION_EMAIL_OK";
            break;
          case 17088:
            v10 = @"RAP_PERMISSION_EMAIL_SETTINGS_ACCEPTED";
            break;
          case 17089:
            v10 = @"RAP_PERMISSION_EMAIL_SETTINGS_DENIED";
            break;
          case 17090:
            v10 = @"RAP_PERMISSION_OK";
            break;
          case 17091:
            v10 = @"SEARCH_BEGIN";
            break;
          case 17092:
            v10 = @"SEARCH_CANCEL";
            break;
          case 17093:
            v10 = @"SEARCH_SELECT";
            break;
          case 17094:
            v10 = @"TRANSIT_LINE_SELECTION_DISMISS";
            break;
          case 17095:
            v10 = @"TRANSIT_LINE_SELECTION_VIEW";
            break;
          case 17096:
            v10 = @"TRANSIT_ROUTE_CLUSTER_SHEET_DISMISS";
            break;
          case 17097:
            v10 = @"TRANSIT_ROUTE_CLUSTER_SHEET_SELECT_LINE";
            break;
          case 17098:
            v10 = @"TRANSIT_ROUTE_CLUSTER_SHEET_VIEW_DETAILS";
            break;
          case 17099:
            v10 = @"UNKNOWN_ACTION";
            break;
          case 17100:
            v10 = @"INFO_SHARE_TWITTER";
            break;
          case 17101:
            v10 = @"INFO_TAP_POPULAR_APP_NEARBY";
            break;
          case 17102:
            v10 = @"INFO_DIRECTIONS_WALK";
            break;
          case 17103:
            v10 = @"INFO_DIRECTIONS_TRANSIT";
            break;
          case 17104:
            v10 = @"INFO_DIRECTIONS_DRIVE";
            break;
          case 17105:
            v10 = @"INFO_REPORT_A_PROBLEM";
            break;
          case 17106:
            v10 = @"CALLOUT_NAV";
            break;
          case 17107:
            v10 = @"RAP_PERMISSION_EMAIL_CANCEL";
            break;
          case 17108:
            v10 = @"MAP_TAP_POI";
            break;
          default:
            if (a2 == 16001)
            {
              v10 = @"SEARCH_IN_MAPS";
            }

            else
            {
              if (a2 != 90010)
              {
                goto LABEL_117;
              }

              v10 = @"PAN_RIGHT";
            }

            break;
        }

        goto LABEL_1427;
      }

      if (a2 <= 13004)
      {
        if (a2 <= 12007)
        {
          if (a2 <= 12003)
          {
            if (a2 == 12001)
            {
              v10 = @"VIEW_MORE_OPTIONS";
            }

            else if (a2 == 12002)
            {
              v10 = @"SELECT_TIME";
            }

            else
            {
              v10 = @"SHOW_NEXT_AVAILABLE";
            }
          }

          else if (a2 > 12005)
          {
            if (a2 == 12006)
            {
              v10 = @"EDIT_BOOKING";
            }

            else
            {
              v10 = @"EDIT_PHONE";
            }
          }

          else if (a2 == 12004)
          {
            v10 = @"DECREASE_TABLE_SIZE";
          }

          else
          {
            v10 = @"INCREASE_TABLE_SIZE";
          }

          goto LABEL_1427;
        }

        if (a2 > 13000)
        {
          if (a2 > 13002)
          {
            if (a2 == 13003)
            {
              v10 = @"SELECT_LABEL";
            }

            else
            {
              v10 = @"DELETE_ADDRESS";
            }
          }

          else if (a2 == 13001)
          {
            v10 = @"SELECT_ADDRESS";
          }

          else
          {
            v10 = @"ADD_ADDRESS";
          }

          goto LABEL_1427;
        }

        switch(a2)
        {
          case 0x2EE8:
            v10 = @"ADD_SPECIAL_REQUEST";
            goto LABEL_1427;
          case 0x2EE9:
            v10 = @"CHANGE_RESERVATION";
            goto LABEL_1427;
          case 0x2EEA:
            v10 = @"LEARN_MORE";
            goto LABEL_1427;
        }
      }

      else if (a2 <= 14004)
      {
        if (a2 > 14000)
        {
          if (a2 > 14002)
          {
            if (a2 == 14003)
            {
              v10 = @"BOOK_RIDE";
            }

            else
            {
              v10 = @"REQUEST_RIDE";
            }
          }

          else if (a2 == 14001)
          {
            v10 = @"VIEW_APP";
          }

          else
          {
            v10 = @"ENABLE";
          }

          goto LABEL_1427;
        }

        switch(a2)
        {
          case 0x32CD:
            v10 = @"EDIT_ITEMS";
            goto LABEL_1427;
          case 0x32CE:
            v10 = @"RAP_FAVORITES";
            goto LABEL_1427;
          case 0x32CF:
            v10 = @"SORT_LIST_ITEM";
            goto LABEL_1427;
        }
      }

      else
      {
        if (a2 <= 14008)
        {
          if (a2 > 14006)
          {
            if (a2 == 14007)
            {
              v10 = @"ENABLE_ALL_RIDESHARE_APPS";
            }

            else
            {
              v10 = @"TAP_FOR_MORE_RIDES";
            }
          }

          else if (a2 == 14005)
          {
            v10 = @"CONTACT_DRIVER";
          }

          else
          {
            v10 = @"CHANGE_PAYMENT";
          }

          goto LABEL_1427;
        }

        if (a2 > 15001)
        {
          if (a2 == 15002)
          {
            v10 = @"ORB_POP";
            goto LABEL_1427;
          }

          if (a2 == 15003)
          {
            v10 = @"ORB_DISMISS";
            goto LABEL_1427;
          }
        }

        else
        {
          if (a2 == 14009)
          {
            v10 = @"SUBMIT_TRIP_FEEDBACK";
            goto LABEL_1427;
          }

          if (a2 == 15001)
          {
            v10 = @"ORB_PEEK";
            goto LABEL_1427;
          }
        }
      }

LABEL_117:
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a2];
      goto LABEL_1427;
    }

    if (a2 <= 6002)
    {
      if (a2 > 4001)
      {
        if (a2 <= 4004)
        {
          if (a2 == 4002)
          {
            v10 = @"TAP_HEADING_ON";
          }

          else if (a2 == 4003)
          {
            v10 = @"TAP_HEADING_OFF";
          }

          else
          {
            v10 = @"PUCK_DRIFT";
          }
        }

        else
        {
          switch(a2)
          {
            case 5001:
              v10 = @"SHOW_MAPS_SETTINGS";
              break;
            case 5002:
              v10 = @"TAP_STANDARD_MODE";
              break;
            case 5003:
              v10 = @"TAP_TRANSIT_MODE";
              break;
            case 5004:
              v10 = @"TAP_SATELLITE_MODE";
              break;
            case 5005:
              v10 = @"SWITCH_ON_TRAFFIC";
              break;
            case 5006:
              v10 = @"SWITCH_OFF_TRAFFIC";
              break;
            case 5007:
              v10 = @"SWITCH_ON_LABELS";
              break;
            case 5008:
              v10 = @"SWITCH_OFF_LABELS";
              break;
            case 5009:
              v10 = @"SWITCH_ON_3D_MAP";
              break;
            case 5010:
              v10 = @"SWITCH_OFF_3D_MAP";
              break;
            case 5011:
              v10 = @"SWITCH_ON_WEATHER";
              break;
            case 5012:
              v10 = @"SWITCH_OFF_WEATHER";
              break;
            case 5013:
              v10 = @"REPORT_A_PROBLEM";
              break;
            case 5014:
              v10 = @"ADD_PLACE";
              break;
            case 5015:
              goto LABEL_117;
            case 5016:
              v10 = @"TAP_PREFERENCES";
              break;
            case 5017:
              v10 = @"SWITCH_ON_TOLLS";
              break;
            case 5018:
              v10 = @"SWITCH_OFF_TOLLS";
              break;
            case 5019:
              v10 = @"SWITCH_ON_HIGHWAYS";
              break;
            case 5020:
              v10 = @"SWITCH_OFF_HIGHWAYS";
              break;
            case 5021:
              v10 = @"SWITCH_ON_HEADING";
              break;
            case 5022:
              v10 = @"SWITCH_OFF_HEADING";
              break;
            case 5023:
              v10 = @"SWITCH_ON_SPEED_LIMIT";
              break;
            case 5024:
              v10 = @"SWITCH_OFF_SPEED_LIMIT";
              break;
            case 5025:
              v10 = @"ELECT_DRIVING_MODE";
              break;
            case 5026:
              v10 = @"ELECT_WALKING_MODE";
              break;
            case 5027:
              v10 = @"ELECT_TRANSIT_MODE";
              break;
            case 5028:
              v10 = @"ELECT_RIDESHARE_MODE";
              break;
            case 5029:
              v10 = @"SWITCH_ON_FIND_MY_CAR";
              break;
            case 5030:
              v10 = @"SWITCH_OFF_FIND_MY_CAR";
              break;
            case 5031:
              v10 = @"MARK_MY_LOCATION";
              break;
            case 5032:
              v10 = @"TAP_HYBRID_MODE";
              break;
            case 5033:
              v10 = @"CHECK_AVOID_BUSY_ROADS";
              break;
            case 5034:
              v10 = @"UNCHECK_AVOID_BUSY_ROADS";
              break;
            case 5035:
              v10 = @"CHECK_AVOID_HILLS";
              break;
            case 5036:
              v10 = @"UNCHECK_AVOID_HILLS";
              break;
            case 5037:
              v10 = @"CHECK_AVOID_STAIRS";
              break;
            case 5038:
              v10 = @"UNCHECK_AVOID_STAIRS";
              break;
            case 5039:
              v10 = @"ELECT_CYCLING_MODE";
              break;
            default:
              if (a2 == 4005)
              {
                v10 = @"PUCK_SNAP";
              }

              else
              {
                if (a2 != 4006)
                {
                  goto LABEL_117;
                }

                v10 = @"SELECT_FLOOR";
              }

              break;
          }
        }
      }

      else
      {
        switch(a2)
        {
          case 3001:
            v10 = @"START_NAV";
            break;
          case 3002:
            v10 = @"END_NAV";
            break;
          case 3003:
            v10 = @"OPEN_NAV_AUDIO_SETTINGS";
            break;
          case 3004:
            v10 = @"VIEW_DETAILS";
            break;
          case 3005:
            v10 = @"TAP_SEARCH_ALONG_ROUTE_CATEGORY";
            break;
          case 3006:
            v10 = @"OPEN_ROUTING_EDITOR";
            break;
          case 3007:
            v10 = @"EDIT_ORIGIN";
            break;
          case 3008:
            v10 = @"EDIT_DESTINATION";
            break;
          case 3009:
            v10 = @"SWAP_ORIGIN_DESTINATION";
            break;
          case 3010:
            v10 = @"OPEN_MORE_ROUTES";
            break;
          case 3011:
            v10 = @"SELECT_ROUTING_TYPE_DRIVING";
            break;
          case 3012:
            v10 = @"SELECT_ROUTING_TYPE_WALKING";
            break;
          case 3013:
            v10 = @"SELECT_ROUTING_TYPE_TRANSIT";
            break;
          case 3014:
            v10 = @"SELECT_ROUTING_TYPE_RIDESHARE";
            break;
          case 3015:
            v10 = @"SELECT_ROUTE";
            break;
          case 3016:
            v10 = @"COLLAPSE_STEP_DETAILS_WALK";
            break;
          case 3017:
            v10 = @"EXPAND_STEP_DETAILS_WALK";
            break;
          case 3018:
            v10 = @"COLLAPSE_STEP_DETAILS_TRANSIT";
            break;
          case 3019:
            v10 = @"EXPAND_STEP_DETAILS_TRANSIT";
            break;
          case 3020:
            v10 = @"UNCHECK_BUS";
            break;
          case 3021:
            v10 = @"UNCHECK_SUBWAY_AND_LIGHT_RAIL";
            break;
          case 3022:
            v10 = @"UNCHECK_COMMUTER_RAIL";
            break;
          case 3023:
            v10 = @"UNCHECK_FERRY";
            break;
          case 3024:
            v10 = @"CHECK_BUS";
            break;
          case 3025:
            v10 = @"CHECK_SUBWAY_AND_LIGHT_RAIL";
            break;
          case 3026:
            v10 = @"CHECK_COMMUTER_RAIL";
            break;
          case 3027:
            v10 = @"CHECK_FERRY";
            break;
          case 3028:
            v10 = @"SELECT_LEAVE_AT";
            break;
          case 3029:
            v10 = @"SELECT_ARRIVE_BY";
            break;
          case 3030:
            v10 = @"SELECT_LEAVE_NOW";
            break;
          case 3031:
            v10 = @"SELECT_DATE_TIME";
            break;
          case 3032:
            v10 = @"SWITCH_ON_IC_FARES";
            break;
          case 3033:
            v10 = @"SWITCH_OFF_IC_FARES";
            break;
          case 3034:
            v10 = @"OPEN_ROUTE_OPTIONS_DATETIME";
            break;
          case 3035:
            v10 = @"OPEN_ROUTE_OPTIONS_TRANSIT";
            break;
          case 3036:
            v10 = @"OPEN_ROUTE_OPTIONS_DRIVING";
            break;
          case 3037:
            v10 = @"OPEN_TRANSIT_ROUTE_CLUSTER_SHEET";
            break;
          case 3038:
            v10 = @"REVEAL_FROM_ROUTING";
            break;
          case 3039:
            v10 = @"DISPLAY_ROUTES";
            break;
          case 3040:
            v10 = @"CHECK_RECOMMENDED_ROUTES";
            break;
          case 3041:
            v10 = @"UNCHECK_RECOMMENDED_ROUTES";
            break;
          case 3042:
            v10 = @"CHECK_FASTER_TRIPS";
            break;
          case 3043:
            v10 = @"UNCHECK_FASTER_TRIPS";
            break;
          case 3044:
            v10 = @"CHECK_FEWER_TRANSFERS";
            break;
          case 3045:
            v10 = @"UNCHECK_FEWER_TRANSFERS";
            break;
          case 3046:
            v10 = @"CHECK_LESS_WALKING";
            break;
          case 3047:
            v10 = @"UNCHECK_LESS_WALKING";
            break;
          case 3048:
            v10 = @"OPEN_ROUTE_OPTIONS_CYCLING";
            break;
          case 3049:
            v10 = @"TAP_MORE_ROUTES";
            break;
          case 3050:
            v10 = @"OPEN_NAV_OVERVIEW";
            break;
          case 3051:
            v10 = @"RESUME_NAV_MANEUVER_VIEW";
            break;
          case 3052:
            v10 = @"SELECT_AUDIO_VOLUME_SILENT";
            break;
          case 3053:
            v10 = @"SELECT_AUDIO_VOLUME_LOW";
            break;
          case 3054:
            v10 = @"SELECT_AUDIO_VOLUME_NORMAL";
            break;
          case 3055:
            v10 = @"SELECT_AUDIO_VOLUME_LOUD";
            break;
          case 3056:
            v10 = @"SWITCH_ON_PAUSE_SPOKEN_AUDIO";
            break;
          case 3057:
            v10 = @"SWITCH_OFF_PAUSE_SPOKEN_AUDIO";
            break;
          case 3058:
            v10 = @"RESUME_PREV_NAV";
            break;
          case 3059:
            v10 = @"ACKNOWLEDGE_TRAFFIC_INCIDENT";
            break;
          case 3060:
            v10 = @"ACCEPT_REROUTE";
            break;
          case 3061:
            v10 = @"DISMISS_REROUTE";
            break;
          case 3062:
            v10 = @"ATTEMPT_END_NAV";
            break;
          case 3063:
            v10 = @"DISPLAY_BANNER";
            break;
          case 3064:
            v10 = @"VIEW_BANNER_DETAILS";
            break;
          case 3065:
            v10 = @"ENTER_GUIDANCE";
            break;
          case 3066:
            v10 = @"AUTO_ADVANCE_GUIDANCE";
            break;
          case 3067:
            v10 = @"TAP_OPEN_WALLET";
            break;
          case 3068:
            v10 = @"SELECT_VOICE_GUIDANCE_ALL";
            break;
          case 3069:
            v10 = @"SELECT_VOICE_GUIDANCE_INCIDENTS";
            break;
          case 3070:
            v10 = @"SELECT_VOICE_GUIDANCE_NONE";
            break;
          case 3071:
            v10 = @"DISPLAY_CARD";
            break;
          case 3072:
            v10 = @"RENDER_ROUTE";
            break;
          case 3073:
            v10 = @"DISPLAY_JUNCTION_VIEW";
            break;
          case 3074:
            v10 = @"SELECT_DEPARTURE";
            break;
          case 3075:
            v10 = @"DISPLAY_AR_VIEW_RAISE_BANNER";
            break;
          case 3076:
            v10 = @"DEVICE_RAISE";
            break;
          case 3077:
            v10 = @"ENTER_AR_NAV_VIEW";
            break;
          case 3078:
            v10 = @"EXIT_AR_NAV_VIEW";
            break;
          case 3079:
            v10 = @"AR_CALIBRATION_START";
            break;
          case 3080:
            v10 = @"AR_CALIBRATION_FAILURE";
            break;
          case 3081:
            v10 = @"AR_CALIBRATION_SUCCESS";
            break;
          case 3082:
            v10 = @"DISPLAY_AR_NAV_ARROW";
            break;
          case 3083:
            v10 = @"DISPLAY_AR_NAV_TURN_AROUND";
            break;
          case 3084:
            v10 = @"DISPLAY_GO_OUTSIDE_BANNER";
            break;
          case 3085:
            v10 = @"DISPLAY_AR_DARKNESS_MESSAGE";
            break;
          case 3086:
            v10 = @"DISPLAY_AR_NAV_ENDPOINT";
            break;
          case 3087:
            v10 = @"DISPLAY_ADVISORY_BANNER";
            break;
          case 3088:
            v10 = @"TAP_SHOW_ADVISORY_DETAILS";
            break;
          default:
            if (a2 != 4001)
            {
              goto LABEL_117;
            }

            v10 = @"RECENTER_CURRENT_LOCATION";
            break;
        }
      }
    }

    else if (a2 > 7000)
    {
      if (a2 > 8000)
      {
        if (a2 <= 8005)
        {
          if (a2 <= 8002)
          {
            if (a2 == 8001)
            {
              v10 = @"INVOKE_SIRI_SNIPPET";
            }

            else
            {
              v10 = @"INVOKE_SIRI_DISAMBIGUATION";
            }
          }

          else if (a2 == 8003)
          {
            v10 = @"SHOW_PLACE_DETAILS";
          }

          else if (a2 == 8004)
          {
            v10 = @"ANSWER_REROUTE_SUGGESTION";
          }

          else
          {
            v10 = @"SUGGEST_NAV_REROUTE";
          }

          goto LABEL_1427;
        }

        if (a2 <= 8008)
        {
          if (a2 == 8006)
          {
            v10 = @"GET_NAV_STATUS";
          }

          else if (a2 == 8007)
          {
            v10 = @"REPEAT_NAV_STATUS";
          }

          else
          {
            v10 = @"SELECT_AUDIO_VOLUME_UNMUTE";
          }

          goto LABEL_1427;
        }

        switch(a2)
        {
          case 0x1F49:
            v10 = @"INVOKE_SIRI";
            goto LABEL_1427;
          case 0x1F4A:
            v10 = @"DISPLAY_SIRI_ERROR_MESSAGE";
            goto LABEL_1427;
          case 0x1F4B:
            v10 = @"DISPLAY_NO_RESULTS_MESSAGE";
            goto LABEL_1427;
        }

        goto LABEL_117;
      }

      switch(a2)
      {
        case 7001:
          v10 = @"EXPAND_TRANSIT_SYSTEM";
          break;
        case 7002:
          v10 = @"COLLAPSE_TRANSIT_SYSTEM";
          break;
        case 7003:
          v10 = @"SHOW_MORE_DEPARTURES";
          break;
        case 7004:
          v10 = @"VIEW_TRANSIT_LINE";
          break;
        case 7005:
          v10 = @"CANCEL_VIEW_TRANSIT_LINE";
          break;
        case 7006:
          v10 = @"TAP_TRANSIT_ATTRIBUTION";
          break;
        case 7007:
          v10 = @"TAP_TRANSIT_ADVISORY";
          break;
        case 7008:
          v10 = @"MORE_DETAILS_TRANSIT_ADVISORY";
          break;
        case 7009:
          v10 = @"SUBSCRIBE_LINE_INCIDENT";
          break;
        case 7010:
          v10 = @"UNSUBSCRIBE_LINE_INCIDENT";
          break;
        case 7011:
          v10 = @"TAP_NEAREST_STATION";
          break;
        case 7012:
          v10 = @"TAP_NEAREST_STOP";
          break;
        case 7013:
          v10 = @"TAP_CONNECTION";
          break;
        case 7014:
          v10 = @"GET_TICKETS";
          break;
        case 7015:
          v10 = @"OPEN_SCHEDULECARD_DATETIME";
          break;
        case 7016:
          v10 = @"EXPAND_PRIOR_STEP_DETAILS_TRANSIT";
          break;
        case 7017:
          v10 = @"EXPAND_ALIGHT_STEP_DETAILS_TRANSIT";
          break;
        case 7018:
          v10 = @"VIEW_ON_MAP";
          break;
        case 7019:
          v10 = @"FORCE_UPDATE_DEPARTURE_INFO";
          break;
        case 7020:
          v10 = @"TAP_TRANSIT_LINE_INFO";
          break;
        case 7021:
          v10 = @"TAP_ATTRIBUTION_CELL";
          break;
        case 7022:
          v10 = @"TAP_NEXT_DEPARTURES";
          break;
        case 7023:
          v10 = @"VIEW_BANNER";
          break;
        case 7024:
          v10 = @"GET_SHOWTIMES";
          break;
        case 7025:
          v10 = @"MAKE_APPOINTMENT";
          break;
        case 7026:
          v10 = @"RESERVE_PARKING";
          break;
        case 7027:
          v10 = @"RESERVE_ROOM";
          break;
        case 7028:
          v10 = @"WAITLIST";
          break;
        case 7029:
          v10 = @"ORDER_TAKEOUT";
          break;
        case 7030:
          v10 = @"RESERVE";
          break;
        default:
          goto LABEL_117;
      }
    }

    else
    {
      switch(a2)
      {
        case 6003:
          v10 = @"GET_DIRECTIONS";
          break;
        case 6004:
          v10 = @"TAP_FLYOVER_TOUR";
          break;
        case 6005:
          v10 = @"REMOVE_PIN";
          break;
        case 6006:
          v10 = @"TAP_PHOTO";
          break;
        case 6007:
          v10 = @"TAP_MAPS_VIEW";
          break;
        case 6008:
          v10 = @"TAP_ADDRESS";
          break;
        case 6009:
          v10 = @"CALL";
          break;
        case 6010:
          v10 = @"TAP_URL";
          break;
        case 6011:
          v10 = @"SHOW_TODAY_HOURS";
          break;
        case 6012:
          v10 = @"SHOW_ALL_HOURS";
          break;
        case 6013:
          v10 = @"SHARE";
          break;
        case 6015:
          v10 = @"ADD_TO_FAVORITES";
          break;
        case 6016:
          v10 = @"ADD_CONTACT";
          break;
        case 6018:
          v10 = @"PUNCH_OUT_PHOTO";
          break;
        case 6019:
          v10 = @"PUNCH_OUT_USEFUL_TO_KNOW";
          break;
        case 6020:
          v10 = @"PUNCH_OUT_OPEN_APP";
          break;
        case 6021:
          v10 = @"PUNCH_OUT_SINGLE_REVIEW";
          break;
        case 6022:
          v10 = @"PUNCH_OUT_CHECK_IN";
          break;
        case 6023:
          v10 = @"PUNCH_OUT_MORE_INFO";
          break;
        case 6024:
          v10 = @"PUNCH_OUT_WRITE_REVIEW";
          break;
        case 6025:
          v10 = @"PUNCH_OUT_ADD_PHOTO";
          break;
        case 6026:
          v10 = @"TAP_GRID_VIEW";
          break;
        case 6027:
          v10 = @"EDIT_LOCATION";
          break;
        case 6029:
          v10 = @"ADD_PHOTO";
          break;
        case 6031:
          v10 = @"RETAKE";
          break;
        case 6032:
          v10 = @"ADD_NOTE";
          break;
        case 6033:
          v10 = @"REMOVE_CAR";
          break;
        case 6034:
          v10 = @"EDIT_NAME";
          break;
        case 6036:
          v10 = @"RESERVE_TABLE";
          break;
        case 6037:
          v10 = @"ADD_TO_QUEUE";
          break;
        case 6038:
          v10 = @"VIEW_BOOKED_TABLE";
          break;
        case 6039:
          v10 = @"VIEW_QUEUED_TABLE";
          break;
        case 6040:
          v10 = @"PUNCH_OUT_THIRD_PARTY_APP";
          break;
        case 6041:
          v10 = @"PUNCH_OUT_LEGAL_LINK";
          break;
        case 6042:
          v10 = @"TAP_PLACECARD_HEADER";
          break;
        case 6043:
          v10 = @"REMOVE_FROM_FAVORITES";
          break;
        case 6044:
          v10 = @"VIEW_CONTACT";
          break;
        case 6045:
          v10 = @"CHAT";
          break;
        case 6046:
          v10 = @"FIND_STORES";
          break;
        case 6047:
          v10 = @"TAP_PARENT";
          break;
        case 6048:
          v10 = @"SCROLL_LEFT_PHOTOS";
          break;
        case 6049:
          v10 = @"SCROLL_RIGHT_PHOTOS";
          break;
        case 6050:
          v10 = @"PUNCH_OUT";
          break;
        case 6051:
          v10 = @"TAP_ENTER_MUNIN";
          break;
        case 6052:
          v10 = @"TAP_RECOMMENDED_DISHES_PHOTO";
          break;
        case 6053:
          v10 = @"PUNCH_OUT_RECOMMENDED_DISHES_OPEN_APP";
          break;
        case 6054:
          v10 = @"PUNCH_OUT_RECOMMENDED_DISHES_MORE_INFO";
          break;
        case 6055:
          v10 = @"SCROLL_RIGHT_RECOMMENDED_DISHES_PHOTOS";
          break;
        case 6056:
          v10 = @"SCROLL_LEFT_RECOMMENDED_DISHES_PHOTOS";
          break;
        case 6057:
          v10 = @"SHOW_LINKED_SERVICE_HOURS";
          break;
        case 6058:
          v10 = @"ENTER_LOOK_AROUND";
          break;
        case 6059:
          v10 = @"EXIT_LOOK_AROUND";
          break;
        case 6060:
          v10 = @"TAP_ENTER_LOOK_AROUND_VIEW";
          break;
        case 6061:
          v10 = @"TAP_ENTER_LOOK_AROUND_PIP";
          break;
        case 6062:
          v10 = @"EXPAND_LOOK_AROUND_VIEW";
          break;
        case 6063:
          v10 = @"CLOSE_LOOK_AROUND";
          break;
        case 6064:
          v10 = @"COLLAPSE_LOOK_AROUND_VIEW";
          break;
        case 6065:
          v10 = @"TAP_SHOW_ACTIONS";
          break;
        case 6066:
          v10 = @"TAP_HIDE_LABELS";
          break;
        case 6067:
          v10 = @"TAP_SHOW_LABELS";
          break;
        case 6068:
          v10 = @"TAP_SHOW_DETAILS";
          break;
        case 6069:
          v10 = @"PAN_LOOK_AROUND";
          break;
        case 6070:
          v10 = @"TAP_LOOK_AROUND_THUMBNAIL";
          break;
        case 6071:
          v10 = @"TAP_LANDMARK";
          break;
        case 6072:
          v10 = @"TAP_SCENE";
          break;
        case 6073:
          v10 = @"SHOW_LINKED_BUSINESS_HOURS";
          break;
        case 6074:
          v10 = @"TAP_PLACECARD_SHORTCUT";
          break;
        case 6075:
          v10 = @"SHOW_ALL_LOCATIONS_INSIDE";
          break;
        case 6076:
          v10 = @"SHOW_ALL_SIMILAR_LOCATIONS";
          break;
        case 6077:
          v10 = @"SHOW_ALL_LOCATIONS_AT_ADDRESS";
          break;
        case 6078:
          v10 = @"TAP_PARENT_LOCATION";
          break;
        case 6079:
          v10 = @"TAP_SIMILAR_LOCATION";
          break;
        case 6080:
          v10 = @"TAP_LOCATION_INSIDE";
          break;
        case 6081:
          v10 = @"TAP_LOCATION_AT_ADDRESS";
          break;
        case 6082:
          v10 = @"CLOSE_ROUTE_GENIUS";
          break;
        case 6083:
          v10 = @"LOAD_WEB_CONTENT";
          break;
        case 6084:
          v10 = @"SCROLL_FORWARD_WEB_CONTENT";
          break;
        case 6085:
          v10 = @"SCROLL_BACKWARD_WEB_CONTENT";
          break;
        case 6086:
          v10 = @"TAP_WEB_CONTENT";
          break;
        case 6087:
          v10 = @"SHOW_PHOTO_VIEWER";
          break;
        case 6088:
          v10 = @"SHOW_LAST_PAGE";
          break;
        case 6089:
          v10 = @"TAP_VIEW_APP";
          break;
        case 6090:
          v10 = @"TAP_APP_CLIP";
          break;
        case 6091:
          v10 = @"DEAD_BATTERY";
          break;
        case 6092:
          v10 = @"DISMISS_LOW_BATTERY_ALERT";
          break;
        case 6093:
          v10 = @"DISMISS_OUT_OF_RANGE_ALERT";
          break;
        case 6094:
          v10 = @"FAILED_TO_LOAD_EV_STATUS";
          break;
        case 6095:
          v10 = @"LOW_BATTERY_ALERT";
          break;
        case 6096:
          v10 = @"PAUSE_ROUTE";
          break;
        case 6097:
          v10 = @"TAP_ADD_STOP";
          break;
        case 6098:
          v10 = @"TAP_CHARGE_POINT";
          break;
        case 6099:
          v10 = @"TAP_OUT_OF_RANGE_ALERT";
          break;
        case 6100:
          v10 = @"SCROLL_DOWN_PHOTOS";
          break;
        case 6101:
          v10 = @"SCROLL_UP_PHOTOS";
          break;
        case 6102:
          v10 = @"TAP_MORE_PHOTOS";
          break;
        case 6103:
          v10 = @"TAP_TO_CONFIRM_INCIDENT";
          break;
        case 6104:
          v10 = @"SHOW_INCIDENT";
          break;
        case 6105:
          v10 = @"REVEAL_APP_CLIP";
          break;
        case 6106:
          v10 = @"ORDER_DELIVERY";
          break;
        case 6107:
          v10 = @"VIEW_MENU";
          break;
        case 6108:
          v10 = @"TAP_EDIT_STOPS";
          break;
        case 6109:
          v10 = @"LEARN_MORE_WEB_CONTENT";
          break;
        case 6110:
          v10 = @"MAKE_APPOINTMENT_WEB_CONTENT";
          break;
        case 6111:
          v10 = @"REVEAL_SHOWCASE";
          break;
        case 6112:
          v10 = @"TAP_ACTION_BAR";
          break;
        default:
          goto LABEL_117;
      }
    }

LABEL_1427:
    v11 = v10;
    if (action <= 1000)
    {
      action = @"UI_TARGET_UNKNOWN";
      switch(action)
      {
        case 0:
          goto LABEL_1997;
        case 1:
          action = @"UI_TARGET_POI";
          break;
        case 2:
          action = @"UI_TARGET_SEARCH_RESULT_LIST";
          break;
        case 3:
          action = @"UI_TARGET_POPULAR_NEARBY_LIST";
          break;
        case 4:
          action = @"UI_TARGET_CALLOUT";
          break;
        case 5:
          action = @"UI_TARGET_SEARCH_PIN";
          break;
        case 6:
          action = @"UI_TARGET_DROPPED_PIN";
          break;
        case 7:
          action = @"UI_TARGET_TRANSIT_LINE";
          break;
        case 8:
          action = @"SEARCH_TRAY";
          break;
        case 9:
          action = @"SEARCH_TRAY_BROWSE";
          break;
        case 10:
          action = @"SEARCH_TRAY_POPULAR_NEARBY";
          break;
        case 11:
          action = @"SEARCH_TRAY_AC";
          break;
        case 12:
          action = @"SEARCH_TRAY_AC_INTERMEDIATE";
          break;
        case 13:
          action = @"SEARCH_TRAY_NO_QUERY";
          break;
        case 14:
          action = @"AR_WALKING_LEGAL_TRAY";
          break;
        case 15:
          action = @"RAISE_TO_START_AR_TRAY";
          break;
        case 16:
          action = @"EVENTS_ADVISORY_DETAILS_PAGE";
          break;
        case 17:
          action = @"INCIDENT_REPORT_TRAY_CARPLAY";
          break;
        case 18:
          action = @"HIGHLIGHTED_AREA";
          break;
        case 19:
          action = @"CURATED_COLLECTIONS_HOME";
          break;
        case 20:
          action = @"TRAVEL_PREFERENCES_TRAY";
          break;
        case 21:
          action = @"RESULT_TRAY_SEARCH";
          break;
        case 22:
          action = @"SINGLE_CARD_FILTER";
          break;
        case 23:
          action = @"FULL_CARD_FILTER";
          break;
        case 24:
          action = @"ACCOUNT_PRIVACY_TRAY";
          break;
        case 25:
          action = @"APPLE_RATINGS_HISTORY_TRAY";
          break;
        case 26:
          action = @"CURATED_COLLECTIONS_HOME_FILTERED";
          break;
        case 27:
          action = @"CITY_MENU";
          break;
        case 28:
          action = @"CURATED_COLLECTIONS_HOME_CONDENSED";
          break;
        case 29:
          action = @"ACCOUNT_TRAY";
          break;
        case 30:
          action = @"QUICK_ACTION_TRAY";
          break;
        case 31:
          action = @"SUBMIT_TRIP_FEEDBACK";
          break;
        case 32:
          action = @"RAP_PLACE_ISSUE_DETAILS";
          break;
        case 33:
          action = @"RAP_GUIDES_DETAILS";
          break;
        case 34:
          action = @"RAP_BAD_DIRECTIONS_DETAILS";
          break;
        case 35:
          action = @"RAP_ADD_MAP_DETAILS";
          break;
        case 36:
          action = @"WATCH_COMPLICATION";
          break;
        case 37:
          action = @"RAP_NAV_MENU";
          break;
        case 38:
          action = @"NOTIFICATION_ALIGHT_BANNER_TRANSIT";
          break;
        case 39:
          action = @"RAP_REPORT_MENU";
          break;
        case 40:
          action = @"RAP_CURATED_COLLECTION_MENU";
          break;
        case 41:
          action = @"RAP_REPORT_CARD_DETAILS";
          break;
        case 42:
          action = @"NOTIFICATION_NO_LOCATION_TRANSIT";
          break;
        case 43:
          action = @"RAP_STREET_ISSUE_DETAILS";
          break;
        case 44:
          action = @"NEARBY_TRANSIT_CARD";
          break;
        case 45:
          action = @"WATCH_NAV_MENU";
          break;
        case 46:
          action = @"GENERIC_ADVISORY_PAGE";
          break;
        case 47:
          action = @"USER_PROFILE_TRAY";
          break;
        case 48:
          action = @"MEDIA_APP_MENU";
          break;
        case 49:
          action = @"TEMPLATE_PLACE_TRAY";
          break;
        case 50:
          action = @"NOTIFICATION_CONSENT_REPROMPT_RAP";
          break;
        case 51:
          action = @"ALLOW_NOTIFICATION_DIALOG";
          break;
        case 52:
          action = @"NOTIFICATION_CONSENT_REPROMPT_DRIVING";
          break;
        case 53:
          action = @"NOTIFICATION_CONSENT_REPROMPT_ARP";
          break;
        case 54:
          action = @"NOTIFICATION_CONSENT_REPROMPT_TIME_ELAPSED";
          break;
        case 55:
          action = @"NOTIFICATION_CONSENT_PROMPT";
          break;
        case 56:
          action = @"QUICK_ACTION_TRAY_VENDORS_MENU";
          break;
        case 57:
          action = @"PLACECARD_TRAY_VENDORS_MENU";
          break;
        case 58:
          action = @"RESULTS_TRAY_SEARCH_ROUTE_PLANNING";
          break;
        case 59:
          action = @"SEARCH_ALONG_ROUTE_TRAY";
          break;
        case 60:
          action = @"MAP_RESULTS_SEARCH_ROUTE_PLANNING";
          break;
        case 61:
          action = @"PLACECARD_SHOWCASE_MENU";
          break;
        case 62:
          action = @"RAP_INLINE_ADD_DETAILS";
          break;
        case 63:
          action = @"RAP_EDIT_MENU_DETAILS";
          break;
        case 64:
          action = @"RAP_SUBMISSION_PROMPT";
          break;
        case 65:
          action = @"RAP_PLACECARD_EDIT_MENU";
          break;
        case 66:
          action = @"ARP_SUBMISSION_CONFIRMATION_PAGE";
          break;
        case 67:
          action = @"INCIDENT_REPORT_MENU";
          break;
        case 68:
          action = @"RAP_SELECT_BAD_ROUTES_STEPS";
          break;
        case 69:
          action = @"RAP_SELECT_BAD_ROUTES";
          break;
        case 70:
          action = @"SIRI_SUGGESTION_RESUME_ROUTE";
          break;
        case 71:
          action = @"SIRI_SUGGESTION_RESUME_MULTIPOINT_ROUTE";
          break;
        case 72:
          action = @"SPOTLIGHT_BUSINESS_ENTITY_LIST";
          break;
        case 73:
          action = @"SPOTLIGHT_BUSINESS_ENTITY";
          break;
        case 74:
          action = @"NOTIFICATION_ARP";
          break;
        case 75:
          action = @"IMPROVE_LOCATION_ACCURACY_PROMPT";
          break;
        case 76:
          action = @"YOUR_PHOTOS_ALBUM";
          break;
        case 77:
          action = @"ARP_PHOTO_CREDIT";
          break;
        case 78:
          action = @"RAP_OUTREACH_REVIEWED_REPORT";
          break;
        case 79:
          action = @"RAP_REPORT_MENU_MORE";
          break;
        case 80:
          action = @"WATCH_MAPS_SETTINGS";
          break;
        case 81:
          action = @"OFFLINE_FEATURE_PROMPT";
          break;
        case 82:
          action = @"EXPIRED_MAPS_DETAILS";
          break;
        case 83:
          action = @"MAPS_VIEW";
          break;
        case 84:
          action = @"NOTIFICATION_OFFLINE";
          break;
        case 85:
          action = @"EXPIRED_MAPS_MANAGEMENT";
          break;
        case 86:
          action = @"OFFLINE_NEW_MAPS_MANAGEMENT";
          break;
        case 87:
          action = @"EDIT_EXPIRED_MAPS_MANAGEMENT";
          break;
        case 88:
          action = @"OFFLINE_MAPS_MANAGEMENT";
          break;
        case 89:
          action = @"REGION_SELECTOR";
          break;
        case 90:
          action = @"OFFLINE_SUGGESTED_MAPS_MANAGEMENT";
          break;
        case 91:
          action = @"FIND_MY_ETA_SHARING_TRAY";
          break;
        case 92:
          action = @"WATCH_PLACE";
          break;
        case 93:
          action = @"WATCH_ROUTE_PLANNING_TRANSIT_CAROUSEL";
          break;
        case 94:
          action = @"WATCH_ROUTE_PLANNING_MAP";
          break;
        case 95:
          action = @"WATCH_NAV_WALKING_CONTROLS";
          break;
        case 96:
          action = @"WATCH_NAV_CYCLING_CONTROLS";
          break;
        case 97:
          action = @"WATCH_ROUTE_PLANNING_WALKING_CAROUSEL";
          break;
        case 98:
          action = @"WATCH_NAV_TRANSIT_CONTROLS";
          break;
        case 99:
          action = @"WATCH_SEARCH_RESULTS_CAROUSEL";
          break;
        case 100:
          action = @"WATCH_NAV_DRIVING_CONTROLS";
          break;
        case 101:
          action = @"RESULTS_TRAY_SEARCH";
          break;
        case 102:
          action = @"RESULTS_TRAY_BROWSE";
          break;
        case 103:
          action = @"RESULTS_TRAY_FAVORITES";
          break;
        case 104:
          action = @"RESULTS_TRAY_SEARCH_ALONG_ROUTE";
          break;
        case 105:
          action = @"RESULTS_TRAY_CLUSTER";
          break;
        case 106:
          action = @"RESULTS_TRAY_VENUE_BROWSE";
          break;
        case 107:
          action = @"WATCH_MAP_RESULTS";
          break;
        case 108:
          action = @"WATCH_NAV_WALKING_ELEVATION_VIEW";
          break;
        case 109:
          action = @"WATCH_PLACES";
          break;
        case 110:
          action = @"WATCH_NAV_CYCLING_ELEVATION_VIEW";
          break;
        case 111:
          action = @"WATCH_ROUTE_PLANNING_CYCLING_CAROUSEL";
          break;
        case 112:
          action = @"DOWNLOADED_MAPS_DETAILS";
          break;
        case 113:
          action = @"WATCH_ROUTE_PLANNING_DRIVING_CAROUSEL";
          break;
        case 114:
          action = @"WATCH_NAV_TRANSIT_OVERVIEW_MAP";
          break;
        case 115:
          action = @"WATCH_NAV_WALKING_OVERVIEW_MAP";
          break;
        case 116:
          action = @"WATCH_NAV_CYCLING_OVERVIEW_MAP";
          break;
        case 117:
          action = @"WATCH_ROUTE_OPTIONS";
          break;
        case 118:
          action = @"WATCH_NAV_DRIVING_OVERVIEW_MAP";
          break;
        case 119:
          action = @"WATCH_MORE_GUIDES";
          break;
        case 120:
          action = @"WATCH_RECENTLY_VIEWED";
          break;
        case 121:
          action = @"EV_SUCCESS_TRAY";
          break;
        case 122:
          action = @"PREFERRED_NETWORK_SELECTION_TRAY";
          break;
        case 123:
          action = @"PREFERRED_NETWORK_TRAY";
          break;
        case 124:
          action = @"WALKING_TRANSITION_SUGGESTION_TRAY";
          break;
        case 125:
          action = @"FINDMY_TRANSITION_SUGGESTION_TRAY";
          break;
        case 126:
          action = @"CARPLAY_FIND_MY_ETA_SHARING_TRAY";
          break;
        case 127:
          action = @"AC_KEYBOARD_TRAY";
          break;
        case 128:
          action = @"MORE_RELATED_TRAILS";
          break;
        case 129:
          action = @"MORE_RELATED_TRAILHEADS";
          break;
        case 130:
          action = @"ROUTING_TRAY_CUSTOM_ROUTE";
          break;
        case 131:
          action = @"CUSTOM_ROUTE_CREATION_TRAY";
          break;
        case 132:
          action = @"ROUTING_TRAY_CURATED_HIKE";
          break;
        case 133:
          action = @"MORE_CURATED_HIKES";
          break;
        case 134:
          action = @"CUSTOM_ROUTE_ONBOARDING";
          break;
        case 135:
          action = @"LIBRARY_ROUTES";
          break;
        case 136:
          action = @"HIKING_TRANSITION_SUGGESTION_TRAY";
          break;
        case 137:
          action = @"MY_LIBRARY";
          break;
        case 138:
          action = @"EDIT_NOTE_TRAY";
          break;
        case 139:
          action = @"CREATE_NOTE_TRAY";
          break;
        case 140:
          action = @"LIBRARY_PLACES";
          break;
        case 141:
          action = @"WATCH_ACCOUNT";
          break;
        case 142:
          action = @"WATCH_DOWNLOADED_MAPS";
          break;
        case 143:
          action = @"VISUAL_INTELLIGENCE_DETECTION_LIST";
          break;
        case 144:
          action = @"VISUAL_INTELLIGENCE_DETECTION";
          break;
        case 145:
          action = @"VISUAL_INTELLIGENCE_SNIPPET";
          break;
        case 146:
          action = @"FAMILIAR_ROUTE_NOTIFICATION";
          break;
        case 147:
          action = @"LIBRARY_VISITED";
          break;
        case 148:
          action = @"VISITED_PLACES_ONBOARDING";
          break;
        case 149:
          action = @"NOTIFICATION_VISITED_PLACES";
          break;
        case 150:
          action = @"LOCATION_CORRECTION_TRAY";
          break;
        case 151:
          action = @"MAPS_WIDGET_VISITED_PLACE";
          break;
        case 152:
          action = @"REMOVE_VISIT_TRAY";
          break;
        case 153:
          action = @"NEARBY_SUGGESTION_TRAY";
          break;
        case 154:
          action = @"FAMILIAR_ROUTES_ONBOARDING";
          break;
        case 155:
          action = @"ROUTING_TRAY_CARPLAY";
          break;
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
        case 166:
        case 167:
        case 168:
        case 169:
        case 170:
        case 171:
        case 172:
        case 173:
        case 174:
        case 175:
        case 176:
        case 177:
        case 178:
        case 179:
        case 180:
        case 181:
        case 182:
        case 183:
        case 184:
        case 185:
        case 186:
        case 187:
        case 188:
        case 189:
        case 190:
        case 191:
        case 192:
        case 193:
        case 194:
        case 195:
        case 196:
        case 197:
        case 198:
        case 199:
        case 200:
        case 205:
        case 206:
        case 207:
        case 208:
        case 209:
        case 210:
        case 211:
        case 212:
        case 213:
        case 214:
        case 215:
        case 216:
        case 217:
        case 218:
        case 219:
        case 220:
        case 221:
        case 222:
        case 223:
        case 224:
        case 225:
        case 226:
        case 227:
        case 228:
        case 229:
        case 230:
        case 231:
        case 232:
        case 233:
        case 234:
        case 235:
        case 236:
        case 237:
        case 238:
        case 239:
        case 240:
        case 241:
        case 242:
        case 243:
        case 244:
        case 245:
        case 246:
        case 247:
        case 248:
        case 249:
        case 269:
        case 270:
        case 271:
        case 272:
        case 273:
        case 274:
        case 275:
        case 276:
        case 277:
        case 278:
        case 279:
        case 280:
        case 281:
        case 282:
        case 283:
        case 284:
        case 285:
        case 286:
        case 287:
        case 288:
        case 289:
        case 290:
        case 291:
        case 292:
        case 293:
        case 294:
        case 295:
        case 296:
        case 297:
        case 298:
        case 299:
        case 300:
        case 307:
        case 308:
        case 309:
        case 310:
        case 311:
        case 312:
        case 313:
        case 314:
        case 315:
        case 316:
        case 317:
        case 318:
        case 319:
        case 320:
        case 321:
        case 322:
        case 323:
        case 324:
        case 325:
        case 326:
        case 327:
        case 328:
        case 329:
        case 330:
        case 331:
        case 332:
        case 333:
        case 334:
        case 335:
        case 336:
        case 337:
        case 338:
        case 339:
        case 340:
        case 341:
        case 342:
        case 343:
        case 344:
        case 345:
        case 346:
        case 347:
        case 348:
        case 349:
        case 350:
        case 351:
        case 352:
        case 353:
        case 354:
        case 355:
        case 356:
        case 357:
        case 358:
        case 359:
        case 360:
        case 361:
        case 362:
        case 363:
        case 364:
        case 365:
        case 366:
        case 367:
        case 368:
        case 369:
        case 370:
        case 371:
        case 372:
        case 373:
        case 374:
        case 375:
        case 376:
        case 377:
        case 378:
        case 379:
        case 380:
        case 381:
        case 382:
        case 383:
        case 384:
        case 385:
        case 386:
        case 387:
        case 388:
        case 389:
        case 390:
        case 391:
        case 392:
        case 393:
        case 394:
        case 395:
        case 396:
        case 397:
        case 398:
        case 399:
        case 400:
        case 405:
        case 406:
        case 407:
        case 408:
        case 409:
        case 410:
        case 411:
        case 412:
        case 413:
        case 414:
        case 415:
        case 416:
        case 417:
        case 418:
        case 419:
        case 420:
        case 421:
        case 422:
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
        case 448:
        case 449:
        case 450:
        case 451:
        case 452:
        case 453:
        case 454:
        case 455:
        case 456:
        case 457:
        case 458:
        case 459:
        case 460:
        case 461:
        case 462:
        case 463:
        case 464:
        case 465:
        case 466:
        case 467:
        case 468:
        case 469:
        case 470:
        case 471:
        case 472:
        case 473:
        case 474:
        case 475:
        case 476:
        case 477:
        case 478:
        case 479:
        case 480:
        case 481:
        case 482:
        case 483:
        case 484:
        case 485:
        case 486:
        case 487:
        case 488:
        case 489:
        case 490:
        case 491:
        case 492:
        case 493:
        case 494:
        case 495:
        case 496:
        case 497:
        case 498:
        case 499:
        case 500:
        case 512:
        case 513:
        case 514:
        case 515:
        case 516:
        case 517:
        case 518:
        case 519:
        case 520:
        case 521:
        case 522:
        case 523:
        case 524:
        case 525:
        case 526:
        case 527:
        case 528:
        case 529:
        case 530:
        case 531:
        case 532:
        case 533:
        case 534:
        case 535:
        case 536:
        case 537:
        case 538:
        case 539:
        case 540:
        case 541:
        case 542:
        case 543:
        case 544:
        case 545:
        case 546:
        case 547:
        case 548:
        case 549:
        case 550:
        case 551:
        case 552:
        case 553:
        case 554:
        case 555:
        case 556:
        case 557:
        case 558:
        case 559:
        case 560:
        case 561:
        case 562:
        case 563:
        case 564:
        case 565:
        case 566:
        case 567:
        case 568:
        case 569:
        case 570:
        case 571:
        case 572:
        case 573:
        case 574:
        case 575:
        case 576:
        case 577:
        case 578:
        case 579:
        case 580:
        case 581:
        case 582:
        case 583:
        case 584:
        case 585:
        case 586:
        case 587:
        case 588:
        case 589:
        case 590:
        case 591:
        case 592:
        case 593:
        case 594:
        case 595:
        case 596:
        case 597:
        case 598:
        case 599:
        case 600:
        case 700:
        case 744:
        case 745:
        case 746:
        case 747:
        case 748:
        case 749:
        case 750:
        case 751:
        case 752:
        case 753:
        case 754:
        case 755:
        case 756:
        case 757:
        case 758:
        case 759:
        case 760:
        case 761:
        case 762:
        case 763:
        case 764:
        case 765:
        case 766:
        case 767:
        case 768:
        case 769:
        case 770:
        case 771:
        case 772:
        case 773:
        case 774:
        case 775:
        case 776:
        case 777:
        case 778:
        case 779:
        case 780:
        case 781:
        case 782:
        case 783:
        case 784:
        case 785:
        case 786:
        case 787:
        case 788:
        case 789:
        case 790:
        case 791:
        case 792:
        case 793:
        case 794:
        case 795:
        case 796:
        case 797:
        case 798:
        case 799:
        case 800:
          goto LABEL_1996;
        case 201:
          action = @"PLACECARD_TRAY";
          break;
        case 202:
          action = @"WEB_MODULE";
          break;
        case 203:
          action = @"ACTION_BAR";
          break;
        case 204:
          action = @"ACTION_BAR_VENDORS_MENU";
          break;
        case 250:
          action = @"ADD_FAVORITE_TRAY";
          break;
        case 251:
          action = @"COLLECTION_LIST";
          break;
        case 252:
          action = @"COLLECTION_VIEW";
          break;
        case 253:
          action = @"FAVORITE_DETAILS";
          break;
        case 254:
          action = @"FAVORITES_TRAY";
          break;
        case 255:
          action = @"SHARED_COLLECTION";
          break;
        case 256:
          action = @"SHARED_COLLECTION_VIEW";
          break;
        case 257:
          action = @"RECENTLY_VIEWED";
          break;
        case 258:
          action = @"SHARED_WEB_COLLECTION";
          break;
        case 259:
          action = @"CURATED_COLLECTION_VIEW";
          break;
        case 260:
          action = @"FEATURED_COLLECTIONS";
          break;
        case 261:
          action = @"PUBLISHER_TRAY";
          break;
        case 262:
          action = @"SHARED_CURATED_COLLECTION_VIEW";
          break;
        case 263:
          action = @"CURATED_COLLECTION_NOTIFICATION";
          break;
        case 264:
          action = @"CURATED_COLLECTION_LIST";
          break;
        case 265:
          action = @"PUBLISHER_LIST";
          break;
        case 266:
          action = @"WATCH_CURATED_COLLECTION_VIEW";
          break;
        case 267:
          action = @"SIRI_SUGGESTION_SHARED_ETA_SUBLIST";
          break;
        case 268:
          action = @"SIRI_SUGGESTION_SHARED_ETA_CARPLAY_SUBLIST";
          break;
        case 301:
          action = @"ROUTING_TRAY_DRIVING";
          break;
        case 302:
          action = @"ROUTING_TRAY_WALKING";
          break;
        case 303:
          action = @"ROUTING_TRAY_TRANSIT";
          break;
        case 304:
          action = @"ROUTING_TRAY_RIDESHARE";
          break;
        case 305:
          action = @"ROUTING_TRAY_CYCLING";
          break;
        case 306:
          action = @"ROUTING_TRAY_VIRTUAL_GARAGE_VIEW";
          break;
        case 401:
          action = @"NAV_TRAY_DRIVING";
          break;
        case 402:
          action = @"NAV_TRAY_WALKING";
          break;
        case 403:
          action = @"NAV_TRAY_TRANSIT";
          break;
        case 404:
          action = @"NAV_TRAY_CYCLING";
          break;
        case 501:
          action = @"MAP_PLACECARD";
          break;
        case 502:
          action = @"MAP_SEARCH";
          break;
        case 503:
          action = @"MAP_RESULTS";
          break;
        case 504:
          action = @"MAP_ROUTING";
          break;
        case 505:
          action = @"MAP_NAV";
          break;
        case 506:
          action = @"MAP_RESULTS_SEARCH_ALONG_ROUTE";
          break;
        case 507:
          action = @"MAP_TRAFFIC_INCIDENT";
          break;
        case 508:
          action = @"MAP_FULL_SCREEN";
          break;
        case 509:
          action = @"MAP_DRIVE";
          break;
        case 510:
          action = @"MAP_LAUNCH_AND_GO";
          break;
        case 511:
          action = @"MAP_VIEW";
          break;
        case 601:
          action = @"MAPS_SETTINGS";
          break;
        case 602:
          action = @"MAPS_PREFERENCES";
          break;
        case 603:
          action = @"RAP";
          break;
        case 604:
          action = @"ROUTING_DRIVING_DETAILS";
          break;
        case 605:
          action = @"ROUTING_WALKING_DETAILS";
          break;
        case 606:
          action = @"ROUTING_TRANSIT_DETAILS";
          break;
        case 607:
          action = @"ROUTING_EDITOR";
          break;
        case 608:
          action = @"NAV_DRIVING_DETAILS";
          break;
        case 609:
          action = @"NAV_WALKING_DETAILS";
          break;
        case 610:
          action = @"NAV_TRANSIT_DETAILS";
          break;
        case 611:
          action = @"NAV_AUDIO_SETTINGS";
          break;
        case 612:
          action = @"PHOTO_VIEWER_ALL";
          break;
        case 613:
          action = @"PHOTO_VIEWER_SINGLE";
          break;
        case 614:
          action = @"ROUTE_OPTIONS_TRANSIT";
          break;
        case 615:
          action = @"TRAFFIC_INCIDENT_TRAY";
          break;
        case 616:
          action = @"NAV_DIRECTIONS_BANNER_DRIVING";
          break;
        case 617:
          action = @"NAV_DIRECTIONS_BANNER_WALKING";
          break;
        case 618:
          action = @"NAV_DIRECTIONS_BANNER_TRANSIT";
          break;
        case 619:
          action = @"REFINE_SEARCH_SUGGESTION_AREA";
          break;
        case 620:
          action = @"ADD_PHOTO_SHEET";
          break;
        case 621:
          action = @"ADD_PLACE_SHEET";
          break;
        case 622:
          action = @"SHARE_SHEET";
          break;
        case 623:
          action = @"EDIT_LOCATION_SHEET";
          break;
        case 624:
          action = @"ADD_CONTACT_SHEET";
          break;
        case 625:
          action = @"EDIT_NAME_SHEET";
          break;
        case 626:
          action = @"DRIVING_NAV_SETTINGS";
          break;
        case 627:
          action = @"TRANSIT_SETTINGS";
          break;
        case 628:
          action = @"TRANSIT_ADVISORY_SHEET";
          break;
        case 629:
          action = @"REMOVE_CAR_SHEET";
          break;
        case 630:
          action = @"ROUTE_OPTIONS_DRIVING";
          break;
        case 631:
          action = @"ROUTE_OPTIONS_DATETIME";
          break;
        case 632:
          action = @"TRANSIT_ADVISORY_BANNER";
          break;
        case 633:
          action = @"BOOK_TABLE_SELECT_TIME";
          break;
        case 634:
          action = @"BOOK_TABLE_MORE_OPTIONS";
          break;
        case 635:
          action = @"BOOK_TABLE_READY";
          break;
        case 636:
          action = @"BOOK_TABLE_BOOKED";
          break;
        case 637:
          action = @"TRANSIT_LINE_CLUSTER_SHEET";
          break;
        case 638:
          action = @"TRANSIT_LINE_LIST_SHEET";
          break;
        case 639:
          action = @"TRANSIT_BALANCE_BANNER";
          break;
        case 640:
          action = @"WEATHER_ICON";
          break;
        case 641:
          action = @"HELP_IMPROVE_MAPS_DIALOG";
          break;
        case 642:
          action = @"HELP_IMPROVE_COMMUTE_PREDICTION_ACCURACY_DIALOG";
          break;
        case 643:
          action = @"COMMUTE_PREDICTION_ACCURACY_DIALOG";
          break;
        case 644:
          action = @"FLOOR_PICKER";
          break;
        case 645:
          action = @"VENUE_LIST";
          break;
        case 646:
          action = @"AR_MODE";
          break;
        case 647:
          action = @"ROUTING_TRANSIT_TICKETS_SHEET";
          break;
        case 648:
          action = @"LINKED_SERVICE_HOURS";
          break;
        case 649:
          action = @"SHARE_ETA_TRAY";
          break;
        case 650:
          action = @"ETA_UPDATE_TRAY";
          break;
        case 651:
          action = @"SCHEDULECARD_TRAY";
          break;
        case 652:
          action = @"AR_NAV";
          break;
        case 653:
          action = @"TAP_TRANSIT_ACCESS_POINT";
          break;
        case 654:
          action = @"LOCATIONS_INSIDE";
          break;
        case 655:
          action = @"SIMILAR_LOCATIONS";
          break;
        case 656:
          action = @"LOCATIONS_AT_ADDRESS";
          break;
        case 657:
          action = @"NAV_DIRECTIONS_BANNER_CYCLING";
          break;
        case 658:
          action = @"ROUTE_OPTIONS_CYCLING";
          break;
        case 659:
          action = @"EV_CONNECTION_TRAY";
          break;
        case 660:
          action = @"VIRTUAL_GARAGE";
          break;
        case 661:
          action = @"VIRTUAL_GARAGE_BANNER";
          break;
        case 662:
          action = @"VIRTUAL_GARAGE_VEHICLE_VIEW";
          break;
        case 663:
          action = @"ADVISORY_DETAILS_PAGE";
          break;
        case 664:
          action = @"APP_CLIP_NOTIFICATION";
          break;
        case 665:
          action = @"PHOTO_VIEWER_GALLERY";
          break;
        case 666:
          action = @"RECOMMENDATION_CARD";
          break;
        case 667:
          action = @"INCIDENT_REPORT_TRAY";
          break;
        case 668:
          action = @"MAPS_WIDGET_DISPLAY";
          break;
        case 669:
          action = @"VISUAL_LOCATION_FRAMEWORK";
          break;
        case 670:
          action = @"APP_CLIP_TRAY";
          break;
        case 671:
          action = @"LICENSE_PLATE_SUGGESTION_PAGE";
          break;
        case 672:
          action = @"NOTIFICATION_ADD_PLATE";
          break;
        case 673:
          action = @"MAPS_RESULTS";
          break;
        case 674:
          action = @"MAPS_WIDGET_APP_CONNECTION";
          break;
        case 675:
          action = @"MAPS_WIDGET_CURRENT_LOCATION";
          break;
        case 676:
          action = @"MAPS_WIDGET_CURRENT_NAV";
          break;
        case 677:
          action = @"MAPS_WIDGET_ETA";
          break;
        case 678:
          action = @"MAPS_WIDGET_TRANSIT";
          break;
        case 679:
          action = @"MAPS_WIDGET_UPC_DESTINATION";
          break;
        case 680:
          action = @"WIDGET_CREATION_TRAY";
          break;
        case 681:
          action = @"MAPS_WIDGET_HOME";
          break;
        case 682:
          action = @"MAPS_WIDGET_PARKED_CAR";
          break;
        case 683:
          action = @"MAPS_WIDGET_POI";
          break;
        case 684:
          action = @"MAPS_WIDGET_SCHOOL";
          break;
        case 685:
          action = @"MAPS_WIDGET_WORK";
          break;
        case 686:
          action = @"AIRPORT_NOTIFICATION";
          break;
        case 687:
          action = @"MAPS_WIDGET_EMPTY";
          break;
        case 688:
          action = @"COARSE_LOCATION_OPTIONS_PROMPT";
          break;
        case 689:
          action = @"ALLOW_PRECISE_LOCATION_PROMPT";
          break;
        case 690:
          action = @"SHARE_MY_LOCATION";
          break;
        case 691:
          action = @"MARK_MY_LOCATION";
          break;
        case 692:
          action = @"AIRPORT_NOTIFICATION_WATCH";
          break;
        case 693:
          action = @"EDIT_FAVORITE";
          break;
        case 694:
          action = @"ROUTING_CYCLING_DETAILS";
          break;
        case 695:
          action = @"NAV_CYCLING_DETAILS";
          break;
        case 696:
          action = @"MAPS_SUGGESTION_WIDGET";
          break;
        case 697:
          action = @"ARP_TIPKIT";
          break;
        case 698:
          action = @"ARP_PRIVACY";
          break;
        case 699:
          action = @"ROUTE_OPTIONS_WALKING";
          break;
        case 701:
          action = @"SAFARI_SEARCH";
          break;
        case 702:
          action = @"SPOTLIGHT_SEARCH";
          break;
        case 703:
          action = @"SAFARI_MAPS_SEARCH_RESULTS";
          break;
        case 704:
          action = @"SPOTLIGHT_MAPS_SEARCH_RESULTS";
          break;
        case 705:
          action = @"WIDGET_MAPS_DESTINATIONS";
          break;
        case 706:
          action = @"WIDGET_MAPS_TRANSIT";
          break;
        case 707:
          action = @"WIDGET_MAPS_NEARBY";
          break;
        case 708:
          action = @"NOTIFICATION_FIND_MY_CAR";
          break;
        case 709:
          action = @"CONTROL_CENTER";
          break;
        case 710:
          action = @"NOTIFICATION_CENTER";
          break;
        case 711:
          action = @"NOTIFICATION_DOOM";
          break;
        case 712:
          action = @"NOTIFICATION_VENUES";
          break;
        case 713:
          action = @"NOTIFICATION_RAP_UPDATE";
          break;
        case 714:
          action = @"NOTIFICATION_TRIP_CANCELLED";
          break;
        case 715:
          action = @"NOTIFICATION_STOP_SKIPPED";
          break;
        case 716:
          action = @"NOTIFICATION_TRIP_DELAYED";
          break;
        case 717:
          action = @"NOTIFICATION_RAP";
          break;
        case 718:
          action = @"NOTIFICATION_PROXY_AUTH";
          break;
        case 719:
          action = @"NOTIFICATION_PUSH_TO_DEVICE";
          break;
        case 720:
          action = @"NOTIFICATION_LOW_FUEL";
          break;
        case 721:
          action = @"NOTIFICATION_FIND_MY_CAR_RESET";
          break;
        case 722:
          action = @"NOTIFICATION_TRAFFIC_CONDITIONS";
          break;
        case 723:
          action = @"NOTIFICATION_SHARED_ETA";
          break;
        case 724:
          action = @"NOTIFICATION_SHARED_ETA_UPDATE";
          break;
        case 725:
          action = @"ANNOUNCEMENT_TYPE_UNKNOWN";
          break;
        case 726:
          action = @"ANNOUNCEMENT_TYPE_GENERAL";
          break;
        case 727:
          action = @"ANNOUNCEMENT_TYPE_FLYOVER";
          break;
        case 728:
          action = @"ANNOUNCEMENT_TYPE_TRANSIT";
          break;
        case 729:
          action = @"ANNOUNCEMENT_TYPE_VENUES";
          break;
        case 730:
          action = @"ANNOUNCEMENT_TYPE_ENHANCED_DETAIL";
          break;
        case 731:
          action = @"ANNOUNCEMENT_TYPE_LANE_GUIDANCE";
          break;
        case 732:
          action = @"ANNOUNCEMENT_TYPE_LOOK_AROUND";
          break;
        case 733:
          action = @"APP_SHEET";
          break;
        case 734:
          action = @"CZ_ADVISORY_DETAILS_PAGE";
          break;
        case 735:
          action = @"SHARE_ETA_CONTACT_TRAY";
          break;
        case 736:
          action = @"SIRI_SHARE_ETA";
          break;
        case 737:
          action = @"SIRI_SUGGESTION_SHARED_ETA";
          break;
        case 738:
          action = @"SIRI_SUGGESTION_SHARED_ETA_CARPLAY";
          break;
        case 739:
          action = @"INCIDENT_ALERT_TRAY";
          break;
        case 740:
          action = @"INCIDENT_REPORT_CONFIRMATION_TRAY";
          break;
        case 741:
          action = @"RAP_INCIDENT_REPORT_VIEW";
          break;
        case 742:
          action = @"SEARCH_ALONG_ROUTE_CATEGORY_TRAY";
          break;
        case 743:
          action = @"TRAFFIC_ADVISORY_SHEET";
          break;
        case 801:
          action = @"SIRI_PLUGIN_SNIPPET";
          break;
        case 802:
          action = @"SIRI_PLUGIN_COMMAND";
          break;
        case 803:
          action = @"SIRI_SEARCH_RESULT_LIST";
          break;
        case 804:
          action = @"SIRI_DISAMBIGUATION_LIST";
          break;
        case 805:
          action = @"SIRI_PLACE_SNIPPET";
          break;
        default:
          if (action != 901)
          {
            goto LABEL_1996;
          }

          action = @"CHROME";
          break;
      }

      goto LABEL_1997;
    }

    if (action <= 1400)
    {
      switch(action)
      {
        case 1001:
          action = @"CARPLAY_NAV";
          break;
        case 1002:
          action = @"CARPLAY_EXPLORE";
          break;
        case 1003:
          action = @"CARPLAY_DESTINATIONS";
          break;
        case 1004:
          action = @"CARPLAY_TRAFFIC_INCIDENT";
          break;
        case 1005:
          action = @"CARPLAY_CONTROL";
          break;
        case 1006:
          action = @"CARPLAY_PROACTIVE";
          break;
        case 1007:
          action = @"CARPLAY_ROUTING";
          break;
        case 1008:
          action = @"CARPLAY_MORE_ROUTES";
          break;
        case 1009:
          action = @"CARPLAY_SEARCH_ALONG_ROUTE";
          break;
        case 1010:
          action = @"CARPLAY_SEARCH";
          break;
        case 1011:
          action = @"CARPLAY_SEARCH_RESULTS";
          break;
        case 1012:
          action = @"CARPLAY_FAVORITES";
          break;
        case 1013:
          action = @"CARPLAY_NAV_CONFIRMATION";
          break;
        case 1014:
          action = @"CARPLAY_DESTINATION_SHARING";
          break;
        case 1015:
          action = @"CARPLAY_NOTIFICATION_BATTERY";
          break;
        case 1016:
          action = @"CARPLAY_NOTIFICATION_DOOM";
          break;
        case 1017:
          action = @"CARPLAY_NOTIFICATION_FUEL";
          break;
        case 1018:
          action = @"CARPLAY_NOTIFICATION_HYBRID";
          break;
        case 1019:
          action = @"CARPLAY_SHARE_ETA_TRAY";
          break;
        case 1020:
          action = @"CARPLAY_ETA_UPDATE_TRAY";
          break;
        case 1021:
          action = @"CARPLAY_ACTION_TRAY";
          break;
        case 1022:
          action = @"CARPLAY_PLACECARD";
          break;
        case 1023:
          action = @"CARPLAY_KEYBOARD";
          break;
        case 1024:
          action = @"CARPLAY_UI_TARGET_UNKNOWN";
          break;
        case 1025:
          action = @"CARPLAY_EDIT_STOPS";
          break;
        case 1100:
          action = @"RAP_DIRECTIONS_MENU";
          break;
        case 1101:
          action = @"RAP_DIRECTIONS_INSTRUCTIONS_INCORRECT_LIST";
          break;
        case 1102:
          action = @"RAP_DIRECTIONS_INSTRUCTIONS_INCORRECT_DETAILS_FORM";
          break;
        case 1103:
          action = @"RAP_DIRECTIONS_BETTER_ROUTE_AVAILABLE_FORM";
          break;
        case 1104:
          action = @"RAP_DIRECTIONS_ESTIMATED_TIME_INCORRECT_FORM";
          break;
        case 1105:
          action = @"RAP_DIRECTIONS_ARRIVAL_ENTRY_POINT_INCORRECT_FORM";
          break;
        case 1106:
          action = @"RAP_TRANSIT_MENU";
          break;
        case 1107:
          action = @"RAP_STATION_MAP";
          break;
        case 1108:
          action = @"RAP_STATION_MENU";
          break;
        case 1109:
          action = @"RAP_STATION_ENTRANCE_EXIT_INCORRECT_MAP";
          break;
        case 1110:
          action = @"RAP_STATION_ENTRANCE_EXIT_INCORRECT_FORM";
          break;
        case 1111:
          action = @"RAP_STATION_CLOSED_FORM";
          break;
        case 1112:
          action = @"RAP_LINE_MAP";
          break;
        case 1113:
          action = @"RAP_LINE_MENU";
          break;
        case 1114:
          action = @"RAP_LINE_NAME_FORM";
          break;
        case 1115:
          action = @"RAP_LINE_SHAPE_FORM";
          break;
        case 1116:
          action = @"RAP_LINE_SCHEDULE_INCORRECT_FORM";
          break;
        case 1117:
          action = @"RAP_ADD_PLACE_MENU";
          break;
        case 1118:
          action = @"RAP_ADD_POI_MAP";
          break;
        case 1119:
          action = @"RAP_CATEGORY_LIST";
          break;
        case 1120:
          action = @"RAP_POI_DETAILS_FORM";
          break;
        case 1121:
          action = @"RAP_ADD_STREET_MAP";
          break;
        case 1122:
          action = @"RAP_STREET_DETAILS_FORM";
          break;
        case 1123:
          action = @"RAP_ADD_OTHER_MAP";
          break;
        case 1124:
          action = @"RAP_OTHER_DETAILS_FORM";
          break;
        case 1125:
          action = @"RAP_CAMERA";
          break;
        case 1126:
          action = @"RAP_LABEL_MAP";
          break;
        case 1127:
          action = @"RAP_LABEL_DETAILS_FORM";
          break;
        case 1128:
          action = @"RAP_SEARCH_MENU";
          break;
        case 1129:
          action = @"RAP_SEARCH_UNEXPECTED_RESULT_FORM";
          break;
        case 1130:
          action = @"RAP_SEARCH_ADDRESS_INCORRECT_FORM";
          break;
        case 1131:
          action = @"RAP_SEARCH_LOCATION_INCORRECT_MAP";
          break;
        case 1132:
          action = @"RAP_SEARCH_LOCATION_INCORRECT_DETAILS_FORM";
          break;
        case 1133:
          action = @"RAP_SATELLITE_IMAGE_MAP";
          break;
        case 1134:
          action = @"RAP_SATELLITE_IMAGE_DETAILS_FORM";
          break;
        case 1135:
          action = @"RAP_OTHER_FORM";
          break;
        case 1136:
          action = @"RAP_PRIVACY";
          break;
        case 1137:
          action = @"RAP_CONFIRMATION";
          break;
        case 1138:
          action = @"RAP_POI_MENU";
          break;
        case 1139:
          action = @"RAP_SEARCH_AUTOCOMPLETE_MENU";
          break;
        case 1140:
          action = @"RAP_ADD_A_PLACE_MAP";
          break;
        case 1141:
          action = @"RAP_POI_LOCATION_MAP";
          break;
        case 1142:
          action = @"RAP_DIRECTIONS_ARRIVAL_ENTRY_POINT_INCORRECT_MAP";
          break;
        case 1143:
          action = @"RAP_POI_CLOSED_FORM";
          break;
        case 1144:
          action = @"RAP_CLAIM_BUSINESS_DIALOG";
          break;
        case 1145:
          action = @"RAP_BRAND_MENU";
          break;
        case 1146:
          action = @"RAP_BRAND_DETAILS_FORM";
          break;
        case 1147:
          action = @"RAP_LOOK_AROUND_IMAGE_QUALITY_FORM";
          break;
        case 1148:
          action = @"RAP_LOOK_AROUND_LABELS_STREET_FORM";
          break;
        case 1149:
          action = @"RAP_LOOK_AROUND_BLURRING_FORM";
          break;
        case 1150:
          action = @"RAP_LOOK_AROUND_REMOVE_HOME_FORM";
          break;
        case 1151:
          action = @"RAP_LOOK_AROUND_MENU";
          break;
        case 1152:
          action = @"RAP_LOOK_AROUND_LABELS_STORE_FORM";
          break;
        case 1153:
          action = @"RAP_LOOK_AROUND_PRIVACY_MENU";
          break;
        case 1154:
          action = @"RAP_LIGHTWEIGHT";
          break;
        case 1155:
          action = @"RAP_EDIT_PLACE_DETAILS";
          break;
        case 1156:
          action = @"RAP_ADD_CATEGORY";
          break;
        case 1157:
          action = @"RAP_ADD_HOURS";
          break;
        case 1158:
          action = @"RAP_EDIT_LOCATION";
          break;
        case 1159:
          action = @"RAP_EDIT_ENTRY_POINT";
          break;
        case 1160:
          action = @"RAP_LOOK_AROUND";
          break;
        case 1161:
          action = @"RAP_ADD_ENTRY_POINT";
          break;
        case 1201:
          action = @"WATCH_MAIN_MENU";
          break;
        case 1202:
          action = @"WATCH_MAIN_PRESS_MENU";
          break;
        case 1203:
          action = @"WATCH_SEARCH";
          break;
        case 1204:
          action = @"WATCH_DICTATION";
          break;
        case 1205:
          action = @"WATCH_FAVORITES";
          break;
        case 1206:
          action = @"WATCH_SUB_CATEGORY_LIST";
          break;
        case 1207:
          action = @"WATCH_SEARCH_RESULTS_LIST";
          break;
        case 1208:
          action = @"WATCH_MAP_VIEW";
          break;
        case 1209:
          action = @"WATCH_PLACECARD";
          break;
        case 1210:
          action = @"WATCH_ROUTE_PLANNING";
          break;
        case 1211:
          action = @"WATCH_ROUTE_DETAILS";
          break;
        case 1212:
          action = @"WATCH_NAV_TBT";
          break;
        case 1213:
          action = @"WATCH_NAV_MAP";
          break;
        case 1214:
          action = @"WATCH_NAV_PRESS_MENU";
          break;
        case 1215:
          action = @"WATCH_MAP_PRESS_MENU";
          break;
        case 1216:
          action = @"WATCH_ROUTING_PRESS_MENU";
          break;
        case 1217:
          action = @"WATCH_TRANSIT_MAP_VIEW";
          break;
        case 1218:
          action = @"WATCH_SCRIBBLE";
          break;
        case 1219:
          action = @"WATCH_COLLECTION_VIEW";
          break;
        case 1220:
          action = @"WATCH_ROUTE_PLANNING_WALKING";
          break;
        case 1221:
          action = @"WATCH_ROUTE_PLANNING_DRIVING";
          break;
        case 1222:
          action = @"WATCH_ROUTE_PLANNING_TRANSIT";
          break;
        case 1223:
          action = @"WATCH_PAIRED_DEVICE";
          break;
        case 1224:
          action = @"WATCH_NAV_DRIVING_SPLIT";
          break;
        case 1225:
          action = @"WATCH_NAV_DRIVING_PLATTER";
          break;
        case 1226:
          action = @"WATCH_NAV_DRIVING_MAP";
          break;
        case 1227:
          action = @"WATCH_NAV_WALKING_SPLIT";
          break;
        case 1228:
          action = @"WATCH_NAV_WALKING_PLATTER";
          break;
        case 1229:
          action = @"WATCH_NAV_WALKING_MAP";
          break;
        case 1230:
          action = @"WATCH_NAV_TRANSIT_SPLIT";
          break;
        case 1231:
          action = @"WATCH_NAV_TRANSIT_PLATTER";
          break;
        case 1232:
          action = @"WATCH_NAV_TRANSIT_MAP";
          break;
        case 1233:
          action = @"WATCH_ROUTE_INFO";
          break;
        case 1234:
          action = @"WATCH_NAV_CYCLING_MAP";
          break;
        case 1235:
          action = @"WATCH_NAV_CYCLING_PLATTER";
          break;
        case 1236:
          action = @"WATCH_NAV_CYCLING_SPLIT";
          break;
        case 1237:
          action = @"WATCH_ROUTE_PLANNING_CYCLING";
          break;
        case 1238:
          action = @"WATCH_SEARCH_INPUT";
          break;
        case 1239:
          action = @"WATCH_SIRI_SUGGESTION_RESUME_MULTIPOINT_ROUTE";
          break;
        case 1240:
          action = @"WATCH_SIRI_SUGGESTION_RESUME_ROUTE";
          break;
        case 1301:
          action = @"PERSONALIZED_ADDRESS_LIST";
          break;
        case 1302:
          action = @"PERSONALIZED_ADDRESS_FORM";
          break;
        case 1303:
          action = @"PERSONALIZED_LABEL_FORM";
          break;
        case 1304:
          action = @"PERSONALIZED_EDIT_MAP";
          break;
        case 1305:
          action = @"PERSONALIZED_CONFIRMATION";
          break;
        case 1306:
          action = @"PERSONALIZED_ADDRESS_DELETE_DIALOG";
          break;
        case 1307:
          action = @"PERSONALIZED_ADDRESS_INFO";
          break;
        case 1308:
          action = @"PERSONALIZED_ADDRESS_SEARCH";
          break;
        case 1309:
          action = @"PERSONALIZED_ADDRESS_SEARCH_RESULTS";
          break;
        case 1310:
          action = @"FAVORITE_SEARCH";
          break;
        case 1311:
          action = @"FAVORITE_LIST";
          break;
        case 1312:
          action = @"FAVORITE_INFO";
          break;
        case 1313:
          action = @"PERSONALIZED_CONFIRMATION_WITH_PRIVACY";
          break;
        default:
          goto LABEL_1996;
      }

      goto LABEL_1997;
    }

    if (action > 1705)
    {
      if (action > 1806)
      {
        if (action <= 1899)
        {
          if (action <= 1808)
          {
            if (action == 1807)
            {
              action = @"MAPS_WEB_RELATED_PLACES_LIST";
            }

            else
            {
              action = @"MAPS_WEB_COLLECTION_LIST";
            }

            goto LABEL_1997;
          }

          if (action == 1809)
          {
            action = @"MAPS_WEB_DIRECTIONS";
            goto LABEL_1997;
          }

          if (action == 1810)
          {
            action = @"MAPS_WEB_SIDEBAR";
            goto LABEL_1997;
          }
        }

        else
        {
          if (action <= 1901)
          {
            if (action == 1900)
            {
              action = @"FIND_MY_AIR_TAG_VIEW";
            }

            else
            {
              action = @"FIND_MY_AIR_PODS_VIEW";
            }

            goto LABEL_1997;
          }

          switch(action)
          {
            case 0x76E:
              action = @"FIND_MY_ACCESSORY_VIEW";
              goto LABEL_1997;
            case 0x76F:
              action = @"FIND_MY_DEVICE_VIEW";
              goto LABEL_1997;
            case 0x770:
              action = @"FIND_MY_PERSON_VIEW";
              goto LABEL_1997;
          }
        }
      }

      else
      {
        if (action > 1801)
        {
          if (action <= 1803)
          {
            if (action == 1802)
            {
              action = @"MAPS_WEB_SEARCH";
            }

            else
            {
              action = @"MAPS_WEB_SEARCH_RESULTS";
            }
          }

          else if (action == 1804)
          {
            action = @"MAPS_WEB_PUBLISHER";
          }

          else if (action == 1805)
          {
            action = @"MAPS_WEB_GUIDE";
          }

          else
          {
            action = @"MAPS_WEB_GUIDES_HOME";
          }

          goto LABEL_1997;
        }

        if (action <= 1707)
        {
          if (action == 1706)
          {
            action = @"LOOK_AROUND_VIEW_PLACECARD";
          }

          else
          {
            action = @"LOOK_AROUND_PIP_PLACECARD";
          }

          goto LABEL_1997;
        }

        if (action == 1708)
        {
          action = @"OFFLINE_BROWSE_ONLY_SEARCH_TRAY";
          goto LABEL_1997;
        }

        if (action == 1801)
        {
          action = @"MAPS_WEB_PLACE";
          goto LABEL_1997;
        }
      }
    }

    else if (action > 1502)
    {
      if (action > 1700)
      {
        if (action <= 1702)
        {
          if (action == 1701)
          {
            action = @"LOOK_AROUND_ACTION_SHEET";
          }

          else
          {
            action = @"LOOK_AROUND_VIEW";
          }
        }

        else if (action == 1703)
        {
          action = @"LOOK_AROUND_PLATTER";
        }

        else if (action == 1704)
        {
          action = @"LOOK_AROUND_PIP_UNAVAILABLE_ZOOM";
        }

        else
        {
          action = @"LOOK_AROUND_PIP_UNAVAILABLE_REGION";
        }

        goto LABEL_1997;
      }

      if (action > 1600)
      {
        if (action == 1601)
        {
          action = @"MENU_ITEM_DARK_MAP";
          goto LABEL_1997;
        }

        if (action == 1700)
        {
          action = @"LOOK_AROUND_PIP";
          goto LABEL_1997;
        }
      }

      else
      {
        if (action == 1503)
        {
          action = @"PLACECARD_PHONE";
          goto LABEL_1997;
        }

        if (action == 1504)
        {
          action = @"PLACECARD_URL";
          goto LABEL_1997;
        }
      }
    }

    else
    {
      if (action <= 1404)
      {
        if (action > 1402)
        {
          if (action == 1403)
          {
            action = @"ROUTING_TRAY_RIDESHARE_CONFIRMATION_REQUESTING";
          }

          else
          {
            action = @"ROUTING_TRAY_RIDESHARE_CONFIRMATION_CONFIRMED";
          }
        }

        else if (action == 1401)
        {
          action = @"ROUTING_TRAY_RIDESHARE_RIDE_OPTIONS";
        }

        else
        {
          action = @"ROUTING_TRAY_RIDESHARE_DETAILS_PICKING";
        }

        goto LABEL_1997;
      }

      if (action <= 1406)
      {
        if (action == 1405)
        {
          action = @"ROUTING_TRAY_RIDESHARE_SURGE_PRICING_DIALOG";
        }

        else
        {
          action = @"ROUTING_TRAY_RIDESHARE_FEEDBACK";
        }

        goto LABEL_1997;
      }

      switch(action)
      {
        case 0x57F:
          action = @"ROUTING_TRAY_RIDESHARE_ENABLE_ALL";
          goto LABEL_1997;
        case 0x5DD:
          action = @"PLACECARD_HEADER";
          goto LABEL_1997;
        case 0x5DE:
          action = @"PLACECARD_ADDRESS";
LABEL_1997:
          *buf = 138412802;
          v26 = v9;
          v27 = 2112;
          v28 = v11;
          v29 = 2112;
          v30 = action;
          _os_log_impl(&dword_1AB634000, v8, OS_LOG_TYPE_DEBUG, "sequence '%@' is processing (%@, %@)", buf, 0x20u);

          goto LABEL_1998;
      }
    }

LABEL_1996:
    action = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", action];
    goto LABEL_1997;
  }

LABEL_1998:

  v13 = *(v7 + 16);
  if (v13 < [*(v7 + 8) count])
  {
    v14 = [*(v7 + 8) objectAtIndexedSubscript:*(v7 + 16)];
    v15 = [v14 processUserAction:a2 target:action atTime:target];
    if (v15 > 1)
    {
      if (v15 == 2)
      {
        v17 = *(v7 + 16) + 1;
        *(v7 + 16) = v17;
        goto LABEL_2007;
      }

      if (v15 == 3)
      {
        v16 = 1;
LABEL_2014:
        v24 = v16;
        goto LABEL_2015;
      }
    }

    else if (v15 <= 1)
    {
      v24 = 0;
LABEL_2015:

      result = v24;
      goto LABEL_2016;
    }

    v17 = *(v7 + 16);
LABEL_2007:
    v18 = [*(v7 + 8) count];
    v19 = GEOGetGEOAPSequenceAnalyticsLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v20 = @"advancing";
      v21 = *(v7 + 24);
      if (v17 >= v18)
      {
        v20 = @"done";
      }

      *buf = 138412546;
      v26 = v21;
      v27 = 2112;
      v28 = v20;
      _os_log_impl(&dword_1AB634000, v19, OS_LOG_TYPE_DEBUG, "sequence '%@' is %@", buf, 0x16u);
    }

    if (v17 < v18)
    {
      v22 = [*(v7 + 8) objectAtIndexedSubscript:*(v7 + 16)];

      [v22 setStartTime:target];
      v14 = v22;
    }

    v16 = v17 >= v18;
    goto LABEL_2014;
  }

  result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT);
  if (result)
  {
    *buf = 0;
    _os_log_fault_impl(&dword_1AB634000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Assertion failed: _sequenceIndex < _sequence.count", buf, 2u);
    result = 0;
  }

LABEL_2016:
  v23 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)setName:(uint64_t)name
{
  if (name)
  {
    objc_storeStrong((name + 24), a2);
  }
}

@end