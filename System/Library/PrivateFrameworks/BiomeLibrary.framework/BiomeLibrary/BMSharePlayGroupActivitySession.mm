@interface BMSharePlayGroupActivitySession
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSharePlayGroupActivitySession)initWithIsActive:(id)active sourceBundleID:(id)d activitySessionID:(id)iD activityID:(id)activityID messagesChatGUID:(id)uID experienceType:(id)type participantHandles:(id)handles memberHandles:(id)self0;
- (BMSharePlayGroupActivitySession)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_memberHandlesJSONArray;
- (id)_participantHandlesJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSharePlayGroupActivitySession

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (-[BMSharePlayGroupActivitySession hasIsActive](self, "hasIsActive") || [v5 hasIsActive])
    {
      if (![(BMSharePlayGroupActivitySession *)self hasIsActive])
      {
        goto LABEL_30;
      }

      if (![v5 hasIsActive])
      {
        goto LABEL_30;
      }

      isActive = [(BMSharePlayGroupActivitySession *)self isActive];
      if (isActive != [v5 isActive])
      {
        goto LABEL_30;
      }
    }

    sourceBundleID = [(BMSharePlayGroupActivitySession *)self sourceBundleID];
    sourceBundleID2 = [v5 sourceBundleID];
    v9 = sourceBundleID2;
    if (sourceBundleID == sourceBundleID2)
    {
    }

    else
    {
      sourceBundleID3 = [(BMSharePlayGroupActivitySession *)self sourceBundleID];
      sourceBundleID4 = [v5 sourceBundleID];
      v12 = [sourceBundleID3 isEqual:sourceBundleID4];

      if (!v12)
      {
        goto LABEL_30;
      }
    }

    activitySessionID = [(BMSharePlayGroupActivitySession *)self activitySessionID];
    activitySessionID2 = [v5 activitySessionID];
    v16 = activitySessionID2;
    if (activitySessionID == activitySessionID2)
    {
    }

    else
    {
      activitySessionID3 = [(BMSharePlayGroupActivitySession *)self activitySessionID];
      activitySessionID4 = [v5 activitySessionID];
      v19 = [activitySessionID3 isEqual:activitySessionID4];

      if (!v19)
      {
        goto LABEL_30;
      }
    }

    activityID = [(BMSharePlayGroupActivitySession *)self activityID];
    activityID2 = [v5 activityID];
    v22 = activityID2;
    if (activityID == activityID2)
    {
    }

    else
    {
      activityID3 = [(BMSharePlayGroupActivitySession *)self activityID];
      activityID4 = [v5 activityID];
      v25 = [activityID3 isEqual:activityID4];

      if (!v25)
      {
        goto LABEL_30;
      }
    }

    messagesChatGUID = [(BMSharePlayGroupActivitySession *)self messagesChatGUID];
    messagesChatGUID2 = [v5 messagesChatGUID];
    v28 = messagesChatGUID2;
    if (messagesChatGUID == messagesChatGUID2)
    {
    }

    else
    {
      messagesChatGUID3 = [(BMSharePlayGroupActivitySession *)self messagesChatGUID];
      messagesChatGUID4 = [v5 messagesChatGUID];
      v31 = [messagesChatGUID3 isEqual:messagesChatGUID4];

      if (!v31)
      {
        goto LABEL_30;
      }
    }

    experienceType = [(BMSharePlayGroupActivitySession *)self experienceType];
    experienceType2 = [v5 experienceType];
    v34 = experienceType2;
    if (experienceType == experienceType2)
    {
    }

    else
    {
      experienceType3 = [(BMSharePlayGroupActivitySession *)self experienceType];
      experienceType4 = [v5 experienceType];
      v37 = [experienceType3 isEqual:experienceType4];

      if (!v37)
      {
        goto LABEL_30;
      }
    }

    participantHandles = [(BMSharePlayGroupActivitySession *)self participantHandles];
    participantHandles2 = [v5 participantHandles];
    v40 = participantHandles2;
    if (participantHandles == participantHandles2)
    {
    }

    else
    {
      participantHandles3 = [(BMSharePlayGroupActivitySession *)self participantHandles];
      participantHandles4 = [v5 participantHandles];
      v43 = [participantHandles3 isEqual:participantHandles4];

      if (!v43)
      {
LABEL_30:
        v13 = 0;
LABEL_31:

        goto LABEL_32;
      }
    }

    memberHandles = [(BMSharePlayGroupActivitySession *)self memberHandles];
    memberHandles2 = [v5 memberHandles];
    if (memberHandles == memberHandles2)
    {
      v13 = 1;
    }

    else
    {
      memberHandles3 = [(BMSharePlayGroupActivitySession *)self memberHandles];
      memberHandles4 = [v5 memberHandles];
      v13 = [memberHandles3 isEqual:memberHandles4];
    }

    goto LABEL_31;
  }

  v13 = 0;
LABEL_32:

  return v13;
}

- (id)jsonDictionary
{
  v29[8] = *MEMORY[0x1E69E9840];
  if ([(BMSharePlayGroupActivitySession *)self hasIsActive])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSharePlayGroupActivitySession isActive](self, "isActive")}];
  }

  else
  {
    v3 = 0;
  }

  sourceBundleID = [(BMSharePlayGroupActivitySession *)self sourceBundleID];
  activitySessionID = [(BMSharePlayGroupActivitySession *)self activitySessionID];
  activityID = [(BMSharePlayGroupActivitySession *)self activityID];
  messagesChatGUID = [(BMSharePlayGroupActivitySession *)self messagesChatGUID];
  experienceType = [(BMSharePlayGroupActivitySession *)self experienceType];
  _participantHandlesJSONArray = [(BMSharePlayGroupActivitySession *)self _participantHandlesJSONArray];
  _memberHandlesJSONArray = [(BMSharePlayGroupActivitySession *)self _memberHandlesJSONArray];
  v28[0] = @"isActive";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v23 = null;
  v29[0] = null;
  v28[1] = @"sourceBundleID";
  null2 = sourceBundleID;
  if (!sourceBundleID)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = null2;
  v29[1] = null2;
  v28[2] = @"activitySessionID";
  null3 = activitySessionID;
  if (!activitySessionID)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = v3;
  v21 = null3;
  v29[2] = null3;
  v28[3] = @"activityID";
  null4 = activityID;
  if (!activityID)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = sourceBundleID;
  v29[3] = null4;
  v28[4] = @"messagesChatGUID";
  null5 = messagesChatGUID;
  if (!messagesChatGUID)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = activitySessionID;
  v29[4] = null5;
  v28[5] = @"experienceType";
  null6 = experienceType;
  if (!experienceType)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v29[5] = null6;
  v28[6] = @"participantHandles";
  null7 = _participantHandlesJSONArray;
  if (!_participantHandlesJSONArray)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v29[6] = null7;
  v28[7] = @"memberHandles";
  null8 = _memberHandlesJSONArray;
  if (!_memberHandlesJSONArray)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v29[7] = null8;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:8];
  if (_memberHandlesJSONArray)
  {
    if (_participantHandlesJSONArray)
    {
      goto LABEL_22;
    }

LABEL_34:

    if (experienceType)
    {
      goto LABEL_23;
    }

    goto LABEL_35;
  }

  if (!_participantHandlesJSONArray)
  {
    goto LABEL_34;
  }

LABEL_22:
  if (experienceType)
  {
    goto LABEL_23;
  }

LABEL_35:

LABEL_23:
  if (!messagesChatGUID)
  {
  }

  if (!activityID)
  {
  }

  if (v25)
  {
    if (v26)
    {
      goto LABEL_29;
    }

LABEL_37:

    if (v27)
    {
      goto LABEL_30;
    }

    goto LABEL_38;
  }

  if (!v26)
  {
    goto LABEL_37;
  }

LABEL_29:
  if (v27)
  {
    goto LABEL_30;
  }

LABEL_38:

LABEL_30:
  v19 = *MEMORY[0x1E69E9840];

  return v24;
}

- (id)_memberHandlesJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  memberHandles = [(BMSharePlayGroupActivitySession *)self memberHandles];
  v5 = [memberHandles countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(memberHandles);
        }

        [v3 addObject:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [memberHandles countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_participantHandlesJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  participantHandles = [(BMSharePlayGroupActivitySession *)self participantHandles];
  v5 = [participantHandles countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(participantHandles);
        }

        [v3 addObject:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [participantHandles countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMSharePlayGroupActivitySession)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v156[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"isActive"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v27 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy = error;
        v29 = *MEMORY[0x1E698F240];
        v155 = *MEMORY[0x1E696A578];
        selfCopy = self;
        v31 = objc_alloc(MEMORY[0x1E696AEC0]);
        v98 = objc_opt_class();
        v32 = v31;
        self = selfCopy;
        v33 = [v32 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v98, @"isActive"];
        v156[0] = v33;
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v156 forKeys:&v155 count:1];
        v8 = 0;
        v34 = 0;
        *errorCopy = [v27 initWithDomain:v29 code:2 userInfo:v9];
        goto LABEL_98;
      }

      v8 = 0;
      v34 = 0;
      goto LABEL_99;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"sourceBundleID"];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v35 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy2 = error;
        v36 = *MEMORY[0x1E698F240];
        v153 = *MEMORY[0x1E696A578];
        v37 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"sourceBundleID"];
        v154 = v37;
        v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v154 forKeys:&v153 count:1];
        v39 = v35;
        v10 = v38;
        v33 = 0;
        v34 = 0;
        *errorCopy2 = [v39 initWithDomain:v36 code:2 userInfo:v38];
        goto LABEL_97;
      }

      v33 = 0;
      v34 = 0;
      goto LABEL_98;
    }

    v117 = v9;
  }

  else
  {
    v117 = 0;
  }

  v10 = [dictionaryCopy objectForKeyedSubscript:@"activitySessionID"];
  v116 = v8;
  if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v40 = v10;
        v41 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy3 = error;
        v42 = *MEMORY[0x1E698F240];
        v151 = *MEMORY[0x1E696A578];
        v43 = v9;
        v44 = objc_alloc(MEMORY[0x1E696AEC0]);
        v99 = objc_opt_class();
        v45 = v44;
        v9 = v43;
        v11 = [v45 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v99, @"activitySessionID"];
        v152 = v11;
        v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v152 forKeys:&v151 count:1];
        v47 = v41;
        v10 = v40;
        v114 = v46;
        v37 = 0;
        v34 = 0;
        v33 = v117;
        *errorCopy3 = [v47 initWithDomain:v42 code:2 userInfo:?];
        goto LABEL_96;
      }

      v37 = 0;
      v34 = 0;
      v33 = v117;
      goto LABEL_97;
    }

    v112 = v10;
  }

  else
  {
    v112 = 0;
  }

  v11 = [dictionaryCopy objectForKeyedSubscript:@"activityID"];
  selfCopy2 = self;
  v114 = v11;
  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = 0;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v11 = 0;
          v34 = 0;
          v33 = v117;
          v37 = v112;
          goto LABEL_96;
        }

        v53 = v10;
        v54 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy4 = error;
        v55 = *MEMORY[0x1E698F240];
        v149 = *MEMORY[0x1E696A578];
        v56 = v9;
        v57 = objc_alloc(MEMORY[0x1E696AEC0]);
        v100 = objc_opt_class();
        v58 = v57;
        v9 = v56;
        v12 = [v58 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v100, @"activityID"];
        v150 = v12;
        v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v150 forKeys:&v149 count:1];
        v60 = v54;
        v10 = v53;
        v111 = v59;
        v11 = 0;
        v34 = 0;
        *errorCopy4 = [v60 initWithDomain:v55 code:2 userInfo:?];
        goto LABEL_101;
      }

      v11 = v11;
    }
  }

  v12 = [dictionaryCopy objectForKeyedSubscript:@"messagesChatGUID"];
  v111 = v12;
  if (v12)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = 0;
      goto LABEL_26;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v12;
      goto LABEL_26;
    }

    if (error)
    {
      v62 = v10;
      v63 = objc_alloc(MEMORY[0x1E696ABC0]);
      errorCopy5 = error;
      v64 = *MEMORY[0x1E698F240];
      v147 = *MEMORY[0x1E696A578];
      v65 = v9;
      v66 = objc_alloc(MEMORY[0x1E696AEC0]);
      v101 = objc_opt_class();
      v67 = v66;
      v9 = v65;
      v68 = [v67 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v101, @"messagesChatGUID"];
      v148 = v68;
      v69 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v148 forKeys:&v147 count:1];
      v70 = v63;
      v10 = v62;
      v71 = v64;
      error = v68;
      v110 = v69;
      v12 = 0;
      v34 = 0;
      *errorCopy5 = [v70 initWithDomain:v71 code:2 userInfo:?];
      goto LABEL_103;
    }

    v12 = 0;
    v34 = 0;
LABEL_101:
    v33 = v117;
    v37 = v112;
    goto LABEL_95;
  }

LABEL_26:
  v13 = [dictionaryCopy objectForKeyedSubscript:@"experienceType"];
  v107 = v10;
  v108 = v9;
  v110 = v13;
  if (v13)
  {
    v14 = v13;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        errorCopy7 = error;
        v109 = v14;
        goto LABEL_29;
      }

      if (error)
      {
        v72 = objc_alloc(MEMORY[0x1E696ABC0]);
        v73 = v12;
        v74 = v7;
        v75 = *MEMORY[0x1E698F240];
        v145 = *MEMORY[0x1E696A578];
        v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"experienceType"];
        v146 = v15;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:&v146 forKeys:&v145 count:1];
        v18 = v76 = error;
        v77 = v75;
        v7 = v74;
        v12 = v73;
        v109 = 0;
        v34 = 0;
        *v76 = [v72 initWithDomain:v77 code:2 userInfo:v18];
        v33 = v117;
        v37 = v112;
        goto LABEL_92;
      }

      v34 = 0;
LABEL_103:
      v33 = v117;
      v37 = v112;
      goto LABEL_94;
    }
  }

  errorCopy7 = error;
  v109 = 0;
LABEL_29:
  v15 = [dictionaryCopy objectForKeyedSubscript:@"participantHandles"];
  null = [MEMORY[0x1E695DFB0] null];
  v17 = [v15 isEqual:null];

  v106 = v7;
  if (v17)
  {
    v104 = v12;
    v105 = v11;

    v15 = 0;
  }

  else
  {
    if (v15)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (errorCopy7)
        {
          v83 = objc_alloc(MEMORY[0x1E696ABC0]);
          v84 = v11;
          v85 = *MEMORY[0x1E698F240];
          v143 = *MEMORY[0x1E696A578];
          v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"participantHandles"];
          v144 = v18;
          v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v144 forKeys:&v143 count:1];
          v86 = v83;
          v7 = v106;
          v87 = v85;
          v11 = v84;
          v34 = 0;
          *errorCopy7 = [v86 initWithDomain:v87 code:2 userInfo:v24];
          v33 = v117;
          v37 = v112;
          goto LABEL_91;
        }

        v34 = 0;
        v9 = v108;
        v33 = v117;
        v37 = v112;
        goto LABEL_93;
      }
    }

    v104 = v12;
    v105 = v11;
  }

  v18 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v15, "count")}];
  v127 = 0u;
  v128 = 0u;
  v129 = 0u;
  v130 = 0u;
  v15 = v15;
  v19 = [v15 countByEnumeratingWithState:&v127 objects:v142 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v128;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v128 != v21)
        {
          objc_enumerationMutation(v15);
        }

        v23 = *(*(&v127 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (errorCopy7)
          {
            v48 = objc_alloc(MEMORY[0x1E696ABC0]);
            v49 = *MEMORY[0x1E698F240];
            v140 = *MEMORY[0x1E696A578];
            v115 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"participantHandles"];
            v141 = v115;
            v50 = MEMORY[0x1E695DF20];
            v51 = &v141;
            v52 = &v140;
            goto LABEL_59;
          }

LABEL_63:
          v34 = 0;
          v24 = v15;
          v11 = v105;
          v7 = v106;
          v33 = v117;
          v37 = v112;
          v12 = v104;
          goto LABEL_91;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!errorCopy7)
          {
            goto LABEL_63;
          }

          v48 = objc_alloc(MEMORY[0x1E696ABC0]);
          v49 = *MEMORY[0x1E698F240];
          v138 = *MEMORY[0x1E696A578];
          v115 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"participantHandles"];
          v139 = v115;
          v50 = MEMORY[0x1E695DF20];
          v51 = &v139;
          v52 = &v138;
LABEL_59:
          v61 = [v50 dictionaryWithObjects:v51 forKeys:v52 count:1];
          v7 = v106;
          v33 = v117;
          v37 = v112;
          v12 = v104;
          *errorCopy7 = [v48 initWithDomain:v49 code:2 userInfo:v61];

          v34 = 0;
          v24 = v15;
LABEL_60:
          v11 = v105;
          goto LABEL_90;
        }

        [v18 addObject:v23];
      }

      v20 = [v15 countByEnumeratingWithState:&v127 objects:v142 count:16];
    }

    while (v20);
  }

  v24 = [dictionaryCopy objectForKeyedSubscript:@"memberHandles"];
  null2 = [MEMORY[0x1E695DFB0] null];
  v26 = [v24 isEqual:null2];

  if (v26)
  {

    v24 = 0;
  }

  else if (v24)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = v106;
      v12 = v104;
      if (!errorCopy7)
      {
        v34 = 0;
        v33 = v117;
        v37 = v112;
        v11 = v105;
        goto LABEL_91;
      }

      v95 = objc_alloc(MEMORY[0x1E696ABC0]);
      v96 = *MEMORY[0x1E698F240];
      v136 = *MEMORY[0x1E696A578];
      v115 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"memberHandles"];
      v137 = v115;
      v97 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v137 forKeys:&v136 count:1];
      *errorCopy7 = [v95 initWithDomain:v96 code:2 userInfo:v97];

      v34 = 0;
      v33 = v117;
      v37 = v112;
      goto LABEL_60;
    }
  }

  v115 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v24, "count")}];
  v123 = 0u;
  v124 = 0u;
  v125 = 0u;
  v126 = 0u;
  v24 = v24;
  v78 = [v24 countByEnumeratingWithState:&v123 objects:v135 count:16];
  if (!v78)
  {
    goto LABEL_78;
  }

  v79 = v78;
  v80 = *v124;
  while (2)
  {
    for (j = 0; j != v79; ++j)
    {
      if (*v124 != v80)
      {
        objc_enumerationMutation(v24);
      }

      v82 = *(*(&v123 + 1) + 8 * j);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v106;
        v33 = v117;
        v37 = v112;
        if (errorCopy7)
        {
          v103 = objc_alloc(MEMORY[0x1E696ABC0]);
          v102 = *MEMORY[0x1E698F240];
          v133 = *MEMORY[0x1E696A578];
          v88 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"memberHandles"];
          v134 = v88;
          v89 = MEMORY[0x1E695DF20];
          v90 = &v134;
          v91 = &v133;
LABEL_88:
          v92 = [v89 dictionaryWithObjects:v90 forKeys:v91 count:1];
          *errorCopy7 = [v103 initWithDomain:v102 code:2 userInfo:v92];
        }

LABEL_89:

        v34 = 0;
        v12 = v104;
        v11 = v105;
        goto LABEL_90;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v7 = v106;
        v33 = v117;
        v37 = v112;
        if (errorCopy7)
        {
          v103 = objc_alloc(MEMORY[0x1E696ABC0]);
          v102 = *MEMORY[0x1E698F240];
          v131 = *MEMORY[0x1E696A578];
          v88 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"memberHandles"];
          v132 = v88;
          v89 = MEMORY[0x1E695DF20];
          v90 = &v132;
          v91 = &v131;
          goto LABEL_88;
        }

        goto LABEL_89;
      }

      [v115 addObject:v82];
    }

    v79 = [v24 countByEnumeratingWithState:&v123 objects:v135 count:16];
    if (v79)
    {
      continue;
    }

    break;
  }

LABEL_78:

  v37 = v112;
  v33 = v117;
  v12 = v104;
  v11 = v105;
  v34 = [(BMSharePlayGroupActivitySession *)selfCopy2 initWithIsActive:v116 sourceBundleID:v117 activitySessionID:v112 activityID:v105 messagesChatGUID:v104 experienceType:v109 participantHandles:v18 memberHandles:v115];
  selfCopy2 = v34;
  v7 = v106;
LABEL_90:

LABEL_91:
LABEL_92:

  v9 = v108;
LABEL_93:

  v10 = v107;
  error = v109;
LABEL_94:

LABEL_95:
  self = selfCopy2;
LABEL_96:

  v8 = v116;
LABEL_97:

LABEL_98:
LABEL_99:

  v93 = *MEMORY[0x1E69E9840];
  return v34;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSharePlayGroupActivitySession *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v29 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_hasIsActive)
  {
    isActive = self->_isActive;
    PBDataWriterWriteBOOLField();
  }

  if (self->_sourceBundleID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_activitySessionID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_activityID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_messagesChatGUID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_experienceType)
  {
    PBDataWriterWriteStringField();
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = self->_participantHandles;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      v10 = 0;
      do
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v23 + 1) + 8 * v10);
        PBDataWriterWriteStringField();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v8);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = self->_memberHandles;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      v16 = 0;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v19 + 1) + 8 * v16);
        PBDataWriterWriteStringField();
        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSArray *)v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v14);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v40.receiver = self;
  v40.super_class = BMSharePlayGroupActivitySession;
  v5 = [(BMEventBase *)&v40 init];
  if (!v5)
  {
    goto LABEL_56;
  }

  v6 = objc_opt_new();
  v7 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v9 = 0;
      v10 = 0;
      v11 = 0;
      while (1)
      {
        v41 = 0;
        v12 = [fromCopy position] + 1;
        if (v12 >= [fromCopy position] && (v13 = objc_msgSend(fromCopy, "position") + 1, v13 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v41 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v11 |= (v41 & 0x7F) << v9;
        if ((v41 & 0x80) == 0)
        {
          break;
        }

        v9 += 7;
        v15 = v10++ >= 9;
        if (v15)
        {
          v16 = 0;
          goto LABEL_16;
        }
      }

      v16 = [fromCopy hasError] ? 0 : v11;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v16 & 7) == 4)
      {
        break;
      }

      v17 = v16 >> 3;
      if ((v16 >> 3) > 4)
      {
        if (v17 > 6)
        {
          if (v17 == 7)
          {
            v31 = PBReaderReadString();
            if (!v31)
            {
              goto LABEL_58;
            }

            v21 = v31;
            v22 = v6;
            goto LABEL_48;
          }

          if (v17 == 8)
          {
            v20 = PBReaderReadString();
            if (!v20)
            {
              goto LABEL_58;
            }

            v21 = v20;
            v22 = v7;
LABEL_48:
            [v22 addObject:v21];

            goto LABEL_53;
          }
        }

        else
        {
          if (v17 == 5)
          {
            v18 = PBReaderReadString();
            v19 = 48;
            goto LABEL_45;
          }

          if (v17 == 6)
          {
            v18 = PBReaderReadString();
            v19 = 56;
            goto LABEL_45;
          }
        }
      }

      else if (v17 > 2)
      {
        if (v17 == 3)
        {
          v18 = PBReaderReadString();
          v19 = 32;
          goto LABEL_45;
        }

        if (v17 == 4)
        {
          v18 = PBReaderReadString();
          v19 = 40;
          goto LABEL_45;
        }
      }

      else
      {
        if (v17 == 1)
        {
          v23 = 0;
          v24 = 0;
          v25 = 0;
          v5->_hasIsActive = 1;
          while (1)
          {
            v41 = 0;
            v26 = [fromCopy position] + 1;
            if (v26 >= [fromCopy position] && (v27 = objc_msgSend(fromCopy, "position") + 1, v27 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v41 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v25 |= (v41 & 0x7F) << v23;
            if ((v41 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v15 = v24++ >= 9;
            if (v15)
            {
              LOBYTE(v29) = 0;
              goto LABEL_52;
            }
          }

          v29 = (v25 != 0) & ~[fromCopy hasError];
LABEL_52:
          v5->_isActive = v29;
          goto LABEL_53;
        }

        if (v17 == 2)
        {
          v18 = PBReaderReadString();
          v19 = 24;
LABEL_45:
          v30 = *(&v5->super.super.isa + v19);
          *(&v5->super.super.isa + v19) = v18;

          goto LABEL_53;
        }
      }

      if (!PBReaderSkipValueWithTag())
      {
LABEL_58:

        goto LABEL_55;
      }

LABEL_53:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  v33 = [v6 copy];
  participantHandles = v5->_participantHandles;
  v5->_participantHandles = v33;

  v35 = [v7 copy];
  memberHandles = v5->_memberHandles;
  v5->_memberHandles = v35;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_55:
    v38 = 0;
  }

  else
  {
LABEL_56:
    v38 = v5;
  }

  return v38;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSharePlayGroupActivitySession isActive](self, "isActive")}];
  sourceBundleID = [(BMSharePlayGroupActivitySession *)self sourceBundleID];
  activitySessionID = [(BMSharePlayGroupActivitySession *)self activitySessionID];
  activityID = [(BMSharePlayGroupActivitySession *)self activityID];
  messagesChatGUID = [(BMSharePlayGroupActivitySession *)self messagesChatGUID];
  experienceType = [(BMSharePlayGroupActivitySession *)self experienceType];
  participantHandles = [(BMSharePlayGroupActivitySession *)self participantHandles];
  memberHandles = [(BMSharePlayGroupActivitySession *)self memberHandles];
  v12 = [v3 initWithFormat:@"BMSharePlayGroupActivitySession with isActive: %@, sourceBundleID: %@, activitySessionID: %@, activityID: %@, messagesChatGUID: %@, experienceType: %@, participantHandles: %@, memberHandles: %@", v4, sourceBundleID, activitySessionID, activityID, messagesChatGUID, experienceType, participantHandles, memberHandles];

  return v12;
}

- (BMSharePlayGroupActivitySession)initWithIsActive:(id)active sourceBundleID:(id)d activitySessionID:(id)iD activityID:(id)activityID messagesChatGUID:(id)uID experienceType:(id)type participantHandles:(id)handles memberHandles:(id)self0
{
  activeCopy = active;
  dCopy = d;
  iDCopy = iD;
  activityIDCopy = activityID;
  uIDCopy = uID;
  typeCopy = type;
  handlesCopy = handles;
  memberHandlesCopy = memberHandles;
  v26.receiver = self;
  v26.super_class = BMSharePlayGroupActivitySession;
  v18 = [(BMEventBase *)&v26 init];
  if (v18)
  {
    v18->_dataVersion = [objc_opt_class() latestDataVersion];
    if (activeCopy)
    {
      v18->_hasIsActive = 1;
      v18->_isActive = [activeCopy BOOLValue];
    }

    else
    {
      v18->_hasIsActive = 0;
      v18->_isActive = 0;
    }

    objc_storeStrong(&v18->_sourceBundleID, d);
    objc_storeStrong(&v18->_activitySessionID, iD);
    objc_storeStrong(&v18->_activityID, activityID);
    objc_storeStrong(&v18->_messagesChatGUID, uID);
    objc_storeStrong(&v18->_experienceType, type);
    objc_storeStrong(&v18->_participantHandles, handles);
    objc_storeStrong(&v18->_memberHandles, memberHandles);
  }

  return v18;
}

+ (id)protoFields
{
  v13[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isActive" number:1 type:12 subMessageClass:0];
  v13[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sourceBundleID" number:2 type:13 subMessageClass:0];
  v13[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"activitySessionID" number:3 type:13 subMessageClass:0];
  v13[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"activityID" number:4 type:13 subMessageClass:0];
  v13[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"messagesChatGUID" number:5 type:13 subMessageClass:0];
  v13[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"experienceType" number:6 type:13 subMessageClass:0];
  v13[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"participantHandles" number:7 type:13 subMessageClass:0];
  v13[6] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"memberHandles" number:8 type:13 subMessageClass:0];
  v13[7] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)columns
{
  v13[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isActive" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:12 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sourceBundleID" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"activitySessionID" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"activityID" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"messagesChatGUID" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"experienceType" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"participantHandles_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_18134];
  v9 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"memberHandles_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_56];
  v13[0] = v2;
  v13[1] = v3;
  v13[2] = v4;
  v13[3] = v5;
  v13[4] = v6;
  v13[5] = v7;
  v13[6] = v8;
  v13[7] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

id __42__BMSharePlayGroupActivitySession_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _memberHandlesJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __42__BMSharePlayGroupActivitySession_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _participantHandlesJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version == 1)
  {
    v4 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v6 = [[v4 alloc] initWithData:dataCopy];

    v7 = [[BMSharePlayGroupActivitySession alloc] initByReadFrom:v6];
    v8 = v7;
    if (v7)
    {
      v7[5] = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end