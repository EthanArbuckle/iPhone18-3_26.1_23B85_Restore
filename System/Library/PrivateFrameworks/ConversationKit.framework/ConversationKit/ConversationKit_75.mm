uint64_t ConversationController.createNewParticipants(with:)(void *a1)
{
  v429[5] = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v371 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v376 = &v371 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v371 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v388 = &v371 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v387 = &v371 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v386 = &v371 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v371 - v17;
  v19 = type metadata accessor for Participant(0);
  v419 = *(v19 - 8);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v381 = &v371 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v372 = &v371 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v375 = &v371 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v394 = &v371 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v385 = &v371 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v395 = &v371 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v384 = &v371 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v383 = &v371 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v380 = &v371 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v389 = &v371 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v399 = &v371 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v391 = &v371 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v418 = &v371 - v45;
  MEMORY[0x1EEE9AC00](v44);
  v406 = &v371 - v46;
  v47 = type metadata accessor for DispatchPredicate();
  v48 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v50 = &v371 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v50 = static OS_dispatch_queue.main.getter();
  (*(v48 + 104))(v50, *MEMORY[0x1E69E8020], v47);
  v51 = _dispatchPreconditionTest(_:)();
  (*(v48 + 8))(v50, v47);
  if ((v51 & 1) == 0)
  {
    goto LABEL_227;
  }

  v52 = a1[3];
  v53 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v52);
  v47 = (*(v53 + 88))(v52, v53);
  v422 = v47;
  v54 = a1[3];
  v55 = a1[4];
  v402 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v54);
  v56 = (*(v55 + 168))(v54, v55);
  if (v56)
  {
    specialized Set._Variant.insert(_:)(v429, v56, v57, v58, v59, v60, v61, v62, v371, v372, v373, v374, v375, v376, v377, *(&v377 + 1), v378, *(&v378 + 1), v379, v380, v381, v382);

    v47 = v422;
  }

  v373 = v5;
  v374 = v10;
  v417 = v19;
  v392 = v18;
  if ((v47 & 0xC000000000000001) == 0)
  {
    v77 = *(v47 + 32);
    v51 = ((1 << v77) + 63) >> 6;
    v50 = 8 * v51;
    if ((v77 & 0x3Fu) <= 0xD)
    {
      goto LABEL_23;
    }

    goto LABEL_229;
  }

  v63 = MEMORY[0x1E69E7CD0];
  v429[0] = MEMORY[0x1E69E7CD0];
  v47 = __CocoaSet.makeIterator()();
  v50 = &lazy cache variable for type metadata for TUConversationMember;
  v19 = 1;
  while (1)
  {
    while (1)
    {
      v64 = __CocoaSet.Iterator.next()();
      if (!v64)
      {

        v382 = 0;
        v19 = v417;
        goto LABEL_38;
      }

      v423 = v64;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember);
      swift_dynamicCast();
      v65 = [v424 isOtherInvitedHandle];
      v66 = v424;
      if ((v65 & 1) == 0)
      {
        break;
      }
    }

    if (v63[3] <= v63[2])
    {
      specialized _NativeSet.resize(capacity:)();
    }

    v63 = v429[0];
    v51 = v66;
    v67 = NSObject._rawHashValue(seed:)(*(v429[0] + 5));
    v68 = (v63 + 7);
    v69 = -1 << *(v63 + 32);
    v70 = v67 & ~v69;
    v71 = v70 >> 6;
    if (((-1 << v70) & ~v63[(v70 >> 6) + 7]) == 0)
    {
      break;
    }

    v72 = __clz(__rbit64((-1 << v70) & ~v63[(v70 >> 6) + 7])) | v70 & 0x7FFFFFFFFFFFFFC0;
LABEL_20:
    *&v68[(v72 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v72;
    *(v63[6] + 8 * v72) = v66;
    ++v63[2];
  }

  v73 = 0;
  v74 = (63 - v69) >> 6;
  while (++v71 != v74 || (v73 & 1) == 0)
  {
    v75 = v71 == v74;
    if (v71 == v74)
    {
      v71 = 0;
    }

    v73 |= v75;
    v76 = *&v68[8 * v71];
    if (v76 != -1)
    {
      v72 = __clz(__rbit64(~v76)) + (v71 << 6);
      goto LABEL_20;
    }
  }

LABEL_222:
  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_224:
    __break(1u);
    while (1)
    {
      __break(1u);
LABEL_226:
      __break(1u);
LABEL_227:
      __break(1u);
LABEL_228:
      __break(1u);
LABEL_229:
      swift_bridgeObjectRetain_n();
      if (!swift_stdlib_isStackAllocationSafe())
      {
        break;
      }

      v56 = swift_bridgeObjectRelease_n();
LABEL_23:
      MEMORY[0x1EEE9AC00](v56);
      v50 = &v371 - ((v50 + 15) & 0x3FFFFFFFFFFFFFF0);
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, v51, v50);
      v78 = 0;
      v79 = 0;
      v80 = 1 << *(v47 + 32);
      v81 = -1;
      if (v80 < 64)
      {
        v81 = ~(-1 << v80);
      }

      v82 = v81 & *(v47 + 56);
      v83 = (v80 + 63) >> 6;
      while (v82)
      {
        v84 = __clz(__rbit64(v82));
        v82 &= v82 - 1;
LABEL_33:
        v19 = v84 | (v79 << 6);
        if (([*(*(v47 + 48) + 8 * v19) isOtherInvitedHandle] & 1) == 0)
        {
          *(v50 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
          if (__OFADD__(v78++, 1))
          {
            __break(1u);
LABEL_37:
            specialized _NativeSet.extractSubset(using:count:)();
            v63 = v88;
            v382 = 0;
            goto LABEL_38;
          }
        }
      }

      v85 = v79;
      v19 = v417;
      while (1)
      {
        v79 = v85 + 1;
        if (__OFADD__(v85, 1))
        {
          break;
        }

        if (v79 >= v83)
        {
          goto LABEL_37;
        }

        v86 = *(v47 + 56 + 8 * v79);
        ++v85;
        if (v86)
        {
          v84 = __clz(__rbit64(v86));
          v82 = (v86 - 1) & v86;
          goto LABEL_33;
        }
      }
    }

    v369 = swift_slowAlloc();

    v370 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo20TUConversationMemberCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab11VKXEfU_So20iJ5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n(v369, v51, v47, closure #2 in ConversationController.createNewParticipants(with:), 0);
    v382 = 0;
    v63 = v370;
    swift_bridgeObjectRelease_n();
    MEMORY[0x1BFB23DF0](v369, -1, -1);
LABEL_38:
    v89 = v402[3];
    v90 = v402[4];
    v91 = __swift_project_boxed_opaque_existential_1(v402, v89);
    v92 = v90;
    v51 = v91;
    active = Conversation.displayableActiveParticipants.getter(v89, v92);
    v94 = active;
    if ((active & 0xC000000000000001) != 0)
    {
      __CocoaSet.makeIterator()();
      v51 = &lazy cache variable for type metadata for TUConversationParticipant;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant);
      lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationParticipant and conformance NSObject, &lazy cache variable for type metadata for TUConversationParticipant);
      Set.Iterator.init(_cocoa:)();
      v94 = v424;
      v95 = v425;
      v96 = v426;
      v47 = v427;
      v50 = v428;
    }

    else
    {
      v47 = 0;
      v97 = -1 << *(active + 32);
      v95 = active + 56;
      v98 = ~v97;
      v99 = -v97;
      v100 = v99 < 64 ? ~(-1 << v99) : -1;
      v50 = v100 & *(active + 56);
      v96 = v98;
    }

    v390 = v96;
    v101 = (v96 + 64) >> 6;
    v378 = xmmword_1BC4BAA20;
    v393 = xmmword_1BC4BA940;
    v377 = xmmword_1BC4BB980;
    v404 = v63;
    v396 = v101;
    v398 = v94;
    v397 = v95;
    if (v94 < 0)
    {
      break;
    }

LABEL_45:
    v102 = v47;
    v103 = v50;
    v104 = v47;
    if (v50)
    {
LABEL_49:
      v105 = __clz(__rbit64(v103));
      v400 = (v103 - 1) & v103;
      v106 = *(v94 + 48);
      v401 = v104;
      v107 = *(v106 + ((v104 << 9) | (8 * v105)));
      if (!v107)
      {
        goto LABEL_144;
      }

      goto LABEL_53;
    }

    while (1)
    {
      v104 = v102 + 1;
      if (__OFADD__(v102, 1))
      {
        break;
      }

      if (v104 >= v101)
      {
        goto LABEL_144;
      }

      v103 = *(v95 + 8 * v104);
      ++v102;
      if (v103)
      {
        goto LABEL_49;
      }
    }
  }

LABEL_51:
  v108 = __CocoaSet.Iterator.next()();
  if (v108)
  {
    v423 = v108;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant);
    swift_dynamicCast();
    v107 = v429[0];
    v401 = v47;
    v400 = v50;
    if (v429[0])
    {
LABEL_53:
      v50 = &selRef_isRecordingAllowed;
      v109 = [v107 handle];
      v408 = TUNormalizedHandleForTUHandle();

      v110 = v107;
      v111 = [v110 handle];
      v415 = [v110 identifier];
      v112 = [v110 avcIdentifier];
      v413 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v414 = v113;
      v403 = v110;

      v114 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
      v51 = v405;
      swift_beginAccess();
      v416 = *(v51 + v114);
      v412 = v416[2];
      v407 = v111;
      if (!v412)
      {
        goto LABEL_69;
      }

      v115 = v406;
      i = v406 + *(v19 + 28);
      v411 = v416 + ((*(v419 + 80) + 32) & ~*(v419 + 80));

      v47 = 0;
      while (1)
      {
        if (v47 >= v416[2])
        {
          __break(1u);
LABEL_221:
          __break(1u);
          goto LABEL_222;
        }

        _s15ConversationKit11ParticipantVWOcTm_17(&v411[*(v419 + 72) * v47], v115);
        v116 = *i;
        v117 = *(i + 8);
        v119 = *(i + 16);
        v118 = *(i + 24);
        v51 = *(i + 32);
        if (*i)
        {
          if (v111)
          {
            v409 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject);
            v120 = v111;
            swift_bridgeObjectRetain_n();
            v50 = v120;
            outlined copy of Participant.RemoteIdentifiers?(v116);
            v51 = static NSObject.== infix(_:_:)();

            outlined consume of Participant.RemoteIdentifiers?(v111);
            if (v51)
            {
              v115 = v406;
              _s15ConversationKit11ParticipantVWOhTm_18(v406, type metadata accessor for Participant);
              outlined consume of Participant.RemoteIdentifiers?(v116);
              v111 = v407;
              if ((v119 & 1) == 0 && v117 == v415)
              {

                goto LABEL_104;
              }
            }

            else
            {
              v115 = v406;
              _s15ConversationKit11ParticipantVWOhTm_18(v406, type metadata accessor for Participant);
              outlined consume of Participant.RemoteIdentifiers?(v116);
              v111 = v407;
            }

            goto LABEL_67;
          }

          v50 = v118;
          outlined copy of Participant.RemoteIdentifiers?(v116);
          _s15ConversationKit11ParticipantVWOhTm_18(v115, type metadata accessor for Participant);
        }

        else
        {
          v50 = *(i + 24);
          v121 = v111;

          outlined copy of Participant.RemoteIdentifiers?(0);
          _s15ConversationKit11ParticipantVWOhTm_18(v115, type metadata accessor for Participant);
          if (!v111)
          {

            outlined consume of Participant.RemoteIdentifiers?(0);
LABEL_104:
            v47 = v401;
            v50 = v400;
            v19 = v417;
            goto LABEL_142;
          }
        }

        outlined consume of Participant.RemoteIdentifiers?(v116);
        outlined consume of Participant.RemoteIdentifiers?(v111);
LABEL_67:
        ++v47;
        v19 = v417;
        if (v412 == v47)
        {

          v51 = v405;
LABEL_69:
          v122 = *(v51 + OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants);
          v47 = *(v122 + 16);
          if (v47)
          {
            v416 = ((*(v419 + 80) + 32) & ~*(v419 + 80));
            v123 = v416 + v122;

            v124 = 0;
            v125 = v403;
            while (1)
            {
              if (v124 >= *(v122 + 16))
              {
                goto LABEL_221;
              }

              v50 = *(v419 + 72) * v124;
              v51 = v418;
              _s15ConversationKit11ParticipantVWOcTm_17(&v123[v50], v418);
              v126 = v51 + *(v19 + 28);
              if (!*v126 || (*(v126 + 16) & 1) == 0)
              {
                goto LABEL_82;
              }

              v127 = *v126;
              v128 = TUNormalizedHandleForTUHandle();
              v129 = v128;
              if (!v408)
              {
                break;
              }

              if (!v128)
              {
                v129 = v127;
                goto LABEL_81;
              }

              type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
              v130 = v408;
              v51 = static NSObject.== infix(_:_:)();

              v19 = v417;
              _s15ConversationKit11ParticipantVWOhTm_18(v418, type metadata accessor for Participant);
              if (v51)
              {

                goto LABEL_115;
              }

LABEL_83:
              if (v47 == ++v124)
              {

                goto LABEL_86;
              }
            }

            if (v129)
            {
LABEL_81:

LABEL_82:
              _s15ConversationKit11ParticipantVWOhTm_18(v418, type metadata accessor for Participant);
              goto LABEL_83;
            }

            _s15ConversationKit11ParticipantVWOhTm_18(v418, type metadata accessor for Participant);
LABEL_115:
            v412 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
            v174 = *(v405 + OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants);
            specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v124, 1, v174);
            v175 = v416 + v50 + v174;
            v176 = v391;
            _s15ConversationKit11ParticipantVWOcTm_17(v175, v391);
            v177 = (v176 + *(v19 + 28));
            v178 = *v177;
            v179 = v407;
            v411 = v407;
            v180 = v414;

            v181 = v178;
            v51 = v180;
            outlined consume of Participant.RemoteIdentifiers?(v181);
            v182 = v415;
            *v177 = v179;
            v177[1] = v182;
            v183 = v413;
            v177[2] = 0;
            v177[3] = v183;
            v177[4] = v180;
            v47 = *(v405 + v412);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              specialized _ArrayBuffer._consumeAndCreateNew()();
              v47 = v269;
            }

            v184 = v403;
            v19 = v417;
            if (v124 < *(v47 + 16))
            {
              v185 = v416 + v47 + v50;
              v186 = v391;
              outlined assign with copy of Participant.State(v391, v185);
              v51 = v405;
              ConversationController.remoteParticipants.setter(v47);

              v145 = v186;
              goto LABEL_141;
            }

            goto LABEL_228;
          }

          v125 = v403;
LABEL_86:
          ConversationController.createParticipant(for:conversation:)(v125, v402, v399);
          v131 = v395;
          if (one-time initialization token for shared != -1)
          {
            swift_once();
          }

          if ((*(*static Defaults.shared + 608))())
          {
            v132 = [v125 association];
            if (v132)
            {
              v133 = v132;
              v134 = v392;
              ConversationController.participant(from:)(v132, v392);
              if (__swift_getEnumTagSinglePayload(v134, 1, v19) == 1)
              {

                outlined destroy of CallControlsService?(v134, &_s15ConversationKit11ParticipantVSgMd);
              }

              else
              {
                v135 = v389;
                _s15ConversationKit11ParticipantVWObTm_8(v134, v389);
                v136 = ConversationController.indexOfRemoteParticipant(with:)(v135 + *(v19 + 20));
                if ((v137 & 1) == 0)
                {
                  v156 = v136;
                  v157 = *(v135 + *(v19 + 44));
                  MEMORY[0x1EEE9AC00](v136);
                  v158 = v399;
                  *(&v371 - 2) = v399;
                  v159 = v382;
                  v160 = specialized Sequence.contains(where:)(partial apply for closure #5 in ConversationController.createNewParticipants(with:), (&v371 - 4), v157);
                  v382 = v159;
                  if (v160)
                  {
                    if (one-time initialization token for conversationKit != -1)
                    {
                      swift_once();
                    }

                    v416 = static OS_os_log.conversationKit;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
                    v51 = swift_allocObject();
                    *(v51 + 16) = v378;
                    v161 = v403;
                    v429[0] = v403;
                    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant);
                    v415 = v161;
                    v162 = String.init<A>(reflecting:)();
                    v164 = v163;
                    v165 = MEMORY[0x1E69E6158];
                    *(v51 + 56) = MEMORY[0x1E69E6158];
                    v166 = lazy protocol witness table accessor for type String and conformance String();
                    *(v51 + 64) = v166;
                    *(v51 + 32) = v162;
                    *(v51 + 40) = v164;
                    v167 = v389;
                    v168 = v386;
                    _s15ConversationKit11ParticipantVWOcTm_17(v389, v386);
                    __swift_storeEnumTagSinglePayload(v168, 0, 1, v19);
                    specialized >> prefix<A>(_:)();
                    v170 = v169;
                    v172 = v171;
                    outlined destroy of CallControlsService?(v168, &_s15ConversationKit11ParticipantVSgMd);
                    *(v51 + 96) = v165;
                    *(v51 + 104) = v166;
                    *(v51 + 72) = v170;
                    *(v51 + 80) = v172;
                    static os_log_type_t.default.getter();
                    os_log(_:dso:log:type:_:)();

                    v173 = v399;
                  }

                  else
                  {
                    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantVGMd);
                    v242 = *(v419 + 72);
                    v243 = (*(v419 + 80) + 32) & ~*(v419 + 80);
                    v244 = swift_allocObject();
                    *(v244 + 16) = v393;
                    _s15ConversationKit11ParticipantVWOcTm_17(v158, v244 + v243);

                    specialized Set.union<A>(_:)();
                    Participant.withAssociatedParticipants(_:)(v245, v246, v247, v248, v249, v250, v251, v252, v371, v372, v373, v374, v375, v376, v377, *(&v377 + 1), v378, *(&v378 + 1), v379, v380);

                    v253 = *(v405 + OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants);

                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      specialized _ArrayBuffer._consumeAndCreateNew()();
                      v253 = v272;
                    }

                    v254 = v403;
                    if ((v156 & 0x8000000000000000) != 0)
                    {
                      goto LABEL_236;
                    }

                    if (v156 >= *(v253 + 16))
                    {
                      goto LABEL_237;
                    }

                    outlined assign with copy of Participant.State(v380, v253 + v243 + v242 * v156);
                    ConversationController.remoteParticipants.setter(v253);
                    if (one-time initialization token for conversationKit != -1)
                    {
                      swift_once();
                    }

                    v416 = static OS_os_log.conversationKit;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
                    v51 = swift_allocObject();
                    *(v51 + 16) = v377;
                    v429[0] = v254;
                    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant);
                    v415 = v254;
                    v255 = String.init<A>(reflecting:)();
                    v257 = v256;
                    v258 = MEMORY[0x1E69E6158];
                    *(v51 + 56) = MEMORY[0x1E69E6158];
                    v259 = lazy protocol witness table accessor for type String and conformance String();
                    *(v51 + 64) = v259;
                    *(v51 + 32) = v255;
                    *(v51 + 40) = v257;
                    v173 = v399;
                    v260 = v386;
                    _s15ConversationKit11ParticipantVWOcTm_17(v399, v386);
                    __swift_storeEnumTagSinglePayload(v260, 0, 1, v19);
                    specialized >> prefix<A>(_:)();
                    v262 = v261;
                    v264 = v263;
                    outlined destroy of CallControlsService?(v260, &_s15ConversationKit11ParticipantVSgMd);
                    *(v51 + 96) = v258;
                    *(v51 + 104) = v259;
                    *(v51 + 72) = v262;
                    *(v51 + 80) = v264;
                    v19 = v417;
                    v167 = v389;
                    _s15ConversationKit11ParticipantVWOcTm_17(v389, v260);
                    __swift_storeEnumTagSinglePayload(v260, 0, 1, v19);
                    specialized >> prefix<A>(_:)();
                    v266 = v265;
                    v268 = v267;
                    outlined destroy of CallControlsService?(v260, &_s15ConversationKit11ParticipantVSgMd);
                    *(v51 + 136) = MEMORY[0x1E69E6158];
                    *(v51 + 144) = v259;
                    *(v51 + 112) = v266;
                    *(v51 + 120) = v268;
                    static os_log_type_t.default.getter();
                    os_log(_:dso:log:type:_:)();

                    _s15ConversationKit11ParticipantVWOhTm_18(v380, type metadata accessor for Participant);
                  }

                  _s15ConversationKit11ParticipantVWOhTm_18(v167, type metadata accessor for Participant);
                  v145 = v173;
                  goto LABEL_141;
                }

                _s15ConversationKit11ParticipantVWOhTm_18(v135, type metadata accessor for Participant);

                v131 = v395;
              }
            }
          }

          v51 = v405;
          ConversationController.identityClaimingAssociationRelationship(for:in:)(v125, v402);
          if (!v139)
          {
            v148 = v387;
            v149 = v405;
            v51 = v405;
            ConversationController.remoteParticipant(with:)(v138, v387);
            EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v148, 1, v19);
            v140 = v399;
            if (EnumTagSinglePayload == 1)
            {
              outlined destroy of CallControlsService?(v148, &_s15ConversationKit11ParticipantVSgMd);
            }

            else
            {
              v153 = v383;
              _s15ConversationKit11ParticipantVWObTm_8(v148, v383);
              v51 = v149;
              v154 = ConversationController.indexOfRemoteParticipant(with:)(v153 + *(v19 + 20));
              if ((v155 & 1) == 0)
              {
                v214 = v154;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantVGMd);
                v215 = *(v419 + 72);
                v216 = (*(v419 + 80) + 32) & ~*(v419 + 80);
                v217 = swift_allocObject();
                *(v217 + 16) = v393;
                _s15ConversationKit11ParticipantVWOcTm_17(v140, v217 + v216);
                _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC15ConversationKit11ParticipantV_Tt0g5();
                Participant.withAssociatedParticipants(_:)(v218, v219, v220, v221, v222, v223, v224, v225, v371, v372, v373, v374, v375, v376, v377, *(&v377 + 1), v378, *(&v378 + 1), v379, v380);

                v226 = *(v149 + OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants);

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  specialized _ArrayBuffer._consumeAndCreateNew()();
                  v226 = v271;
                }

                if ((v214 & 0x8000000000000000) != 0)
                {
                  __break(1u);
LABEL_233:
                  __break(1u);
LABEL_234:
                  __break(1u);
LABEL_235:
                  __break(1u);
LABEL_236:
                  __break(1u);
LABEL_237:
                  __break(1u);
                }

                if (v214 >= *(v226 + 16))
                {
                  goto LABEL_234;
                }

                outlined assign with copy of Participant.State(v384, v226 + v216 + v215 * v214);
                ConversationController.remoteParticipants.setter(v226);
                if (one-time initialization token for conversationKit != -1)
                {
                  swift_once();
                }

                v416 = static OS_os_log.conversationKit;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
                v227 = swift_allocObject();
                *(v227 + 16) = v377;
                v429[0] = v125;
                type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant);
                v415 = v125;
                v228 = String.init<A>(reflecting:)();
                v230 = v229;
                *(v227 + 56) = MEMORY[0x1E69E6158];
                v231 = lazy protocol witness table accessor for type String and conformance String();
                *(v227 + 64) = v231;
                *(v227 + 32) = v228;
                *(v227 + 40) = v230;
                v232 = v399;
                v51 = v386;
                _s15ConversationKit11ParticipantVWOcTm_17(v399, v386);
                __swift_storeEnumTagSinglePayload(v51, 0, 1, v19);
                specialized >> prefix<A>(_:)();
                v234 = v233;
                v236 = v235;
                outlined destroy of CallControlsService?(v51, &_s15ConversationKit11ParticipantVSgMd);
                *(v227 + 96) = MEMORY[0x1E69E6158];
                *(v227 + 104) = v231;
                *(v227 + 72) = v234;
                *(v227 + 80) = v236;
                v237 = v384;
                _s15ConversationKit11ParticipantVWOcTm_17(v384, v51);
                __swift_storeEnumTagSinglePayload(v51, 0, 1, v19);
                specialized >> prefix<A>(_:)();
                v239 = v238;
                v241 = v240;
                outlined destroy of CallControlsService?(v51, &_s15ConversationKit11ParticipantVSgMd);
                *(v227 + 136) = MEMORY[0x1E69E6158];
                *(v227 + 144) = v231;
                *(v227 + 112) = v239;
                *(v227 + 120) = v241;
                static os_log_type_t.default.getter();
                os_log(_:dso:log:type:_:)();

                _s15ConversationKit11ParticipantVWOhTm_18(v237, type metadata accessor for Participant);
                _s15ConversationKit11ParticipantVWOhTm_18(v383, type metadata accessor for Participant);
                v145 = v232;
                goto LABEL_141;
              }

              _s15ConversationKit11ParticipantVWOhTm_18(v153, type metadata accessor for Participant);
            }

LABEL_110:
            closure #1 in ConversationController.createNewParticipants(with:)(v140, v405);

            v145 = v140;
            goto LABEL_141;
          }

          if (v139 == 1)
          {
            v146 = v388;
            v147 = v405;
            v51 = v405;
            ConversationController.remoteParticipant(with:)(v138, v388);
            if (__swift_getEnumTagSinglePayload(v146, 1, v19) == 1)
            {
              outlined destroy of CallControlsService?(v146, &_s15ConversationKit11ParticipantVSgMd);
            }

            else
            {
              _s15ConversationKit11ParticipantVWObTm_8(v146, v131);
              v51 = v147;
              v151 = ConversationController.indexOfRemoteParticipant(with:)(v131 + *(v19 + 20));
              if ((v152 & 1) == 0)
              {
                v187 = v151;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantVGMd);
                v188 = *(v419 + 72);
                v189 = v131;
                v190 = (*(v419 + 80) + 32) & ~*(v419 + 80);
                v191 = swift_allocObject();
                *(v191 + 16) = v393;
                _s15ConversationKit11ParticipantVWOcTm_17(v189, v191 + v190);
                _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC15ConversationKit11ParticipantV_Tt0g5();
                Participant.withAssociatedParticipants(_:)(v192, v193, v194, v195, v196, v197, v198, v199, v371, v372, v373, v374, v375, v376, v377, *(&v377 + 1), v378, *(&v378 + 1), v379, v380);

                v200 = *(v147 + OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants);

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  specialized _ArrayBuffer._consumeAndCreateNew()();
                  v200 = v270;
                }

                if ((v187 & 0x8000000000000000) != 0)
                {
                  goto LABEL_233;
                }

                if (v187 >= *(v200 + 16))
                {
                  goto LABEL_235;
                }

                outlined assign with copy of Participant.State(v385, v200 + v190 + v188 * v187);
                ConversationController.remoteParticipants.setter(v200);
                if (one-time initialization token for conversationKit != -1)
                {
                  swift_once();
                }

                v416 = static OS_os_log.conversationKit;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
                v201 = swift_allocObject();
                *(v201 + 16) = v378;
                v202 = v395;
                v203 = v386;
                _s15ConversationKit11ParticipantVWOcTm_17(v395, v386);
                __swift_storeEnumTagSinglePayload(v203, 0, 1, v19);
                specialized >> prefix<A>(_:)();
                v205 = v204;
                v207 = v206;
                outlined destroy of CallControlsService?(v203, &_s15ConversationKit11ParticipantVSgMd);
                v208 = MEMORY[0x1E69E6158];
                *(v201 + 56) = MEMORY[0x1E69E6158];
                v209 = lazy protocol witness table accessor for type String and conformance String();
                *(v201 + 64) = v209;
                *(v201 + 32) = v205;
                *(v201 + 40) = v207;
                v51 = v385;
                _s15ConversationKit11ParticipantVWOcTm_17(v385, v203);
                __swift_storeEnumTagSinglePayload(v203, 0, 1, v19);
                specialized >> prefix<A>(_:)();
                v211 = v210;
                v213 = v212;
                outlined destroy of CallControlsService?(v203, &_s15ConversationKit11ParticipantVSgMd);
                *(v201 + 96) = v208;
                *(v201 + 104) = v209;
                *(v201 + 72) = v211;
                *(v201 + 80) = v213;
                static os_log_type_t.default.getter();
                os_log(_:dso:log:type:_:)();

                _s15ConversationKit11ParticipantVWOhTm_18(v51, type metadata accessor for Participant);
                _s15ConversationKit11ParticipantVWOhTm_18(v202, type metadata accessor for Participant);
                v145 = v399;
                goto LABEL_141;
              }

              _s15ConversationKit11ParticipantVWOhTm_18(v131, type metadata accessor for Participant);
            }

            v140 = v399;
            goto LABEL_110;
          }

          v140 = v399;
          if (v139 != 2)
          {
            goto LABEL_110;
          }

          if (one-time initialization token for conversationKit != -1)
          {
            swift_once();
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
          v51 = swift_allocObject();
          *(v51 + 16) = v393;
          v429[0] = v125;
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant);
          v141 = v125;
          v142 = String.init<A>(reflecting:)();
          v144 = v143;
          *(v51 + 56) = MEMORY[0x1E69E6158];
          *(v51 + 64) = lazy protocol witness table accessor for type String and conformance String();
          *(v51 + 32) = v142;
          *(v51 + 40) = v144;
          static os_log_type_t.default.getter();
          os_log(_:dso:log:type:_:)();

          v145 = v399;
LABEL_141:
          _s15ConversationKit11ParticipantVWOhTm_18(v145, type metadata accessor for Participant);
          v47 = v401;
          v50 = v400;
LABEL_142:
          v94 = v398;
          v95 = v397;
          v101 = v396;
          if ((v398 & 0x8000000000000000) == 0)
          {
            goto LABEL_45;
          }

          goto LABEL_51;
        }
      }
    }
  }

LABEL_144:
  outlined consume of Set<TUHandle>.Iterator._Variant();
  v273 = v402;
  v274 = v402[3];
  v275 = v402[4];
  __swift_project_boxed_opaque_existential_1(v402, v274);
  v276 = (*(v275 + 88))(v274, v275);
  v277 = v273[3];
  v278 = v273[4];
  v51 = __swift_project_boxed_opaque_existential_1(v273, v277);
  v279 = (*(v278 + 128))(v277, v278);
  specialized Set.union<A>(_:)(v279, v276, v280, v281, v282, v283, v284, v285, v371, v372, v373, v374, v375, v376, v377, *(&v377 + 1), v378, *(&v378 + 1), v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390);
  v287 = v286;
  if ((v286 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    v51 = &lazy cache variable for type metadata for TUConversationMember;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember);
    lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject, &lazy cache variable for type metadata for TUConversationMember);
    Set.Iterator.init(_cocoa:)();
    v287 = v429[0];
    v47 = v429[1];
    v288 = v429[2];
    v50 = v429[3];
    v289 = v429[4];
  }

  else
  {
    v50 = 0;
    v290 = -1 << *(v286 + 32);
    v47 = v286 + 56;
    v288 = ~v290;
    v291 = -v290;
    if (v291 < 64)
    {
      v292 = ~(-1 << v291);
    }

    else
    {
      v292 = -1;
    }

    v289 = (v292 & *(v286 + 56));
  }

  v407 = v288;
  v293 = (v288 + 64) >> 6;
  v411 = v47;
  v408 = v287;
  for (i = v293; (v287 & 0x8000000000000000) != 0; v293 = i)
  {
    v299 = __CocoaSet.Iterator.next()();
    if (!v299)
    {
      goto LABEL_219;
    }

    v420 = v299;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember);
    swift_dynamicCast();
    v298 = v421;
    v296 = v50;
    v297 = v289;
    if (!v421)
    {
      goto LABEL_219;
    }

LABEL_159:
    v413 = v297;
    v300 = [v298 handles];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
    v414 = lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, &lazy cache variable for type metadata for TUHandle);
    v51 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v301 = v51 & 0xC000000000000001;
    v418 = v298;
    if ((v51 & 0xC000000000000001) != 0)
    {
      v302 = __CocoaSet.startIndex.getter();
      v19 = v303;
      v304 = __CocoaSet.endIndex.getter();
      v306 = v305;
      v307 = MEMORY[0x1BFB21E50](v302, v19, v304, v305);
      outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v304, v306, 1);
      if (v307)
      {
        goto LABEL_167;
      }
    }

    else
    {
      v308 = 0;
      v309 = (v51 + 56);
      v302 = 1 << *(v51 + 32);
      v310 = (v302 + 63) >> 6;
      if (!v310)
      {
LABEL_165:
        v19 = *(v51 + 36);
LABEL_167:
        outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v302, v19, v301 != 0);

        goto LABEL_168;
      }

      while (!*v309)
      {
        v308 -= 64;
        --v310;
        ++v309;
        if (!v310)
        {
          goto LABEL_165;
        }
      }

      v311 = __clz(__rbit64(*v309));
      v19 = *(v51 + 36);
      if (v311 - v302 == v308)
      {
        goto LABEL_167;
      }

      v302 = v311 - v308;
    }

    v312 = v301 != 0;
    specialized Set.subscript.getter(v302, v19, v301 != 0, v51);
    v314 = v313;

    outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v302, v19, v312);
    v47 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
    v315 = v405;
    swift_beginAccess();
    v51 = *(v315 + v47);
    v415 = *(v51 + 16);
    if (v415)
    {
      v416 = (v51 + ((*(v419 + 80) + 32) & ~*(v419 + 80)));

      v316 = 0;
      v50 = v417;
      v317 = v394;
      v19 = v418;
      v412 = v51;
      v409 = v314;
      while (1)
      {
        if (v316 >= *(v51 + 16))
        {
          goto LABEL_226;
        }

        _s15ConversationKit11ParticipantVWOcTm_17(v416 + *(v419 + 72) * v316, v317);
        v318 = *(v317 + *(v50 + 28));
        if (!v318)
        {
          goto LABEL_184;
        }

        v319 = v318;
        v47 = [v19 handles];
        v320 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        if ((v320 & 0xC000000000000001) == 0)
        {
          break;
        }

        v321 = v319;
        v47 = __CocoaSet.contains(_:)();

        v51 = v412;
        _s15ConversationKit11ParticipantVWOhTm_18(v317, type metadata accessor for Participant);
        v50 = v417;
        v19 = v418;
        if (v47)
        {
LABEL_187:

          goto LABEL_188;
        }

LABEL_185:
        if (++v316 == v415)
        {

          v287 = v408;
          goto LABEL_193;
        }
      }

      if (*(v320 + 16))
      {
        v322 = NSObject._rawHashValue(seed:)(*(v320 + 40));
        v323 = ~(-1 << *(v320 + 32));
        while (1)
        {
          v324 = v322 & v323;
          if (((*(v320 + 56 + (((v322 & v323) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v322 & v323)) & 1) == 0)
          {
            break;
          }

          v47 = *(*(v320 + 48) + 8 * v324);
          v325 = static NSObject.== infix(_:_:)();

          v322 = v324 + 1;
          if (v325)
          {

            _s15ConversationKit11ParticipantVWOhTm_18(v394, type metadata accessor for Participant);
            v314 = v409;
            v19 = v418;
            v51 = v412;
            goto LABEL_187;
          }
        }

        v317 = v394;
        v314 = v409;
        v51 = v412;
      }

      v50 = v417;
      v19 = v418;
LABEL_184:
      _s15ConversationKit11ParticipantVWOhTm_18(v317, type metadata accessor for Participant);
      goto LABEL_185;
    }

    v50 = v417;
    v19 = v418;
LABEL_193:
    v326 = [v19 isOtherInvitedHandle];
    v327 = v402;
    if (v326)
    {
    }

    else
    {
      v328 = [v19 association];
      if (v328)
      {
        v329 = v328;
        if ([v328 type] == 2)
        {
          v330 = v327;
          v331 = v327[3];
          v332 = v330[4];
          __swift_project_boxed_opaque_existential_1(v330, v331);
          v333 = (*(v332 + 168))(v331, v332);
          if (v333)
          {
            v51 = v333;
            v334 = [v333 handle];
            v335 = [v329 handle];
            v336 = TUHandlesAreCanonicallyEqual();

            if (v336)
            {
              v337 = v314;
              if (one-time initialization token for conversationKit != -1)
              {
                swift_once();
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
              v338 = swift_allocObject();
              *(v338 + 16) = v393;
              v421 = v19;
              type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember);
              v339 = v19;
              v340 = String.init<A>(reflecting:)();
              v19 = v341;
              *(v338 + 56) = MEMORY[0x1E69E6158];
              *(v338 + 64) = lazy protocol witness table accessor for type String and conformance String();
              *(v338 + 32) = v340;
              *(v338 + 40) = v19;
              static os_log_type_t.default.getter();
              os_log(_:dso:log:type:_:)();

LABEL_188:

              v50 = v296;
              v289 = v413;
              goto LABEL_189;
            }

            v287 = v408;
          }

          if (([v329 isPrimary] & 1) == 0)
          {
            v350 = v314;
            v19 = v287;
            if (one-time initialization token for conversationKit != -1)
            {
              swift_once();
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
            v51 = swift_allocObject();
            *(v51 + 16) = v393;
            v351 = v418;
            v421 = v418;
            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember);
            v352 = v351;
            v353 = String.init<A>(reflecting:)();
            v355 = v354;
            *(v51 + 56) = MEMORY[0x1E69E6158];
            *(v51 + 64) = lazy protocol witness table accessor for type String and conformance String();
            *(v51 + 32) = v353;
            *(v51 + 40) = v355;
            static os_log_type_t.default.getter();
            os_log(_:dso:log:type:_:)();

            v50 = v296;
            v289 = v413;
            v287 = v19;
            goto LABEL_190;
          }

          v343 = v374;
          ConversationController.participant(fromMemberAssociation:)(v329, v374);
          if (__swift_getEnumTagSinglePayload(v343, 1, v50) != 1)
          {
            v409 = v314;
            v356 = v375;
            _s15ConversationKit11ParticipantVWObTm_8(v343, v375);
            if (one-time initialization token for conversationKit != -1)
            {
              swift_once();
            }

            v418 = static OS_os_log.conversationKit;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
            v357 = swift_allocObject();
            *(v357 + 16) = v378;
            v421 = v19;
            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember);
            v416 = v19;
            v358 = String.init<A>(reflecting:)();
            v360 = v359;
            *(v357 + 56) = MEMORY[0x1E69E6158];
            v361 = lazy protocol witness table accessor for type String and conformance String();
            *(v357 + 64) = v361;
            *(v357 + 32) = v358;
            *(v357 + 40) = v360;
            v362 = v376;
            _s15ConversationKit11ParticipantVWOcTm_17(v356, v376);
            v363 = v417;
            __swift_storeEnumTagSinglePayload(v362, 0, 1, v417);
            v364 = v362;
            v365 = v373;
            v51 = &_s15ConversationKit11ParticipantVSgMR;
            outlined init with copy of IDView<AvatarStackView, [UUID]>(v364, v373, &_s15ConversationKit11ParticipantVSgMd);
            if (__swift_getEnumTagSinglePayload(v365, 1, v363) == 1)
            {
              outlined destroy of CallControlsService?(v365, &_s15ConversationKit11ParticipantVSgMd);
              v19 = 0xE300000000000000;
              v366 = 7104878;
            }

            else
            {
              v51 = v372;
              _s15ConversationKit11ParticipantVWObTm_8(v365, v372);
              _s15ConversationKit11ParticipantVWOcTm_17(v51, v381);
              v366 = String.init<A>(reflecting:)();
              v19 = v367;
              _s15ConversationKit11ParticipantVWOhTm_18(v51, type metadata accessor for Participant);
            }

            outlined destroy of CallControlsService?(v376, &_s15ConversationKit11ParticipantVSgMd);
            *(v357 + 96) = MEMORY[0x1E69E6158];
            *(v357 + 104) = v361;
            *(v357 + 72) = v366;
            *(v357 + 80) = v19;
            static os_log_type_t.default.getter();
            os_log(_:dso:log:type:_:)();

            _s15ConversationKit11ParticipantVWOhTm_18(v375, type metadata accessor for Participant);
            v50 = v296;
            v289 = v413;
LABEL_189:
            v287 = v408;
            goto LABEL_190;
          }

          v344 = v287;
          outlined destroy of CallControlsService?(v343, &_s15ConversationKit11ParticipantVSgMd);
          if (one-time initialization token for conversationKit != -1)
          {
            swift_once();
          }

          static os_log_type_t.error.getter();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
          v345 = swift_allocObject();
          *(v345 + 16) = v393;
          v421 = v19;
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember);
          v346 = v19;
          v347 = String.init<A>(reflecting:)();
          v349 = v348;
          *(v345 + 56) = MEMORY[0x1E69E6158];
          *(v345 + 64) = lazy protocol witness table accessor for type String and conformance String();
          *(v345 + 32) = v347;
          *(v345 + 40) = v349;
          v19 = v418;
          os_log(_:dso:log:type:_:)();

          v327 = v402;
          v287 = v344;
        }

        else
        {
        }
      }

      v342 = v381;
      v51 = v405;
      ConversationController.createParticipant(for:conversation:)(v314, v327, v381);
      closure #1 in ConversationController.createNewParticipants(with:)(v342, v51);

      _s15ConversationKit11ParticipantVWOhTm_18(v342, type metadata accessor for Participant);
    }

LABEL_168:
    v50 = v296;
    v289 = v413;
LABEL_190:
    v47 = v411;
  }

  v294 = v50;
  v295 = v289;
  v296 = v50;
  if (!v289)
  {
    do
    {
      v296 = v294 + 1;
      if (__OFADD__(v294, 1))
      {
        goto LABEL_224;
      }

      if (v296 >= v293)
      {
        goto LABEL_219;
      }

      v295 = *(v47 + 8 * v296);
      ++v294;
    }

    while (!v295);
  }

  v297 = (v295 - 1) & v295;
  v298 = *(*(v287 + 48) + ((v296 << 9) | (8 * __clz(__rbit64(v295)))));
  if (v298)
  {
    goto LABEL_159;
  }

LABEL_219:

  return outlined consume of Set<TUHandle>.Iterator._Variant();
}

void ConversationController.updateRemoteParticipantsStates(with:)(void *a1)
{
  v2 = v1;
  v173 = a1;
  v157 = type metadata accessor for UUID();
  v3 = *(v157 - 8);
  v4 = MEMORY[0x1EEE9AC00](v157);
  v152 = &v145 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v156 = &v145 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v149 = &v145 - v8;
  v181 = type metadata accessor for Participant.State(0);
  v9 = MEMORY[0x1EEE9AC00](v181);
  v11 = &v145 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v151 = &v145 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v159 = &v145 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v158 = &v145 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v165 = &v145 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v172 = &v145 - v20;
  v169 = type metadata accessor for Participant(0);
  v175 = *(v169 - 8);
  v21 = MEMORY[0x1EEE9AC00](v169);
  v148 = &v145 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v162 = &v145 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v145 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v145 - v28;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_15ConversationKit11ParticipantV7elementtMd);
  MEMORY[0x1EEE9AC00](v170);
  v163 = (&v145 - v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_15ConversationKit11ParticipantV7elementtSgMd);
  v32 = MEMORY[0x1EEE9AC00](v31 - 8);
  v178 = &v145 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v182 = &v145 - v34;
  v35 = type metadata accessor for DispatchPredicate();
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v38 = (&v145 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v38 = static OS_dispatch_queue.main.getter();
  (*(v36 + 104))(v38, *MEMORY[0x1E69E8020], v35);
  v39 = _dispatchPreconditionTest(_:)();
  (*(v36 + 8))(v38, v35);
  if ((v39 & 1) == 0)
  {
    goto LABEL_82;
  }

  v40 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
  swift_beginAccess();
  v168 = v40;
  v41 = *(v2 + v40);
  v174 = *(v41 + 16);
  v42 = v2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
  v154 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callUUIDsAwaitingFirstRemoteVideoFrame;
  v166 = v41;

  v155 = v42;
  swift_beginAccess();
  v43 = 0;
  v161 = "participant as left: ";
  v146 = "g participant as waiting: ";
  v147 = "ipant as waiting: ";
  v150 = "ttributes:isLocallySharing:)";
  v153 = (v3 + 8);
  v167 = xmmword_1BC4BA940;
  v160 = v2;
  v164 = v11;
  v45 = v169;
  v44 = v170;
  v46 = v178;
  v47 = v182;
  while (1)
  {
    if (v43 == v174)
    {
      v48 = 1;
      v183 = v174;
    }

    else
    {
      if ((v43 & 0x8000000000000000) != 0)
      {
        goto LABEL_80;
      }

      if (v43 >= *(v166 + 16))
      {
        goto LABEL_81;
      }

      v49 = v43 + 1;
      v50 = v166 + ((*(v175 + 80) + 32) & ~*(v175 + 80)) + *(v175 + 72) * v43;
      v51 = *(v44 + 48);
      v52 = v163;
      *v163 = v43;
      _s15ConversationKit11ParticipantVWOcTm_17(v50, v52 + v51);
      v53 = v52;
      v46 = v178;
      outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v53, v178, &_sSi6offset_15ConversationKit11ParticipantV7elementtMd);
      v48 = 0;
      v183 = v49;
      v47 = v182;
    }

    __swift_storeEnumTagSinglePayload(v46, v48, 1, v44);
    outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v46, v47, &_sSi6offset_15ConversationKit11ParticipantV7elementtSgMd);
    if (__swift_getEnumTagSinglePayload(v47, 1, v44) == 1)
    {

      return;
    }

    v180 = *v47;
    _s15ConversationKit11ParticipantVWObTm_8(v47 + *(v44 + 48), v29);
    if (*&v29[*(v45 + 28)])
    {
      break;
    }

LABEL_70:
    _s15ConversationKit11ParticipantVWOhTm_18(v29, type metadata accessor for Participant);
    v43 = v183;
  }

  v171 = *(v45 + 28);
  v54 = v173;
  ConversationController.activeParticipant(correspondingTo:in:)(v29, v173);
  v184 = v55;
  ConversationController.pendingMember(correspondingTo:in:)(v29, v54);
  v179 = v56;
  if (v56)
  {
    _s15ConversationKit11ParticipantVWOcTm_17(v29, v172);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 2:
        v66 = type metadata accessor for Date();
        (*(*(v66 - 8) + 8))(v172, v66);
        goto LABEL_15;
      case 4:
        v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
        v71 = *(v70 + 48);
        v72 = v172;
        outlined consume of Participant.CopresenceInfo?(*(v172 + *(v70 + 64)), *(v172 + *(v70 + 64) + 8));
        v73 = v72 + v71;
        v44 = v170;
        outlined destroy of Participant.MediaInfo(v73);
        goto LABEL_12;
      case 6:
        goto LABEL_13;
      default:
LABEL_12:
        v65 = type metadata accessor for Date();
        EnumCaseMultiPayload = (*(*(v65 - 8) + 8))(v172, v65);
LABEL_13:
        Participant.asPendingAuthorization()(EnumCaseMultiPayload, v58, v59, v60, v61, v62, v63, v64, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156);
        v186[0] = 0;
        v186[1] = 0xE000000000000000;
        _StringGuts.grow(_:)(95);
        MEMORY[0x1BFB20B10](0xD00000000000005DLL, v161 | 0x8000000000000000);
        _print_unlocked<A, B>(_:_:)();
        v176 = v186[0];
        v177 = v186[1];
        break;
    }
  }

  else
  {
LABEL_15:
    _s15ConversationKit11ParticipantVWOcTm_17(v29, v165);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 4u:
        v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
        v75 = *(v74 + 48);
        v76 = v165;
        outlined consume of Participant.CopresenceInfo?(*(v165 + *(v74 + 64)), *(v165 + *(v74 + 64) + 8));
        outlined destroy of Participant.MediaInfo(v76 + v75);
        v77 = type metadata accessor for Date();
        (*(*(v77 - 8) + 8))(v76, v77);
        if (v184)
        {
          v68 = 0;
          goto LABEL_23;
        }

        Participant.asLeft()();
        v186[0] = 0;
        v186[1] = 0xE000000000000000;
        _StringGuts.grow(_:)(103);
        v112 = 0xD000000000000065;
        v113 = v146;
LABEL_47:
        MEMORY[0x1BFB20B10](v112, v113 | 0x8000000000000000);
        _print_unlocked<A, B>(_:_:)();
        v176 = v186[0];
        v177 = v186[1];
        v11 = v164;
        goto LABEL_48;
      case 6u:
        break;
      default:
        v67 = type metadata accessor for Date();
        (*(*(v67 - 8) + 8))(v165, v67);
        break;
    }

    v68 = v184 == 0;
    if (!(v179 | v184))
    {
      _s15ConversationKit11ParticipantVWOcTm_17(v29, v158);
      v68 = 1;
      switch(swift_getEnumCaseMultiPayload())
      {
        case 2u:
          v111 = type metadata accessor for Date();
          (*(*(v111 - 8) + 8))(v158, v111);
          Participant.asWaiting()();
          v186[0] = 0;
          v186[1] = 0xE000000000000000;
          _StringGuts.grow(_:)(76);
          v112 = 0xD00000000000004ALL;
          v113 = v147;
          goto LABEL_47;
        case 4u:
          v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
          v115 = *(v114 + 48);
          v116 = v158;
          outlined consume of Participant.CopresenceInfo?(*(v158 + *(v114 + 64)), *(v158 + *(v114 + 64) + 8));
          outlined destroy of Participant.MediaInfo(v116 + v115);
          break;
        case 6u:
          goto LABEL_23;
        default:
          break;
      }

      v69 = type metadata accessor for Date();
      (*(*(v69 - 8) + 8))(v158, v69);
    }

LABEL_23:
    v78 = v173[3];
    v79 = v173[4];
    __swift_project_boxed_opaque_existential_1(v173, v78);
    if ((*(v79 + 56))(v78, v79) == 3)
    {
      v80 = v173;
      v44 = v170;
      if (!v68)
      {
        v81 = v173[3];
        v82 = v173[4];
        __swift_project_boxed_opaque_existential_1(v173, v81);
        v83 = *(v82 + 56);
        v84 = v184;
        if (v83(v81, v82) == 3)
        {
          v2 = v160;
          ConversationController.updateActiveParticipant(_:with:in:)(v84, v29, v80, v27);

          v176 = 0;
          v177 = 0xE000000000000000;
          v11 = v164;
          v45 = v169;
          v44 = v170;
          v46 = v178;
          goto LABEL_49;
        }

        v2 = v160;
        v44 = v170;
        v46 = v178;
      }

      _s15ConversationKit11ParticipantVWOcTm_17(v29, v27);
      v176 = 0;
      v177 = 0xE000000000000000;
      v11 = v164;
      v45 = v169;
    }

    else
    {
      _s15ConversationKit11ParticipantVWOcTm_17(v29, v159);
      v85 = swift_getEnumCaseMultiPayload();
      v11 = v164;
      v86 = v151;
      v45 = v169;
      v87 = v162;
      switch(v85)
      {
        case 2:
          v102 = type metadata accessor for Date();
          (*(*(v102 - 8) + 8))(v159, v102);
          _s15ConversationKit11ParticipantVWOcTm_17(v29, v87);
          goto LABEL_30;
        case 4:
          v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
          v105 = *(v104 + 48);
          v106 = v159;
          outlined consume of Participant.CopresenceInfo?(*(v159 + *(v104 + 64)), *(v159 + *(v104 + 64) + 8));
          v107 = v106 + v105;
          v46 = v178;
          outlined destroy of Participant.MediaInfo(v107);
          goto LABEL_28;
        case 6:
          goto LABEL_29;
        default:
LABEL_28:
          v88 = type metadata accessor for Date();
          (*(*(v88 - 8) + 8))(v159, v88);
LABEL_29:
          Participant.asWaiting()();
          v87 = v162;
LABEL_30:
          _s15ConversationKit11ParticipantVWOcTm_17(v87, v86);
          switch(swift_getEnumCaseMultiPayload())
          {
            case 2u:
              v103 = type metadata accessor for Date();
              (*(*(v103 - 8) + 8))(v86, v103);
              goto LABEL_41;
            case 4u:
              v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
              v109 = *(v108 + 48);
              outlined consume of Participant.CopresenceInfo?(*(v86 + *(v108 + 64)), *(v86 + *(v108 + 64) + 8));
              v110 = v86 + v109;
              v87 = v162;
              outlined destroy of Participant.MediaInfo(v110);
              goto LABEL_31;
            case 6u:
              goto LABEL_32;
            default:
LABEL_31:
              v89 = type metadata accessor for Date();
              (*(*(v89 - 8) + 8))(v86, v89);
LABEL_32:
              v90 = *(v87 + *(v45 + 28));
              if (v90)
              {
                v91 = [v90 value];
                if (!v91)
                {
                  v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v91 = MEMORY[0x1BFB209B0](v92);
                }

                v93 = [v91 destinationIdIsTemporary];

                v87 = v162;
                if (v93)
                {
                  v101 = v148;
                  Participant.asKickable(_:)(0, v94, v95, v96, v97, v98, v99, v100, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156);
                  v87 = v162;
                  _s15ConversationKit11ParticipantVWOdTm_0(v101, v162);
                }
              }

LABEL_41:
              _s15ConversationKit11ParticipantVWOcTm_17(v87, v27);
              v186[0] = 0;
              v186[1] = 0xE000000000000000;
              _StringGuts.grow(_:)(68);
              MEMORY[0x1BFB20B10](0xD000000000000042, v150 | 0x8000000000000000);
              _print_unlocked<A, B>(_:_:)();
              v176 = v186[0];
              v177 = v186[1];
              _s15ConversationKit11ParticipantVWOhTm_18(v87, type metadata accessor for Participant);
              break;
          }

          break;
      }

LABEL_48:
      v44 = v170;
    }
  }

LABEL_49:
  ConversationController.updateAudioFrequencyController(with:from:)(v27);
  _s15ConversationKit11ParticipantVWOcTm_17(v27, v11);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
    v118 = *(v117 + 48);
    outlined consume of Participant.CopresenceInfo?(*&v11[*(v117 + 64)], *&v11[*(v117 + 64) + 8]);
    memcpy(v186, &v11[v118], sizeof(v186));
    v119 = type metadata accessor for Date();
    (*(*(v119 - 8) + 8))(v11, v119);
    if (v184)
    {
      v120 = v184;
      if (([v120 isVideoEnabled] & 1) == 0)
      {
        v127 = *(v155 + 8);
        ObjectType = swift_getObjectType();
        v129 = *(v127 + 232);
        swift_unknownObjectRetain();
        v130 = v156;
        v131 = ObjectType;
        v2 = v160;
        v132 = v127;
        v11 = v164;
        v129(v131, v132);
        v46 = v178;
        swift_unknownObjectRelease();
        v185 = *(v2 + v154);

        v133 = v149;
        specialized Set._Variant.remove(_:)();
        (*v153)(v130, v157);
        v134 = v133;
        v44 = v170;
        outlined destroy of CallControlsService?(v134, &_s10Foundation4UUIDVSgMd);
        ConversationController.callUUIDsAwaitingFirstRemoteVideoFrame.setter(v185);

        v45 = v169;
LABEL_58:
        outlined destroy of Participant.MediaInfo(v186);
        goto LABEL_59;
      }

      v45 = v169;
    }

    if (!v186[2] || (v186[3] & 1) == 0)
    {
      v121 = *(v155 + 8);
      v122 = swift_getObjectType();
      v123 = *(v121 + 232);
      swift_unknownObjectRetain();
      v124 = v122;
      v2 = v160;
      v125 = v121;
      v46 = v178;
      v123(v124, v125);
      v44 = v170;
      v11 = v164;
      swift_unknownObjectRelease();
      v185 = *(v2 + v154);

      v126 = v156;
      v45 = v169;
      specialized Set._Variant.insert(_:)();
      (*v153)(v126, v157);
      ConversationController.callUUIDsAwaitingFirstRemoteVideoFrame.setter(v185);
    }

    goto LABEL_58;
  }

  _s15ConversationKit11ParticipantVWOhTm_18(v11, type metadata accessor for Participant.State);
LABEL_59:
  static Participant.State.== infix(_:_:)();
  v47 = v182;
  if ((v135 & 1) != 0 && (static UUID.== infix(_:_:)() & 1) != 0 && (*&v29[v171] == 0) == (*&v27[*(v45 + 28)] == 0))
  {
    v140 = *(v45 + 24);
    v141 = &v27[v140];
    v142 = v27[v140];
    v143 = &v29[v140];
    if (v142 == *v143 && ((v141[1] ^ v143[1]) & 1) == 0 && ((v141[2] ^ v143[2]) & 1) == 0 && ((v141[3] ^ v143[3]) & 1) == 0 && ((v141[4] ^ v143[4]) & 1) == 0)
    {

      v139 = v184;
      v184 = v179;
LABEL_69:

      _s15ConversationKit11ParticipantVWOhTm_18(v27, type metadata accessor for Participant);
      goto LABEL_70;
    }
  }

  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v136 = swift_allocObject();
  *(v136 + 16) = v167;
  *(v136 + 56) = MEMORY[0x1E69E6158];
  *(v136 + 64) = lazy protocol witness table accessor for type String and conformance String();
  v137 = v177;
  *(v136 + 32) = v176;
  *(v136 + 40) = v137;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v138 = *(v2 + v168);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ArrayBuffer._consumeAndCreateNew()();
    v138 = v144;
  }

  v46 = v178;
  if ((v180 & 0x8000000000000000) == 0)
  {
    if (v180 >= *(v138 + 16))
    {
      goto LABEL_79;
    }

    outlined assign with copy of Participant.State(v27, v138 + ((*(v175 + 80) + 32) & ~*(v175 + 80)) + *(v175 + 72) * v180);
    ConversationController.remoteParticipants.setter(v138);
    ConversationController.postParticipantStateChangeCallbacks(for:updatedFrom:)(v27, v29);
    v139 = v179;
    v47 = v182;
    goto LABEL_69;
  }

  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
}

void ConversationController.updateRemoteParticipantsNames(with:)(void *a1)
{
  v2 = v1;
  v107 = a1;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v101 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v115 = &v90 - v6;
  v102 = type metadata accessor for Participant(0);
  v108 = *(v102 - 8);
  v7 = MEMORY[0x1EEE9AC00](v102);
  v93 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v92 = &v90 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v114 = &v90 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v90 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_15ConversationKit11ParticipantV7elementtMd);
  MEMORY[0x1EEE9AC00](v15);
  v94 = (&v90 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_15ConversationKit11ParticipantV7elementtSgMd);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = (&v90 - v21);
  v23 = type metadata accessor for DispatchPredicate();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = (&v90 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v26 = static OS_dispatch_queue.main.getter();
  (*(v24 + 104))(v26, *MEMORY[0x1E69E8020], v23);
  v27 = _dispatchPreconditionTest(_:)();
  (*(v24 + 8))(v26, v23);
  if ((v27 & 1) == 0)
  {
    goto LABEL_60;
  }

  v28 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
  swift_beginAccess();
  v98 = v28;
  v113 = v2;
  v29 = *(v2 + v28);
  v30 = *(v29 + 16);
  v91 = v14 + 8;
  v95 = v29;

  v31 = 0;
  v96 = xmmword_1BC4BB990;
  v32 = v102;
  v100 = v14;
  v99 = v15;
  v104 = v22;
  v105 = v20;
  for (i = v30; ; v30 = i)
  {
    if (v31 == v30)
    {
      v33 = 1;
      v31 = v30;
    }

    else
    {
      if ((v31 & 0x8000000000000000) != 0)
      {
        goto LABEL_58;
      }

      if (v31 >= *(v95 + 16))
      {
        goto LABEL_59;
      }

      v34 = v95 + ((*(v108 + 80) + 32) & ~*(v108 + 80)) + *(v108 + 72) * v31;
      v35 = *(v15 + 48);
      v36 = v94;
      *v94 = v31;
      _s15ConversationKit11ParticipantVWOcTm_17(v34, v36 + v35);
      outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v36, v20, &_sSi6offset_15ConversationKit11ParticipantV7elementtMd);
      v33 = 0;
      ++v31;
    }

    __swift_storeEnumTagSinglePayload(v20, v33, 1, v15);
    outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v20, v22, &_sSi6offset_15ConversationKit11ParticipantV7elementtSgMd);
    if (__swift_getEnumTagSinglePayload(v22, 1, v15) == 1)
    {

      return;
    }

    v37 = *v22;
    _s15ConversationKit11ParticipantVWObTm_8(v22 + *(v15 + 48), v14);
    v38 = static ConversationController.member(correspondingTo:in:)(v14, v107);
    v43 = v38;
    if (!v38)
    {
      v49 = 0;
      v51 = 0;
      v116 = 0;
      v53 = *&v91[*(v32 + 36)];
      goto LABEL_20;
    }

    v44 = v37;
    v45 = v38;
    v46 = outlined bridged method (ob) of @objc TUConversationLink.displayName.getter(v45, &selRef_nickname);
    v48 = v47;
    v49 = outlined bridged method (ob) of @objc TUConversationLink.displayName.getter([v45 handle], &selRef_siriDisplayName);
    v51 = v50;
    v52 = &v14[*(v32 + 36)];
    v53 = *(v52 + 1);
    v116 = v46;
    if (!v48)
    {
      v37 = v44;
LABEL_20:
      v48 = 0;
      if (v53)
      {
        goto LABEL_35;
      }

LABEL_21:
      v57 = *&v14[*(v32 + 28)];
      if (v57)
      {
        v58 = v49;
        v59 = outlined bridged method (ob) of @objc TUConversationLink.displayName.getter(v57, &selRef_siriDisplayName);
        if (v51)
        {
          v49 = v58;
          if (v60)
          {
            if (v58 == v59 && v51 == v60)
            {

LABEL_53:

LABEL_54:

              v22 = v104;
              v20 = v105;
              goto LABEL_51;
            }

            v112 = v37;
            v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v62)
            {
              goto LABEL_53;
            }

            v37 = v112;
            v49 = v58;
          }
        }

        else
        {
          if (!v60)
          {
            goto LABEL_54;
          }

          v49 = v58;
          v51 = 0;
        }
      }

      else if (!v51)
      {
        goto LABEL_54;
      }

      goto LABEL_35;
    }

    if (!v53)
    {
      v37 = v44;
      goto LABEL_35;
    }

    v54 = v46 == *v52 && v48 == v53;
    v37 = v44;
    if (v54)
    {
      goto LABEL_21;
    }

    v55 = v49;
    v56 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v49 = v55;
    if (v56)
    {
      goto LABEL_21;
    }

LABEL_35:
    v63 = v37;
    v111 = v43;
    v112 = v31;
    v110 = v49;
    Participant.withNames(nickname:siriDisplayName:)(v116, v48, v49, v51, v39, v40, v41, v42, v90, v91, v92, v93, v94, v95, v96, *(&v96 + 1), v97, v98, v99, v100);
    v64 = v14;
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v65 = static OS_os_log.conversationKit;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v66 = swift_allocObject();
    *(v66 + 16) = v96;
    v67 = v64;
    v68 = v115;
    _s15ConversationKit11ParticipantVWOcTm_17(v67, v115);
    __swift_storeEnumTagSinglePayload(v68, 0, 1, v32);
    v69 = v68;
    v70 = v101;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v69, v101, &_s15ConversationKit11ParticipantVSgMd);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v70, 1, v32);
    v109 = v65;
    if (EnumTagSinglePayload == 1)
    {
      outlined destroy of CallControlsService?(v70, &_s15ConversationKit11ParticipantVSgMd);
      v72 = 0xE300000000000000;
      v73 = 7104878;
    }

    else
    {
      v74 = v92;
      _s15ConversationKit11ParticipantVWObTm_8(v70, v92);
      _s15ConversationKit11ParticipantVWOcTm_17(v74, v93);
      v73 = String.init<A>(reflecting:)();
      v72 = v75;
      _s15ConversationKit11ParticipantVWOhTm_18(v74, type metadata accessor for Participant);
    }

    outlined destroy of CallControlsService?(v115, &_s15ConversationKit11ParticipantVSgMd);
    v76 = MEMORY[0x1E69E6158];
    *(v66 + 56) = MEMORY[0x1E69E6158];
    v77 = lazy protocol witness table accessor for type String and conformance String();
    *(v66 + 64) = v77;
    *(v66 + 32) = v73;
    *(v66 + 40) = v72;
    v117 = v63;
    v78 = String.init<A>(reflecting:)();
    *(v66 + 96) = v76;
    *(v66 + 104) = v77;
    *(v66 + 72) = v78;
    *(v66 + 80) = v79;
    v80 = v111;
    if (v48)
    {
      v117 = v116;
      v118 = v48;
      v81 = String.init<A>(reflecting:)();
    }

    else
    {
      v82 = 0xE300000000000000;
      v81 = 7104878;
    }

    v83 = v113;
    v20 = v105;
    v84 = v110;
    *(v66 + 136) = v76;
    *(v66 + 144) = v77;
    *(v66 + 112) = v81;
    *(v66 + 120) = v82;
    v15 = v99;
    if (v51)
    {
      v117 = v84;
      v118 = v51;
      v85 = String.init<A>(reflecting:)();
    }

    else
    {
      v86 = 0xE300000000000000;
      v85 = 7104878;
    }

    v22 = v104;
    *(v66 + 176) = v76;
    *(v66 + 184) = v77;
    *(v66 + 152) = v85;
    *(v66 + 160) = v86;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v87 = *(v83 + v98);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew()();
      v87 = v89;
    }

    v32 = v102;
    v14 = v100;
    v31 = v112;
    if ((v63 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v63 >= *(v87 + 16))
    {
      goto LABEL_57;
    }

    v88 = v114;
    outlined assign with copy of Participant.State(v114, v87 + ((*(v108 + 80) + 32) & ~*(v108 + 80)) + *(v108 + 72) * v63);
    ConversationController.remoteParticipants.setter(v87);
    ConversationController.didUpdateVisibleParticipant(_:)(v88);

    _s15ConversationKit11ParticipantVWOhTm_18(v88, type metadata accessor for Participant);
LABEL_51:
    _s15ConversationKit11ParticipantVWOhTm_18(v14, type metadata accessor for Participant);
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
}

uint64_t ConversationController.updateLocalMemberAuthorizedToChangeGroupMembership(with:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Participant(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v25 - v8;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v13 = static OS_dispatch_queue.main.getter();
  (*(v11 + 104))(v13, *MEMORY[0x1E69E8020], v10);
  v14 = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v13, v10);
  if ((v14 & 1) == 0)
  {
    __break(1u);
LABEL_8:
    swift_once();
    goto LABEL_4;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  LOBYTE(a1) = Conversation.isLocalMemberAuthorizedToChangeGroupMembership()();
  v10 = v2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant;
  result = swift_beginAccess();
  if ((a1 & 1) == *(v10 + *(v4 + 60)))
  {
    return result;
  }

  if (one-time initialization token for conversationKit != -1)
  {
    goto LABEL_8;
  }

LABEL_4:
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
  _s15ConversationKit11ParticipantVWOcTm_17(v10, v7);
  Participant.asAuthorizedToChangeGroupMembership(_:)(a1 & 1, v16, v17, v18, v19, v20, v21, v22, v25[0], v25[1], v25[2], v25[3], v25[4], v25[5], v25[6], v25[7], v25[8], v25[9], v25[10], v25[11]);
  _s15ConversationKit11ParticipantVWOhTm_18(v7, type metadata accessor for Participant);
  swift_beginAccess();
  _s15ConversationKit11ParticipantVWOdTm_0(v9, v10);
  swift_endAccess();
  v23 = (v2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateLocalMemberAuthorizedToChangeGroupMembership);
  result = swift_beginAccess();
  v24 = *v23;
  if (*v23)
  {

    v24(a1 & 1);
    return outlined consume of (@escaping @callee_guaranteed () -> ())?(v24);
  }

  return result;
}

uint64_t ConversationController.updateParticipantsForcedToShowAsNeedingAuthorization()()
{
  v1 = v0;
  v2 = type metadata accessor for Participant(0);
  v3 = *(v2 - 8);
  v51 = v2;
  v52 = v3;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v42 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v41 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v41 - v9;
  if (one-time initialization token for shared != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v11 = (*(*static Defaults.shared + 712))();
    v12 = v11;
    v48 = *(v11 + 16);
    if (!v48)
    {
      break;
    }

    v41 = v8;
    v13 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
    v46 = v11 + 32;
    swift_beginAccess();
    v14 = 0;
    v44 = v13;
    v45 = v1;
    v43 = v12;
    while (1)
    {
      if (v14 >= *(v12 + 16))
      {
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v15 = *(v1 + v13);
      v16 = *(v15 + 16);
      if (v16)
      {
        break;
      }

LABEL_20:
      if (++v14 == v48)
      {
      }
    }

    v49 = v14;
    v17 = (v46 + 16 * v14);
    v18 = v17[1];
    v50 = *v17;
    v47 = (*(v52 + 80) + 32) & ~*(v52 + 80);
    v1 = v15 + v47;

    v19 = 0;
    while (1)
    {
      if (v19 >= *(v15 + 16))
      {
        __break(1u);
        goto LABEL_26;
      }

      v8 = *(v52 + 72) * v19;
      _s15ConversationKit11ParticipantVWOcTm_17(v1 + v8, v10);
      v20 = *&v10[*(v51 + 28)];
      if (!v20)
      {
        _s15ConversationKit11ParticipantVWOhTm_18(v10, type metadata accessor for Participant);
        goto LABEL_12;
      }

      v21 = [v20 value];
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      v55 = v22;
      v56 = v24;
      v53 = v50;
      v54 = v18;
      lazy protocol witness table accessor for type String and conformance String();
      v25 = StringProtocol.caseInsensitiveCompare<A>(_:)();

      _s15ConversationKit11ParticipantVWOhTm_18(v10, type metadata accessor for Participant);
      if (!v25)
      {
        break;
      }

LABEL_12:
      if (v16 == ++v19)
      {

        v13 = v44;
        v1 = v45;
LABEL_19:
        v12 = v43;
        v14 = v49;
        goto LABEL_20;
      }
    }

    v13 = v44;
    v1 = v45;
    v26 = *(v45 + v44);
    if (v19 >= *(v26 + 16))
    {
      goto LABEL_27;
    }

    v27 = v47;
    v28 = v42;
    v29 = _s15ConversationKit11ParticipantVWOcTm_17(v26 + v47 + v8, v42);
    v30 = v41;
    Participant.asPendingAuthorization()(v29, v31, v32, v33, v34, v35, v36, v37, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52);
    _s15ConversationKit11ParticipantVWOhTm_18(v28, type metadata accessor for Participant);
    v38 = *(v1 + v13);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew()();
      v38 = v39;
    }

    if (v19 < *(v38 + 16))
    {
      _s15ConversationKit11ParticipantVWOdTm_0(v30, v38 + v27 + v8);
      ConversationController.remoteParticipants.setter(v38);
      goto LABEL_19;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    swift_once();
  }
}

uint64_t ConversationController.updateOtherInvitedParticipants()()
{
  v1 = v0;
  v2 = type metadata accessor for Participant(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v9 = static OS_dispatch_queue.main.getter();
  (*(v7 + 104))(v9, *MEMORY[0x1E69E8020], v6);
  v10 = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v9, v6);
  if (v10)
  {
    ConversationController.lookupActiveConversation()();
    if (v34)
    {
      outlined init with take of TapInteractionHandler(&v33, v35);
      v12 = OBJC_IVAR____TtC15ConversationKit22ConversationController_otherInvitedParticipants;
      swift_beginAccess();
      v13 = *(v1 + v12);
      v14 = *(v13 + 16);
      v15 = MEMORY[0x1E69E7CC0];
      if (v14)
      {
        v31 = v12;
        v32 = MEMORY[0x1E69E7CC0];

        specialized ContiguousArray.reserveCapacity(_:)();
        v16 = v13 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
        v17 = *(v3 + 72);
        do
        {
          _s15ConversationKit11ParticipantVWOcTm_17(v16, v5);
          v18 = *&v5[*(v2 + 28)];
          if (v18)
          {
            v19 = v18;
          }

          _s15ConversationKit11ParticipantVWOhTm_18(v5, type metadata accessor for Participant);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v16 += v17;
          --v14;
        }

        while (v14);

        v12 = v31;
        v15 = v32;
      }

      v20 = v36;
      v21 = v37;
      __swift_project_boxed_opaque_existential_1(v35, v36);
      v22 = (*(v21 + 152))(v20, v21);
      v23 = specialized Set._Variant.filter(_:)(v22, v15);
      v24 = specialized Set.isEmpty.getter();
      if (v24)
      {
      }

      else
      {
        MEMORY[0x1EEE9AC00](v24);
        *(&v30 - 2) = v35;
        _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo8TUHandleCG_15ConversationKit11ParticipantVs5NeverOTg5(partial apply for closure #3 in ConversationController.updateOtherInvitedParticipants(), (&v30 - 4), v23);
        v26 = v25;

        v32 = *(v1 + v12);

        specialized Array.append<A>(contentsOf:)(v27);
        ConversationController.remoteParticipants.setter(v32);
        v28 = (v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didInviteOtherParticipants);
        swift_beginAccess();
        v29 = *v28;
        if (*v28)
        {

          v29(v26);
          outlined consume of (@escaping @callee_guaranteed () -> ())?(v29);
        }
      }

      return __swift_destroy_boxed_opaque_existential_1(v35);
    }

    else
    {
      return outlined destroy of CallControlsService?(&v33, &_s15ConversationKit0A0_pSgMd);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ConversationController.videoProviderForResizingLocal.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v24 - v5);
  ConversationController.remoteOneToOneParticipant.getter();
  v7 = type metadata accessor for Participant(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    v8 = &_s15ConversationKit11ParticipantVSgMd;
    v9 = v6;
LABEL_3:
    outlined destroy of CallControlsService?(v9, v8);
    goto LABEL_9;
  }

  Participant.videoInfo.getter();
  _s15ConversationKit11ParticipantVWOhTm_18(v6, type metadata accessor for Participant);
  if (!v30)
  {
    goto LABEL_9;
  }

  v10 = v31;
  specialized Dictionary.subscript.getter();
  if (!v26)
  {
    outlined destroy of CallControlsService?(&v30, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
    v8 = &_s15ConversationKit24ParticipantVideoProvider_pSgMd;
    v9 = &v25;
    goto LABEL_3;
  }

  outlined init with take of TapInteractionHandler(&v25, &v27);
  v11 = ConversationController.isOneToOneModeEnabled.getter();
  outlined destroy of CallControlsService?(&v30, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
  if ((v11 & 1) != 0 && (v10 & 1) == 0)
  {
    return outlined init with take of TapInteractionHandler(&v27, a1);
  }

  __swift_destroy_boxed_opaque_existential_1(&v27);
LABEL_9:
  v12 = (v2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter);
  swift_beginAccess();
  v13 = v12[3];
  v14 = v12[4];
  v15 = __swift_project_boxed_opaque_existential_1(v12, v13);
  v16 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v24 - v17;
  (*(v16 + 16))(&v24 - v17);
  (*(v14 + 32))(&v27, v13, v14);
  (*(v16 + 8))(v18, v13);
  v19 = v28;
  v20 = v29;
  v21 = __swift_project_boxed_opaque_existential_1(&v27, v28);
  a1[3] = v19;
  a1[4] = v20;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  (*(*(v19 - 8) + 16))(boxed_opaque_existential_1, v21, v19);
  return __swift_destroy_boxed_opaque_existential_1(&v27);
}

void ConversationController.activeParticipant(correspondingTo:in:)(uint64_t a1, void *a2)
{
  v3 = a1 + *(type metadata accessor for Participant(0) + 28);
  v4 = *v3;
  if (*v3)
  {
    if (*(v3 + 16))
    {
      v5 = a2[3];
      v6 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, v5);
      v43 = v4;
      active = Conversation.displayableActiveParticipants.getter(v5, v6);
      if ((active & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        __CocoaSet.makeIterator()();
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant);
        lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationParticipant and conformance NSObject, &lazy cache variable for type metadata for TUConversationParticipant);
        Set.Iterator.init(_cocoa:)();
        v9 = v45;
        v8 = v46;
        v11 = v47;
        v10 = v48;
        v12 = v49;
      }

      else
      {
        v22 = -1 << *(active + 32);
        v8 = active + 56;
        v11 = ~v22;
        v23 = -v22;
        if (v23 < 64)
        {
          v24 = ~(-1 << v23);
        }

        else
        {
          v24 = -1;
        }

        v12 = v24 & *(active + 56);
        v10 = 0;
      }

      v42 = v11;
      v25 = (v11 + 64) >> 6;
      if (v9 < 0)
      {
        goto LABEL_19;
      }

LABEL_13:
      v26 = v10;
      v27 = v12;
      v28 = v10;
      if (!v12)
      {
        while (1)
        {
          v28 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            break;
          }

          if (v28 >= v25)
          {
            goto LABEL_24;
          }

          v27 = *(v8 + 8 * v28);
          ++v26;
          if (v27)
          {
            goto LABEL_17;
          }
        }

        __break(1u);
LABEL_45:
        __break(1u);
        return;
      }

LABEL_17:
      v29 = (v27 - 1) & v27;
      v30 = *(*(v9 + 48) + ((v28 << 9) | (8 * __clz(__rbit64(v27)))));
      if (v30)
      {
        do
        {
          v31 = [v30 handle];
          v32 = [v31 isEqualToHandle_];

          if (v32)
          {
            break;
          }

          v10 = v28;
          v12 = v29;
          if ((v9 & 0x8000000000000000) == 0)
          {
            goto LABEL_13;
          }

LABEL_19:
          if (!__CocoaSet.Iterator.next()())
          {
            break;
          }

          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant);
          swift_dynamicCast();
          v30 = v44;
          v28 = v10;
          v29 = v12;
        }

        while (v44);
      }

LABEL_24:
    }

    else
    {
      v13 = *(v3 + 8);
      v14 = a2[3];
      v15 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, v14);
      v16 = Conversation.displayableActiveParticipants.getter(v14, v15);
      if ((v16 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        __CocoaSet.makeIterator()();
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant);
        lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationParticipant and conformance NSObject, &lazy cache variable for type metadata for TUConversationParticipant);
        Set.Iterator.init(_cocoa:)();
        v18 = v45;
        v17 = v46;
        v19 = v47;
        v20 = v48;
        v21 = v49;
      }

      else
      {
        v33 = -1 << *(v16 + 32);
        v17 = v16 + 56;
        v19 = ~v33;
        v34 = -v33;
        if (v34 < 64)
        {
          v35 = ~(-1 << v34);
        }

        else
        {
          v35 = -1;
        }

        v21 = v35 & *(v16 + 56);
        v20 = 0;
      }

      v36 = (v19 + 64) >> 6;
      if (v18 < 0)
      {
        goto LABEL_36;
      }

LABEL_30:
      v37 = v20;
      v38 = v21;
      for (i = v20; !v38; ++v37)
      {
        i = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          goto LABEL_45;
        }

        if (i >= v36)
        {
          goto LABEL_41;
        }

        v38 = *(v17 + 8 * i);
      }

      v40 = (v38 - 1) & v38;
      v41 = *(*(v18 + 48) + ((i << 9) | (8 * __clz(__rbit64(v38)))));
      if (v41)
      {
        do
        {
          if ([v41 identifier] == v13)
          {
            break;
          }

          v20 = i;
          v21 = v40;
          if ((v18 & 0x8000000000000000) == 0)
          {
            goto LABEL_30;
          }

LABEL_36:
          if (!__CocoaSet.Iterator.next()())
          {
            break;
          }

          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant);
          swift_dynamicCast();
          v41 = v44;
          i = v20;
          v40 = v21;
        }

        while (v44);
      }
    }

LABEL_41:
    outlined consume of Set<TUHandle>.Iterator._Variant();
  }
}

void ConversationController.scheduleResetVideoInfo(for:after:)()
{
  OUTLINED_FUNCTION_48_2();
  v4 = v0;
  v121 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_1();
  v111 = v8;
  OUTLINED_FUNCTION_4_24();
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  v109 = v10;
  v110 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_16(v11);
  v108 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v107 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_16(v14);
  v118 = type metadata accessor for DispatchTime();
  OUTLINED_FUNCTION_1();
  v106 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_32();
  v116 = v19;
  OUTLINED_FUNCTION_4_24();
  v119 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  v104 = v23;
  OUTLINED_FUNCTION_10(&v97 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v25 = OUTLINED_FUNCTION_22(v24);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_4();
  v117 = v26;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_170_4();
  v28 = type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v30 = v29;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_35_6();
  v33 = MEMORY[0x1EEE9AC00](v32);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_83_1();
  Date.init()();
  Date.addingTimeInterval(_:)();
  v34 = *(v30 + 8);
  v35 = OUTLINED_FUNCTION_252();
  v34(v35);
  v36 = OBJC_IVAR____TtC15ConversationKit22ConversationController_scheduledVideoInfoResetDates;
  swift_beginAccess();
  v120 = v4;
  v115 = v36;
  v37 = v121;
  specialized Dictionary.subscript.getter();
  OUTLINED_FUNCTION_115(v3, 1, v28);
  v112 = v34;
  v113 = v30 + 8;
  if (v38)
  {
    outlined destroy of CallControlsService?(v3, &_s10Foundation4DateVSgMd);
    swift_endAccess();
    v39 = v28;
  }

  else
  {
    v40 = OUTLINED_FUNCTION_299();
    v41(v40);
    swift_endAccess();
    OUTLINED_FUNCTION_258_0();
    v42 = static Date.> infix(_:_:)();
    (v34)(v1, v28);
    v39 = v28;
    if (v42)
    {
      goto LABEL_8;
    }
  }

  v114 = *(v21 + 16);
  v43 = v105;
  v114(v105, v37, v119);
  v44 = *(v30 + 16);
  v45 = v117;
  v100 = v2;
  v44(v117, v2, v39);
  OUTLINED_FUNCTION_12();
  v101 = v39;
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v39);
  OUTLINED_FUNCTION_30_2();
  specialized Dictionary.subscript.setter();
  swift_endAccess();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v99 = static OS_dispatch_queue.main.getter();
  v49 = v102;
  static DispatchTime.now()();
  OUTLINED_FUNCTION_417_0();
  + infix(_:_:)();
  v50 = *(v106 + 8);
  v50(v49, v118);
  v98 = v50;
  + infix(_:_:)();
  v51 = OUTLINED_FUNCTION_46();
  (v50)(v51);
  OUTLINED_FUNCTION_20();
  v52 = swift_allocObject();
  OUTLINED_FUNCTION_247_0(v52);
  swift_unknownObjectWeakInit();
  v53 = OUTLINED_FUNCTION_77_1();
  v54 = v119;
  v106 = v21 + 16;
  (v114)(v53);
  v55 = (*(v21 + 80) + 24) & ~*(v21 + 80);
  v56 = swift_allocObject();
  *(v56 + 16) = v45;
  v57 = v43;
  v58 = v54;
  (*(v21 + 32))(v56 + v55, v57, v54);
  v122[4] = partial apply for closure #1 in ConversationController.scheduleResetVideoInfo(for:after:);
  v122[5] = v56;
  v122[0] = MEMORY[0x1E69E9820];
  v122[1] = 1107296256;
  v122[2] = thunk for @escaping @callee_guaranteed () -> ();
  v122[3] = &block_descriptor_161;
  v59 = _Block_copy(v122);

  OUTLINED_FUNCTION_502();
  static DispatchQoS.unspecified.getter();
  v122[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_3_164();
  v62 = lazy protocol witness table accessor for type ConversationController and conformance ConversationController(v60, v61);
  v63 = OUTLINED_FUNCTION_325_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v63);
  OUTLINED_FUNCTION_9_8();
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v64, v65);
  OUTLINED_FUNCTION_462();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v66 = v116;
  v67 = OUTLINED_FUNCTION_62_0();
  v68 = v99;
  MEMORY[0x1BFB21510](v67);
  _Block_release(v59);

  v69 = OUTLINED_FUNCTION_157();
  v70(v69);
  OUTLINED_FUNCTION_23_26();
  v71(v21 + 16, v108);
  v98(v66, v118);
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  OUTLINED_FUNCTION_194();
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_1BC4BAA20;
  v73 = v115;
  swift_beginAccess();
  v74 = v117;
  specialized Dictionary.subscript.getter();
  swift_endAccess();
  specialized >> prefix<A>(_:)(v74, v75, v76, v77, v78, v79, v80, v81, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106);
  OUTLINED_FUNCTION_213();
  outlined destroy of CallControlsService?(v74, &_s10Foundation4DateVSgMd);
  v82 = MEMORY[0x1E69E6158];
  *(v72 + 56) = MEMORY[0x1E69E6158];
  v83 = lazy protocol witness table accessor for type String and conformance String();
  *(v72 + 64) = v83;
  *(v72 + 32) = v73;
  *(v72 + 40) = v62;
  v84 = v111;
  v85 = OUTLINED_FUNCTION_2_100();
  (v114)(v85);
  v86 = OUTLINED_FUNCTION_127_2();
  __swift_storeEnumTagSinglePayload(v86, v87, v88, v58);
  specialized >> prefix<A>(_:)(v84, v89, v90, v91, v92, v93, v94, v95, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106);
  OUTLINED_FUNCTION_213();
  outlined destroy of CallControlsService?(v84, &_s10Foundation4UUIDVSgMd);
  *(v72 + 96) = v82;
  *(v72 + 104) = v83;
  *(v72 + 72) = v73;
  *(v72 + 80) = v62;
  static os_log_type_t.default.getter();
  OUTLINED_FUNCTION_41_0();
  os_log(_:dso:log:type:_:)();

LABEL_8:
  v96 = OUTLINED_FUNCTION_281();
  v112(v96);
  OUTLINED_FUNCTION_20_6();
}

uint64_t ConversationController.updateActiveParticipant(_:with:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v144 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v143 = &v132 - v8;
  v9 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v132 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 isVideoEnabled] && objc_msgSend(a1, sel_streamToken))
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v141.i32[0] = (*(*static Defaults.shared + 152))();
  }

  else
  {
    v141.i32[0] = 0;
  }

  if ([a1 isScreenEnabled])
  {
    v12 = [a1 screenToken] != 0;
  }

  else
  {
    v12 = 0;
  }

  v13 = a3;
  v14 = v149;
  ConversationController.copresenceInfo(for:in:)(a1, v13, v173);
  v15 = *(v14 + OBJC_IVAR____TtC15ConversationKit22ConversationController_mode);
  if (v15 == 1)
  {
    v16 = ConversationController.captionsProvider(for:token:)(a2, [a1 captionsToken]);
    v18 = MEMORY[0x1E69E7CC0];
    if (v16)
    {
      v19 = v16;
    }

    else
    {
      v19 = 0;
    }

    if (v16)
    {
      v20 = v17;
    }

    else
    {
      v20 = 0;
    }

    v147 = v20;
    v148 = v19;
    if (!v16)
    {
      v18 = 0;
    }

    v146 = v18;
  }

  else
  {
    v147 = 0;
    v148 = 0;
    v146 = 0;
  }

  v21 = a1;
  LODWORD(v142) = Participant.AVInfo.init(for:)(v21);
  v23 = v22;
  v145 = a2;
  if (v12)
  {
    v140 = v22;
    if (v15 == 2)
    {
      ConversationController.remoteVideoClient(for:ofType:token:)(a2, 3, [v21 screenToken], &v157);
      v24 = Participant.screenState.getter();
      v139 = v11;
      if (v24 == 2)
      {
        LODWORD(v137) = 0;
        v136 = 0;
      }

      else
      {
        HIDWORD(v136) = HIWORD(v24) & 1;
        LODWORD(v137) = (v24 >> 8) & 1;
        LODWORD(v136) = HIBYTE(v24) & 1;
      }

      v31 = *(&v158 + 1);
      v32 = v159;
      __swift_project_boxed_opaque_existential_1(&v157, *(&v158 + 1));
      LODWORD(v135) = (*(v32 + 16))(v31, v32);
      v33 = *(&v158 + 1);
      v34 = v159;
      __swift_project_boxed_opaque_existential_1(&v157, *(&v158 + 1));
      v35 = (*(v34 + 40))(v33, v34);
      if ((v35 & 0x100000000) != 0)
      {
        LODWORD(v35) = 0;
      }

      v36 = VideoAttributeOrientation.deviceOrientation.getter(v35);
      v37 = (v149 + OBJC_IVAR____TtC15ConversationKit22ConversationController_latestRemoteAttributes);
      if (*(v149 + OBJC_IVAR____TtC15ConversationKit22ConversationController_latestRemoteAttributes + 96))
      {
        v38 = 0;
      }

      else
      {
        v38 = v37[9];
      }

      v39 = *(&v158 + 1);
      v40 = v159;
      __swift_project_boxed_opaque_existential_1(&v157, *(&v158 + 1));
      v41 = COERCE_DOUBLE((*(v40 + 80))(v39, v40));
      if (v43)
      {
        v44 = 0.0;
      }

      else
      {
        v44 = v41;
      }

      if (v43)
      {
        v45 = 0.0;
      }

      else
      {
        v45 = v42;
      }

      *&v134[4] = v36;
      v46 = ConversationController.remoteOrientationFor(aspectRatio:videoRotation:deviceFamily:)(v36, v38, v44, v45);
      v47 = *(&v158 + 1);
      v48 = v159;
      __swift_project_boxed_opaque_existential_1(&v157, *(&v158 + 1));
      (*(v48 + 64))(v174, v47, v48);
      v49 = *&v174[2];
      v50 = *&v174[3];
      if (v175)
      {
        v49 = 0.0;
        v50 = 0.0;
      }

      if (v45 >= v44)
      {
        v51 = v44;
      }

      else
      {
        v51 = v45;
      }

      if (v44 > v45)
      {
        v52 = v44;
      }

      else
      {
        v52 = v45;
      }

      v53 = ceil(v51 * v49);
      v54 = ceil(v52 * v50);
      v55 = ceil(v52 * v49);
      v56 = ceil(v51 * v50);
      outlined init with copy of CallCenterProvider(&v157, v156);
      memcpy(v150, v37, 0x61uLL);
      v57 = *(&v158 + 1);
      v58 = v159;
      __swift_project_boxed_opaque_existential_1(&v157, *(&v158 + 1));
      v59 = (*(v58 + 72))(v57, v58);
      v160 = 0u;
      v161 = 0u;
      v162 = 0;
      LOBYTE(v155[0]) = 1;
      memset(v172, 0, 96);
      v172[96] = 1;
      outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(v156, &v160, &_s15ConversationKit24ParticipantVideoProvider_pSgMd);
      v163 = v135 & 1;
      v164 = v137;
      v165 = BYTE4(v136);
      v166 = v136;
      memcpy(v172, v150, sizeof(v172));
      v167.i64[0] = v46;
      v167.i64[1] = *&v134[4];
      *&v168 = v53;
      *(&v168 + 1) = v54;
      *&v169 = v55;
      *(&v169 + 1) = v56;
      v170 = 0;
      v171 = *&v59;
      __swift_destroy_boxed_opaque_existential_1(&v157);
      v11 = v139;
    }

    else
    {
      v138 = v9;
      v25 = v11;
      v26 = Participant.screenState.getter();
      if (v26 == 2)
      {
        LOBYTE(v27) = 0;
        LOBYTE(v28) = 0;
        LOBYTE(v29) = 0;
        v30 = 1;
      }

      else
      {
        v30 = v26;
        v27 = (v26 >> 8) & 1;
        v28 = HIWORD(v26) & 1;
        v29 = HIBYTE(v26) & 1;
      }

      v159 = 0;
      v157 = 0u;
      v158 = 0u;
      memcpy(v150, (v14 + OBJC_IVAR____TtC15ConversationKit22ConversationController_latestRemoteAttributes), 0x61uLL);
      v160 = 0u;
      v161 = 0u;
      v162 = 0;
      LOBYTE(v156[0]) = 1;
      memset(v172, 0, 96);
      v172[96] = 1;
      outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(&v157, &v160, &_s15ConversationKit24ParticipantVideoProvider_pSgMd);
      v163 = v30 & 1;
      v164 = v27;
      v165 = v28;
      v166 = v29;
      memcpy(v172, v150, sizeof(v172));
      v167 = vdupq_n_s64(1uLL);
      v168 = 0u;
      v169 = 0u;
      v170 = 1;
      v171 = 0x3FF0000000000000;
      v11 = v25;
      v9 = v138;
    }

    a2 = v145;
    v23 = v140;
  }

  else
  {
    v160 = 0uLL;
    *&v161 = 0;
    *(&v161 + 1) = 1;
    bzero(&v162, 0xB1uLL);
  }

  if ((v141.i8[0] & 1) == 0)
  {
    goto LABEL_57;
  }

  if (v15 == 1)
  {
    v139 = v11;
    v140 = v23;
    ConversationController.remoteVideoClient(for:ofType:token:)(a2, 0, [v21 streamToken], &v157);
    ConversationController.remoteVideoClient(for:ofType:token:)(a2, 1, [v21 streamToken], v156);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantV17VideoProviderTypeO_AC0fgH0_ptGMd);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_1BC4BAA20;
    *(v60 + 32) = 0;
    outlined init with copy of CallCenterProvider(&v157, v60 + 40);
    *(v60 + 80) = 1;
    outlined init with copy of CallCenterProvider(v156, v60 + 88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit24ParticipantVideoProvider_pMd);
    lazy protocol witness table accessor for type Participant.VideoProviderType and conformance Participant.VideoProviderType();
    v141.i64[0] = Dictionary.init(dictionaryLiteral:)();
    v61 = Participant.videoState.getter();
    v138 = v9;
    if (v61 == 2)
    {
      v63 = *(&v158 + 1);
      v64 = v159;
      __swift_project_boxed_opaque_existential_1(&v157, *(&v158 + 1));
      LOBYTE(v63) = (*(v64 + 16))(v63, v64);
      v65 = *(&v158 + 1);
      v66 = v159;
      __swift_project_boxed_opaque_existential_1(&v157, *(&v158 + 1));
      v67 = (*(v66 + 24))(v65, v66);
      v136 = 0;
      v137 = 0;
      *&v134[8] = 0;
      v135 = 0;
      v133 = 0;
      v68 = 0;
      LOBYTE(v69) = 0;
      *v134 = v63 & 1;
      LOBYTE(v70) = v67 & 1;
    }

    else
    {
      v137 = v61 >> 24;
      *v134 = v61 & 1;
      LODWORD(v136) = WORD1(v61) & 1;
      HIDWORD(v136) = (v61 >> 8) & 1;
      v70 = (v61 >> 40) & 1;
      *&v134[4] = HIWORD(v61) & 1;
      v135 = HIDWORD(v61) & 1;
      v133 = HIBYTE(v61) & 1;
      v68 = v62 & 1;
      v69 = (v62 >> 8) & 1;
    }

    v76 = *(&v158 + 1);
    v77 = v159;
    __swift_project_boxed_opaque_existential_1(&v157, *(&v158 + 1));
    v78 = (*(v77 + 40))(v76, v77);
    if ((v78 & 0x100000000) != 0)
    {
      LODWORD(v78) = 0;
    }

    v79 = VideoAttributeOrientation.deviceOrientation.getter(v78);
    v80 = *(&v158 + 1);
    v81 = v159;
    __swift_project_boxed_opaque_existential_1(&v157, *(&v158 + 1));
    v82 = (*(v81 + 56))(v80, v81);
    if ((v82 & 0x100000000) != 0)
    {
      LODWORD(v82) = 0;
    }

    v83 = VideoAttributeCamera.cameraPosition.getter(v82);
    outlined init with copy of CallCenterProvider(&v157, v155);
    if (ConversationController.isOneToOneModeEnabled.getter())
    {
      v84 = 0.0;
      static AspectRatio.remoteAspectRatios(with:contentsRect:)(v155, v150, 1.0, 1.0);
      v85 = *(v150 + 1);
      v86 = *v150;
      v87 = v150[1];
      v88 = *(&v150[1] + 1);
      v89 = *&v150[2];
      v90 = BYTE8(v150[2]);
      __swift_destroy_boxed_opaque_existential_1(v155);
      if ((v87 & 1) == 0 && v86 != v85)
      {
        v91 = 0;
        if (v90)
        {
          v88 = v85;
          v89 = v86;
        }

        v84 = v86;
        goto LABEL_75;
      }

      v91 = 1;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v155);
      v91 = 1;
      v84 = 0.0;
    }

    v85 = 0.0;
    v88 = 0.0;
    v89 = 0.0;
LABEL_75:
    v92 = [v21 isCameraMixedWithScreen];
    v154 = v91;
    *&v150[0] = v141.i64[0];
    BYTE8(v150[0]) = v134[0];
    BYTE9(v150[0]) = BYTE4(v136);
    BYTE10(v150[0]) = v136;
    BYTE11(v150[0]) = v137;
    BYTE12(v150[0]) = v135;
    BYTE13(v150[0]) = v70;
    BYTE14(v150[0]) = v134[4];
    HIBYTE(v150[0]) = v133;
    LOBYTE(v150[1]) = v68;
    BYTE1(v150[1]) = v69;
    *(&v150[1] + 1) = v79;
    LOBYTE(v150[2]) = v83;
    *(&v150[2] + 1) = v84;
    *&v150[3] = v85;
    *(&v150[3] + 1) = v88;
    *&v150[4] = v89;
    BYTE8(v150[4]) = v91;
    *(&v150[4] + 9) = v92;
    v11 = v139;
    Participant.asJoined(avInfo:videoInfo:screenInfo:captionInfo:copresenceInfo:)();

    v152 = 0;
    v153 = 0xE000000000000000;
    _StringGuts.grow(_:)(142);
    MEMORY[0x1BFB20B10](0xD000000000000031, 0x80000001BC521AA0);
    v93 = [v21 isVideoEnabled];
    v94 = v93 == 0;
    if (v93)
    {
      v95 = 1702195828;
    }

    else
    {
      v95 = 0x65736C6166;
    }

    if (v94)
    {
      v96 = 0xE500000000000000;
    }

    else
    {
      v96 = 0xE400000000000000;
    }

    MEMORY[0x1BFB20B10](v95, v96);

    MEMORY[0x1BFB20B10](0xD00000000000001ALL, 0x80000001BC521BD0);
    v97 = *(&v158 + 1);
    v98 = v159;
    __swift_project_boxed_opaque_existential_1(&v157, *(&v158 + 1));
    v99 = (*(v98 + 16))(v97, v98);
    v100 = (v99 & 1) == 0;
    if (v99)
    {
      v101 = 1702195828;
    }

    else
    {
      v101 = 0x65736C6166;
    }

    if (v100)
    {
      v102 = 0xE500000000000000;
    }

    else
    {
      v102 = 0xE400000000000000;
    }

    MEMORY[0x1BFB20B10](v101, v102);

    MEMORY[0x1BFB20B10](0x6D61657274730A2CLL, 0xEE003D6E656B6F54);
    v151 = [v21 streamToken];
    v103 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1BFB20B10](v103);

    MEMORY[0x1BFB20B10](0xD00000000000002DLL, 0x80000001BC521BF0);
    v9 = v138;
    _print_unlocked<A, B>(_:_:)();
    v142 = v152;
    v141.i64[0] = v153;
    __swift_destroy_boxed_opaque_existential_1(v156);
    __swift_destroy_boxed_opaque_existential_1(&v157);
    goto LABEL_98;
  }

  if (!v15)
  {
    v139 = v11;
    v140 = v23;
    v138 = v9;
    v104 = Participant.videoState.getter();
    if (v104 == 2)
    {
      LOBYTE(v106) = 0;
      LOBYTE(v107) = 0;
      LOBYTE(v108) = 0;
      v109 = 0;
      LOBYTE(v110) = 0;
      v141 = 0u;
      v111 = 1;
    }

    else
    {
      v108 = v104 >> 24;
      v111 = v104 & 1;
      v106 = (v104 >> 8) & 1;
      v107 = WORD1(v104) & 1;
      v112 = vdupq_n_s64(v104);
      v113 = vuzp1q_s32(vshlq_u64(v112, xmmword_1BC4E9680), vshlq_u64(v112, xmmword_1BC4E9670));
      *v113.i8 = vand_s8(vmovn_s32(v113), 0x1000100010001);
      v141 = v113;
      v109 = v105 & 1;
      v110 = (v105 >> 8) & 1;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit24ParticipantVideoProvider_pMd);
    lazy protocol witness table accessor for type Participant.VideoProviderType and conformance Participant.VideoProviderType();
    v114 = Dictionary.init(dictionaryLiteral:)();
    v115 = [v21 isCameraMixedWithScreen];
    LOBYTE(v155[0]) = 1;
    *&v150[0] = v114;
    BYTE8(v150[0]) = v111;
    BYTE9(v150[0]) = v106;
    BYTE10(v150[0]) = v107;
    BYTE11(v150[0]) = v108;
    HIDWORD(v150[0]) = vuzp1_s8(*v141.i8, *v141.i8).u32[0];
    LOBYTE(v150[1]) = v109;
    BYTE1(v150[1]) = v110;
    *(&v150[1] + 1) = 1;
    LOBYTE(v150[2]) = 2;
    *(&v150[2] + 8) = 0u;
    *(&v150[3] + 8) = 0u;
    BYTE8(v150[4]) = 1;
    *(&v150[4] + 9) = v115;
    v11 = v139;
    Participant.asJoined(avInfo:videoInfo:screenInfo:captionInfo:copresenceInfo:)();

    *&v157 = 0;
    *(&v157 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(132);
    MEMORY[0x1BFB20B10](0xD000000000000031, 0x80000001BC521AA0);
    v116 = [v21 isVideoEnabled];
    v117 = v116 == 0;
    if (v116)
    {
      v118 = 1702195828;
    }

    else
    {
      v118 = 0x65736C6166;
    }

    if (v117)
    {
      v119 = 0xE500000000000000;
    }

    else
    {
      v119 = 0xE400000000000000;
    }

    MEMORY[0x1BFB20B10](v118, v119);

    MEMORY[0x1BFB20B10](0x6D6165727473202CLL, 0xEE003D6E656B6F54);
    v156[0] = [v21 streamToken];
    v120 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1BFB20B10](v120);

    MEMORY[0x1BFB20B10](0xD00000000000003FLL, 0x80000001BC521B90);
    v9 = v138;
    _print_unlocked<A, B>(_:_:)();
    v141.i64[0] = *(&v157 + 1);
    v142 = v157;
  }

  else
  {
LABEL_57:
    memset(v150, 0, 75);
    Participant.asJoined(avInfo:videoInfo:screenInfo:captionInfo:copresenceInfo:)();
    *&v157 = 0;
    *(&v157 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(131);
    MEMORY[0x1BFB20B10](0xD000000000000031, 0x80000001BC521AA0);
    v71 = [v21 isVideoEnabled];
    v72 = v71 == 0;
    if (v71)
    {
      v73 = 1702195828;
    }

    else
    {
      v73 = 0x65736C6166;
    }

    if (v72)
    {
      v74 = 0xE500000000000000;
    }

    else
    {
      v74 = 0xE400000000000000;
    }

    MEMORY[0x1BFB20B10](v73, v74);

    MEMORY[0x1BFB20B10](0x6D6165727473202CLL, 0xEE003D6E656B6F54);
    v156[0] = [v21 streamToken];
    v75 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1BFB20B10](v75);

    MEMORY[0x1BFB20B10](0xD00000000000003ELL, 0x80000001BC521AE0);
    _print_unlocked<A, B>(_:_:)();
    v141.i64[0] = *(&v157 + 1);
    v142 = v157;
  }

LABEL_98:
  v121 = [v21 capabilities];
  v122 = [v121 isMomentsAvailable];

  if (v122)
  {
    v149 = ConversationController.momentsLocallyAvailable.getter();
  }

  else
  {
    v149 = 0;
  }

  v123 = [v21 capabilities];
  LODWORD(v140) = [v123 isScreenSharingAvailable];

  v124 = [v21 capabilities];
  [v124 isGondolaCallingAvailable];

  v125 = [v21 capabilities];
  [v125 supportsRequestToScreenShare];

  [v21 identifier];
  v126 = v11;
  v127 = [v21 avcIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v128 = v143;
  Participant.with(idsIdentifier:avcIdentifier:capabilities:nickname:)();

  if (__swift_getEnumTagSinglePayload(v128, 1, v9) == 1)
  {
    outlined destroy of CallControlsService?(v128, &_s15ConversationKit11ParticipantVSgMd);
    *&v157 = 0;
    *(&v157 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(54);
    MEMORY[0x1BFB20B10](0xD000000000000034, 0x80000001BC521B50);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined destroy of CallControlsService?(v173, &_s15ConversationKit11ParticipantV14CopresenceInfoVSgMd);
    _s15ConversationKit11ParticipantVWObTm_8(v128, v144);
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v129 = swift_allocObject();
    *(v129 + 16) = xmmword_1BC4BA940;
    *(v129 + 56) = MEMORY[0x1E69E6158];
    *(v129 + 64) = lazy protocol witness table accessor for type String and conformance String();
    v130 = v141.i64[0];
    *(v129 + 32) = v142;
    *(v129 + 40) = v130;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    outlined consume of Participant.CaptionInfo?(v148);
    _s15ConversationKit11ParticipantVWOhTm_18(v126, type metadata accessor for Participant);
    return outlined destroy of CallControlsService?(&v160, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd);
  }

  return result;
}

uint64_t ConversationController.removeParticipant(_:at:)(uint64_t a1, unint64_t a2)
{
  v5 = v2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v43 - v9;
  v11 = ConversationController.visibleParticipants.getter();
  v12 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
  swift_beginAccess();
  v13 = *(v5 + v12);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ArrayBuffer._consumeAndCreateNew()();
    v13 = v42;
  }

  v14 = *(v13 + 16);
  if (v14 <= a2)
  {
    __break(1u);
LABEL_15:
    swift_once();
    goto LABEL_6;
  }

  v15 = v14 - 1;
  v3 = type metadata accessor for Participant(0);
  v16 = *(*(v3 - 8) + 72);
  v17 = v13 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80)) + v16 * a2;
  _s15ConversationKit11ParticipantVWOhTm_18(v17, type metadata accessor for Participant);
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(v17 + v16, v15 - a2, v17);
  *(v13 + 16) = v15;
  v18 = ConversationController.remoteParticipants.setter(v13);
  MEMORY[0x1EEE9AC00](v18);
  *(&v43 - 2) = a1;
  v19 = specialized Collection.firstIndex(where:)(partial apply for closure #1 in ConversationController.removeParticipant(_:at:), (&v43 - 4), v11);
  v21 = v20;

  v4 = &static OS_os_log.conversationKit;
  v22 = MEMORY[0x1E69E6158];
  if (v21)
  {
    goto LABEL_8;
  }

  v44 = v19;
  a2 = MEMORY[0x1E69E6158];
  if (one-time initialization token for conversationKit != -1)
  {
    goto LABEL_15;
  }

LABEL_6:
  v43 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1BC4BAA20;
  _s15ConversationKit11ParticipantVWOcTm_17(a1, v10);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v3);
  specialized >> prefix<A>(_:)();
  v25 = v24;
  v27 = v26;
  outlined destroy of CallControlsService?(v10, &_s15ConversationKit11ParticipantVSgMd);
  *(v23 + 56) = a2;
  v28 = lazy protocol witness table accessor for type String and conformance String();
  *(v23 + 64) = v28;
  *(v23 + 32) = v25;
  *(v23 + 40) = v27;
  v22 = a2;
  v29 = v44;
  v45 = v44;
  v30 = String.init<A>(reflecting:)();
  *(v23 + 96) = a2;
  *(v23 + 104) = v28;
  *(v23 + 72) = v30;
  *(v23 + 80) = v31;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v32 = (v5 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didRemoveVisibleParticipant);
  swift_beginAccess();
  v33 = *v32;
  if (*v32)
  {

    v33(a1, v29);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v33);
  }

LABEL_8:
  result = Participant.isPendingAuthorization.getter();
  if (result)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1BC4BA940;
    _s15ConversationKit11ParticipantVWOcTm_17(a1, v10);
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v3);
    specialized >> prefix<A>(_:)();
    v37 = v36;
    v39 = v38;
    outlined destroy of CallControlsService?(v10, &_s15ConversationKit11ParticipantVSgMd);
    *(v35 + 56) = v22;
    *(v35 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v35 + 32) = v37;
    *(v35 + 40) = v39;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v40 = (v5 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didRemovePendingParticipant);
    result = swift_beginAccess();
    v41 = *v40;
    if (*v40)
    {

      v41(a1);
      return outlined consume of (@escaping @callee_guaranteed () -> ())?(v41);
    }
  }

  return result;
}

uint64_t ConversationController.removeAllParticipants()()
{
  v1 = v0;
  v2 = type metadata accessor for Participant(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v9 = static OS_dispatch_queue.main.getter();
  (*(v7 + 104))(v9, *MEMORY[0x1E69E8020], v6);
  v10 = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v9, v6);
  if (v10)
  {
    ConversationController.remoteParticipants.setter(MEMORY[0x1E69E7CC0]);
    v12 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
    for (result = swift_beginAccess(); ; result = _s15ConversationKit11ParticipantVWOhTm_18(v5, type metadata accessor for Participant))
    {
      v13 = *(v1 + v12);
      if (!*(v13 + 16))
      {
        break;
      }

      _s15ConversationKit11ParticipantVWOcTm_17(v13 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v5);
      ConversationController.removeParticipant(_:at:)(v5, 0);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in ConversationController.createNewParticipants(with:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v39 - v5;
  v7 = type metadata accessor for Participant(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s15ConversationKit11ParticipantVWOcTm_17(a1, v10);
  v11 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
  swift_beginAccess();
  v12 = *(a2 + v11);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v12 = v37;
  }

  v13 = *(v12 + 16);
  if (v13 >= *(v12 + 24) >> 1)
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v12 = v38;
  }

  *(v12 + 16) = v13 + 1;
  _s15ConversationKit11ParticipantVWObTm_8(v10, v12 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v13);
  ConversationController.remoteParticipants.setter(v12);
  v14 = ConversationController.visibleParticipants.getter();
  v15 = specialized Collection<>.firstIndex(of:)(a1, v14);
  v17 = v16;

  if (v17)
  {
    v41 = 0;
    v42 = 0xE000000000000000;
    _StringGuts.grow(_:)(56);
    MEMORY[0x1BFB20B10](0xD000000000000036, 0x80000001BC522370);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v40 = a2;
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1BC4BAA20;
  v39 = v15;
  v41 = v15;
  v19 = String.init<A>(reflecting:)();
  v21 = v20;
  v22 = MEMORY[0x1E69E6158];
  *(v18 + 56) = MEMORY[0x1E69E6158];
  v23 = lazy protocol witness table accessor for type String and conformance String();
  *(v18 + 64) = v23;
  *(v18 + 32) = v19;
  *(v18 + 40) = v21;
  _s15ConversationKit11ParticipantVWOcTm_17(a1, v6);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  specialized >> prefix<A>(_:)();
  v25 = v24;
  v27 = v26;
  outlined destroy of CallControlsService?(v6, &_s15ConversationKit11ParticipantVSgMd);
  *(v18 + 96) = v22;
  *(v18 + 104) = v23;
  *(v18 + 72) = v25;
  *(v18 + 80) = v27;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  if (Participant.isPendingAuthorization.getter())
  {
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1BC4BA940;
    _s15ConversationKit11ParticipantVWOcTm_17(a1, v6);
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
    specialized >> prefix<A>(_:)();
    v30 = v29;
    v32 = v31;
    outlined destroy of CallControlsService?(v6, &_s15ConversationKit11ParticipantVSgMd);
    *(v28 + 56) = MEMORY[0x1E69E6158];
    *(v28 + 64) = v23;
    *(v28 + 32) = v30;
    *(v28 + 40) = v32;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v33 = (v40 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didAddPendingParticipant);
    result = swift_beginAccess();
    v35 = *v33;
    if (!*v33)
    {
      return result;
    }

    v35(a1);
  }

  else
  {
    v36 = (v40 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didAddVisibleParticipant);
    result = swift_beginAccess();
    v35 = *v36;
    if (!*v36)
    {
      return result;
    }

    (v35)(a1, v39);
  }

  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v35);
}

void ConversationController.createParticipant(for:conversation:)(unint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v178 = a3;
  v180 = v4;
  ObjectType = swift_getObjectType();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v170 = &v165 - v8;
  v9 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v9);
  v165 = &v165 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationKit == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v172 = v9;
    v11 = static OS_os_log.conversationKit;
    v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v12 = swift_allocObject();
    v171 = xmmword_1BC4BAA20;
    *(v12 + 16) = xmmword_1BC4BAA20;
    *&v193[0] = a1;
    v13 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant);
    v14 = a1;
    v168 = v13;
    v15 = String.init<A>(reflecting:)();
    v17 = v16;
    v18 = MEMORY[0x1E69E6158];
    *(v12 + 56) = MEMORY[0x1E69E6158];
    v19 = lazy protocol witness table accessor for type String and conformance String();
    *(v12 + 64) = v19;
    *(v12 + 32) = v15;
    *(v12 + 40) = v17;
    outlined init with copy of CallCenterProvider(a2, v193);
    v20 = specialized >> prefix<A>(_:)(v193);
    v22 = v21;
    outlined destroy of CallControlsService?(v193, &_s15ConversationKit0A0_pSgMd);
    *(v12 + 96) = v18;
    *(v12 + 104) = v19;
    v181 = v19;
    *(v12 + 72) = v20;
    *(v12 + 80) = v22;
    static os_log_type_t.default.getter();
    v173 = v11;
    os_log(_:dso:log:type:_:)();

    v177 = [v14 handle];
    v183 = [v14 identifier];
    v23 = [v14 avcIdentifier];
    v182 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v176 = v24;

    v184 = v14;
    v25 = [v14 capabilities];
    LODWORD(v11) = [v25 isMomentsAvailable];

    v26 = 0;
    if (v11)
    {
      v26 = ConversationController.momentsLocallyAvailable.getter();
    }

    v174 = v26;
    v27 = v184;
    v28 = [v184 capabilities];
    v29 = [v28 isScreenSharingAvailable];

    v30 = [v27 capabilities];
    v31 = [v30 isGondolaCallingAvailable];

    v32 = *(a2 + 24);
    v33 = *(a2 + 32);
    __swift_project_boxed_opaque_existential_1(a2, v32);
    v34 = [v27 handle];
    v179 = a2;
    v35 = v34;
    v36 = Conversation.containsKickable(participantWithHandle:)(v34, v32, v33);

    v37 = v179;
    v38 = [v27 capabilities];
    v39 = [v38 supportsRequestToScreenShare];

    *&v193[0] = v177;
    *(&v193[0] + 1) = v183;
    LOBYTE(v193[1]) = 0;
    *(&v193[1] + 1) = v182;
    *&v193[2] = v176;
    v40 = 0x100000000;
    if (!v39)
    {
      v40 = 0;
    }

    v41 = 0x1000000;
    if ((v36 & 1) == 0)
    {
      v41 = 0;
    }

    v42 = 0x10000;
    if (!v31)
    {
      v42 = 0;
    }

    v43 = 256;
    if (!v29)
    {
      v43 = 0;
    }

    ConversationController.createParticipant(for:conversation:capabilities:)(v193, v37, v43 | v174 | v42 | v41 | v40, v178);
    v44 = v37[3];
    v45 = v37[4];
    __swift_project_boxed_opaque_existential_1(v37, v44);
    v46 = (*(v45 + 88))(v44, v45);
    v167 = v46;
    if ((v46 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember);
      lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject, &lazy cache variable for type metadata for TUConversationMember);
      Set.Iterator.init(_cocoa:)();
      a2 = v194[10];
      v9 = v194[11];
      a1 = v194[12];
      v47 = v194[13];
      v48 = v194[14];
    }

    else
    {
      v49 = -1 << *(v46 + 32);
      v9 = v46 + 56;
      a1 = ~v49;
      v50 = -v49;
      v51 = v50 < 64 ? ~(-1 << v50) : -1;
      v48 = v51 & *(v46 + 56);
      v47 = 0;
    }

    v166 = a1;
    v52 = (a1 + 64) >> 6;
    if (a2 < 0)
    {
      break;
    }

LABEL_19:
    v53 = v47;
    v54 = v48;
    v55 = v47;
    if (v48)
    {
LABEL_23:
      v56 = (v54 - 1) & v54;
      a1 = *(*(a2 + 48) + ((v55 << 9) | (8 * __clz(__rbit64(v54)))));
      if (a1)
      {
        goto LABEL_27;
      }

      goto LABEL_30;
    }

    while (1)
    {
      v55 = (v53 + 1);
      if (__OFADD__(v53, 1))
      {
        break;
      }

      if (v55 >= v52)
      {
        goto LABEL_30;
      }

      v54 = *(v9 + 8 * v55);
      ++v53;
      if (v54)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
  }

  while (1)
  {
    v57 = __CocoaSet.Iterator.next()();
    if (!v57)
    {
      break;
    }

    v188[0] = v57;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember);
    swift_dynamicCast();
    a1 = *&v193[0];
    v55 = v47;
    v56 = v48;
    if (!*&v193[0])
    {
      break;
    }

LABEL_27:
    v182 = v48;
    v183 = v47;
    v58 = [a1 handle];
    v59 = [v184 handle];
    v60 = [v58 isEquivalentToHandle_];

    if (v60)
    {
      v174 = a1;
      v61 = 0;
      goto LABEL_31;
    }

    v47 = v55;
    v48 = v56;
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_19;
    }
  }

LABEL_30:
  v174 = 0;
  v61 = 1;
LABEL_31:
  outlined consume of Set<TUHandle>.Iterator._Variant();

  v62 = swift_allocObject();
  *(v62 + 16) = v171;
  *&v193[0] = v184;
  v63 = v184;
  v64 = String.init<A>(reflecting:)();
  v65 = v181;
  *(v62 + 56) = MEMORY[0x1E69E6158];
  *(v62 + 64) = v65;
  *(v62 + 32) = v64;
  *(v62 + 40) = v66;
  v67 = v172;
  if (v61)
  {
    v68 = 0xE300000000000000;
    v69 = 7104878;
  }

  else
  {
    v70 = v174;
    *&v193[0] = v174;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember);
    v71 = v70;
    v69 = String.init<A>(reflecting:)();
  }

  v72 = v181;
  *(v62 + 96) = MEMORY[0x1E69E6158];
  *(v62 + 104) = v72;
  *(v62 + 72) = v69;
  *(v62 + 80) = v68;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v73 = [v63 handle];
  v74 = v179;
  static ConversationController.member(correspondingTo:in:)(v73, v179);
  v76 = v75;

  v77 = [v76 lightweightPrimary];
  v78 = *(v67 + 48);
  v79 = v178;

  *&v79[v78] = v77;
  v80 = v74[3];
  v81 = v74[4];
  __swift_project_boxed_opaque_existential_1(v74, v80);
  if ((*(v81 + 56))(v80, v81) == 3)
  {
    v82 = [v63 streamToken];
    v83 = [v63 screenToken];
    v84 = [v63 isVideoEnabled];
    v85 = v180;
    if (!v84 || *(v180 + OBJC_IVAR____TtC15ConversationKit22ConversationController_mode) != 1)
    {
      if ([v63 isVideoEnabled] && !*(v85 + OBJC_IVAR____TtC15ConversationKit22ConversationController_mode))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit24ParticipantVideoProvider_pMd);
        lazy protocol witness table accessor for type Participant.VideoProviderType and conformance Participant.VideoProviderType();
        v119 = Dictionary.init(dictionaryLiteral:)();
        v120 = [v63 isCameraMixedWithScreen];
        LOBYTE(v193[0]) = 1;
        v194[0] = v119;
        LOBYTE(v194[1]) = 1;
        *(&v194[1] + 1) = 0;
        BYTE1(v194[2]) = 0;
        v194[3] = 1;
        LOBYTE(v194[4]) = 2;
        memset(&v194[5], 0, 32);
        LOBYTE(v194[9]) = 1;
        *(&v194[9] + 1) = v120;
      }

      else
      {
        memset(v194, 0, 75);
      }

      goto LABEL_55;
    }

    v184 = v83;
    v86 = OBJC_IVAR____TtC15ConversationKit22ConversationController_participantMediaProviderCreator;
    swift_beginAccess();
    outlined init with copy of CallCenterProvider(v85 + v86, v193);
    v87 = *(&v193[1] + 1);
    v88 = *&v193[2];
    __swift_project_boxed_opaque_existential_1(v193, *(&v193[1] + 1));
    (*(v88 + 8))(v188, v82, v85, &protocol witness table for ConversationController, v87, v88);
    __swift_destroy_boxed_opaque_existential_1(v193);
    outlined init with copy of CallCenterProvider(v85 + v86, v193);
    v89 = *(&v193[1] + 1);
    v90 = *&v193[2];
    __swift_project_boxed_opaque_existential_1(v193, *(&v193[1] + 1));
    (*(v90 + 8))(v189, v82, v85, &protocol witness table for ConversationController, v89, v90);
    __swift_destroy_boxed_opaque_existential_1(v193);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantV17VideoProviderTypeO_AC0fgH0_ptGMd);
    v91 = swift_allocObject();
    *(v91 + 16) = v171;
    *(v91 + 32) = 0;
    outlined init with copy of CallCenterProvider(v188, v91 + 40);
    *(v91 + 80) = 1;
    outlined init with copy of CallCenterProvider(v189, v91 + 88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit24ParticipantVideoProvider_pMd);
    lazy protocol witness table accessor for type Participant.VideoProviderType and conformance Participant.VideoProviderType();
    v183 = Dictionary.init(dictionaryLiteral:)();
    v92 = v188[3];
    v93 = v188[4];
    __swift_project_boxed_opaque_existential_1(v188, v188[3]);
    LOBYTE(v92) = (*(v93 + 16))(v92, v93);
    v94 = v188[3];
    v95 = v188[4];
    __swift_project_boxed_opaque_existential_1(v188, v188[3]);
    LOBYTE(v94) = (*(v95 + 32))(v94, v95);
    v96 = v188[3];
    v97 = v188[4];
    __swift_project_boxed_opaque_existential_1(v188, v188[3]);
    v98 = v92 & 1;
    v99 = (*(v97 + 24))(v96, v97) & 1;
    v100 = v94 & 1;
    v101 = v188[3];
    v102 = v188[4];
    __swift_project_boxed_opaque_existential_1(v188, v188[3]);
    v103 = (*(v102 + 40))(v101, v102);
    if ((v103 & 0x100000000) != 0)
    {
      v104 = 0;
    }

    else
    {
      v104 = v103;
    }

    v105 = v188[3];
    v106 = v188[4];
    __swift_project_boxed_opaque_existential_1(v188, v188[3]);
    v107 = (*(v106 + 56))(v105, v106);
    if ((v107 & 0x100000000) != 0)
    {
      v108 = 0;
    }

    else
    {
      v108 = v107;
    }

    v109 = VideoAttributeOrientation.deviceOrientation.getter(v104);
    v110 = VideoAttributeCamera.cameraPosition.getter(v108);
    outlined init with copy of CallCenterProvider(v188, __dst);
    if (ConversationController.isOneToOneModeEnabled.getter())
    {
      v111 = 0.0;
      static AspectRatio.remoteAspectRatios(with:contentsRect:)(__dst, v193, 1.0, 1.0);
      v112 = *(v193 + 1);
      v113 = *v193;
      v114 = v193[1];
      v115 = *(&v193[1] + 1);
      v116 = *&v193[2];
      v117 = BYTE8(v193[2]);
      __swift_destroy_boxed_opaque_existential_1(__dst);
      if ((v114 & 1) == 0 && v113 != v112)
      {
        v118 = 0;
        if (v117)
        {
          v115 = v112;
          v116 = v113;
        }

        v111 = v113;
        goto LABEL_54;
      }

      v118 = 1;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(__dst);
      v118 = 1;
      v111 = 0.0;
    }

    v112 = 0.0;
    v115 = 0.0;
    v116 = 0.0;
LABEL_54:
    v121 = [v63 isCameraMixedWithScreen];
    __swift_destroy_boxed_opaque_existential_1(v189);
    LOBYTE(v193[0]) = v118;
    __swift_destroy_boxed_opaque_existential_1(v188);
    v194[0] = v183;
    LOBYTE(v194[1]) = v98;
    *(&v194[1] + 1) = 0;
    BYTE5(v194[1]) = v99;
    BYTE6(v194[1]) = v100;
    *(&v194[1] + 7) = 0;
    BYTE1(v194[2]) = 0;
    v194[3] = v109;
    LOBYTE(v194[4]) = v110;
    *&v194[5] = v111;
    *&v194[6] = v112;
    *&v194[7] = v115;
    *&v194[8] = v116;
    LOBYTE(v194[9]) = v118;
    *(&v194[9] + 1) = v121;
    v79 = v178;
    v67 = v172;
    v85 = v180;
    v83 = v184;
LABEL_55:
    memcpy(__dst, v194, 0x4BuLL);
    if ([v63 isScreenEnabled])
    {
      if (*(v85 + OBJC_IVAR____TtC15ConversationKit22ConversationController_mode) == 2)
      {
        v122 = OBJC_IVAR____TtC15ConversationKit22ConversationController_participantMediaProviderCreator;
        swift_beginAccess();
        outlined init with copy of CallCenterProvider(v85 + v122, v193);
        v123 = *(&v193[1] + 1);
        v124 = *&v193[2];
        __swift_project_boxed_opaque_existential_1(v193, *(&v193[1] + 1));
        (*(v124 + 8))(v190, v83, v85, &protocol witness table for ConversationController, v123, v124);
        __swift_destroy_boxed_opaque_existential_1(v193);
        v125 = v191;
        v126 = v192;
        __swift_project_boxed_opaque_existential_1(v190, v191);
        v127 = (*(v126 + 40))(v125, v126);
        if ((v127 & 0x100000000) != 0)
        {
          v128 = 0;
        }

        else
        {
          v128 = v127;
        }

        v129 = v191;
        v130 = v192;
        __swift_project_boxed_opaque_existential_1(v190, v191);
        v131 = (*(v130 + 40))(v129, v130);
        if ((v131 & 0x100000000) != 0)
        {
          v132 = 1;
        }

        else
        {
          v132 = VideoAttributeOrientation.deviceOrientation.getter(v131);
        }

        v133 = v191;
        v134 = v192;
        __swift_project_boxed_opaque_existential_1(v190, v191);
        v135 = (*(v134 + 16))(v133, v134);
        outlined init with copy of CallCenterProvider(v190, v187);
        memcpy(v189, (v180 + OBJC_IVAR____TtC15ConversationKit22ConversationController_latestRemoteAttributes), 0x61uLL);
        v136 = VideoAttributeOrientation.deviceOrientation.getter(v128);
        outlined init with copy of CallCenterProvider(v190, v186);
        v137 = v191;
        v138 = v192;
        __swift_project_boxed_opaque_existential_1(v190, v191);
        (*(v138 + 64))(v195, v137, v138);
        v139 = 1.0;
        v140 = 0;
        v141 = 1.0;
        if ((v196 & 1) == 0)
        {
          v141 = *&v195[3];
          v139 = *&v195[2];
        }

        static AspectRatio.remoteAspectRatios(with:contentsRect:)(v186, v193, v139, v141);
        v143 = *(v193 + 1);
        v142 = *v193;
        v144 = v193[1];
        v145 = *(&v193[1] + 1);
        v146 = *&v193[2];
        v147 = BYTE8(v193[2]);
        __swift_destroy_boxed_opaque_existential_1(v186);
        if (v144)
        {
          v143 = 0.0;
          v145 = 0.0;
          v146 = 0.0;
          v148 = 1;
        }

        else if (v142 == v143)
        {
          v148 = 1;
          v143 = 0.0;
          v145 = 0.0;
          v146 = 0.0;
        }

        else
        {
          v148 = 0;
          if (v147)
          {
            v145 = v143;
            v146 = v142;
          }

          v140 = *&v142;
        }

        v149 = v191;
        v150 = v192;
        __swift_project_boxed_opaque_existential_1(v190, v191);
        v151 = (*(v150 + 72))(v149, v150);
        memset(v188, 0, 40);
        v185 = 1;
        memset(&v188[14], 0, 96);
        LOBYTE(v188[26]) = 1;
        outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(v187, v188, &_s15ConversationKit24ParticipantVideoProvider_pSgMd);
        LOBYTE(v188[5]) = v135 & 1;
        *(&v188[5] + 1) = 0;
        BYTE3(v188[5]) = 0;
        memcpy(&v188[14], v189, 0x61uLL);
        v188[6] = v136;
        v188[7] = v132;
        v188[8] = v140;
        *&v188[9] = v143;
        *&v188[10] = v145;
        *&v188[11] = v146;
        LOBYTE(v188[12]) = v148;
        *&v188[13] = v151;
        memcpy(v193, v188, 0xD1uLL);
        __swift_destroy_boxed_opaque_existential_1(v190);
        v79 = v178;
        v67 = v172;
        v85 = v180;
      }

      else
      {
        memset(v189, 0, 40);
        memcpy(v188, (v85 + OBJC_IVAR____TtC15ConversationKit22ConversationController_latestRemoteAttributes), 0x61uLL);
        memset(v193, 0, 40);
        LOBYTE(v190[0]) = 1;
        memset(&v193[7], 0, 96);
        LOBYTE(v193[13]) = 1;
        outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(v189, v193, &_s15ConversationKit24ParticipantVideoProvider_pSgMd);
        DWORD2(v193[2]) = 1;
        memcpy(&v193[7], v188, 0x61uLL);
        v193[3] = vdupq_n_s64(1uLL);
        memset(&v193[4], 0, 32);
        LOBYTE(v193[6]) = 1;
        *(&v193[6] + 1) = 0x3FF0000000000000;
      }
    }

    else
    {
      memset(v193, 0, 24);
      *(&v193[1] + 1) = 1;
      bzero(&v193[2], 0xB1uLL);
    }

    if (*(v85 + OBJC_IVAR____TtC15ConversationKit22ConversationController_mode) == 1)
    {
      v152 = OBJC_IVAR____TtC15ConversationKit22ConversationController_participantCaptionsProviderCreator;
      swift_beginAccess();
      outlined init with copy of CallCenterProvider(v85 + v152, v188);
      v153 = v188[3];
      v154 = v188[4];
      __swift_project_boxed_opaque_existential_1(v188, v188[3]);
      v155 = (*(v154 + 8))([v63 captionsToken], v153, v154);
      __swift_destroy_boxed_opaque_existential_1(v188);
      if (v155)
      {
        swift_unknownObjectRetain();
      }
    }

    else
    {
      v155 = 0;
    }

    ConversationController.copresenceInfo(for:in:)(v63, v179, v188);
    Participant.AVInfo.init(for:)(v63);
    v156 = v165;
    Participant.asJoined(avInfo:videoInfo:screenInfo:captionInfo:copresenceInfo:)();
    outlined consume of Participant.CaptionInfo?(v155);
    outlined destroy of CallControlsService?(v188, &_s15ConversationKit11ParticipantV14CopresenceInfoVSgMd);
    outlined destroy of CallControlsService?(v194, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
    outlined consume of Participant.CaptionInfo?(v155);
    outlined destroy of CallControlsService?(v193, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd);
    _s15ConversationKit11ParticipantVWOdTm_0(v156, v79);
  }

  v157 = swift_allocObject();
  *(v157 + 16) = xmmword_1BC4BA940;
  v158 = v79;
  v159 = v170;
  _s15ConversationKit11ParticipantVWOcTm_17(v158, v170);
  __swift_storeEnumTagSinglePayload(v159, 0, 1, v67);
  specialized >> prefix<A>(_:)();
  v161 = v160;
  v163 = v162;
  outlined destroy of CallControlsService?(v159, &_s15ConversationKit11ParticipantVSgMd);
  v164 = v181;
  *(v157 + 56) = MEMORY[0x1E69E6158];
  *(v157 + 64) = v164;
  *(v157 + 32) = v161;
  *(v157 + 40) = v163;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
}

BOOL closure #5 in ConversationController.createNewParticipants(with:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Participant(0) + 28);
  v5 = *(a1 + v4);
  if (!v5)
  {
    return *(a2 + v4) == 0;
  }

  v6 = *(a2 + v4);
  v7 = v5;
  v8 = v7;
  if (v6)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
    v9 = v6;
    v10 = static NSObject.== infix(_:_:)();

    return v10 & 1;
  }

  else
  {

    return 0;
  }
}

void ConversationController.createParticipant(for:conversation:)(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  v9 = a1;
  v10[0] = v9;
  v10[1] = 0;
  v11 = 1;
  if (Conversation.containsKickable(participantWithHandle:)(v9, v6, v7))
  {
    v8 = 16843008;
  }

  else
  {
    v8 = 65792;
  }

  v12 = 0;
  v13 = 0;
  ConversationController.createParticipant(for:conversation:capabilities:)(v10, a2, v8, a3);
}

uint64_t ConversationController.createParticipant(for:conversation:capabilities:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, id a4@<X8>)
{
  v106 = a3;
  ObjectType = swift_getObjectType();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v93 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v94 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v93 = &v93 - v13;
  v108 = type metadata accessor for Participant.CountdownInfo(0);
  MEMORY[0x1EEE9AC00](v108);
  v110 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV13CountdownInfoVSgMd);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v114 = &v93 - v19;
  v98 = type metadata accessor for Participant.State(0);
  v20 = MEMORY[0x1EEE9AC00](v98);
  v99 = &v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v121 = &v93 - v22;
  v23 = type metadata accessor for UUID();
  v24 = *(v23 - 8);
  v119 = v23;
  v120 = v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v115 = &v93 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v93 - v27;
  v29 = *a1;
  v102 = *(a1 + 8);
  v103 = *(a1 + 16);
  v30 = *(a1 + 32);
  v101 = *(a1 + 24);
  v116 = v30;
  if (one-time initialization token for conversationKit != -1)
  {
LABEL_28:
    swift_once();
  }

  v109 = v17;
  v111 = v15;
  v112 = v9;
  v15 = static OS_os_log.conversationKit;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1BC4BAA20;
  v125[0] = v29;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
  v32 = v29;
  v33 = String.init<A>(reflecting:)();
  v35 = v34;
  v36 = MEMORY[0x1E69E6158];
  *(v31 + 56) = MEMORY[0x1E69E6158];
  v37 = lazy protocol witness table accessor for type String and conformance String();
  *(v31 + 64) = v37;
  *(v31 + 32) = v33;
  *(v31 + 40) = v35;
  outlined init with copy of CallCenterProvider(a2, v125);
  v38 = specialized >> prefix<A>(_:)(v125);
  v40 = v39;
  outlined destroy of CallControlsService?(v125, &_s15ConversationKit0A0_pSgMd);
  *(v31 + 96) = v36;
  *(v31 + 104) = v37;
  v104 = v37;
  *(v31 + 72) = v38;
  *(v31 + 80) = v40;
  static os_log_type_t.default.getter();
  v107 = v15;
  os_log(_:dso:log:type:_:)();

  UUID.init()();
  v122 = v32;
  v97 = static Colors.ParticipantGradients.gradient(for:)(v32);
  v41 = a2[3];
  v42 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v41);
  v43 = (*(v42 + 128))(v41, v42);
  v117 = a2;
  v118 = v28;
  v113 = a4;
  v96 = v43;
  if ((v43 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember);
    lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject, &lazy cache variable for type metadata for TUConversationMember);
    Set.Iterator.init(_cocoa:)();
    v44 = v125[0];
    v29 = v125[1];
    v9 = v125[2];
    v45 = v125[3];
    v28 = v125[4];
  }

  else
  {
    v46 = -1 << *(v43 + 32);
    v29 = (v43 + 56);
    v9 = ~v46;
    v47 = -v46;
    if (v47 < 64)
    {
      v48 = ~(-1 << v47);
    }

    else
    {
      v48 = -1;
    }

    v28 = (v48 & *(v43 + 56));
    v45 = 0;
  }

  v95 = v9;
  a2 = ((v9 + 64) >> 6);
  while (1)
  {
    v17 = v45;
    if (v44 < 0)
    {
      break;
    }

    v49 = v45;
    v50 = v28;
    if (!v28)
    {
      while (1)
      {
        v45 = v49 + 1;
        if (__OFADD__(v49, 1))
        {
          break;
        }

        if (v45 >= a2)
        {
          goto LABEL_19;
        }

        v50 = *(v29 + v45);
        ++v49;
        if (v50)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
      goto LABEL_28;
    }

LABEL_14:
    v28 = ((v50 - 1) & v50);
    v9 = *(*(v44 + 48) + ((v45 << 9) | (8 * __clz(__rbit64(v50)))));
    if (!v9)
    {
      goto LABEL_19;
    }

LABEL_18:
    v15 = [v9 handle];
    a4 = [v15 isEqualToHandle_];

    if (a4)
    {
      goto LABEL_19;
    }
  }

  v51 = __CocoaSet.Iterator.next()();
  if (v51)
  {
    v123 = v51;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember);
    swift_dynamicCast();
    v9 = v124;
    if (v124)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  outlined consume of Set<TUHandle>.Iterator._Variant();

  Date.init()();
  swift_storeEnumTagMultiPayload();
  static ConversationController.member(correspondingTo:in:)(v122, v117);
  if (v52)
  {
    ObjectType = outlined bridged method (ob) of @objc TUConversationLink.displayName.getter(v52, &selRef_nickname);
    v98 = v53;
  }

  else
  {
    ObjectType = 0;
    v98 = 0;
  }

  v54 = v111;
  v56 = v117;
  v55 = v118;
  v57 = v117[3];
  __swift_project_boxed_opaque_existential_1(v117, v57);
  v58 = v122;
  LODWORD(v111) = Conversation.containsAuthorizedToChangeGroupMembership(participantWithHandle:)(v122, v57);
  v59 = v99;
  _s15ConversationKit11ParticipantVWOcTm_17(v121, v99);
  v60 = v119;
  (*(v120 + 16))(v115, v55, v119);
  v61 = v114;
  v62 = v108;
  __swift_storeEnumTagSinglePayload(v114, 1, 1, v108);
  v63 = type metadata accessor for ParticipantContactDetailsCache();
  v64 = v56[3];
  v65 = __swift_project_boxed_opaque_existential_1(v56, v64);

  v66 = v58;
  v67 = specialized static ParticipantContactDetailsCache.cache(for:)(v65, v63, v64);
  v68 = v109;
  v69 = &v109[v54[7]];
  *(v69 + 4) = 0;
  *v69 = 0u;
  *(v69 + 1) = 0u;
  v70 = (v68 + v54[9]);
  *(v68 + v54[10]) = 0;
  *(v68 + v54[11]) = MEMORY[0x1E69E7CD0];
  *(v68 + v54[12]) = 0;
  _s15ConversationKit11ParticipantVWObTm_8(v59, v68);
  (*(v120 + 32))(v68 + v54[5], v115, v60);
  v71 = v68 + v54[6];
  v72 = vdupq_n_s64(v106);
  *v71 = v106 & 1;
  *v72.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v72, xmmword_1BC4DFB90), vshlq_u64(v72, xmmword_1BC4DFB80))), 0x1000100010001);
  *(v71 + 1) = vuzp1_s8(*v72.i8, *v72.i8).u32[0];
  outlined consume of Participant.RemoteIdentifiers?(*v69);
  v73 = v102;
  *v69 = v58;
  *(v69 + 1) = v73;
  v74 = v101;
  *(v69 + 2) = v103;
  *(v69 + 3) = v74;
  *(v69 + 4) = v116;
  *(v68 + v54[8]) = v97;
  v75 = v98;
  *v70 = ObjectType;
  v70[1] = v75;
  *(v68 + v54[15]) = v111 & 1;
  *(v68 + v54[13]) = 0;
  if (__swift_getEnumTagSinglePayload(v61, 1, v62) == 1)
  {
    v76 = v67;
    v77 = type metadata accessor for Date();
    v78 = v93;
    __swift_storeEnumTagSinglePayload(v93, 1, 1, v77);
    v79 = v94;
    __swift_storeEnumTagSinglePayload(v94, 1, 1, v77);
    v80 = v110;
    __swift_storeEnumTagSinglePayload(v110, 1, 1, v77);
    v81 = *(v62 + 20);
    __swift_storeEnumTagSinglePayload(v80 + v81, 1, 1, v77);
    v82 = v78;
    v83 = v114;
    outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(v82, v80, &_s10Foundation4DateVSgMd);
    v67 = v76;
    outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(v79, v80 + v81, &_s10Foundation4DateVSgMd);
    *(v80 + *(v62 + 24)) = 0;
    if (__swift_getEnumTagSinglePayload(v83, 1, v62) != 1)
    {
      outlined destroy of CallControlsService?(v83, &_s15ConversationKit11ParticipantV13CountdownInfoVSgMd);
    }
  }

  else
  {
    v80 = v110;
    _s15ConversationKit11ParticipantVWObTm_8(v61, v110);
  }

  _s15ConversationKit11ParticipantVWObTm_8(v80, v68 + v54[14]);
  *(v68 + v54[16]) = v67;
  v84 = v113;
  _s15ConversationKit11ParticipantVWObTm_8(v68, v113);
  v85 = swift_allocObject();
  *(v85 + 16) = xmmword_1BC4BA940;
  v86 = v112;
  _s15ConversationKit11ParticipantVWOcTm_17(v84, v112);
  __swift_storeEnumTagSinglePayload(v86, 0, 1, v54);
  specialized >> prefix<A>(_:)();
  v88 = v87;
  v90 = v89;
  outlined destroy of CallControlsService?(v86, &_s15ConversationKit11ParticipantVSgMd);
  v91 = v104;
  *(v85 + 56) = MEMORY[0x1E69E6158];
  *(v85 + 64) = v91;
  *(v85 + 32) = v88;
  *(v85 + 40) = v90;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  _s15ConversationKit11ParticipantVWOhTm_18(v121, type metadata accessor for Participant.State);
  return (*(v120 + 8))(v118, v119);
}

void ConversationController.copresenceInfo(for:in:)(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a2[3];
  v6 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v5);
  v7 = Conversation.currentSharePlayActivity.getter(v5, v6);
  if (!v7)
  {
    v22 = 0;
    v23 = 0;
    v12 = 0;
    v11 = 0;
LABEL_10:
    v21 = 0;
    v16 = 0;
    v15 = 0;
LABEL_11:
    v24 = 0;
    goto LABEL_15;
  }

  v8 = v7;
  v9 = outlined bridged method (ob) of @objc TUConversationActivity.localizedApplicationName.getter([v7 activity]);
  v11 = v10;
  if (!v10)
  {

    v22 = 0;
    v23 = 0;
    v12 = 0;
    goto LABEL_10;
  }

  v12 = v9;
  v13 = TUConversationActivitySession.ongoingDescription.getter();
  v15 = v14;
  if (!v14)
  {

    v22 = 0;
    v23 = 0;
    v12 = 0;
    v11 = 0;
    v21 = 0;
    v16 = 0;
    goto LABEL_11;
  }

  v16 = v13;
  ConversationController.isParticipant(_:activeIn:)(a1, v8);
  v18 = v17;
  if (v17)
  {
    v19 = TUConversationActivitySession.preferredBroadcastingAttributes.getter();
    if (v20)
    {
      v21 = 0;
    }

    else
    {
      v21 = v19;
    }
  }

  else
  {
    v21 = 0;
  }

  v22 = TUConversationActivitySession.uniqueIdentifier.getter();
  v23 = v25;

  v24 = v18 & 1;
LABEL_15:
  *a3 = v22;
  a3[1] = v23;
  a3[2] = v12;
  a3[3] = v11;
  a3[4] = v24;
  a3[5] = v21;
  a3[6] = v16;
  a3[7] = v15;
}

void ConversationController.scheduleKickabilityUpdate(for:)(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v2 - 8);
  v39 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v36 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for DispatchQoS();
  v35 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v34 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Participant(0);
  v32 = *(v5 - 8);
  v6 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v40 = type metadata accessor for DispatchTime();
  v33 = *(v40 - 8);
  v7 = MEMORY[0x1EEE9AC00](v40);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v31 - v10;
  v12 = type metadata accessor for Participant.State(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + *(v5 + 28));
  if (v15)
  {
    v16 = [v15 value];
    if (!v16)
    {
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = MEMORY[0x1BFB209B0](v17);
    }

    v18 = [v16 destinationIdIsTemporary];

    if (v18)
    {
      _s15ConversationKit11ParticipantVWOcTm_17(a1, v14);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 4u:
          v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
          v21 = *(v20 + 48);
          outlined consume of Participant.CopresenceInfo?(*&v14[*(v20 + 64)], *&v14[*(v20 + 64) + 8]);
          outlined destroy of Participant.MediaInfo(&v14[v21]);
          v22 = type metadata accessor for Date();
          (*(*(v22 - 8) + 8))(v14, v22);
          if (*(a1 + *(v5 + 24) + 3))
          {
            if (one-time initialization token for shared != -1)
            {
              swift_once();
            }

            (*(*static Defaults.shared + 720))();
            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
            v31 = static OS_dispatch_queue.main.getter();
            static DispatchTime.now()();
            + infix(_:_:)();
            v33 = *(v33 + 8);
            (v33)(v9, v40);
            v23 = swift_allocObject();
            swift_unknownObjectWeakInit();
            _s15ConversationKit11ParticipantVWOcTm_17(a1, &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
            v24 = (*(v32 + 80) + 24) & ~*(v32 + 80);
            v25 = swift_allocObject();
            *(v25 + 16) = v23;
            _s15ConversationKit11ParticipantVWObTm_8(&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24);
            aBlock[4] = partial apply for closure #1 in ConversationController.scheduleKickabilityUpdate(for:);
            aBlock[5] = v25;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
            aBlock[3] = &block_descriptor_1204;
            v26 = _Block_copy(aBlock);

            v27 = v34;
            static DispatchQoS.unspecified.getter();
            aBlock[0] = MEMORY[0x1E69E7CC0];
            lazy protocol witness table accessor for type ConversationController and conformance ConversationController(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
            lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
            v28 = v36;
            v29 = v39;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            v30 = v31;
            MEMORY[0x1BFB21510](v11, v27, v28, v26);
            _Block_release(v26);

            (*(v38 + 8))(v28, v29);
            (*(v35 + 8))(v27, v37);
            (v33)(v11, v40);
          }

          break;
        case 6u:
          return;
        default:
          v19 = type metadata accessor for Date();
          (*(*(v19 - 8) + 8))(v14, v19);
          break;
      }
    }
  }
}

void closure #1 in ConversationController.scheduleKickabilityUpdate(for:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v20 - v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = ConversationController.visibleParticipants.getter();
    MEMORY[0x1EEE9AC00](v8);
    *(&v20 - 2) = a2;
    v9 = specialized Collection.firstIndex(where:)(partial apply for closure #1 in ConversationController.postParticipantStateChangeCallbacks(for:updatedFrom:), (&v20 - 4), v8);
    v11 = v10;

    if (v11)
    {
      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1BC4BA940;
      _s15ConversationKit11ParticipantVWOcTm_17(a2, v5);
      v13 = type metadata accessor for Participant(0);
      __swift_storeEnumTagSinglePayload(v5, 0, 1, v13);
      specialized >> prefix<A>(_:)();
      v15 = v14;
      v17 = v16;
      outlined destroy of CallControlsService?(v5, &_s15ConversationKit11ParticipantVSgMd);
      *(v12 + 56) = MEMORY[0x1E69E6158];
      *(v12 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v12 + 32) = v15;
      *(v12 + 40) = v17;
      os_log(_:dso:log:type:_:)();
    }

    else
    {
      v18 = &v7[OBJC_IVAR____TtC15ConversationKit22ConversationController_visibleParticipantKickableStatusDidChange];
      swift_beginAccess();
      v19 = *v18;
      if (*v18)
      {

        v19(a2, v9);
        outlined consume of (@escaping @callee_guaranteed () -> ())?(v19);
      }
    }
  }
}

void ConversationController.pendingMember(correspondingTo:in:)(uint64_t a1, void *a2)
{
  v3 = *(a1 + *(type metadata accessor for Participant(0) + 28));
  if (v3)
  {
    v4 = a2[3];
    v5 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v4);
    v6 = *(v5 + 128);
    v25 = v3;
    v7 = v6(v4, v5);
    if ((v7 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember);
      lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject, &lazy cache variable for type metadata for TUConversationMember);
      Set.Iterator.init(_cocoa:)();
      v9 = v27;
      v8 = v28;
      v11 = v29;
      v10 = v30;
      v12 = v31;
    }

    else
    {
      v13 = -1 << *(v7 + 32);
      v8 = v7 + 56;
      v11 = ~v13;
      v14 = -v13;
      if (v14 < 64)
      {
        v15 = ~(-1 << v14);
      }

      else
      {
        v15 = -1;
      }

      v12 = v15 & *(v7 + 56);
      v10 = 0;
    }

    v24 = v11;
    v16 = (v11 + 64) >> 6;
    if (v9 < 0)
    {
      goto LABEL_16;
    }

LABEL_10:
    v17 = v10;
    v18 = v12;
    v19 = v10;
    if (v12)
    {
LABEL_14:
      v20 = (v18 - 1) & v18;
      v21 = *(*(v9 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));
      if (v21)
      {
        do
        {
          v22 = [v21 handle];
          v23 = [v22 isEqualToHandle_];

          if (v23)
          {
            break;
          }

          v10 = v19;
          v12 = v20;
          if ((v9 & 0x8000000000000000) == 0)
          {
            goto LABEL_10;
          }

LABEL_16:
          if (!__CocoaSet.Iterator.next()())
          {
            break;
          }

          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember);
          swift_dynamicCast();
          v21 = v26;
          v19 = v10;
          v20 = v12;
        }

        while (v26);
      }

LABEL_21:

      outlined consume of Set<TUHandle>.Iterator._Variant();
    }

    else
    {
      while (1)
      {
        v19 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v19 >= v16)
        {
          goto LABEL_21;
        }

        v18 = *(v8 + 8 * v19);
        ++v17;
        if (v18)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }
  }
}

void ConversationController.updateAudioFrequencyController(with:from:)(uint64_t a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v68 - v6;
  if (*(v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_mode) != 1)
  {
    return;
  }

  v8 = *(v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_audioFrequencyController);
  if (v8)
  {
    v69 = v8;
    v9 = Participant.audioToken.getter();
    if ((v10 & 1) == 0 && !v9)
    {
      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1BC4BA940;
      _s15ConversationKit11ParticipantVWOcTm_17(a1, v7);
      v12 = type metadata accessor for Participant(0);
      __swift_storeEnumTagSinglePayload(v7, 0, 1, v12);
      specialized >> prefix<A>(_:)();
      v14 = v13;
      v16 = v15;
      outlined destroy of CallControlsService?(v7, &_s15ConversationKit11ParticipantVSgMd);
      *(v11 + 56) = MEMORY[0x1E69E6158];
      *(v11 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v11 + 32) = v14;
      *(v11 + 40) = v16;
      os_log(_:dso:log:type:_:)();

LABEL_8:

      return;
    }

    v2 = Participant.audioToken.getter();
    v26 = v25;
    Participant.videoInfo.getter();
    v18 = Participant.audioToken.getter();
    v3 = v27;
    Participant.videoInfo.getter();
    if (v26)
    {
      if (v3)
      {
        if (v71[0])
        {
          if (!v72[0])
          {
            goto LABEL_22;
          }

          goto LABEL_34;
        }

LABEL_24:

        v29 = v72;
        goto LABEL_35;
      }

      outlined destroy of CallControlsService?(v71, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
      if (v72[0])
      {
        goto LABEL_24;
      }

      goto LABEL_40;
    }

    v28 = v72[0];
    if (v71[0])
    {
      if (v3)
      {
        if (!v72[0])
        {
LABEL_22:

          v29 = v71;
LABEL_35:
          outlined destroy of CallControlsService?(v29, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
          return;
        }

LABEL_34:

        outlined destroy of CallControlsService?(v72, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
        v29 = v71;
        goto LABEL_35;
      }

      if (v72[0])
      {
        goto LABEL_34;
      }

      outlined destroy of CallControlsService?(v71, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
LABEL_40:
      if (v18)
      {
        if (one-time initialization token for conversationKit != -1)
        {
          swift_once();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
        v44 = swift_allocObject();
        *(v44 + 16) = xmmword_1BC4BAA20;
        v70 = v18;
        v45 = String.init<A>(reflecting:)();
        v47 = v46;
        v48 = MEMORY[0x1E69E6158];
        *(v44 + 56) = MEMORY[0x1E69E6158];
        v49 = lazy protocol witness table accessor for type String and conformance String();
        *(v44 + 64) = v49;
        *(v44 + 32) = v45;
        *(v44 + 40) = v47;
        _s15ConversationKit11ParticipantVWOcTm_17(a1, v7);
        v50 = type metadata accessor for Participant(0);
        __swift_storeEnumTagSinglePayload(v7, 0, 1, v50);
        specialized >> prefix<A>(_:)();
        v52 = v51;
        v54 = v53;
        outlined destroy of CallControlsService?(v7, &_s15ConversationKit11ParticipantVSgMd);
        *(v44 + 96) = v48;
        *(v44 + 104) = v49;
        *(v44 + 72) = v52;
        *(v44 + 80) = v54;
        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)();

        [v69 unregisterParticipantPowerSpectrum_];
      }

      goto LABEL_48;
    }

LABEL_27:
    if ((v3 & 1) != 0 || v28)
    {
      outlined destroy of CallControlsService?(v72, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_1BC4BAA20;
      v70 = v2;
      v34 = String.init<A>(reflecting:)();
      v36 = v35;
      v37 = MEMORY[0x1E69E6158];
      *(v33 + 56) = MEMORY[0x1E69E6158];
      v38 = lazy protocol witness table accessor for type String and conformance String();
      *(v33 + 64) = v38;
      *(v33 + 32) = v34;
      *(v33 + 40) = v36;
      _s15ConversationKit11ParticipantVWOcTm_17(a1, v7);
      v39 = type metadata accessor for Participant(0);
      __swift_storeEnumTagSinglePayload(v7, 0, 1, v39);
      specialized >> prefix<A>(_:)();
      v41 = v40;
      v43 = v42;
      outlined destroy of CallControlsService?(v7, &_s15ConversationKit11ParticipantVSgMd);
      *(v33 + 96) = v37;
      *(v33 + 104) = v38;
      *(v33 + 72) = v41;
      *(v33 + 80) = v43;
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();
    }

    else
    {
      if (v2 == v18)
      {
        v32 = v69;

        return;
      }

      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      v68 = static OS_os_log.conversationKit;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v55 = swift_allocObject();
      *(v55 + 16) = xmmword_1BC4BB980;
      v70 = v18;
      v56 = String.init<A>(reflecting:)();
      v58 = v57;
      v59 = MEMORY[0x1E69E6158];
      *(v55 + 56) = MEMORY[0x1E69E6158];
      v60 = lazy protocol witness table accessor for type String and conformance String();
      *(v55 + 64) = v60;
      *(v55 + 32) = v56;
      *(v55 + 40) = v58;
      v70 = v2;
      v61 = String.init<A>(reflecting:)();
      *(v55 + 96) = v59;
      *(v55 + 104) = v60;
      *(v55 + 72) = v61;
      *(v55 + 80) = v62;
      _s15ConversationKit11ParticipantVWOcTm_17(a1, v7);
      v63 = type metadata accessor for Participant(0);
      __swift_storeEnumTagSinglePayload(v7, 0, 1, v63);
      specialized >> prefix<A>(_:)();
      v65 = v64;
      v67 = v66;
      outlined destroy of CallControlsService?(v7, &_s15ConversationKit11ParticipantVSgMd);
      *(v55 + 136) = v59;
      *(v55 + 144) = v60;
      *(v55 + 112) = v65;
      *(v55 + 120) = v67;
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      [v69 unregisterParticipantPowerSpectrum_];
    }

    [v69 registerParticipantPowerSpectrum_];
LABEL_48:

    return;
  }

  v17 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationState;
  swift_beginAccess();
  v18 = *(v1 + v17);
  if (v18 >= 3)
  {
    if (v18 == 3)
    {
      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1BC4BA940;
      _s15ConversationKit11ParticipantVWOcTm_17(a1, v7);
      v20 = type metadata accessor for Participant(0);
      __swift_storeEnumTagSinglePayload(v7, 0, 1, v20);
      specialized >> prefix<A>(_:)();
      v22 = v21;
      v24 = v23;
      outlined destroy of CallControlsService?(v7, &_s15ConversationKit11ParticipantVSgMd);
      *(v19 + 56) = MEMORY[0x1E69E6158];
      *(v19 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v19 + 32) = v22;
      *(v19 + 40) = v24;
      os_log(_:dso:log:type:_:)();
      goto LABEL_8;
    }

    if (v18 != 4)
    {
      v71[0] = 0;
      v71[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(72);
      MEMORY[0x1BFB20B10](0xD000000000000046, 0x80000001BC521D50);
      v70 = v18;
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v7 = v31;
      MEMORY[0x1BFB20B10](v30);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      goto LABEL_27;
    }
  }
}

uint64_t ConversationController.captionsProvider(for:token:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v29 - v6;
  v8 = ConversationController.existingCaptionsProvider(for:token:)(a1, a2);
  if (v8)
  {
    return v8;
  }

  v10 = OBJC_IVAR____TtC15ConversationKit22ConversationController_participantCaptionsProviderCreator;
  swift_beginAccess();
  outlined init with copy of CallCenterProvider(v2 + v10, v30);
  v11 = v31;
  v12 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  v9 = (*(v12 + 8))(a2, v11, v12);
  v14 = v13;
  __swift_destroy_boxed_opaque_existential_1(v30);
  if (v9)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v29[1] = static OS_os_log.conversationKit;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1BC4BB980;
    v30[0] = v9;
    v30[1] = v14;
    swift_unknownObjectRetain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit27ParticipantCaptionsProvider_pMd);
    v16 = String.init<A>(reflecting:)();
    v18 = v17;
    v19 = MEMORY[0x1E69E6158];
    *(v15 + 56) = MEMORY[0x1E69E6158];
    v20 = lazy protocol witness table accessor for type String and conformance String();
    *(v15 + 64) = v20;
    *(v15 + 32) = v16;
    *(v15 + 40) = v18;
    v30[0] = a2;
    v21 = String.init<A>(reflecting:)();
    *(v15 + 96) = v19;
    *(v15 + 104) = v20;
    *(v15 + 72) = v21;
    *(v15 + 80) = v22;
    _s15ConversationKit11ParticipantVWOcTm_17(a1, v7);
    v23 = type metadata accessor for Participant(0);
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v23);
    specialized >> prefix<A>(_:)();
    v25 = v24;
    v27 = v26;
    outlined destroy of CallControlsService?(v7, &_s15ConversationKit11ParticipantVSgMd);
    *(v15 + 136) = v19;
    *(v15 + 144) = v20;
    *(v15 + 112) = v25;
    *(v15 + 120) = v27;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
    swift_unknownObjectRelease();
  }

  return v9;
}

uint64_t ConversationController.remoteVideoClient(for:ofType:token:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v31[-v10];
  ConversationController.existingVideoProvider(for:ofType:token:)(a2, a3, &v32);
  if (v33)
  {
    return outlined init with take of TapInteractionHandler(&v32, a4);
  }

  outlined destroy of CallControlsService?(&v32, &_s15ConversationKit24ParticipantVideoProvider_pSgMd);
  v13 = OBJC_IVAR____TtC15ConversationKit22ConversationController_participantMediaProviderCreator;
  swift_beginAccess();
  outlined init with copy of CallCenterProvider(v4 + v13, &v32);
  v14 = v33;
  v15 = v34;
  __swift_project_boxed_opaque_existential_1(&v32, v33);
  (*(v15 + 8))(a3, v4, &protocol witness table for ConversationController, v14, v15);
  __swift_destroy_boxed_opaque_existential_1(&v32);
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1BC4BB990;
  outlined init with copy of CallCenterProvider(a4, &v32);
  v17 = specialized >> prefix<A>(_:)(&v32);
  v19 = v18;
  outlined destroy of CallControlsService?(&v32, &_s15ConversationKit24ParticipantVideoProvider_pSgMd);
  v20 = MEMORY[0x1E69E6158];
  *(v16 + 56) = MEMORY[0x1E69E6158];
  v21 = lazy protocol witness table accessor for type String and conformance String();
  *(v16 + 64) = v21;
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  *&v32 = a3;
  v22 = String.init<A>(reflecting:)();
  *(v16 + 96) = v20;
  *(v16 + 104) = v21;
  *(v16 + 72) = v22;
  *(v16 + 80) = v23;
  LOBYTE(v32) = a2;
  v24 = String.init<A>(reflecting:)();
  *(v16 + 136) = v20;
  *(v16 + 144) = v21;
  *(v16 + 112) = v24;
  *(v16 + 120) = v25;
  _s15ConversationKit11ParticipantVWOcTm_17(a1, v11);
  v26 = type metadata accessor for Participant(0);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v26);
  specialized >> prefix<A>(_:)();
  v28 = v27;
  v30 = v29;
  outlined destroy of CallControlsService?(v11, &_s15ConversationKit11ParticipantVSgMd);
  *(v16 + 176) = v20;
  *(v16 + 184) = v21;
  *(v16 + 152) = v28;
  *(v16 + 160) = v30;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
}

unint64_t ConversationController.remoteOrientationFor(aspectRatio:videoRotation:deviceFamily:)(unint64_t result, uint64_t a2, double a3, double a4)
{
  if (a4 >= a3)
  {
    if (result <= 3)
    {
      v4 = &unk_1BC4E9BC0;
      return v4[result];
    }

    return 1;
  }

  if (a2 != 3)
  {
    return result;
  }

  if (result >= 4)
  {
    return 1;
  }

  v4 = &unk_1BC4E9BA0;
  return v4[result];
}

uint64_t static ConversationController.member(correspondingTo:in:)(uint64_t a1, void *a2)
{
  v3 = *(a1 + *(type metadata accessor for Participant(0) + 28));
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  static ConversationController.member(correspondingTo:in:)(v4, a2);
  v6 = v5;

  return v6;
}

uint64_t ConversationController.didUpdateVisibleParticipant(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v19[-v4];
  v6 = ConversationController.visibleParticipants.getter();
  v20 = a1;
  v7 = specialized Collection.firstIndex(where:)(partial apply for closure #1 in ConversationController.postParticipantStateChangeCallbacks(for:updatedFrom:), v19, v6);
  v9 = v8;

  if (v9)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1BC4BA940;
    _s15ConversationKit11ParticipantVWOcTm_17(a1, v5);
    v11 = type metadata accessor for Participant(0);
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v11);
    specialized >> prefix<A>(_:)();
    v13 = v12;
    v15 = v14;
    outlined destroy of CallControlsService?(v5, &_s15ConversationKit11ParticipantVSgMd);
    *(v10 + 56) = MEMORY[0x1E69E6158];
    *(v10 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v10 + 32) = v13;
    *(v10 + 40) = v15;
    os_log(_:dso:log:type:_:)();
  }

  else
  {
    v17 = (v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateVisibleParticipant);
    result = swift_beginAccess();
    v18 = *v17;
    if (*v17)
    {

      v18(a1, v7);
      return outlined consume of (@escaping @callee_guaranteed () -> ())?(v18);
    }
  }

  return result;
}

void ConversationController.updateRemoteParticipantsKickableAndAuthorizedToChangeGroupMembership(with:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v99 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v107 = &v90 - v7;
  v111 = type metadata accessor for Participant(0);
  v105 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v90 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v102 = &v90 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v90 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v90 - v15;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_15ConversationKit11ParticipantV7elementtMd);
  MEMORY[0x1EEE9AC00](v100);
  v91 = (&v90 - v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_15ConversationKit11ParticipantV7elementtSgMd);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v108 = &v90 - v22;
  v23 = type metadata accessor for DispatchPredicate();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = (&v90 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v26 = static OS_dispatch_queue.main.getter();
  (*(v24 + 104))(v26, *MEMORY[0x1E69E8020], v23);
  v27 = _dispatchPreconditionTest(_:)();
  (*(v24 + 8))(v26, v23);
  if ((v27 & 1) == 0)
  {
    goto LABEL_43;
  }

  v28 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
  swift_beginAccess();
  v96 = v28;
  v29 = *(v2 + v28);
  v30 = *(v29 + 16);
  v93 = (v2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_visibleParticipantKickableStatusDidChange);
  v92 = v29;

  v31 = 0;
  v94 = xmmword_1BC4BB990;
  v97 = a1;
  v98 = v2;
  v32 = v111;
  v33 = v100;
  v34 = v108;
  v101 = v16;
  v103 = v30;
  v104 = v20;
  while (1)
  {
    while (1)
    {
      if (v31 == v30)
      {
        v35 = 1;
        v31 = v30;
      }

      else
      {
        if ((v31 & 0x8000000000000000) != 0)
        {
          goto LABEL_41;
        }

        if (v31 >= *(v92 + 16))
        {
          goto LABEL_42;
        }

        v36 = v92 + ((*(v105 + 80) + 32) & ~*(v105 + 80)) + *(v105 + 72) * v31;
        v37 = *(v33 + 48);
        v38 = v91;
        *v91 = v31;
        _s15ConversationKit11ParticipantVWOcTm_17(v36, v38 + v37);
        outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v38, v20, &_sSi6offset_15ConversationKit11ParticipantV7elementtMd);
        v35 = 0;
        ++v31;
        v34 = v108;
      }

      __swift_storeEnumTagSinglePayload(v20, v35, 1, v33);
      outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v20, v34, &_sSi6offset_15ConversationKit11ParticipantV7elementtSgMd);
      if (__swift_getEnumTagSinglePayload(v34, 1, v33) == 1)
      {

        return;
      }

      v39 = *v34;
      _s15ConversationKit11ParticipantVWObTm_8(v34 + *(v33 + 48), v16);
      v40 = *(v32 + 28);
      v41 = *&v16[v40];
      if (v41)
      {
        break;
      }

      _s15ConversationKit11ParticipantVWOhTm_18(v16, type metadata accessor for Participant);
      v30 = v103;
      v20 = v104;
    }

    _s15ConversationKit11ParticipantVWOcTm_17(v16, v13);
    v42 = v32;
    v43 = a1[3];
    v44 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v43);
    v110 = v41;
    v109 = Conversation.containsKickable(participantWithHandle:)(v110, v43, v44);
    v52 = v109 & 1;
    v53 = &v13[*(v42 + 24)];
    if (v52 != v53[3])
    {
      v54 = v102;
      Participant.asKickable(_:)(v52, v45, v46, v47, v48, v49, v50, v51, v90, v91, v92, v93, v94, *(&v94 + 1), v95, v96, v97, v98, v99, v100);
      _s15ConversationKit11ParticipantVWOhTm_18(v13, type metadata accessor for Participant);
      _s15ConversationKit11ParticipantVWObTm_8(v54, v13);
    }

    v55 = a1[3];
    __swift_project_boxed_opaque_existential_1(a1, v55);
    v63 = Conversation.containsAuthorizedToChangeGroupMembership(participantWithHandle:)(v110, v55);
    v64 = v63 & 1;
    v32 = v111;
    if (v64 != v13[*(v111 + 60)])
    {
      v65 = v102;
      Participant.asAuthorizedToChangeGroupMembership(_:)(v64, v56, v57, v58, v59, v60, v61, v62, v90, v91, v92, v93, v94, *(&v94 + 1), v95, v96, v97, v98, v99, v100);
      v32 = v111;
      _s15ConversationKit11ParticipantVWOhTm_18(v13, type metadata accessor for Participant);
      _s15ConversationKit11ParticipantVWObTm_8(v65, v13);
    }

    v16 = v101;
    static Participant.State.== infix(_:_:)();
    if ((v66 & 1) != 0 && (static UUID.== infix(_:_:)() & 1) != 0 && (*&v16[v40] == 0) == (*&v13[*(v32 + 28)] == 0))
    {
      v88 = &v16[*(v32 + 24)];
      if (*v53 == *v88 && ((v53[1] ^ v88[1]) & 1) == 0 && ((v53[2] ^ v88[2]) & 1) == 0 && ((v53[3] ^ v88[3]) & 1) == 0 && ((v53[4] ^ v88[4]) & 1) == 0)
      {

        _s15ConversationKit11ParticipantVWOhTm_18(v13, type metadata accessor for Participant);
        _s15ConversationKit11ParticipantVWOhTm_18(v16, type metadata accessor for Participant);
        v33 = v100;
        goto LABEL_31;
      }
    }

    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v106 = static OS_os_log.conversationKit;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v67 = swift_allocObject();
    *(v67 + 16) = v94;
    v68 = v107;
    _s15ConversationKit11ParticipantVWOcTm_17(v16, v107);
    v69 = v111;
    __swift_storeEnumTagSinglePayload(v68, 0, 1, v111);
    v70 = v68;
    v71 = v99;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v70, v99, &_s15ConversationKit11ParticipantVSgMd);
    if (__swift_getEnumTagSinglePayload(v71, 1, v69) == 1)
    {
      outlined destroy of CallControlsService?(v71, &_s15ConversationKit11ParticipantVSgMd);
      v72 = 0xE300000000000000;
      v73 = 7104878;
    }

    else
    {
      v74 = v90;
      _s15ConversationKit11ParticipantVWObTm_8(v71, v90);
      _s15ConversationKit11ParticipantVWOcTm_17(v74, v102);
      v73 = String.init<A>(reflecting:)();
      v72 = v75;
      v76 = v74;
      v16 = v101;
      _s15ConversationKit11ParticipantVWOhTm_18(v76, type metadata accessor for Participant);
    }

    outlined destroy of CallControlsService?(v107, &_s15ConversationKit11ParticipantVSgMd);
    v77 = MEMORY[0x1E69E6158];
    *(v67 + 56) = MEMORY[0x1E69E6158];
    v78 = lazy protocol witness table accessor for type String and conformance String();
    *(v67 + 64) = v78;
    *(v67 + 32) = v73;
    *(v67 + 40) = v72;
    v112 = v39;
    v79 = String.init<A>(reflecting:)();
    *(v67 + 96) = v77;
    *(v67 + 104) = v78;
    *(v67 + 72) = v79;
    *(v67 + 80) = v80;
    LOBYTE(v112) = v109 & 1;
    v81 = String.init<A>(reflecting:)();
    *(v67 + 136) = v77;
    *(v67 + 144) = v78;
    *(v67 + 112) = v81;
    *(v67 + 120) = v82;
    LOBYTE(v112) = v63 & 1;
    v83 = String.init<A>(reflecting:)();
    *(v67 + 176) = v77;
    *(v67 + 184) = v78;
    *(v67 + 152) = v83;
    *(v67 + 160) = v84;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v85 = *(v98 + v96);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew()();
      v85 = v89;
    }

    v33 = v100;
    a1 = v97;
    if ((v39 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v39 >= *(v85 + 16))
    {
      goto LABEL_40;
    }

    outlined assign with copy of Participant.State(v13, v85 + ((*(v105 + 80) + 32) & ~*(v105 + 80)) + *(v105 + 72) * v39);
    ConversationController.remoteParticipants.setter(v85);
    v86 = v93;
    swift_beginAccess();
    v87 = *v86;
    if (*v86)
    {
      swift_endAccess();

      v87(v13, v39);
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v87);

      _s15ConversationKit11ParticipantVWOhTm_18(v13, type metadata accessor for Participant);
      _s15ConversationKit11ParticipantVWOhTm_18(v16, type metadata accessor for Participant);
    }

    else
    {
      _s15ConversationKit11ParticipantVWOhTm_18(v13, type metadata accessor for Participant);
      _s15ConversationKit11ParticipantVWOhTm_18(v16, type metadata accessor for Participant);
      swift_endAccess();
    }

    v32 = v111;
LABEL_31:
    v30 = v103;
    v20 = v104;
    v34 = v108;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
}

uint64_t closure #3 in ConversationController.updateOtherInvitedParticipants()@<X0>(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v43 = &v42 - v9;
  v10 = type metadata accessor for Participant.CountdownInfo(0);
  MEMORY[0x1EEE9AC00](v10);
  v49 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV13CountdownInfoVSgMd);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v42 - v13;
  v45 = &v42 - v13;
  v48 = type metadata accessor for UUID();
  v15 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Participant.State(0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a1;
  v46 = v21;
  Date.init()();
  swift_storeEnumTagMultiPayload();
  UUID.init()();
  v47 = static Colors.ParticipantGradients.gradient(for:)(v21);
  v22 = v14;
  v23 = v10;
  __swift_storeEnumTagSinglePayload(v22, 1, 1, v10);
  v24 = type metadata accessor for ParticipantContactDetailsCache();
  v25 = a2[3];
  v26 = __swift_project_boxed_opaque_existential_1(a2, v25);
  v27 = specialized static ParticipantContactDetailsCache.cache(for:)(v26, v24, v25);
  v28 = type metadata accessor for Participant(0);
  v29 = a3 + v28[7];
  *(v29 + 32) = 0;
  *v29 = 0u;
  *(v29 + 16) = 0u;
  v30 = (a3 + v28[9]);
  *(a3 + v28[10]) = 0;
  *(a3 + v28[11]) = MEMORY[0x1E69E7CD0];
  *(a3 + v28[12]) = 0;
  _s15ConversationKit11ParticipantVWObTm_8(v20, a3);
  (*(v15 + 32))(a3 + v28[5], v17, v48);
  v31 = v23;
  v32 = a3 + v28[6];
  *v32 = 16843008;
  *(v32 + 4) = 0;
  outlined consume of Participant.RemoteIdentifiers?(*v29);
  v33 = v47;
  *v29 = v46;
  *(v29 + 8) = xmmword_1BC4BB7D0;
  *(v29 + 24) = 0;
  *(v29 + 32) = 0;
  v34 = v45;
  *(a3 + v28[8]) = v33;
  *v30 = 0;
  v30[1] = 0;
  *(a3 + v28[15]) = 0;
  *(a3 + v28[13]) = 0;
  if (__swift_getEnumTagSinglePayload(v34, 1, v23) == 1)
  {
    v35 = type metadata accessor for Date();
    v48 = v27;
    v36 = v43;
    __swift_storeEnumTagSinglePayload(v43, 1, 1, v35);
    v37 = v44;
    __swift_storeEnumTagSinglePayload(v44, 1, 1, v35);
    v38 = v49;
    __swift_storeEnumTagSinglePayload(v49, 1, 1, v35);
    v39 = *(v31 + 20);
    __swift_storeEnumTagSinglePayload(v38 + v39, 1, 1, v35);
    v40 = v36;
    v27 = v48;
    outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(v40, v38, &_s10Foundation4DateVSgMd);
    outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(v37, v38 + v39, &_s10Foundation4DateVSgMd);
    *(v38 + *(v31 + 24)) = 0;
    if (__swift_getEnumTagSinglePayload(v34, 1, v31) != 1)
    {
      outlined destroy of CallControlsService?(v34, &_s15ConversationKit11ParticipantV13CountdownInfoVSgMd);
    }
  }

  else
  {
    v38 = v49;
    _s15ConversationKit11ParticipantVWObTm_8(v34, v49);
  }

  result = _s15ConversationKit11ParticipantVWObTm_8(v38, a3 + v28[14]);
  *(a3 + v28[16]) = v27;
  return result;
}

void ConversationController.isParticipant(_:activeIn:)(void *a1, id a2)
{
  v2 = [a2 activeRemoteParticipants];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant);
  lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationParticipant and conformance NSObject, &lazy cache variable for type metadata for TUConversationParticipant);
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v3 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
    v7 = v23;
  }

  else
  {
    v8 = -1 << *(v3 + 32);
    v4 = v3 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v3 + 56);

    v6 = 0;
  }

  v11 = (v5 + 64) >> 6;
  while (v3 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (swift_dynamicCast(), (v14 = v18) == 0))
    {
LABEL_18:
      outlined consume of Set<TUHandle>.Iterator._Variant();

      return;
    }

LABEL_17:
    v15 = [v14 identifier];
    v16 = [a1 identifier];

    if (v15 == v16)
    {
      goto LABEL_18;
    }
  }

  v12 = v6;
  v13 = v7;
  if (v7)
  {
LABEL_13:
    v7 = (v13 - 1) & v13;
    v14 = *(*(v3 + 48) + ((v6 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v14)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v6 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_18;
    }

    v13 = *(v4 + 8 * v6);
    ++v12;
    if (v13)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t ConversationController.activeParticipant(from:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Participant(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
  swift_beginAccess();
  v10 = *(v2 + v9);
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

    v14 = 0;
    while (v14 < *(v10 + 16))
    {
      _s15ConversationKit11ParticipantVWOcTm_17(v12 + *(v6 + 72) * v14, v8);
      v15 = [a1 identifier];
      v16 = &v8[*(v5 + 28)];
      if (*v16 && (*(v16 + 4) & 1) == 0 && v15 == *(v16 + 1))
      {

        _s15ConversationKit11ParticipantVWObTm_8(v8, a2);
        v17 = 0;
        return __swift_storeEnumTagSinglePayload(a2, v17, 1, v5);
      }

      ++v14;
      result = _s15ConversationKit11ParticipantVWOhTm_18(v8, type metadata accessor for Participant);
      if (v11 == v14)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    v17 = 1;
    return __swift_storeEnumTagSinglePayload(a2, v17, 1, v5);
  }

  return result;
}

uint64_t closure #1 in ConversationController.lookupActiveConversation()(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  (*(v7 + 8))(v6, v7);
  LOBYTE(a1) = static UUID.== infix(_:_:)();
  (*(v3 + 8))(v5, v2);
  return a1 & 1;
}

uint64_t ConversationController.conversationActiveRemoteParticipantsCount.getter()
{
  ConversationController.lookupActiveConversation()();
  if (v15)
  {
    OUTLINED_FUNCTION_384_0(v0, v1, v2, v3, v4, v5, v6, v7, v13, v14, v15, v16, v17[0]);
    v8 = v17[3];
    OUTLINED_FUNCTION_97_8(v17);
    v9 = OUTLINED_FUNCTION_4_38();
    v11 = v10(v9);
    specialized Set.count.getter(v11);
    OUTLINED_FUNCTION_247();

    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    outlined destroy of CallControlsService?(&v13, &_s15ConversationKit0A0_pSgMd);
    return 0;
  }

  return v8;
}

uint64_t ConversationController.conversationHandoffInProgress.getter()
{
  ConversationController.lookupActiveConversation()();
  if (v9)
  {
    outlined init with take of TapInteractionHandler(&v8, v10);
    v0 = v11;
    v1 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    active = Conversation.displayableActiveParticipants.getter(v0, v1);
    v3 = specialized Set.count.getter(active);

    if (v3 == 2)
    {
      v4 = v11;
      v5 = v12;
      __swift_project_boxed_opaque_existential_1(v10, v11);
      v6 = (*(v5 + 184))(v4, v5);
    }

    else
    {
      v6 = 0;
    }

    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    outlined destroy of CallControlsService?(&v8, &_s15ConversationKit0A0_pSgMd);
    v6 = 0;
  }

  return v6 & 1;
}

double ConversationController.existingVideoProvider(for:ofType:token:)@<D0>(char a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  if (a1 == 3)
  {
    Participant.screenProvider.getter();
  }

  else
  {
    Participant.videoProvider(for:)();
  }

  outlined init with copy of IDView<AvatarStackView, [UUID]>(v23, &v18, &_s15ConversationKit24ParticipantVideoProvider_pSgMd);
  if (v19)
  {
    outlined init with take of TapInteractionHandler(&v18, v20);
    v5 = v21;
    v6 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    v7 = (*(v6 + 8))(v5, v6);
    if ((v8 & 1) == 0 && v7 == a2)
    {
      outlined destroy of CallControlsService?(v23, &_s15ConversationKit24ParticipantVideoProvider_pSgMd);
      outlined init with copy of CallCenterProvider(v20, a3);
      __swift_destroy_boxed_opaque_existential_1(v20);
      return result;
    }

    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    outlined destroy of CallControlsService?(&v18, &_s15ConversationKit24ParticipantVideoProvider_pSgMd);
  }

  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  static os_log_type_t.error.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1BC4BAA20;
  v11 = specialized >> prefix<A>(_:)(v23);
  v13 = v12;
  v14 = MEMORY[0x1E69E6158];
  *(v10 + 56) = MEMORY[0x1E69E6158];
  v15 = lazy protocol witness table accessor for type String and conformance String();
  *(v10 + 64) = v15;
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  v20[0] = a2;
  v16 = String.init<A>(reflecting:)();
  *(v10 + 96) = v14;
  *(v10 + 104) = v15;
  *(v10 + 72) = v16;
  *(v10 + 80) = v17;
  os_log(_:dso:log:type:_:)();

  outlined destroy of CallControlsService?(v23, &_s15ConversationKit24ParticipantVideoProvider_pSgMd);
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0;
  return result;
}

uint64_t ConversationController.existingCaptionsProvider(for:token:)(uint64_t a1, uint64_t a2)
{
  v3 = Participant.captionsProvider.getter();
  if (!Participant.captionsProvider.getter() || (v5 = v4, ObjectType = swift_getObjectType(), v7 = (*(v5 + 8))(ObjectType, v5), v9 = v8, swift_unknownObjectRelease(), (v9 & 1) != 0) || v7 != a2)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1BC4BAA20;
    if (v3)
    {
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit27ParticipantCaptionsProvider_pMd);
      v11 = String.init<A>(reflecting:)();
      v13 = v12;
    }

    else
    {
      v13 = 0xE300000000000000;
      v11 = 7104878;
    }

    v14 = MEMORY[0x1E69E6158];
    *(v10 + 56) = MEMORY[0x1E69E6158];
    v15 = lazy protocol witness table accessor for type String and conformance String();
    *(v10 + 64) = v15;
    *(v10 + 32) = v11;
    *(v10 + 40) = v13;
    v16 = String.init<A>(reflecting:)();
    *(v10 + 96) = v14;
    *(v10 + 104) = v15;
    *(v10 + 72) = v16;
    *(v10 + 80) = v17;
    os_log(_:dso:log:type:_:)();
    swift_unknownObjectRelease();

    return 0;
  }

  return v3;
}

void closure #1 in ConversationController.updateShouldShowLastFrameDuringUPlusOneHandoff()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (*(Strong + OBJC_IVAR____TtC15ConversationKit22ConversationController_shouldShowLastFrameDuringUPlusOneHandoff) == 1)
    {
      if (one-time initialization token for conversationController != -1)
      {
        swift_once();
      }

      v2 = type metadata accessor for Logger();
      __swift_project_value_buffer(v2, static Logger.conversationController);
      v3 = v1;
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v11 = v7;
        *v6 = 136315138;
        v8 = String.init<A>(reflecting:)();
        v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v11);

        *(v6 + 4) = v10;
        _os_log_impl(&dword_1BBC58000, v4, v5, "[%s] Reset shouldShowLastFrameDuringUPlusOneHandoff flag on timeout", v6, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v7);
        MEMORY[0x1BFB23DF0](v7, -1, -1);
        MEMORY[0x1BFB23DF0](v6, -1, -1);
      }

      ConversationController.shouldShowLastFrameDuringUPlusOneHandoff.setter(0);
    }
  }
}

id ConversationController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void ConversationController.callCenter(_:stateChangedFor:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v0;
  v4 = v3;
  swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_1();
  v102 = v7;
  OUTLINED_FUNCTION_4_24();
  v8 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_23_19();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_170_4();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_363();
  v14 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v1 = static OS_dispatch_queue.main.getter();
  v15 = OUTLINED_FUNCTION_171_3();
  v16(v15);
  _dispatchPreconditionTest(_:)();
  v17 = OUTLINED_FUNCTION_173_2();
  v18(v17);
  if ((v14 & 1) == 0)
  {
    __break(1u);
LABEL_25:
    OUTLINED_FUNCTION_8_106();
    goto LABEL_12;
  }

  ConversationController.lookupActiveConversation()();
  if (v109)
  {
    OUTLINED_FUNCTION_335();
    OUTLINED_FUNCTION_359_0(v110);
    v19 = OUTLINED_FUNCTION_114_2();
    v20(v19);
    OUTLINED_FUNCTION_359_0(v4);
    v21 = OUTLINED_FUNCTION_114_2();
    v22(v21);
    OUTLINED_FUNCTION_2_125();
    v23 = static UUID.== infix(_:_:)();
    v24 = *(v10 + 8);
    v25 = OUTLINED_FUNCTION_281();
    v24(v25);
    v26 = OUTLINED_FUNCTION_196_2();
    v24(v26);
    if (v23)
    {
      v27 = &v2[OBJC_IVAR____TtC15ConversationKit22ConversationController_call];
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      v28 = *(v27 + 1);
      swift_getObjectType();
      v29 = *(v28 + 96);
      swift_unknownObjectRetain();
      v30 = OUTLINED_FUNCTION_112();
      v31 = v29(v30);
      swift_unknownObjectRelease();
      if (v31)
      {
        if (one-time initialization token for conversationController != -1)
        {
          OUTLINED_FUNCTION_8_106();
        }

        v32 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v32, static Logger.conversationController);
        v33 = OUTLINED_FUNCTION_365_0();
        outlined init with copy of CallCenterProvider(v33, v34);
        v35 = v2;
        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v36, v37))
        {
          v38 = OUTLINED_FUNCTION_23();
          OUTLINED_FUNCTION_13_31();
          *v38 = 136315650;
          v39 = String.init<A>(reflecting:)();
          v41 = OUTLINED_FUNCTION_449(v39, v40);

          *(v38 + 4) = v41;
          *(v38 + 12) = 2080;
          __swift_project_boxed_opaque_existential_1(v108, v109);
          v42 = OUTLINED_FUNCTION_114_2();
          v43(v42);
          type metadata accessor for TUConversationState(0);
          String.init<A>(reflecting:)();
          OUTLINED_FUNCTION_250();
          __swift_destroy_boxed_opaque_existential_1(v108);
          v44 = OUTLINED_FUNCTION_334();
          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, v46);
          OUTLINED_FUNCTION_239_4();

          *(v38 + 14) = v31;
          *(v38 + 22) = 2080;
          v47 = v35;
          v48 = String.init<A>(reflecting:)();
          OUTLINED_FUNCTION_449(v48, v49);
          OUTLINED_FUNCTION_173();

          *(v38 + 24) = 2080;
          OUTLINED_FUNCTION_379_0();
          _os_log_impl(v50, v51, v52, v53, v54, 0x20u);
          OUTLINED_FUNCTION_399_0();
          swift_arrayDestroy();
          OUTLINED_FUNCTION_104_2();
          OUTLINED_FUNCTION_2_2();
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_1(v108);
        }

        v99 = OUTLINED_FUNCTION_365_0();
        outlined init with copy of CallCenterProvider(v99, v100);
        ConversationController.update(with:)();
        outlined destroy of CallControlsService?(v108, &_s15ConversationKit0A0_pSgMd);
        __swift_destroy_boxed_opaque_existential_1(v110);
        goto LABEL_21;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v110);
  }

  else
  {
    outlined destroy of CallControlsService?(v108, &_s15ConversationKit0A0_pSgMd);
  }

  if (one-time initialization token for conversationController != -1)
  {
    goto LABEL_25;
  }

LABEL_12:
  v55 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v55, static Logger.conversationController);
  outlined init with copy of CallCenterProvider(v4, v110);
  v56 = OUTLINED_FUNCTION_365_0();
  outlined init with copy of CallCenterProvider(v56, v57);
  v58 = v2;
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = OUTLINED_FUNCTION_23();
    v107 = OUTLINED_FUNCTION_13_31();
    *v61 = 136315650;
    LOBYTE(v106) = v58[OBJC_IVAR____TtC15ConversationKit22ConversationController_mode];
    v62 = String.init<A>(reflecting:)();
    v64 = OUTLINED_FUNCTION_449(v62, v63);

    *(v61 + 4) = v64;
    *(v61 + 12) = 2080;
    v65 = v102;
    v66 = OUTLINED_FUNCTION_183_4(v110, v110[3]);
    v67 = OUTLINED_FUNCTION_28_14();
    v68(v67);
    v69 = OUTLINED_FUNCTION_18_9();
    OUTLINED_FUNCTION_531(v69, v70, v71, v8, v72, v73, v74, v75, v101, v107, v102, v103, v104, v105, v106, v107, v108[0], v108[1]);
    OUTLINED_FUNCTION_87();
    outlined destroy of CallControlsService?(v65, &_s10Foundation4UUIDVSgMd);
    __swift_destroy_boxed_opaque_existential_1(v110);
    v76 = OUTLINED_FUNCTION_209();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v77, v78);
    OUTLINED_FUNCTION_182();

    *(v61 + 14) = v66;
    *(v61 + 22) = 2080;
    OUTLINED_FUNCTION_2_167(v108);
    v79 = OUTLINED_FUNCTION_0_212();
    v80(v79);
    type metadata accessor for TUConversationState(0);
    v81 = String.init<A>(reflecting:)();
    __swift_destroy_boxed_opaque_existential_1(v108);
    v82 = OUTLINED_FUNCTION_208();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v83, v84);
    OUTLINED_FUNCTION_246();

    *(v61 + 24) = v81;
    _os_log_impl(&dword_1BBC58000, v59, v60, "[%s] Untracked conversation %s state changed to %s", v61, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_3_83();
    OUTLINED_FUNCTION_3_26();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v110);
    __swift_destroy_boxed_opaque_existential_1(v108);
  }

  v85 = OUTLINED_FUNCTION_101_5();
  __swift_project_boxed_opaque_existential_1(v85, v86);
  v87 = OUTLINED_FUNCTION_0_212();
  if (v88(v87) == 2 || (v89 = OUTLINED_FUNCTION_101_5(), __swift_project_boxed_opaque_existential_1(v89, v90), v91 = OUTLINED_FUNCTION_0_212(), v92(v91) == 3))
  {
    v93 = *&v58[OBJC_IVAR____TtC15ConversationKit22ConversationController_videoMessageController];
    OUTLINED_FUNCTION_184_2(v4);
    v94 = OUTLINED_FUNCTION_84_9();
    v96 = v95(v94);
    if (v96)
    {
      v97 = v96;
      v98 = [v96 handle];
    }

    else
    {
      v98 = 0;
    }

    (*((*MEMORY[0x1E69E7D40] & *v93) + 0x140))(v98);
    ConversationController.handleRingingCallChangedToActiveIfNecessary()();
  }

LABEL_21:
  OUTLINED_FUNCTION_30_0();
}

uint64_t ConversationController.handleRingingCallChangedToActiveIfNecessary()()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callWaitingUUIDs;
  result = swift_beginAccess();
  v7 = v5;
  v66 = v0;
  v8 = *&v0[v5];
  v65 = *(v8 + 16);
  if (!v65)
  {
    return result;
  }

  v55 = v7;
  v9 = &v66[OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter];
  v54 = OBJC_IVAR____TtC15ConversationKit22ConversationController_mode;
  v64 = v8 + ((*(v2 + 80) + 32) & ~*(v2 + 80));

  swift_beginAccess();
  v10 = 0;
  v57 = 0;
  v63 = v2 + 16;
  v61 = (v2 + 8);
  *&v11 = 136315394;
  v53 = v11;
  v60 = v2;
  v59 = v4;
  v62 = v8;
  v58 = v9;
  while (v10 < *(v8 + 16))
  {
    (*(v2 + 16))(v4, v64 + *(v2 + 72) * v10, v1);
    v12 = *(v9 + 3);
    v13 = *(v9 + 4);
    v14 = __swift_project_boxed_opaque_existential_1(v9, v12);
    v15 = *(v12 - 8);
    v16 = MEMORY[0x1EEE9AC00](v14);
    v18 = v9;
    v19 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v15 + 16))(v19, v16);
    v20 = (*(v13 + 24))(v12, v13);
    (*(v15 + 8))(v19, v12);
    v21 = UUID.uuidString.getter();
    v22 = MEMORY[0x1BFB209B0](v21);

    v23 = [v20 callWithUniqueProxyIdentifier_];

    swift_unknownObjectRelease();
    if (v23)
    {
      v24 = v1;
      outlined init with copy of CallCenterProvider(v18, v70);
      v25 = v70[4];
      __swift_project_boxed_opaque_existential_1(v70, v70[3]);
      lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUCall and conformance TUCall, &lazy cache variable for type metadata for TUCall);
      v26 = *(v25 + 104);
      v27 = v23;
      v26(&v68);

      if (!v69)
      {

        outlined destroy of CallControlsService?(&v68, &_s15ConversationKit0A0_pSgMd);
        v47 = v70;
LABEL_19:
        __swift_destroy_boxed_opaque_existential_1(v47);
        v2 = v60;
        v4 = v59;
        v9 = v58;
        goto LABEL_20;
      }

      outlined init with take of TapInteractionHandler(&v68, v71);
      __swift_destroy_boxed_opaque_existential_1(v70);
      v28 = v72;
      v29 = v73;
      __swift_project_boxed_opaque_existential_1(v71, v72);
      if ((*(v29 + 56))(v28, v29) != 2)
      {
        v30 = v72;
        v31 = v73;
        __swift_project_boxed_opaque_existential_1(v71, v72);
        if ((*(v31 + 56))(v30, v31) != 3)
        {

          v47 = v71;
          goto LABEL_19;
        }
      }

      v32 = v59;
      if (one-time initialization token for conversationController != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      __swift_project_value_buffer(v33, static Logger.conversationController);
      outlined init with copy of CallCenterProvider(v71, v70);
      v34 = v66;
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.default.getter();
      v56 = v34;

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v67[0] = v38;
        *v37 = v53;
        LOBYTE(v68) = v66[v54];
        v39 = String.init<A>(reflecting:)();
        v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, v67);

        *(v37 + 4) = v41;
        *(v37 + 12) = 2080;
        outlined init with copy of CallCenterProvider(v70, &v68);
        v42 = specialized >> prefix<A>(_:)(&v68);
        v44 = v43;
        outlined destroy of CallControlsService?(&v68, &_s15ConversationKit0A0_pSgMd);
        __swift_destroy_boxed_opaque_existential_1(v70);
        v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, v67);

        *(v37 + 14) = v45;
        _os_log_impl(&dword_1BBC58000, v35, v36, "[%s] Ringing call has now been answered, transitioning tracked conversation to use %s", v37, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1BFB23DF0](v38, -1, -1);
        MEMORY[0x1BFB23DF0](v37, -1, -1);
      }

      else
      {

        v46 = __swift_destroy_boxed_opaque_existential_1(v70);
      }

      v1 = v24;
      v48 = v27;
      MEMORY[0x1EEE9AC00](v46);
      *(&v53 - 2) = v32;
      v49 = v55;
      swift_beginAccess();
      v50 = v57;
      v51 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(partial apply for closure #1 in ConversationController.handleRingingCallChangedToActiveIfNecessary(), (&v53 - 2));
      if (v50)
      {
        goto LABEL_25;
      }

      v2 = v60;
      if (*(*&v66[v49] + 16) < v51)
      {
        goto LABEL_24;
      }

      v57 = 0;
      specialized Array.replaceSubrange<A>(_:with:)();
      swift_endAccess();
      v52 = v48;
      specialized ConversationController.migrate(to:with:isUpgrade:)(v71, v52, 0, v56);

      __swift_destroy_boxed_opaque_existential_1(v71);
      v9 = v58;
      v4 = v32;
    }

    else
    {
      v9 = v18;
    }

LABEL_20:
    ++v10;
    (*v61)(v4, v1);
    v8 = v62;
    if (v65 == v10)
    {
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = swift_endAccess();
  __break(1u);
  return result;
}

void ConversationController.callCenter(_:localVideoToggledFor:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v0;
  v4 = v3;
  v46 = v5;
  swift_getObjectType();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_23_19();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_170_4();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_363();
  v11 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v1 = static OS_dispatch_queue.main.getter();
  v12 = OUTLINED_FUNCTION_171_3();
  v13(v12);
  _dispatchPreconditionTest(_:)();
  v14 = OUTLINED_FUNCTION_173_2();
  v15(v14);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    OUTLINED_FUNCTION_0_6();
    goto LABEL_10;
  }

  ConversationController.lookupActiveConversation()();
  if (v47[3])
  {
    OUTLINED_FUNCTION_446();
    v16 = v48[4];
    OUTLINED_FUNCTION_183_4(v48, v48[3]);
    v17 = OUTLINED_FUNCTION_246();
    v18(v17, v16);
    v19 = *(v4 + 32);
    v20 = OUTLINED_FUNCTION_48_0();
    __swift_project_boxed_opaque_existential_1(v20, v21);
    v22 = OUTLINED_FUNCTION_47_18();
    v23(v22, v19);
    OUTLINED_FUNCTION_2_125();
    v24 = static UUID.== infix(_:_:)();
    v25 = *(v7 + 8);
    v26 = OUTLINED_FUNCTION_281();
    v25(v26);
    v27 = OUTLINED_FUNCTION_196_2();
    v25(v27);
    if ((v24 & 1) == 0)
    {
LABEL_17:
      __swift_destroy_boxed_opaque_existential_1(v48);
      goto LABEL_18;
    }

    v28 = &v2[OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState];
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    if ((v28[16] & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    if ((dispatch thunk of CPCarPlayObserver.isCarplaySessionConnected.getter() & 1) != 0 || (OUTLINED_FUNCTION_3_0(), swift_beginAccess(), OUTLINED_FUNCTION_528(), v36 = *(v4 + 328), swift_unknownObjectRetain(), v37 = OUTLINED_FUNCTION_157(), v38 = v36(v37), swift_unknownObjectRelease(), (v38 & 1) == 0))
    {
      ConversationController.stopLocalVideo()();
    }

    else if ((v28[16] & 0x80000000) == 0)
    {
LABEL_5:
      if ((dispatch thunk of CPCarPlayObserver.isCarplaySessionConnected.getter() & 1) == 0)
      {
        v29 = &v2[OBJC_IVAR____TtC15ConversationKit22ConversationController_call];
        OUTLINED_FUNCTION_3_0();
        swift_beginAccess();
        v30 = *(v29 + 1);
        swift_getObjectType();
        v31 = *(v30 + 328);
        swift_unknownObjectRetain();
        v32 = OUTLINED_FUNCTION_7_8();
        LOBYTE(v29) = v31(v32);
        swift_unknownObjectRelease();
        if ((v29 & 1) != 0 && v2[OBJC_IVAR____TtC15ConversationKit22ConversationController_mode] == 1)
        {
          ConversationController.startLocalVideo(allowVideoUpgrade:)(0);
        }
      }
    }

    v39 = &v2[OBJC_IVAR____TtC15ConversationKit22ConversationController_call];
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v40 = *(v39 + 1);
    outlined init with copy of CallCenterProvider(v46, v47);
    v41 = OBJC_IVAR____TtC15ConversationKit22ConversationController_deviceOrientation;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v42 = *&v2[v41];
    v43 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationState;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    LOBYTE(v43) = *&v2[v43] == 3;
    ObjectType = swift_getObjectType();
    v45 = swift_unknownObjectRetain();
    specialized BroadcastingState.init(call:callCenter:deviceOrientation:shouldMaintainCameraPosition:)(v45, v47, v42, v43, ObjectType, v40);
    ConversationController.broadcastingState.setter();
    goto LABEL_17;
  }

  outlined destroy of CallControlsService?(v47, &_s15ConversationKit0A0_pSgMd);
  if (one-time initialization token for conversationKit != -1)
  {
    goto LABEL_20;
  }

LABEL_10:
  static os_log_type_t.error.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  OUTLINED_FUNCTION_37_22();
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1BC4BA940;
  v48[0] = v2;
  v34 = v2;
  String.init<A>(reflecting:)();
  OUTLINED_FUNCTION_213_1();
  *(v33 + 56) = MEMORY[0x1E69E6158];
  v35 = lazy protocol witness table accessor for type String and conformance String();
  OUTLINED_FUNCTION_318_0(v35);
  OUTLINED_FUNCTION_51_22();
  os_log(_:dso:log:type:_:)();

LABEL_18:
  OUTLINED_FUNCTION_30_0();
}

void ConversationController.callCenter(_:remoteMembersChangedFor:)()
{
  ConversationController.callCenter(_:remoteMembersChangedFor:)();
}

{
  OUTLINED_FUNCTION_29();
  v10 = OUTLINED_FUNCTION_440(v4, v5, v6, v7, v8, v9);
  v11 = OUTLINED_FUNCTION_391_0(v10);
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_227();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_78_4();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_7_10();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v0 = static OS_dispatch_queue.main.getter();
  v17 = OUTLINED_FUNCTION_450();
  v18(v17);
  v19 = _dispatchPreconditionTest(_:)();
  v20 = OUTLINED_FUNCTION_246_0();
  v21(v20);
  if ((v19 & 1) == 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  ConversationController.lookupActiveConversation()();
  if (!v36[3])
  {
    outlined destroy of CallControlsService?(v36, &_s15ConversationKit0A0_pSgMd);
    if (one-time initialization token for conversationKit == -1)
    {
LABEL_9:
      static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      OUTLINED_FUNCTION_37_22();
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_1BC4BA940;
      v37[0] = v1;
      v35 = v1;
      OUTLINED_FUNCTION_387_0();
      OUTLINED_FUNCTION_267_2();
      *(v34 + 56) = MEMORY[0x1E69E6158];
      *(v34 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v34 + 32) = v1;
      *(v34 + 40) = v3;
      OUTLINED_FUNCTION_94_11();
      os_log(_:dso:log:type:_:)();

      goto LABEL_10;
    }

LABEL_12:
    OUTLINED_FUNCTION_0_6();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_335();
  v22 = v37[4];
  OUTLINED_FUNCTION_203_4(v37, v37[3]);
  v23 = OUTLINED_FUNCTION_28_0();
  v24(v23, v22);
  v25 = *(v2 + 32);
  v26 = OUTLINED_FUNCTION_309();
  OUTLINED_FUNCTION_203_4(v26, v27);
  v28 = OUTLINED_FUNCTION_28_0();
  v29(v28, v25);
  v30 = static UUID.== infix(_:_:)();
  v31 = *(v13 + 8);
  v32 = OUTLINED_FUNCTION_28_14();
  v31(v32);
  (v31)(v3, v11);
  if (v30)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    OUTLINED_FUNCTION_37_22();
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1BC4BA940;
    v36[0] = v1;
    v1;
    String.init<A>(reflecting:)();
    OUTLINED_FUNCTION_43_7();
    *(v33 + 56) = MEMORY[0x1E69E6158];
    *(v33 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v33 + 32) = v3;
    *(v33 + 40) = v25;
    static os_log_type_t.default.getter();
    OUTLINED_FUNCTION_41_0();
    os_log(_:dso:log:type:_:)();

    outlined init with copy of CallCenterProvider(v2, v36);
    ConversationController.update(with:)();
    outlined destroy of CallControlsService?(v36, &_s15ConversationKit0A0_pSgMd);
  }

  __swift_destroy_boxed_opaque_existential_1(v37);
LABEL_10:
  OUTLINED_FUNCTION_30_0();
}

void ConversationController.callCenter(_:activeRemoteParticipantsChangedFor:)()
{
  ConversationController.callCenter(_:activeRemoteParticipantsChangedFor:)();
}

{
  OUTLINED_FUNCTION_29();
  v10 = OUTLINED_FUNCTION_440(v4, v5, v6, v7, v8, v9);
  v11 = OUTLINED_FUNCTION_391_0(v10);
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_227();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_78_4();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_7_10();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v0 = static OS_dispatch_queue.main.getter();
  v17 = OUTLINED_FUNCTION_450();
  v18(v17);
  v19 = _dispatchPreconditionTest(_:)();
  v20 = OUTLINED_FUNCTION_246_0();
  v21(v20);
  if ((v19 & 1) == 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  ConversationController.lookupActiveConversation()();
  if (!v36[3])
  {
    outlined destroy of CallControlsService?(v36, &_s15ConversationKit0A0_pSgMd);
    if (one-time initialization token for conversationKit == -1)
    {
LABEL_9:
      static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      OUTLINED_FUNCTION_37_22();
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_1BC4BA940;
      v37[0] = v1;
      v35 = v1;
      OUTLINED_FUNCTION_387_0();
      OUTLINED_FUNCTION_267_2();
      *(v34 + 56) = MEMORY[0x1E69E6158];
      *(v34 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v34 + 32) = v1;
      *(v34 + 40) = v3;
      OUTLINED_FUNCTION_94_11();
      os_log(_:dso:log:type:_:)();

      goto LABEL_10;
    }

LABEL_12:
    OUTLINED_FUNCTION_0_6();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_335();
  v22 = v37[4];
  OUTLINED_FUNCTION_203_4(v37, v37[3]);
  v23 = OUTLINED_FUNCTION_28_0();
  v24(v23, v22);
  v25 = v2[4];
  v26 = OUTLINED_FUNCTION_309();
  OUTLINED_FUNCTION_203_4(v26, v27);
  v28 = OUTLINED_FUNCTION_28_0();
  v29(v28, v25);
  v30 = static UUID.== infix(_:_:)();
  v31 = *(v13 + 8);
  v32 = OUTLINED_FUNCTION_28_14();
  v31(v32);
  (v31)(v3, v11);
  if (v30)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    OUTLINED_FUNCTION_37_22();
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1BC4BA940;
    v36[0] = v1;
    v1;
    String.init<A>(reflecting:)();
    OUTLINED_FUNCTION_508();
    *(v33 + 56) = MEMORY[0x1E69E6158];
    *(v33 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v33 + 32) = v1;
    *(v33 + 40) = v25;
    static os_log_type_t.default.getter();
    OUTLINED_FUNCTION_41_0();
    os_log(_:dso:log:type:_:)();

    ConversationController.checkScreenTimeRestricts(_:)(v2);
    outlined init with copy of CallCenterProvider(v2, v36);
    ConversationController.update(with:)();
    outlined destroy of CallControlsService?(v36, &_s15ConversationKit0A0_pSgMd);
  }

  __swift_destroy_boxed_opaque_existential_1(v37);
LABEL_10:
  OUTLINED_FUNCTION_30_0();
}

void closure #1 in ConversationController.callCenter(_:oneToOneModeChangedFor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - v11;
  v13 = swift_projectBox();
  ConversationController.remoteOneToOneParticipant.getter();
  swift_beginAccess();
  outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(v12, v13, &_s15ConversationKit11ParticipantVSgMd);
  swift_beginAccess();
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v13, v10, &_s15ConversationKit11ParticipantVSgMd);
  if (__swift_getEnumTagSinglePayload(v10, 1, v4) == 1)
  {
    outlined destroy of CallControlsService?(v10, &_s15ConversationKit11ParticipantVSgMd);
LABEL_11:
    v15 = 0;
    goto LABEL_12;
  }

  _s15ConversationKit11ParticipantVWObTm_8(v10, v6);
  Participant.videoInfo.getter();
  if (!v22[0])
  {
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    goto LABEL_9;
  }

  specialized Dictionary.subscript.getter();
  outlined destroy of CallControlsService?(v22, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
  if (!*(&v20 + 1))
  {
LABEL_9:
    outlined destroy of CallControlsService?(&v19, &_s15ConversationKit24ParticipantVideoProvider_pSgMd);
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit24ParticipantVideoProvider_pMd);
  type metadata accessor for RemoteParticipantVideoProvider();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    _s15ConversationKit11ParticipantVWOhTm_18(v6, type metadata accessor for Participant);
    goto LABEL_11;
  }

  v14 = v18;
  v15 = (*((*MEMORY[0x1E69E7D40] & *v18) + 0x100))();

  _s15ConversationKit11ParticipantVWOhTm_18(v6, type metadata accessor for Participant);
  if (!v15)
  {
    goto LABEL_11;
  }

LABEL_12:
  swift_beginAccess();
  v16 = *(a3 + 16);
  *(a3 + 16) = v15;
}

void specialized closure #2 in ConversationController.callCenter(_:oneToOneModeChangedFor:)(_BYTE *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v133 = a7;
  v134 = a6;
  v132 = a5;
  v119 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v124 = v118.i64 - v10;
  v123 = type metadata accessor for Participant(0);
  v11 = MEMORY[0x1EEE9AC00](v123);
  v120 = v118.i64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v126 = v118.i64 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v127 = v118.i64 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v128 = &v118.i8[-v18];
  v19 = MEMORY[0x1EEE9AC00](v17);
  v125.i64[0] = v118.i64 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v129 = v118.i64 - v21;
  v22 = swift_projectBox();
  v121 = a2;
  v122 = v22;
  v23 = OBJC_IVAR____TtC15ConversationKit22ConversationController_isOneToOneModeEnabledByCallCenter;
  v24 = a1[OBJC_IVAR____TtC15ConversationKit22ConversationController_isOneToOneModeEnabledByCallCenter];
  v25 = a2[3];
  v26 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v25);
  v27 = *(v26 + 200);
  v28 = v27(v25, v26);
  v130 = v23;
  v131 = a1;
  a1[v23] = v28 & 1;
  ConversationController.isOneToOneModeEnabledByCallCenter.didset();
  if (v24 == 1 && (v27(v25, v26) & 1) == 0)
  {
    v29 = v121[3];
    v30 = v121[4];
    __swift_project_boxed_opaque_existential_1(v121, v29);
    active = Conversation.displayableActiveParticipants.getter(v29, v30);
    v32 = specialized Set.count.getter(active);

    if (v32 == 2)
    {
      v33 = v121[3];
      v34 = v121[4];
      __swift_project_boxed_opaque_existential_1(v121, v33);
      if ((*(v34 + 184))(v33, v34))
      {
        if (one-time initialization token for conversationController != -1)
        {
          swift_once();
        }

        v35 = type metadata accessor for Logger();
        __swift_project_value_buffer(v35, static Logger.conversationController);
        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          *v38 = 0;
          _os_log_impl(&dword_1BBC58000, v36, v37, "Handoff is ongoing - we shouldn't switch to square tiles until a timeout", v38, 2u);
          MEMORY[0x1BFB23DF0](v38, -1, -1);
        }
      }
    }
  }

  v39 = OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant;
  v40 = v131;
  swift_beginAccess();
  v41 = v129;
  _s15ConversationKit11ParticipantVWOcTm_17(&v40[v39], v129);
  Participant.videoInfo.getter();
  _s15ConversationKit11ParticipantVWOhTm_18(v41, type metadata accessor for Participant);
  if (v141)
  {
    memcpy(&v140[1], v142, 0x43uLL);
    v140[0] = v141;
    ConversationController.videoProviderForResizingLocal.getter(v139);
    if (one-time initialization token for conversationController != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    v43 = __swift_project_value_buffer(v42, static Logger.conversationController);
    outlined init with copy of CallCenterProvider(v139, v135);
    v121 = v43;
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    v46 = &unk_1BC4BA000;
    if (os_log_type_enabled(v44, v45))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v138[0] = v48;
      *v47 = 136315138;
      outlined init with copy of CallCenterProvider(v135, __dst);
      v49 = specialized >> prefix<A>(_:)(__dst);
      v51 = v50;
      outlined destroy of CallControlsService?(__dst, &_s15ConversationKit24ParticipantVideoProvider_pSgMd);
      __swift_destroy_boxed_opaque_existential_1(v135);
      v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, v138);

      *(v47 + 4) = v52;
      v46 = &unk_1BC4BA000;
      _os_log_impl(&dword_1BBC58000, v44, v45, "Resizing local preview with video provider: %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v48);
      MEMORY[0x1BFB23DF0](v48, -1, -1);
      MEMORY[0x1BFB23DF0](v47, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v135);
    }

    outlined init with copy of CallCenterProvider(v139, __dst);
    v53 = ConversationController.isOneToOneModeEnabled.getter();
    v54 = OBJC_IVAR____TtC15ConversationKit22ConversationController_isUsingIPadExternalCamera;
    swift_beginAccess();
    v55 = v40[v54];
    v56 = OBJC_IVAR____TtC15ConversationKit22ConversationController_deviceOrientation;
    swift_beginAccess();
    v57 = *&v40[v56];
    v58 = v125.i64[0];
    _s15ConversationKit11ParticipantVWOcTm_17(&v40[v39], v125.i64[0]);
    Participant.aspectRatio.getter(v143);
    _s15ConversationKit11ParticipantVWOhTm_18(v58, type metadata accessor for Participant);
    v129 = v39;
    if (v53)
    {
      static AspectRatio.localAspectRatios(with:localOrientation:needsLandscapeCameraOrientation:cachedLocalAspectRatio:localOrientationMatchesReceiver:)(__dst, v57, v55, v143, 0, v135);
      v59 = v135[1];
      v125 = v135[0];
      v118 = *(&v135[1] + 8);
      v60 = BYTE8(v135[2]);
      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v42, static Logger.conversationKit);
      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v138[0] = v64;
        *v63 = v46[289];
        if (v59)
        {
          v65 = 0xE300000000000000;
          v66 = 7104878;
        }

        else
        {
          v135[0] = v125;
          type metadata accessor for CGSize(0);
          v66 = String.init<A>(reflecting:)();
          v65 = v70;
        }

        v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v65, v138);

        *(v63 + 4) = v71;
        _os_log_impl(&dword_1BBC58000, v61, v62, "Updating the local video aspect ratio to %s", v63, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v64);
        MEMORY[0x1BFB23DF0](v64, -1, -1);
        MEMORY[0x1BFB23DF0](v63, -1, -1);

        __swift_destroy_boxed_opaque_existential_1(__dst);
        v46 = &unk_1BC4BA000;
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(__dst);
      }

      v69 = 0uLL;
      if ((v59 & 1) == 0)
      {
        v72 = vextq_s8(v125, v125, 8uLL);
        if ((vmovn_s64(vceqq_f64(v125, v72)).u8[0] & 1) == 0)
        {
          v73 = 0;
          v116 = vdup_n_s32(v60);
          v117.i64[0] = v116.u32[0];
          v117.i64[1] = v116.u32[1];
          v69 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v117, 0x3FuLL)), v72, v118);
          v68 = v125.i64[1];
          v67 = v125.i64[0];
          goto LABEL_30;
        }
      }

      v67 = 0;
      v68 = 0;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(__dst);
      v67 = 0;
      v68 = 0;
      v69 = 0uLL;
    }

    v73 = 1;
LABEL_30:
    v140[5] = v67;
    v140[6] = v68;
    *&v140[7] = v69;
    LOBYTE(v140[9]) = v73;
    if (ConversationController.isOneToOneModeEnabled.getter())
    {
      LOBYTE(v140[2]) = 0;
    }

    memcpy(v138, v140, 0x4BuLL);
    outlined init with copy of Participant.VideoInfo(v138, v135);
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.default.getter();
    outlined destroy of Participant.VideoInfo(v138);
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v137[0] = v77;
      *v76 = v46[289];
      memcpy(v135, v138, 0x4BuLL);
      outlined init with copy of Participant.VideoInfo(v138, __dst);
      v78 = String.init<A>(reflecting:)();
      v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v79, v137);

      *(v76 + 4) = v80;
      _os_log_impl(&dword_1BBC58000, v74, v75, "Due to one-to-one change, updated local participant videoInfo to %s", v76, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v77);
      MEMORY[0x1BFB23DF0](v77, -1, -1);
      MEMORY[0x1BFB23DF0](v76, -1, -1);
    }

    v81 = v129;
    v82 = v127;
    _s15ConversationKit11ParticipantVWOcTm_17(&v40[v129], v127);
    ConversationController.conversationIsAVLess.getter();
    swift_beginAccess();
    memcpy(v136, v140, 0x4BuLL);
    memcpy(v137, v140, 0x4BuLL);
    outlined init with copy of Participant.VideoInfo(v136, v135);
    outlined destroy of Participant.VideoInfo(v137);
    memcpy(__dst, v136, 0x4BuLL);
    memset(v135, 0, 24);
    *(&v135[1] + 1) = 1;
    bzero(&v135[2], 0xB1uLL);
    v83 = v126;
    _s15ConversationKit11ParticipantVWOcTm_17(&v40[v81], v126);
    v84 = Participant.captionInfo.getter();
    _s15ConversationKit11ParticipantVWOhTm_18(v83, type metadata accessor for Participant);
    Participant.copresenceInfo.getter(v144);
    v85 = v128;
    Participant.asJoined(avInfo:videoInfo:screenInfo:captionInfo:copresenceInfo:)();
    outlined destroy of CallControlsService?(v144, &_s15ConversationKit11ParticipantV14CopresenceInfoVSgMd);
    outlined destroy of Participant.VideoInfo(v136);
    outlined consume of Participant.CaptionInfo?(v84);
    outlined destroy of CallControlsService?(v135, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd);
    _s15ConversationKit11ParticipantVWOhTm_18(v82, type metadata accessor for Participant);
    __swift_destroy_boxed_opaque_existential_1(v139);
    swift_beginAccess();
    _s15ConversationKit11ParticipantVWOdTm_0(v85, &v40[v81]);
    swift_endAccess();
  }

  closure #1 in ConversationController.callCenter(_:oneToOneModeChangedFor:)(v132, v134, v133);
  if (v40[v130] != 1)
  {
    goto LABEL_52;
  }

  v86 = v122;
  swift_beginAccess();
  v87 = v86;
  v88 = v124;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v87, v124, &_s15ConversationKit11ParticipantVSgMd);
  if (__swift_getEnumTagSinglePayload(v88, 1, v123) == 1)
  {
    outlined destroy of CallControlsService?(v88, &_s15ConversationKit11ParticipantVSgMd);
    goto LABEL_52;
  }

  v89 = v120;
  _s15ConversationKit11ParticipantVWObTm_8(v88, v120);
  Participant.videoInfo.getter();
  if (!*&v135[0])
  {
    goto LABEL_50;
  }

  v91 = *(&v135[3] + 1);
  v90 = *&v135[4];
  v92 = BYTE8(v135[4]);
  v94 = *(&v135[2] + 1);
  v93 = *&v135[3];
  outlined destroy of CallControlsService?(v135, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
  v95 = v94 == 1.0;
  if (v93 != 1.0)
  {
    v95 = 0;
  }

  if ((v92 & 1) == 0 && !v95)
  {
    goto LABEL_50;
  }

  v96 = v91 == 1.0;
  if (v90 != 1.0)
  {
    v96 = 0;
  }

  if ((v92 & 1) == 0 && !v96 || (v97 = v119, swift_beginAccess(), (v98 = *(v97 + 16)) == 0))
  {
LABEL_50:
    v102 = v89;
    goto LABEL_51;
  }

  v99 = v98;
  v100 = [v99 remoteVideoAttributes];
  if (v100)
  {
    v101 = v100;
    ConversationController.remoteVideoClient(_:remoteVideoAttributesDidChange:wantsDispatchToMain:)();

    v102 = v120;
LABEL_51:
    _s15ConversationKit11ParticipantVWOhTm_18(v102, type metadata accessor for Participant);
    goto LABEL_52;
  }

  _s15ConversationKit11ParticipantVWOhTm_18(v120, type metadata accessor for Participant);

LABEL_52:
  if (one-time initialization token for conversationController != -1)
  {
    swift_once();
  }

  v103 = type metadata accessor for Logger();
  __swift_project_value_buffer(v103, static Logger.conversationController);
  v104 = v40;
  v105 = Logger.logObject.getter();
  v106 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v105, v106))
  {
    v107 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    v140[0] = v108;
    *v107 = 136315394;
    v136[0] = v104[OBJC_IVAR____TtC15ConversationKit22ConversationController_mode];
    v109 = String.init<A>(reflecting:)();
    v111 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v109, v110, v140);

    *(v107 + 4) = v111;
    *(v107 + 12) = 1024;
    v112 = ConversationController.isOneToOneModeEnabled.getter();

    *(v107 + 14) = v112 & 1;
    _os_log_impl(&dword_1BBC58000, v105, v106, "[%s] Updated one-to-one mode to %{BOOL}d", v107, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v108);
    MEMORY[0x1BFB23DF0](v108, -1, -1);
    MEMORY[0x1BFB23DF0](v107, -1, -1);
  }

  else
  {
  }

  v113 = &v104[OBJC_IVAR____TtC15ConversationKit22ConversationController_oneToOneModeDidChange];
  swift_beginAccess();
  v114 = *v113;
  if (*v113)
  {

    v115 = ConversationController.isOneToOneModeEnabled.getter();
    v114(v115 & 1, 0);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v114);
  }
}

uint64_t closure #2 in ConversationController.callCenter(_:oneToOneModeChangedFor:)(_BYTE *a1, void *a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v124 = a6;
  v136 = a4;
  v137 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v129 = &v121[-v9];
  v128 = type metadata accessor for Participant(0);
  v10 = MEMORY[0x1EEE9AC00](v128);
  v125 = &v121[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x1EEE9AC00](v10);
  v131 = &v121[-v13];
  v14 = MEMORY[0x1EEE9AC00](v12);
  v132 = &v121[-v15];
  v16 = MEMORY[0x1EEE9AC00](v14);
  v133 = &v121[-v17];
  v18 = MEMORY[0x1EEE9AC00](v16);
  v130 = &v121[-v19];
  MEMORY[0x1EEE9AC00](v18);
  *&v134.f64[0] = &v121[-v20];
  v127 = swift_projectBox();
  v21 = OBJC_IVAR____TtC15ConversationKit22ConversationController_isOneToOneModeEnabledByCallCenter;
  v22 = a1[OBJC_IVAR____TtC15ConversationKit22ConversationController_isOneToOneModeEnabledByCallCenter];
  v23 = a2[3];
  v24 = a2[4];
  v126.i64[0] = a2;
  __swift_project_boxed_opaque_existential_1(a2, v23);
  v25 = *(v24 + 200);
  v26 = v25(v23, v24);
  v135 = v21;
  a1[v21] = v26 & 1;
  v138 = a1;
  ConversationController.isOneToOneModeEnabledByCallCenter.didset();
  if (v22 == 1 && (v25(v23, v24) & 1) == 0)
  {
    v27 = *(v126.i64[0] + 24);
    v28 = *(v126.i64[0] + 32);
    __swift_project_boxed_opaque_existential_1(v126.i64[0], v27);
    active = Conversation.displayableActiveParticipants.getter(v27, v28);
    v30 = specialized Set.count.getter(active);

    if (v30 == 2)
    {
      v31 = *(v126.i64[0] + 24);
      v32 = *(v126.i64[0] + 32);
      __swift_project_boxed_opaque_existential_1(v126.i64[0], v31);
      if ((*(v32 + 184))(v31, v32))
      {
        if (one-time initialization token for conversationController != -1)
        {
          swift_once();
        }

        v33 = type metadata accessor for Logger();
        __swift_project_value_buffer(v33, static Logger.conversationController);
        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          *v36 = 0;
          _os_log_impl(&dword_1BBC58000, v34, v35, "Handoff is ongoing - we shouldn't switch to square tiles until a timeout", v36, 2u);
          MEMORY[0x1BFB23DF0](v36, -1, -1);
        }
      }
    }
  }

  v37 = OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant;
  v38 = v138;
  swift_beginAccess();
  v39 = *&v134.f64[0];
  _s15ConversationKit11ParticipantVWOcTm_17(&v37[v38], *&v134.f64[0]);
  Participant.videoInfo.getter();
  v40 = _s15ConversationKit11ParticipantVWOhTm_18(v39, type metadata accessor for Participant);
  if (v145)
  {
    memcpy(&v144[1], v146, 0x43uLL);
    v144[0] = v145;
    ConversationController.videoProviderForResizingLocal.getter(v143);
    if (one-time initialization token for conversationController != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    v42 = __swift_project_value_buffer(v41, static Logger.conversationController);
    outlined init with copy of CallCenterProvider(v143, v139);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *&v134.f64[0] = v41;
      v47 = v42;
      v48 = v37;
      v49 = v46;
      v142[0] = v46;
      *v45 = 136315138;
      outlined init with copy of CallCenterProvider(v139, __dst);
      v50 = specialized >> prefix<A>(_:)(__dst);
      v52 = v51;
      outlined destroy of CallControlsService?(__dst, &_s15ConversationKit24ParticipantVideoProvider_pSgMd);
      __swift_destroy_boxed_opaque_existential_1(v139);
      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, v142);

      *(v45 + 4) = v53;
      _os_log_impl(&dword_1BBC58000, v43, v44, "Resizing local preview with video provider: %s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v49);
      v54 = v49;
      v37 = v48;
      v42 = v47;
      v41 = *&v134.f64[0];
      MEMORY[0x1BFB23DF0](v54, -1, -1);
      MEMORY[0x1BFB23DF0](v45, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v139);
    }

    outlined init with copy of CallCenterProvider(v143, __dst);
    v55 = ConversationController.isOneToOneModeEnabled.getter();
    v56 = OBJC_IVAR____TtC15ConversationKit22ConversationController_isUsingIPadExternalCamera;
    swift_beginAccess();
    v57 = *(v38 + v56);
    v58 = OBJC_IVAR____TtC15ConversationKit22ConversationController_deviceOrientation;
    swift_beginAccess();
    v59 = *(v38 + v58);
    v60 = v130;
    _s15ConversationKit11ParticipantVWOcTm_17(&v37[v38], v130);
    Participant.aspectRatio.getter(v147);
    _s15ConversationKit11ParticipantVWOhTm_18(v60, type metadata accessor for Participant);
    if (v55)
    {
      v130 = v37;
      static AspectRatio.localAspectRatios(with:localOrientation:needsLandscapeCameraOrientation:cachedLocalAspectRatio:localOrientationMatchesReceiver:)(__dst, v59, v57, v147, 0, v139);
      v61 = v139[1];
      v134 = v139[0];
      v126 = *(&v139[1] + 8);
      v62 = BYTE8(v139[2]);
      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v41, static Logger.conversationKit);
      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.default.getter();
      v65 = &unk_1BC4BA000;
      if (os_log_type_enabled(v63, v64))
      {
        v122 = v62;
        v123 = v42;
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v142[0] = v67;
        *v66 = 136315138;
        if (v61)
        {
          v68 = 0xE300000000000000;
          v69 = 7104878;
        }

        else
        {
          v139[0] = v134;
          type metadata accessor for CGSize(0);
          v69 = String.init<A>(reflecting:)();
          v68 = v74;
        }

        v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v68, v142);

        *(v66 + 4) = v75;
        _os_log_impl(&dword_1BBC58000, v63, v64, "Updating the local video aspect ratio to %s", v66, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v67);
        MEMORY[0x1BFB23DF0](v67, -1, -1);
        MEMORY[0x1BFB23DF0](v66, -1, -1);

        __swift_destroy_boxed_opaque_existential_1(__dst);
        v65 = &unk_1BC4BA000;
        v62 = v122;
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(__dst);
      }

      v72 = 0uLL;
      if (v61 & 1) != 0 || (v76 = vextq_s8(v134, v134, 8uLL), (vmovn_s64(vceqq_f64(v134, v76)).u8[0]))
      {
        v70 = 0;
        v71 = 0;
        v73 = 1;
      }

      else
      {
        v73 = 0;
        v77 = vdup_n_s32(v62);
        v78.i64[0] = v77.u32[0];
        v78.i64[1] = v77.u32[1];
        v72 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v78, 0x3FuLL)), v76, v126);
        v71 = *&v134.f64[1];
        v70 = *&v134.f64[0];
      }

      v37 = v130;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(__dst);
      v70 = 0;
      v71 = 0;
      v72 = 0uLL;
      v73 = 1;
      v65 = &unk_1BC4BA000;
    }

    v144[5] = v70;
    v144[6] = v71;
    *&v144[7] = v72;
    LOBYTE(v144[9]) = v73;
    if (ConversationController.isOneToOneModeEnabled.getter())
    {
      LOBYTE(v144[2]) = 0;
    }

    memcpy(v142, v144, 0x4BuLL);
    outlined init with copy of Participant.VideoInfo(v142, v139);
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.default.getter();
    outlined destroy of Participant.VideoInfo(v142);
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v141[0] = v82;
      *v81 = v65[289];
      memcpy(v139, v142, 0x4BuLL);
      outlined init with copy of Participant.VideoInfo(v142, __dst);
      v83 = String.init<A>(reflecting:)();
      v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v84, v141);

      *(v81 + 4) = v85;
      _os_log_impl(&dword_1BBC58000, v79, v80, "Due to one-to-one change, updated local participant videoInfo to %s", v81, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v82);
      MEMORY[0x1BFB23DF0](v82, -1, -1);
      MEMORY[0x1BFB23DF0](v81, -1, -1);
    }

    v86 = v132;
    _s15ConversationKit11ParticipantVWOcTm_17(&v37[v38], v132);
    ConversationController.conversationIsAVLess.getter();
    swift_beginAccess();
    memcpy(v140, v144, 0x4BuLL);
    memcpy(v141, v144, 0x4BuLL);
    outlined init with copy of Participant.VideoInfo(v140, v139);
    outlined destroy of Participant.VideoInfo(v141);
    memcpy(__dst, v140, 0x4BuLL);
    memset(v139, 0, 24);
    *(&v139[1] + 1) = 1;
    bzero(&v139[2], 0xB1uLL);
    v87 = v131;
    _s15ConversationKit11ParticipantVWOcTm_17(&v37[v38], v131);
    v88 = Participant.captionInfo.getter();
    _s15ConversationKit11ParticipantVWOhTm_18(v87, type metadata accessor for Participant);
    Participant.copresenceInfo.getter(v148);
    v89 = v133;
    Participant.asJoined(avInfo:videoInfo:screenInfo:captionInfo:copresenceInfo:)();
    outlined destroy of CallControlsService?(v148, &_s15ConversationKit11ParticipantV14CopresenceInfoVSgMd);
    outlined destroy of Participant.VideoInfo(v140);
    outlined consume of Participant.CaptionInfo?(v88);
    outlined destroy of CallControlsService?(v139, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd);
    _s15ConversationKit11ParticipantVWOhTm_18(v86, type metadata accessor for Participant);
    __swift_destroy_boxed_opaque_existential_1(v143);
    swift_beginAccess();
    _s15ConversationKit11ParticipantVWOdTm_0(v89, &v37[v38]);
    v40 = swift_endAccess();
  }

  v137(v40);
  if (*(v38 + v135) == 1)
  {
    v90 = v127;
    swift_beginAccess();
    v91 = v90;
    v92 = v129;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v91, v129, &_s15ConversationKit11ParticipantVSgMd);
    if (__swift_getEnumTagSinglePayload(v92, 1, v128) == 1)
    {
      outlined destroy of CallControlsService?(v92, &_s15ConversationKit11ParticipantVSgMd);
      goto LABEL_53;
    }

    v93 = v125;
    _s15ConversationKit11ParticipantVWObTm_8(v92, v125);
    Participant.videoInfo.getter();
    if (!*&v139[0])
    {
      goto LABEL_51;
    }

    v95 = *(&v139[3] + 1);
    v94 = *&v139[4];
    v96 = BYTE8(v139[4]);
    v98 = *(&v139[2] + 1);
    v97 = *&v139[3];
    outlined destroy of CallControlsService?(v139, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
    v99 = v98 == 1.0;
    if (v97 != 1.0)
    {
      v99 = 0;
    }

    if ((v96 & 1) == 0 && !v99)
    {
      goto LABEL_51;
    }

    v100 = v95 == 1.0;
    if (v94 != 1.0)
    {
      v100 = 0;
    }

    if ((v96 & 1) == 0 && !v100 || (v101 = v124, swift_beginAccess(), (v102 = *(v101 + 16)) == 0))
    {
LABEL_51:
      v106 = v93;
      goto LABEL_52;
    }

    v103 = v102;
    v104 = [v103 remoteVideoAttributes];
    if (v104)
    {
      v105 = v104;
      ConversationController.remoteVideoClient(_:remoteVideoAttributesDidChange:wantsDispatchToMain:)();

      v106 = v125;
LABEL_52:
      _s15ConversationKit11ParticipantVWOhTm_18(v106, type metadata accessor for Participant);
      goto LABEL_53;
    }

    _s15ConversationKit11ParticipantVWOhTm_18(v125, type metadata accessor for Participant);
  }

LABEL_53:
  if (one-time initialization token for conversationController != -1)
  {
    swift_once();
  }

  v107 = type metadata accessor for Logger();
  __swift_project_value_buffer(v107, static Logger.conversationController);
  v108 = v38;
  v109 = Logger.logObject.getter();
  v110 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v109, v110))
  {
    v111 = swift_slowAlloc();
    v112 = swift_slowAlloc();
    v144[0] = v112;
    *v111 = 136315394;
    v140[0] = v108[OBJC_IVAR____TtC15ConversationKit22ConversationController_mode];
    v113 = String.init<A>(reflecting:)();
    v115 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v113, v114, v144);

    *(v111 + 4) = v115;
    *(v111 + 12) = 1024;
    v116 = ConversationController.isOneToOneModeEnabled.getter();

    *(v111 + 14) = v116 & 1;
    _os_log_impl(&dword_1BBC58000, v109, v110, "[%s] Updated one-to-one mode to %{BOOL}d", v111, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v112);
    MEMORY[0x1BFB23DF0](v112, -1, -1);
    MEMORY[0x1BFB23DF0](v111, -1, -1);
  }

  else
  {
  }

  v117 = &v108[OBJC_IVAR____TtC15ConversationKit22ConversationController_oneToOneModeDidChange];
  result = swift_beginAccess();
  v119 = *v117;
  if (*v117)
  {

    v120 = ConversationController.isOneToOneModeEnabled.getter();
    v119(v120 & 1, 0);
    return outlined consume of (@escaping @callee_guaranteed () -> ())?(v119);
  }

  return result;
}

void ConversationController.remoteVideoClient(_:remoteVideoAttributesDidChange:wantsDispatchToMain:)()
{
  OUTLINED_FUNCTION_29();
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_410_0();
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_2_12();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_7();
  type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_37_0();
  v9 = swift_allocObject();
  v9[2] = v2;
  v9[3] = v6;
  v9[4] = v0;
  if (v4)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v10 = v0;
    v11 = v6;
    v12 = v2;
    v31 = static OS_dispatch_queue.main.getter();
    OUTLINED_FUNCTION_24();
    v13 = swift_allocObject();
    *(v13 + 16) = partial apply for closure #1 in ConversationController.remoteVideoClient(_:remoteVideoAttributesDidChange:wantsDispatchToMain:);
    *(v13 + 24) = v9;
    v32[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
    v32[5] = v13;
    OUTLINED_FUNCTION_5_73();
    OUTLINED_FUNCTION_4_81(COERCE_DOUBLE(1107296256));
    v32[2] = v14;
    v32[3] = &block_descriptor_170;
    v15 = _Block_copy(v32);

    static DispatchQoS.unspecified.getter();
    OUTLINED_FUNCTION_3_164();
    lazy protocol witness table accessor for type ConversationController and conformance ConversationController(v16, v17);
    v18 = OUTLINED_FUNCTION_15_14();
    __swift_instantiateConcreteTypeFromMangledNameV2(v18);
    OUTLINED_FUNCTION_9_8();
    lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v19, v20);
    OUTLINED_FUNCTION_78_8();
    OUTLINED_FUNCTION_260();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v21 = OUTLINED_FUNCTION_117();
    MEMORY[0x1BFB215C0](v21);
    _Block_release(v15);

    v22 = OUTLINED_FUNCTION_309();
    v23(v22);
    v24 = OUTLINED_FUNCTION_20_38();
    v25(v24, v1);

    OUTLINED_FUNCTION_30_0();
  }

  else
  {
    v0;
    v6;
    v26 = v2;
    OUTLINED_FUNCTION_487();
    closure #1 in ConversationController.remoteVideoClient(_:remoteVideoAttributesDidChange:wantsDispatchToMain:)(v27, v28, v29);
    OUTLINED_FUNCTION_30_0();
  }
}

void closure #3 in ConversationController.callCenter(_:oneToOneModeChangedFor:)(uint64_t a1, void (*a2)(uint64_t))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v43 - v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (*(Strong + OBJC_IVAR____TtC15ConversationKit22ConversationController_isOneToOneCallCenterUpdateWaitingForNonSquareVideo) == 1)
    {
      if (one-time initialization token for conversationController != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      __swift_project_value_buffer(v8, static Logger.conversationController);
      v9 = v7;
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();

      v12 = os_log_type_enabled(v10, v11);
      v43 = a2;
      if (v12)
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v50[0] = v14;
        *v13 = 136315138;
        LOBYTE(v46) = *(v9 + OBJC_IVAR____TtC15ConversationKit22ConversationController_mode);
        v15 = String.init<A>(reflecting:)();
        v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v50);

        *(v13 + 4) = v17;
        _os_log_impl(&dword_1BBC58000, v10, v11, "[%s] Timed out waiting for first non-square remote video frame", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v14);
        MEMORY[0x1BFB23DF0](v14, -1, -1);
        MEMORY[0x1BFB23DF0](v13, -1, -1);
      }

      ConversationController.isOneToOneCallCenterUpdateWaitingForNonSquareVideo.setter(0);
      ConversationController.lookupActiveConversation()();
      if (v48)
      {
        outlined init with take of TapInteractionHandler(&v46, v50);
        v18 = v51;
        v19 = v52;
        __swift_project_boxed_opaque_existential_1(v50, v51);
        if ((*(v19 + 200))(v18, v19))
        {
          outlined init with copy of CallCenterProvider(v50, &v46);
          v9 = v9;
          v20 = Logger.logObject.getter();
          v21 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v20, v21))
          {
            v22 = swift_slowAlloc();
            v23 = swift_slowAlloc();
            v45 = v23;
            *v22 = 136315394;
            HIBYTE(v44) = *(v9 + OBJC_IVAR____TtC15ConversationKit22ConversationController_mode);
            v24 = String.init<A>(reflecting:)();
            v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v45);

            *(v22 + 4) = v26;
            *(v22 + 12) = 2080;
            v27 = v48;
            v28 = v49;
            __swift_project_boxed_opaque_existential_1(&v46, v48);
            (*(v28 + 8))(v27, v28);
            v29 = type metadata accessor for UUID();
            __swift_storeEnumTagSinglePayload(v5, 0, 1, v29);
            specialized >> prefix<A>(_:)(v5, v30, v31, v32, v33, v34, v35, v36, v43, v44, v45, v46, *(&v46 + 1), v47, v48, v49, v50[0], v50[1]);
            v38 = v37;
            v40 = v39;
            outlined destroy of CallControlsService?(v5, &_s10Foundation4UUIDVSgMd);
            __swift_destroy_boxed_opaque_existential_1(&v46);
            v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, &v45);

            *(v22 + 14) = v41;
            _os_log_impl(&dword_1BBC58000, v20, v21, "[%s] Triggering delayed one-to-one update for conversation: %s", v22, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1BFB23DF0](v23, -1, -1);
            MEMORY[0x1BFB23DF0](v22, -1, -1);
          }

          else
          {

            v42 = __swift_destroy_boxed_opaque_existential_1(&v46);
          }

          v43(v42);
        }

        __swift_destroy_boxed_opaque_existential_1(v50);
      }

      else
      {

        outlined destroy of CallControlsService?(&v46, &_s15ConversationKit0A0_pSgMd);
      }
    }

    else
    {
    }
  }
}

void ConversationController.callCenter(_:avModeChangedFor:)()
{
  OUTLINED_FUNCTION_29();
  v3 = OUTLINED_FUNCTION_271_4();
  OUTLINED_FUNCTION_391_0(v3);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_35_6();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_83_1();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_320_0();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v2 = static OS_dispatch_queue.main.getter();
  v9 = OUTLINED_FUNCTION_164_2();
  v10(v9);
  v11 = _dispatchPreconditionTest(_:)();
  v12 = OUTLINED_FUNCTION_112();
  v13(v12);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_16:
    OUTLINED_FUNCTION_0_9();
LABEL_4:
    OUTLINED_FUNCTION_0_1();
    if ((*(v14 + 904))())
    {
      __swift_project_boxed_opaque_existential_1(v40, v40[3]);
      OUTLINED_FUNCTION_49_23();
      v15 = OUTLINED_FUNCTION_406_0();
      v16(v15);
      v17 = OUTLINED_FUNCTION_211();
      __swift_project_boxed_opaque_existential_1(v17, v18);
      v19 = OUTLINED_FUNCTION_406_0();
      v20(v19);
      OUTLINED_FUNCTION_281();
      v21 = static UUID.== infix(_:_:)();
      v22 = *(v5 + 8);
      v23 = OUTLINED_FUNCTION_33_0();
      v22(v23);
      v24 = OUTLINED_FUNCTION_39_5();
      v22(v24);
      if (v21)
      {
        if (one-time initialization token for conversationKit != -1)
        {
          OUTLINED_FUNCTION_0_6();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
        OUTLINED_FUNCTION_37_22();
        v25 = swift_allocObject();
        OUTLINED_FUNCTION_221_3(v25, xmmword_1BC4BA940);
        v26 = OUTLINED_FUNCTION_0_95();
        v39[0] = v27(v26);
        type metadata accessor for TUConversationAVMode(0);
        OUTLINED_FUNCTION_437();
        OUTLINED_FUNCTION_208_0();
        v25[3].n128_u64[1] = MEMORY[0x1E69E6158];
        v28 = lazy protocol witness table accessor for type String and conformance String();
        OUTLINED_FUNCTION_488(v28);
        static os_log_type_t.default.getter();
        OUTLINED_FUNCTION_299_0();

        v29 = (v0 + OBJC_IVAR____TtC15ConversationKit22ConversationController_avModeDidChange);
        OUTLINED_FUNCTION_3_0();
        swift_beginAccess();
        v30 = *v29;
        if (*v29)
        {
          v31 = *(v1 + 32);
          v32 = OUTLINED_FUNCTION_316();
          OUTLINED_FUNCTION_179_2(v32, v33);
          v34 = *(v31 + 272);

          v35 = OUTLINED_FUNCTION_32_2();
          v36 = v34(v35);
          v30(v36);
          outlined consume of (@escaping @callee_guaranteed () -> ())?(v30);
        }
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v40);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_388_0();
  if (v39[3])
  {
    OUTLINED_FUNCTION_335();
    if (one-time initialization token for shared == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_16;
  }

  outlined destroy of CallControlsService?(v39, &_s15ConversationKit0A0_pSgMd);
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  static os_log_type_t.error.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  OUTLINED_FUNCTION_37_22();
  v37 = swift_allocObject();
  OUTLINED_FUNCTION_371_0(v37, xmmword_1BC4BA940);
  OUTLINED_FUNCTION_387_0();
  OUTLINED_FUNCTION_314_0();
  v37[3].n128_u64[1] = MEMORY[0x1E69E6158];
  v38 = lazy protocol witness table accessor for type String and conformance String();
  OUTLINED_FUNCTION_345_0(v38);
  OUTLINED_FUNCTION_51_22();
  os_log(_:dso:log:type:_:)();

LABEL_14:
  OUTLINED_FUNCTION_30_0();
}

void ConversationController.callCenter(_:resolvedAudioVideoModeChangedFor:)()
{
  OUTLINED_FUNCTION_29();
  v3 = OUTLINED_FUNCTION_271_4();
  OUTLINED_FUNCTION_391_0(v3);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_83_1();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_320_0();
  v9 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v2 = static OS_dispatch_queue.main.getter();
  v10 = OUTLINED_FUNCTION_164_2();
  v11(v10);
  _dispatchPreconditionTest(_:)();
  OUTLINED_FUNCTION_327_0();
  v12 = OUTLINED_FUNCTION_112();
  v13(v12);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_388_0();
  if (!v38[3])
  {
    outlined destroy of CallControlsService?(v38, &_s15ConversationKit0A0_pSgMd);
    if (one-time initialization token for conversationKit == -1)
    {
LABEL_10:
      static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      OUTLINED_FUNCTION_37_22();
      v36 = swift_allocObject();
      OUTLINED_FUNCTION_371_0(v36, xmmword_1BC4BA940);
      OUTLINED_FUNCTION_387_0();
      OUTLINED_FUNCTION_213_1();
      v36[3].n128_u64[1] = MEMORY[0x1E69E6158];
      v37 = lazy protocol witness table accessor for type String and conformance String();
      OUTLINED_FUNCTION_318_0(v37);
      OUTLINED_FUNCTION_51_22();
      os_log(_:dso:log:type:_:)();

      goto LABEL_11;
    }

LABEL_13:
    OUTLINED_FUNCTION_0_6();
    goto LABEL_10;
  }

  v14 = OUTLINED_FUNCTION_17_70();
  v15(v14);
  v16 = OUTLINED_FUNCTION_62_0();
  __swift_project_boxed_opaque_existential_1(v16, v17);
  v18 = OUTLINED_FUNCTION_31_39();
  v19(v18);
  OUTLINED_FUNCTION_157();
  v20 = static UUID.== infix(_:_:)();
  v21 = *(v5 + 8);
  v22 = OUTLINED_FUNCTION_7_8();
  v21(v22);
  v23 = OUTLINED_FUNCTION_281();
  v21(v23);
  if (v20)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    OUTLINED_FUNCTION_37_22();
    v24 = swift_allocObject();
    OUTLINED_FUNCTION_221_3(v24, xmmword_1BC4BA940);
    v25 = OUTLINED_FUNCTION_0_95();
    v38[0] = v26(v25);
    type metadata accessor for TUConversationAVMode(0);
    OUTLINED_FUNCTION_437();
    OUTLINED_FUNCTION_208_0();
    v24[3].n128_u64[1] = MEMORY[0x1E69E6158];
    v27 = lazy protocol witness table accessor for type String and conformance String();
    OUTLINED_FUNCTION_488(v27);
    static os_log_type_t.default.getter();
    OUTLINED_FUNCTION_299_0();

    v28 = (v0 + OBJC_IVAR____TtC15ConversationKit22ConversationController_resolvedAudioVideoModeDidChange);
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v29 = *v28;
    if (*v28)
    {
      v30 = *(v1 + 32);
      v31 = OUTLINED_FUNCTION_316();
      OUTLINED_FUNCTION_179_2(v31, v32);
      v33 = *(v30 + 288);

      v34 = OUTLINED_FUNCTION_32_2();
      v35 = v33(v34);
      v29(v35);
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v29);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(&v39);
LABEL_11:
  OUTLINED_FUNCTION_30_0();
}

void ConversationController.callCenter(_:removedActiveConversation:)()
{
  OUTLINED_FUNCTION_29();
  v4 = v1;
  v6 = v5;
  ObjectType = swift_getObjectType();
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_1();
  v180 = v8;
  OUTLINED_FUNCTION_4_24();
  v9 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4();
  v185 = v13;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_32();
  v186 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v17 = OUTLINED_FUNCTION_22(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4();
  v178 = v18;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v184 = v20;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_115_3();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v175 - v23;
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_2_12();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_240_0();
  v26 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v2 = static OS_dispatch_queue.main.getter();
  OUTLINED_FUNCTION_250_3();
  v27(v2);
  _dispatchPreconditionTest(_:)();
  OUTLINED_FUNCTION_248_1();
  v28(v2, v0);
  if (v26)
  {
    v183 = v3;
    if (one-time initialization token for conversationController == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  OUTLINED_FUNCTION_8_106();
LABEL_3:
  v29 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v29, static Logger.conversationController);
  outlined init with copy of CallCenterProvider(v6, v189);
  v30 = v4;
  v182 = v26;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();

  v33 = &unk_1BC4BB000;
  if (os_log_type_enabled(v31, v32))
  {
    v34 = OUTLINED_FUNCTION_30_1();
    v35 = OUTLINED_FUNCTION_29_7();
    v177 = v6;
    v176 = v35;
    v188[0] = v35;
    *v34 = 136315394;
    v187 = *(v30 + OBJC_IVAR____TtC15ConversationKit22ConversationController_mode);
    v36 = String.init<A>(reflecting:)();
    v38 = OUTLINED_FUNCTION_449(v36, v37);

    *(v34 + 4) = v38;
    *(v34 + 12) = 2080;
    __swift_project_boxed_opaque_existential_1(v189, v190);
    OUTLINED_FUNCTION_125_1();
    v39 = OUTLINED_FUNCTION_258_0();
    v40(v39);
    v41 = OUTLINED_FUNCTION_18_9();
    OUTLINED_FUNCTION_531(v41, v42, v43, v9, v44, v45, v46, v47, v175, v176, v177, v178, v179, v180, ObjectType, v182, v183, v184);
    OUTLINED_FUNCTION_87();
    outlined destroy of CallControlsService?(v24, &_s10Foundation4UUIDVSgMd);
    __swift_destroy_boxed_opaque_existential_1(v189);
    v48 = OUTLINED_FUNCTION_209();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, v50);
    OUTLINED_FUNCTION_182();
    v33 = &unk_1BC4BB000;

    *(v34 + 14) = &OBJC_IVAR____TtC15ConversationKit22ConversationController_callAnyRemoteSupportsRequestToScreenShareDidChange;
    _os_log_impl(&dword_1BBC58000, v31, v32, "%s Received removedActiveConversation: %s", v34, 0x16u);
    swift_arrayDestroy();
    v6 = v177;
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_239();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v189);
  }

  ConversationController.lookupActiveConversation()();
  if (v188[3])
  {
    OUTLINED_FUNCTION_446();
    v51 = v191;
    OUTLINED_FUNCTION_246_4(v189, v190);
    v52 = OUTLINED_FUNCTION_28_0();
    v53(v52, v51);
    v54 = v6[4];
    v55 = OUTLINED_FUNCTION_308_1();
    OUTLINED_FUNCTION_246_4(v55, v56);
    v57 = OUTLINED_FUNCTION_28_0();
    v58(v57, v54);
    OUTLINED_FUNCTION_408_0();
    v59 = static UUID.== infix(_:_:)();
    v60 = *(v11 + 8);
    v61 = OUTLINED_FUNCTION_316_1();
    v60(v61);
    v62 = OUTLINED_FUNCTION_43_0();
    v60(v62);
    if (v59)
    {
      OUTLINED_FUNCTION_97_8(v6);
      v63 = OUTLINED_FUNCTION_4_38();
      if (v64(v63) == 2)
      {
        OUTLINED_FUNCTION_97_8(v189);
        v65 = OUTLINED_FUNCTION_4_38();
        if (v66(v65) == 3)
        {
          OUTLINED_FUNCTION_97_8(v6);
          v67 = OUTLINED_FUNCTION_4_38();
          if (v68(v67) == 1)
          {
            OUTLINED_FUNCTION_97_8(v6);
            v69 = OUTLINED_FUNCTION_4_38();
            v71 = v70(v69);
            if (v71)
            {
              v54 = v71;
              OUTLINED_FUNCTION_97_8(v189);
              v72 = OUTLINED_FUNCTION_4_38();
              v74 = v73(v72);
              if (v74)
              {
                v75 = v74;
                if ([v54 isEquivalentToConversationLink_])
                {
                  if (one-time initialization token for conversationKit != -1)
                  {
                    OUTLINED_FUNCTION_0_6();
                  }

                  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
                  OUTLINED_FUNCTION_194();
                  v76 = swift_allocObject();
                  *(v76 + 16) = xmmword_1BC4BAA20;
                  v77 = OUTLINED_FUNCTION_393();
                  __swift_project_boxed_opaque_existential_1(v77, v78);
                  OUTLINED_FUNCTION_125_1();
                  v79 = OUTLINED_FUNCTION_179_0();
                  v80(v79);
                  v81 = OUTLINED_FUNCTION_18_9();
                  OUTLINED_FUNCTION_531(v81, v82, v83, v9, v84, v85, v86, v87, v175, v176, v177, v178, v179, v180, ObjectType, v182, v183, v184);
                  v88 = OUTLINED_FUNCTION_246();
                  v90 = v89;
                  outlined destroy of CallControlsService?(v88, &_s10Foundation4UUIDVSgMd);
                  v91 = MEMORY[0x1E69E6158];
                  *(v76 + 56) = MEMORY[0x1E69E6158];
                  v92 = lazy protocol witness table accessor for type String and conformance String();
                  *(v76 + 64) = v92;
                  *(v76 + 32) = v60;
                  *(v76 + 40) = v90;
                  v188[0] = v54;
                  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationLink);
                  v93 = v54;
                  v94 = String.init<A>(reflecting:)();
                  *(v76 + 96) = v91;
                  *(v76 + 104) = v92;
                  *(v76 + 72) = v94;
                  *(v76 + 80) = v95;
                  static os_log_type_t.default.getter();
                  OUTLINED_FUNCTION_41_0();
                  os_log(_:dso:log:type:_:)();

                  goto LABEL_38;
                }

                v54 = v75;
              }
            }
          }
        }
      }

      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_0_6();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      OUTLINED_FUNCTION_37_22();
      v174 = swift_allocObject();
      *(v174 + 16) = xmmword_1BC4BA940;
      v188[0] = v30;
      v30;
      String.init<A>(reflecting:)();
      OUTLINED_FUNCTION_43_7();
      *(v174 + 56) = MEMORY[0x1E69E6158];
      *(v174 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v174 + 32) = v54;
      *(v174 + 40) = v30;
      static os_log_type_t.default.getter();
      OUTLINED_FUNCTION_41_0();
      os_log(_:dso:log:type:_:)();

      outlined init with copy of CallCenterProvider(v6, v188);
      ConversationController.update(with:)();
      outlined destroy of CallControlsService?(v188, &_s15ConversationKit0A0_pSgMd);
    }

LABEL_38:
    __swift_destroy_boxed_opaque_existential_1(v189);
    goto LABEL_39;
  }

  v177 = v11;
  v185 = v9;
  outlined destroy of CallControlsService?(v188, &_s15ConversationKit0A0_pSgMd);
  v96 = v30;
  v97 = Logger.logObject.getter();
  v98 = static os_log_type_t.error.getter();

  v99 = OUTLINED_FUNCTION_317();
  v175 = v24;
  if (v99)
  {
    v100 = OUTLINED_FUNCTION_30_1();
    v189[0] = OUTLINED_FUNCTION_29_7();
    *v100 = v33[308];
    LOBYTE(v188[0]) = *(v96 + OBJC_IVAR____TtC15ConversationKit22ConversationController_mode);
    v101 = String.init<A>(reflecting:)();
    v103 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v101, v102, v189);

    *(v100 + 4) = v103;
    *(v100 + 12) = 2080;
    v188[0] = v96;
    v104 = v96;
    v105 = String.init<A>(reflecting:)();
    v107 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v105, v106, v189);

    *(v100 + 14) = v107;
    _os_log_impl(&dword_1BBC58000, v97, v98, "%s Unable to lookup active conversation in CallCenterProviderDelegate removedActiveConversation: callback - %s", v100, 0x16u);
    OUTLINED_FUNCTION_399_0();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_104_2();
    OUTLINED_FUNCTION_239();
  }

  v108 = v180;
  v109 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationUUID;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  ObjectType = v109;
  v110 = v183;
  OUTLINED_FUNCTION_98_1();
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v111, v112, v113);
  v114 = v6[4];
  OUTLINED_FUNCTION_247_4(v6, v6[3]);
  v115 = OUTLINED_FUNCTION_182();
  v116(v115, v114);
  OUTLINED_FUNCTION_12();
  v117 = v185;
  __swift_storeEnumTagSinglePayload(v118, v119, v120, v185);
  v121 = *(v179 + 48);
  OUTLINED_FUNCTION_112();
  OUTLINED_FUNCTION_98_1();
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v122, v123, v124);
  OUTLINED_FUNCTION_98_1();
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v125, v126, v127);
  OUTLINED_FUNCTION_22_5(v108);
  if (!v130)
  {
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v108, v178, &_s10Foundation4UUIDVSgMd);
    OUTLINED_FUNCTION_22_5(v108 + v121);
    if (!v130)
    {
      v133 = v177;
      (v177[4])(v186, v108 + v121, v117);
      OUTLINED_FUNCTION_13_83();
      lazy protocol witness table accessor for type ConversationController and conformance ConversationController(v134, v135);
      OUTLINED_FUNCTION_77_1();
      v136 = dispatch thunk of static Equatable.== infix(_:_:)();
      v137 = *(v133 + 8);
      v138 = OUTLINED_FUNCTION_244_1();
      v137(v138);
      OUTLINED_FUNCTION_30_20();
      outlined destroy of CallControlsService?(v139, v140);
      OUTLINED_FUNCTION_30_20();
      outlined destroy of CallControlsService?(v141, v142);
      v143 = OUTLINED_FUNCTION_393();
      v137(v143);
      OUTLINED_FUNCTION_30_20();
      outlined destroy of CallControlsService?(v144, v145);
      if ((v136 & 1) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_29;
    }

    OUTLINED_FUNCTION_378(v184);
    OUTLINED_FUNCTION_378(v183);
    v131 = OUTLINED_FUNCTION_393();
    v132(v131);
LABEL_27:
    outlined destroy of CallControlsService?(v108, &_s10Foundation4UUIDVSg_ADtMd);
    goto LABEL_39;
  }

  v128 = OUTLINED_FUNCTION_308_1();
  outlined destroy of CallControlsService?(v128, v129);
  OUTLINED_FUNCTION_378(v110);
  OUTLINED_FUNCTION_22_5(v108 + v121);
  if (!v130)
  {
    goto LABEL_27;
  }

  outlined destroy of CallControlsService?(v108, &_s10Foundation4UUIDVSgMd);
LABEL_29:
  v146 = v96;
  v147 = Logger.logObject.getter();
  v148 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v147, v148))
  {
    v149 = OUTLINED_FUNCTION_30_1();
    v188[0] = OUTLINED_FUNCTION_29_7();
    *v149 = 136315394;
    v187 = *(v146 + OBJC_IVAR____TtC15ConversationKit22ConversationController_mode);
    v150 = String.init<A>(reflecting:)();
    v152 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v150, v151, v188);

    *(v149 + 4) = v152;
    *(v149 + 12) = 2080;
    v153 = v175;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v96 + ObjectType, v175, &_s10Foundation4UUIDVSgMd);
    specialized >> prefix<A>(_:)(v153, v154, v155, v156, v157, v158, v159, v160, v175, v176, v177, v178, v179, v180, ObjectType, v182, v183, v184);
    v161 = OUTLINED_FUNCTION_393();
    v117 = v185;
    outlined destroy of CallControlsService?(v161, v162);
    v163 = OUTLINED_FUNCTION_408_0();
    v166 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v163, v164, v165);

    *(v149 + 14) = v166;
    OUTLINED_FUNCTION_25_53();
    _os_log_impl(v167, v168, v169, v170, v149, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_239();
  }

  else
  {

    v153 = v175;
  }

  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v171, v172, v173, v117);
  ConversationController.conversationUUID.setter(v153);
LABEL_39:
  OUTLINED_FUNCTION_30_0();
}

void ConversationController.callCenter(_:addedActiveConversation:)()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_173();
  ObjectType = swift_getObjectType();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_2_12();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_83_1();
  ConversationController.lookupActiveConversation()();
  if (v27[3])
  {
    OUTLINED_FUNCTION_335();
    v9 = v28[4];
    OUTLINED_FUNCTION_246_4(v28, v28[3]);
    v10 = OUTLINED_FUNCTION_6_4();
    v11(v10, v9);
    v12 = OUTLINED_FUNCTION_1_5();
    __swift_project_boxed_opaque_existential_1(v12, v13);
    OUTLINED_FUNCTION_71_13();
    v14 = OUTLINED_FUNCTION_316();
    v15(v14);
    OUTLINED_FUNCTION_157();
    static UUID.== infix(_:_:)();
    v16 = *(v6 + 8);
    v17 = OUTLINED_FUNCTION_312();
    v16(v17);
    (v16)(v3, v0);
    __swift_destroy_boxed_opaque_existential_1(v28);
  }

  else
  {
    outlined destroy of CallControlsService?(v27, &_s15ConversationKit0A0_pSgMd);
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    OUTLINED_FUNCTION_37_22();
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1BC4BA940;
    v28[0] = v1;
    v1;
    String.init<A>(reflecting:)();
    OUTLINED_FUNCTION_87();
    *(v18 + 56) = MEMORY[0x1E69E6158];
    *(v18 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v18 + 32) = v1;
    *(v18 + 40) = ObjectType;
    OUTLINED_FUNCTION_41_0();
    os_log(_:dso:log:type:_:)();

    v19 = *(v2 + 32);
    v20 = OUTLINED_FUNCTION_316();
    OUTLINED_FUNCTION_179_2(v20, v21);
    v22 = *(v19 + 24);
    v23 = OUTLINED_FUNCTION_32_2();
    v24 = v22(v23);
    [v24 currentVideoCallCount];
    OUTLINED_FUNCTION_479();
    swift_unknownObjectRelease();
    if (v18 == 1)
    {
      v25 = OUTLINED_FUNCTION_32_2();
      v26 = [v22(v25) currentVideoCall];
      OUTLINED_FUNCTION_173();
      swift_unknownObjectRelease();
      if (v24)
      {
        if ([v24 isActive])
        {
          static os_log_type_t.default.getter();
          OUTLINED_FUNCTION_41_0();
          os_log(_:dso:log:type:_:)();
          ConversationController.processCurrentCall(_:)(v24);
        }
      }
    }
  }

  OUTLINED_FUNCTION_30_0();
}

uint64_t ConversationController.processCurrentCall(_:)(void *a1)
{
  v3 = v1;
  v226 = type metadata accessor for UUID();
  v225 = *(v226 - 8);
  MEMORY[0x1EEE9AC00](v226);
  v6 = &v212 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v212 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v218 = &v212 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v212 - v13;
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v212 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v18 = static OS_dispatch_queue.main.getter();
  (*(v16 + 104))(v18, *MEMORY[0x1E69E8020], v15);
  v19 = _dispatchPreconditionTest(_:)();
  v21 = *(v16 + 8);
  v20 = v16 + 8;
  v21(v18, v15);
  if (v19)
  {
    v22 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter;
    swift_beginAccess();
    v222 = v22;
    outlined init with copy of CallCenterProvider(v3 + v22, &v236);
    v23 = v238;
    v24 = __swift_project_boxed_opaque_existential_1(&v236, v237);
    v25 = MEMORY[0x1EEE9AC00](v24);
    *(&v212 - 2) = v3;
    v26 = (*(v23 + 208))(partial apply for closure #1 in ConversationController.processCurrentCall(_:), v25);
    if (v26[2])
    {
      v2 = v26[4];
      v20 = v26[5];
      swift_unknownObjectRetain();
    }

    else
    {
      v2 = 0;
      v20 = 0;
    }

    v219 = v6;

    __swift_destroy_boxed_opaque_existential_1(&v236);
    if (one-time initialization token for conversationController == -1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_6:
  v27 = type metadata accessor for Logger();
  v28 = __swift_project_value_buffer(v27, static Logger.conversationController);
  swift_unknownObjectRetain();
  v223 = v3;
  v29 = v3;
  v30 = a1;
  v216 = v28;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();

  HIDWORD(v217) = v32;
  v33 = os_log_type_enabled(v31, v32);
  v224 = v20;
  v221 = v9;
  if (v33)
  {
    v214 = v31;
    v34 = swift_slowAlloc();
    v213 = swift_slowAlloc();
    v236 = v213;
    *v34 = 136315906;
    LOBYTE(v233) = v29[OBJC_IVAR____TtC15ConversationKit22ConversationController_mode];
    v35 = String.init<A>(reflecting:)();
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, &v236);

    *(v34 + 4) = v37;
    *(v34 + 12) = 2080;
    v215 = v30;
    v38 = [v30 uniqueProxyIdentifierUUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v39 = v226;
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v226);
    specialized >> prefix<A>(_:)(v14, v40, v41, v42, v43, v44, v45, v46, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221);
    v48 = v47;
    v49 = v29;
    v51 = v50;
    outlined destroy of CallControlsService?(v14, &_s10Foundation4UUIDVSgMd);
    v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v51, &v236);

    *(v34 + 14) = v52;
    *(v34 + 22) = 2080;
    v220 = v49;
    v53 = &v49[OBJC_IVAR____TtC15ConversationKit22ConversationController_call];
    swift_beginAccess();
    v54 = *(v53 + 1);
    v55 = v39;
    v56 = v2;
    ObjectType = swift_getObjectType();
    v58 = *(v54 + 232);
    swift_unknownObjectRetain();
    v59 = ObjectType;
    v2 = v56;
    v58(v59, v54);
    swift_unknownObjectRelease();
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v55);
    specialized >> prefix<A>(_:)(v14, v60, v61, v62, v63, v64, v65, v66, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221);
    v68 = v67;
    v70 = v69;
    outlined destroy of CallControlsService?(v14, &_s10Foundation4UUIDVSgMd);
    v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v70, &v236);

    *(v34 + 24) = v71;
    *(v34 + 32) = 2080;
    if (v56)
    {
      v72 = swift_getObjectType();
      v73 = v218;
      (*(v224 + 232))(v72);
      v74 = 0;
      v9 = v221;
    }

    else
    {
      v9 = v221;
      v73 = v218;
      v74 = 1;
    }

    __swift_storeEnumTagSinglePayload(v73, v74, 1, v55);
    specialized >> prefix<A>(_:)(v73, v75, v76, v77, v78, v79, v80, v81, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221);
    v83 = v82;
    v85 = v84;
    outlined destroy of CallControlsService?(v73, &_s10Foundation4UUIDVSgMd);
    v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v85, &v236);

    *(v34 + 34) = v86;
    v87 = v214;
    _os_log_impl(&dword_1BBC58000, v214, BYTE4(v217), "[%s] processCurrentCall %s self.call: %s, optionalVideoCall: %s", v34, 0x2Au);
    v88 = v213;
    swift_arrayDestroy();
    MEMORY[0x1BFB23DF0](v88, -1, -1);
    MEMORY[0x1BFB23DF0](v34, -1, -1);

    v29 = v220;
    v20 = v224;
    v30 = v215;
  }

  else
  {
  }

  ConversationController.lookupActiveConversation()();
  if (!v234)
  {
    result = outlined destroy of CallControlsService?(&v233, &_s15ConversationKit0A0_pSgMd);
    if (!v2)
    {
      return result;
    }

    goto LABEL_21;
  }

  outlined init with take of TapInteractionHandler(&v233, &v236);
  if (v2)
  {
    v89 = swift_getObjectType();
    if ((*(v20 + 208))(v89, v20) != 4)
    {
      __swift_destroy_boxed_opaque_existential_1(&v236);
LABEL_21:
      v218 = v14;
      v104 = v30;
      outlined init with copy of CallCenterProvider(v223 + v222, &v233);
      v105 = v234;
      v106 = v235;
      __swift_project_boxed_opaque_existential_1(&v233, v234);
      v107 = *(v106 + 104);
      v108 = swift_unknownObjectRetain();
      v107(&v230, v108, v20, v105, v106);
      if (v231)
      {
        outlined init with take of TapInteractionHandler(&v230, &v236);
        __swift_destroy_boxed_opaque_existential_1(&v233);
        if (!ConversationController.hasRingingCalls.getter())
        {
          v175 = v29;
          swift_unknownObjectRetain();
          v176 = Logger.logObject.getter();
          v177 = static os_log_type_t.default.getter();
          swift_unknownObjectRelease();

          if (os_log_type_enabled(v176, v177))
          {
            v178 = swift_slowAlloc();
            v179 = swift_slowAlloc();
            *&v230 = v179;
            *v178 = 136315394;
            LOBYTE(v233) = v175[OBJC_IVAR____TtC15ConversationKit22ConversationController_mode];
            v180 = String.init<A>(reflecting:)();
            v182 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v180, v181, &v230);

            *(v178 + 4) = v182;
            *(v178 + 12) = 2080;
            v183 = swift_getObjectType();
            v184 = v224;
            *&v233 = (*(v224 + 224))(v183, v224);
            *(&v233 + 1) = v185;
            v186 = String.init<A>(reflecting:)();
            v188 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v186, v187, &v230);

            *(v178 + 14) = v188;
            _os_log_impl(&dword_1BBC58000, v176, v177, "%s Migrating to track new call with UPI %s", v178, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1BFB23DF0](v179, -1, -1);
            MEMORY[0x1BFB23DF0](v178, -1, -1);
          }

          else
          {

            v184 = v224;
          }

          v207 = swift_getObjectType();
          swift_unknownObjectRetain();
          specialized ConversationController.migrate(to:with:isUpgrade:)(&v236, v2, 0, v175, v207, v184);
          swift_unknownObjectRelease_n();
          return __swift_destroy_boxed_opaque_existential_1(&v236);
        }

        v109 = v104;
        __swift_destroy_boxed_opaque_existential_1(&v236);
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
        outlined destroy of CallControlsService?(&v230, &_s15ConversationKit0A0_pSgMd);
        __swift_destroy_boxed_opaque_existential_1(&v233);
        v109 = v104;
      }

      v110 = &v29[OBJC_IVAR____TtC15ConversationKit22ConversationController_call];
      swift_beginAccess();
      v111 = *(v110 + 1);
      v112 = swift_getObjectType();
      v113 = *(v111 + 232);
      swift_unknownObjectRetain();
      v114 = v221;
      v113(v112, v111);
      swift_unknownObjectRelease();
      v115 = [v109 uniqueProxyIdentifierUUID];
      v116 = v219;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      LOBYTE(v115) = static UUID.== infix(_:_:)();
      v117 = v225 + 8;
      v118 = *(v225 + 8);
      v119 = v116;
      v120 = v226;
      v118(v119, v226);
      v118(v114, v120);
      if ((v115 & 1) != 0 && ([v109 status] == 5 || objc_msgSend(v109, sel_status) == 6))
      {
        v121 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callWaitingUUIDs;
        swift_beginAccess();
        v122 = *&v29[v121];
        v123 = swift_getObjectType();
        v225 = v117;
        v220 = v29;
        v124 = v114;
        v125 = v224;
        v126 = v224 + 232;
        v127 = *(v224 + 232);

        v223 = v123;
        v128 = v123;
        v129 = v127;
        v222 = v126;
        v130 = (v127)(v128, v125);
        MEMORY[0x1EEE9AC00](v130);
        *(&v212 - 2) = v124;
        v131 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), (&v212 - 4), v122);

        v118(v124, v226);
        if (v131)
        {
          v132 = v220;
          v133 = v109;
          swift_unknownObjectRetain();
          v134 = Logger.logObject.getter();
          v135 = static os_log_type_t.default.getter();
          swift_unknownObjectRelease();

          if (os_log_type_enabled(v134, v135))
          {
            v136 = swift_slowAlloc();
            v225 = swift_slowAlloc();
            *&v230 = v225;
            *v136 = 136315650;
            LOBYTE(v228) = v132[OBJC_IVAR____TtC15ConversationKit22ConversationController_mode];
            v137 = String.init<A>(reflecting:)();
            v139 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v137, v138, &v230);

            *(v136 + 4) = v139;
            *(v136 + 12) = 2080;
            v140 = [v133 uniqueProxyIdentifierUUID];
            v141 = v218;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v142 = v226;
            __swift_storeEnumTagSinglePayload(v141, 0, 1, v226);
            specialized >> prefix<A>(_:)(v141, v143, v144, v145, v146, v147, v148, v149, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221);
            v151 = v150;
            v153 = v152;
            outlined destroy of CallControlsService?(v141, &_s10Foundation4UUIDVSgMd);
            v154 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v151, v153, &v230);

            *(v136 + 14) = v154;
            *(v136 + 22) = 2080;
            v129(v223, v224);
            __swift_storeEnumTagSinglePayload(v141, 0, 1, v142);
            specialized >> prefix<A>(_:)(v141, v155, v156, v157, v158, v159, v160, v161, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221);
            v163 = v162;
            v165 = v164;
            outlined destroy of CallControlsService?(v141, &_s10Foundation4UUIDVSgMd);
            v166 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v163, v165, &v230);

            *(v136 + 24) = v166;
            _os_log_impl(&dword_1BBC58000, v134, v135, "%s The call this ConversationController was tracking is disconnected now %s, and one of the call waiting calls is still active %s. Probably should swap to the call waiting call.", v136, 0x20u);
            v167 = v225;
            swift_arrayDestroy();
            MEMORY[0x1BFB23DF0](v167, -1, -1);
            MEMORY[0x1BFB23DF0](v136, -1, -1);
          }

          ConversationController.handleRingingCallChangedToActiveIfNecessary()();
        }
      }

      return swift_unknownObjectRelease();
    }
  }

  LODWORD(v224) = ConversationController.hasRingingCalls.getter();
  outlined init with copy of CallCenterProvider(v223 + v222, &v230);
  v90 = v231;
  v91 = v232;
  __swift_project_boxed_opaque_existential_1(&v230, v231);
  v92 = lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUCall and conformance TUCall, &lazy cache variable for type metadata for TUCall);
  (*(v91 + 104))(&v228, v30, v92, v90, v91);
  v93 = &OBJC_IVAR____TtC15ConversationKit22ConversationController_callAnyRemoteSupportsRequestToScreenShareDidChange;
  if (v229)
  {
    v220 = v29;
    outlined init with take of TapInteractionHandler(&v228, &v233);
    __swift_destroy_boxed_opaque_existential_1(&v230);
    v94 = v234;
    v95 = v235;
    __swift_project_boxed_opaque_existential_1(&v233, v234);
    (*(v95 + 8))(v94, v95);
    v96 = v237;
    v97 = v238;
    __swift_project_boxed_opaque_existential_1(&v236, v237);
    v98 = v219;
    (*(v97 + 8))(v96, v97);
    lazy protocol witness table accessor for type ConversationController and conformance ConversationController(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v99 = v226;
    LOBYTE(v96) = dispatch thunk of static Equatable.== infix(_:_:)();
    v100 = *(v225 + 8);
    v100(v98, v99);
    v101 = v9;
    v100(v9, v99);
    if (v96)
    {
      __swift_destroy_boxed_opaque_existential_1(&v233);
      v102 = v225;
      v29 = v220;
    }

    else
    {
      v168 = [v30 status];
      __swift_destroy_boxed_opaque_existential_1(&v233);
      if (v168 == 4)
      {
        v223 = v2;
        v169 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callWaitingUUIDs;
        v170 = v220;
        swift_beginAccess();
        v171 = *&v170[v169];

        v172 = [v30 uniqueProxyIdentifierUUID];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        MEMORY[0x1EEE9AC00](v173);
        *(&v212 - 2) = v101;
        LOBYTE(v172) = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, (&v212 - 4), v171);

        v174 = v226;
        v100(v101, v226);
        if ((v172 & 1) == 0)
        {
          v208 = v174;
          v209 = [v30 uniqueProxyIdentifierUUID];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v29 = v220;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          v210 = *(*&v29[v169] + 16);
          specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v210);
          v211 = *&v29[v169];
          *(v211 + 16) = v210 + 1;
          (*(v225 + 32))(v211 + ((*(v225 + 80) + 32) & ~*(v225 + 80)) + *(v225 + 72) * v210, v101, v208);
          *&v29[v169] = v211;
          goto LABEL_46;
        }
      }

      v102 = v225;
      v29 = v220;
    }

    v93 = &OBJC_IVAR____TtC15ConversationKit22ConversationController_callAnyRemoteSupportsRequestToScreenShareDidChange;
  }

  else
  {
    v101 = v9;
    outlined destroy of CallControlsService?(&v228, &_s15ConversationKit0A0_pSgMd);
    __swift_destroy_boxed_opaque_existential_1(&v230);
    v102 = v225;
  }

  v189 = v93[94];
  swift_beginAccess();
  v190 = *&v29[v189];

  v191 = [v30 uniqueProxyIdentifierUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  MEMORY[0x1EEE9AC00](v192);
  *(&v212 - 2) = v101;
  LOBYTE(v191) = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, (&v212 - 4), v190);

  (*(v102 + 8))(v101, v226);
  if ((v191 & 1) == 0 || [v30 status] != 6 && objc_msgSend(v30, sel_status) != 5)
  {
    goto LABEL_46;
  }

  swift_beginAccess();
  if (*(*&v29[v189] + 16) >= specialized MutableCollection._halfStablePartition(isSuffixElement:)(&v29[v189], v30))
  {
    specialized Array.replaceSubrange<A>(_:with:)();
    swift_endAccess();
LABEL_46:
    if ((v224 & 1) == ConversationController.hasRingingCalls.getter())
    {
      goto LABEL_51;
    }

    v193 = v29;
    v194 = Logger.logObject.getter();
    v195 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v194, v195))
    {
      v196 = swift_slowAlloc();
      v197 = swift_slowAlloc();
      *&v230 = v197;
      *v196 = 136315394;
      v227 = v193[OBJC_IVAR____TtC15ConversationKit22ConversationController_mode];
      v198 = String.init<A>(reflecting:)();
      v200 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v198, v199, &v230);

      *(v196 + 4) = v200;
      *(v196 + 12) = 2080;
      v227 = ConversationController.hasRingingCalls.getter();
      v201 = String.init<A>(reflecting:)();
      v203 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v201, v202, &v230);

      *(v196 + 14) = v203;
      _os_log_impl(&dword_1BBC58000, v194, v195, "%s hasRingingCalls changed to %s", v196, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB23DF0](v197, -1, -1);
      MEMORY[0x1BFB23DF0](v196, -1, -1);
    }

    v204 = &v193[OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateHasRingingCalls];
    swift_beginAccess();
    v205 = *v204;
    if (!*v204)
    {
LABEL_51:
      swift_unknownObjectRelease();
    }

    else
    {

      v206 = ConversationController.hasRingingCalls.getter();
      v205(v206);
      swift_unknownObjectRelease();
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v205);
    }

    return __swift_destroy_boxed_opaque_existential_1(&v236);
  }

  __break(1u);
  result = swift_endAccess();
  __break(1u);
  return result;
}