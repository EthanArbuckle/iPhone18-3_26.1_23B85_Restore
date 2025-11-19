@interface BMProactiveHarvestingMessages
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMProactiveHarvestingMessages)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMProactiveHarvestingMessages)initWithUniqueID:(id)a3 domainID:(id)a4 absoluteTimestamp:(id)a5 conversationId:(id)a6 author:(id)a7 suggestedNickname:(id)a8 suggestedPhotoPath:(id)a9 recipients:(id)a10 attachmentURL:(id)a11 content:(id)a12 fromHandle:(id)a13 toHandles:(id)a14 accountIdentifier:(id)a15 accountType:(id)a16 accountHandles:(id)a17 attachment:(id)a18 url:(id)a19 contentProtection:(id)a20 personaId:(id)a21 isNew:(id)a22 isTwoFactorCode:(id)a23 isFromMe:(id)a24 isGroupThread:(id)a25 isJunk:(id)a26 isRead:(id)a27 isPinned:(id)a28 isBusinessChat:(id)a29 tapbackAssociatedMessageID:(id)a30 tapbackType:(id)a31 messageType:(id)a32 messagesService:(id)a33 messageEffect:(id)a34 isKnownSender:(id)a35 conversationUUID:(id)a36;
- (BOOL)isEqual:(id)a3;
- (NSDate)absoluteTimestamp;
- (NSString)description;
- (id)_accountHandlesJSONArray;
- (id)_toHandlesJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMProactiveHarvestingMessages

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMProactiveHarvestingMessages *)self uniqueID];
    v7 = [v5 uniqueID];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMProactiveHarvestingMessages *)self uniqueID];
      v10 = [v5 uniqueID];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_146;
      }
    }

    v13 = [(BMProactiveHarvestingMessages *)self domainID];
    v14 = [v5 domainID];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMProactiveHarvestingMessages *)self domainID];
      v17 = [v5 domainID];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_146;
      }
    }

    v19 = [(BMProactiveHarvestingMessages *)self absoluteTimestamp];
    v20 = [v5 absoluteTimestamp];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMProactiveHarvestingMessages *)self absoluteTimestamp];
      v23 = [v5 absoluteTimestamp];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_146;
      }
    }

    v25 = [(BMProactiveHarvestingMessages *)self conversationId];
    v26 = [v5 conversationId];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(BMProactiveHarvestingMessages *)self conversationId];
      v29 = [v5 conversationId];
      v30 = [v28 isEqual:v29];

      if (!v30)
      {
        goto LABEL_146;
      }
    }

    v31 = [(BMProactiveHarvestingMessages *)self author];
    v32 = [v5 author];
    v33 = v32;
    if (v31 == v32)
    {
    }

    else
    {
      v34 = [(BMProactiveHarvestingMessages *)self author];
      v35 = [v5 author];
      v36 = [v34 isEqual:v35];

      if (!v36)
      {
        goto LABEL_146;
      }
    }

    v37 = [(BMProactiveHarvestingMessages *)self suggestedNickname];
    v38 = [v5 suggestedNickname];
    v39 = v38;
    if (v37 == v38)
    {
    }

    else
    {
      v40 = [(BMProactiveHarvestingMessages *)self suggestedNickname];
      v41 = [v5 suggestedNickname];
      v42 = [v40 isEqual:v41];

      if (!v42)
      {
        goto LABEL_146;
      }
    }

    v43 = [(BMProactiveHarvestingMessages *)self suggestedPhotoPath];
    v44 = [v5 suggestedPhotoPath];
    v45 = v44;
    if (v43 == v44)
    {
    }

    else
    {
      v46 = [(BMProactiveHarvestingMessages *)self suggestedPhotoPath];
      v47 = [v5 suggestedPhotoPath];
      v48 = [v46 isEqual:v47];

      if (!v48)
      {
        goto LABEL_146;
      }
    }

    v49 = [(BMProactiveHarvestingMessages *)self recipients];
    v50 = [v5 recipients];
    v51 = v50;
    if (v49 == v50)
    {
    }

    else
    {
      v52 = [(BMProactiveHarvestingMessages *)self recipients];
      v53 = [v5 recipients];
      v54 = [v52 isEqual:v53];

      if (!v54)
      {
        goto LABEL_146;
      }
    }

    v55 = [(BMProactiveHarvestingMessages *)self attachmentURL];
    v56 = [v5 attachmentURL];
    v57 = v56;
    if (v55 == v56)
    {
    }

    else
    {
      v58 = [(BMProactiveHarvestingMessages *)self attachmentURL];
      v59 = [v5 attachmentURL];
      v60 = [v58 isEqual:v59];

      if (!v60)
      {
        goto LABEL_146;
      }
    }

    v61 = [(BMProactiveHarvestingMessages *)self content];
    v62 = [v5 content];
    v63 = v62;
    if (v61 == v62)
    {
    }

    else
    {
      v64 = [(BMProactiveHarvestingMessages *)self content];
      v65 = [v5 content];
      v66 = [v64 isEqual:v65];

      if (!v66)
      {
        goto LABEL_146;
      }
    }

    v67 = [(BMProactiveHarvestingMessages *)self fromHandle];
    v68 = [v5 fromHandle];
    v69 = v68;
    if (v67 == v68)
    {
    }

    else
    {
      v70 = [(BMProactiveHarvestingMessages *)self fromHandle];
      v71 = [v5 fromHandle];
      v72 = [v70 isEqual:v71];

      if (!v72)
      {
        goto LABEL_146;
      }
    }

    v73 = [(BMProactiveHarvestingMessages *)self toHandles];
    v74 = [v5 toHandles];
    v75 = v74;
    if (v73 == v74)
    {
    }

    else
    {
      v76 = [(BMProactiveHarvestingMessages *)self toHandles];
      v77 = [v5 toHandles];
      v78 = [v76 isEqual:v77];

      if (!v78)
      {
        goto LABEL_146;
      }
    }

    v79 = [(BMProactiveHarvestingMessages *)self accountIdentifier];
    v80 = [v5 accountIdentifier];
    v81 = v80;
    if (v79 == v80)
    {
    }

    else
    {
      v82 = [(BMProactiveHarvestingMessages *)self accountIdentifier];
      v83 = [v5 accountIdentifier];
      v84 = [v82 isEqual:v83];

      if (!v84)
      {
        goto LABEL_146;
      }
    }

    v85 = [(BMProactiveHarvestingMessages *)self accountType];
    v86 = [v5 accountType];
    v87 = v86;
    if (v85 == v86)
    {
    }

    else
    {
      v88 = [(BMProactiveHarvestingMessages *)self accountType];
      v89 = [v5 accountType];
      v90 = [v88 isEqual:v89];

      if (!v90)
      {
        goto LABEL_146;
      }
    }

    v91 = [(BMProactiveHarvestingMessages *)self accountHandles];
    v92 = [v5 accountHandles];
    v93 = v92;
    if (v91 == v92)
    {
    }

    else
    {
      v94 = [(BMProactiveHarvestingMessages *)self accountHandles];
      v95 = [v5 accountHandles];
      v96 = [v94 isEqual:v95];

      if (!v96)
      {
        goto LABEL_146;
      }
    }

    v97 = [(BMProactiveHarvestingMessages *)self attachment];
    v98 = [v5 attachment];
    v99 = v98;
    if (v97 == v98)
    {
    }

    else
    {
      v100 = [(BMProactiveHarvestingMessages *)self attachment];
      v101 = [v5 attachment];
      v102 = [v100 isEqual:v101];

      if (!v102)
      {
        goto LABEL_146;
      }
    }

    v103 = [(BMProactiveHarvestingMessages *)self url];
    v104 = [v5 url];
    v105 = v104;
    if (v103 == v104)
    {
    }

    else
    {
      v106 = [(BMProactiveHarvestingMessages *)self url];
      v107 = [v5 url];
      v108 = [v106 isEqual:v107];

      if (!v108)
      {
        goto LABEL_146;
      }
    }

    v109 = [(BMProactiveHarvestingMessages *)self contentProtection];
    v110 = [v5 contentProtection];
    v111 = v110;
    if (v109 == v110)
    {
    }

    else
    {
      v112 = [(BMProactiveHarvestingMessages *)self contentProtection];
      v113 = [v5 contentProtection];
      v114 = [v112 isEqual:v113];

      if (!v114)
      {
        goto LABEL_146;
      }
    }

    v115 = [(BMProactiveHarvestingMessages *)self personaId];
    v116 = [v5 personaId];
    v117 = v116;
    if (v115 == v116)
    {
    }

    else
    {
      v118 = [(BMProactiveHarvestingMessages *)self personaId];
      v119 = [v5 personaId];
      v120 = [v118 isEqual:v119];

      if (!v120)
      {
        goto LABEL_146;
      }
    }

    if (-[BMProactiveHarvestingMessages hasIsNew](self, "hasIsNew") || [v5 hasIsNew])
    {
      if (![(BMProactiveHarvestingMessages *)self hasIsNew])
      {
        goto LABEL_146;
      }

      if (![v5 hasIsNew])
      {
        goto LABEL_146;
      }

      v121 = [(BMProactiveHarvestingMessages *)self isNew];
      if (v121 != [v5 isNew])
      {
        goto LABEL_146;
      }
    }

    if (-[BMProactiveHarvestingMessages hasIsTwoFactorCode](self, "hasIsTwoFactorCode") || [v5 hasIsTwoFactorCode])
    {
      if (![(BMProactiveHarvestingMessages *)self hasIsTwoFactorCode])
      {
        goto LABEL_146;
      }

      if (![v5 hasIsTwoFactorCode])
      {
        goto LABEL_146;
      }

      v122 = [(BMProactiveHarvestingMessages *)self isTwoFactorCode];
      if (v122 != [v5 isTwoFactorCode])
      {
        goto LABEL_146;
      }
    }

    if (-[BMProactiveHarvestingMessages hasIsFromMe](self, "hasIsFromMe") || [v5 hasIsFromMe])
    {
      if (![(BMProactiveHarvestingMessages *)self hasIsFromMe])
      {
        goto LABEL_146;
      }

      if (![v5 hasIsFromMe])
      {
        goto LABEL_146;
      }

      v123 = [(BMProactiveHarvestingMessages *)self isFromMe];
      if (v123 != [v5 isFromMe])
      {
        goto LABEL_146;
      }
    }

    if (-[BMProactiveHarvestingMessages hasIsGroupThread](self, "hasIsGroupThread") || [v5 hasIsGroupThread])
    {
      if (![(BMProactiveHarvestingMessages *)self hasIsGroupThread])
      {
        goto LABEL_146;
      }

      if (![v5 hasIsGroupThread])
      {
        goto LABEL_146;
      }

      v124 = [(BMProactiveHarvestingMessages *)self isGroupThread];
      if (v124 != [v5 isGroupThread])
      {
        goto LABEL_146;
      }
    }

    if (-[BMProactiveHarvestingMessages hasIsJunk](self, "hasIsJunk") || [v5 hasIsJunk])
    {
      if (![(BMProactiveHarvestingMessages *)self hasIsJunk])
      {
        goto LABEL_146;
      }

      if (![v5 hasIsJunk])
      {
        goto LABEL_146;
      }

      v125 = [(BMProactiveHarvestingMessages *)self isJunk];
      if (v125 != [v5 isJunk])
      {
        goto LABEL_146;
      }
    }

    if (-[BMProactiveHarvestingMessages hasIsRead](self, "hasIsRead") || [v5 hasIsRead])
    {
      if (![(BMProactiveHarvestingMessages *)self hasIsRead])
      {
        goto LABEL_146;
      }

      if (![v5 hasIsRead])
      {
        goto LABEL_146;
      }

      v126 = [(BMProactiveHarvestingMessages *)self isRead];
      if (v126 != [v5 isRead])
      {
        goto LABEL_146;
      }
    }

    if (-[BMProactiveHarvestingMessages hasIsPinned](self, "hasIsPinned") || [v5 hasIsPinned])
    {
      if (![(BMProactiveHarvestingMessages *)self hasIsPinned])
      {
        goto LABEL_146;
      }

      if (![v5 hasIsPinned])
      {
        goto LABEL_146;
      }

      v127 = [(BMProactiveHarvestingMessages *)self isPinned];
      if (v127 != [v5 isPinned])
      {
        goto LABEL_146;
      }
    }

    if (-[BMProactiveHarvestingMessages hasIsBusinessChat](self, "hasIsBusinessChat") || [v5 hasIsBusinessChat])
    {
      if (![(BMProactiveHarvestingMessages *)self hasIsBusinessChat])
      {
        goto LABEL_146;
      }

      if (![v5 hasIsBusinessChat])
      {
        goto LABEL_146;
      }

      v128 = [(BMProactiveHarvestingMessages *)self isBusinessChat];
      if (v128 != [v5 isBusinessChat])
      {
        goto LABEL_146;
      }
    }

    v129 = [(BMProactiveHarvestingMessages *)self tapbackAssociatedMessageID];
    v130 = [v5 tapbackAssociatedMessageID];
    v131 = v130;
    if (v129 == v130)
    {
    }

    else
    {
      v132 = [(BMProactiveHarvestingMessages *)self tapbackAssociatedMessageID];
      v133 = [v5 tapbackAssociatedMessageID];
      v134 = [v132 isEqual:v133];

      if (!v134)
      {
        goto LABEL_146;
      }
    }

    if (-[BMProactiveHarvestingMessages hasTapbackType](self, "hasTapbackType") || [v5 hasTapbackType])
    {
      if (![(BMProactiveHarvestingMessages *)self hasTapbackType])
      {
        goto LABEL_146;
      }

      if (![v5 hasTapbackType])
      {
        goto LABEL_146;
      }

      v135 = [(BMProactiveHarvestingMessages *)self tapbackType];
      if (v135 != [v5 tapbackType])
      {
        goto LABEL_146;
      }
    }

    v136 = [(BMProactiveHarvestingMessages *)self messageType];
    v137 = [v5 messageType];
    v138 = v137;
    if (v136 == v137)
    {
    }

    else
    {
      v139 = [(BMProactiveHarvestingMessages *)self messageType];
      v140 = [v5 messageType];
      v141 = [v139 isEqual:v140];

      if (!v141)
      {
        goto LABEL_146;
      }
    }

    v142 = [(BMProactiveHarvestingMessages *)self messagesService];
    v143 = [v5 messagesService];
    v144 = v143;
    if (v142 == v143)
    {
    }

    else
    {
      v145 = [(BMProactiveHarvestingMessages *)self messagesService];
      v146 = [v5 messagesService];
      v147 = [v145 isEqual:v146];

      if (!v147)
      {
        goto LABEL_146;
      }
    }

    if (!-[BMProactiveHarvestingMessages hasMessageEffect](self, "hasMessageEffect") && ![v5 hasMessageEffect] || -[BMProactiveHarvestingMessages hasMessageEffect](self, "hasMessageEffect") && objc_msgSend(v5, "hasMessageEffect") && (v148 = -[BMProactiveHarvestingMessages messageEffect](self, "messageEffect"), v148 == objc_msgSend(v5, "messageEffect")))
    {
      if (!-[BMProactiveHarvestingMessages hasIsKnownSender](self, "hasIsKnownSender") && ![v5 hasIsKnownSender] || -[BMProactiveHarvestingMessages hasIsKnownSender](self, "hasIsKnownSender") && objc_msgSend(v5, "hasIsKnownSender") && (v149 = -[BMProactiveHarvestingMessages isKnownSender](self, "isKnownSender"), v149 == objc_msgSend(v5, "isKnownSender")))
      {
        v151 = [(BMProactiveHarvestingMessages *)self conversationUUID];
        v152 = [v5 conversationUUID];
        if (v151 == v152)
        {
          v12 = 1;
        }

        else
        {
          v153 = [(BMProactiveHarvestingMessages *)self conversationUUID];
          v154 = [v5 conversationUUID];
          v12 = [v153 isEqual:v154];
        }

        goto LABEL_147;
      }
    }

LABEL_146:
    v12 = 0;
LABEL_147:

    goto LABEL_148;
  }

  v12 = 0;
LABEL_148:

  return v12;
}

- (NSDate)absoluteTimestamp
{
  if (self->_hasRaw_absoluteTimestamp)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_absoluteTimestamp];
    v4 = [v2 convertValue:v3 toType:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v115[34] = *MEMORY[0x1E69E9840];
  v3 = [(BMProactiveHarvestingMessages *)self uniqueID];
  v4 = [(BMProactiveHarvestingMessages *)self domainID];
  v5 = [(BMProactiveHarvestingMessages *)self absoluteTimestamp];
  if (v5)
  {
    v6 = MEMORY[0x1E696AD98];
    v7 = [(BMProactiveHarvestingMessages *)self absoluteTimestamp];
    [v7 timeIntervalSinceReferenceDate];
    v8 = [v6 numberWithDouble:?];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(BMProactiveHarvestingMessages *)self conversationId];
  v10 = [(BMProactiveHarvestingMessages *)self author];
  v11 = [(BMProactiveHarvestingMessages *)self suggestedNickname];
  v12 = [(BMProactiveHarvestingMessages *)self suggestedPhotoPath];
  v113 = [(BMProactiveHarvestingMessages *)self recipients];
  v112 = [(BMProactiveHarvestingMessages *)self attachmentURL];
  v111 = [(BMProactiveHarvestingMessages *)self content];
  v13 = [(BMProactiveHarvestingMessages *)self fromHandle];
  v110 = [v13 jsonDictionary];

  v109 = [(BMProactiveHarvestingMessages *)self _toHandlesJSONArray];
  v108 = [(BMProactiveHarvestingMessages *)self accountIdentifier];
  v107 = [(BMProactiveHarvestingMessages *)self accountType];
  v106 = [(BMProactiveHarvestingMessages *)self _accountHandlesJSONArray];
  v14 = [(BMProactiveHarvestingMessages *)self attachment];
  v105 = [v14 jsonDictionary];

  v104 = [(BMProactiveHarvestingMessages *)self url];
  v103 = [(BMProactiveHarvestingMessages *)self contentProtection];
  v102 = [(BMProactiveHarvestingMessages *)self personaId];
  if ([(BMProactiveHarvestingMessages *)self hasIsNew])
  {
    v101 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProactiveHarvestingMessages isNew](self, "isNew")}];
  }

  else
  {
    v101 = 0;
  }

  if ([(BMProactiveHarvestingMessages *)self hasIsTwoFactorCode])
  {
    v100 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProactiveHarvestingMessages isTwoFactorCode](self, "isTwoFactorCode")}];
  }

  else
  {
    v100 = 0;
  }

  if ([(BMProactiveHarvestingMessages *)self hasIsFromMe])
  {
    v99 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProactiveHarvestingMessages isFromMe](self, "isFromMe")}];
  }

  else
  {
    v99 = 0;
  }

  if ([(BMProactiveHarvestingMessages *)self hasIsGroupThread])
  {
    v98 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProactiveHarvestingMessages isGroupThread](self, "isGroupThread")}];
  }

  else
  {
    v98 = 0;
  }

  if ([(BMProactiveHarvestingMessages *)self hasIsJunk])
  {
    v97 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProactiveHarvestingMessages isJunk](self, "isJunk")}];
  }

  else
  {
    v97 = 0;
  }

  if ([(BMProactiveHarvestingMessages *)self hasIsRead])
  {
    v96 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProactiveHarvestingMessages isRead](self, "isRead")}];
  }

  else
  {
    v96 = 0;
  }

  if ([(BMProactiveHarvestingMessages *)self hasIsPinned])
  {
    v95 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProactiveHarvestingMessages isPinned](self, "isPinned")}];
  }

  else
  {
    v95 = 0;
  }

  if ([(BMProactiveHarvestingMessages *)self hasIsBusinessChat])
  {
    v94 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProactiveHarvestingMessages isBusinessChat](self, "isBusinessChat")}];
  }

  else
  {
    v94 = 0;
  }

  v93 = [(BMProactiveHarvestingMessages *)self tapbackAssociatedMessageID];
  if ([(BMProactiveHarvestingMessages *)self hasTapbackType])
  {
    v92 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMProactiveHarvestingMessages tapbackType](self, "tapbackType")}];
  }

  else
  {
    v92 = 0;
  }

  v91 = [(BMProactiveHarvestingMessages *)self messageType];
  v90 = [(BMProactiveHarvestingMessages *)self messagesService];
  if ([(BMProactiveHarvestingMessages *)self hasMessageEffect])
  {
    v89 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMProactiveHarvestingMessages messageEffect](self, "messageEffect")}];
  }

  else
  {
    v89 = 0;
  }

  if ([(BMProactiveHarvestingMessages *)self hasIsKnownSender])
  {
    v88 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProactiveHarvestingMessages isKnownSender](self, "isKnownSender")}];
  }

  else
  {
    v88 = 0;
  }

  v87 = [(BMProactiveHarvestingMessages *)self conversationUUID];
  v114[0] = @"uniqueID";
  v15 = v3;
  if (!v3)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v77 = v15;
  v115[0] = v15;
  v114[1] = @"domainID";
  v16 = v4;
  if (!v4)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v76 = v16;
  v115[1] = v16;
  v114[2] = @"absoluteTimestamp";
  v17 = v8;
  if (!v8)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v75 = v17;
  v115[2] = v17;
  v114[3] = @"conversationId";
  v18 = v9;
  if (!v9)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v74 = v18;
  v115[3] = v18;
  v114[4] = @"author";
  v19 = v10;
  if (!v10)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v73 = v19;
  v115[4] = v19;
  v114[5] = @"suggestedNickname";
  v20 = v11;
  if (!v11)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v72 = v20;
  v115[5] = v20;
  v114[6] = @"suggestedPhotoPath";
  v21 = v12;
  if (!v12)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v71 = v21;
  v115[6] = v21;
  v114[7] = @"recipients";
  v22 = v113;
  if (!v113)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v115[7] = v22;
  v114[8] = @"attachmentURL";
  v23 = v112;
  if (!v112)
  {
    v23 = [MEMORY[0x1E695DFB0] null];
  }

  v115[8] = v23;
  v114[9] = @"content";
  v24 = v111;
  if (!v111)
  {
    v24 = [MEMORY[0x1E695DFB0] null];
  }

  v69 = v24;
  v115[9] = v24;
  v114[10] = @"fromHandle";
  v25 = v110;
  if (!v110)
  {
    v25 = [MEMORY[0x1E695DFB0] null];
  }

  v81 = v25;
  v115[10] = v25;
  v114[11] = @"toHandles";
  v26 = v109;
  if (!v109)
  {
    v26 = [MEMORY[0x1E695DFB0] null];
  }

  v80 = v26;
  v115[11] = v26;
  v114[12] = @"accountIdentifier";
  v27 = v108;
  if (!v108)
  {
    v27 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = v27;
  v115[12] = v27;
  v114[13] = @"accountType";
  v29 = v107;
  if (!v107)
  {
    v29 = [MEMORY[0x1E695DFB0] null];
  }

  v68 = v29;
  v115[13] = v29;
  v114[14] = @"accountHandles";
  v30 = v106;
  if (!v106)
  {
    v30 = [MEMORY[0x1E695DFB0] null];
  }

  v67 = v30;
  v115[14] = v30;
  v114[15] = @"attachment";
  v31 = v105;
  if (!v105)
  {
    v31 = [MEMORY[0x1E695DFB0] null];
  }

  v66 = v31;
  v115[15] = v31;
  v114[16] = @"url";
  v32 = v104;
  if (!v104)
  {
    v32 = [MEMORY[0x1E695DFB0] null];
  }

  v65 = v32;
  v115[16] = v32;
  v114[17] = @"contentProtection";
  v33 = v103;
  if (!v103)
  {
    v33 = [MEMORY[0x1E695DFB0] null];
  }

  v64 = v33;
  v115[17] = v33;
  v114[18] = @"personaId";
  v34 = v102;
  if (!v102)
  {
    v34 = [MEMORY[0x1E695DFB0] null];
  }

  v63 = v34;
  v115[18] = v34;
  v114[19] = @"isNew";
  v35 = v101;
  if (!v101)
  {
    v35 = [MEMORY[0x1E695DFB0] null];
  }

  v62 = v35;
  v115[19] = v35;
  v114[20] = @"isTwoFactorCode";
  v36 = v100;
  if (!v100)
  {
    v36 = [MEMORY[0x1E695DFB0] null];
  }

  v61 = v36;
  v115[20] = v36;
  v114[21] = @"isFromMe";
  v37 = v99;
  if (!v99)
  {
    v37 = [MEMORY[0x1E695DFB0] null];
  }

  v60 = v37;
  v115[21] = v37;
  v114[22] = @"isGroupThread";
  v38 = v98;
  if (!v98)
  {
    v38 = [MEMORY[0x1E695DFB0] null];
  }

  v59 = v38;
  v115[22] = v38;
  v114[23] = @"isJunk";
  v39 = v97;
  if (!v97)
  {
    v39 = [MEMORY[0x1E695DFB0] null];
  }

  v58 = v39;
  v115[23] = v39;
  v114[24] = @"isRead";
  v40 = v96;
  if (!v96)
  {
    v40 = [MEMORY[0x1E695DFB0] null];
  }

  v86 = v3;
  v57 = v40;
  v115[24] = v40;
  v114[25] = @"isPinned";
  v41 = v95;
  if (!v95)
  {
    v41 = [MEMORY[0x1E695DFB0] null];
  }

  v83 = v10;
  v84 = v9;
  v85 = v8;
  v56 = v41;
  v115[25] = v41;
  v114[26] = @"isBusinessChat";
  v42 = v94;
  if (!v94)
  {
    v42 = [MEMORY[0x1E695DFB0] null];
  }

  v54 = v42;
  v115[26] = v42;
  v114[27] = @"tapbackAssociatedMessageID";
  v43 = v93;
  if (!v93)
  {
    v43 = [MEMORY[0x1E695DFB0] null];
  }

  v82 = v4;
  v115[27] = v43;
  v114[28] = @"tapbackType";
  v44 = v92;
  if (!v92)
  {
    v44 = [MEMORY[0x1E695DFB0] null];
  }

  v79 = v11;
  v115[28] = v44;
  v114[29] = @"messageType";
  v45 = v91;
  if (!v91)
  {
    v45 = [MEMORY[0x1E695DFB0] null];
  }

  v70 = v22;
  v115[29] = v45;
  v114[30] = @"messagesService";
  v46 = v90;
  if (!v90)
  {
    v46 = [MEMORY[0x1E695DFB0] null];
  }

  v47 = v12;
  v115[30] = v46;
  v114[31] = @"messageEffect";
  v48 = v89;
  if (!v89)
  {
    v48 = [MEMORY[0x1E695DFB0] null];
  }

  v115[31] = v48;
  v114[32] = @"isKnownSender";
  v49 = v88;
  if (!v88)
  {
    v49 = [MEMORY[0x1E695DFB0] null];
  }

  v115[32] = v49;
  v114[33] = @"conversationUUID";
  v50 = v87;
  if (!v87)
  {
    v50 = [MEMORY[0x1E695DFB0] null];
  }

  v115[33] = v50;
  v78 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v115 forKeys:v114 count:{34, v54}];
  if (!v87)
  {
  }

  v51 = v28;
  if (!v88)
  {

    v51 = v28;
  }

  if (!v89)
  {

    v51 = v28;
  }

  if (!v90)
  {

    v51 = v28;
  }

  if (!v91)
  {

    v51 = v28;
  }

  if (!v92)
  {

    v51 = v28;
  }

  if (!v93)
  {

    v51 = v28;
  }

  if (!v94)
  {

    v51 = v28;
  }

  if (!v95)
  {

    v51 = v28;
  }

  if (!v96)
  {

    v51 = v28;
  }

  if (!v97)
  {

    v51 = v28;
  }

  if (!v98)
  {

    v51 = v28;
  }

  if (!v99)
  {

    v51 = v28;
  }

  if (!v100)
  {

    v51 = v28;
  }

  if (!v101)
  {

    v51 = v28;
  }

  if (!v102)
  {

    v51 = v28;
  }

  if (!v103)
  {

    v51 = v28;
  }

  if (!v104)
  {

    v51 = v28;
  }

  if (!v105)
  {

    v51 = v28;
  }

  if (!v106)
  {

    v51 = v28;
  }

  if (!v107)
  {

    v51 = v28;
  }

  if (!v108)
  {
  }

  if (!v109)
  {
  }

  if (!v110)
  {
  }

  if (!v111)
  {
  }

  if (!v112)
  {
  }

  if (v113)
  {
    if (v47)
    {
      goto LABEL_159;
    }
  }

  else
  {

    if (v47)
    {
LABEL_159:
      if (v79)
      {
        goto LABEL_160;
      }

      goto LABEL_170;
    }
  }

  if (v79)
  {
LABEL_160:
    if (v83)
    {
      goto LABEL_161;
    }

    goto LABEL_171;
  }

LABEL_170:

  if (v83)
  {
LABEL_161:
    if (v84)
    {
      goto LABEL_162;
    }

    goto LABEL_172;
  }

LABEL_171:

  if (v84)
  {
LABEL_162:
    if (v85)
    {
      goto LABEL_163;
    }

    goto LABEL_173;
  }

LABEL_172:

  if (v85)
  {
LABEL_163:
    if (v82)
    {
      goto LABEL_164;
    }

LABEL_174:

    if (v86)
    {
      goto LABEL_165;
    }

    goto LABEL_175;
  }

LABEL_173:

  if (!v82)
  {
    goto LABEL_174;
  }

LABEL_164:
  if (v86)
  {
    goto LABEL_165;
  }

LABEL_175:

LABEL_165:
  v52 = *MEMORY[0x1E69E9840];

  return v78;
}

- (id)_accountHandlesJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(BMProactiveHarvestingMessages *)self accountHandles];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 addObject:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_toHandlesJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMProactiveHarvestingMessages *)self toHandles];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMProactiveHarvestingMessages)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v422[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"uniqueID"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v13 = objc_alloc(MEMORY[0x1E696ABC0]);
        v14 = *MEMORY[0x1E698F240];
        v421 = *MEMORY[0x1E696A578];
        v15 = v6;
        v16 = objc_alloc(MEMORY[0x1E696AEC0]);
        v246 = objc_opt_class();
        v17 = v16;
        v6 = v15;
        v18 = [v17 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v246, @"uniqueID"];
        v422[0] = v18;
        v331 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v422 forKeys:&v421 count:1];
        v19 = [v13 initWithDomain:v14 code:2 userInfo:?];
        v332 = 0;
        v20 = 0;
        *a4 = v19;
        goto LABEL_375;
      }

      v332 = 0;
      v20 = 0;
      goto LABEL_376;
    }

    v332 = v6;
  }

  else
  {
    v332 = 0;
  }

  v7 = [v5 objectForKeyedSubscript:@"domainID"];
  v331 = v7;
  if (v7 && (v8 = v7, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v21 = objc_alloc(MEMORY[0x1E696ABC0]);
        v22 = *MEMORY[0x1E698F240];
        v419 = *MEMORY[0x1E696A578];
        v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"domainID"];
        v420 = v23;
        v330 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v420 forKeys:&v419 count:1];
        v24 = [v21 initWithDomain:v22 code:2 userInfo:?];
        v18 = 0;
        v20 = 0;
        *a4 = v24;
        goto LABEL_374;
      }

      v18 = 0;
      v20 = 0;
      goto LABEL_375;
    }

    v328 = v8;
  }

  else
  {
    v328 = 0;
  }

  v9 = [v5 objectForKeyedSubscript:@"absoluteTimestamp"];
  v330 = v9;
  if (!v9 || (v10 = v9, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v327 = 0;
    goto LABEL_23;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
    v12 = objc_alloc(MEMORY[0x1E695DF00]);
    [v11 doubleValue];
    v327 = [v12 initWithTimeIntervalSinceReferenceDate:?];
LABEL_22:

    goto LABEL_23;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = objc_alloc_init(MEMORY[0x1E696AC80]);
    v25 = v10;
    v327 = [v11 dateFromString:v25];

    goto LABEL_22;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v23 = a4;
    if (a4)
    {
      v95 = objc_alloc(MEMORY[0x1E696ABC0]);
      v96 = *MEMORY[0x1E698F240];
      v417 = *MEMORY[0x1E696A578];
      v48 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"absoluteTimestamp"];
      v418 = v48;
      v329 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v418 forKeys:&v417 count:1];
      v97 = [v95 initWithDomain:v96 code:2 userInfo:?];
      v23 = 0;
      v20 = 0;
      *a4 = v97;
      v18 = v328;
      goto LABEL_373;
    }

    v20 = 0;
    v18 = v328;
    goto LABEL_374;
  }

  v327 = v10;
LABEL_23:
  v26 = [v5 objectForKeyedSubscript:@"conversationId"];
  v329 = v26;
  if (v26 && (v27 = v26, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v45 = objc_alloc(MEMORY[0x1E696ABC0]);
        v46 = *MEMORY[0x1E698F240];
        v415 = *MEMORY[0x1E696A578];
        v325 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"conversationId"];
        v416 = v325;
        v326 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v416 forKeys:&v415 count:1];
        v47 = [v45 initWithDomain:v46 code:2 userInfo:?];
        v48 = 0;
        v20 = 0;
        *a4 = v47;
        v18 = v328;
        v23 = v327;
        goto LABEL_372;
      }

      v48 = 0;
      v20 = 0;
      v18 = v328;
      v23 = v327;
      goto LABEL_373;
    }

    v324 = v27;
  }

  else
  {
    v324 = 0;
  }

  v28 = [v5 objectForKeyedSubscript:@"author"];
  v326 = v28;
  if (v28 && (v29 = v28, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!a4)
      {
        v325 = 0;
        v20 = 0;
        v18 = v328;
        v23 = v327;
        v48 = v324;
        goto LABEL_372;
      }

      v49 = objc_alloc(MEMORY[0x1E696ABC0]);
      v50 = *MEMORY[0x1E698F240];
      v413 = *MEMORY[0x1E696A578];
      v321 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"author"];
      v414 = v321;
      v323 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v414 forKeys:&v413 count:1];
      v51 = [v49 initWithDomain:v50 code:2 userInfo:?];
      v325 = 0;
      v20 = 0;
      *a4 = v51;
      goto LABEL_114;
    }

    v325 = v29;
  }

  else
  {
    v325 = 0;
  }

  v30 = [v5 objectForKeyedSubscript:@"suggestedNickname"];
  v323 = v30;
  if (v30)
  {
    v31 = v30;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v321 = v31;
        goto LABEL_32;
      }

      if (a4)
      {
        v69 = objc_alloc(MEMORY[0x1E696ABC0]);
        v70 = *MEMORY[0x1E698F240];
        v411 = *MEMORY[0x1E696A578];
        v318 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"suggestedNickname"];
        v412 = v318;
        v319 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v412 forKeys:&v411 count:1];
        v71 = [v69 initWithDomain:v70 code:2 userInfo:?];
        v321 = 0;
        v20 = 0;
        *a4 = v71;
        goto LABEL_129;
      }

      v321 = 0;
      v20 = 0;
LABEL_114:
      v18 = v328;
      v23 = v327;
      v48 = v324;
      goto LABEL_371;
    }
  }

  v321 = 0;
LABEL_32:
  v32 = [v5 objectForKeyedSubscript:@"suggestedPhotoPath"];
  v319 = v32;
  if (v32)
  {
    v33 = v32;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v318 = v33;
        goto LABEL_35;
      }

      if (a4)
      {
        v74 = objc_alloc(MEMORY[0x1E696ABC0]);
        v75 = *MEMORY[0x1E698F240];
        v409 = *MEMORY[0x1E696A578];
        v316 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"suggestedPhotoPath"];
        v410 = v316;
        v317 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v410 forKeys:&v409 count:1];
        v76 = [v74 initWithDomain:v75 code:2 userInfo:?];
        v318 = 0;
        v20 = 0;
        *a4 = v76;
        goto LABEL_132;
      }

      v318 = 0;
      v20 = 0;
LABEL_129:
      v18 = v328;
      v23 = v327;
      v48 = v324;
      goto LABEL_370;
    }
  }

  v318 = 0;
LABEL_35:
  v34 = [v5 objectForKeyedSubscript:@"recipients"];
  v317 = v34;
  if (v34)
  {
    v35 = v34;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v316 = v35;
        goto LABEL_38;
      }

      if (a4)
      {
        v77 = objc_alloc(MEMORY[0x1E696ABC0]);
        v78 = *MEMORY[0x1E698F240];
        v407 = *MEMORY[0x1E696A578];
        v314 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"recipients"];
        v408 = v314;
        v315 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v408 forKeys:&v407 count:1];
        v79 = [v77 initWithDomain:v78 code:2 userInfo:?];
        v316 = 0;
        v20 = 0;
        *a4 = v79;
        goto LABEL_153;
      }

      v316 = 0;
      v20 = 0;
LABEL_132:
      v18 = v328;
      v23 = v327;
      v48 = v324;
      goto LABEL_369;
    }
  }

  v316 = 0;
LABEL_38:
  v36 = [v5 objectForKeyedSubscript:@"attachmentURL"];
  v315 = v36;
  if (v36)
  {
    v37 = v36;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v314 = v37;
        goto LABEL_41;
      }

      if (a4)
      {
        v80 = objc_alloc(MEMORY[0x1E696ABC0]);
        v81 = *MEMORY[0x1E698F240];
        v405 = *MEMORY[0x1E696A578];
        v312 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"attachmentURL"];
        v406 = v312;
        v313 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v406 forKeys:&v405 count:1];
        v82 = [v80 initWithDomain:v81 code:2 userInfo:?];
        v314 = 0;
        v20 = 0;
        *a4 = v82;
        goto LABEL_157;
      }

      v314 = 0;
      v20 = 0;
LABEL_153:
      v18 = v328;
      v23 = v327;
      v48 = v324;
      goto LABEL_368;
    }
  }

  v314 = 0;
LABEL_41:
  v38 = [v5 objectForKeyedSubscript:@"content"];
  v311 = self;
  v313 = v38;
  if (v38)
  {
    v39 = v38;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v312 = v39;
        goto LABEL_44;
      }

      if (a4)
      {
        v83 = objc_alloc(MEMORY[0x1E696ABC0]);
        v84 = *MEMORY[0x1E698F240];
        v403 = *MEMORY[0x1E696A578];
        v72 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"content"];
        v404 = v72;
        v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v404 forKeys:&v403 count:1];
        v85 = [v83 initWithDomain:v84 code:2 userInfo:v41];
        v312 = 0;
        v20 = 0;
        *a4 = v85;
        goto LABEL_112;
      }

      v312 = 0;
      v20 = 0;
LABEL_157:
      v18 = v328;
      v23 = v327;
      v48 = v324;
      goto LABEL_367;
    }
  }

  v312 = 0;
LABEL_44:
  v40 = [v5 objectForKeyedSubscript:@"fromHandle"];
  if (!v40 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v306 = v40;
    v41 = 0;
    goto LABEL_47;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!a4)
    {
      v20 = 0;
      v18 = v328;
      v23 = v327;
      v72 = v40;
      goto LABEL_366;
    }

    v86 = objc_alloc(MEMORY[0x1E696ABC0]);
    v87 = *MEMORY[0x1E698F240];
    v401 = *MEMORY[0x1E696A578];
    v41 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"fromHandle"];
    v402 = v41;
    v88 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v402 forKeys:&v401 count:1];
    *a4 = [v86 initWithDomain:v87 code:2 userInfo:v88];

    v20 = 0;
    v72 = v40;
LABEL_112:
    v18 = v328;
    v23 = v327;
    goto LABEL_365;
  }

  v72 = v40;
  v344 = 0;
  v41 = [[BMProactiveHarvestingNamedHandle alloc] initWithJSONDictionary:v72 error:&v344];
  v73 = v344;
  if (v73)
  {
    v18 = v328;
    v23 = v327;
    if (a4)
    {
      v73 = v73;
      *a4 = v73;
    }

    v20 = 0;
    goto LABEL_365;
  }

  v306 = v40;

LABEL_47:
  v42 = [v5 objectForKeyedSubscript:@"toHandles"];
  v43 = [MEMORY[0x1E695DFB0] null];
  v44 = [v42 isEqual:v43];

  v307 = v6;
  v305 = v41;
  if (v44)
  {

LABEL_68:
    v52 = 0;
    goto LABEL_69;
  }

  if (!v42)
  {
    goto LABEL_68;
  }

  objc_opt_class();
  obj = v42;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (a4)
    {
      v99 = objc_alloc(MEMORY[0x1E696ABC0]);
      v100 = *MEMORY[0x1E698F240];
      v399 = *MEMORY[0x1E696A578];
      v322 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"toHandles"];
      v400 = v322;
      v101 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v400 forKeys:&v399 count:1];
      v102 = v100;
      v103 = v101;
      v20 = 0;
      *a4 = [v99 initWithDomain:v102 code:2 userInfo:v101];
      v18 = v328;
      v23 = v327;
      goto LABEL_363;
    }

    v20 = 0;
    v18 = v328;
    v23 = v327;
    goto LABEL_364;
  }

  v52 = v42;
LABEL_69:
  v322 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v52, "count")}];
  v340 = 0u;
  v341 = 0u;
  v342 = 0u;
  v343 = 0u;
  obj = v52;
  v53 = [obj countByEnumeratingWithState:&v340 objects:v398 count:16];
  if (v53)
  {
    v54 = v53;
    v55 = *v341;
    do
    {
      for (i = 0; i != v54; ++i)
      {
        if (*v341 != v55)
        {
          objc_enumerationMutation(obj);
        }

        v57 = *(*(&v340 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v89 = a4;
          if (a4)
          {
            v90 = objc_alloc(MEMORY[0x1E696ABC0]);
            v91 = *MEMORY[0x1E698F240];
            v396 = *MEMORY[0x1E696A578];
            v58 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"toHandles"];
            v397 = v58;
            v92 = MEMORY[0x1E695DF20];
            v93 = &v397;
            v94 = &v396;
            goto LABEL_121;
          }

LABEL_130:
          v20 = 0;
          v103 = obj;
          v6 = v307;
          v18 = v328;
          v23 = v327;
          v41 = v305;
          goto LABEL_363;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v89 = a4;
          if (!a4)
          {
            goto LABEL_130;
          }

          v90 = objc_alloc(MEMORY[0x1E696ABC0]);
          v91 = *MEMORY[0x1E698F240];
          v394 = *MEMORY[0x1E696A578];
          v58 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"toHandles"];
          v395 = v58;
          v92 = MEMORY[0x1E695DF20];
          v93 = &v395;
          v94 = &v394;
LABEL_121:
          v65 = [v92 dictionaryWithObjects:v93 forKeys:v94 count:1];
          v20 = 0;
          *v89 = [v90 initWithDomain:v91 code:2 userInfo:v65];
LABEL_125:
          v303 = obj;
          v6 = v307;
          v18 = v328;
          v23 = v327;
          v41 = v305;
          goto LABEL_361;
        }

        v58 = v57;
        v59 = [BMProactiveHarvestingNamedHandle alloc];
        v339 = 0;
        v60 = [(BMProactiveHarvestingNamedHandle *)v59 initWithJSONDictionary:v58 error:&v339];
        v61 = v339;
        if (v61)
        {
          v65 = v61;
          if (a4)
          {
            v98 = v61;
            *a4 = v65;
          }

          v20 = 0;
          goto LABEL_125;
        }

        [v322 addObject:v60];
      }

      v54 = [obj countByEnumeratingWithState:&v340 objects:v398 count:16];
    }

    while (v54);
  }

  v58 = [v5 objectForKeyedSubscript:@"accountIdentifier"];
  if (v58 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    v6 = v307;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!a4)
      {
        v103 = 0;
        v20 = 0;
        v18 = v328;
        v23 = v327;
        v41 = v305;
        goto LABEL_362;
      }

      v124 = objc_alloc(MEMORY[0x1E696ABC0]);
      v125 = *MEMORY[0x1E698F240];
      v392 = *MEMORY[0x1E696A578];
      v65 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"accountIdentifier"];
      v393 = v65;
      v126 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v393 forKeys:&v392 count:1];
      v127 = v124;
      v64 = v126;
      v303 = 0;
      v20 = 0;
      *a4 = [v127 initWithDomain:v125 code:2 userInfo:v126];
LABEL_229:
      v18 = v328;
      v23 = v327;
      v41 = v305;
      goto LABEL_360;
    }

    v62 = v58;
  }

  else
  {
    v62 = 0;
    v6 = v307;
  }

  v63 = [v5 objectForKeyedSubscript:@"accountType"];
  v310 = v63;
  v303 = v62;
  if (!v63 || (v64 = v63, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v65 = 0;
    goto LABEL_85;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (a4)
    {
      v128 = objc_alloc(MEMORY[0x1E696ABC0]);
      v129 = *MEMORY[0x1E698F240];
      v390 = *MEMORY[0x1E696A578];
      v304 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"accountType"];
      v391 = v304;
      v130 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v391 forKeys:&v390 count:1];
      v131 = v129;
      v64 = v310;
      v309 = v130;
      v132 = [v128 initWithDomain:v131 code:2 userInfo:?];
      v65 = 0;
      v20 = 0;
      *a4 = v132;
      v18 = v328;
      v23 = v327;
      v41 = v305;

      goto LABEL_359;
    }

    v65 = 0;
    v20 = 0;
    goto LABEL_229;
  }

  v65 = v64;
LABEL_85:
  v66 = [v5 objectForKeyedSubscript:@"accountHandles"];
  v67 = [MEMORY[0x1E695DFB0] null];
  v68 = [v66 isEqual:v67];

  if (v68)
  {
  }

  else
  {
    v41 = v305;
    if (v66)
    {
      objc_opt_class();
      v304 = v66;
      v64 = v310;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v20 = 0;
          v18 = v328;
          v23 = v327;
          goto LABEL_359;
        }

        v133 = objc_alloc(MEMORY[0x1E696ABC0]);
        v134 = *MEMORY[0x1E698F240];
        v388 = *MEMORY[0x1E696A578];
        v308 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"accountHandles"];
        v389 = v308;
        v112 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v389 forKeys:&v388 count:1];
        v135 = v134;
        v64 = v310;
        v136 = [v133 initWithDomain:v135 code:2 userInfo:v112];
        v20 = 0;
        *a4 = v136;
LABEL_176:
        v18 = v328;
        v23 = v327;
        goto LABEL_357;
      }

      v104 = v66;
      goto LABEL_137;
    }
  }

  v104 = 0;
  v64 = v310;
LABEL_137:
  v308 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v104, "count")}];
  v335 = 0u;
  v336 = 0u;
  v337 = 0u;
  v338 = 0u;
  v304 = v104;
  v105 = [v304 countByEnumeratingWithState:&v335 objects:v387 count:16];
  if (!v105)
  {
    goto LABEL_146;
  }

  v106 = v105;
  v107 = *v336;
  v64 = v310;
  while (2)
  {
    for (j = 0; j != v106; ++j)
    {
      if (*v336 != v107)
      {
        objc_enumerationMutation(v304);
      }

      v109 = *(*(&v335 + 1) + 8 * j);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (a4)
        {
          v115 = objc_alloc(MEMORY[0x1E696ABC0]);
          v116 = *MEMORY[0x1E698F240];
          v385 = *MEMORY[0x1E696A578];
          v302 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"accountHandles"];
          v386 = v302;
          v117 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v386 forKeys:&v385 count:1];
          v118 = v115;
          v119 = v116;
LABEL_168:
          v122 = v117;
          v18 = v328;
          v23 = v327;
          v20 = 0;
          *a4 = [v118 initWithDomain:v119 code:2 userInfo:?];
          v123 = v304;
          v6 = v307;
          v64 = v310;
          goto LABEL_356;
        }

LABEL_171:
        v20 = 0;
        v112 = v304;
        v6 = v307;
        v18 = v328;
        v23 = v327;
        v41 = v305;
        v64 = v310;
        goto LABEL_357;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (a4)
        {
          v120 = objc_alloc(MEMORY[0x1E696ABC0]);
          v121 = *MEMORY[0x1E698F240];
          v383 = *MEMORY[0x1E696A578];
          v302 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"accountHandles"];
          v384 = v302;
          v117 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v384 forKeys:&v383 count:1];
          v118 = v120;
          v119 = v121;
          goto LABEL_168;
        }

        goto LABEL_171;
      }

      v110 = v109;
      [v308 addObject:v110];
    }

    v106 = [v304 countByEnumeratingWithState:&v335 objects:v387 count:16];
    if (v106)
    {
      continue;
    }

    break;
  }

LABEL_146:

  v111 = [v5 objectForKeyedSubscript:@"attachment"];
  v301 = v111;
  if (!v111 || (v112 = v111, objc_opt_class(), v41 = v305, (objc_opt_isKindOfClass() & 1) != 0))
  {
    v302 = 0;
    goto LABEL_149;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = v307;
    if (a4)
    {
      v300 = objc_alloc(MEMORY[0x1E696ABC0]);
      v298 = *MEMORY[0x1E698F240];
      v381 = *MEMORY[0x1E696A578];
      v168 = objc_alloc(MEMORY[0x1E696AEC0]);
      v123 = v112;
      v247 = objc_opt_class();
      v169 = v168;
      v64 = v310;
      v302 = [v169 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v247, @"attachment"];
      v382 = v302;
      v122 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v382 forKeys:&v381 count:1];
      v20 = 0;
      *a4 = [v300 initWithDomain:v298 code:2 userInfo:v122];
      v18 = v328;
      v23 = v327;
      goto LABEL_356;
    }

    v20 = 0;
    goto LABEL_176;
  }

  v137 = v112;
  v138 = [BMProactiveHarvestingContentAttachment alloc];
  v334 = 0;
  v302 = [(BMProactiveHarvestingContentAttachment *)v138 initWithJSONDictionary:v137 error:&v334];
  v139 = v334;
  v6 = v307;
  if (!v139)
  {

LABEL_149:
    v113 = [v5 objectForKeyedSubscript:@"url"];
    v299 = v113;
    if (v113)
    {
      v114 = v113;
      objc_opt_class();
      v6 = v307;
      if (objc_opt_isKindOfClass())
      {
        v297 = 0;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v123 = v301;
            v297 = 0;
            v20 = 0;
            v18 = v328;
            v23 = v327;
LABEL_355:

            v122 = v297;
            goto LABEL_356;
          }

          v170 = objc_alloc(MEMORY[0x1E696ABC0]);
          v171 = *MEMORY[0x1E698F240];
          v379 = *MEMORY[0x1E696A578];
          v172 = objc_alloc(MEMORY[0x1E696AEC0]);
          v248 = objc_opt_class();
          v173 = v172;
          v64 = v310;
          v294 = [v173 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v248, @"url"];
          v380 = v294;
          v296 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v380 forKeys:&v379 count:1];
          v297 = 0;
          v20 = 0;
          *a4 = [v170 initWithDomain:v171 code:2 userInfo:?];
          v18 = v328;
          v23 = v327;
          v141 = v301;
          goto LABEL_354;
        }

        v297 = v114;
      }
    }

    else
    {
      v297 = 0;
      v6 = v307;
    }

    v140 = [v5 objectForKeyedSubscript:@"contentProtection"];
    v141 = v301;
    v296 = v140;
    if (!v140 || (v142 = v140, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v143 = 0;
      goto LABEL_189;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v143 = v142;
LABEL_189:
      v144 = [v5 objectForKeyedSubscript:@"personaId"];
      v294 = v143;
      if (!v144 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v289 = v144;
        v292 = 0;
        goto LABEL_192;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v289 = v144;
        v292 = v144;
LABEL_192:
        v145 = [v5 objectForKeyedSubscript:@"isNew"];
        v291 = v145;
        if (!v145 || (v146 = v145, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v290 = 0;
          goto LABEL_195;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v290 = v146;
LABEL_195:
          v147 = [v5 objectForKeyedSubscript:@"isTwoFactorCode"];
          v288 = v147;
          if (!v147 || (v148 = v147, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v287 = 0;
            goto LABEL_198;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v287 = v148;
LABEL_198:
            v149 = [v5 objectForKeyedSubscript:@"isFromMe"];
            v285 = v149;
            if (!v149 || (v150 = v149, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v286 = 0;
              goto LABEL_201;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v286 = v150;
LABEL_201:
              v151 = [v5 objectForKeyedSubscript:@"isGroupThread"];
              v283 = v151;
              if (!v151 || (v152 = v151, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v284 = 0;
                goto LABEL_204;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v284 = v152;
LABEL_204:
                v153 = [v5 objectForKeyedSubscript:@"isJunk"];
                v281 = v153;
                if (!v153 || (v154 = v153, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v282 = 0;
                  goto LABEL_207;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v282 = v154;
LABEL_207:
                  v155 = [v5 objectForKeyedSubscript:@"isRead"];
                  v279 = v155;
                  if (!v155 || (v156 = v155, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v280 = 0;
                    goto LABEL_210;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v280 = v156;
LABEL_210:
                    v157 = [v5 objectForKeyedSubscript:@"isPinned"];
                    v277 = v157;
                    if (!v157 || (v158 = v157, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      v278 = 0;
                      goto LABEL_213;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v278 = v158;
LABEL_213:
                      v159 = [v5 objectForKeyedSubscript:@"isBusinessChat"];
                      v275 = v159;
                      if (!v159 || (v160 = v159, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                      {
                        v276 = 0;
                        goto LABEL_216;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v276 = v160;
LABEL_216:
                        v161 = [v5 objectForKeyedSubscript:@"tapbackAssociatedMessageID"];
                        v273 = v161;
                        if (!v161 || (v162 = v161, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                        {
                          v274 = 0;
                          goto LABEL_219;
                        }

                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v274 = v162;
LABEL_219:
                          v163 = [v5 objectForKeyedSubscript:@"tapbackType"];
                          v271 = v163;
                          if (!v163 || (v164 = v163, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                          {
                            v272 = 0;
                            goto LABEL_222;
                          }

                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v272 = v164;
LABEL_222:
                            v165 = [v5 objectForKeyedSubscript:@"messageType"];
                            v269 = v165;
                            if (!v165 || (v166 = v165, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                            {
                              v270 = 0;
LABEL_225:
                              v167 = [v5 objectForKeyedSubscript:@"messagesService"];
                              v267 = v167;
                              if (!v167)
                              {
                                goto LABEL_290;
                              }

                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v167 = 0;
                                goto LABEL_290;
                              }

                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v167 = v167;
LABEL_290:
                                v265 = [v5 objectForKeyedSubscript:@"messageEffect"];
                                v266 = v167;
                                if (!v265 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                {
                                  v268 = 0;
                                  goto LABEL_293;
                                }

                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  v268 = v265;
LABEL_293:
                                  v263 = [v5 objectForKeyedSubscript:@"isKnownSender"];
                                  if (!v263 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                  {
                                    v264 = 0;
LABEL_296:
                                    v216 = [v5 objectForKeyedSubscript:@"conversationUUID"];
                                    v262 = v216;
                                    if (!v216)
                                    {
LABEL_317:
                                      v18 = v328;
                                      v23 = v327;
                                      v261 = v216;
                                      v20 = [(BMProactiveHarvestingMessages *)v311 initWithUniqueID:v332 domainID:v328 absoluteTimestamp:v327 conversationId:v324 author:v325 suggestedNickname:v321 suggestedPhotoPath:v318 recipients:v316 attachmentURL:v314 content:v312 fromHandle:v305 toHandles:v322 accountIdentifier:v303 accountType:v65 accountHandles:v308 attachment:v302 url:v297 contentProtection:v143 personaId:v292 isNew:v290 isTwoFactorCode:v287 isFromMe:v286 isGroupThread:v284 isJunk:v282 isRead:v280 isPinned:v278 isBusinessChat:v276 tapbackAssociatedMessageID:v274 tapbackType:v272 messageType:v270 messagesService:v167 messageEffect:v268 isKnownSender:v264 conversationUUID:v216];
                                      v311 = v20;
LABEL_338:
                                      v141 = v301;

                                      v144 = v289;
LABEL_339:

LABEL_340:
LABEL_341:

LABEL_342:
LABEL_343:

                                      goto LABEL_344;
                                    }

                                    v217 = v216;
                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      v216 = 0;
                                      goto LABEL_317;
                                    }

                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      v216 = v217;
                                      goto LABEL_317;
                                    }

                                    if (a4)
                                    {
                                      v240 = objc_alloc(MEMORY[0x1E696ABC0]);
                                      v241 = *MEMORY[0x1E698F240];
                                      v345 = *MEMORY[0x1E696A578];
                                      v242 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"conversationUUID"];
                                      v346 = v242;
                                      v243 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v346 forKeys:&v345 count:1];
                                      *a4 = [v240 initWithDomain:v241 code:2 userInfo:v243];
                                    }

                                    v261 = 0;
                                    v20 = 0;
LABEL_337:
                                    v18 = v328;
                                    v23 = v327;
                                    v64 = v310;
                                    goto LABEL_338;
                                  }

                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    v264 = v263;
                                    goto LABEL_296;
                                  }

                                  if (a4)
                                  {
                                    v237 = objc_alloc(MEMORY[0x1E696ABC0]);
                                    v238 = *MEMORY[0x1E698F240];
                                    v347 = *MEMORY[0x1E696A578];
                                    v261 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isKnownSender"];
                                    v348 = v261;
                                    v262 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v348 forKeys:&v347 count:1];
                                    v239 = [v237 initWithDomain:v238 code:2 userInfo:?];
                                    v264 = 0;
                                    v20 = 0;
                                    *a4 = v239;
                                    goto LABEL_337;
                                  }

                                  v264 = 0;
                                  v20 = 0;
LABEL_386:
                                  v18 = v328;
                                  v23 = v327;
                                  v64 = v310;
                                  v144 = v289;
                                  v141 = v301;
                                  goto LABEL_339;
                                }

                                if (a4)
                                {
                                  v234 = objc_alloc(MEMORY[0x1E696ABC0]);
                                  v235 = *MEMORY[0x1E698F240];
                                  v349 = *MEMORY[0x1E696A578];
                                  v264 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"messageEffect"];
                                  v350 = v264;
                                  v263 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v350 forKeys:&v349 count:1];
                                  v236 = [v234 initWithDomain:v235 code:2 userInfo:?];
                                  v268 = 0;
                                  v20 = 0;
                                  *a4 = v236;
                                  goto LABEL_386;
                                }

                                v268 = 0;
                                v20 = 0;
LABEL_384:
                                v18 = v328;
                                v23 = v327;
                                v64 = v310;
                                v144 = v289;
                                v141 = v301;
                                goto LABEL_340;
                              }

                              if (a4)
                              {
                                v232 = objc_alloc(MEMORY[0x1E696ABC0]);
                                v233 = *MEMORY[0x1E698F240];
                                v351 = *MEMORY[0x1E696A578];
                                v268 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"messagesService"];
                                v352 = v268;
                                v265 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v352 forKeys:&v351 count:1];
                                v266 = 0;
                                v20 = 0;
                                *a4 = [v232 initWithDomain:v233 code:2 userInfo:?];
                                goto LABEL_384;
                              }

                              v266 = 0;
                              v20 = 0;
LABEL_382:
                              v18 = v328;
                              v23 = v327;
                              v64 = v310;
                              v144 = v289;
                              v141 = v301;
                              goto LABEL_341;
                            }

                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v270 = v166;
                              goto LABEL_225;
                            }

                            if (a4)
                            {
                              v230 = objc_alloc(MEMORY[0x1E696ABC0]);
                              v231 = *MEMORY[0x1E698F240];
                              v353 = *MEMORY[0x1E696A578];
                              v266 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"messageType"];
                              v354 = v266;
                              v267 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v354 forKeys:&v353 count:1];
                              v270 = 0;
                              v20 = 0;
                              *a4 = [v230 initWithDomain:v231 code:2 userInfo:?];
                              goto LABEL_382;
                            }

                            v270 = 0;
                            v20 = 0;
                            v18 = v328;
                            v23 = v327;
                            v64 = v310;
LABEL_380:
                            v144 = v289;
                            v141 = v301;
                            goto LABEL_342;
                          }

                          if (a4)
                          {
                            v226 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v227 = *MEMORY[0x1E698F240];
                            v355 = *MEMORY[0x1E696A578];
                            v228 = objc_alloc(MEMORY[0x1E696AEC0]);
                            v260 = objc_opt_class();
                            v229 = v228;
                            v64 = v310;
                            v270 = [v229 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v260, @"tapbackType"];
                            v356 = v270;
                            v269 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v356 forKeys:&v355 count:1];
                            v272 = 0;
                            v20 = 0;
                            *a4 = [v226 initWithDomain:v227 code:2 userInfo:?];
                            v18 = v328;
                            v23 = v327;
                            goto LABEL_380;
                          }

                          v272 = 0;
                          v20 = 0;
LABEL_378:
                          v18 = v328;
                          v23 = v327;
                          v144 = v289;
                          v141 = v301;
                          goto LABEL_343;
                        }

                        if (a4)
                        {
                          v222 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v223 = *MEMORY[0x1E698F240];
                          v357 = *MEMORY[0x1E696A578];
                          v224 = objc_alloc(MEMORY[0x1E696AEC0]);
                          v259 = objc_opt_class();
                          v225 = v224;
                          v64 = v310;
                          v272 = [v225 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v259, @"tapbackAssociatedMessageID"];
                          v358 = v272;
                          v271 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v358 forKeys:&v357 count:1];
                          v274 = 0;
                          v20 = 0;
                          *a4 = [v222 initWithDomain:v223 code:2 userInfo:?];
                          goto LABEL_378;
                        }

                        v274 = 0;
                        v20 = 0;
LABEL_333:
                        v18 = v328;
                        v23 = v327;
                        v144 = v289;
                        v141 = v301;
LABEL_344:

                        goto LABEL_345;
                      }

                      if (a4)
                      {
                        v218 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v219 = *MEMORY[0x1E698F240];
                        v359 = *MEMORY[0x1E696A578];
                        v220 = objc_alloc(MEMORY[0x1E696AEC0]);
                        v258 = objc_opt_class();
                        v221 = v220;
                        v64 = v310;
                        v274 = [v221 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v258, @"isBusinessChat"];
                        v360 = v274;
                        v273 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v360 forKeys:&v359 count:1];
                        v276 = 0;
                        v20 = 0;
                        *a4 = [v218 initWithDomain:v219 code:2 userInfo:?];
                        goto LABEL_333;
                      }

                      v276 = 0;
                      v20 = 0;
LABEL_329:
                      v18 = v328;
                      v23 = v327;
                      v144 = v289;
                      v141 = v301;
LABEL_345:

                      goto LABEL_346;
                    }

                    if (a4)
                    {
                      v212 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v213 = *MEMORY[0x1E698F240];
                      v361 = *MEMORY[0x1E696A578];
                      v214 = objc_alloc(MEMORY[0x1E696AEC0]);
                      v257 = objc_opt_class();
                      v215 = v214;
                      v64 = v310;
                      v276 = [v215 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v257, @"isPinned"];
                      v362 = v276;
                      v275 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v362 forKeys:&v361 count:1];
                      v278 = 0;
                      v20 = 0;
                      *a4 = [v212 initWithDomain:v213 code:2 userInfo:?];
                      goto LABEL_329;
                    }

                    v278 = 0;
                    v20 = 0;
LABEL_325:
                    v18 = v328;
                    v23 = v327;
                    v144 = v289;
                    v141 = v301;
LABEL_346:

                    v207 = v279;
                    goto LABEL_347;
                  }

                  if (a4)
                  {
                    v208 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v209 = *MEMORY[0x1E698F240];
                    v363 = *MEMORY[0x1E696A578];
                    v210 = objc_alloc(MEMORY[0x1E696AEC0]);
                    v256 = objc_opt_class();
                    v211 = v210;
                    v64 = v310;
                    v278 = [v211 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v256, @"isRead"];
                    v364 = v278;
                    v277 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v364 forKeys:&v363 count:1];
                    v280 = 0;
                    v20 = 0;
                    *a4 = [v208 initWithDomain:v209 code:2 userInfo:?];
                    goto LABEL_325;
                  }

                  v280 = 0;
                  v20 = 0;
                  v18 = v328;
                  v23 = v327;
                  v144 = v289;
                  v207 = v279;
LABEL_321:
                  v141 = v301;
LABEL_347:

                  v201 = v281;
                  goto LABEL_348;
                }

                if (a4)
                {
                  v202 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v203 = *MEMORY[0x1E698F240];
                  v365 = *MEMORY[0x1E696A578];
                  v204 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v255 = objc_opt_class();
                  v205 = v204;
                  v64 = v310;
                  v280 = [v205 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v255, @"isJunk"];
                  v366 = v280;
                  v206 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v366 forKeys:&v365 count:1];
                  v282 = 0;
                  v20 = 0;
                  *a4 = [v202 initWithDomain:v203 code:2 userInfo:v206];
                  v207 = v206;
                  v18 = v328;
                  v23 = v327;
                  v144 = v289;
                  goto LABEL_321;
                }

                v282 = 0;
                v20 = 0;
                v18 = v328;
                v23 = v327;
                v144 = v289;
                v201 = v281;
LABEL_314:
                v141 = v301;
LABEL_348:

                v195 = v283;
                goto LABEL_349;
              }

              if (a4)
              {
                v196 = objc_alloc(MEMORY[0x1E696ABC0]);
                v197 = *MEMORY[0x1E698F240];
                v367 = *MEMORY[0x1E696A578];
                v198 = objc_alloc(MEMORY[0x1E696AEC0]);
                v254 = objc_opt_class();
                v199 = v198;
                v64 = v310;
                v282 = [v199 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v254, @"isGroupThread"];
                v368 = v282;
                v200 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v368 forKeys:&v367 count:1];
                v284 = 0;
                v20 = 0;
                *a4 = [v196 initWithDomain:v197 code:2 userInfo:v200];
                v201 = v200;
                v18 = v328;
                v23 = v327;
                v144 = v289;
                goto LABEL_314;
              }

              v284 = 0;
              v20 = 0;
              v18 = v328;
              v23 = v327;
              v144 = v289;
              v195 = v283;
LABEL_308:
              v141 = v301;
LABEL_349:

              goto LABEL_350;
            }

            if (a4)
            {
              v190 = objc_alloc(MEMORY[0x1E696ABC0]);
              v191 = *MEMORY[0x1E698F240];
              v369 = *MEMORY[0x1E696A578];
              v192 = objc_alloc(MEMORY[0x1E696AEC0]);
              v253 = objc_opt_class();
              v193 = v192;
              v64 = v310;
              v284 = [v193 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v253, @"isFromMe"];
              v370 = v284;
              v194 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v370 forKeys:&v369 count:1];
              v286 = 0;
              v20 = 0;
              *a4 = [v190 initWithDomain:v191 code:2 userInfo:v194];
              v195 = v194;
              v18 = v328;
              v23 = v327;
              v144 = v289;
              goto LABEL_308;
            }

            v286 = 0;
            v20 = 0;
LABEL_302:
            v18 = v328;
            v23 = v327;
            v144 = v289;
            v141 = v301;
LABEL_350:

            goto LABEL_351;
          }

          if (a4)
          {
            v186 = objc_alloc(MEMORY[0x1E696ABC0]);
            v187 = *MEMORY[0x1E698F240];
            v371 = *MEMORY[0x1E696A578];
            v188 = objc_alloc(MEMORY[0x1E696AEC0]);
            v252 = objc_opt_class();
            v189 = v188;
            v64 = v310;
            v286 = [v189 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v252, @"isTwoFactorCode"];
            v372 = v286;
            v285 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v372 forKeys:&v371 count:1];
            v287 = 0;
            v20 = 0;
            *a4 = [v186 initWithDomain:v187 code:2 userInfo:?];
            goto LABEL_302;
          }

          v287 = 0;
          v20 = 0;
LABEL_287:
          v18 = v328;
          v23 = v327;
          v144 = v289;
          v141 = v301;
LABEL_351:

          goto LABEL_352;
        }

        if (a4)
        {
          v182 = objc_alloc(MEMORY[0x1E696ABC0]);
          v183 = *MEMORY[0x1E698F240];
          v373 = *MEMORY[0x1E696A578];
          v184 = objc_alloc(MEMORY[0x1E696AEC0]);
          v251 = objc_opt_class();
          v185 = v184;
          v64 = v310;
          v287 = [v185 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v251, @"isNew"];
          v374 = v287;
          v288 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v374 forKeys:&v373 count:1];
          v290 = 0;
          v20 = 0;
          *a4 = [v182 initWithDomain:v183 code:2 userInfo:?];
          goto LABEL_287;
        }

        v290 = 0;
        v20 = 0;
        v18 = v328;
        v23 = v327;
        v144 = v289;
LABEL_281:
        v141 = v301;
LABEL_352:

        goto LABEL_353;
      }

      if (a4)
      {
        v178 = objc_alloc(MEMORY[0x1E696ABC0]);
        v293 = *MEMORY[0x1E698F240];
        v375 = *MEMORY[0x1E696A578];
        v179 = objc_alloc(MEMORY[0x1E696AEC0]);
        v250 = objc_opt_class();
        v180 = v179;
        v64 = v310;
        v290 = [v180 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v250, @"personaId"];
        v376 = v290;
        v291 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v376 forKeys:&v375 count:1];
        v181 = [v178 initWithDomain:v293 code:2 userInfo:?];
        v292 = 0;
        v20 = 0;
        *a4 = v181;
        v18 = v328;
        v23 = v327;
        goto LABEL_281;
      }

      v292 = 0;
      v20 = 0;
      v18 = v328;
      v23 = v327;
      v141 = v301;
LABEL_353:

      goto LABEL_354;
    }

    if (a4)
    {
      v295 = objc_alloc(MEMORY[0x1E696ABC0]);
      v174 = *MEMORY[0x1E698F240];
      v377 = *MEMORY[0x1E696A578];
      v175 = objc_alloc(MEMORY[0x1E696AEC0]);
      v249 = objc_opt_class();
      v176 = v175;
      v64 = v310;
      v292 = [v176 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v249, @"contentProtection"];
      v378 = v292;
      v144 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v378 forKeys:&v377 count:1];
      v177 = [v295 initWithDomain:v174 code:2 userInfo:v144];
      v294 = 0;
      v20 = 0;
      *a4 = v177;
      v18 = v328;
      v23 = v327;
      goto LABEL_353;
    }

    v294 = 0;
    v20 = 0;
    v18 = v328;
    v23 = v327;
LABEL_354:
    v123 = v141;

    goto LABEL_355;
  }

  v122 = v137;
  v18 = v328;
  v23 = v327;
  if (a4)
  {
    v139 = v139;
    *a4 = v139;
  }

  v20 = 0;
  v123 = v122;
LABEL_356:

  v112 = v123;
  v41 = v305;
LABEL_357:

LABEL_359:
LABEL_360:

LABEL_361:
  v103 = v303;
LABEL_362:

LABEL_363:
LABEL_364:
  v72 = v306;

LABEL_365:
LABEL_366:

  v48 = v324;
  self = v311;
LABEL_367:

LABEL_368:
LABEL_369:

LABEL_370:
LABEL_371:

LABEL_372:
LABEL_373:

LABEL_374:
LABEL_375:

LABEL_376:
  v244 = *MEMORY[0x1E69E9840];
  return v20;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMProactiveHarvestingMessages *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_uniqueID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_domainID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasRaw_absoluteTimestamp)
  {
    raw_absoluteTimestamp = self->_raw_absoluteTimestamp;
    PBDataWriterWriteDoubleField();
  }

  if (self->_conversationId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_author)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_suggestedNickname)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_suggestedPhotoPath)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_recipients)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_attachmentURL)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_content)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_fromHandle)
  {
    v38 = 0;
    PBDataWriterPlaceMark();
    [(BMProactiveHarvestingNamedHandle *)self->_fromHandle writeTo:v4];
    PBDataWriterRecallMark();
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v6 = self->_toHandles;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v35;
    do
    {
      v10 = 0;
      do
      {
        if (*v35 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v34 + 1) + 8 * v10);
        v38 = 0;
        PBDataWriterPlaceMark();
        [v11 writeTo:v4];
        PBDataWriterRecallMark();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v8);
  }

  if (self->_accountIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_accountType)
  {
    PBDataWriterWriteStringField();
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v12 = self->_accountHandles;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v31;
    do
    {
      v16 = 0;
      do
      {
        if (*v31 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v30 + 1) + 8 * v16);
        PBDataWriterWriteStringField();
        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSArray *)v12 countByEnumeratingWithState:&v30 objects:v39 count:16];
    }

    while (v14);
  }

  if (self->_attachment)
  {
    v38 = 0;
    PBDataWriterPlaceMark();
    [(BMProactiveHarvestingContentAttachment *)self->_attachment writeTo:v4, v30];
    PBDataWriterRecallMark();
  }

  if (self->_url)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_contentProtection)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_personaId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasIsNew)
  {
    isNew = self->_isNew;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsTwoFactorCode)
  {
    isTwoFactorCode = self->_isTwoFactorCode;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsFromMe)
  {
    isFromMe = self->_isFromMe;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsGroupThread)
  {
    isGroupThread = self->_isGroupThread;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsJunk)
  {
    isJunk = self->_isJunk;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsRead)
  {
    isRead = self->_isRead;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsPinned)
  {
    isPinned = self->_isPinned;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsBusinessChat)
  {
    isBusinessChat = self->_isBusinessChat;
    PBDataWriterWriteBOOLField();
  }

  if (self->_tapbackAssociatedMessageID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasTapbackType)
  {
    tapbackType = self->_tapbackType;
    PBDataWriterWriteInt32Field();
  }

  if (self->_messageType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_messagesService)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasMessageEffect)
  {
    messageEffect = self->_messageEffect;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasIsKnownSender)
  {
    isKnownSender = self->_isKnownSender;
    PBDataWriterWriteBOOLField();
  }

  if (self->_conversationUUID)
  {
    PBDataWriterWriteStringField();
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v107.receiver = self;
  v107.super_class = BMProactiveHarvestingMessages;
  v5 = [(BMEventBase *)&v107 init];
  if (!v5)
  {
    goto LABEL_186;
  }

  v6 = objc_opt_new();
  v7 = objc_opt_new();
  while (1)
  {
    v8 = [v4 position];
    if (v8 >= [v4 length] || (objc_msgSend(v4, "hasError") & 1) != 0)
    {
      break;
    }

    v9 = 0;
    v10 = 0;
    v11 = 0;
    while (1)
    {
      LOBYTE(v108) = 0;
      v12 = [v4 position] + 1;
      if (v12 >= [v4 position] && (v13 = objc_msgSend(v4, "position") + 1, v13 <= objc_msgSend(v4, "length")))
      {
        v14 = [v4 data];
        [v14 getBytes:&v108 range:{objc_msgSend(v4, "position"), 1}];

        [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
      }

      else
      {
        [v4 _setError];
      }

      v11 |= (LOBYTE(v108) & 0x7F) << v9;
      if ((LOBYTE(v108) & 0x80) == 0)
      {
        break;
      }

      v9 += 7;
      v15 = v10++ >= 9;
      if (v15)
      {
        v16 = 0;
        goto LABEL_17;
      }
    }

    v16 = [v4 hasError] ? 0 : v11;
LABEL_17:
    if (([v4 hasError] & 1) != 0 || (v16 & 7) == 4)
    {
      break;
    }

    switch((v16 >> 3))
    {
      case 1u:
        v17 = PBReaderReadString();
        v18 = 64;
        goto LABEL_143;
      case 2u:
        v17 = PBReaderReadString();
        v18 = 72;
        goto LABEL_143;
      case 3u:
        v5->_hasRaw_absoluteTimestamp = 1;
        v108 = 0.0;
        v36 = [v4 position] + 8;
        if (v36 >= [v4 position] && (v37 = objc_msgSend(v4, "position") + 8, v37 <= objc_msgSend(v4, "length")))
        {
          v99 = [v4 data];
          [v99 getBytes:&v108 range:{objc_msgSend(v4, "position"), 8}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
        }

        else
        {
          [v4 _setError];
        }

        v5->_raw_absoluteTimestamp = v108;
        continue;
      case 4u:
        v17 = PBReaderReadString();
        v18 = 80;
        goto LABEL_143;
      case 5u:
        v17 = PBReaderReadString();
        v18 = 88;
        goto LABEL_143;
      case 6u:
        v17 = PBReaderReadString();
        v18 = 96;
        goto LABEL_143;
      case 7u:
        v17 = PBReaderReadString();
        v18 = 104;
        goto LABEL_143;
      case 8u:
        v17 = PBReaderReadString();
        v18 = 112;
        goto LABEL_143;
      case 9u:
        v17 = PBReaderReadString();
        v18 = 120;
        goto LABEL_143;
      case 0xAu:
        v17 = PBReaderReadString();
        v18 = 128;
        goto LABEL_143;
      case 0xBu:
        v108 = 0.0;
        v109 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_188;
        }

        v38 = [[BMProactiveHarvestingNamedHandle alloc] initByReadFrom:v4];
        if (!v38)
        {
          goto LABEL_188;
        }

        v39 = 136;
        goto LABEL_94;
      case 0xCu:
        v108 = 0.0;
        v109 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_188;
        }

        v21 = [[BMProactiveHarvestingNamedHandle alloc] initByReadFrom:v4];
        if (!v21)
        {
          goto LABEL_188;
        }

        v22 = v21;
        [v6 addObject:v21];
        PBReaderRecallMark();

        continue;
      case 0xDu:
        v17 = PBReaderReadString();
        v18 = 152;
        goto LABEL_143;
      case 0xEu:
        v17 = PBReaderReadString();
        v18 = 160;
        goto LABEL_143;
      case 0xFu:
        v19 = PBReaderReadString();
        if (!v19)
        {
          goto LABEL_188;
        }

        v20 = v19;
        [v7 addObject:v19];

        continue;
      case 0x10u:
        v108 = 0.0;
        v109 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_188;
        }

        v38 = [[BMProactiveHarvestingContentAttachment alloc] initByReadFrom:v4];
        if (!v38)
        {
          goto LABEL_188;
        }

        v39 = 176;
LABEL_94:
        v59 = *(&v5->super.super.isa + v39);
        *(&v5->super.super.isa + v39) = v38;

        PBReaderRecallMark();
        continue;
      case 0x11u:
        v17 = PBReaderReadString();
        v18 = 184;
        goto LABEL_143;
      case 0x12u:
        v17 = PBReaderReadString();
        v18 = 192;
        goto LABEL_143;
      case 0x13u:
        v17 = PBReaderReadString();
        v18 = 200;
        goto LABEL_143;
      case 0x14u:
        v72 = 0;
        v73 = 0;
        v74 = 0;
        v5->_hasIsNew = 1;
        while (1)
        {
          LOBYTE(v108) = 0;
          v75 = [v4 position] + 1;
          if (v75 >= [v4 position] && (v76 = objc_msgSend(v4, "position") + 1, v76 <= objc_msgSend(v4, "length")))
          {
            v77 = [v4 data];
            [v77 getBytes:&v108 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v74 |= (LOBYTE(v108) & 0x7F) << v72;
          if ((LOBYTE(v108) & 0x80) == 0)
          {
            break;
          }

          v72 += 7;
          v15 = v73++ >= 9;
          if (v15)
          {
            LOBYTE(v29) = 0;
            goto LABEL_172;
          }
        }

        v29 = (v74 != 0) & ~[v4 hasError];
LABEL_172:
        v98 = 32;
        goto LABEL_181;
      case 0x15u:
        v47 = 0;
        v48 = 0;
        v49 = 0;
        v5->_hasIsTwoFactorCode = 1;
        while (1)
        {
          LOBYTE(v108) = 0;
          v50 = [v4 position] + 1;
          if (v50 >= [v4 position] && (v51 = objc_msgSend(v4, "position") + 1, v51 <= objc_msgSend(v4, "length")))
          {
            v52 = [v4 data];
            [v52 getBytes:&v108 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v49 |= (LOBYTE(v108) & 0x7F) << v47;
          if ((LOBYTE(v108) & 0x80) == 0)
          {
            break;
          }

          v47 += 7;
          v15 = v48++ >= 9;
          if (v15)
          {
            LOBYTE(v29) = 0;
            goto LABEL_164;
          }
        }

        v29 = (v49 != 0) & ~[v4 hasError];
LABEL_164:
        v98 = 34;
        goto LABEL_181;
      case 0x16u:
        v53 = 0;
        v54 = 0;
        v55 = 0;
        v5->_hasIsFromMe = 1;
        while (1)
        {
          LOBYTE(v108) = 0;
          v56 = [v4 position] + 1;
          if (v56 >= [v4 position] && (v57 = objc_msgSend(v4, "position") + 1, v57 <= objc_msgSend(v4, "length")))
          {
            v58 = [v4 data];
            [v58 getBytes:&v108 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v55 |= (LOBYTE(v108) & 0x7F) << v53;
          if ((LOBYTE(v108) & 0x80) == 0)
          {
            break;
          }

          v53 += 7;
          v15 = v54++ >= 9;
          if (v15)
          {
            LOBYTE(v29) = 0;
            goto LABEL_166;
          }
        }

        v29 = (v55 != 0) & ~[v4 hasError];
LABEL_166:
        v98 = 36;
        goto LABEL_181;
      case 0x17u:
        v66 = 0;
        v67 = 0;
        v68 = 0;
        v5->_hasIsGroupThread = 1;
        while (1)
        {
          LOBYTE(v108) = 0;
          v69 = [v4 position] + 1;
          if (v69 >= [v4 position] && (v70 = objc_msgSend(v4, "position") + 1, v70 <= objc_msgSend(v4, "length")))
          {
            v71 = [v4 data];
            [v71 getBytes:&v108 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v68 |= (LOBYTE(v108) & 0x7F) << v66;
          if ((LOBYTE(v108) & 0x80) == 0)
          {
            break;
          }

          v66 += 7;
          v15 = v67++ >= 9;
          if (v15)
          {
            LOBYTE(v29) = 0;
            goto LABEL_170;
          }
        }

        v29 = (v68 != 0) & ~[v4 hasError];
LABEL_170:
        v98 = 38;
        goto LABEL_181;
      case 0x18u:
        v78 = 0;
        v79 = 0;
        v80 = 0;
        v5->_hasIsJunk = 1;
        while (1)
        {
          LOBYTE(v108) = 0;
          v81 = [v4 position] + 1;
          if (v81 >= [v4 position] && (v82 = objc_msgSend(v4, "position") + 1, v82 <= objc_msgSend(v4, "length")))
          {
            v83 = [v4 data];
            [v83 getBytes:&v108 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v80 |= (LOBYTE(v108) & 0x7F) << v78;
          if ((LOBYTE(v108) & 0x80) == 0)
          {
            break;
          }

          v78 += 7;
          v15 = v79++ >= 9;
          if (v15)
          {
            LOBYTE(v29) = 0;
            goto LABEL_174;
          }
        }

        v29 = (v80 != 0) & ~[v4 hasError];
LABEL_174:
        v98 = 40;
        goto LABEL_181;
      case 0x19u:
        v30 = 0;
        v31 = 0;
        v32 = 0;
        v5->_hasIsRead = 1;
        while (1)
        {
          LOBYTE(v108) = 0;
          v33 = [v4 position] + 1;
          if (v33 >= [v4 position] && (v34 = objc_msgSend(v4, "position") + 1, v34 <= objc_msgSend(v4, "length")))
          {
            v35 = [v4 data];
            [v35 getBytes:&v108 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v32 |= (LOBYTE(v108) & 0x7F) << v30;
          if ((LOBYTE(v108) & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v15 = v31++ >= 9;
          if (v15)
          {
            LOBYTE(v29) = 0;
            goto LABEL_158;
          }
        }

        v29 = (v32 != 0) & ~[v4 hasError];
LABEL_158:
        v98 = 42;
        goto LABEL_181;
      case 0x1Au:
        v23 = 0;
        v24 = 0;
        v25 = 0;
        v5->_hasIsPinned = 1;
        while (1)
        {
          LOBYTE(v108) = 0;
          v26 = [v4 position] + 1;
          if (v26 >= [v4 position] && (v27 = objc_msgSend(v4, "position") + 1, v27 <= objc_msgSend(v4, "length")))
          {
            v28 = [v4 data];
            [v28 getBytes:&v108 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v25 |= (LOBYTE(v108) & 0x7F) << v23;
          if ((LOBYTE(v108) & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v15 = v24++ >= 9;
          if (v15)
          {
            LOBYTE(v29) = 0;
            goto LABEL_156;
          }
        }

        v29 = (v25 != 0) & ~[v4 hasError];
LABEL_156:
        v98 = 44;
        goto LABEL_181;
      case 0x1Bu:
        v92 = 0;
        v93 = 0;
        v94 = 0;
        v5->_hasIsBusinessChat = 1;
        while (1)
        {
          LOBYTE(v108) = 0;
          v95 = [v4 position] + 1;
          if (v95 >= [v4 position] && (v96 = objc_msgSend(v4, "position") + 1, v96 <= objc_msgSend(v4, "length")))
          {
            v97 = [v4 data];
            [v97 getBytes:&v108 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v94 |= (LOBYTE(v108) & 0x7F) << v92;
          if ((LOBYTE(v108) & 0x80) == 0)
          {
            break;
          }

          v92 += 7;
          v15 = v93++ >= 9;
          if (v15)
          {
            LOBYTE(v29) = 0;
            goto LABEL_180;
          }
        }

        v29 = (v94 != 0) & ~[v4 hasError];
LABEL_180:
        v98 = 46;
        goto LABEL_181;
      case 0x1Cu:
        v17 = PBReaderReadString();
        v18 = 208;
        goto LABEL_143;
      case 0x1Du:
        v84 = 0;
        v85 = 0;
        v86 = 0;
        v5->_hasTapbackType = 1;
        while (1)
        {
          LOBYTE(v108) = 0;
          v87 = [v4 position] + 1;
          if (v87 >= [v4 position] && (v88 = objc_msgSend(v4, "position") + 1, v88 <= objc_msgSend(v4, "length")))
          {
            v89 = [v4 data];
            [v89 getBytes:&v108 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v86 |= (LOBYTE(v108) & 0x7F) << v84;
          if ((LOBYTE(v108) & 0x80) == 0)
          {
            break;
          }

          v84 += 7;
          v15 = v85++ >= 9;
          if (v15)
          {
            v90 = 0;
            goto LABEL_178;
          }
        }

        if ([v4 hasError])
        {
          v90 = 0;
        }

        else
        {
          v90 = v86;
        }

LABEL_178:
        v5->_tapbackType = v90;
        continue;
      case 0x1Eu:
        v17 = PBReaderReadString();
        v18 = 216;
        goto LABEL_143;
      case 0x1Fu:
        v17 = PBReaderReadString();
        v18 = 224;
        goto LABEL_143;
      case 0x20u:
        v40 = 0;
        v41 = 0;
        v42 = 0;
        v5->_hasMessageEffect = 1;
        while (1)
        {
          LOBYTE(v108) = 0;
          v43 = [v4 position] + 1;
          if (v43 >= [v4 position] && (v44 = objc_msgSend(v4, "position") + 1, v44 <= objc_msgSend(v4, "length")))
          {
            v45 = [v4 data];
            [v45 getBytes:&v108 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v42 |= (LOBYTE(v108) & 0x7F) << v40;
          if ((LOBYTE(v108) & 0x80) == 0)
          {
            break;
          }

          v40 += 7;
          v15 = v41++ >= 9;
          if (v15)
          {
            v46 = 0;
            goto LABEL_162;
          }
        }

        if ([v4 hasError])
        {
          v46 = 0;
        }

        else
        {
          v46 = v42;
        }

LABEL_162:
        v5->_messageEffect = v46;
        continue;
      case 0x21u:
        v60 = 0;
        v61 = 0;
        v62 = 0;
        v5->_hasIsKnownSender = 1;
        break;
      case 0x22u:
        v17 = PBReaderReadString();
        v18 = 232;
LABEL_143:
        v91 = *(&v5->super.super.isa + v18);
        *(&v5->super.super.isa + v18) = v17;

        continue;
      default:
        if (PBReaderSkipValueWithTag())
        {
          continue;
        }

LABEL_188:

        goto LABEL_185;
    }

    while (1)
    {
      LOBYTE(v108) = 0;
      v63 = [v4 position] + 1;
      if (v63 >= [v4 position] && (v64 = objc_msgSend(v4, "position") + 1, v64 <= objc_msgSend(v4, "length")))
      {
        v65 = [v4 data];
        [v65 getBytes:&v108 range:{objc_msgSend(v4, "position"), 1}];

        [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
      }

      else
      {
        [v4 _setError];
      }

      v62 |= (LOBYTE(v108) & 0x7F) << v60;
      if ((LOBYTE(v108) & 0x80) == 0)
      {
        break;
      }

      v60 += 7;
      v15 = v61++ >= 9;
      if (v15)
      {
        LOBYTE(v29) = 0;
        goto LABEL_168;
      }
    }

    v29 = (v62 != 0) & ~[v4 hasError];
LABEL_168:
    v98 = 50;
LABEL_181:
    *(&v5->super.super.isa + v98) = v29;
  }

  v100 = [v6 copy];
  toHandles = v5->_toHandles;
  v5->_toHandles = v100;

  v102 = [v7 copy];
  accountHandles = v5->_accountHandles;
  v5->_accountHandles = v102;

  v104 = [v4 hasError];
  if (v104)
  {
LABEL_185:
    v105 = 0;
  }

  else
  {
LABEL_186:
    v105 = v5;
  }

  return v105;
}

- (NSString)description
{
  v18 = objc_alloc(MEMORY[0x1E696AEC0]);
  v37 = [(BMProactiveHarvestingMessages *)self uniqueID];
  v39 = [(BMProactiveHarvestingMessages *)self domainID];
  v35 = [(BMProactiveHarvestingMessages *)self absoluteTimestamp];
  v38 = [(BMProactiveHarvestingMessages *)self conversationId];
  v36 = [(BMProactiveHarvestingMessages *)self author];
  v33 = [(BMProactiveHarvestingMessages *)self suggestedNickname];
  v34 = [(BMProactiveHarvestingMessages *)self suggestedPhotoPath];
  v31 = [(BMProactiveHarvestingMessages *)self recipients];
  v32 = [(BMProactiveHarvestingMessages *)self attachmentURL];
  v28 = [(BMProactiveHarvestingMessages *)self content];
  v30 = [(BMProactiveHarvestingMessages *)self fromHandle];
  v26 = [(BMProactiveHarvestingMessages *)self toHandles];
  v29 = [(BMProactiveHarvestingMessages *)self accountIdentifier];
  v17 = [(BMProactiveHarvestingMessages *)self accountType];
  v27 = [(BMProactiveHarvestingMessages *)self accountHandles];
  v16 = [(BMProactiveHarvestingMessages *)self attachment];
  v25 = [(BMProactiveHarvestingMessages *)self url];
  v24 = [(BMProactiveHarvestingMessages *)self contentProtection];
  v15 = [(BMProactiveHarvestingMessages *)self personaId];
  v23 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProactiveHarvestingMessages isNew](self, "isNew")}];
  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProactiveHarvestingMessages isTwoFactorCode](self, "isTwoFactorCode")}];
  v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProactiveHarvestingMessages isFromMe](self, "isFromMe")}];
  v21 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProactiveHarvestingMessages isGroupThread](self, "isGroupThread")}];
  v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProactiveHarvestingMessages isJunk](self, "isJunk")}];
  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProactiveHarvestingMessages isRead](self, "isRead")}];
  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProactiveHarvestingMessages isPinned](self, "isPinned")}];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProactiveHarvestingMessages isBusinessChat](self, "isBusinessChat")}];
  v10 = [(BMProactiveHarvestingMessages *)self tapbackAssociatedMessageID];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMProactiveHarvestingMessages tapbackType](self, "tapbackType")}];
  v4 = [(BMProactiveHarvestingMessages *)self messageType];
  v5 = [(BMProactiveHarvestingMessages *)self messagesService];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMProactiveHarvestingMessages messageEffect](self, "messageEffect")}];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProactiveHarvestingMessages isKnownSender](self, "isKnownSender")}];
  v8 = [(BMProactiveHarvestingMessages *)self conversationUUID];
  v19 = [v18 initWithFormat:@"BMProactiveHarvestingMessages with uniqueID: %@, domainID: %@, absoluteTimestamp: %@, conversationId: %@, author: %@, suggestedNickname: %@, suggestedPhotoPath: %@, recipients: %@, attachmentURL: %@, content: %@, fromHandle: %@, toHandles: %@, accountIdentifier: %@, accountType: %@, accountHandles: %@, attachment: %@, url: %@, contentProtection: %@, personaId: %@, isNew: %@, isTwoFactorCode: %@, isFromMe: %@, isGroupThread: %@, isJunk: %@, isRead: %@, isPinned: %@, isBusinessChat: %@, tapbackAssociatedMessageID: %@, tapbackType: %@, messageType: %@, messagesService: %@, messageEffect: %@, isKnownSender: %@, conversationUUID: %@", v37, v39, v35, v38, v36, v33, v34, v31, v32, v28, v30, v26, v29, v17, v27, v16, v25, v24, v15, v23, v14, v22, v21, v20, v13, v12, v11, v10, v3, v4, v5, v6, v7, v8];

  return v19;
}

- (BMProactiveHarvestingMessages)initWithUniqueID:(id)a3 domainID:(id)a4 absoluteTimestamp:(id)a5 conversationId:(id)a6 author:(id)a7 suggestedNickname:(id)a8 suggestedPhotoPath:(id)a9 recipients:(id)a10 attachmentURL:(id)a11 content:(id)a12 fromHandle:(id)a13 toHandles:(id)a14 accountIdentifier:(id)a15 accountType:(id)a16 accountHandles:(id)a17 attachment:(id)a18 url:(id)a19 contentProtection:(id)a20 personaId:(id)a21 isNew:(id)a22 isTwoFactorCode:(id)a23 isFromMe:(id)a24 isGroupThread:(id)a25 isJunk:(id)a26 isRead:(id)a27 isPinned:(id)a28 isBusinessChat:(id)a29 tapbackAssociatedMessageID:(id)a30 tapbackType:(id)a31 messageType:(id)a32 messagesService:(id)a33 messageEffect:(id)a34 isKnownSender:(id)a35 conversationUUID:(id)a36
{
  v79 = a3;
  v56 = a4;
  v78 = a4;
  v41 = a5;
  v77 = a6;
  v76 = a7;
  v57 = a8;
  v75 = a8;
  v74 = a9;
  v73 = a10;
  v72 = a11;
  v71 = a12;
  v70 = a13;
  v69 = a14;
  v68 = a15;
  v67 = a16;
  v66 = a17;
  v65 = a18;
  v64 = a19;
  v63 = a20;
  v62 = a21;
  v82 = a22;
  v42 = a23;
  v80 = a24;
  v43 = a25;
  v86 = a26;
  v85 = a27;
  v84 = a28;
  v83 = a29;
  v44 = a30;
  v81 = a31;
  v61 = a32;
  v60 = a33;
  v45 = a34;
  v46 = a35;
  v59 = a36;
  v87.receiver = self;
  v87.super_class = BMProactiveHarvestingMessages;
  v47 = [(BMEventBase *)&v87 init];
  if (v47)
  {
    v47->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v47->_uniqueID, a3);
    objc_storeStrong(&v47->_domainID, v56);
    v54 = v41;
    if (v41)
    {
      v48 = v41;
      v49 = v44;
      v47->_hasRaw_absoluteTimestamp = 1;
      [v48 timeIntervalSinceReferenceDate];
    }

    else
    {
      v49 = v44;
      v47->_hasRaw_absoluteTimestamp = 0;
      v50 = -1.0;
    }

    v47->_raw_absoluteTimestamp = v50;
    objc_storeStrong(&v47->_conversationId, a6);
    objc_storeStrong(&v47->_author, a7);
    objc_storeStrong(&v47->_suggestedNickname, v57);
    objc_storeStrong(&v47->_suggestedPhotoPath, a9);
    objc_storeStrong(&v47->_recipients, a10);
    objc_storeStrong(&v47->_attachmentURL, a11);
    objc_storeStrong(&v47->_content, a12);
    objc_storeStrong(&v47->_fromHandle, a13);
    objc_storeStrong(&v47->_toHandles, a14);
    objc_storeStrong(&v47->_accountIdentifier, a15);
    objc_storeStrong(&v47->_accountType, a16);
    objc_storeStrong(&v47->_accountHandles, a17);
    objc_storeStrong(&v47->_attachment, a18);
    objc_storeStrong(&v47->_url, a19);
    objc_storeStrong(&v47->_contentProtection, a20);
    objc_storeStrong(&v47->_personaId, a21);
    if (v82)
    {
      v47->_hasIsNew = 1;
      v47->_isNew = [v82 BOOLValue];
    }

    else
    {
      v47->_hasIsNew = 0;
      v47->_isNew = 0;
    }

    v44 = v49;
    if (v42)
    {
      v47->_hasIsTwoFactorCode = 1;
      v47->_isTwoFactorCode = [v42 BOOLValue];
    }

    else
    {
      v47->_hasIsTwoFactorCode = 0;
      v47->_isTwoFactorCode = 0;
    }

    if (v80)
    {
      v47->_hasIsFromMe = 1;
      v47->_isFromMe = [v80 BOOLValue];
    }

    else
    {
      v47->_hasIsFromMe = 0;
      v47->_isFromMe = 0;
    }

    if (v43)
    {
      v47->_hasIsGroupThread = 1;
      v47->_isGroupThread = [v43 BOOLValue];
    }

    else
    {
      v47->_hasIsGroupThread = 0;
      v47->_isGroupThread = 0;
    }

    if (v86)
    {
      v47->_hasIsJunk = 1;
      v47->_isJunk = [v86 BOOLValue];
    }

    else
    {
      v47->_hasIsJunk = 0;
      v47->_isJunk = 0;
    }

    if (v85)
    {
      v47->_hasIsRead = 1;
      v47->_isRead = [v85 BOOLValue];
    }

    else
    {
      v47->_hasIsRead = 0;
      v47->_isRead = 0;
    }

    if (v84)
    {
      v47->_hasIsPinned = 1;
      v47->_isPinned = [v84 BOOLValue];
    }

    else
    {
      v47->_hasIsPinned = 0;
      v47->_isPinned = 0;
    }

    if (v83)
    {
      v47->_hasIsBusinessChat = 1;
      v47->_isBusinessChat = [v83 BOOLValue];
    }

    else
    {
      v47->_hasIsBusinessChat = 0;
      v47->_isBusinessChat = 0;
    }

    objc_storeStrong(&v47->_tapbackAssociatedMessageID, a30);
    if (v81)
    {
      v47->_hasTapbackType = 1;
      v51 = [v81 intValue];
    }

    else
    {
      v47->_hasTapbackType = 0;
      v51 = -1;
    }

    v47->_tapbackType = v51;
    objc_storeStrong(&v47->_messageType, a32);
    objc_storeStrong(&v47->_messagesService, a33);
    if (v45)
    {
      v47->_hasMessageEffect = 1;
      v52 = [v45 intValue];
    }

    else
    {
      v47->_hasMessageEffect = 0;
      v52 = -1;
    }

    v47->_messageEffect = v52;
    if (v46)
    {
      v47->_hasIsKnownSender = 1;
      v47->_isKnownSender = [v46 BOOLValue];
    }

    else
    {
      v47->_hasIsKnownSender = 0;
      v47->_isKnownSender = 0;
    }

    objc_storeStrong(&v47->_conversationUUID, a36);
    v41 = v54;
  }

  return v47;
}

+ (id)protoFields
{
  v39[34] = *MEMORY[0x1E69E9840];
  v38 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"uniqueID" number:1 type:13 subMessageClass:0];
  v39[0] = v38;
  v37 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"domainID" number:2 type:13 subMessageClass:0];
  v39[1] = v37;
  v36 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"absoluteTimestamp" number:3 type:0 subMessageClass:0];
  v39[2] = v36;
  v35 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"conversationId" number:4 type:13 subMessageClass:0];
  v39[3] = v35;
  v34 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"author" number:5 type:13 subMessageClass:0];
  v39[4] = v34;
  v33 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"suggestedNickname" number:6 type:13 subMessageClass:0];
  v39[5] = v33;
  v32 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"suggestedPhotoPath" number:7 type:13 subMessageClass:0];
  v39[6] = v32;
  v31 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"recipients" number:8 type:13 subMessageClass:0];
  v39[7] = v31;
  v30 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"attachmentURL" number:9 type:13 subMessageClass:0];
  v39[8] = v30;
  v29 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"content" number:10 type:13 subMessageClass:0];
  v39[9] = v29;
  v28 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"fromHandle" number:11 type:14 subMessageClass:objc_opt_class()];
  v39[10] = v28;
  v27 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"toHandles" number:12 type:14 subMessageClass:objc_opt_class()];
  v39[11] = v27;
  v26 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"accountIdentifier" number:13 type:13 subMessageClass:0];
  v39[12] = v26;
  v25 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"accountType" number:14 type:13 subMessageClass:0];
  v39[13] = v25;
  v24 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"accountHandles" number:15 type:13 subMessageClass:0];
  v39[14] = v24;
  v23 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"attachment" number:16 type:14 subMessageClass:objc_opt_class()];
  v39[15] = v23;
  v22 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"url" number:17 type:13 subMessageClass:0];
  v39[16] = v22;
  v21 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contentProtection" number:18 type:13 subMessageClass:0];
  v39[17] = v21;
  v20 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"personaId" number:19 type:13 subMessageClass:0];
  v39[18] = v20;
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isNew" number:20 type:12 subMessageClass:0];
  v39[19] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isTwoFactorCode" number:21 type:12 subMessageClass:0];
  v39[20] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isFromMe" number:22 type:12 subMessageClass:0];
  v39[21] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isGroupThread" number:23 type:12 subMessageClass:0];
  v39[22] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isJunk" number:24 type:12 subMessageClass:0];
  v39[23] = v15;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isRead" number:25 type:12 subMessageClass:0];
  v39[24] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isPinned" number:26 type:12 subMessageClass:0];
  v39[25] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isBusinessChat" number:27 type:12 subMessageClass:0];
  v39[26] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"tapbackAssociatedMessageID" number:28 type:13 subMessageClass:0];
  v39[27] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"tapbackType" number:29 type:2 subMessageClass:0];
  v39[28] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"messageType" number:30 type:13 subMessageClass:0];
  v39[29] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"messagesService" number:31 type:13 subMessageClass:0];
  v39[30] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"messageEffect" number:32 type:2 subMessageClass:0];
  v39[31] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isKnownSender" number:33 type:12 subMessageClass:0];
  v39[32] = v10;
  v11 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"conversationUUID" number:34 type:13 subMessageClass:0];
  v39[33] = v11;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:34];

  v12 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)columns
{
  v39[34] = *MEMORY[0x1E69E9840];
  v38 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"uniqueID" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v37 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"domainID" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v36 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"absoluteTimestamp" dataType:3 requestOnly:0 fieldNumber:3 protoDataType:0 convertedType:1];
  v35 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"conversationId" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v34 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"author" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v33 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"suggestedNickname" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v32 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"suggestedPhotoPath" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
  v31 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"recipients" dataType:2 requestOnly:0 fieldNumber:8 protoDataType:13 convertedType:0];
  v30 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"attachmentURL" dataType:2 requestOnly:0 fieldNumber:9 protoDataType:13 convertedType:0];
  v29 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"content" dataType:2 requestOnly:0 fieldNumber:10 protoDataType:13 convertedType:0];
  v28 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"fromHandle_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_19570];
  v27 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"toHandles_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_151];
  v26 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"accountIdentifier" dataType:2 requestOnly:0 fieldNumber:13 protoDataType:13 convertedType:0];
  v25 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"accountType" dataType:2 requestOnly:0 fieldNumber:14 protoDataType:13 convertedType:0];
  v24 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"accountHandles_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_153];
  v23 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"attachment_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_155];
  v22 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"url" dataType:2 requestOnly:0 fieldNumber:17 protoDataType:13 convertedType:0];
  v21 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"contentProtection" dataType:2 requestOnly:0 fieldNumber:18 protoDataType:13 convertedType:0];
  v20 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"personaId" dataType:2 requestOnly:0 fieldNumber:19 protoDataType:13 convertedType:0];
  v19 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isNew" dataType:0 requestOnly:0 fieldNumber:20 protoDataType:12 convertedType:0];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isTwoFactorCode" dataType:0 requestOnly:0 fieldNumber:21 protoDataType:12 convertedType:0];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isFromMe" dataType:0 requestOnly:0 fieldNumber:22 protoDataType:12 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isGroupThread" dataType:0 requestOnly:0 fieldNumber:23 protoDataType:12 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isJunk" dataType:0 requestOnly:0 fieldNumber:24 protoDataType:12 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isRead" dataType:0 requestOnly:0 fieldNumber:25 protoDataType:12 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isPinned" dataType:0 requestOnly:0 fieldNumber:26 protoDataType:12 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isBusinessChat" dataType:0 requestOnly:0 fieldNumber:27 protoDataType:12 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"tapbackAssociatedMessageID" dataType:2 requestOnly:0 fieldNumber:28 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"tapbackType" dataType:0 requestOnly:0 fieldNumber:29 protoDataType:2 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"messageType" dataType:2 requestOnly:0 fieldNumber:30 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"messagesService" dataType:2 requestOnly:0 fieldNumber:31 protoDataType:13 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"messageEffect" dataType:0 requestOnly:0 fieldNumber:32 protoDataType:2 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isKnownSender" dataType:0 requestOnly:0 fieldNumber:33 protoDataType:12 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"conversationUUID" dataType:2 requestOnly:0 fieldNumber:34 protoDataType:13 convertedType:0];
  v39[0] = v38;
  v39[1] = v37;
  v39[2] = v36;
  v39[3] = v35;
  v39[4] = v34;
  v39[5] = v33;
  v39[6] = v32;
  v39[7] = v31;
  v39[8] = v30;
  v39[9] = v29;
  v39[10] = v28;
  v39[11] = v27;
  v39[12] = v26;
  v39[13] = v25;
  v39[14] = v24;
  v39[15] = v23;
  v39[16] = v22;
  v39[17] = v21;
  v39[18] = v20;
  v39[19] = v19;
  v39[20] = v18;
  v39[21] = v17;
  v39[22] = v16;
  v39[23] = v15;
  v39[24] = v2;
  v39[25] = v3;
  v39[26] = v4;
  v39[27] = v14;
  v39[28] = v5;
  v39[29] = v6;
  v39[30] = v7;
  v39[31] = v8;
  v39[32] = v13;
  v39[33] = v9;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:34];

  v10 = *MEMORY[0x1E69E9840];

  return v12;
}

id __40__BMProactiveHarvestingMessages_columns__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 attachment];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __40__BMProactiveHarvestingMessages_columns__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _accountHandlesJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __40__BMProactiveHarvestingMessages_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _toHandlesJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __40__BMProactiveHarvestingMessages_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 fromHandle];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4 == 2)
  {
    v4 = MEMORY[0x1E69C65B8];
    v5 = a3;
    v6 = [[v4 alloc] initWithData:v5];

    v7 = [[BMProactiveHarvestingMessages alloc] initByReadFrom:v6];
    v8 = v7;
    if (v7)
    {
      v7[13] = 2;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end