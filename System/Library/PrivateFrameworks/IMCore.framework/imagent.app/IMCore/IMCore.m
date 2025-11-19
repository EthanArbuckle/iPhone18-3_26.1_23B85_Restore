id ClientRequestHandling<>.init(client:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_100002408(a1);

  return v2;
}

uint64_t sub_100002408(void *a1)
{
  swift_beginAccess();
  objc_setAssociatedObject(v1, &unk_10008A908, a1, 1);
  return swift_endAccess();
}

uint64_t sub_10000289C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000028FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000290C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000291C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000292C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000293C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000294C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000295C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000296C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000297C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000298C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100002A7C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v39 = a3;
  v40 = a1;
  v9 = sub_100054094();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100002F40();
  (*(v10 + 16))(v13, v14, v9);

  v15 = sub_100054074();
  v16 = sub_100054254();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v38 = a6;
    v36[1] = v18;
    v41 = v18;
    *v17 = 136315650;
    *(v17 + 4) = sub_100002F9C(v40, a2, &v41);
    *(v17 + 12) = 2080;
    v19 = IMStringFromClientCapabilities();
    v37 = a5;
    v20 = v19;
    v21 = sub_100054164();
    v36[2] = a2;
    v23 = v22;

    v24 = sub_100002F9C(v21, v23, &v41);

    *(v17 + 14) = v24;
    *(v17 + 22) = 2080;
    v25 = sub_100054144();
    v27 = sub_100002F9C(v25, v26, &v41);
    a5 = v37;

    *(v17 + 24) = v27;
    _os_log_impl(&_mh_execute_header, v15, v16, "Preparing setup info for %s with %s and context %s", v17, 0x20u);
    swift_arrayDestroy();
    a6 = v38;
  }

  (*(v10 + 8))(v13, v9);
  v28 = type metadata accessor for ApplicationWorkspaceObserver();
  v29 = (*(v28 + 112))();
  v30 = (*((swift_isaMask & *v29) + 0xD0))();

  if (v30)
  {
    v31 = v39;
  }

  else
  {
    v31 = v39 & 0x1842F8;
  }

  sub_100003434();
  sub_100003480();
  ClientRequestHandling<>.client.getter();
  sub_100053E94();

  isa = sub_100054114().super.isa;
  v33 = [a5 _setupInfoForCapabilities:v31 context:isa];

  sub_100054134();
  v34 = sub_100054114().super.isa;
  (*(a6 + 16))(a6, 1, v34);

  v35 = [objc_opt_self() sharedInstance];
  [v35 broadcastCloudKitStateAfterFetchingAccountStatus];
}

uint64_t sub_100002EEC(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_100054094();

  return sub_100002F64(v3, a2);
}

uint64_t sub_100002F64(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100002F9C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000030C4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100003068(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000031D0(v11);
  return v7;
}

uint64_t sub_100003068(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1000030C4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1000034E8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_100054354();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1000031D0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

id sub_100003240()
{
  if (qword_10008C150 != -1)
  {
    swift_once();
  }

  v1 = qword_10008C158;

  return v1;
}

uint64_t sub_10000329C()
{
  v1 = *(v0 + OBJC_IVAR____TtC7imagent28ApplicationWorkspaceObserver_delegate + 8);
  v2 = *(v0 + OBJC_IVAR____TtC7imagent28ApplicationWorkspaceObserver_delegate);
  ObjectType = swift_getObjectType();
  return (*(v1 + 8))(ObjectType, v1) & 1;
}

id sub_1000032EC()
{
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v1 = result;
    v2 = sub_100054154();
    v3 = [v1 applicationIsInstalled:v2];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ClientRequestHandling<>.client.getter()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &unk_10008A908);
  result = swift_endAccess();
  if (v1)
  {
    sub_1000542D4();
    swift_unknownObjectRelease();
    sub_1000034D8(&v4, &v5);
    sub_100053EA4();
    swift_dynamicCast();
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100003434()
{
  result = qword_10008AAD8;
  if (!qword_10008AAD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10008AAD8);
  }

  return result;
}

unint64_t sub_100003480()
{
  result = qword_10008AAE0;
  if (!qword_10008AAE0)
  {
    sub_100003434();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008AAE0);
  }

  return result;
}

_OWORD *sub_1000034D8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

char *sub_1000034E8(uint64_t a1, unint64_t a2)
{
  v4 = sub_100003534(a1, a2);
  sub_1000036DC(&off_1000824A0);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100003534(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100003664(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_100054354();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_100054194();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100003664(v10, 0);
        result = sub_100054334();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void *sub_100003664(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_1000334C8(&qword_10008AF10, qword_10005EA70);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_1000036DC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1000370D4(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000037C8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = sub_100054134();

  v4(a2, v5);
}

void sub_100003854(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, id))
{
  v5 = objc_allocWithZone(IMXPCDictionary);
  isa = sub_100054114().super.isa;
  v7 = [v5 initWithDictionary:isa key:"setupInfo"];

  a3(a1, v7);
}

void IMDaemonAnyRequestHandler.requestSetupXPCObject(withClientID:capabilities:context:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_100054154();
  isa = sub_100054114().super.isa;
  v12 = swift_allocObject();
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;
  v14[4] = sub_100003918;
  v14[5] = v12;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_1000037C8;
  v14[3] = &unk_100082D18;
  v13 = _Block_copy(v14);

  [v6 requestSetupWithClientID:v10 capabilities:a3 context:isa reply:v13];
  _Block_release(v13);
}

uint64_t sub_100003AD0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100003D50(void *a1, uint64_t a2, void *a3, void *a4, id a5, uint64_t a6, uint64_t a7)
{
  v12 = a1;
  v110 = a3;
  v13 = a4;
  v111 = v12;
  if (![v12 count] || !objc_msgSend(v110, "count"))
  {
    goto LABEL_133;
  }

  v14 = [v12 count];
  if (v14 != [v110 count])
  {
    if (IMOSLoggingEnabled())
    {
      v25 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v142 = v12;
        v143 = 2112;
        v144 = v110;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Mismatched IDs and serviceNames array to mark as read (IDs: %@   Service names: %@)", buf, 0x16u);
      }
    }

    goto LABEL_133;
  }

  v105 = v13;
  v15 = +[IMFeatureFlags sharedFeatureFlags];
  v16 = [v15 isOneChatEnabled];

  if (v16)
  {
LABEL_22:
    v26 = +[IMDMessageStore sharedInstance];
    v27 = [v105 lastObject];
    v28 = +[NSDate __im_dateWithCurrentServerTime];
    v108 = [v26 markMessagesAsReadWithIdentifiers:v111 onServices:v110 chatStyle:a2 upToGUID:v27 readDate:v28 fromMe:0];

    if (IMOSLoggingEnabled())
    {
      v29 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        v142 = v108;
        v143 = 2112;
        v144 = v111;
        v145 = 2112;
        v146 = v110;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Found message guids to mark as read: %@ for IDs %@ services %@", buf, 0x20u);
      }
    }

    v30 = +[IMDMessageStore sharedInstance];
    [v30 retractPostedNotificationsForMessageGUIDs:v108];

    if (IMOSLoggingEnabled())
    {
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Reindexing messages as read in spotlight", buf, 2u);
      }
    }

    IMDCoreSpotlightReindexMessagesWhileBlocking();
    if ([v108 count])
    {
      v32 = +[IMDMessageStore sharedInstance];
      v104 = [v32 messagesWithGUIDs:v108];

      v106 = [v104 lastObject];
      v103 = [v106 service];
      if (IMOSLoggingEnabled())
      {
        v33 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v142 = v103;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "Looking for chat that matches last message service %@", buf, 0xCu);
        }
      }
    }

    else
    {
      v103 = 0;
      v104 = 0;
      v106 = 0;
    }

    v34 = +[IMDMessageStore sharedInstance];
    v107 = [v34 chatForMessageIdentifier:{objc_msgSend(v106, "messageID")}];

    v109 = objc_alloc_init(NSMutableArray);
    if ([v111 count])
    {
      v35 = 0;
      do
      {
        v36 = [v110 objectAtIndex:v35];
        v37 = [v111 objectAtIndex:v35];
        v38 = IMCopyGUIDForChat();

        if (([v109 containsObject:v38] & 1) == 0)
        {
          [v109 addObject:v38];
        }

        ++v35;
      }

      while (v35 < [v111 count]);
    }

    if (!v107)
    {
      v131 = 0u;
      v132 = 0u;
      v129 = 0u;
      v130 = 0u;
      v39 = v109;
      v40 = [v39 countByEnumeratingWithState:&v129 objects:v140 count:16];
      if (v40)
      {
        v41 = *v130;
LABEL_44:
        v42 = 0;
        while (1)
        {
          if (*v130 != v41)
          {
            objc_enumerationMutation(v39);
          }

          v43 = *(*(&v129 + 1) + 8 * v42);
          v44 = +[IMDChatRegistry sharedInstance];
          v45 = [v44 existingChatWithGUID:v43];

          if (v45)
          {
            break;
          }

          if (v40 == ++v42)
          {
            v40 = [v39 countByEnumeratingWithState:&v129 objects:v140 count:16];
            if (v40)
            {
              goto LABEL_44;
            }

            goto LABEL_50;
          }
        }
      }

      else
      {
LABEL_50:
        v45 = 0;
      }

      v107 = v45;

      if (IMOSLoggingEnabled())
      {
        v46 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v142 = v45;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "Could not find chat from last message so defaulted to %@", buf, 0xCu);
        }
      }
    }

    if (IMOSLoggingEnabled())
    {
      v47 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        v48 = [v108 count];
        *buf = 134218498;
        v142 = v48;
        v143 = 2048;
        v144 = a5;
        v145 = 2112;
        v146 = v109;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, "daemon unread count : %lu, client unread count :%lu chatGuids %@", buf, 0x20u);
      }
    }

    if ([v108 count] && v107)
    {
      v112 = [v106 timeRead];
      v49 = [v112 __im_nanosecondTimeInterval];
      if (IMOSLoggingEnabled())
      {
        v50 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
        {
          v51 = [NSNumber numberWithLongLong:v49];
          *buf = 138412290;
          v142 = v51;
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_INFO, "Updating last read message time stamp with last read date: %@", buf, 0xCu);
        }
      }

      [v107 updateLastReadMessageTimeStampIfNeeded:v49];
      v101 = [v106 guid];
      if (IMOSLoggingEnabled())
      {
        v52 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v142 = v101;
          _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_INFO, "Calling update last seen message guid: %@", buf, 0xCu);
        }
      }

      [v107 updateLastSeenMessageGuidIfNeeded:{v101, v101, v103}];
      v53 = [v107 lastMessage];
      v54 = [v53 guid];
      v55 = [v106 guid];
      v114 = [v54 isEqualToString:v55];

      if ([v104 count])
      {
        v116 = objc_alloc_init(NSMutableSet);
        v127 = 0u;
        v128 = 0u;
        v125 = 0u;
        v126 = 0u;
        obj = v109;
        v56 = [obj countByEnumeratingWithState:&v125 objects:v139 count:16];
        if (v56)
        {
          v57 = *v126;
          do
          {
            v58 = 0;
            do
            {
              if (*v126 != v57)
              {
                objc_enumerationMutation(obj);
              }

              v59 = *(*(&v125 + 1) + 8 * v58);
              v60 = +[IMDChatRegistry sharedInstance];
              v61 = [v60 existingChatWithGUID:v59];

              if (v61)
              {
                v62 = [v61 personCentricID];
                if ([v62 length])
                {
                  v63 = [v116 containsObject:v62];
                  [v116 addObject:v62];
                  v64 = v63 ^ 1;
                }

                else
                {
                  v67 = IMLogHandleForCategory();
                  if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v142 = v61;
                    _os_log_error_impl(&_mh_execute_header, v67, OS_LOG_TYPE_ERROR, "Couldn't get person centrid ID from chat: %@", buf, 0xCu);
                  }

                  v68 = +[IMMetricsCollector sharedInstance];
                  v69 = [NSError errorWithDomain:@"com.apple.imagent" code:0 userInfo:0];
                  [v68 forceAutoBugCaptureWithSubType:@"PCIDNotFound" errorPayload:v69 type:@"MarkMessagesAsRead" context:v59];

                  v64 = 1;
                }

                v70 = IMOSLoggingEnabled();
                if (v114)
                {
                  if (v70)
                  {
                    v71 = OSLogHandleForIMFoundationCategory();
                    if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412290;
                      v142 = v61;
                      _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_INFO, "Last messages match. Setting unread count to zero for chat %@", buf, 0xCu);
                    }
                  }

                  v66 = +[IMDChatRegistry sharedInstance];
                  [v66 updateStateForChat:v61 forcePost:v64 shouldRebuildFailedMessageDate:0 setUnreadCountToZero:1];
                }

                else
                {
                  if (v70)
                  {
                    v72 = OSLogHandleForIMFoundationCategory();
                    if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412290;
                      v142 = v61;
                      _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_INFO, "Last messages do not match. Recalculating unread count for chat %@", buf, 0xCu);
                    }
                  }

                  v66 = +[IMDChatRegistry sharedInstance];
                  [v66 updateStateForChat:v61 forcePost:v64 shouldRebuildFailedMessageDate:0 shouldCalculateUnreadCount:1];
                }
              }

              else
              {
                v65 = IMLogHandleForCategory();
                if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v142 = v59;
                  _os_log_error_impl(&_mh_execute_header, v65, OS_LOG_TYPE_ERROR, "Couldn't find chat for guid: %@", buf, 0xCu);
                }

                v62 = +[IMMetricsCollector sharedInstance];
                v66 = [NSError errorWithDomain:@"com.apple.imagent" code:0 userInfo:0];
                [v62 forceAutoBugCaptureWithSubType:@"ChatNotFoundForMarkAsRead" errorPayload:v66 type:@"MarkMessagesAsRead" context:v59];
              }

              v58 = v58 + 1;
            }

            while (v56 != v58);
            v56 = [obj countByEnumeratingWithState:&v125 objects:v139 count:16];
          }

          while (v56);
        }

        v73 = [v106 accountID];
        v74 = +[IMDAccountController sharedInstance];
        v75 = [v74 sessionForAccount:v73];

        if (IMOSLoggingEnabled())
        {
          v76 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v142 = v106;
            _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_INFO, "Sending receipt for last message: %@", buf, 0xCu);
          }
        }

        v77 = [v107 guid];
        v78 = [v107 chatIdentifier];
        [v75 sendReadReceiptForMessage:v106 toChatID:v77 identifier:v78 style:{objc_msgSend(v107, "style")}];

        v79 = +[IMDBroadcastController sharedProvider];
        v80 = [v79 broadcasterForChatListeners];

        if (IMOSLoggingEnabled())
        {
          v81 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v142 = v104;
            _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_INFO, "Notifying about messages: %@", buf, 0xCu);
          }
        }

        v82 = IMCreateSerializedItemsFromArray();
        [v80 account:v73 chat:0 style:0 messagesUpdated:v82];
      }
    }

    else
    {
      if ([v108 count] == a5)
      {
LABEL_120:
        v119 = 0u;
        v120 = 0u;
        v117 = 0u;
        v118 = 0u;
        v91 = v109;
        v92 = [v91 countByEnumeratingWithState:&v117 objects:v137 count:16];
        if (v92)
        {
          v93 = *v118;
          do
          {
            for (i = 0; i != v92; i = i + 1)
            {
              if (*v118 != v93)
              {
                objc_enumerationMutation(v91);
              }

              v95 = *(*(&v117 + 1) + 8 * i);
              v96 = +[IMDChatRegistry sharedInstance];
              v97 = [v96 existingChatWithGUID:v95];

              if (a6 != 1)
              {
                [v97 tearDownToneNotificationSessionIfNeeded];
              }
            }

            v92 = [v91 countByEnumeratingWithState:&v117 objects:v137 count:16];
          }

          while (v92);
        }

        v98 = +[IMLockdownManager sharedInstance];
        v99 = [v98 isInternalInstall];

        if (v99)
        {
          v100 = +[NSDate date];
          IMSetDomainValueForKey();
        }

        goto LABEL_132;
      }

      v123 = 0u;
      v124 = 0u;
      v121 = 0u;
      v122 = 0u;
      v112 = v109;
      v83 = [v112 countByEnumeratingWithState:&v121 objects:v138 count:16];
      if (v83)
      {
        v84 = *v122;
        do
        {
          for (j = 0; j != v83; j = j + 1)
          {
            if (*v122 != v84)
            {
              objc_enumerationMutation(v112);
            }

            v86 = *(*(&v121 + 1) + 8 * j);
            if (IMOSLoggingEnabled())
            {
              v87 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v142 = v86;
                _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_INFO, "Syncing client back into state for chat with guid %@", buf, 0xCu);
              }
            }

            v88 = +[IMDChatRegistry sharedInstance];
            v89 = [v88 existingChatWithGUID:v86];

            v90 = +[IMDChatRegistry sharedInstance];
            [v90 updateStateForChat:v89 forcePost:1 shouldRebuildFailedMessageDate:0 setUnreadCountToZero:a7];
          }

          v83 = [v112 countByEnumeratingWithState:&v121 objects:v138 count:16];
        }

        while (v83);
      }
    }

    goto LABEL_120;
  }

  v135 = 0u;
  v136 = 0u;
  v133 = 0u;
  v134 = 0u;
  v17 = v110;
  v18 = [v17 countByEnumeratingWithState:&v133 objects:v147 count:16];
  if (v18)
  {
    v19 = *v134;
    while (2)
    {
      for (k = 0; k != v18; k = k + 1)
      {
        if (*v134 != v19)
        {
          objc_enumerationMutation(v17);
        }

        v21 = *(*(&v133 + 1) + 8 * k);
        v22 = +[IMDServiceController sharedController];
        v23 = [v22 serviceWithName:v21];

        LOBYTE(v22) = [v23 supportsDatabase];
        if (v22)
        {

          goto LABEL_22;
        }
      }

      v18 = [v17 countByEnumeratingWithState:&v133 objects:v147 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }
  }

  v13 = v105;
  if (IMOSLoggingEnabled())
  {
    v24 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v142 = v17;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Read receipts are not supported for services: %@", buf, 0xCu);
    }

LABEL_132:
    v13 = v105;
  }

LABEL_133:
}

uint64_t sub_100004FB8()
{
  v1 = sub_1000334C8(&qword_10008A3F0, &unk_10005E230);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100005060()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000050A0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000050DC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100005114()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

__n128 sub_100005158(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_100005168()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000051D4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100005214()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000524C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100005284()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000052BC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100005308()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000534C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000539C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1000074AC(uint64_t a1)
{
  v2 = +[IMDReplayController sharedInstance];
  [v2 restoreDefaultStoreControllerInstance];

  v3 = +[NSFileManager defaultManager];
  v4 = [*(a1 + 32) stringByAppendingString:@"-wal"];
  [v3 removeItemAtPath:v4 error:0];

  v5 = +[NSFileManager defaultManager];
  v6 = [*(a1 + 32) stringByAppendingString:@"-shm"];
  [v5 removeItemAtPath:v6 error:0];

  v7 = +[NSFileManager defaultManager];
  [v7 removeItemAtPath:*(a1 + 32) error:0];
}

void sub_1000086EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = IMLogHandleForCategory();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100053920(a1, v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = [*(a1 + 32) count];
    v7 = 134217984;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Deleted %lu attachments from indexes", &v7, 0xCu);
  }
}

void sub_100008CAC()
{
  if (qword_10008B7B0 != -1)
  {
    sub_1000539C0();
  }
}

void sub_100008CD8(id a1)
{
  global_queue = dispatch_get_global_queue(0, 0);
  for (i = 0; i != 7; ++i)
  {
    v3 = dword_10005E148[i];
    qword_10008B7B8 = dispatch_source_create(&_dispatch_source_type_signal, v3, 0, global_queue);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100008DE4;
    handler[3] = &unk_100081828;
    v6 = v3;
    dispatch_source_set_event_handler(qword_10008B7B8, handler);
    v4 = qword_10008B7B8;
    qword_10008B6C0[i] = qword_10008B7B8;
    dispatch_resume(v4);
    signal(v3, 1);
  }
}

void sub_100008DE4(uint64_t a1)
{
  v1 = *(a1 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008ED0;
  block[3] = &unk_100081828;
  v3 = v1;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100008E5C(int a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008ED0;
  block[3] = &unk_100081828;
  v2 = a1;
  dispatch_async(&_dispatch_main_q, block);
}

void (__cdecl *sub_100008ED0(void (__cdecl *result)(int)))(int)
{
  v1 = *(result + 8);
  if (v1 > 14)
  {
    if (v1 == 31)
    {
      _IMLog();
      v2 = _IMSyncLoggingSettings();

      return _MarcoSyncLoggingsPreferences(v2);
    }

    if (v1 != 15)
    {
      return result;
    }

LABEL_15:
    _IMLog();
    [+[NSNotificationCenter defaultCenter](NSNotificationCenter __mainThreadPostNotificationName:"__mainThreadPostNotificationName:object:" object:@"IMDaemonShutdownNotification", 0];
    _IMLog();
    exit(0);
  }

  if (v1 == 13)
  {

    return signal(2, sub_100008E5C);
  }

  if (v1 == 1 || v1 == 3)
  {
    goto LABEL_15;
  }

  return result;
}

void sub_100009C00(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x100009BC4);
  }

  _Unwind_Resume(a1);
}

void sub_10000BF60(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) containsIndex:{objc_msgSend(v3, "messagePartIndex")}])
  {
    v4 = [v3 messagePartBody];

    if (v4)
    {
      v5 = +[IMDDatabase database];
      v6 = [v3 messagePartBody];
      v7 = [*(a1 + 40) guid];
      [v5 storeRecoverableMessagePartWithBody:v6 forMessageWithGUID:v7 deleteDate:*(a1 + 48)];
    }

    else if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Recently Deleted | Mardid: deleting message part: found no message-part body-text to store for recovery", v9, 2u);
      }
    }
  }
}

void sub_10000CD8C(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v5 count]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      v11 = 0;
      do
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * v11);
        v13 = +[IMDChatRegistry sharedInstance];
        v14 = [v13 existingChatWithGUID:v12];

        v15 = [v14 lastMessage];
        if (v15)
        {
          [v6 setObject:v15 forKeyedSubscript:v12];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v16 = [v6 copy];
  [*(a1 + 32) setObject:v16 forKeyedSubscript:v4];
}

void sub_10000D634(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _chatDictionariesWithLastMessageRecordDateFromDictionaries:a2];
  (*(*(a1 + 40) + 16))();
}

void sub_10000D86C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000D910;
  v5[3] = &unk_1000818C8;
  v5[4] = v3;
  v6 = *(a1 + 48);
  [v3 _loadChats:a2 context:v4 completionHandler:v5];
}

void sub_10000D910(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _chatDictionariesWithLastUnreadMessageRecordDateFromDictionaries:a2];
  (*(*(a1 + 40) + 16))();
}

void sub_10000DC68(uint64_t a1, void *a2)
{
  v3 = [a2 firstObject];
  if (v3)
  {
    v5 = v3;
    v4 = [v3 date];
    [*(a1 + 32) setObject:v4 forKeyedSubscript:@"lastMessageRecordDateForQuery"];

    v3 = v5;
  }
}

void sub_10000DF44(uint64_t a1, void *a2)
{
  v3 = [a2 firstObject];
  if (v3)
  {
    v5 = v3;
    v4 = [v3 date];
    [*(a1 + 32) setObject:v4 forKeyedSubscript:@"lastMessageRecordDateForQuery"];

    v3 = v5;
  }
}

void sub_10000ED4C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 ID];
  [v2 addObject:v3];
}

BOOL sub_10000F3A0(id a1, id a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

uint64_t sub_100010F54(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, a2);
  }

  return result;
}

void sub_100011198(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v19 = a2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Requery result %ld", buf, 0xCu);
    }
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011354;
  block[3] = &unk_1000819D0;
  v13 = v5;
  v7 = *(a1 + 32);
  v17 = a2;
  v8 = *(a1 + 40);
  v16 = *(a1 + 64);
  *&v9 = *(a1 + 48);
  *(&v9 + 1) = *(a1 + 56);
  *&v10 = v7;
  *(&v10 + 1) = v8;
  v14 = v10;
  v15 = v9;
  v11 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

id sub_100011354(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(a1 + 40) setSpamModelMetadata:?];
    v2 = +[IMDMessageStore sharedInstance];
    v3 = [v2 storeMessage:*(a1 + 40) forceReplace:1 modifyError:0 modifyFlags:0 flagMask:0];
  }

  if (*(a1 + 80) == 2)
  {
    v4 = +[IMDSpamFilteringHelper sharedHelper];
    [v4 presentDebugUI];

    v5 = +[IMDSpamFilteringHelper sharedHelper];
    v6 = [*(a1 + 48) serviceName];
    [v5 recordJunkMetricsForSpamDetectionSource:1 service:v6];

    [*(a1 + 48) setSpamDetectionSource:1];
    v7 = *(a1 + 48);
    v8 = [*(a1 + 40) guid];
    [v7 setSpamDetectedMessage:v8];

    [*(a1 + 48) updateIsFiltered:2];
    v9 = *(*(a1 + 72) + 16);

    return v9();
  }

  else
  {
    [*(a1 + 56) removeFirstObject];
    v12 = *(a1 + 48);
    v11 = *(a1 + 56);
    v13 = *(a1 + 64);
    v14 = *(a1 + 72);

    return [v13 handleTrustKitDecisioningForItems:v11 chat:v12 reply:v14];
  }
}

void sub_100013E6C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x100013E2CLL);
  }

  _Unwind_Resume(a1);
}

void sub_1000147E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100014800(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = [a3 objectForKeyedSubscript:IMClientSetupContextNumberOfChatsToLoad];
  v7 = [v6 integerValue];

  if (v7 >= 1)
  {
    *(*(*(a1 + 32) + 8) + 24) = v7;
    *a4 = 1;
  }
}

uint64_t sub_10001493C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 objectForKeyedSubscript:IMClientSetupContextPinnedChatIdentifiers];
  if (v4)
  {
    [*(a1 + 32) addObjectsFromArray:v4];
  }

  return _objc_release_x1();
}

void sub_1000155CC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    v5 = +[IMDClientRequestContext currentContext];
    v4 = [v5 replyProxy];
    [v4 markedAsReadForMessageGUID:*(a1 + 40) success:a2 queryID:*(a1 + 32)];
  }
}

void sub_100016F28(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x100016E8CLL);
  }

  _Unwind_Resume(a1);
}

void sub_100017370(uint64_t a1, void *a2)
{
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Finished downloading attachment batch.", buf, 2u);
    }
  }

  v5 = [*(a1 + 32) _broadcastedUncachedAttachmentCountForChatWithGUID:*(a1 + 40) chatIdentifiers:*(a1 + 48) services:*(a1 + 56) broadcaster:*(a1 + 64)];
  v6 = [*(*(a1 + 32) + 8) objectForKey:*(a1 + 72)];
  v7 = [v6 intValue];

  v8 = v7;
  v9 = *(a1 + 80);
  if (v5 == v7)
  {
    ++v9;
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_14;
    }

    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [NSNumber numberWithUnsignedInteger:v5];
      v12 = [NSNumber numberWithUnsignedInteger:*(a1 + 80)];
      v13 = [NSNumber numberWithUnsignedInteger:v9];
      v14 = *(a1 + 72);
      *buf = 138413058;
      v54 = v11;
      v55 = 2112;
      v56 = v12;
      v57 = 2112;
      v58 = v13;
      v59 = 2112;
      v60 = v14;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Purged count did not change and is still %@, changing retry count from %@ to %@ for key %@", buf, 0x2Au);
    }
  }

  else
  {
    v15 = *(*(a1 + 32) + 8);
    v16 = [NSNumber numberWithUnsignedInteger:v5];
    [v15 setObject:v16 forKey:*(a1 + 72)];

    if (!IMOSLoggingEnabled())
    {
      goto LABEL_14;
    }

    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v17 = [NSNumber numberWithUnsignedInteger:v8];
      v18 = [NSNumber numberWithUnsignedInteger:v5];
      v19 = *(a1 + 72);
      *buf = 138412802;
      v54 = v17;
      v55 = 2112;
      v56 = v18;
      v57 = 2112;
      v58 = v19;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Purged count changed from %@ to %@ for key %@", buf, 0x20u);
    }
  }

LABEL_14:
  v20 = +[IMDBroadcastController sharedProvider];
  v21 = [v20 broadcasterForChatListeners];
  [v21 downloadedPurgedAssetBatchForChatIDs:*(a1 + 48) completedTransferGUIDs:v3];

  if (((v5 != 0) & [*(a1 + 32) _shouldContinueDownloadingPurgedAttachments:v9]) == 1)
  {
    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = *(a1 + 48);
        v24 = [NSNumber numberWithUnsignedChar:*(a1 + 88)];
        v25 = *(a1 + 56);
        v26 = *(a1 + 40);
        *buf = 138413058;
        v54 = v23;
        v55 = 2112;
        v56 = v24;
        v57 = 2112;
        v58 = v25;
        v59 = 2112;
        v60 = v26;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Detected more purged attachments, downloading next batch for chatIdentifiers %@ style %@ services %@ chat guid %@.", buf, 0x2Au);
      }
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100017A3C;
    block[3] = &unk_100081A98;
    v46 = *(a1 + 32);
    v27 = *(a1 + 48);
    v52 = *(a1 + 88);
    v28 = *(a1 + 56);
    v29 = *(a1 + 40);
    *&v30 = v28;
    *(&v30 + 1) = v29;
    *&v31 = v46;
    *(&v31 + 1) = v27;
    v48 = v31;
    v49 = v30;
    v51 = v9;
    v50 = *(a1 + 64);
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    if (v5 && IMOSLoggingEnabled())
    {
      v32 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v33 = [NSNumber numberWithUnsignedInteger:v9];
        v34 = *(a1 + 48);
        v35 = [NSNumber numberWithUnsignedChar:*(a1 + 88)];
        v36 = *(a1 + 56);
        v37 = *(a1 + 40);
        *buf = 138413314;
        v54 = v33;
        v55 = 2112;
        v56 = v34;
        v57 = 2112;
        v58 = v35;
        v59 = 2112;
        v60 = v36;
        v61 = 2112;
        v62 = v37;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "Detected more purged attachments but not downloading next batch becaused reached max retry count %@ for chatIdentifiers %@ style %@ services %@ chat guid %@.", buf, 0x34u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v38 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v39 = *(a1 + 48);
        *buf = 138412290;
        v54 = v39;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "No more attachments to download, downloading completed for chatIDs: %@", buf, 0xCu);
      }
    }

    v40 = +[IMDChatUtilities sharedUtilities];
    v41 = [v40 currentlyDownloadingSet];
    v42 = (a1 + 48);
    v43 = [IMDChatUtilities _stringForChatIDs:*(a1 + 48) onServices:*(a1 + 56)];
    [v41 removeObject:v43];

    [*(*(a1 + 32) + 8) removeObjectForKey:*(a1 + 72)];
    v44 = +[IMDBroadcastController sharedProvider];
    v45 = [v44 broadcasterForChatListeners];
    [v45 finishedDownloadingPurgedAssetsForChatIDs:*v42];
  }
}

void sub_1000179C0(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1000176F8);
  }

  _Unwind_Resume(a1);
}

void sub_100017E00(uint64_t a1, void *a2)
{
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Replying with groupIDsToGroupPhotos dictionary: %@", &v6, 0xCu);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void sub_10001C8E8(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001C9D8;
  block[3] = &unk_100081B48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  *&v7 = v2;
  *(&v7 + 1) = v3;
  v9 = v7;
  v10 = v6;
  v11 = *(a1 + 64);
  dispatch_async(&_dispatch_main_q, block);
}

id sub_10001C9D8(uint64_t a1)
{
  v2 = IMDaemonLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) guid];
    v4 = [*(a1 + 40) displayName];
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Sending message: %@ in main queue with session: %@", &v6, 0x16u);
  }

  return [*(a1 + 40) sendMessage:*(a1 + 32) toChatID:*(a1 + 48) identifier:*(a1 + 56) style:*(a1 + 64)];
}

void sub_10001F27C(id a1)
{
  v1 = objc_alloc_init(IMDChatUtilities);
  v2 = qword_10008B7E0;
  qword_10008B7E0 = v1;

  v3 = objc_alloc_init(NSMutableSet);
  [qword_10008B7E0 setCurrentlyDownloadingSet:v3];
}

void sub_10001F524(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v32 = a3;
  v33 = v5;
  v34 = v6;
  if (![v5 count])
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_51;
    }

    v30 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "No items to store, ignoring", buf, 2u);
    }

LABEL_41:

    goto LABEL_51;
  }

  if (![v6 length])
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_51;
    }

    v30 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "No chat GUID to store in, ignoring", buf, 2u);
    }

    goto LABEL_41;
  }

  v7 = +[IMDChatRegistry sharedInstance];
  v35 = [v7 existingChatWithGUID:v6];

  v8 = IMOSLoggingEnabled();
  if (v35)
  {
    if (v8)
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v42 = v5;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "= Starting to store items: %@", buf, 0xCu);
      }
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v10 = v5;
    v11 = 0;
    v12 = [v10 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v12)
    {
      v13 = *v37;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v37 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v36 + 1) + 8 * i);
          v16 = +[IMDMessageStore sharedInstance];
          v17 = [v15 guid];
          v18 = [v16 itemWithGUID:v17];

          v19 = +[IMDMessageStore sharedInstance];
          v20 = [v19 storeItem:v15 forceReplace:0];

          if (!v20)
          {
            if (!IMOSLoggingEnabled())
            {
              goto LABEL_31;
            }

            v23 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v42 = 0;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, " Skipped item, didn't store: %@", buf, 0xCu);
            }

            goto LABEL_30;
          }

          if (v11 || (v11 = objc_alloc_init(NSMutableArray)) != 0)
          {
            CFArrayAppendValue(v11, v20);
          }

          if (!v18)
          {
            if (IMOSLoggingEnabled())
            {
              v21 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                v42 = v20;
                v43 = 2112;
                v44 = v35;
                _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "  Assocating item: %@ to chat: %@", buf, 0x16u);
              }
            }

            v22 = +[IMDChatRegistry sharedInstance];
            [v22 addItem:v20 toChat:v35];
          }

          if (IMOSLoggingEnabled())
          {
            v23 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v42 = v20;
              v43 = 2112;
              v44 = v35;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, " Stored item: %@   in chat: %@", buf, 0x16u);
            }

LABEL_30:
          }

LABEL_31:
        }

        v12 = [v10 countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v12);
    }

    if (IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "= Done storing items", buf, 2u);
      }
    }

    v25 = +[IMDBroadcastController sharedProvider];
    v26 = [v25 broadcasterForChatListenersUsingBlackholeRegistry:{objc_msgSend(v35, "isBlackholed")}];

    v27 = IMCreateSerializedItemsFromArray();
    v28 = [v35 accountID];
    v29 = [v35 chatIdentifier];
    [v26 account:v28 chat:v29 style:objc_msgSend(v35 messagesUpdated:{"style"), v27}];
  }

  else if (v8)
  {
    v31 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v42 = v5;
      v43 = 2112;
      v44 = v6;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Asked to store chat items: %@   in guid: %@, however chat doesn't exist", buf, 0x16u);
    }
  }

LABEL_51:
}

void _sSo26IMDaemonChatRequestHandlerC7imagentE23markChatsAsReadFiltered5usingySo11NSPredicateC_tF_0(void *a1)
{
  v39 = a1;
  if (IMOSLoggingEnabled())
  {
    v1 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v39;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Marking all as read with chat predicate %@", &buf, 0xCu);
    }
  }

  v2 = objc_alloc_init(NSMutableSet);
  do
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v56 = 0x3032000000;
    v57 = sub_100020538;
    v58 = sub_100020548;
    v59 = 0;
    v3 = +[IMDDatabase synchronousDatabase];
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_100020550;
    v50[3] = &unk_100081B90;
    v50[4] = &buf;
    [v3 fetchUnreadMessageRecordsForChatsFilteredUsingPredicate:v39 limit:50 completionHandler:v50];

    if ([*(*(&buf + 1) + 40) count])
    {
      v4 = [NSMutableArray alloc];
      v5 = [v4 initWithCapacity:{objc_msgSend(*(*(&buf + 1) + 40), "count")}];
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v6 = *(*(&buf + 1) + 40);
      v7 = [v6 countByEnumeratingWithState:&v46 objects:v54 count:16];
      if (v7)
      {
        v8 = *v47;
        do
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v47 != v8)
            {
              objc_enumerationMutation(v6);
            }

            v10 = *(*(&v46 + 1) + 8 * i);
            v11 = [v10 guid];
            [v5 addObject:v11];

            v12 = [v10 chatRecord];
            v13 = [v12 guid];
            [v2 addObject:v13];
          }

          v7 = [v6 countByEnumeratingWithState:&v46 objects:v54 count:16];
        }

        while (v7);
      }

      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *v52 = 138412290;
          v53 = v2;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Marking chats as read %@", v52, 0xCu);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *v52 = 138412290;
          v53 = v5;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "   with messages: %@", v52, 0xCu);
        }
      }

      v16 = +[IMDDatabase synchronousDatabase];
      [v16 markMessageRecordsAsReadWithGUIDs:v5];

      v17 = +[IMDMessageStore sharedInstance];
      [v17 retractPostedNotificationsForMessageGUIDs:v5];

      if (IMOSLoggingEnabled())
      {
        v18 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *v52 = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Reindexing messages as read in spotlight", v52, 2u);
        }
      }

      IMDCoreSpotlightReindexMessagesWhileBlocking();
    }

    else if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *v52 = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "No messages to mark as read", v52, 2u);
      }
    }

    v20 = [*(*(&buf + 1) + 40) count] > 0x31;
    _Block_object_dispose(&buf, 8);
  }

  while (v20);
  if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Deleting orphaned messages", &buf, 2u);
    }
  }

  IMDMessageRecordDeleteOrphanedMessages();
  if ([v2 count])
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = v2;
    v22 = [obj countByEnumeratingWithState:&v42 objects:v51 count:16];
    if (v22)
    {
      v41 = *v43;
      do
      {
        for (j = 0; j != v22; j = j + 1)
        {
          if (*v43 != v41)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v42 + 1) + 8 * j);
          if (IMOSLoggingEnabled())
          {
            v25 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              LODWORD(buf) = 138412290;
              *(&buf + 4) = v24;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Recalculating unread count for chat %@", &buf, 0xCu);
            }
          }

          v26 = +[IMDChatRegistry sharedInstance];
          v27 = [v26 existingChatWithGUID:v24];

          v28 = +[IMDChatRegistry sharedInstance];
          [v28 updateStateForChat:v27 forcePost:1 shouldRebuildFailedMessageDate:1 shouldCalculateUnreadCount:1];

          v29 = [v27 lastMessage];
          if ([v29 isFromMe])
          {
            if (IMOSLoggingEnabled())
            {
              v30 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
              {
                LODWORD(buf) = 138412290;
                *(&buf + 4) = v29;
                _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "Last message for chat was from me, not sending read receipt %@", &buf, 0xCu);
              }
            }
          }

          else
          {
            v31 = [v27 accountID];
            v32 = +[IMDAccountController sharedInstance];
            v33 = [v32 sessionForAccount:v31];

            if (IMOSLoggingEnabled())
            {
              v34 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
              {
                v35 = [v27 lastMessage];
                LODWORD(buf) = 138412290;
                *(&buf + 4) = v35;
                _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "Sending receipt for last message: %@", &buf, 0xCu);
              }
            }

            v36 = [v27 guid];
            v37 = [v27 chatIdentifier];
            [v33 sendReadReceiptForMessage:v29 toChatID:v36 identifier:v37 style:{objc_msgSend(v27, "style")}];
          }
        }

        v22 = [obj countByEnumeratingWithState:&v42 objects:v51 count:16];
      }

      while (v22);
    }
  }

  else
  {
    v38 = +[IMDMessageStore sharedInstance];
    [v38 rebuildUnreadMessageCount];

    obj = +[IMDMessageStore sharedInstance];
    [obj rebuildLastFailedMessageDate];
  }
}

uint64_t sub_100020538(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100020560(void *a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v11 = a1;
  v12 = a3;
  v13 = a4;
  if ([v11 count] && objc_msgSend(v12, "count"))
  {
    if (a2 == 45 && a5)
    {
      v14 = [[NSSet alloc] initWithArray:v11];
      v15 = IMBiomeQueue();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000206D0;
      block[3] = &unk_1000817A0;
      v20 = v14;
      v16 = v14;
      dispatch_async(v15, block);
    }

    v17 = IMCreateItemsFromSerializedArray();
    v18 = [v17 arrayByApplyingSelector:"guid"];
    sub_100003D50(v11, a2, v12, v18, a5, 0, a6);
  }
}

void sub_1000206D0(uint64_t a1)
{
  v2 = +[BMStreams readMessageStream];
  v3 = [v2 source];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = [[BMReadMessageEvent alloc] initWithIDSHandle:v8];
        [v3 sendEvent:v9];
        if (IMOSLoggingEnabled())
        {
          v10 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v16 = v8;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Donating Read Message Event to Stream for %@", buf, 0xCu);
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v17 count:16];
    }

    while (v5);
  }
}

void sub_10002255C(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = @"NO";
      if (v3)
      {
        v6 = @"YES";
      }

      v7 = 138412546;
      v8 = v6;
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Chat zone created %@ error %@", &v7, 0x16u);
    }
  }
}

void sub_100022918(id a1, IMDChat *a2, BOOL *a3)
{
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [(IMDChat *)v3 guid];
      v6 = 138412546;
      v7 = v5;
      v8 = 1024;
      v9 = [(IMDChat *)v3 cloudKitSyncState];
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Marking existing chat %@ as needing sync from state %d", &v6, 0x12u);
    }
  }

  [(IMDChat *)v3 resetCKSyncState];
}

void sub_100022B88(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = @"NO";
      if (v3)
      {
        v6 = @"YES";
      }

      v7 = 138412546;
      v8 = v6;
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Attachment zone created %@ error %@", &v7, 0x16u);
    }
  }
}

void sub_100023260(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = @"NO";
      if (v3)
      {
        v6 = @"YES";
      }

      v8 = 138412546;
      v9 = v6;
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Write Exit Record with success:%@, error:%@", &v8, 0x16u);
    }
  }

  if (v3)
  {
    v7 = +[IMDCKUtilities sharedInstance];
    [v7 evalToggleiCloudSettingsSwitch];
  }
}

void sub_10002343C(id a1, NSDate *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = 138412546;
      v8 = v4;
      v9 = 2112;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Fetched Exit record date:%@, error:%@", &v7, 0x16u);
    }
  }
}

void sub_1000235E8(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = @"NO";
      if (v3)
      {
        v6 = @"YES";
      }

      v8 = 138412546;
      v9 = v6;
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Deleted exit record with success:%@, error:%@", &v8, 0x16u);
    }
  }

  if (v3)
  {
    v7 = +[IMDCKUtilities sharedInstance];
    [v7 evalToggleiCloudSettingsSwitch];
  }
}

uint64_t sub_100024034(uint64_t a1)
{
  v2 = +[IMDCKUtilities sharedInstance];
  [v2 currentStorageOnDevice];

  result = *(a1 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_100024100(id a1, unint64_t a2, NSString *a3, NSError *a4)
{
  v6 = a4;
  v7 = a3;
  v9 = +[IMDBroadcastController sharedProvider];
  v8 = [v9 broadcasterForAccountListeners];
  [v8 didPerformAdditionalStorageRequiredCheckWithSuccess:v6 == 0 additionalStorageRequired:a2 forAccountId:v7 error:v6];
}

void sub_1000244A8(id a1, BOOL a2, BOOL a3)
{
  v3 = a3;
  v4 = a2;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = @"NO";
      if (v4)
      {
        v7 = @"YES";
      }

      else
      {
        v7 = @"NO";
      }

      if (v3)
      {
        v6 = @"YES";
      }

      v8 = 138412546;
      v9 = v7;
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "current cloudkit ramp state featurePromoted(%@) fetchHadServerError(%@)", &v8, 0x16u);
    }
  }
}

void sub_10002496C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1000248FCLL);
  }

  _Unwind_Resume(a1);
}

void sub_1000249F0(id a1, int64_t a2, NSError *a3)
{
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = NSStringFromIMDCKBackupControllerResult();
      v7 = [(NSError *)v4 localizedDescription];
      v10 = 138412546;
      v11 = v6;
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Attempt to disable iCloud backups result: %@, error: %@", &v10, 0x16u);
    }
  }

  v8 = +[IMDBroadcastController sharedProvider];
  v9 = [v8 broadcasterForAllListeners];
  [v9 didAttemptToDisableiCloudBackups:a2 error:v4];
}

void sub_10002577C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = @"NO";
      if (a2)
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      if (a3)
      {
        v7 = @"YES";
      }

      v12 = 138412546;
      v13 = v8;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Fetched cloudkit ramp state featurePromoted(%@) fetchHadServerError(%@)", &v12, 0x16u);
    }
  }

  v9 = [*(a1 + 32) rampStateDictionaryFromPromoted:a2 featureHadServerError:a3];
  v10 = +[IMDBroadcastController sharedProvider];
  v11 = [v10 broadcasterForAllListeners];
  [v11 didFetchRampState:v9];
}

uint64_t sub_100028FC8(uint64_t result)
{
  if ((*(*(result + 32) + 40) & 1) == 0)
  {
    v1 = result;
    if (IMOSLoggingEnabled())
    {
      v2 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        v3 = *(v1 + 32);
        v4 = 138412290;
        v5 = v3;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "IMDaemonMIGInterface auth port died: %@", &v4, 0xCu);
      }
    }

    exit(-1);
  }

  return result;
}

void sub_1000290A8(id a1, OS_xpc_object *a2, OS_xpc_object *a3)
{
  type = xpc_get_type(a3);
  if (type == &_xpc_type_error)
  {
    if (a3 != &_xpc_error_connection_invalid)
    {
      if (a3 == &_xpc_error_connection_interrupted)
      {
        if (!IMOSLoggingEnabled())
        {
          return;
        }

        v8 = OSLogHandleForIMFoundationCategory();
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          return;
        }

        LODWORD(v14) = 67109120;
        HIDWORD(v14) = xpc_connection_get_pid(a2);
        v9 = "peer(%d) received XPC_ERROR_CONNECTION_INTERRUPTED";
      }

      else
      {
        if (a3 != &_xpc_error_termination_imminent)
        {
          return;
        }

        if (!IMOSLoggingEnabled())
        {
          return;
        }

        v8 = OSLogHandleForIMFoundationCategory();
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          return;
        }

        LODWORD(v14) = 67109120;
        HIDWORD(v14) = xpc_connection_get_pid(a2);
        v9 = "peer(%d) received XPC_ERROR_TERMINATION_IMMINENT";
      }

      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, v9, &v14, 8u);
      return;
    }

    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        LODWORD(v14) = 67109120;
        HIDWORD(v14) = xpc_connection_get_pid(a2);
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "peer(%d) received XPC_ERROR_CONNECTION_INVALID", &v14, 8u);
      }
    }

    v12 = im_local_object_from_connection();
    v13 = v12;
    if (v12)
    {
      [v12 _portDidBecomeInvalid];
    }

    xpc_connection_cancel(a2);
  }

  else if (type == &_xpc_type_dictionary)
  {
    v14 = _NSConcreteStackBlock;
    *&v15 = 3221225472;
    if (xpc_dictionary_get_BOOL(a3, "setup-request"))
    {
      *(&v15 + 1) = sub_100029598;
      v16 = &unk_100081F00;
      v17 = a3;
      v18 = a2;
    }

    else
    {
      *(&v15 + 1) = sub_100029A70;
      v16 = &unk_100081F28;
      v17 = a2;
      v18 = a3;
      v19 = a3;
    }

    v10 = dispatch_block_create(0, &v14);
    sub_1000299CC(v10);
  }

  else
  {
    v6 = xpc_copy_description(a3);
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        LODWORD(v14) = 67109378;
        HIDWORD(v14) = xpc_connection_get_pid(a2);
        LOWORD(v15) = 2080;
        *(&v15 + 2) = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "received unknown from peer(%d): %s", &v14, 0x12u);
      }
    }

    free(v6);
  }
}

void sub_100029598(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Incoming peer auth grant request", buf, 2u);
    }
  }

  v3 = [+[IMDaemonMIGInterface sharedInstance](IMDaemonMIGInterface delegate];
  v4 = *(a1 + 32);
  v5 = IMGetXPCStringFromDictionary();
  v6 = *(a1 + 32);
  v7 = IMGetXPCDictionaryFromDictionary();
  v8 = xpc_dictionary_get_BOOL(*(a1 + 32), "plugin-request");
  *buf = 0;
  v21 = buf;
  v22 = 0x3052000000;
  v23 = sub_100029998;
  v24 = sub_1000299A8;
  v25 = 0;
  v9 = *(a1 + 40);
  xpc_connection_get_audit_token();
  pid = xpc_connection_get_pid(*(a1 + 40));
  if (v3 && *(a1 + 40))
  {
    v11 = +[IMDaemonMIGInterface sharedInstance];
    v12 = *(a1 + 40);
    memset(v26, 0, 32);
    if (v8)
    {
      v13 = [(IMDaemonMIGInterfaceDelegate *)v3 daemonInterface:v11 shouldGrantPlugInAccessForPID:pid auditToken:v26 portName:v5 listenerConnection:v12 setupInfo:v7 setupResponse:v21 + 40];
    }

    else
    {
      v13 = [(IMDaemonMIGInterfaceDelegate *)v3 daemonInterface:v11 shouldGrantAccessForPID:pid auditToken:v26 portName:v5 listenerConnection:v12 setupInfo:v7 setupResponse:v21 + 40];
    }

    v14 = v13;
  }

  else
  {
    v14 = 1;
  }

  v15 = +[IMRGLog registration];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *v26 = 138412802;
    *&v26[4] = v5;
    *&v26[12] = 1024;
    *&v26[14] = pid;
    *&v26[18] = 1024;
    *&v26[20] = v14;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Port name request for: %@ from pid: %d granted: %{BOOL}d", v26, 0x18u);
  }

  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = @"NO";
      *v26 = 138412802;
      *&v26[4] = v5;
      if (v14)
      {
        v17 = @"YES";
      }

      *&v26[12] = 1024;
      *&v26[14] = pid;
      *&v26[18] = 2112;
      *&v26[20] = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Port name request for: %@ from pid: %d granted: %@", v26, 0x1Cu);
    }
  }

  reply = xpc_dictionary_create_reply(*(a1 + 32));
  v19 = reply;
  if (reply)
  {
    xpc_dictionary_set_value(reply, "response", *(v21 + 5));
    xpc_connection_send_message(*(a1 + 40), v19);
    xpc_release(v19);
  }

  im_dispatch_after();
  _Block_object_dispose(buf, 8);
}

void sub_1000299B4(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 40);
  if (v1)
  {
    xpc_release(v1);
  }
}

uint64_t sub_1000299CC(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  pthread_main_thread_np();
  pthread_dependency_init_np();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100029C0C;
  v3[3] = &unk_100081F50;
  v3[4] = a1;
  v3[5] = v4;
  dispatch_async(&_dispatch_main_q, v3);
  return pthread_dependency_wait_np();
}

void sub_100029A70(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = im_local_object_from_connection();
  [objc_msgSend(v3 "protocolChecker")];
  v4 = *(a1 + 40);
  [v3 allowlistedClasses];
  v5 = IMCreateInvocationFromXPCObjectWithProtocol();
  if (v5)
  {
    v6 = v5;
    [v3 _enqueueInvocationWithSync:v5 xpcMessage:*(a1 + 48)];
  }

  else
  {
    if (xpc_dictionary_get_dictionary(*(a1 + 40), "invocation"))
    {
      v7 = _CFXPCCreateCFObjectFromXPCMessage();
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && ([v7 count] < 2 ? (v8 = 0) : (v8 = objc_msgSend(v7, "objectAtIndexedSubscript:", 1)), objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v6 = [[NSString alloc] initWithData:v8 encoding:4];
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_100053C38(v6, v9);
    }

    [NSException exceptionWithName:NSGenericException reason:[NSString stringWithFormat:@"Could not create NSInvocation matching XPC request object. Selector %@ not found in XPC interface." userInfo:v6], 0];
    IMLogSimulateCrashForException();
  }
}

uint64_t sub_100029C0C(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(a1 + 40);

  return _pthread_dependency_fulfill_np(v2, 0);
}

void sub_100029F74(id a1)
{
  qword_10008B808 = objc_alloc_init(IMDaemonCloudKitManager);

  _objc_release_x1();
}

void sub_10002A2E0(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  state = xpc_activity_get_state(v2);
  if (state == 2)
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = @"YES";
        if (!v2)
        {
          v9 = @"NO";
        }

        v15 = 138412290;
        v16 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Got called to sync during backup with non null activity %@", &v15, 0xCu);
      }
    }

    v10 = +[IMDCKUtilities sharedInstance];
    v11 = [v10 cloudKitSyncingEnabled];

    if (v11)
    {
      if (!xpc_activity_set_state(v2, 4) && IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          LOWORD(v15) = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "We did not set the state of xpc_activity from core duet to continue successfully syncing during backup", &v15, 2u);
        }
      }

      v13 = +[IMDCKSyncController sharedInstance];
      [v13 beginPeriodicSyncWithActivity:v2];
    }

    else if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Ignoring activity request to sync during backup, as syncing is disabled", &v15, 2u);
      }
    }
  }

  else if (!state)
  {
    v4 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v4, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
    xpc_dictionary_set_BOOL(v4, XPC_ACTIVITY_USER_REQUESTED_BACKUP_TASK, 1);
    xpc_dictionary_set_BOOL(v4, XPC_ACTIVITY_ALLOW_BATTERY, 1);
    xpc_dictionary_set_BOOL(v4, XPC_ACTIVITY_REPEATING, 1);
    v5 = xpc_activity_copy_criteria(v2);
    v6 = v5;
    if (!v5 || !xpc_equal(v5, v4))
    {
      xpc_activity_set_criteria(v2, v4);
    }

    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Got called to sync during backup in check in state", &v15, 2u);
      }
    }
  }
}

void sub_10002A950(uint64_t a1, void *a2)
{
  v3 = a2;
  state = xpc_activity_get_state(v3);
  if (state == 2)
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = @"YES";
        if (!v3)
        {
          v10 = @"NO";
        }

        v19 = 138412290;
        v20 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Got called to sync message in run state with non null activity %@", &v19, 0xCu);
      }
    }

    v11 = +[IMDCKUtilities sharedInstance];
    v12 = [v11 cloudKitSyncingEnabled];

    if (v12)
    {
      v13 = +[NSDate date];
      IMSetDomainValueForKey();

      v14 = +[IMMetricsCollector sharedInstance];
      [v14 trackEvent:IMMetricsCollectorEventCKCalledByCoreduetForPeriodicSync];

      v15 = +[IMLogDump sharedInstance];
      [v15 dumpMOCLoggingMetaData];

      if (!xpc_activity_set_state(v3, 4) && IMOSLoggingEnabled())
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          LOWORD(v19) = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "We did not set the state of xpc_activity from core duet to continue successfully for message syncing", &v19, 2u);
        }
      }

      v17 = +[IMDCKSyncController sharedInstance];
      [v17 beginPeriodicSyncWithActivity:v3];
    }

    else if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Ignoring activity request to sync messages, as syncing is disabled", &v19, 2u);
      }
    }
  }

  else if (!state)
  {
    v5 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v5, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
    xpc_dictionary_set_int64(v5, XPC_ACTIVITY_INTERVAL, *(a1 + 40));
    xpc_dictionary_set_int64(v5, XPC_ACTIVITY_DELAY, [*(a1 + 32) _messageSyncingDelayBagValue]);
    xpc_dictionary_set_int64(v5, XPC_ACTIVITY_GRACE_PERIOD, 43200);
    xpc_dictionary_set_BOOL(v5, XPC_ACTIVITY_REPEATING, 1);
    xpc_dictionary_set_BOOL(v5, XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY, 1);
    xpc_dictionary_set_BOOL(v5, XPC_ACTIVITY_REQUIRE_SCREEN_SLEEP, 1);
    xpc_dictionary_set_BOOL(v5, XPC_ACTIVITY_ALLOW_BATTERY, 0);
    xpc_dictionary_set_BOOL(v5, XPC_ACTIVITY_REQUIRE_SIGNIFICANT_USER_INACTIVITY, 0);
    xpc_dictionary_set_BOOL(v5, XPC_ACTIVITY_REQUIRES_CLASS_C, 1);
    v6 = xpc_activity_copy_criteria(v3);
    v7 = v6;
    if (!v6 || !xpc_equal(v6, v5))
    {
      xpc_activity_set_criteria(v3, v5);
    }

    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Got called to sync message in check in state", &v19, 2u);
      }
    }
  }
}

void sub_10002AFE0(uint64_t a1, void *a2)
{
  v3 = a2;
  state = xpc_activity_get_state(v3);
  if (state == 2)
  {
    +[IMDCKUtilities calculateAndSaveAliasesToDefaults];
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = @"YES";
        if (!v3)
        {
          v10 = @"NO";
        }

        v11 = 138412290;
        v12 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Got called to backup active aliases with activity %@", &v11, 0xCu);
      }
    }
  }

  else if (!state)
  {
    v5 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v5, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
    xpc_dictionary_set_int64(v5, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_1_DAY);
    xpc_dictionary_set_int64(v5, XPC_ACTIVITY_DELAY, [*(a1 + 32) _messageSyncingDelayBagValue]);
    xpc_dictionary_set_BOOL(v5, XPC_ACTIVITY_REPEATING, 1);
    xpc_dictionary_set_BOOL(v5, XPC_ACTIVITY_ALLOW_BATTERY, 1);
    v6 = xpc_activity_copy_criteria(v3);
    v7 = v6;
    if (!v6 || !xpc_equal(v6, v5))
    {
      xpc_activity_set_criteria(v3, v5);
    }

    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        LOWORD(v11) = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Got called to backup active aliases in check in state", &v11, 2u);
      }
    }
  }
}

void sub_10002B37C(uint64_t a1, void *a2)
{
  v3 = a2;
  state = xpc_activity_get_state(v3);
  if (state == 2)
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = @"YES";
        if (!v3)
        {
          v10 = @"NO";
        }

        *buf = 138412290;
        v18 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Got called to update attachment file sizes with non null activity %@", buf, 0xCu);
      }
    }

    v11 = +[IMDCKUtilities sharedInstance];
    v12 = [v11 cloudKitSyncingEnabled];

    if (v12)
    {
      if (!xpc_activity_set_state(v3, 4) && IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "We did not set the state of xpc_activity from core duet to continue successfully for attachment file size updating", buf, 2u);
        }
      }

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10002B764;
      block[3] = &unk_1000817A0;
      v16 = v3;
      dispatch_async(&_dispatch_main_q, block);
    }

    else if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Ignoring activity request to update attachment file sizes, as syncing is disabled", buf, 2u);
      }
    }
  }

  else if (!state)
  {
    v5 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v5, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
    xpc_dictionary_set_int64(v5, XPC_ACTIVITY_INTERVAL, *(a1 + 32));
    xpc_dictionary_set_BOOL(v5, XPC_ACTIVITY_ALLOW_BATTERY, 0);
    xpc_dictionary_set_BOOL(v5, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 0);
    xpc_dictionary_set_BOOL(v5, XPC_ACTIVITY_REPEATING, 1);
    xpc_dictionary_set_BOOL(v5, XPC_ACTIVITY_REQUIRE_SIGNIFICANT_USER_INACTIVITY, 0);
    xpc_dictionary_set_BOOL(v5, XPC_ACTIVITY_REQUIRES_CLASS_C, 1);
    xpc_dictionary_set_BOOL(v5, XPC_ACTIVITY_REQUIRE_SCREEN_SLEEP, 1);
    v6 = xpc_activity_copy_criteria(v3);
    v7 = v6;
    if (!v6 || !xpc_equal(v6, v5))
    {
      xpc_activity_set_criteria(v3, v5);
    }

    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Got called to update attachment file sizes in check in state", buf, 2u);
      }
    }
  }
}

void sub_10002B764(uint64_t a1)
{
  v2 = +[IMDCKCacheDeleteManager sharedInstance];
  [v2 updateAttachmentFileSizesWithActivity:*(a1 + 32)];
}

void sub_10002B8FC(uint64_t a1, void *a2)
{
  v3 = a2;
  state = xpc_activity_get_state(v3);
  if (state == 2)
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = @"YES";
        if (!v3)
        {
          v10 = @"NO";
        }

        *buf = 138412290;
        v14 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Got called to log CK metrics in run state with non null activity %@", buf, 0xCu);
      }
    }

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10002BB9C;
    v11[3] = &unk_100082048;
    v11[4] = *(a1 + 32);
    v12 = v3;
    dispatch_async(&_dispatch_main_q, v11);
  }

  else if (!state)
  {
    v5 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v5, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
    xpc_dictionary_set_int64(v5, XPC_ACTIVITY_INTERVAL, *(a1 + 40));
    xpc_dictionary_set_BOOL(v5, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 1);
    xpc_dictionary_set_BOOL(v5, XPC_ACTIVITY_ALLOW_BATTERY, 1);
    xpc_dictionary_set_BOOL(v5, XPC_ACTIVITY_REPEATING, 1);
    v6 = xpc_activity_copy_criteria(v3);
    v7 = v6;
    if (!v6 || !xpc_equal(v6, v5))
    {
      xpc_activity_set_criteria(v3, v5);
    }

    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Got called to log CK metrics in state", buf, 2u);
      }
    }
  }
}

void sub_10002BB9C(uint64_t a1)
{
  [*(a1 + 32) uploadDailyAnalyticstoCloudKit];
  v2 = xpc_activity_set_state(*(a1 + 40), 5);
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = [NSNumber numberWithBool:v2];
      v5 = 138412290;
      v6 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Set log CK metrics activity %@", &v5, 0xCu);
    }
  }
}

void sub_10002CD10(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) historyQuery:*(a1 + 40) chatID:*(a1 + 48) services:*(a1 + 56) finishedWithResult:v5 limit:*(a1 + 72)];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 40);
      v9 = *(a1 + 64);
      v10 = 138412546;
      v11 = v8;
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "   Results of query %@ broadcast to %@", &v10, 0x16u);
    }
  }
}

void sub_10002D364(uint64_t a1, void *a2, void *a3, char a4, char a5)
{
  v9 = a2;
  v10 = a3;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v14 = [v9 count];
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Paged history serializedMessages count: %lu", buf, 0xCu);
    }
  }

  BYTE1(v12) = a5;
  LOBYTE(v12) = a4;
  [*(a1 + 32) pagedHistoryQuery:*(a1 + 40) chatID:*(a1 + 48) services:*(a1 + 56) numberOfMessagesBefore:*(a1 + 64) numberOfMessagesAfter:*(a1 + 72) finishedWithResult:v9 hasMessagesBefore:v12 hasMessagesAfter:?];
}

void sub_10002EB98(uint64_t a1, uint64_t a2)
{
  if ([*(a1 + 32) length] && (*(a1 + 64) & 1) == 0)
  {
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v7 = *(a1 + 48);
    v6 = *(a1 + 56);
    v8 = [NSNumber numberWithUnsignedInteger:a2];
    [v4 markAsSpamQuery:v5 chatID:v7 services:v6 finishedWithResult:v8];
  }
}

void sub_10002F46C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x10002F3D4);
  }

  _Unwind_Resume(a1);
}

BOOL sub_10002FBE8(id a1, IMItem *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (([(IMItem *)v2 isSticker]& 1) != 0 || ([(IMItem *)v2 isMessageAcknowledgment]& 1) != 0)
    {
      v3 = 1;
    }

    else
    {
      v3 = [(IMItem *)v2 isCustomAcknowledgment];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_10003043C(void *a1, uint64_t a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v6 = [NSNumber numberWithUnsignedInteger:a2];
  [v2 uncachedAttachmentCountQuery:v3 chatID:v4 services:v5 finishedWithResult:v6];
}

void sub_100030EFC(uint64_t a1, void *a2)
{
  v41 = a2;
  v2 = +[IMDChatRegistry sharedInstance];
  v42 = [v2 existingChatWithGUID:v41];

  if (v42)
  {
    if (+[IMGenerativeModelsAvailabilityProvider messageSummarizationEnabled])
    {
      v54 = IMChatPropertyChatSummaryDictionary;
      v3 = +[NSNull null];
      v55 = v3;
      v4 = [NSDictionary dictionaryWithObjects:&v55 forKeys:&v54 count:1];
      [v42 updateProperties:v4];
    }

    v5 = +[IMDChatVocabularyUpdater sharedInstance];
    [v5 updateVocabularyForDeletedChat:v42 completionHandler:0];

    [*(a1 + 32) _updateLastMessageTimeStampForChat:v42];
    if ([v42 isBusinessChat])
    {
      v6 = [v42 style] == 45;
    }

    else
    {
      v6 = 1;
    }

    v43 = +[NSMutableSet set];
    v8 = objc_alloc_init(NSMutableArray);
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v9 = [v42 participants];
    v10 = [v9 countByEnumeratingWithState:&v44 objects:v53 count:16];
    if (v10)
    {
      v11 = *v45;
      do
      {
        v12 = 0;
        do
        {
          if (*v45 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v44 + 1) + 8 * v12);
          if (v6)
          {
            v14 = [*(*(&v44 + 1) + 8 * v12) ID];
            [v43 addObject:v14];
          }

          v15 = +[IMDChatRegistry sharedInstance];
          v16 = [v15 removeIMDHandleFromRegistry:v13];

          if (v16)
          {
            v17 = [v13 ID];
            [v8 addObject:v17];
          }

          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v9 countByEnumeratingWithState:&v44 objects:v53 count:16];
      }

      while (v10);
    }

    v18 = +[IMDNicknameController sharedInstance];
    [v18 cleanUpNicknameForIDs:v8];

    if ([v43 count])
    {
      v19 = +[IMSafetyMonitorCoordinator sharedCoordinator];
      v20 = [v43 allObjects];
      [v19 informOfDeletedConversationWithReceiverHandles:v20];
    }

    v21 = [v42 serviceName];
    v22 = [v21 isEqualToString:IMServiceNameSMS];
    v23 = 48;
    if (v22)
    {
      v23 = 40;
    }

    v24 = *(a1 + v23);

    if (v24)
    {
      v51[0] = IMDCommandChatGUIDKey;
      v39 = [v24 service];
      v25 = [v39 internalName];
      v26 = IMLegacyServiceGUIDFromChatGUID();
      v52[0] = v26;
      v51[1] = IMDCommandChatParticipantsKey;
      v27 = [v42 participantHandles];
      v52[1] = v27;
      v51[2] = IMDChatWasReportedAsJunkKey;
      v28 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v42 wasReportedAsJunk]);
      v52[2] = v28;
      v51[3] = IMDDeleteCommandDeleteIncomingMessagesKey;
      v29 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v42 isDeletingIncomingMessages]);
      v52[3] = v29;
      v30 = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:4];
      v31 = [v30 mutableCopy];

      v32 = [v42 groupID];
      v33 = [v32 length] == 0;

      if (v33)
      {
        v36 = IMLogHandleForCategory();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          sub_100053CC4();
        }

        if ([v42 style] == 43)
        {
          [v42 forceAutoBugCaptureForMissingGroupIDWithMessage:@"No group ID was provided to move messages to recently deleted: _groupID: "];
        }
      }

      else
      {
        v34 = [v42 groupID];
        [v31 setObject:v34 forKeyedSubscript:IMDCommandChatGroupIDKey];
      }

      v48 = v31;
      v49[0] = IMDRecoverableDeleteCommandChatMetadataArrayKey;
      v37 = [NSArray arrayWithObjects:&v48 count:1];
      v50[0] = v37;
      v50[1] = &__kCFBooleanFalse;
      v49[1] = IMDDeleteCommandIsPermanentDeleteKey;
      v49[2] = IMDDeleteCommandRecoverableDeleteDateKey;
      v50[2] = *(a1 + 56);
      v38 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:3];

      [v24 sendDeleteCommand:v38 forChatGUID:v41];
    }

    else if (IMOSLoggingEnabled())
    {
      v35 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "Recently Deleted | IMDaemon_Chat skipping sendDeleteCommand: no session found.", buf, 2u);
      }
    }

    [v24 willMoveChatToRecentlyDeleted:v42];
  }

  else if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v57 = v41;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Recently Deleted | IMDaemon_Chat skipping: chat not found for guid: %@", buf, 0xCu);
    }
  }
}

void sub_100031874(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IMDChatRegistry sharedInstance];
  v5 = [v4 existingChatWithGUID:v3];

  [*(a1 + 32) _updateLastMessageTimeStampForChat:v5];
  if (v5)
  {
    v6 = [v5 serviceName];
    v7 = [v6 isEqualToString:IMServiceNameSMS];

    if (v7)
    {
      IMGreenTeaMessageDeleteLog();
    }

    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v28 = v5;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Removing chat from registry: %@", buf, 0xCu);
      }
    }

    v9 = [v5 serviceName];
    v10 = [v9 isEqualToString:IMServiceNameSMS];
    v11 = 48;
    if (v10)
    {
      v11 = 40;
    }

    v12 = *(a1 + v11);

    v26[0] = v3;
    v25[0] = IMDCommandChatGUIDKey;
    v25[1] = IMDCommandChatParticipantsKey;
    v13 = [v5 participantHandles];
    v26[1] = v13;
    v14 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:2];
    v15 = [v14 mutableCopy];

    v16 = [v5 groupID];
    LOBYTE(v14) = [v16 length] == 0;

    if (v14)
    {
      v19 = IMLogHandleForCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_100053CC4();
      }

      if ([v5 style] == 43)
      {
        [v5 forceAutoBugCaptureForMissingGroupIDWithMessage:@"No group ID was provided to recover messages: _groupID: "];
      }
    }

    else
    {
      v17 = [v5 groupID];
      [v15 setObject:v17 forKeyedSubscript:IMDCommandChatGroupIDKey];
    }

    v22 = v15;
    v23 = IMDRecoverCommandChatMetadataArrayKey;
    v20 = [NSArray arrayWithObjects:&v22 count:1];
    v24 = v20;
    v21 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    [v12 sendRecoverCommand:v21 forChatGUID:v3];
  }

  else if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v28 = v3;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Recently Deleted | IMDaemon_Chat skipping: chat not found for guid: %@", buf, 0xCu);
    }
  }
}

void sub_100031EE0(id a1, NSString *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  v5 = +[IMDChatRegistry sharedInstance];
  v6 = [v5 existingChatWithGUID:v4];

  if (v6)
  {
    v7 = [v6 serviceName];
    v8 = [v7 isEqualToString:IMServiceNameSMS];

    if (v8)
    {
      IMGreenTeaMessageDeleteLog();
    }

    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v36 = v6;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Sending live sync delete command for chat: %@", buf, 0xCu);
      }
    }

    v10 = [v6 serviceName];
    v11 = [v10 isEqualToString:IMServiceNameSMS];
    v12 = &IMServiceNameiMessage;
    if (v11)
    {
      v12 = &IMServiceNameSMS;
    }

    v29 = *v12;

    v13 = +[IMDAccountController sharedInstance];
    v14 = [v13 anySessionForServiceName:v29];

    if (v14)
    {
      v33[0] = IMDCommandChatGUIDKey;
      v15 = [v14 service];
      v16 = [v15 internalName];
      v17 = IMLegacyServiceGUIDFromChatGUID();
      v34[0] = v17;
      v33[1] = IMDCommandChatParticipantsKey;
      v18 = [v6 participantHandles];
      v34[1] = v18;
      v33[2] = IMDChatWasReportedAsJunkKey;
      v19 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v6 wasReportedAsJunk]);
      v34[2] = v19;
      v20 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:3];
      v21 = [v20 mutableCopy];

      v22 = [v6 groupID];
      LOBYTE(v20) = [v22 length] == 0;

      if (v20)
      {
        v26 = IMLogHandleForCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          sub_100053CC4();
        }

        if ([v6 style] == 43)
        {
          [v6 forceAutoBugCaptureForMissingGroupIDWithMessage:{@"No group ID was provided to pemanent delete messages, _groupID: "}];
        }
      }

      else
      {
        v23 = [v6 groupID];
        [v21 setObject:v23 forKeyedSubscript:IMDCommandChatGroupIDKey];
      }

      v30 = v21;
      v31[0] = IMDPermanentDeleteCommandChatMetadataArrayKey;
      v27 = [NSArray arrayWithObjects:&v30 count:1, v29];
      v31[1] = IMDDeleteCommandIsPermanentDeleteKey;
      v32[0] = v27;
      v32[1] = &__kCFBooleanTrue;
      v28 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:2];

      [v14 sendDeleteCommand:v28 forChatGUID:v4];
    }

    else if (IMOSLoggingEnabled())
    {
      v25 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v36 = v29;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Recently Deleted | IMDaemon_Chat skipping sendDeleteCommand: no session found for: %@", buf, 0xCu);
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v24 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v36 = v4;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Recently Deleted | IMDaemon_Chat skipping: chat not found for guid: %@", buf, 0xCu);
    }
  }
}

void sub_1000323A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IMDClientRequestContext currentContext];
  v5 = [v4 replyProxy];

  [v5 permanentlyDeletedMessagesInChatsWithDeletedChatGUIDs:v3 queryID:*(a1 + 32)];
  v6 = +[IMDBroadcastController sharedProvider];
  v7 = [v6 broadcasterForChatListeners];

  [v7 permanentlyDeletedMessagesInChatsWithDeletedChatGUIDs:v3];
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Recently Deleted | Finished permanently deleting messages in recently deleted for the given chats.", v9, 2u);
    }
  }
}

void sub_100032804(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t sub_10003282C()
{
  v1 = sub_100054094();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v0[5] = sub_100053E74();
  v0[6] = sub_100053E64();
  sub_100054214();
  v5 = sub_1000541E4();
  v0[7] = v5;
  v0[8] = v4;

  return _swift_task_switch(sub_100032920, v5, v4);
}

uint64_t sub_100032920()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = sub_100002F40();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_100054074();
  v6 = sub_100054274();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Loading accounts", v7, 2u);
  }

  v9 = v0[3];
  v8 = v0[4];
  v10 = v0[2];

  (*(v9 + 8))(v8, v10);
  v11 = [objc_opt_self() sharedInstance];
  if (!v11)
  {
    __break(1u);
    goto LABEL_9;
  }

  v12 = v11;
  [v11 load];

  v13 = [objc_opt_self() standardControls];
  if (!v13)
  {
LABEL_9:
    __break(1u);
    return withCheckedContinuation<A>(isolation:function:_:)();
  }

  v14 = v13;
  v15 = v0[5];
  [v13 updateAccountActivation];

  v0[9] = sub_100053E64();
  v16 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v17 = swift_task_alloc();
  v0[10] = v17;
  *v17 = v0;
  v17[1] = sub_100032B44;

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_100032B44()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v7 = *v0;

  v4 = *(v1 + 64);
  v5 = *(v1 + 56);

  return _swift_task_switch(sub_100032C88, v5, v4);
}

uint64_t sub_100032C88()
{
  v1 = v0[6];
  v2 = v0[4];

  v3 = v0[1];

  return v3();
}

void sub_100032CF4(uint64_t a1)
{
  v2 = sub_1000334C8(&qword_10008A3F0, &unk_10005E230);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = aBlock - v5;
  v7 = [objc_opt_self() sharedInstance];
  (*(v3 + 16))(v6, a1, v2);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v6, v2);
  aBlock[4] = sub_100033510;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100033228;
  aBlock[3] = &unk_1000823B0;
  v10 = _Block_copy(aBlock);

  [v7 loadChatsWithCompletionBlock:v10];
  _Block_release(v10);
}

void sub_100032EC8(uint64_t a1)
{
  v26[1] = a1;
  v1 = sub_100054094();
  v2 = *(v1 - 8);
  v3 = v2[8];
  v4 = __chkstk_darwin(v1);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v26 - v7;
  v9 = sub_100002F40();
  v10 = v2[2];
  v10(v8, v9, v1);
  v11 = sub_100054074();
  v12 = sub_100054274();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Loading transfers", v13, 2u);
  }

  v14 = v2[1];
  v14(v8, v1);

  v10(v6, v9, v1);
  v15 = sub_100054074();
  v16 = sub_100054274();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Kicking off auto reconnect", v17, 2u);
  }

  v14(v6, v1);
  v18 = [objc_opt_self() sharedInstance];
  if (!v18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v19 = v18;
  v20 = [v18 activeSessions];

  if (v20)
  {
    sub_10003357C();
    v21 = sub_1000541B4();

    if (v21 >> 62)
    {
      v22 = sub_1000543B4();
      if (v22)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v22)
      {
LABEL_9:
        if (v22 >= 1)
        {
          for (i = 0; i != v22; ++i)
          {
            if ((v21 & 0xC000000000000001) != 0)
            {
              v24 = sub_100054344();
            }

            else
            {
              v24 = *(v21 + 8 * i + 32);
            }

            v25 = v24;
            [v24 autoReconnect];
          }

          goto LABEL_16;
        }

        __break(1u);
        goto LABEL_18;
      }
    }

LABEL_16:

    sub_1000334C8(&qword_10008A3F0, &unk_10005E230);
    sub_1000541F4();
    return;
  }

LABEL_19:
  __break(1u);
}

uint64_t sub_100033228(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_10003329C()
{
  v2 = *(**v0 + 80);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000333B0;

  return v6();
}

uint64_t sub_1000333B0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000334C8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void sub_100033510()
{
  v1 = *(sub_1000334C8(&qword_10008A3F0, &unk_10005E230) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_100032EC8(v2);
}

unint64_t sub_10003357C()
{
  result = qword_10008AF30;
  if (!qword_10008AF30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10008AF30);
  }

  return result;
}

uint64_t sub_1000335C8()
{
  v0 = sub_100054094();
  sub_10003398C(v0, qword_10008B6F8);
  sub_100002F64(v0, qword_10008B6F8);
  sub_100054064();
  return sub_100054084();
}

uint64_t sub_10003362C()
{
  v0 = sub_100054094();
  sub_10003398C(v0, qword_10008B710);
  sub_100002F64(v0, qword_10008B710);
  sub_100054064();
  return sub_100054084();
}

uint64_t sub_1000336BC()
{
  v0 = sub_100054094();
  sub_10003398C(v0, qword_10008B728);
  sub_100002F64(v0, qword_10008B728);
  sub_100054064();
  return sub_100054084();
}

uint64_t sub_10003374C()
{
  v0 = sub_100054094();
  sub_10003398C(v0, qword_10008B740);
  sub_100002F64(v0, qword_10008B740);
  sub_100054064();
  return sub_100054084();
}

uint64_t sub_1000337DC()
{
  v0 = sub_100054094();
  sub_10003398C(v0, qword_10008B758);
  sub_100002F64(v0, qword_10008B758);
  sub_100054064();
  return sub_100054084();
}

uint64_t sub_10003386C()
{
  v0 = sub_100054094();
  sub_10003398C(v0, qword_10008B770);
  sub_100002F64(v0, qword_10008B770);
  sub_100054064();
  return sub_100054084();
}

uint64_t sub_1000338FC()
{
  v0 = sub_100054094();
  sub_10003398C(v0, qword_10008B788);
  sub_100002F64(v0, qword_10008B788);
  sub_100054064();
  return sub_100054084();
}

uint64_t *sub_10003398C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_1000339F0()
{
  v1 = OBJC_IVAR____TtC7imagent23ChatCountRequestHandler_requiredCapabilities;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_100033A34(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7imagent23ChatCountRequestHandler_requiredCapabilities;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_100033AE8(uint64_t (*a1)(id))
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 unreadMessagesCount];

  return a1(v3);
}

void sub_100033BE8(void (*a1)(id))
{
  v2 = sub_100054154();
  v3 = sub_100054154();
  v4 = IMGetDomainBoolForKeyWithDefaultValue();

  if (v4)
  {
    a1(0);
  }

  else
  {
    v5 = [objc_opt_self() sharedInstance];
    v6 = [v5 unreadCountController];

    if (v6)
    {
      v7 = [v6 fullReplacementDelta];
    }

    else
    {
      v7 = 0;
    }

    a1(v7);
  }
}

id sub_100033E54()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ChatCountRequestHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

BOOL sub_100033F38(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_100033F68@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_100033F94@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_100034080@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1000343CC(a1);

  *a2 = v3;
  return result;
}

void type metadata accessor for MessagesClientCapabilities()
{
  if (!qword_10008A488)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_10008A488);
    }
  }
}

void *sub_100034140@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_10003422C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MessagesClientCapabilities();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100034270(uint64_t a1)
{
  v2 = sub_100054154();
  v3 = sub_100054154();
  v4 = IMGetDomainBoolForKeyWithDefaultValue();

  if (v4)
  {
    v5 = *(a1 + 16);

    v5(a1, 0);
  }

  else
  {
    v6 = [objc_opt_self() sharedInstance];
    v7 = [v6 unreadCountController];

    if (v7)
    {
      v8 = [v7 fullReplacementDelta];
    }

    else
    {
      v8 = 0;
    }

    (*(a1 + 16))(a1, v8);
  }
}

uint64_t sub_1000343CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_10003445C()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  return swift_unknownObjectRetain();
}

uint64_t sub_1000344F4(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_100034644(char a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

void *sub_100034718()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void sub_1000347B4(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t sub_10003484C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_1000348B0()
{
  swift_beginAccess();
  v1 = *(v0 + 240);
  v2 = v1;
  return v1;
}

void sub_1000348F4(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 240);
  *(v1 + 240) = a1;
}

uint64_t sub_1000349E4(uint64_t a1)
{
  swift_beginAccess();
  sub_100034A34(a1, v1 + 248);
  return swift_endAccess();
}

uint64_t sub_100034A34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000334C8(&qword_10008A4B0, &qword_10005E4C8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *sub_100034B38()
{
  swift_beginAccess();
  v1 = *(v0 + 288);
  v2 = v1;
  return v1;
}

void sub_100034BD4(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 288);
  *(v1 + 288) = a1;
}

uint64_t sub_100034C6C(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  v12 = swift_allocObject();
  sub_100034CEC(a1, a2, a3, a4, a5, a6);
  return v12;
}

id sub_100034CEC(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  v7 = v6;
  v55 = a6;
  v13 = sub_100054094();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v54 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v49 - v18;
  *(v7 + 240) = 0u;
  v20 = (v7 + 240);
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 256) = 0u;
  *(v7 + 272) = 0u;
  *(v7 + 288) = 0;
  v21 = sub_100002F40();
  v56 = v14;
  v57 = v13;
  v22 = *(v14 + 16);
  v52 = v21;
  v53 = v14 + 16;
  v51 = v22;
  (v22)(v19);
  v23 = sub_100054074();
  v24 = sub_100054274();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v50 = a1;
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "imagent launching", v25, 2u);
    a1 = v50;
  }

  v26 = v56 + 8;
  v50 = *(v56 + 8);
  (v50)(v19, v57);
  sub_10003484C(a1, v7 + 40);
  sub_10003484C(a2, v7 + 80);
  sub_10003484C(a3, v7 + 120);
  sub_10003484C(a4, v7 + 160);
  sub_10003484C(a5, v7 + 200);
  result = [objc_opt_self() standardControls];
  if (result)
  {
    v56 = v26;
    v49 = a2;
    *(v7 + 16) = result;
    v28 = [objc_opt_self() sharedFeatureFlags];
    v29 = [v28 isRockNRollEnabled];

    if (v29)
    {
      swift_beginAccess();
      sub_100036A34(v55, v7 + 248);
      swift_endAccess();
      v30 = [objc_opt_self() mainBundle];
      v31 = [v30 bundleIdentifier];

      if (v31)
      {
        sub_100054164();
      }

      v32 = objc_allocWithZone(LNDaemonConnectionListener);
      v33 = sub_100054154();

      v34 = [v32 initWithBundleIdentifier:v33];

      swift_beginAccess();
      v35 = *v20;
      *v20 = v34;
    }

    [objc_opt_self() setSharedDaemon:v7];
    v36 = a1[3];
    v37 = a1[4];
    sub_10003526C(a1, v36);
    v38 = *(v37 + 40);

    v38(v39, v36, v37);

    v40 = a1[3];
    v41 = a1[4];
    sub_10003526C(a1, v40);
    (*(v41 + 24))(v40, v41);
    v42 = v54;
    v51(v54, v52, v57);
    v43 = sub_100054074();
    v44 = sub_100054274();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "imagent daemon init complete", v45, 2u);
    }

    v46 = (v50)(v42, v57);
    (*(*v7 + 328))(v46);
    v47 = a1[3];
    v48 = a1[4];
    sub_10003526C(a1, v47);
    (*(v48 + 32))(v47, v48);
    sub_100036BF0(v55, &qword_10008A4B0, &qword_10005E4C8);
    sub_1000031D0(a5);
    sub_1000031D0(a4);
    sub_1000031D0(a3);
    sub_1000031D0(v49);
    sub_1000031D0(a1);
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_10003526C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

id sub_1000352B0()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v2 = result;
    [result removeListener:v0];

    v3 = *(v0 + 16);
    swift_unknownObjectRelease();

    sub_1000031D0((v0 + 40));
    sub_1000031D0((v0 + 80));
    sub_1000031D0((v0 + 120));
    sub_1000031D0((v0 + 160));
    sub_1000031D0((v0 + 200));

    sub_100036BF0(v0 + 248, &qword_10008A4B0, &qword_10005E4C8);
    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100035370()
{
  sub_1000352B0();

  return _swift_deallocClassInstance(v0, 296, 7);
}

uint64_t sub_1000353A4()
{
  v1 = v0;
  v2 = sub_100054094();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = aBlock - v9;
  if ((*(*v0 + 192))(v8))
  {
    v11 = sub_100002F40();
    (*(v3 + 16))(v7, v11, v2);
    v12 = sub_100054074();
    v13 = sub_100054264();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Attempting to load daemon after setup is complete", v14, 2u);
    }

    (*(v3 + 8))(v7, v2);
  }

  else
  {
    v15 = v0[8];
    v16 = v0[9];
    sub_10003526C(v0 + 5, v15);
    if ((*(v16 + 16))(v15, v16))
    {
      return 1;
    }

    v18 = sub_100002F40();
    (*(v3 + 16))(v10, v18, v2);
    v19 = sub_100054074();
    v20 = sub_100054254();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Device is not yet ready, reattempting load in 15 seconds", v21, 2u);
    }

    (*(v3 + 8))(v10, v2);
    aBlock[4] = sub_100036AA4;
    aBlock[5] = v1;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000356CC;
    aBlock[3] = &unk_100082400;
    v22 = _Block_copy(aBlock);

    im_dispatch_after();
    _Block_release(v22);
  }

  return 0;
}

uint64_t sub_1000356CC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_100035710()
{
  v1 = v0;
  v2 = sub_1000334C8(&unk_10008AD00, &qword_10005E910);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v20 - v4;
  v6 = sub_100054094();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(*v0 + 320))(v9);
  if (result)
  {
    v13 = sub_100002F40();
    (*(v7 + 16))(v11, v13, v6);
    v14 = sub_100054074();
    v15 = sub_100054274();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Load conditions met, bringing up services", v16, 2u);
    }

    (*(v7 + 8))(v11, v6);
    v17 = sub_100054244();
    (*(*(v17 - 8) + 56))(v5, 1, 1, v17);
    sub_100053E74();

    v18 = sub_100053E64();
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = &protocol witness table for MainActor;
    v19[4] = v1;
    sub_1000363C0(0, 0, v5, &unk_10005E4D8, v19);
  }

  return result;
}

uint64_t sub_1000359A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_100053E74();
  v4[3] = sub_100053E64();
  sub_100054214();
  v6 = sub_1000541E4();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_100035A3C, v6, v5);
}

uint64_t sub_100035A3C()
{
  v1 = *(v0 + 16);
  v2 = v1[13];
  v3 = v1[14];
  sub_10003526C(v1 + 10, v2);
  v4 = *(v3 + 8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = sub_100035B64;

  return v8(v2, v3);
}

uint64_t sub_100035B64()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v6 = *v0;

  v3 = *(v1 + 40);
  v4 = *(v1 + 32);

  return _swift_task_switch(sub_100035C84, v4, v3);
}

uint64_t sub_100035C84()
{
  v1 = *(v0 + 16);
  v2 = v1[18];
  v3 = v1[19];
  sub_10003526C(v1 + 15, v2);
  v4 = *(v3 + 8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_100035DAC;

  return v8(v2, v3);
}

uint64_t sub_100035DAC()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v6 = *v0;

  v3 = *(v1 + 40);
  v4 = *(v1 + 32);

  return _swift_task_switch(sub_100035ECC, v4, v3);
}

uint64_t sub_100035ECC()
{
  v1 = *(v0 + 16);
  v2 = v1[23];
  v3 = v1[24];
  sub_10003526C(v1 + 20, v2);
  v4 = *(v3 + 8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_100035FF4;

  return v8(v2, v3);
}

uint64_t sub_100035FF4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = a1;

  v4 = *(v2 + 40);
  v5 = *(v2 + 32);

  return _swift_task_switch(sub_10003611C, v5, v4);
}

uint64_t sub_10003611C()
{
  v1 = v0[9];
  v2 = v0[2];
  v3 = *(*v2 + 296);
  v4 = v1;
  v3(v1);
  v5 = v2[28];
  v6 = v2[29];
  sub_10003526C(v2 + 25, v5);
  v7 = async function pointer to dispatch thunk of ClientConnectionManaging.startAcceptingIncomingConnections()[1];
  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = sub_10003620C;

  return dispatch thunk of ClientConnectionManaging.startAcceptingIncomingConnections()(v5, v6);
}

uint64_t sub_10003620C()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v6 = *v0;

  v3 = *(v1 + 40);
  v4 = *(v1 + 32);

  return _swift_task_switch(sub_10003632C, v4, v3);
}

uint64_t sub_10003632C()
{
  v1 = v0[9];
  v3 = v0[2];
  v2 = v0[3];

  (*(*v3 + 336))(v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000363C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000334C8(&unk_10008AD00, &qword_10005E910);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100036B88(a3, v27 - v11, &unk_10008AD00, &qword_10005E910);
  v13 = sub_100054244();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100036BF0(v12, &unk_10008AD00, &qword_10005E910);
  }

  else
  {
    sub_100054234();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1000541E4();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_100054174() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_100036BF0(a3, &unk_10008AD00, &qword_10005E910);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100036BF0(a3, &unk_10008AD00, &qword_10005E910);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1000366C0()
{
  v1 = v0;
  v2 = sub_100054094();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v0 + 200))(1);
  v7 = v0[8];
  v8 = v0[9];
  sub_10003526C(v0 + 5, v7);
  (*(v8 + 48))(v7, v8);
  v9 = v0[8];
  v10 = v0[9];
  sub_10003526C(v1 + 5, v1[8]);
  (*(v10 + 56))(v9, v10);
  v11 = v0[8];
  v12 = v0[9];
  sub_10003526C(v1 + 5, v1[8]);
  (*(v12 + 64))(v11, v12);
  v13 = sub_100002F40();
  (*(v3 + 16))(v6, v13, v2);
  v14 = sub_100054074();
  v15 = sub_100054274();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Setup complete", v16, 2u);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_100036A34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000334C8(&qword_10008A4B0, &qword_10005E4C8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100036AD0()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000333B0;

  return sub_1000359A4(v3, v4, v5, v2);
}

uint64_t sub_100036B88(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000334C8(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100036BF0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000334C8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100036C50(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100036D48;

  return v7(a1);
}

uint64_t sub_100036D48()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100036E40(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100036FB4;

  return sub_100036C50(a1, v5);
}

uint64_t sub_100036EF8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000333B0;

  return sub_100036C50(a1, v5);
}

id sub_100037080()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ChatInsertMessageRequestHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_1000370D4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000334C8(&qword_10008AF10, qword_10005EA70);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void sub_1000371C8(void *a1, unint64_t a2, unint64_t a3, int a4, uint64_t a5, unint64_t a6)
{
  v57 = a4;
  v58 = a2;
  v10 = sub_100054094();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v56[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __chkstk_darwin(v13);
  v18 = &v56[-v17];
  v19 = __chkstk_darwin(v16);
  v21 = &v56[-v20];
  __chkstk_darwin(v19);
  v23 = &v56[-v22];
  if (a1)
  {
    v24 = HIBYTE(a6) & 0xF;
    if ((a6 & 0x2000000000000000) == 0)
    {
      v24 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (v24)
    {
      if (!a3)
      {
        goto LABEL_17;
      }

      v25 = HIBYTE(a3) & 0xF;
      if ((a3 & 0x2000000000000000) == 0)
      {
        v25 = v58 & 0xFFFFFFFFFFFFLL;
      }

      if (v25)
      {
        v26 = objc_opt_self();
        v27 = a1;
        v28 = [v26 sharedInstance];
        if (v28)
        {
          v29 = v28;
          v30 = sub_100054154();
          v31 = [v29 anySessionForServiceName:v30];

          if (v31)
          {
            v32 = sub_100054154();
            v58 = sub_100054154();
            [v31 didReceiveMessage:v27 forChat:v32 style:v57 fromIDSID:v58];

            v33 = v58;
          }

          else
          {
            v50 = a5;
            v51 = sub_1000337B8();
            (*(v11 + 16))(v23, v51, v10);

            v52 = sub_100054074();
            v53 = sub_100054264();

            if (os_log_type_enabled(v52, v53))
            {
              v54 = swift_slowAlloc();
              v55 = swift_slowAlloc();
              v59 = v55;
              *v54 = 136315138;
              *(v54 + 4) = sub_100002F9C(v50, a6, &v59);
              _os_log_impl(&_mh_execute_header, v52, v53, "No session for serviceName: %s -- can't insert a received message.", v54, 0xCu);
              sub_1000031D0(v55);
            }

            (*(v11 + 8))(v23, v10);
          }
        }

        else
        {
          __break(1u);
        }
      }

      else
      {
LABEL_17:
        v38 = a1;
        v39 = sub_1000337B8();
        v40 = v10;
        (*(v11 + 16))(v21, v39, v10);
        v41 = sub_100054074();
        v42 = sub_100054264();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          *v43 = 0;
          _os_log_impl(&_mh_execute_header, v41, v42, "No chatIdentifier to receive a message to.", v43, 2u);
        }

        (*(v11 + 8))(v21, v40);
      }
    }

    else
    {
      v44 = a1;
      v45 = sub_1000337B8();
      v46 = v10;
      (*(v11 + 16))(v18, v45, v10);
      v47 = sub_100054074();
      v48 = sub_100054264();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&_mh_execute_header, v47, v48, "No serviceName to receive a message from.", v49, 2u);
      }

      (*(v11 + 8))(v18, v46);
    }
  }

  else
  {
    v34 = sub_1000337B8();
    (*(v11 + 16))(v15, v34, v10);
    v35 = sub_100054074();
    v36 = sub_100054264();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "No messageItem to receive.", v37, 2u);
    }

    (*(v11 + 8))(v15, v10);
  }
}

Swift::Void __swiftcall IMDaemonFileTransferRequestHandler.successfullyGeneratedPreview(forTransfer:withPreviewSize:)(Swift::String forTransfer, CGSize withPreviewSize)
{
  height = withPreviewSize.height;
  width = withPreviewSize.width;
  v4 = [objc_opt_self() sharedInstance];
  if (v4)
  {
    v5 = v4;
    v6 = sub_100054154();
    [v5 successfullyGeneratedPreviewForTransfer:v6 withPreviewSize:{width, height}];
  }

  else
  {
    __break(1u);
  }
}

void sub_1000378D0(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [objc_opt_self() sharedInstance];
  if (v4)
  {
    v5 = v4;
    v6 = sub_100054154();
    [v5 *a3];
  }

  else
  {
    __break(1u);
  }
}

void sub_100037978(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = objc_opt_self();
  v9 = a3;
  v7 = [v6 sharedInstance];
  if (v7)
  {
    v8 = v7;
    [v7 *a4];
  }

  else
  {

    __break(1u);
  }
}

void _sSo34IMDaemonFileTransferRequestHandlerC7imagentE04fileC0_22rejectedWithPropertiesySS_SDys11AnyHashableVypGtF_0(uint64_t a1, unint64_t a2)
{
  v4 = sub_100054094();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    v10 = [objc_opt_self() sharedInstance];
    if (v10)
    {
      v11 = v10;
      v12 = sub_100054154();
      isa = sub_100054114().super.isa;
      [v11 _handleFileTransfer:v12 rejectedWithProperties:isa];

      v13 = isa;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v14 = sub_100033968();
    (*(v5 + 16))(v8, v14, v4);
    v15 = sub_100054074();
    v16 = sub_100054264();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Nil guid passed to: fileTransfer:rejectedWithProperties:", v17, 2u);
    }

    (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_100037CE4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = sub_100054094();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002F40();
  (*(v5 + 16))(v8, v9, v4);

  v10 = sub_100054074();
  v11 = sub_100054254();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = *(a1 + 16);

    _os_log_impl(&_mh_execute_header, v10, v11, "Fetched %ld contacts from IMDP", v12, 0xCu);
  }

  else
  {
  }

  (*(v5 + 8))(v8, v4);
  return a2(a1);
}

uint64_t sub_100037E90(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_100038300();
  v3 = sub_100054134();

  v2(v3);
}

void sub_100037FC4(uint64_t a1, uint64_t a2)
{
  sub_100038300();
  isa = sub_100054114().super.isa;
  (*(a2 + 16))(a2, isa);
}

id sub_100038040()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IntentClientRequestHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100038094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100054094();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100002F40();
  (*(v6 + 16))(v9, v10, v5);
  v11 = sub_100054074();
  v12 = sub_100054254();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Requesting contacts for handles", v13, 2u);
  }

  (*(v6 + 8))(v9, v5);
  v14 = [objc_opt_self() synchronousDatabase];
  isa = sub_1000541A4().super.isa;
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  aBlock[4] = sub_10003834C;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100037E90;
  aBlock[3] = &unk_100082578;
  v17 = _Block_copy(aBlock);

  [v14 fetchContactsForIdentifiers:isa completionHandler:v17];
  _Block_release(v17);
  swift_unknownObjectRelease();
}

unint64_t sub_100038300()
{
  result = qword_10008A900;
  if (!qword_10008A900)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10008A900);
  }

  return result;
}

uint64_t sub_100038354@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = ClientRequestHandling<>.client.getter();
  *a2 = result;
  return result;
}

uint64_t sub_100038380(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  v6 = *a1;
  v7 = *a2;

  sub_100002408(v8);
}

id sub_1000383E4()
{
  sub_100038574();
  [*(v0 + 16) registerForInternalCoreTelephonyNotifications];
  v8[4] = sub_100038F68;
  v9 = v0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_1000356CC;
  v8[3] = &unk_1000825C0;
  v1 = _Block_copy(v8);

  IMDSetInconsistencyHandler();
  _Block_release(v1);
  sub_100039248();
  IMRegisterForKeychainNotifications();
  sub_100039ADC();
  v2 = objc_opt_self();
  v3 = [v2 sharedManager];
  [v3 registerForCoreSpotlightMigration];

  v4 = [v2 sharedManager];
  [v4 registerForCoreSpotlightIndexing];

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v6 = result;
    [result deleteReplayDBIfNotUnderFirstUnlock];

    sub_100039FB0();
    v7 = *sub_100048A24();

    sub_100049A68();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100038574()
{
  v1 = sub_100053DF4();
  v34 = *(v1 - 8);
  v35 = v1;
  v2 = *(v34 + 64);
  __chkstk_darwin(v1);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100054094();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  v10 = objc_opt_self();
  [*(v0 + 16) prewarmHSAAuthenticationServer];

  v11 = objc_opt_self();
  sub_100053F34();
  v12 = sub_100053F14();
  v13 = [v11 sharedController];
  sub_100053F24();

  if (IMSharedHelperNickNameEnabled())
  {
  }

  v14 = objc_opt_self();
  v15 = [v14 sharedFeatureFlags];
  v16 = [v15 isAttachmentsPurgeabilityMonitoringEnabled];

  if ((v16 & 1) != 0 || (v17 = [objc_opt_self() sharedInstance]) != 0 && (v18 = v17, v19 = objc_msgSend(v17, "isInternalInstall"), v18, v19))
  {
    v20 = sub_100002F40();
    (*(v6 + 16))(v9, v20, v5);
    v21 = sub_100054074();
    v22 = sub_100054274();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Attachments purgeability monitoring enabled", v23, 2u);
    }

    (*(v6 + 8))(v9, v5);
    v24 = objc_opt_self();
    v25 = [v24 sharedInstance];
    [v25 stopObserving];

    v26 = IMSMSDirectoryURL();
    sub_100053DC4();

    sub_100053DD4(1);
    (*(v34 + 8))(v4, v35);
    v27 = [v24 sharedInstance];
    v28 = sub_100054154();

    [v27 observeChangesInPath:v28];
  }

  v29 = [objc_opt_self() sharedManager];
  [v29 registerServiceCapabilityNotifications];

  v30 = [objc_opt_self() sharedInstance];
  [v30 fetchAllowedChatBotExtensionsIfNecessary];

  v31 = [v14 sharedFeatureFlags];
  v32 = [v31 isMessagesAppDeletionEnabled];

  if (v32)
  {
    v33 = type metadata accessor for ApplicationWorkspaceObserver();
  }
}

void sub_100038CC0(uint64_t a1)
{
  v2 = sub_100054094();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002F40();
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_100054074();
  v9 = sub_100054274();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Told that our state is inconsistent; reloading accounts and forcing clients to reconnect", v10, 2u);
  }

  (*(v3 + 8))(v6, v2);
  v11 = objc_opt_self();
  v12 = [v11 sharedInstance];
  if (!v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v13 = v12;
  [v12 load];

  v14 = [v11 sharedInstance];
  if (!v14)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v15 = v14;
  v16 = [v14 activeSessions];

  if (v16)
  {
    sub_10003AA94(0, &qword_10008AF30, IMDServiceSession_ptr);
    v17 = sub_1000541B4();

    if (v17 >> 62)
    {
      v18 = sub_1000543B4();
      if (v18)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v18)
      {
LABEL_8:
        if (v18 >= 1)
        {
          for (i = 0; i != v18; ++i)
          {
            if ((v17 & 0xC000000000000001) != 0)
            {
              v20 = sub_100054344();
            }

            else
            {
              v20 = *(v17 + 8 * i + 32);
            }

            v21 = v20;
            [v20 autoReconnect];
          }

          goto LABEL_15;
        }

        __break(1u);
        goto LABEL_17;
      }
    }

LABEL_15:

    [*(a1 + 16) postAliveNotification];
    return;
  }

LABEL_19:
  __break(1u);
}

void sub_100038F70()
{
  v0 = [objc_opt_self() sharedInstance];
  if (v0)
  {
    v1 = v0;
    [v0 resumeSyncOnLaunchIfNeeded];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100038FD8()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_100039010()
{
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_allocWithZone(IMDLegacyLaunchAssistant) init];
  return v0;
}

id sub_100039060()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v1 = result;
    v2 = [result systemIsShuttingDown];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100039110(uint64_t a1)
{
  v2 = [objc_opt_self() sharedInstance];
  if (v2)
  {
    v3 = v2;
    [v2 setActive:1];
    [v3 setReceivesMemoryWarnings:1];
    [v3 setWatchesDataProtectionLockState:1];
    [v3 addListener:a1];
  }
}

void sub_1000391D4()
{
  v0 = [objc_opt_self() sharedInstance];
  [v0 broadcastCloudKitStateAfterFetchingAccountStatus];
}

void sub_100039248()
{
  v0 = sub_100054094();
  v1 = *(v0 - 8);
  v2 = v1[8];
  v3 = __chkstk_darwin(v0);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v30 - v6;
  sub_100053FB4();
  sub_100053FA4();
  if (sub_100053F84())
  {
  }

  else
  {
    v34 = v5;
    v8 = sub_100002F40();
    v31 = v1[2];
    v32 = v8;
    v31(v7);
    v9 = sub_100054074();
    v10 = sub_100054254();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Disabling #images before looking in bag", v11, 2u);
    }

    v33 = v1[1];
    v33(v7, v0);
    sub_100053F94();
    v12 = [objc_allocWithZone(NSMutableDictionary) init];
    v13 = MCFeatureBlockedAppBundleIDs;
    sub_1000334C8(&qword_10008AA28, &unk_10005E870);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_10005E810;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 32) = 0xD000000000000026;
    *(v14 + 40) = 0x8000000100064890;
    v15 = v13;
    isa = sub_1000541A4().super.isa;

    [v12 MCSetUnionRestriction:v15 values:isa];

    v17 = [objc_opt_self() sharedConnection];
    if (v17)
    {
      v18 = v17;
      v35 = 0;
      v19 = v12;
      sub_100054124();

      if (v35)
      {
        v20.super.isa = sub_100054114().super.isa;
      }

      else
      {
        v20.super.isa = 0;
      }

      v21 = sub_100054154();
      v22 = sub_100054154();
      v35 = 0;
      v23 = [v18 applyRestrictionDictionary:v20.super.isa clientType:v21 clientUUID:v22 localizedClientDescription:0 localizedWarningMessage:0 outRestrictionChanged:0 outEffectiveSettingsChanged:0 outError:&v35];

      if (v23)
      {
        v24 = v35;
      }

      else
      {
        v25 = v35;
        sub_100053DA4();

        swift_willThrow();
        v26 = v34;
        (v31)(v34, v32, v0);
        v27 = sub_100054074();
        v28 = sub_100054264();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&_mh_execute_header, v27, v28, "Failed to apply restriction to #images", v29, 2u);
        }

        else
        {
        }

        v33(v26, v0);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100039758()
{
  v0 = sub_1000540A4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000540D4();
  v24 = *(v5 - 8);
  v25 = v5;
  v6 = *(v24 + 64);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000540F4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v21 - v15;
  v17 = [objc_opt_self() sharedInstance];
  v18 = [v17 isUnderFirstDataProtectionLock];

  if ((v18 & 1) == 0)
  {
    sub_10003AA94(0, &qword_10008AA18, OS_dispatch_queue_ptr);
    v22 = sub_100054294();
    sub_1000540E4();
    sub_100054104();
    v23 = *(v10 + 8);
    v23(v14, v9);
    aBlock[4] = sub_100038F70;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10003AAE0;
    aBlock[3] = &unk_100082630;
    v19 = _Block_copy(aBlock);
    sub_1000540C4();
    v26 = &_swiftEmptyArrayStorage;
    sub_10003A990();
    sub_1000334C8(&qword_10008AA20, &unk_10005E860);
    sub_10003A9E8();
    sub_1000542F4();
    v20 = v22;
    sub_100054284();
    _Block_release(v19);

    (*(v1 + 8))(v4, v0);
    (*(v24 + 8))(v8, v25);
    v23(v16, v9);
  }
}

void sub_100039ADC()
{
  v0 = sub_100054094();
  v1 = *(v0 - 8);
  v2 = v1[8];
  v3 = __chkstk_darwin(v0);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v37 - v6;
  v8 = sub_100054154();
  v9 = sub_100054154();
  v10 = IMGetDomainBoolForKey();

  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = sub_100054154();
  v12 = sub_100054154();
  v13 = IMGetCachedDomainIntForKeyWithDefaultValue();

  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (HIDWORD(v13))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v14 = sub_100002F40();
  v15 = v1[2];
  v15(v7, v14, v0);
  v16 = sub_100054074();
  v17 = sub_100054264();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v39 = v1;
    v19 = v18;
    v20 = swift_slowAlloc();
    v38 = v15;
    v21 = v20;
    v40 = v20;
    *v19 = 136315394;
    *(v19 + 4) = sub_100002F9C(0xD000000000000010, 0x8000000100064870, &v40);
    *(v19 + 12) = 1024;
    *(v19 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v16, v17, "Simulating a %s hang of %u seconds", v19, 0x12u);
    sub_1000031D0(v21);
    v15 = v38;

    v1 = v39;
  }

  v22 = v1[1];
  v22(v7, v0);
  sleep(v13);
  v15(v5, v14, v0);
  v23 = sub_100054074();
  v24 = sub_100054264();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v40 = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_100002F9C(0xD000000000000010, 0x8000000100064870, &v40);
    _os_log_impl(&_mh_execute_header, v23, v24, "Finished simulating a %s hang", v25, 0xCu);
    sub_1000031D0(v26);
  }

  v22(v5, v0);
LABEL_9:
  v27 = [objc_opt_self() sharedInstance];
  if (!v27)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v28 = v27;
  [v27 recordMetricIsCloudKitEnabled];

  v29 = [objc_opt_self() sharedManager];
  if (!v29)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v30 = v29;
  [v29 registerForCloudKitSyncing];

  v31 = objc_opt_self();
  v32 = [v31 sharedInstance];
  if (!v32)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v33 = v32;
  [v32 registerWithCacheDelete];

  v34 = [v31 sharedInstance];
  if (v34)
  {
    v35 = v34;
    [v34 resetAttachmentWatermark];

    v36 = [objc_opt_self() sharedInstance];
    [v36 fetchAccountStatusAndUpdateMiCSwitchEligibilityIfNeededOnImagentLaunch];

    sub_100039758();
    return;
  }

LABEL_19:
  __break(1u);
}

uint64_t sub_100039FB0()
{
  v0 = sub_100054094();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v19 - v6;
  sub_100054034();
  sub_100054024();
  if ((sub_100053FE4() & 1) == 0)
  {
    v8 = [objc_opt_self() IMReadEnablePreviewTranscodingQualityCarrierValueForPhoneNumber:0 simID:0];
    v9 = sub_100002F40();
    (*(v1 + 16))(v7, v9, v0);
    v10 = sub_100054074();
    v11 = sub_100054274();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 67109120;
      *(v12 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v10, v11, "Setting preview transcoding to %{BOOL}d based on carrier preferences", v12, 8u);
    }

    (*(v1 + 8))(v7, v0);
    sub_100053FC4();
    sub_100053FF4();
  }

  if ((sub_100054004() & 1) == 0)
  {
    v13 = [objc_opt_self() IMReadDisablePreviewTranscodingQualityOnWiFiCarrierValueForPhoneNumber:0 simID:0];
    v14 = sub_100002F40();
    (*(v1 + 16))(v5, v14, v0);
    v15 = sub_100054074();
    v16 = sub_100054274();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 67109120;
      *(v17 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v15, v16, "Setting disable low quality transcode on WiFi to %{BOOL}d based on carrier preferences", v17, 8u);
    }

    (*(v1 + 8))(v5, v0);
    sub_100053FD4();
    sub_100054014();
  }
}

void sub_10003A29C()
{
  v0 = sub_100054094();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v28[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = objc_allocWithZone(NSUserDefaults);
  v6 = sub_100054154();
  v7 = [v5 initWithSuiteName:v6];

  v8 = objc_allocWithZone(NSUserDefaults);
  v9 = sub_100054154();
  v10 = [v8 initWithSuiteName:v9];

  v11 = [objc_opt_self() sharedInstanceForBagType:1];
  v12 = sub_100054154();
  v13 = [v11 objectForKey:v12];

  if (v13)
  {
    sub_1000542D4();
    swift_unknownObjectRelease();
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
  }

  v31[0] = v29;
  v31[1] = v30;
  sub_10003A8B8(v31, &v29);
  if (*(&v30 + 1))
  {
    if ((swift_dynamicCast() & 1) != 0 && (v28[15] & 1) == 0)
    {
      goto LABEL_16;
    }

    if (!v10)
    {
      goto LABEL_13;
    }
  }

  else
  {
    sub_10003A928(&v29);
    if (!v10)
    {
      goto LABEL_13;
    }
  }

  v14 = v10;
  v15 = sub_100054154();
  v16 = [v14 BOOLForKey:v15];

  if (v16 || (v14 = v14, v17 = sub_100054154(), v18 = [v14 BOOLForKey:v17], v17, v14, v18))
  {
    sub_10003A928(v31);

    v19 = 0;
    goto LABEL_19;
  }

LABEL_13:
  if (([objc_opt_self() IMDeviceRegionIsEligibleToBeForcedIntoFilteringUnknownSender] & 1) == 0)
  {
LABEL_16:
    sub_10003A928(v31);

    v19 = 0;
    goto LABEL_19;
  }

  if ([objc_opt_self() IMMessagesFilteringSettingForPreferedSubscription])
  {
    sub_10003A928(v31);

    v19 = 1;
  }

  else
  {
    v20 = [objc_opt_self() sharedInstance];
    if (!v20)
    {
      __break(1u);
      return;
    }

    v21 = v20;
    v19 = [v20 activeAccountsAreEligibleForFilterUnknownSendersByDefault];

    sub_10003A928(v31);
  }

LABEL_19:
  v22 = sub_100002F40();
  (*(v1 + 16))(v4, v22, v0);
  v23 = sub_100054074();
  v24 = sub_100054274();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 67109120;
    *(v25 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v23, v24, "Setting DeviceForcesUnknownFiltering to %{BOOL}d", v25, 8u);
  }

  (*(v1 + 8))(v4, v0);
  if (v7)
  {
    v26 = v7;
    v27 = sub_100054154();
    [v26 setBool:v19 forKey:v27];
  }
}

void sub_10003A720()
{
  v0 = sub_100054094();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100002F40();
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_100054074();
  v7 = sub_100054274();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Setting up location sharing monitoring", v8, 2u);
  }

  (*(v1 + 8))(v4, v0);
}

uint64_t sub_10003A8B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000334C8(&qword_10008AA10, &qword_10005E880);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003A928(uint64_t a1)
{
  v2 = sub_1000334C8(&qword_10008AA10, &qword_10005E880);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10003A990()
{
  result = qword_10008AD10;
  if (!qword_10008AD10)
  {
    sub_1000540A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008AD10);
  }

  return result;
}

unint64_t sub_10003A9E8()
{
  result = qword_10008AD20;
  if (!qword_10008AD20)
  {
    sub_10003AA4C(&qword_10008AA20, &unk_10005E860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008AD20);
  }

  return result;
}

uint64_t sub_10003AA4C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10003AA94(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10003AB80(void *a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5, SEL *a6)
{
  v10 = sub_100054164();
  v12 = v11;
  v13 = a1;
  sub_10003AC64(v10, v12, a4, a5, a6);
}

void sub_10003AC64(uint64_t a1, unint64_t a2, const char *a3, const char *a4, SEL *a5)
{
  v61 = a5;
  v62 = a3;
  v59 = a4;
  v7 = sub_100054094();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v60 = v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v58 = v57 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = v57 - v15;
  __chkstk_darwin(v14);
  v18 = v57 - v17;
  v19 = sub_100002F40();
  v64 = v8;
  v20 = *(v8 + 16);
  (v20)(v18, v19, v7);

  v21 = sub_100054074();
  v22 = sub_100054274();

  v23 = os_log_type_enabled(v21, v22);
  v63 = v19;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v57[0] = v7;
    v25 = a1;
    v26 = v24;
    v27 = v20;
    v28 = swift_slowAlloc();
    v65 = v28;
    *v26 = 136315138;
    *(v26 + 4) = sub_100002F9C(v25, a2, &v65);
    _os_log_impl(&_mh_execute_header, v21, v22, v62, v26, 0xCu);
    sub_1000031D0(v28);
    v20 = v27;
    v29 = v64;

    a1 = v25;
    v7 = v57[0];

    v30 = v29;
    v19 = v63;
  }

  else
  {

    v30 = v64;
  }

  v31 = *(v30 + 8);
  v31(v18, v7);
  v32 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v32 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v32)
  {
    (v20)(v16, v19, v7);

    v33 = sub_100054074();
    v34 = sub_100054274();

    v35 = os_log_type_enabled(v33, v34);
    v57[1] = a1;
    if (v35)
    {
      v36 = swift_slowAlloc();
      v62 = v20;
      v37 = v31;
      v38 = v7;
      v39 = a1;
      v40 = v36;
      v41 = swift_slowAlloc();
      v65 = v41;
      *v40 = 136315138;
      v42 = v39;
      v7 = v38;
      v31 = v37;
      v20 = v62;
      *(v40 + 4) = sub_100002F9C(v42, a2, &v65);
      _os_log_impl(&_mh_execute_header, v33, v34, v59, v40, 0xCu);
      sub_1000031D0(v41);
    }

    v31(v16, v7);
    v43 = [objc_opt_self() sharedAccountController];
    if (!v43)
    {
      __break(1u);
      return;
    }

    v44 = v43;
    v45 = sub_100054154();
    v46 = [v44 anySessionForServiceName:v45];

    if (v46)
    {
      v47 = sub_100054154();
      [v46 *v61];

      return;
    }

    v53 = v58;
    (v20)(v58, v63, v7);
    v54 = sub_100054074();
    v55 = sub_100054264();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&_mh_execute_header, v54, v55, "Could not find session", v56, 2u);
    }

    v52 = v53;
  }

  else
  {
    v48 = v60;
    (v20)(v60, v19, v7);
    v49 = sub_100054074();
    v50 = sub_100054264();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, "No message guid provided", v51, 2u);
    }

    v52 = v48;
  }

  v31(v52, v7);
}

void _sSo26IMDaemonChatRequestHandlerC7imagentE20relayPriorityMessage3forySaySSG_tF_0(uint64_t a1)
{
  v2 = sub_100054094();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = __chkstk_darwin(v2);
  v44 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v40 - v8;
  __chkstk_darwin(v7);
  v11 = &v40 - v10;
  v12 = sub_100002F40();
  v13 = v3[2];
  v13(v11, v12, v2);

  v14 = sub_100054074();
  v15 = sub_100054274();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v42 = v2;
    v17 = v16;
    v18 = swift_slowAlloc();
    v43 = v9;
    v40 = v18;
    v45 = v18;
    *v17 = 136315138;
    v19 = sub_1000541C4();
    v41 = a1;
    v21 = v12;
    v22 = v13;
    v23 = v3;
    v24 = sub_100002F9C(v19, v20, &v45);
    a1 = v41;

    *(v17 + 4) = v24;
    v3 = v23;
    v13 = v22;
    v12 = v21;
    _os_log_impl(&_mh_execute_header, v14, v15, "Request relay messageGUIDs as priority messages: %s", v17, 0xCu);
    sub_1000031D0(v40);
    v9 = v43;

    v2 = v42;
  }

  v25 = v3[1];
  v25(v11, v2);
  if (*(a1 + 16))
  {
    v13(v9, v12, v2);

    v26 = sub_100054074();
    v27 = sub_100054274();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v43 = v9;
      v30 = v29;
      v45 = v29;
      *v28 = 136315138;
      v31 = sub_1000541C4();
      v33 = sub_100002F9C(v31, v32, &v45);

      *(v28 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v26, v27, "Relay priority message to peer devices with %s", v28, 0xCu);
      sub_1000031D0(v30);

      v34 = v43;
    }

    else
    {

      v34 = v9;
    }

    v25(v34, v2);
    v38 = [objc_opt_self() sharedInstance];
    isa = sub_1000541A4().super.isa;
    [v38 relayPriorityMessageFor:isa];
  }

  else
  {
    v13(v44, v12, v2);
    v35 = sub_100054074();
    v36 = sub_100054264();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "No message guids provided", v37, 2u);
    }

    v25(v44, v2);
  }
}

id sub_10003B668()
{
  v0 = [objc_opt_self() sharedManager];

  return v0;
}

uint64_t sub_10003B6A8(uint64_t a1, void (*a2)(_OWORD *))
{
  v5 = (*((swift_isaMask & *v2) + 0x58))();
  v6 = [v5 settingValueForKey:a1];

  if (v6)
  {
    sub_1000542D4();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  a2(v10);
  return sub_10003A928(v10);
}

uint64_t sub_10003B804(void *a1, uint64_t a2)
{
  v5 = (*((swift_isaMask & *v2) + 0x58))();
  sub_10003526C(a1, a1[3]);
  [v5 setSettingValue:sub_100054414() forKey:a2];

  return swift_unknownObjectRelease();
}

uint64_t sub_10003B994(uint64_t a1, void (*a2)(_BYTE *))
{
  v5 = (*((swift_isaMask & *v2) + 0x58))();
  LOBYTE(a1) = [v5 settingExplicitlySetForKey:a1];

  v8 = &type metadata for Bool;
  v7[0] = a1;
  a2(v7);
  return sub_10003A928(v7);
}

id sub_10003BC18()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SyncedSettingsRequestHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10003BC54(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (*((swift_isaMask & *a2) + 0x58))();
  v6 = [v5 settingValueForKey:a1];

  if (v6)
  {
    sub_1000542D4();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17[0] = v15;
  v17[1] = v16;
  sub_10003A8B8(v17, &v15);
  v7 = *(&v16 + 1);
  if (*(&v16 + 1))
  {
    v8 = sub_10003526C(&v15, *(&v16 + 1));
    v9 = *(v7 - 8);
    v10 = *(v9 + 64);
    __chkstk_darwin(v8);
    v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v12);
    v13 = sub_100054414();
    (*(v9 + 8))(v12, v7);
    sub_1000031D0(&v15);
  }

  else
  {
    v13 = 0;
  }

  (*(a3 + 16))(a3, v13);
  swift_unknownObjectRelease();
  return sub_10003A928(v17);
}

uint64_t sub_10003BE28()
{
  v0 = sub_1000334C8(&unk_10008AD00, &qword_10005E910);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v27 - v2;
  v4 = sub_100054094();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = __chkstk_darwin(v4);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v27 - v10;
  v12 = sub_100002F40();
  v13 = v5[2];
  v13(v11, v12, v4);
  v14 = sub_100054074();
  v15 = sub_100054274();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v27 = v3;
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Initializing daemon", v16, 2u);
    v3 = v27;
  }

  v17 = v5[1];
  v17(v11, v4);
  v18 = sub_100054244();
  (*(*(v18 - 8) + 56))(v3, 1, 1, v18);
  sub_100054214();
  v19 = sub_100054204();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = &protocol witness table for MainActor;
  sub_1000363C0(0, 0, v3, &unk_10005E920, v20);

  v21 = objc_autoreleasePoolPush();
  v22 = [objc_opt_self() currentRunLoop];
  [v22 run];

  objc_autoreleasePoolPop(v21);
  v13(v9, v12, v4);
  v23 = sub_100054074();
  v24 = sub_100054254();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 67109120;
    swift_beginAccess();
    *(v25 + 4) = qword_10008B7A0 != 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "Runloop completed with daemon setup %{BOOL}d", v25, 8u);
  }

  return (v17)(v9, v4);
}

void sub_10003C1E0()
{
  [objc_opt_self() logLaunchInfo];
  v0 = [objc_opt_self() sharedInstance];
  if (!v0)
  {
    __break(1u);
LABEL_8:
    exit(0);
  }

  v1 = v0;
  v2 = [v0 systemIsShuttingDown];

  if (v2)
  {
    goto LABEL_8;
  }

  sub_100008CAC();
  IMSetEmbeddedTempDirectory();
  v3 = [objc_opt_self() sharedInstance];
  if (v3)
  {
    v4 = v3;
    [v3 trackEvent:IMMetricsCollectorEventImagentLaunch];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10003C2CC()
{
  sub_100053E74();
  *(v0 + 16) = sub_100053E64();
  sub_100054214();
  v2 = sub_1000541E4();

  return _swift_task_switch(sub_10003C360, v2, v1);
}

void sub_10003C360()
{
  v6 = v0;
  v5 = 0;
  v1 = objc_autoreleasePoolPush();
  sub_10003C3EC(&v5);
  objc_autoreleasePoolPop(v1);
  v2 = v5;
  if (v5)
  {
    v3 = *(v0 + 16);

    v4 = *(v0 + 8);

    v4(v2);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10003C3EC(uint64_t *a1)
{
  sub_1000334C8(&qword_10008AAC0, &qword_10005E948);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10005E900;
  v3 = sub_10003AA94(0, &qword_10008AAC8, off_100080B08);
  v4 = sub_10003D1F8(&qword_10008AAD0, &qword_10008AAC8, off_100080B08);
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  v5 = sub_10003AA94(0, &qword_10008AAD8, off_100080B10);
  v6 = sub_10003D1F8(&qword_10008AAE0, &qword_10008AAD8, off_100080B10);
  *(v2 + 48) = v5;
  *(v2 + 56) = v6;
  v7 = sub_10003AA94(0, &qword_10008AAE8, off_100080B18);
  v8 = sub_10003D1F8(&qword_10008AAF0, &qword_10008AAE8, off_100080B18);
  *(v2 + 64) = v7;
  *(v2 + 72) = v8;
  v9 = sub_10003AA94(0, &qword_10008AAF8, off_100080B20);
  v10 = sub_10003D1F8(&qword_10008AB00, &qword_10008AAF8, off_100080B20);
  *(v2 + 80) = v9;
  *(v2 + 88) = v10;
  v11 = sub_10003AA94(0, &qword_10008AB08, off_100080B28);
  v12 = sub_10003D1F8(&qword_10008AB10, &qword_10008AB08, off_100080B28);
  *(v2 + 96) = v11;
  *(v2 + 104) = v12;
  inserted = type metadata accessor for ChatInsertMessageRequestHandler();
  v14 = sub_10003D23C(&qword_10008AB18, type metadata accessor for ChatInsertMessageRequestHandler);
  *(v2 + 112) = inserted;
  *(v2 + 120) = v14;
  v15 = sub_10003AA94(0, &qword_10008AB20, off_100080B30);
  v16 = sub_10003D1F8(&qword_10008AB28, &qword_10008AB20, off_100080B30);
  *(v2 + 128) = v15;
  *(v2 + 136) = v16;
  v17 = sub_10003AA94(0, &qword_10008AB30, off_100080B38);
  v18 = sub_10003D1F8(&qword_10008AB38, &qword_10008AB30, off_100080B38);
  *(v2 + 144) = v17;
  *(v2 + 152) = v18;
  v19 = sub_10003AA94(0, &qword_10008AB40, off_100080B40);
  v20 = sub_10003D1F8(&qword_10008AB48, &qword_10008AB40, off_100080B40);
  *(v2 + 160) = v19;
  *(v2 + 168) = v20;
  v21 = type metadata accessor for ChatCountRequestHandler();
  v22 = sub_10003D23C(&qword_10008AB50, type metadata accessor for ChatCountRequestHandler);
  *(v2 + 176) = v21;
  *(v2 + 184) = v22;
  v23 = sub_10003AA94(0, &qword_10008AB58, off_100080B48);
  v24 = sub_10003D1F8(&qword_10008AB60, &qword_10008AB58, off_100080B48);
  *(v2 + 192) = v23;
  *(v2 + 200) = v24;
  v25 = sub_10003AA94(0, &qword_10008AB68, off_100080B50);
  v26 = sub_10003D1F8(&qword_10008AB70, &qword_10008AB68, off_100080B50);
  *(v2 + 208) = v25;
  *(v2 + 216) = v26;
  v27 = sub_10003AA94(0, &qword_10008AB78, off_100080B58);
  v28 = sub_10003D1F8(&qword_10008AB80, &qword_10008AB78, off_100080B58);
  *(v2 + 224) = v27;
  *(v2 + 232) = v28;
  v29 = sub_10003AA94(0, &qword_10008AB88, off_100080B60);
  v30 = sub_10003D1F8(&qword_10008AB90, &qword_10008AB88, off_100080B60);
  *(v2 + 240) = v29;
  *(v2 + 248) = v30;
  v31 = sub_10003AA94(0, &qword_10008AB98, off_100080B68);
  v32 = sub_10003D1F8(&qword_10008ABA0, &qword_10008AB98, off_100080B68);
  *(v2 + 256) = v31;
  *(v2 + 264) = v32;
  v33 = sub_10003AA94(0, &qword_10008ABA8, off_100080B70);
  v34 = sub_10003D1F8(&qword_10008ABB0, &qword_10008ABA8, off_100080B70);
  *(v2 + 272) = v33;
  *(v2 + 280) = v34;
  v35 = sub_10003AA94(0, &qword_10008ABB8, off_100080B78);
  v36 = sub_10003D1F8(&qword_10008ABC0, &qword_10008ABB8, off_100080B78);
  *(v2 + 288) = v35;
  *(v2 + 296) = v36;
  v37 = sub_10003AA94(0, &qword_10008ABC8, off_100080B80);
  v38 = sub_10003D1F8(&qword_10008ABD0, &qword_10008ABC8, off_100080B80);
  *(v2 + 304) = v37;
  *(v2 + 312) = v38;
  v39 = sub_10003AA94(0, &qword_10008ABD8, &off_100080B88);
  v40 = sub_10003D1F8(&qword_10008ABE0, &qword_10008ABD8, &off_100080B88);
  *(v2 + 320) = v39;
  *(v2 + 328) = v40;
  v41 = type metadata accessor for SyncedSettingsRequestHandler();
  v42 = sub_10003D23C(&qword_10008ABE8, type metadata accessor for SyncedSettingsRequestHandler);
  *(v2 + 336) = v41;
  *(v2 + 344) = v42;
  v43 = type metadata accessor for IntentClientRequestHandler();
  v44 = sub_10003D23C(&qword_10008ABF0, type metadata accessor for IntentClientRequestHandler);
  *(v2 + 352) = v43;
  *(v2 + 360) = v44;
  v45 = type metadata accessor for PersistentTasksRequestHandler();
  v46 = sub_10003D23C(&qword_10008ABF8, type metadata accessor for PersistentTasksRequestHandler);
  *(v2 + 368) = v45;
  *(v2 + 376) = v46;
  sub_100054164();
  v47 = objc_allocWithZone(sub_100053F54());

  v48 = sub_100053F44();
  sub_1000334C8(&qword_10008AC00, &unk_10005E950);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_10005E810;
  *(v49 + 32) = v48;
  *(v49 + 40) = &protocol witness table for IncomingClientConnectionListener;
  v72 = 0;
  v70 = 0u;
  v71 = 0u;
  v50 = objc_opt_self();
  v51 = v48;
  v52 = [v50 sharedFeatureFlags];
  LODWORD(v50) = [v52 isRockNRollEnabled];

  if (v50)
  {
    v53 = sub_100053F74();
    v54 = sub_100053F64();
    v55 = *(v49 + 16);
    v56 = *(v49 + 24);

    if (v55 >= v56 >> 1)
    {
      v49 = sub_10003D0B4((v56 > 1), v55 + 1, 1, v49);
    }

    *(v49 + 16) = v55 + 1;
    v57 = v49 + 16 * v55;
    *(v57 + 32) = v54;
    *(v57 + 40) = &protocol witness table for IncomingIntentClientConnectionListener;
    sub_100036BF0(&v70, &qword_10008A4B0, &qword_10005E4C8);
    *&v70 = v54;
    *(&v71 + 1) = v53;
    v72 = &protocol witness table for IncomingIntentClientConnectionListener;
  }

  else
  {
  }

  v58 = sub_100053EE4();
  v59 = objc_allocWithZone(v58);
  v60 = sub_100053ED4();
  type metadata accessor for MessagesDaemon();
  v69[3] = type metadata accessor for DaemonLaunchAssistant();
  v69[4] = &off_1000825E8;
  v69[0] = sub_100039010();
  v68[3] = type metadata accessor for ServiceLoader();
  v68[4] = &off_100082DC8;
  v68[0] = sub_10003328C();
  v67[3] = type metadata accessor for AccountLoader();
  v67[4] = &off_100082378;
  v67[0] = sub_10003328C();
  v66[3] = type metadata accessor for PipelineLoader();
  v66[4] = &off_100082DB8;
  v66[0] = sub_10003328C();
  v65[3] = v58;
  v65[4] = &protocol witness table for ClientConnectionManager;
  v65[0] = v60;
  sub_100036B88(&v70, v64, &qword_10008A4B0, &qword_10005E4C8);
  v61 = sub_100034C6C(v69, v68, v67, v66, v65, v64);

  sub_100036BF0(&v70, &qword_10008A4B0, &qword_10005E4C8);
  v62 = *a1;
  *a1 = v61;
}

uint64_t sub_10003CDA8()
{
  v0[5] = sub_100054214();
  v0[6] = sub_100054204();
  v2 = sub_1000541E4();
  v0[7] = v2;
  v0[8] = v1;

  return _swift_task_switch(sub_10003CE40, v2, v1);
}

uint64_t sub_10003CE40()
{
  v1 = *(v0 + 40);
  sub_100053E74();
  *(v0 + 72) = sub_100053E64();
  v3 = sub_1000541E4();

  return _swift_task_switch(sub_10003CED4, v3, v2);
}

uint64_t sub_10003CED4()
{
  v9 = v0;
  v8 = 0;
  v1 = objc_autoreleasePoolPush();
  sub_10003C3EC(&v8);
  objc_autoreleasePoolPop(v1);
  v5 = v8;
  v0[10] = v8;
  if (v5)
  {
    v6 = v0[9];

    v3 = v0[7];
    v4 = v0[8];
    v2 = sub_10003CF64;
  }

  else
  {
    __break(1u);
  }

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_10003CF64()
{
  v1 = v0[10];
  v2 = v0[6];

  swift_beginAccess();
  qword_10008B7A0 = v1;

  v3 = v0[1];

  return v3();
}

uint64_t sub_10003CFF0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000333B0;

  return sub_10003CDA8();
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_autoreleasePoolPush();
  sub_10003C1E0();
  objc_autoreleasePoolPop(v3);
  sub_10003BE28();
  return 0;
}

void *sub_10003D0B4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000334C8(&qword_10008AC00, &unk_10005E950);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000334C8(&qword_10008AC08, &unk_10005E960);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_10003D1F8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10003AA94(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10003D23C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10003D284(char a1)
{
  result = 0x6C7070612E6D6F63;
  switch(a1)
  {
    case 1:
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0xD000000000000019;
      break;
    case 6:
      return result;
    case 7:
    case 8:
      result = 0xD000000000000017;
      break;
    case 9:
      result = 0xD000000000000020;
      break;
    case 10:
      result = 0xD000000000000020;
      break;
    case 11:
      result = 0xD000000000000020;
      break;
    case 12:
      result = 0xD000000000000024;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_10003D3F4(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_10003D284(*a1);
  v5 = v4;
  if (v3 == sub_10003D284(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100054424();
  }

  return v8 & 1;
}

Swift::Int sub_10003D47C()
{
  v1 = *v0;
  sub_100054474();
  sub_10003D284(v1);
  sub_100054184();

  return sub_100054484();
}

uint64_t sub_10003D4E0()
{
  sub_10003D284(*v0);
  sub_100054184();
}

Swift::Int sub_10003D534()
{
  v1 = *v0;
  sub_100054474();
  sub_10003D284(v1);
  sub_100054184();

  return sub_100054484();
}

uint64_t sub_10003D594@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10003DEA0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_10003D5C4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10003D284(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_10003D600()
{
  v0 = sub_100054094();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() standardUserDefaults];
  v6 = sub_100054154();
  v7 = [v5 persistentDomainForName:v6];

  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = sub_100054134();

  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = sub_100054164();
  if (!*(v8 + 16))
  {

    goto LABEL_9;
  }

  v11 = sub_10003DD70(v9, v10);
  v13 = v12;

  if ((v13 & 1) == 0)
  {
LABEL_9:

LABEL_10:
    v14 = 2;
    goto LABEL_11;
  }

  sub_100003068(*(v8 + 56) + 32 * v11, v40);

  if (swift_dynamicCast())
  {
    v14 = v39;
  }

  else
  {
    v14 = 2;
  }

LABEL_11:
  v15 = objc_allocWithZone(NSUserDefaults);
  v16 = sub_100054154();
  v17 = [v15 initWithSuiteName:v16];

  if (v17)
  {
    if (v14 == 2)
    {
      isa = 0;
    }

    else
    {
      isa = sub_1000541D4().super.super.isa;
    }

    [v17 setObject:isa forKey:IMCloudKitDefinesDidUpgradeOrRestoreFromBackup];
    swift_unknownObjectRelease();
  }

  v20 = 0;
  v21 = (v1 + 16);
  v22 = (v1 + 8);
  *&v18 = 136315138;
  v37 = v18;
  v38 = (v1 + 16);
  v36 = v0;
  do
  {
    v25 = *(&off_100082868 + v20 + 32);
    v26 = sub_1000338D8();
    (*v21)(v4, v26, v0);
    v27 = sub_100054074();
    v28 = sub_100054254();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v40[0] = v30;
      *v29 = v37;
      v31 = sub_10003D284(v25);
      v33 = v25;
      v34 = sub_100002F9C(v31, v32, v40);

      *(v29 + 4) = v34;
      v25 = v33;
      _os_log_impl(&_mh_execute_header, v27, v28, "Deleting %s user defaults domain.", v29, 0xCu);
      sub_1000031D0(v30);
      v0 = v36;
      v21 = v38;
    }

    (*v22)(v4, v0);
    ++v20;
    v23 = [objc_opt_self() standardUserDefaults];
    sub_10003D284(v25);
    v24 = sub_100054154();

    [v23 removePersistentDomainForName:v24];
  }

  while (v20 != 13);
}

void sub_10003DA64(char a1)
{
  v2 = objc_allocWithZone(NSUserDefaults);
  v3 = sub_100054154();
  v4 = [v2 initWithSuiteName:v3];

  if (v4)
  {
    v5 = sub_100054154();
    [v4 setBool:a1 & 1 forKey:v5];
  }
}

void sub_10003DB94(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = objc_allocWithZone(NSUserDefaults);
  v3 = sub_100054154();
  v5 = [v2 initWithSuiteName:v3];

  if (v5)
  {
    v4 = sub_100054154();
    [v5 setBool:v1 forKey:v4];
  }
}

void sub_10003DC84(char a1)
{
  v2 = objc_allocWithZone(NSUserDefaults);
  v3 = sub_100054154();
  v4 = [v2 initWithSuiteName:v3];

  if (v4)
  {
    v5 = sub_100054154();
    [v4 setBool:a1 & 1 forKey:v5];
  }
}

unint64_t sub_10003DD70(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_100054474();
  sub_100054184();
  v6 = sub_100054484();

  return sub_10003DDE8(a1, a2, v6);
}

unint64_t sub_10003DDE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_100054424())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_10003DEA0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100082710;
  v6._object = a2;
  v4 = sub_1000543F4(v3, v6);

  if (v4 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10003DEEC()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_100054154();
  v2 = [v0 initWithSuiteName:v1];

  if (!v2)
  {
    v8 = 0u;
    v9 = 0u;
LABEL_9:
    sub_10003A928(&v8);
    return 1;
  }

  v3 = sub_100054154();
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    sub_1000542D4();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8 = v6;
  v9 = v7;
  if (!*(&v7 + 1))
  {
    goto LABEL_9;
  }

  if (swift_dynamicCast())
  {
    return v6;
  }

  return 1;
}

uint64_t sub_10003E030()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_100054154();
  v2 = [v0 initWithSuiteName:v1];

  if (!v2)
  {
    v8 = 0u;
    v9 = 0u;
LABEL_9:
    sub_10003A928(&v8);
    return 0;
  }

  v3 = sub_100054154();
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    sub_1000542D4();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8 = v6;
  v9 = v7;
  if (!*(&v7 + 1))
  {
    goto LABEL_9;
  }

  result = swift_dynamicCast();
  if (result)
  {
    return v6;
  }

  return result;
}

unint64_t sub_10003E17C()
{
  result = qword_10008AC10;
  if (!qword_10008AC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008AC10);
  }

  return result;
}

unint64_t sub_10003E1D4()
{
  result = qword_10008AC18;
  if (!qword_10008AC18)
  {
    sub_10003AA4C(&qword_10008AC20, qword_10005EA10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008AC18);
  }

  return result;
}

uint64_t _s17UserDefaultDomainOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s17UserDefaultDomainOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t IMDaemonChatRequestHandler.fetchCollaborationNotices(forChatGUIDs:reply:)(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v5 = sub_100054094();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100033698();
  (*(v6 + 16))(v9, v10, v5);

  v11 = sub_100054074();
  v12 = sub_100054274();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v26 = a2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v25[1] = a3;
    v16 = v15;
    v27 = v15;
    *v14 = 136315138;
    v17 = sub_1000541C4();
    v19 = sub_100002F9C(v17, v18, &v27);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, "Handling CollaborationNotices fetch request for chatGUIDs: %s", v14, 0xCu);
    sub_1000031D0(v16);

    a2 = v26;
  }

  (*(v6 + 8))(v9, v5);
  v20 = [objc_opt_self() sharedController];
  isa = sub_1000541A4().super.isa;
  v22 = [v20 noticesForChatGUIDs:isa];

  sub_10003E640();
  v23 = sub_1000541B4();

  a2(v23);
}

unint64_t sub_10003E640()
{
  result = qword_10008ACE8;
  if (!qword_10008ACE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10008ACE8);
  }

  return result;
}

void sub_10003E83C(uint64_t a1, uint64_t a2)
{
  v3 = sub_100054094();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100033698();
  (*(v4 + 16))(v7, v8, v3);

  v9 = sub_100054074();
  v10 = sub_100054274();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v21 = a2;
    v12 = v11;
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136315138;
    v14 = sub_1000541C4();
    v16 = sub_100002F9C(v14, v15, &v22);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "Handling CollaborationNotices fetch request for chatGUIDs: %s", v12, 0xCu);
    sub_1000031D0(v13);

    a2 = v21;
  }

  (*(v4 + 8))(v7, v3);
  v17 = [objc_opt_self() sharedController];
  isa = sub_1000541A4().super.isa;
  v19 = [v17 noticesForChatGUIDs:isa];

  sub_10003E640();
  sub_1000541B4();

  v20 = sub_1000541A4().super.isa;
  (*(a2 + 16))(a2, v20);
}

void sub_10003EAD0(void *a1, const char *a2, SEL *a3)
{
  v6 = sub_100054094();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100033698();
  (*(v7 + 16))(v10, v11, v6);
  v12 = a1;
  v13 = sub_100054074();
  v14 = sub_100054274();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    *(v15 + 4) = v12;
    *v16 = v12;
    v17 = v12;
    _os_log_impl(&_mh_execute_header, v13, v14, a2, v15, 0xCu);
    sub_10003ECB4(v16);
  }

  (*(v7 + 8))(v10, v6);
  v18 = [objc_opt_self() sharedController];
  [v18 *a3];
}

uint64_t sub_10003ECB4(uint64_t a1)
{
  v2 = sub_1000334C8(&unk_10008ACF0, &unk_10005EC10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_10003ED1C()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 isUnderFirstDataProtectionLock];

  return v1;
}

uint64_t sub_10003ED74(uint64_t a1, void **a2)
{
  v3 = *a2;
  v7 = *a2;
  SystemAppMigrationStatus = MobileInstallationGetSystemAppMigrationStatus();
  v5 = v7;

  *a2 = v7;
  return SystemAppMigrationStatus;
}

void sub_10003EDF8(uint64_t a1, uint64_t a2)
{
  v3[4] = a1;
  v3[5] = a2;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = sub_10003EEA0;
  v3[3] = &unk_100082928;
  v2 = _Block_copy(v3);

  MobileInstallationWaitForSystemAppMigrationWithCompletion();
  _Block_release(v2);
}

void sub_10003EEA0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

id sub_10003EF0C()
{
  v1 = v0;
  v2 = sub_100054094();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v11 = result;
    [result trackEvent:IMMetricsCollectorEventMessagesInstall];

    LOBYTE(v11) = sub_10003DC80();
    v12 = sub_1000338D8();
    v13 = *(v3 + 16);
    if (v11)
    {
      v13(v9, v12, v2);
      v14 = sub_100054074();
      v15 = sub_100054254();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "MiC was enabled prior to deletion, re-enable it.", v16, 2u);
      }

      (*(v3 + 8))(v9, v2);
      v17 = [objc_opt_self() sharedInstance];
      [v17 setCloudKitEnabled:1];
    }

    else
    {
      v13(v7, v12, v2);
      v18 = sub_100054074();
      v19 = sub_100054254();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "MiC was disabled prior to deletion, we are not enabling it.", v20, 2u);
      }

      (*(v3 + 8))(v7, v2);
    }

    sub_10003DA64(1);
    v21 = IMClearDidPerformInitialChatVocabularyUpdate();
    return (*(*v1 + 128))(v21);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10003F1EC()
{
  v1 = sub_1000334C8(&unk_10008AD00, &qword_10005E910);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v8 - v3;
  v5 = sub_100054244();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;

  sub_1000363C0(0, 0, v4, &unk_10005EB90, v6);
}

uint64_t sub_10003F2F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  v5 = sub_100054094();
  v4[19] = v5;
  v6 = *(v5 - 8);
  v4[20] = v6;
  v7 = *(v6 + 64) + 15;
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();

  return _swift_task_switch(sub_10003F3C0, 0, 0);
}

uint64_t sub_10003F3C0()
{
  v1 = [objc_opt_self() sharedInstance];
  if (!v1)
  {
    __break(1u);
    return _swift_continuation_await(v1);
  }

  v2 = v1;
  v3 = v0[18];
  [v1 trackEvent:IMMetricsCollectorEventMessagesUninstall];

  v4 = objc_opt_self();
  v5 = [v4 sharedInstance];
  v6 = [v5 cloudKitSyncingEnabled];

  sub_10003DC84(v6);
  v7 = [v4 sharedInstance];
  [v7 setCloudKitEnabled:0];

  v8 = [objc_opt_self() indexingQueryProvider];
  v0[23] = v8;
  if (v8)
  {
    v9 = v8;
    v0[2] = v0;
    v0[3] = sub_10003F62C;
    v10 = swift_continuation_init();
    v0[17] = sub_1000334C8(&qword_10008AF20, &qword_10005EC30);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10003FC2C;
    v0[13] = &unk_100082A20;
    v0[14] = v10;
    [v9 deleteAllDonationsForAppDeletionWithCompletion:v0 + 10];
    v1 = v0 + 2;

    return _swift_continuation_await(v1);
  }

  v11 = v0[18];
  sub_10003D600();
  v12 = swift_task_alloc();
  v0[25] = v12;
  *v12 = v0;
  v12[1] = sub_10003F7D8;

  return sub_100042BB0();
}

uint64_t sub_10003F62C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_10003FA38;
  }

  else
  {
    v3 = sub_10003F73C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10003F73C()
{
  v1 = v0[23];
  swift_unknownObjectRelease();
  v2 = v0[18];
  sub_10003D600();
  v3 = swift_task_alloc();
  v0[25] = v3;
  *v3 = v0;
  v3[1] = sub_10003F7D8;

  return sub_100042BB0();
}

uint64_t sub_10003F7D8()
{
  v1 = *(*v0 + 200);
  v3 = *v0;

  return _swift_task_switch(sub_10003F8D4, 0, 0);
}

uint64_t sub_10003F8D4()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[18];
  sub_10003DA64(0);
  v5 = sub_1000338D8();
  (*(v3 + 16))(v1, v5, v2);
  v6 = sub_100054074();
  v7 = sub_100054254();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Messages finished uninstalling, imagent exiting gracefully soon.", v8, 2u);
  }

  v10 = v0[21];
  v9 = v0[22];
  v11 = v0[19];
  v12 = v0[20];
  v13 = v0[18];

  v14 = (*(v12 + 8))(v9, v11);
  (*(*v13 + 128))(v14);

  v15 = v0[1];

  return v15();
}

uint64_t sub_10003FA38()
{
  v2 = v0[23];
  v1 = v0[24];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[19];
  swift_willThrow();
  swift_unknownObjectRelease();
  v6 = sub_1000338D8();
  (*(v4 + 16))(v3, v6, v5);
  swift_errorRetain();
  v7 = sub_100054074();
  v8 = sub_100054264();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[24];
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v13;
    *v12 = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to delete donations upon app deletion with error: %@", v11, 0xCu);
    sub_100036BF0(v12, &unk_10008ACF0, &unk_10005EC10);
  }

  else
  {
    v14 = v0[24];
  }

  (*(v0[20] + 8))(v0[21], v0[19]);
  v15 = v0[18];
  sub_10003D600();
  v16 = swift_task_alloc();
  v0[25] = v16;
  *v16 = v0;
  v16[1] = sub_10003F7D8;

  return sub_100042BB0();
}

uint64_t sub_10003FC2C(uint64_t a1, void *a2)
{
  v3 = sub_10003526C((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_1000334C8(&qword_10008AF28, &qword_10005EC38);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

uint64_t sub_10003FCD8()
{
  v0 = sub_1000540A4();
  v23 = *(v0 - 8);
  v1 = *(v23 + 64);
  __chkstk_darwin(v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000540D4();
  v21 = *(v4 - 8);
  v22 = v4;
  v5 = *(v21 + 64);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000540F4();
  v20 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v20 - v14;
  sub_10003AA94(0, &qword_10008AA18, OS_dispatch_queue_ptr);
  v16 = sub_100054294();
  sub_1000540E4();
  sub_100054104();
  v17 = *(v9 + 8);
  v17(v13, v8);
  aBlock[4] = sub_100040020;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000356CC;
  aBlock[3] = &unk_100082978;
  v18 = _Block_copy(aBlock);
  sub_1000540C4();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10003A990();
  sub_1000334C8(&qword_10008AA20, &unk_10005E860);
  sub_10003A9E8();
  sub_1000542F4();
  sub_100054284();
  _Block_release(v18);

  (*(v23 + 8))(v3, v0);
  (*(v21 + 8))(v7, v22);
  return (v17)(v15, v20);
}

void sub_100040020()
{
  v0 = sub_100054094();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000338D8();
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_100054074();
  v7 = sub_100054254();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "imagent exiting gracefully soon.", v8, 2u);
  }

  (*(v1 + 8))(v4, v0);
  exit(0);
}

NSURL *sub_100040160()
{
  v1 = v0;
  v2 = sub_100054094();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v31 - v8;
  sub_100053DB4(&v31);
  v11 = v10;
  v31._baseURL = 0;
  LODWORD(v1) = [v1 removeItemAtURL:v10 error:&v31._baseURL];

  if (v1)
  {
    return v31._baseURL;
  }

  v13 = v31._baseURL;
  v14 = sub_100053DA4();

  swift_willThrow();
  v31._baseURL = v14;
  swift_errorRetain();
  sub_1000334C8(&qword_10008AF28, &qword_10005EC38);
  sub_10003AA94(0, &unk_10008AF40, NSError_ptr);
  if (!swift_dynamicCast())
  {
  }

  urlString = v31._urlString;
  v16 = [(NSString *)v31._urlString code];
  v17 = sub_1000338D8();
  v18 = *(v3 + 16);
  if (v16 != 4)
  {
    v18(v9, v17, v2);
    v25 = urlString;
    v26 = sub_100054074();
    v27 = sub_100054254();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      *(v28 + 4) = v25;
      *v29 = v25;
      v30 = v25;
      _os_log_impl(&_mh_execute_header, v26, v27, "Error removing file: %@", v28, 0xCu);
      sub_100036BF0(v29, &unk_10008ACF0, &unk_10005EC10);
    }

    (*(v3 + 8))(v9, v2);
    swift_willThrow();
  }

  v18(v7, v17, v2);
  v19 = urlString;
  v20 = sub_100054074();
  v21 = sub_100054254();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    *(v22 + 4) = v19;
    *v23 = v19;
    v24 = v19;
    _os_log_impl(&_mh_execute_header, v20, v21, "File not found, ignoring error: %@", v22, 0xCu);
    sub_100036BF0(v23, &unk_10008ACF0, &unk_10005EC10);
  }

  else
  {
    v24 = v20;
    v20 = v19;
  }

  (*(v3 + 8))(v7, v2);
}

uint64_t sub_100040580(uint64_t a1)
{
  v1 = *sub_10003526C((a1 + 32), *(a1 + 56));

  return _swift_continuation_resume(v1);
}

void (*sub_1000405E0(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_10003DB4C(v2);
  return sub_100040650;
}

void sub_100040650(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

char *sub_10004074C()
{
  type metadata accessor for ApplicationWorkspaceObserverLiveDelegate();
  v0 = swift_allocObject();
  v1 = objc_allocWithZone(type metadata accessor for ApplicationWorkspaceObserver());
  result = sub_100042400(v0, v1);
  qword_10008C158 = result;
  return result;
}

char *sub_100040798(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return sub_1000423A8(a1, v2, ObjectType, a2);
}

uint64_t sub_1000407E8()
{
  v1 = sub_100054094();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = (__chkstk_darwin)();
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v36 - v8;
  if ((*((swift_isaMask & *v0) + 0xD0))(v7))
  {
    v10 = 1;
  }

  else
  {
    v40 = 0;
    v39 = 0;
    v12 = *(v0 + OBJC_IVAR____TtC7imagent28ApplicationWorkspaceObserver_delegate);
    v11 = *(v0 + OBJC_IVAR____TtC7imagent28ApplicationWorkspaceObserver_delegate + 8);
    ObjectType = swift_getObjectType();
    v14 = (*(v11 + 48))(&v40, &v39, ObjectType, v11);
    v15 = sub_1000338D8();
    v16 = *(v2 + 16);
    if (v14)
    {
      v16(v9, v15, v1);
      v17 = sub_100054074();
      v18 = sub_100054254();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v38 = v20;
        *v19 = 136315138;
        swift_beginAccess();
        v21 = sub_100053E54();
        v23 = sub_100002F9C(v21, v22, &v38);

        *(v19 + 4) = v23;
        _os_log_impl(&_mh_execute_header, v17, v18, "Fetching SystemAppMigrationStatus is %s", v19, 0xCu);
        sub_1000031D0(v20);
      }

      (*(v2 + 8))(v9, v1);
      swift_beginAccess();
      v10 = v40;
    }

    else
    {
      v16(v6, v15, v1);
      v24 = v39;
      v25 = v39;
      v26 = sub_100054074();
      v27 = sub_100054264();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v37 = ObjectType;
        v29 = v28;
        v30 = swift_slowAlloc();
        v31 = v24;
        v32 = v25;
        v33 = v30;
        *v29 = 138412290;
        *(v29 + 4) = v32;
        *v30 = v31;
        v34 = v32;
        _os_log_impl(&_mh_execute_header, v26, v27, "Fetching SystemAppMigrationStatus failed with error %@", v29, 0xCu);
        sub_100036BF0(v33, &unk_10008ACF0, &unk_10005EC10);
        v25 = v32;

        ObjectType = v37;
      }

      (*(v2 + 8))(v6, v1);
      v10 = (*(v11 + 24))(ObjectType, v11);
    }
  }

  return v10 & 1;
}

id sub_100040BCC(char a1)
{
  v2 = v1;
  v4 = sub_100054094();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v66[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v7);
  v12 = &v66[-v11];
  v13 = __chkstk_darwin(v10);
  v14 = __chkstk_darwin(v13);
  v16 = &v66[-v15];
  v17 = __chkstk_darwin(v14);
  v19 = &v66[-v18];
  v20 = __chkstk_darwin(v17);
  v22 = &v66[-v21];
  __chkstk_darwin(v20);
  v25 = &v66[-v24];
  if (a1)
  {
    v70 = v23;
    v74 = v4;
    v26 = *(v2 + OBJC_IVAR____TtC7imagent28ApplicationWorkspaceObserver_delegate);
    v27 = *(v2 + OBJC_IVAR____TtC7imagent28ApplicationWorkspaceObserver_delegate + 8);
    ObjectType = swift_getObjectType();
    v29 = *(v27 + 16);
    v72 = v26;
    v73 = ObjectType;
    LOBYTE(v26) = v29(ObjectType, v27);
    v30 = sub_1000338D8();
    v31 = *(v5 + 16);
    if (v26)
    {
      v32 = v74;
      v31(v12, v30, v74);
      v33 = sub_100054074();
      v34 = sub_100054254();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&_mh_execute_header, v33, v34, "Skipping launch tasks - still not past first unlock", v35, 2u);
      }

      return (*(v5 + 8))(v12, v32);
    }

    v71 = v27;
    v68 = v30;
    v69 = v31;
    (v31)(v25);
    v41 = sub_100054074();
    v42 = sub_100054254();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "Performing launch tasks", v43, 2u);
    }

    v44 = *(v5 + 8);
    v44(v25, v74);
    *(v2 + OBJC_IVAR____TtC7imagent28ApplicationWorkspaceObserver_didPerformStartupTasks) = 1;
    result = [objc_opt_self() defaultWorkspace];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v45 = result;
    [result addObserver:v2];

    v46 = (*((swift_isaMask & *v2) + 0xD0))();
    v47 = (*(v71 + 24))(v73);
    v67 = v46;
    if (v46)
    {
      if (v47)
      {
        v48 = v70;
        v49 = v74;
        v69(v70, v68, v74);
        v50 = sub_100054074();
        v51 = sub_100054254();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          *v52 = 0;
          _os_log_impl(&_mh_execute_header, v50, v51, "We don't need to perform any installation tasks", v52, 2u);
        }

        v44(v48, v49);
      }

      else
      {
        v69(v22, v68, v74);
        v57 = sub_100054074();
        v58 = sub_100054254();
        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          *v59 = 0;
          _os_log_impl(&_mh_execute_header, v57, v58, "We missed the install notification - installing now", v59, 2u);
        }

        v60 = (v44)(v22, v74);
        (*((swift_isaMask & *v2) + 0xD8))(v60);
      }
    }

    else
    {
      if ((v47 & 1) == 0)
      {
        v69(v16, v68, v74);
        v62 = sub_100054074();
        v63 = sub_100054254();
        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          *v64 = 0;
          _os_log_impl(&_mh_execute_header, v62, v63, "We are uninstalled, so we actually need to relaunch so imagent doesn't load the services", v64, 2u);
        }

        v44(v16, v74);
        v65 = v71;
        (*(v71 + 80))(v73, v71);
        v61 = v65;
        return (*(v61 + 32))(v67 & 1, v73);
      }

      v69(v19, v68, v74);
      v53 = sub_100054074();
      v54 = sub_100054254();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&_mh_execute_header, v53, v54, "We missed the uninstall notification - uninstalling now", v55, 2u);
      }

      v56 = (v44)(v19, v74);
      (*((swift_isaMask & *v2) + 0xE0))(v56);
    }

    v61 = v71;
    return (*(v61 + 32))(v67 & 1, v73);
  }

  v37 = sub_1000338D8();
  (*(v5 + 16))(v9, v37, v4);
  v38 = sub_100054074();
  v39 = sub_100054254();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&_mh_execute_header, v38, v39, "Skipping launch tasks - system app migrator hasn't ran yet", v40, 2u);
  }

  return (*(v5 + 8))(v9, v4);
}

id sub_100041398()
{
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v2 = result;
    [result removeObserver:v0];

    v3.receiver = v0;
    v3.super_class = type metadata accessor for ApplicationWorkspaceObserver();
    return objc_msgSendSuper2(&v3, "dealloc");
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000414B4()
{
  v1 = v0;
  v2 = sub_100054094();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000338D8();
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_100054074();
  v9 = sub_100054254();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Messages finished installing.", v10, 2u);
  }

  (*(v3 + 8))(v6, v2);
  v12 = *(v1 + OBJC_IVAR____TtC7imagent28ApplicationWorkspaceObserver_delegate);
  v11 = *(v1 + OBJC_IVAR____TtC7imagent28ApplicationWorkspaceObserver_delegate + 8);
  ObjectType = swift_getObjectType();
  return (*(v11 + 64))(ObjectType, v11);
}

uint64_t sub_100041640()
{
  v1 = v0;
  v2 = sub_100054094();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000338D8();
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_100054074();
  v9 = sub_100054254();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Messages starting uninstalling", v10, 2u);
  }

  (*(v3 + 8))(v6, v2);
  v12 = *(v1 + OBJC_IVAR____TtC7imagent28ApplicationWorkspaceObserver_delegate);
  v11 = *(v1 + OBJC_IVAR____TtC7imagent28ApplicationWorkspaceObserver_delegate + 8);
  ObjectType = swift_getObjectType();
  return (*(v11 + 72))(ObjectType, v11);
}

uint64_t sub_1000417CC(uint64_t a1)
{
  v3 = sub_100054094();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (result)
  {
    result = sub_1000419C0(result);
    if (result)
    {
      v9 = sub_100041ACC(result);

      if (v9)
      {

        if (*(v1 + OBJC_IVAR____TtC7imagent28ApplicationWorkspaceObserver_didReceiveInstallSignal) == 1)
        {
          *(v1 + OBJC_IVAR____TtC7imagent28ApplicationWorkspaceObserver_didReceiveInstallSignal) = 1;
          v10 = *((swift_isaMask & *v1) + 0xD8);

          return v10();
        }

        else
        {
          v11 = sub_1000338D8();
          (*(v4 + 16))(v8, v11, v3);
          v12 = sub_100054074();
          v13 = sub_100054254();
          if (os_log_type_enabled(v12, v13))
          {
            v14 = swift_slowAlloc();
            *v14 = 0;
          }

          return (*(v4 + 8))(v8, v3);
        }
      }
    }
  }

  return result;
}

void *sub_1000419C0(uint64_t a1)
{
  v7 = &_swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  sub_100054384();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_100003068(i, v6);
    sub_10003AA94(0, &qword_10008AF18, LSApplicationProxy_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_100054364();
    v4 = v7[2];
    sub_100054394();
    sub_1000543A4();
    sub_100054374();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

void *sub_100041ACC(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1000543B4())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = sub_100054344();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v7 = [v4 bundleIdentifier];
      if (v7)
      {
        v8 = v7;
        v9 = sub_100054164();
        v11 = v10;

        if (v9 == 0xD000000000000013 && 0x8000000100064750 == v11)
        {

          return v5;
        }

        v13 = sub_100054424();

        if (v13)
        {
          return v5;
        }
      }

      if (v6 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  return 0;
}

uint64_t sub_100041C58(uint64_t a1)
{
  v3 = sub_100054094();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (result)
  {
    result = sub_1000419C0(result);
    if (result)
    {
      v9 = sub_100041ACC(result);

      if (v9)
      {

        if (*(v1 + OBJC_IVAR____TtC7imagent28ApplicationWorkspaceObserver_didReceiveUninstallSignal))
        {
          v10 = sub_1000338D8();
          (*(v4 + 16))(v8, v10, v3);
          v11 = sub_100054074();
          v12 = sub_100054254();
          if (os_log_type_enabled(v11, v12))
          {
            v13 = swift_slowAlloc();
            *v13 = 0;
          }

          return (*(v4 + 8))(v8, v3);
        }

        else
        {
          *(v1 + OBJC_IVAR____TtC7imagent28ApplicationWorkspaceObserver_didReceiveUninstallSignal) = 1;
          v14 = *((swift_isaMask & *v1) + 0xE0);

          return v14();
        }
      }
    }
  }

  return result;
}

uint64_t sub_100041E64(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  if (a3)
  {
    v6 = sub_1000541B4();
  }

  else
  {
    v6 = 0;
  }

  v7 = a1;
  a4(v6);
}

void sub_100041F64(uint64_t a1, uint64_t a2)
{
  v4 = sub_100054094();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v27 - v10;
  if (a1)
  {
    swift_errorRetain();
    v12 = sub_1000338D8();
    (*(v5 + 16))(v9, v12, v4);
    swift_errorRetain();
    v13 = sub_100054074();
    v14 = sub_100054264();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v27 = a2;
      v16 = v15;
      v17 = swift_slowAlloc();
      v28 = v17;
      *v16 = 136315138;
      swift_getErrorValue();
      v18 = sub_100054464();
      v20 = sub_100002F9C(v18, v19, &v28);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v13, v14, "Waiting for SystemAppMigration failed with error: %s", v16, 0xCu);
      sub_1000031D0(v17);
    }

    else
    {
    }

    (*(v5 + 8))(v9, v4);
  }

  else
  {
    v21 = sub_1000338D8();
    (*(v5 + 16))(v11, v21, v4);
    v22 = sub_100054074();
    v23 = sub_100054264();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Waiting for SystemAppMigration succeeded, resetting daemon shortly", v24, 2u);
    }

    (*(v5 + 8))(v11, v4);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v26 = Strong;
    sub_100040BCC(1);
  }
}

uint64_t sub_100042268()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000333B0;

  return sub_10003F2F4(v3, v4, v5, v2);
}

uint64_t sub_1000422FC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

char *sub_1000423A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_allocWithZone(type metadata accessor for ApplicationWorkspaceObserver());

  return sub_1000427C4(a1, v7, a3, a4);
}