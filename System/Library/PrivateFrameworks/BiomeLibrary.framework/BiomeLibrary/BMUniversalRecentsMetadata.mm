@interface BMUniversalRecentsMetadata
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMUniversalRecentsMetadata)initWithAbsoluteTimestamp:(id)timestamp userActivityData:(id)data title:(id)title activityType:(id)type associatedBundleID:(id)d associatedURLString:(id)string modeIdentifier:(id)identifier topics:(id)self0 hasAssociatedImageRepresentation:(id)self1 uuid:(id)self2;
- (BMUniversalRecentsMetadata)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSDate)absoluteTimestamp;
- (NSString)description;
- (id)_topicsJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMUniversalRecentsMetadata

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    absoluteTimestamp = [(BMUniversalRecentsMetadata *)self absoluteTimestamp];
    absoluteTimestamp2 = [v5 absoluteTimestamp];
    v8 = absoluteTimestamp2;
    if (absoluteTimestamp == absoluteTimestamp2)
    {
    }

    else
    {
      absoluteTimestamp3 = [(BMUniversalRecentsMetadata *)self absoluteTimestamp];
      absoluteTimestamp4 = [v5 absoluteTimestamp];
      v11 = [absoluteTimestamp3 isEqual:absoluteTimestamp4];

      if (!v11)
      {
        goto LABEL_40;
      }
    }

    userActivityData = [(BMUniversalRecentsMetadata *)self userActivityData];
    userActivityData2 = [v5 userActivityData];
    v15 = userActivityData2;
    if (userActivityData == userActivityData2)
    {
    }

    else
    {
      userActivityData3 = [(BMUniversalRecentsMetadata *)self userActivityData];
      userActivityData4 = [v5 userActivityData];
      v18 = [userActivityData3 isEqual:userActivityData4];

      if (!v18)
      {
        goto LABEL_40;
      }
    }

    title = [(BMUniversalRecentsMetadata *)self title];
    title2 = [v5 title];
    v21 = title2;
    if (title == title2)
    {
    }

    else
    {
      title3 = [(BMUniversalRecentsMetadata *)self title];
      title4 = [v5 title];
      v24 = [title3 isEqual:title4];

      if (!v24)
      {
        goto LABEL_40;
      }
    }

    activityType = [(BMUniversalRecentsMetadata *)self activityType];
    activityType2 = [v5 activityType];
    v27 = activityType2;
    if (activityType == activityType2)
    {
    }

    else
    {
      activityType3 = [(BMUniversalRecentsMetadata *)self activityType];
      activityType4 = [v5 activityType];
      v30 = [activityType3 isEqual:activityType4];

      if (!v30)
      {
        goto LABEL_40;
      }
    }

    associatedBundleID = [(BMUniversalRecentsMetadata *)self associatedBundleID];
    associatedBundleID2 = [v5 associatedBundleID];
    v33 = associatedBundleID2;
    if (associatedBundleID == associatedBundleID2)
    {
    }

    else
    {
      associatedBundleID3 = [(BMUniversalRecentsMetadata *)self associatedBundleID];
      associatedBundleID4 = [v5 associatedBundleID];
      v36 = [associatedBundleID3 isEqual:associatedBundleID4];

      if (!v36)
      {
        goto LABEL_40;
      }
    }

    associatedURLString = [(BMUniversalRecentsMetadata *)self associatedURLString];
    associatedURLString2 = [v5 associatedURLString];
    v39 = associatedURLString2;
    if (associatedURLString == associatedURLString2)
    {
    }

    else
    {
      associatedURLString3 = [(BMUniversalRecentsMetadata *)self associatedURLString];
      associatedURLString4 = [v5 associatedURLString];
      v42 = [associatedURLString3 isEqual:associatedURLString4];

      if (!v42)
      {
        goto LABEL_40;
      }
    }

    modeIdentifier = [(BMUniversalRecentsMetadata *)self modeIdentifier];
    modeIdentifier2 = [v5 modeIdentifier];
    v45 = modeIdentifier2;
    if (modeIdentifier == modeIdentifier2)
    {
    }

    else
    {
      modeIdentifier3 = [(BMUniversalRecentsMetadata *)self modeIdentifier];
      modeIdentifier4 = [v5 modeIdentifier];
      v48 = [modeIdentifier3 isEqual:modeIdentifier4];

      if (!v48)
      {
        goto LABEL_40;
      }
    }

    topics = [(BMUniversalRecentsMetadata *)self topics];
    topics2 = [v5 topics];
    v51 = topics2;
    if (topics == topics2)
    {
    }

    else
    {
      topics3 = [(BMUniversalRecentsMetadata *)self topics];
      topics4 = [v5 topics];
      v54 = [topics3 isEqual:topics4];

      if (!v54)
      {
        goto LABEL_40;
      }
    }

    if (!-[BMUniversalRecentsMetadata hasHasAssociatedImageRepresentation](self, "hasHasAssociatedImageRepresentation") && ![v5 hasHasAssociatedImageRepresentation] || -[BMUniversalRecentsMetadata hasHasAssociatedImageRepresentation](self, "hasHasAssociatedImageRepresentation") && objc_msgSend(v5, "hasHasAssociatedImageRepresentation") && (v55 = -[BMUniversalRecentsMetadata hasAssociatedImageRepresentation](self, "hasAssociatedImageRepresentation"), v55 == objc_msgSend(v5, "hasAssociatedImageRepresentation")))
    {
      uuid = [(BMUniversalRecentsMetadata *)self uuid];
      uuid2 = [v5 uuid];
      if (uuid == uuid2)
      {
        v12 = 1;
      }

      else
      {
        uuid3 = [(BMUniversalRecentsMetadata *)self uuid];
        uuid4 = [v5 uuid];
        v12 = [uuid3 isEqual:uuid4];
      }

      goto LABEL_41;
    }

LABEL_40:
    v12 = 0;
LABEL_41:

    goto LABEL_42;
  }

  v12 = 0;
LABEL_42:

  return v12;
}

- (NSDate)absoluteTimestamp
{
  if (self->_hasRaw_absoluteTimestamp)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_absoluteTimestamp];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v42[10] = *MEMORY[0x1E69E9840];
  absoluteTimestamp = [(BMUniversalRecentsMetadata *)self absoluteTimestamp];
  if (absoluteTimestamp)
  {
    v4 = MEMORY[0x1E696AD98];
    absoluteTimestamp2 = [(BMUniversalRecentsMetadata *)self absoluteTimestamp];
    [absoluteTimestamp2 timeIntervalSince1970];
    v6 = [v4 numberWithDouble:?];
  }

  else
  {
    v6 = 0;
  }

  userActivityData = [(BMUniversalRecentsMetadata *)self userActivityData];
  v8 = [userActivityData base64EncodedStringWithOptions:0];

  title = [(BMUniversalRecentsMetadata *)self title];
  activityType = [(BMUniversalRecentsMetadata *)self activityType];
  associatedBundleID = [(BMUniversalRecentsMetadata *)self associatedBundleID];
  associatedURLString = [(BMUniversalRecentsMetadata *)self associatedURLString];
  modeIdentifier = [(BMUniversalRecentsMetadata *)self modeIdentifier];
  _topicsJSONArray = [(BMUniversalRecentsMetadata *)self _topicsJSONArray];
  v13 = 0;
  if ([(BMUniversalRecentsMetadata *)self hasHasAssociatedImageRepresentation])
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMUniversalRecentsMetadata hasAssociatedImageRepresentation](self, "hasAssociatedImageRepresentation")}];
  }

  uuid = [(BMUniversalRecentsMetadata *)self uuid];
  v41[0] = @"absoluteTimestamp";
  null = v6;
  if (!v6)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v34 = null;
  v42[0] = null;
  v41[1] = @"userActivityData";
  null2 = v8;
  if (!v8)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v33 = null2;
  v42[1] = null2;
  v41[2] = @"title";
  null3 = title;
  if (!title)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = null3;
  v42[2] = null3;
  v41[3] = @"activityType";
  null4 = activityType;
  if (!activityType)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v38 = v6;
  v31 = null4;
  v42[3] = null4;
  v41[4] = @"associatedBundleID";
  null5 = associatedBundleID;
  if (!associatedBundleID)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v37 = v8;
  v30 = null5;
  v42[4] = null5;
  v41[5] = @"associatedURLString";
  null6 = associatedURLString;
  if (!associatedURLString)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v36 = title;
  v42[5] = null6;
  v41[6] = @"modeIdentifier";
  null7 = modeIdentifier;
  if (!modeIdentifier)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = associatedURLString;
  v23 = activityType;
  v42[6] = null7;
  v41[7] = @"topics";
  null8 = _topicsJSONArray;
  if (!_topicsJSONArray)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = associatedBundleID;
  v42[7] = null8;
  v41[8] = @"hasAssociatedImageRepresentation";
  null9 = v13;
  if (!v13)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v42[8] = null9;
  v41[9] = @"uuid";
  null10 = uuid;
  if (!uuid)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v42[9] = null10;
  v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:10];
  if (uuid)
  {
    if (v13)
    {
      goto LABEL_28;
    }
  }

  else
  {

    if (v13)
    {
      goto LABEL_28;
    }
  }

LABEL_28:
  if (!_topicsJSONArray)
  {
  }

  if (!modeIdentifier)
  {
  }

  if (!v22)
  {
  }

  if (!v25)
  {
  }

  if (v23)
  {
    if (v36)
    {
      goto LABEL_38;
    }
  }

  else
  {

    if (v36)
    {
LABEL_38:
      if (v37)
      {
        goto LABEL_39;
      }

LABEL_47:

      if (v38)
      {
        goto LABEL_40;
      }

      goto LABEL_48;
    }
  }

  if (!v37)
  {
    goto LABEL_47;
  }

LABEL_39:
  if (v38)
  {
    goto LABEL_40;
  }

LABEL_48:

LABEL_40:
  v28 = *MEMORY[0x1E69E9840];

  return v35;
}

- (id)_topicsJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  topics = [(BMUniversalRecentsMetadata *)self topics];
  v5 = [topics countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(topics);
        }

        jsonDictionary = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [topics countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMUniversalRecentsMetadata)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v185[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"absoluteTimestamp"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = MEMORY[0x1E695DF00];
      v9 = v6;
      v10 = [v8 alloc];
      [v9 doubleValue];
      v12 = v11;

      v13 = [v10 initWithTimeIntervalSince1970:v12];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = objc_alloc_init(MEMORY[0x1E696AC80]);
        v7 = [v14 dateFromString:v6];

        goto LABEL_9;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v110 = objc_alloc(MEMORY[0x1E696ABC0]);
          v111 = *MEMORY[0x1E698F240];
          v184 = *MEMORY[0x1E696A578];
          v112 = v6;
          v113 = objc_alloc(MEMORY[0x1E696AEC0]);
          v128 = objc_opt_class();
          v114 = v113;
          v6 = v112;
          v45 = [v114 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", v128, @"absoluteTimestamp"];
          v185[0] = v45;
          v115 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v185 forKeys:&v184 count:1];
          v116 = v110;
          v15 = v115;
          v117 = [v116 initWithDomain:v111 code:2 userInfo:v115];
          v7 = 0;
          selfCopy8 = 0;
          *error = v117;
          goto LABEL_107;
        }

        v7 = 0;
        selfCopy8 = 0;
        goto LABEL_108;
      }

      v13 = v6;
    }

    v7 = v13;
  }

  else
  {
    v7 = 0;
  }

LABEL_9:
  v15 = [dictionaryCopy objectForKeyedSubscript:@"userActivityData"];
  if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v27 = v15;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v149 = v15;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        selfCopy2 = self;
        if (!error)
        {
          selfCopy8 = 0;
          v45 = 0;
          goto LABEL_107;
        }

        v81 = objc_alloc(MEMORY[0x1E696ABC0]);
        v82 = v7;
        v83 = *MEMORY[0x1E698F240];
        v180 = *MEMORY[0x1E696A578];
        v42 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type (%@) for value of field '%@', expected NSData or base64 encoded NSString", objc_opt_class(), @"userActivityData"];
        v181 = v42;
        v84 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v181 forKeys:&v180 count:1];
        v85 = v81;
        v15 = v27;
        v16 = v84;
        v86 = v83;
        v7 = v82;
        v45 = 0;
        selfCopy8 = 0;
        *error = [v85 initWithDomain:v86 code:2 userInfo:v84];
        goto LABEL_87;
      }

      v149 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v15 options:0];
      if (!v149)
      {
        if (error)
        {
          v38 = v15;
          v39 = objc_alloc(MEMORY[0x1E696ABC0]);
          v40 = v7;
          v41 = *MEMORY[0x1E698F240];
          v182 = *MEMORY[0x1E696A578];
          v42 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected format for value of field '%@', expected base64 encoding", @"userActivityData"];
          v183 = v42;
          v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v183 forKeys:&v182 count:1];
          v43 = v39;
          v15 = v38;
          v44 = v41;
          v7 = v40;
          v45 = 0;
          selfCopy8 = 0;
          *error = [v43 initWithDomain:v44 code:2 userInfo:v16];
          goto LABEL_106;
        }

        v45 = 0;
        selfCopy8 = 0;
        goto LABEL_107;
      }
    }
  }

  else
  {
    v149 = 0;
  }

  v16 = [dictionaryCopy objectForKeyedSubscript:@"title"];
  v151 = v16;
  if (v16)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v144 = v16;
        goto LABEL_15;
      }

      selfCopy2 = self;
      if (error)
      {
        v47 = v15;
        v48 = objc_alloc(MEMORY[0x1E696ABC0]);
        v49 = v7;
        v50 = *MEMORY[0x1E698F240];
        v178 = *MEMORY[0x1E696A578];
        v148 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"title"];
        v179 = v148;
        v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v179 forKeys:&v178 count:1];
        v51 = v48;
        v15 = v47;
        v52 = v50;
        v7 = v49;
        v42 = 0;
        selfCopy8 = 0;
        *error = [v51 initWithDomain:v52 code:2 userInfo:v17];
        v45 = v149;
        goto LABEL_105;
      }

      v42 = 0;
      selfCopy8 = 0;
      v45 = v149;
LABEL_87:
      self = selfCopy2;
      goto LABEL_106;
    }
  }

  v144 = 0;
LABEL_15:
  v17 = [dictionaryCopy objectForKeyedSubscript:@"activityType"];
  v153 = v17;
  if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      selfCopy5 = self;
      if (!error)
      {
        v148 = 0;
        selfCopy8 = 0;
        v45 = v149;
        v42 = v144;
        goto LABEL_105;
      }

      v53 = v15;
      v54 = objc_alloc(MEMORY[0x1E696ABC0]);
      v55 = v7;
      v56 = *MEMORY[0x1E698F240];
      v176 = *MEMORY[0x1E696A578];
      v57 = objc_alloc(MEMORY[0x1E696AEC0]);
      v124 = objc_opt_class();
      v58 = v57;
      v17 = v153;
      v143 = [v58 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v124, @"activityType"];
      v177 = v143;
      v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v177 forKeys:&v176 count:1];
      v60 = v54;
      v15 = v53;
      v61 = v56;
      v7 = v55;
      v142 = v59;
      v148 = 0;
      selfCopy8 = 0;
      *error = [v60 initWithDomain:v61 code:2 userInfo:?];
      goto LABEL_115;
    }

    v148 = v17;
  }

  else
  {
    v148 = 0;
  }

  v18 = [dictionaryCopy objectForKeyedSubscript:@"associatedBundleID"];
  v142 = v18;
  if (v18)
  {
    v19 = v18;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v143 = v19;
        goto LABEL_21;
      }

      selfCopy5 = self;
      if (error)
      {
        v62 = v15;
        v63 = objc_alloc(MEMORY[0x1E696ABC0]);
        v64 = v7;
        v65 = *MEMORY[0x1E698F240];
        v174 = *MEMORY[0x1E696A578];
        v66 = objc_alloc(MEMORY[0x1E696AEC0]);
        v125 = objc_opt_class();
        v67 = v66;
        v17 = v153;
        v141 = [v67 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v125, @"associatedBundleID"];
        v175 = v141;
        v68 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v175 forKeys:&v174 count:1];
        v69 = v63;
        v15 = v62;
        v70 = v65;
        v7 = v64;
        v140 = v68;
        v143 = 0;
        selfCopy8 = 0;
        *error = [v69 initWithDomain:v70 code:2 userInfo:?];
LABEL_119:
        v45 = v149;
        self = selfCopy5;
        goto LABEL_103;
      }

      v143 = 0;
      selfCopy8 = 0;
LABEL_115:
      v45 = v149;
      v42 = v144;
      self = selfCopy5;
      goto LABEL_104;
    }
  }

  v143 = 0;
LABEL_21:
  v20 = [dictionaryCopy objectForKeyedSubscript:@"associatedURLString"];
  v140 = v20;
  if (!v20 || (v21 = v20, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v141 = 0;
    goto LABEL_24;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    selfCopy5 = self;
    if (error)
    {
      v71 = v15;
      v72 = objc_alloc(MEMORY[0x1E696ABC0]);
      v73 = v7;
      v74 = *MEMORY[0x1E698F240];
      v172 = *MEMORY[0x1E696A578];
      v75 = objc_alloc(MEMORY[0x1E696AEC0]);
      v126 = objc_opt_class();
      v76 = v75;
      v17 = v153;
      v77 = [v76 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v126, @"associatedURLString"];
      v173 = v77;
      v78 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v173 forKeys:&v172 count:1];
      v79 = v72;
      v15 = v71;
      v80 = v74;
      v7 = v73;
      v139 = v78;
      v141 = 0;
      selfCopy8 = 0;
      *error = [v79 initWithDomain:v80 code:2 userInfo:?];
      v45 = v149;
      goto LABEL_102;
    }

    v141 = 0;
    selfCopy8 = 0;
    goto LABEL_119;
  }

  v141 = v21;
LABEL_24:
  v22 = [dictionaryCopy objectForKeyedSubscript:@"modeIdentifier"];
  v138 = v7;
  v139 = v22;
  if (v22 && (v23 = v22, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v87 = v15;
        v88 = objc_alloc(MEMORY[0x1E696ABC0]);
        v89 = *MEMORY[0x1E698F240];
        v170 = *MEMORY[0x1E696A578];
        v90 = objc_alloc(MEMORY[0x1E696AEC0]);
        v127 = objc_opt_class();
        v91 = v90;
        v17 = v153;
        v24 = [v91 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v127, @"modeIdentifier"];
        v171 = v24;
        v92 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v171 forKeys:&v170 count:1];
        v93 = v88;
        v15 = v87;
        v152 = v92;
        v137 = 0;
        selfCopy8 = 0;
        *error = [v93 initWithDomain:v89 code:2 userInfo:?];
        v45 = v149;
        goto LABEL_100;
      }

      v77 = 0;
      selfCopy8 = 0;
      v45 = v149;
      goto LABEL_102;
    }

    v136 = v15;
    v137 = v23;
  }

  else
  {
    v136 = v15;
    v137 = 0;
  }

  v24 = [dictionaryCopy objectForKeyedSubscript:@"topics"];
  null = [MEMORY[0x1E695DFB0] null];
  v26 = [v24 isEqual:null];

  if (v26)
  {
    v134 = v6;
    selfCopy7 = self;

    v24 = 0;
  }

  else
  {
    if (v24)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v103 = objc_alloc(MEMORY[0x1E696ABC0]);
          v104 = *MEMORY[0x1E698F240];
          v168 = *MEMORY[0x1E696A578];
          v152 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"topics"];
          v169 = v152;
          v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v169 forKeys:&v168 count:1];
          v105 = [v103 initWithDomain:v104 code:2 userInfo:v37];
          selfCopy8 = 0;
          *error = v105;
          v15 = v136;
          v45 = v149;
          goto LABEL_98;
        }

        selfCopy8 = 0;
        v7 = v138;
        v15 = v136;
        v45 = v149;
        goto LABEL_101;
      }
    }

    v134 = v6;
    selfCopy7 = self;
  }

  v152 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v24, "count")}];
  v155 = 0u;
  v156 = 0u;
  v157 = 0u;
  v158 = 0u;
  v24 = v24;
  v28 = [v24 countByEnumeratingWithState:&v155 objects:v167 count:16];
  if (!v28)
  {
    goto LABEL_50;
  }

  v29 = v28;
  v30 = *v156;
  v133 = dictionaryCopy;
  while (2)
  {
    for (i = 0; i != v29; ++i)
    {
      if (*v156 != v30)
      {
        objc_enumerationMutation(v24);
      }

      v32 = *(*(&v155 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        errorCopy2 = error;
        if (error)
        {
          v95 = objc_alloc(MEMORY[0x1E696ABC0]);
          v96 = *MEMORY[0x1E698F240];
          v165 = *MEMORY[0x1E696A578];
          v33 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"topics"];
          v166 = v33;
          v97 = MEMORY[0x1E695DF20];
          v98 = &v166;
          v99 = &v165;
LABEL_79:
          v100 = [v97 dictionaryWithObjects:v98 forKeys:v99 count:1];
          v101 = [v95 initWithDomain:v96 code:2 userInfo:v100];
          selfCopy8 = 0;
          *errorCopy2 = v101;
LABEL_83:
          v37 = v24;
          dictionaryCopy = v133;
          v6 = v134;
          self = selfCopy7;
          v45 = v149;
          v16 = v151;
          goto LABEL_96;
        }

LABEL_88:
        selfCopy8 = 0;
        v37 = v24;
        dictionaryCopy = v133;
        v6 = v134;
        self = selfCopy7;
        v15 = v136;
        v45 = v149;
        v16 = v151;
        goto LABEL_99;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        errorCopy2 = error;
        if (error)
        {
          v95 = objc_alloc(MEMORY[0x1E696ABC0]);
          v96 = *MEMORY[0x1E698F240];
          v163 = *MEMORY[0x1E696A578];
          v33 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"topics"];
          v164 = v33;
          v97 = MEMORY[0x1E695DF20];
          v98 = &v164;
          v99 = &v163;
          goto LABEL_79;
        }

        goto LABEL_88;
      }

      v33 = v32;
      v34 = [BMUniversalRecentsMetadataTopic alloc];
      v154 = 0;
      v35 = [(BMUniversalRecentsMetadataTopic *)v34 initWithJSONDictionary:v33 error:&v154];
      v36 = v154;
      if (v36)
      {
        v100 = v36;
        if (error)
        {
          v102 = v36;
          *error = v100;
        }

        selfCopy8 = 0;
        goto LABEL_83;
      }

      [v152 addObject:v35];

      v17 = v153;
    }

    v29 = [v24 countByEnumeratingWithState:&v155 objects:v167 count:16];
    dictionaryCopy = v133;
    if (v29)
    {
      continue;
    }

    break;
  }

LABEL_50:

  v33 = [dictionaryCopy objectForKeyedSubscript:@"hasAssociatedImageRepresentation"];
  if (!v33)
  {
    v37 = 0;
    self = selfCopy7;
LABEL_90:
    v6 = v134;
LABEL_91:
    v106 = [dictionaryCopy objectForKeyedSubscript:@"uuid"];
    v130 = v106;
    if (v106 && (v107 = v106, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      v45 = v149;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v135 = objc_alloc(MEMORY[0x1E696ABC0]);
          v129 = *MEMORY[0x1E698F240];
          v159 = *MEMORY[0x1E696A578];
          v122 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"uuid"];
          v160 = v122;
          v123 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v160 forKeys:&v159 count:1];
          *error = [v135 initWithDomain:v129 code:2 userInfo:v123];
        }

        v100 = 0;
        selfCopy8 = 0;
        goto LABEL_95;
      }

      v100 = v107;
    }

    else
    {
      v100 = 0;
      v45 = v149;
    }

    self = [(BMUniversalRecentsMetadata *)self initWithAbsoluteTimestamp:v138 userActivityData:v45 title:v144 activityType:v148 associatedBundleID:v143 associatedURLString:v141 modeIdentifier:v137 topics:v152 hasAssociatedImageRepresentation:v37 uuid:v100];
    selfCopy8 = self;
LABEL_95:

    goto LABEL_96;
  }

  objc_opt_class();
  self = selfCopy7;
  if (objc_opt_isKindOfClass())
  {
    v37 = 0;
    goto LABEL_90;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v37 = v33;
    v6 = v134;
    goto LABEL_91;
  }

  v6 = v134;
  if (error)
  {
    v131 = objc_alloc(MEMORY[0x1E696ABC0]);
    v118 = *MEMORY[0x1E698F240];
    v161 = *MEMORY[0x1E696A578];
    v100 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"hasAssociatedImageRepresentation"];
    v162 = v100;
    v119 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v162 forKeys:&v161 count:1];
    v120 = v131;
    v132 = v119;
    v121 = [v120 initWithDomain:v118 code:2 userInfo:?];
    v37 = 0;
    selfCopy8 = 0;
    *error = v121;
    v45 = v149;

LABEL_96:
  }

  else
  {
    v37 = 0;
    selfCopy8 = 0;
    v45 = v149;
  }

  v15 = v136;
LABEL_98:
  v17 = v153;
LABEL_99:

LABEL_100:
  v7 = v138;
LABEL_101:

  v77 = v137;
LABEL_102:

LABEL_103:
  v42 = v144;

LABEL_104:
LABEL_105:

LABEL_106:
LABEL_107:

LABEL_108:
  v108 = *MEMORY[0x1E69E9840];
  return selfCopy8;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMUniversalRecentsMetadata *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v19 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_hasRaw_absoluteTimestamp)
  {
    raw_absoluteTimestamp = self->_raw_absoluteTimestamp;
    PBDataWriterWriteDoubleField();
  }

  if (self->_userActivityData)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_title)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_activityType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_associatedBundleID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_associatedURLString)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_modeIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_topics;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        PBDataWriterPlaceMark();
        [v11 writeTo:toCopy];
        PBDataWriterRecallMark();
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  if (self->_hasHasAssociatedImageRepresentation)
  {
    hasAssociatedImageRepresentation = self->_hasAssociatedImageRepresentation;
    PBDataWriterWriteBOOLField();
  }

  if (self->_uuid)
  {
    PBDataWriterWriteStringField();
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v38.receiver = self;
  v38.super_class = BMUniversalRecentsMetadata;
  v5 = [(BMEventBase *)&v38 init];
  if (!v5)
  {
    goto LABEL_64;
  }

  v6 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_62;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v39[0]) = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:v39 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v10 |= (v39[0] & 0x7F) << v8;
        if ((v39[0] & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        v14 = v9++ >= 9;
        if (v14)
        {
          v15 = 0;
          goto LABEL_16;
        }
      }

      v15 = [fromCopy hasError] ? 0 : v10;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v15 & 7) == 4)
      {
        goto LABEL_62;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) <= 5)
      {
        break;
      }

      if (v16 <= 7)
      {
        if (v16 == 6)
        {
          v17 = PBReaderReadString();
          v18 = 72;
          goto LABEL_44;
        }

        if (v16 == 7)
        {
          v17 = PBReaderReadString();
          v18 = 80;
          goto LABEL_44;
        }

LABEL_56:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_66;
        }

        goto LABEL_45;
      }

      if (v16 != 8)
      {
        if (v16 == 9)
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v5->_hasHasAssociatedImageRepresentation = 1;
          while (1)
          {
            LOBYTE(v39[0]) = 0;
            v28 = [fromCopy position] + 1;
            if (v28 >= [fromCopy position] && (v29 = objc_msgSend(fromCopy, "position") + 1, v29 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:v39 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v27 |= (v39[0] & 0x7F) << v25;
            if ((v39[0] & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v14 = v26++ >= 9;
            if (v14)
            {
              LOBYTE(v31) = 0;
              goto LABEL_59;
            }
          }

          v31 = (v27 != 0) & ~[fromCopy hasError];
LABEL_59:
          v5->_hasAssociatedImageRepresentation = v31;
          goto LABEL_45;
        }

        if (v16 == 10)
        {
          v17 = PBReaderReadString();
          v18 = 96;
          goto LABEL_44;
        }

        goto LABEL_56;
      }

      v39[0] = 0;
      v39[1] = 0;
      if (!PBReaderPlaceMark() || (v21 = [[BMUniversalRecentsMetadataTopic alloc] initByReadFrom:fromCopy]) == 0)
      {
LABEL_66:

        goto LABEL_63;
      }

      v22 = v21;
      [v6 addObject:v21];
      PBReaderRecallMark();

LABEL_45:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_62;
      }
    }

    if (v16 <= 2)
    {
      if (v16 == 1)
      {
        v5->_hasRaw_absoluteTimestamp = 1;
        v39[0] = 0;
        v19 = [fromCopy position] + 8;
        if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 8, v20 <= objc_msgSend(fromCopy, "length")))
        {
          data3 = [fromCopy data];
          [data3 getBytes:v39 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        *&v5->_raw_absoluteTimestamp = v39[0];
        goto LABEL_45;
      }

      if (v16 == 2)
      {
        v17 = PBReaderReadData();
        v18 = 40;
        goto LABEL_44;
      }
    }

    else
    {
      switch(v16)
      {
        case 3:
          v17 = PBReaderReadString();
          v18 = 48;
          goto LABEL_44;
        case 4:
          v17 = PBReaderReadString();
          v18 = 56;
          goto LABEL_44;
        case 5:
          v17 = PBReaderReadString();
          v18 = 64;
LABEL_44:
          v23 = *(&v5->super.super.isa + v18);
          *(&v5->super.super.isa + v18) = v17;

          goto LABEL_45;
      }
    }

    goto LABEL_56;
  }

LABEL_62:
  v33 = [v6 copy];
  topics = v5->_topics;
  v5->_topics = v33;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_63:
    v36 = 0;
  }

  else
  {
LABEL_64:
    v36 = v5;
  }

  return v36;
}

- (NSString)description
{
  v15 = objc_alloc(MEMORY[0x1E696AEC0]);
  absoluteTimestamp = [(BMUniversalRecentsMetadata *)self absoluteTimestamp];
  userActivityData = [(BMUniversalRecentsMetadata *)self userActivityData];
  title = [(BMUniversalRecentsMetadata *)self title];
  activityType = [(BMUniversalRecentsMetadata *)self activityType];
  associatedBundleID = [(BMUniversalRecentsMetadata *)self associatedBundleID];
  associatedURLString = [(BMUniversalRecentsMetadata *)self associatedURLString];
  modeIdentifier = [(BMUniversalRecentsMetadata *)self modeIdentifier];
  topics = [(BMUniversalRecentsMetadata *)self topics];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMUniversalRecentsMetadata hasAssociatedImageRepresentation](self, "hasAssociatedImageRepresentation")}];
  uuid = [(BMUniversalRecentsMetadata *)self uuid];
  v12 = [v15 initWithFormat:@"BMUniversalRecentsMetadata with absoluteTimestamp: %@, userActivityData: %@, title: %@, activityType: %@, associatedBundleID: %@, associatedURLString: %@, modeIdentifier: %@, topics: %@, hasAssociatedImageRepresentation: %@, uuid: %@", absoluteTimestamp, userActivityData, title, activityType, associatedBundleID, associatedURLString, modeIdentifier, topics, v10, uuid];

  return v12;
}

- (BMUniversalRecentsMetadata)initWithAbsoluteTimestamp:(id)timestamp userActivityData:(id)data title:(id)title activityType:(id)type associatedBundleID:(id)d associatedURLString:(id)string modeIdentifier:(id)identifier topics:(id)self0 hasAssociatedImageRepresentation:(id)self1 uuid:(id)self2
{
  timestampCopy = timestamp;
  obj = data;
  dataCopy = data;
  v19 = timestampCopy;
  v40 = dataCopy;
  titleCopy = title;
  titleCopy2 = title;
  typeCopy = type;
  typeCopy2 = type;
  dCopy = d;
  dCopy2 = d;
  stringCopy = string;
  stringCopy2 = string;
  identifierCopy = identifier;
  identifierCopy2 = identifier;
  topicsCopy = topics;
  topicsCopy2 = topics;
  representationCopy = representation;
  uuidCopy = uuid;
  uuidCopy2 = uuid;
  v41.receiver = self;
  v41.super_class = BMUniversalRecentsMetadata;
  v23 = [(BMEventBase *)&v41 init];
  if (v23)
  {
    v23->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v19)
    {
      v23->_hasRaw_absoluteTimestamp = 1;
      [v19 timeIntervalSince1970];
    }

    else
    {
      v19 = 0;
      v23->_hasRaw_absoluteTimestamp = 0;
      v24 = -1.0;
    }

    v23->_raw_absoluteTimestamp = v24;
    objc_storeStrong(&v23->_userActivityData, obj);
    objc_storeStrong(&v23->_title, titleCopy);
    objc_storeStrong(&v23->_activityType, typeCopy);
    objc_storeStrong(&v23->_associatedBundleID, dCopy);
    objc_storeStrong(&v23->_associatedURLString, stringCopy);
    objc_storeStrong(&v23->_modeIdentifier, identifierCopy);
    objc_storeStrong(&v23->_topics, topicsCopy);
    if (representationCopy)
    {
      v23->_hasHasAssociatedImageRepresentation = 1;
      v23->_hasAssociatedImageRepresentation = [representationCopy BOOLValue];
    }

    else
    {
      v23->_hasHasAssociatedImageRepresentation = 0;
      v23->_hasAssociatedImageRepresentation = 0;
    }

    objc_storeStrong(&v23->_uuid, uuidCopy);
  }

  return v23;
}

+ (id)protoFields
{
  v15[10] = *MEMORY[0x1E69E9840];
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"absoluteTimestamp" number:1 type:0 subMessageClass:0];
  v15[0] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userActivityData" number:2 type:14 subMessageClass:0];
  v15[1] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"title" number:3 type:13 subMessageClass:0];
  v15[2] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"activityType" number:4 type:13 subMessageClass:0];
  v15[3] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"associatedBundleID" number:5 type:13 subMessageClass:0];
  v15[4] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"associatedURLString" number:6 type:13 subMessageClass:0];
  v15[5] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"modeIdentifier" number:7 type:13 subMessageClass:0];
  v15[6] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"topics" number:8 type:14 subMessageClass:objc_opt_class()];
  v15[7] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"hasAssociatedImageRepresentation" number:9 type:12 subMessageClass:0];
  v15[8] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"uuid" number:10 type:13 subMessageClass:0];
  v15[9] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:10];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)columns
{
  v15[10] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"absoluteTimestamp" dataType:3 requestOnly:0 fieldNumber:1 protoDataType:0 convertedType:2];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userActivityData" dataType:4 requestOnly:0 fieldNumber:2 protoDataType:14 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"title" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"activityType" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"associatedBundleID" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"associatedURLString" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"modeIdentifier" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"topics_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_37663];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"hasAssociatedImageRepresentation" dataType:0 requestOnly:0 fieldNumber:9 protoDataType:12 convertedType:0];
  v11 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"uuid" dataType:2 requestOnly:0 fieldNumber:10 protoDataType:13 convertedType:0];
  v15[0] = v2;
  v15[1] = v3;
  v15[2] = v4;
  v15[3] = v5;
  v15[4] = v6;
  v15[5] = v7;
  v15[6] = v8;
  v15[7] = v9;
  v15[8] = v10;
  v15[9] = v11;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:10];

  v12 = *MEMORY[0x1E69E9840];

  return v14;
}

id __37__BMUniversalRecentsMetadata_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _topicsJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  if (version)
  {
    if (version != 1)
    {
      v9 = 0;
      goto LABEL_9;
    }

    v6 = [objc_alloc(MEMORY[0x1E69C65B8]) initWithData:dataCopy];
    v7 = BMUniversalRecentsMetadata;
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x1E69C65B8]) initWithData:dataCopy];
    v7 = BMUniversalRecentsMetadata_v0;
  }

  v8 = [[v7 alloc] initByReadFrom:v6];
  v9 = v8;
  if (v8)
  {
    *(v8 + 36) = version;
  }

LABEL_9:

  return v9;
}

@end