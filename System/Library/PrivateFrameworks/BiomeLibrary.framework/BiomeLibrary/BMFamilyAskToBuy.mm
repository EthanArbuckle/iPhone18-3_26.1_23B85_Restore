@interface BMFamilyAskToBuy
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMFamilyAskToBuy)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMFamilyAskToBuy)initWithRequestID:(id)a3 eventTime:(id)a4 userID:(id)a5 actionUserID:(id)a6 status:(int)a7 itemTitle:(id)a8 itemDescription:(id)a9 itemLocalizedPrice:(id)a10 thumbnailPath:(id)a11 ageRating:(id)a12 starRating:(id)a13 productType:(id)a14 isActionUserDevice:(id)a15 storeLink:(id)a16;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMFamilyAskToBuy

+ (id)columns
{
  v19[14] = *MEMORY[0x1E69E9840];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"requestID" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"eventTime" dataType:1 requestOnly:0 fieldNumber:2 protoDataType:0 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userID" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"actionUserID" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"status" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"itemTitle" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"itemDescription" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"itemLocalizedPrice" dataType:2 requestOnly:0 fieldNumber:8 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"thumbnailPath" dataType:2 requestOnly:0 fieldNumber:9 protoDataType:13 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"ageRating" dataType:2 requestOnly:0 fieldNumber:10 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"starRating" dataType:1 requestOnly:0 fieldNumber:11 protoDataType:1 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"productType" dataType:2 requestOnly:0 fieldNumber:12 protoDataType:13 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isActionUserDevice" dataType:0 requestOnly:0 fieldNumber:13 protoDataType:12 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"storeLink" dataType:2 requestOnly:0 fieldNumber:14 protoDataType:13 convertedType:0];
  v19[0] = v18;
  v19[1] = v17;
  v19[2] = v16;
  v19[3] = v15;
  v19[4] = v2;
  v19[5] = v3;
  v19[6] = v4;
  v19[7] = v5;
  v19[8] = v6;
  v19[9] = v14;
  v19[10] = v7;
  v19[11] = v13;
  v19[12] = v8;
  v19[13] = v9;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:14];

  v10 = *MEMORY[0x1E69E9840];

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMFamilyAskToBuy *)self requestID];
    v7 = [v5 requestID];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMFamilyAskToBuy *)self requestID];
      v10 = [v5 requestID];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_55;
      }
    }

    if (-[BMFamilyAskToBuy hasEventTime](self, "hasEventTime") || [v5 hasEventTime])
    {
      if (![(BMFamilyAskToBuy *)self hasEventTime])
      {
        goto LABEL_55;
      }

      if (![v5 hasEventTime])
      {
        goto LABEL_55;
      }

      [(BMFamilyAskToBuy *)self eventTime];
      v14 = v13;
      [v5 eventTime];
      if (v14 != v15)
      {
        goto LABEL_55;
      }
    }

    v16 = [(BMFamilyAskToBuy *)self userID];
    v17 = [v5 userID];
    v18 = v17;
    if (v16 == v17)
    {
    }

    else
    {
      v19 = [(BMFamilyAskToBuy *)self userID];
      v20 = [v5 userID];
      v21 = [v19 isEqual:v20];

      if (!v21)
      {
        goto LABEL_55;
      }
    }

    v22 = [(BMFamilyAskToBuy *)self actionUserID];
    v23 = [v5 actionUserID];
    v24 = v23;
    if (v22 == v23)
    {
    }

    else
    {
      v25 = [(BMFamilyAskToBuy *)self actionUserID];
      v26 = [v5 actionUserID];
      v27 = [v25 isEqual:v26];

      if (!v27)
      {
        goto LABEL_55;
      }
    }

    v28 = [(BMFamilyAskToBuy *)self status];
    if (v28 == [v5 status])
    {
      v29 = [(BMFamilyAskToBuy *)self itemTitle];
      v30 = [v5 itemTitle];
      v31 = v30;
      if (v29 == v30)
      {
      }

      else
      {
        v32 = [(BMFamilyAskToBuy *)self itemTitle];
        v33 = [v5 itemTitle];
        v34 = [v32 isEqual:v33];

        if (!v34)
        {
          goto LABEL_55;
        }
      }

      v35 = [(BMFamilyAskToBuy *)self itemDescription];
      v36 = [v5 itemDescription];
      v37 = v36;
      if (v35 == v36)
      {
      }

      else
      {
        v38 = [(BMFamilyAskToBuy *)self itemDescription];
        v39 = [v5 itemDescription];
        v40 = [v38 isEqual:v39];

        if (!v40)
        {
          goto LABEL_55;
        }
      }

      v41 = [(BMFamilyAskToBuy *)self itemLocalizedPrice];
      v42 = [v5 itemLocalizedPrice];
      v43 = v42;
      if (v41 == v42)
      {
      }

      else
      {
        v44 = [(BMFamilyAskToBuy *)self itemLocalizedPrice];
        v45 = [v5 itemLocalizedPrice];
        v46 = [v44 isEqual:v45];

        if (!v46)
        {
          goto LABEL_55;
        }
      }

      v47 = [(BMFamilyAskToBuy *)self thumbnailPath];
      v48 = [v5 thumbnailPath];
      v49 = v48;
      if (v47 == v48)
      {
      }

      else
      {
        v50 = [(BMFamilyAskToBuy *)self thumbnailPath];
        v51 = [v5 thumbnailPath];
        v52 = [v50 isEqual:v51];

        if (!v52)
        {
          goto LABEL_55;
        }
      }

      v53 = [(BMFamilyAskToBuy *)self ageRating];
      v54 = [v5 ageRating];
      v55 = v54;
      if (v53 == v54)
      {
      }

      else
      {
        v56 = [(BMFamilyAskToBuy *)self ageRating];
        v57 = [v5 ageRating];
        v58 = [v56 isEqual:v57];

        if (!v58)
        {
          goto LABEL_55;
        }
      }

      if (-[BMFamilyAskToBuy hasStarRating](self, "hasStarRating") || [v5 hasStarRating])
      {
        if (![(BMFamilyAskToBuy *)self hasStarRating])
        {
          goto LABEL_55;
        }

        if (![v5 hasStarRating])
        {
          goto LABEL_55;
        }

        [(BMFamilyAskToBuy *)self starRating];
        v60 = v59;
        [v5 starRating];
        if (v60 != v61)
        {
          goto LABEL_55;
        }
      }

      v62 = [(BMFamilyAskToBuy *)self productType];
      v63 = [v5 productType];
      v64 = v63;
      if (v62 == v63)
      {
      }

      else
      {
        v65 = [(BMFamilyAskToBuy *)self productType];
        v66 = [v5 productType];
        v67 = [v65 isEqual:v66];

        if (!v67)
        {
          goto LABEL_55;
        }
      }

      if (!-[BMFamilyAskToBuy hasIsActionUserDevice](self, "hasIsActionUserDevice") && ![v5 hasIsActionUserDevice] || -[BMFamilyAskToBuy hasIsActionUserDevice](self, "hasIsActionUserDevice") && objc_msgSend(v5, "hasIsActionUserDevice") && (v68 = -[BMFamilyAskToBuy isActionUserDevice](self, "isActionUserDevice"), v68 == objc_msgSend(v5, "isActionUserDevice")))
      {
        v70 = [(BMFamilyAskToBuy *)self storeLink];
        v71 = [v5 storeLink];
        if (v70 == v71)
        {
          v12 = 1;
        }

        else
        {
          v72 = [(BMFamilyAskToBuy *)self storeLink];
          v73 = [v5 storeLink];
          v12 = [v72 isEqual:v73];
        }

        goto LABEL_56;
      }
    }

LABEL_55:
    v12 = 0;
LABEL_56:

    goto LABEL_57;
  }

  v12 = 0;
LABEL_57:

  return v12;
}

- (id)jsonDictionary
{
  v54[14] = *MEMORY[0x1E69E9840];
  v3 = [(BMFamilyAskToBuy *)self requestID];
  if (![(BMFamilyAskToBuy *)self hasEventTime]|| ([(BMFamilyAskToBuy *)self eventTime], fabs(v4) == INFINITY))
  {
    v6 = 0;
  }

  else
  {
    [(BMFamilyAskToBuy *)self eventTime];
    v5 = MEMORY[0x1E696AD98];
    [(BMFamilyAskToBuy *)self eventTime];
    v6 = [v5 numberWithDouble:?];
  }

  v7 = [(BMFamilyAskToBuy *)self userID];
  v8 = [(BMFamilyAskToBuy *)self actionUserID];
  v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMFamilyAskToBuy status](self, "status")}];
  v10 = [(BMFamilyAskToBuy *)self itemTitle];
  v52 = [(BMFamilyAskToBuy *)self itemDescription];
  v51 = [(BMFamilyAskToBuy *)self itemLocalizedPrice];
  v50 = [(BMFamilyAskToBuy *)self thumbnailPath];
  v49 = [(BMFamilyAskToBuy *)self ageRating];
  if (![(BMFamilyAskToBuy *)self hasStarRating]|| ([(BMFamilyAskToBuy *)self starRating], fabs(v11) == INFINITY))
  {
    v48 = 0;
  }

  else
  {
    [(BMFamilyAskToBuy *)self starRating];
    v12 = MEMORY[0x1E696AD98];
    [(BMFamilyAskToBuy *)self starRating];
    v48 = [v12 numberWithDouble:?];
  }

  v47 = [(BMFamilyAskToBuy *)self productType];
  if ([(BMFamilyAskToBuy *)self hasIsActionUserDevice])
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMFamilyAskToBuy isActionUserDevice](self, "isActionUserDevice")}];
  }

  else
  {
    v13 = 0;
  }

  v14 = [(BMFamilyAskToBuy *)self storeLink];
  v53[0] = @"requestID";
  v15 = v3;
  if (!v3)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v41 = v15;
  v54[0] = v15;
  v53[1] = @"eventTime";
  v16 = v6;
  if (!v6)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v40 = v16;
  v54[1] = v16;
  v53[2] = @"userID";
  v17 = v7;
  if (!v7)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v39 = v17;
  v54[2] = v17;
  v53[3] = @"actionUserID";
  v18 = v8;
  if (!v8)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v38 = v18;
  v54[3] = v18;
  v53[4] = @"status";
  v19 = v9;
  if (!v9)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v37 = v19;
  v54[4] = v19;
  v53[5] = @"itemTitle";
  v20 = v10;
  if (!v10)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v46 = v7;
  v36 = v20;
  v54[5] = v20;
  v53[6] = @"itemDescription";
  v21 = v52;
  if (!v52)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v45 = v9;
  v54[6] = v21;
  v53[7] = @"itemLocalizedPrice";
  v22 = v51;
  if (!v51)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v44 = v10;
  v54[7] = v22;
  v53[8] = @"thumbnailPath";
  v23 = v50;
  if (!v50)
  {
    v23 = [MEMORY[0x1E695DFB0] null];
  }

  v54[8] = v23;
  v53[9] = @"ageRating";
  v24 = v49;
  if (!v49)
  {
    v24 = [MEMORY[0x1E695DFB0] null];
  }

  v33 = v22;
  v35 = v21;
  v43 = v6;
  v54[9] = v24;
  v53[10] = @"starRating";
  v25 = v48;
  if (!v48)
  {
    v25 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = v3;
  v54[10] = v25;
  v53[11] = @"productType";
  v27 = v47;
  if (!v47)
  {
    v27 = [MEMORY[0x1E695DFB0] null];
  }

  v54[11] = v27;
  v53[12] = @"isActionUserDevice";
  v28 = v13;
  v29 = v13;
  if (!v13)
  {
    v28 = [MEMORY[0x1E695DFB0] null];
  }

  v54[12] = v28;
  v53[13] = @"storeLink";
  v30 = v14;
  if (!v14)
  {
    v30 = [MEMORY[0x1E695DFB0] null];
  }

  v54[13] = v30;
  v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:v53 count:{14, v33}];
  if (!v14)
  {
  }

  if (!v29)
  {
  }

  if (!v47)
  {
  }

  if (!v48)
  {
  }

  if (!v49)
  {
  }

  if (!v50)
  {
  }

  if (!v51)
  {
  }

  if (!v52)
  {
  }

  if (v44)
  {
    if (v45)
    {
      goto LABEL_58;
    }
  }

  else
  {

    if (v45)
    {
LABEL_58:
      if (v8)
      {
        goto LABEL_59;
      }

      goto LABEL_67;
    }
  }

  if (v8)
  {
LABEL_59:
    if (v46)
    {
      goto LABEL_60;
    }

    goto LABEL_68;
  }

LABEL_67:

  if (v46)
  {
LABEL_60:
    if (v43)
    {
      goto LABEL_61;
    }

LABEL_69:

    if (v26)
    {
      goto LABEL_62;
    }

    goto LABEL_70;
  }

LABEL_68:

  if (!v43)
  {
    goto LABEL_69;
  }

LABEL_61:
  if (v26)
  {
    goto LABEL_62;
  }

LABEL_70:

LABEL_62:
  v31 = *MEMORY[0x1E69E9840];

  return v42;
}

- (BMFamilyAskToBuy)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v171[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"requestID"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"eventTime"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v10 = 0;
          v27 = 0;
          goto LABEL_100;
        }

        v28 = a4;
        v29 = self;
        v30 = objc_alloc(MEMORY[0x1E696ABC0]);
        v137 = v8;
        v31 = *MEMORY[0x1E698F240];
        v168 = *MEMORY[0x1E696A578];
        v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"eventTime"];
        v169 = v32;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v169 forKeys:&v168 count:1];
        v33 = v30;
        self = v29;
        v34 = v32;
        v27 = 0;
        *v28 = [v33 initWithDomain:v31 code:2 userInfo:v11];
        v10 = 0;
        v8 = v137;
        goto LABEL_99;
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [v6 objectForKeyedSubscript:@"userID"];
    v143 = v11;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v18 = v8;
      v19 = self;
      v126 = v7;
      v20 = v9;
      v21 = v10;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v34 = 0;
          v27 = 0;
          v9 = v20;
          v7 = v126;
          v8 = v18;
          goto LABEL_99;
        }

        v139 = objc_alloc(MEMORY[0x1E696ABC0]);
        v35 = *MEMORY[0x1E698F240];
        v166 = *MEMORY[0x1E696A578];
        v141 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"userID"];
        v167 = v141;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:&v167 forKeys:&v166 count:1];
        v37 = v36 = a4;
        v38 = v35;
        v11 = v143;
        v34 = 0;
        v27 = 0;
        *v36 = [v139 initWithDomain:v38 code:2 userInfo:v37];
        v39 = v18;
        v10 = v21;
        v9 = v20;
        v7 = v126;
        v12 = v37;
        self = v19;
        v8 = v39;
LABEL_98:

LABEL_99:
        goto LABEL_100;
      }

      v138 = v11;
      v9 = v20;
      v7 = v126;
      v8 = v18;
    }

    else
    {
      v138 = 0;
    }

    v12 = [v6 objectForKeyedSubscript:@"actionUserID"];
    v135 = v10;
    v142 = a4;
    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v141 = 0;
          v27 = 0;
          v34 = v138;
          goto LABEL_98;
        }

        v40 = objc_alloc(MEMORY[0x1E696ABC0]);
        v41 = self;
        v42 = v12;
        v43 = v40;
        v127 = v7;
        v44 = v9;
        v45 = v8;
        v46 = v41;
        v47 = *MEMORY[0x1E698F240];
        v164 = *MEMORY[0x1E696A578];
        v134 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"actionUserID"];
        v165 = v134;
        v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v165 forKeys:&v164 count:1];
        v49 = v43;
        v12 = v42;
        v50 = v47;
        self = v46;
        v15 = v48;
        v8 = v45;
        v9 = v44;
        v7 = v127;
        v141 = 0;
        v27 = 0;
        *a4 = [v49 initWithDomain:v50 code:2 userInfo:v48];
        v34 = v138;
        goto LABEL_97;
      }

      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = [v6 objectForKeyedSubscript:@"status"];
    v131 = v14;
    v132 = v12;
    v125 = v9;
    v140 = self;
    v141 = v13;
    v136 = v8;
    if (v14 && (v15 = v14, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v7;
        v17 = v9;
        v134 = v15;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!v142)
          {
            v134 = 0;
            v27 = 0;
            v34 = v138;
            goto LABEL_97;
          }

          v92 = objc_alloc(MEMORY[0x1E696ABC0]);
          v130 = v7;
          v93 = *MEMORY[0x1E698F240];
          v162 = *MEMORY[0x1E696A578];
          v133 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"status"];
          v163 = v133;
          v67 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v163 forKeys:&v162 count:1];
          v94 = v93;
          v7 = v130;
          v134 = 0;
          v27 = 0;
          *v142 = [v92 initWithDomain:v94 code:2 userInfo:v67];
          v34 = v138;
          v12 = v132;
LABEL_96:

          v8 = v136;
LABEL_97:

          v10 = v135;
          goto LABEL_98;
        }

        v16 = v7;
        v17 = v9;
        v134 = [MEMORY[0x1E696AD98] numberWithInt:BMFamilyAskToBuyRequestStatusFromString(v15)];
      }
    }

    else
    {
      v16 = v7;
      v17 = v9;
      v134 = 0;
    }

    v51 = [v6 objectForKeyedSubscript:@"itemTitle"];
    if (v51 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!v142)
        {
          v133 = 0;
          v27 = 0;
          v67 = v51;
          v9 = v17;
          v7 = v16;
          v34 = v138;
          self = v140;
          goto LABEL_95;
        }

        v62 = objc_alloc(MEMORY[0x1E696ABC0]);
        v128 = v16;
        v63 = *MEMORY[0x1E698F240];
        v160 = *MEMORY[0x1E696A578];
        v52 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"itemTitle"];
        v161 = v52;
        v64 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v161 forKeys:&v160 count:1];
        v65 = v62;
        v12 = v132;
        v66 = v63;
        v67 = v51;
        self = v140;
        v9 = v125;
        v7 = v128;
        v124 = v64;
        v133 = 0;
        v27 = 0;
        *v142 = [v65 initWithDomain:v66 code:2 userInfo:?];
        v34 = v138;
LABEL_94:

LABEL_95:
        v15 = v131;
        goto LABEL_96;
      }

      v122 = v51;
      v133 = v51;
    }

    else
    {
      v122 = v51;
      v133 = 0;
    }

    v52 = [v6 objectForKeyedSubscript:@"itemDescription"];
    v9 = v17;
    v124 = v52;
    if (v52)
    {
      objc_opt_class();
      v7 = v16;
      if (objc_opt_isKindOfClass())
      {
        v52 = 0;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!v142)
          {
            v52 = 0;
            v27 = 0;
            v34 = v138;
            self = v140;
            v67 = v122;
            goto LABEL_94;
          }

          v70 = objc_alloc(MEMORY[0x1E696ABC0]);
          v71 = *MEMORY[0x1E698F240];
          v158 = *MEMORY[0x1E696A578];
          v123 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"itemDescription"];
          v159 = v123;
          v72 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v159 forKeys:&v158 count:1];
          v73 = v70;
          self = v140;
          v9 = v125;
          v121 = v72;
          v52 = 0;
          v27 = 0;
          *v142 = [v73 initWithDomain:v71 code:2 userInfo:?];
          v34 = v138;
          goto LABEL_126;
        }

        v52 = v52;
      }
    }

    else
    {
      v7 = v16;
    }

    v53 = [v6 objectForKeyedSubscript:@"itemLocalizedPrice"];
    v121 = v53;
    if (!v53 || (v54 = v53, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v123 = 0;
      goto LABEL_50;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v123 = v54;
LABEL_50:
      v55 = [v6 objectForKeyedSubscript:@"thumbnailPath"];
      v119 = v55;
      if (!v55 || (v56 = v55, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v57 = v52;
        v120 = 0;
LABEL_53:
        v58 = [v6 objectForKeyedSubscript:@"ageRating"];
        v117 = v58;
        if (v58 && (v59 = v58, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!v142)
            {
              v118 = 0;
              v27 = 0;
              v34 = v138;
              self = v140;
              v67 = v122;
              v52 = v57;
              v9 = v125;
              goto LABEL_91;
            }

            v95 = objc_alloc(MEMORY[0x1E696ABC0]);
            v96 = *MEMORY[0x1E698F240];
            v152 = *MEMORY[0x1E696A578];
            v116 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"ageRating"];
            v153 = v116;
            v97 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v153 forKeys:&v152 count:1];
            v98 = v95;
            self = v140;
            v52 = v57;
            v9 = v125;
            v115 = v97;
            v118 = 0;
            v27 = 0;
            *v142 = [v98 initWithDomain:v96 code:2 userInfo:?];
            v34 = v138;
            v67 = v122;
            goto LABEL_90;
          }

          v118 = v59;
        }

        else
        {
          v118 = 0;
        }

        v60 = [v6 objectForKeyedSubscript:@"starRating"];
        v52 = v57;
        v115 = v60;
        if (v60)
        {
          v61 = v60;
          objc_opt_class();
          v9 = v125;
          if (objc_opt_isKindOfClass())
          {
            v116 = 0;
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (!v142)
              {
                v116 = 0;
                v27 = 0;
                v34 = v138;
                self = v140;
                v67 = v122;
                v9 = v125;
                goto LABEL_90;
              }

              v99 = objc_alloc(MEMORY[0x1E696ABC0]);
              v100 = *MEMORY[0x1E698F240];
              v150 = *MEMORY[0x1E696A578];
              v129 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"starRating"];
              v151 = v129;
              v101 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v151 forKeys:&v150 count:1];
              v102 = v99;
              self = v140;
              v116 = 0;
              v27 = 0;
              *v142 = [v102 initWithDomain:v100 code:2 userInfo:v101];
              v81 = v101;
              v34 = v138;
              v67 = v122;
              v9 = v125;
LABEL_89:

              v12 = v132;
LABEL_90:

LABEL_91:
LABEL_92:

LABEL_93:
              goto LABEL_94;
            }

            v116 = v61;
          }
        }

        else
        {
          v116 = 0;
          v9 = v125;
        }

        v68 = [v6 objectForKeyedSubscript:@"productType"];
        if (v68)
        {
          v69 = 0x1E695D000uLL;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v112 = v68;
            v129 = 0;
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v81 = v68;
              if (!v142)
              {
                v129 = 0;
                v27 = 0;
                goto LABEL_88;
              }

              v103 = objc_alloc(MEMORY[0x1E696ABC0]);
              v104 = *MEMORY[0x1E698F240];
              v148 = *MEMORY[0x1E696A578];
              v113 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"productType"];
              v149 = v113;
              v74 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v149 forKeys:&v148 count:1];
              v129 = 0;
              v27 = 0;
              *v142 = [v103 initWithDomain:v104 code:2 userInfo:v74];
LABEL_87:

LABEL_88:
              v34 = v138;
              self = v140;
              v67 = v122;
              goto LABEL_89;
            }

            v112 = v68;
            v129 = v68;
          }
        }

        else
        {
          v112 = 0;
          v129 = 0;
          v69 = 0x1E695D000;
        }

        v74 = [v6 objectForKeyedSubscript:@"isActionUserDevice"];
        if (v74 && (v75 = *(v69 + 4016), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!v142)
            {
              v113 = 0;
              v27 = 0;
              v81 = v112;
              goto LABEL_87;
            }

            v77 = v140;
            v114 = objc_alloc(MEMORY[0x1E696ABC0]);
            v111 = *MEMORY[0x1E698F240];
            v146 = *MEMORY[0x1E696A578];
            v80 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isActionUserDevice"];
            v147 = v80;
            v78 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v147 forKeys:&v146 count:1];
            v105 = [v114 initWithDomain:v111 code:2 userInfo:v78];
            v113 = 0;
            v27 = 0;
            *v142 = v105;
            v81 = v112;
            goto LABEL_86;
          }

          v110 = v52;
          v76 = v142;
          v77 = v140;
          v113 = v74;
        }

        else
        {
          v110 = v52;
          v76 = v142;
          v77 = v140;
          v113 = 0;
        }

        v78 = [v6 objectForKeyedSubscript:@"storeLink"];
        if (v78 && (v79 = *(v69 + 4016), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          v81 = v112;
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (v76)
            {
              v109 = objc_alloc(MEMORY[0x1E696ABC0]);
              v108 = *MEMORY[0x1E698F240];
              v144 = *MEMORY[0x1E696A578];
              v106 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"storeLink"];
              v145 = v106;
              v107 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v145 forKeys:&v144 count:1];
              *v76 = [v109 initWithDomain:v108 code:2 userInfo:v107];
            }

            v80 = 0;
            v27 = 0;
            v52 = v110;
            goto LABEL_86;
          }

          v80 = v78;
        }

        else
        {
          v80 = 0;
          v81 = v112;
        }

        v52 = v110;
        v27 = -[BMFamilyAskToBuy initWithRequestID:eventTime:userID:actionUserID:status:itemTitle:itemDescription:itemLocalizedPrice:thumbnailPath:ageRating:starRating:productType:isActionUserDevice:storeLink:](v77, "initWithRequestID:eventTime:userID:actionUserID:status:itemTitle:itemDescription:itemLocalizedPrice:thumbnailPath:ageRating:starRating:productType:isActionUserDevice:storeLink:", v136, v135, v138, v141, [v134 intValue], v133, v110, v123, v120, v118, v116, v129, v113, v80);
        v77 = v27;
LABEL_86:
        v140 = v77;

        v11 = v143;
        goto LABEL_87;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v57 = v52;
        v120 = v56;
        goto LABEL_53;
      }

      if (v142)
      {
        v88 = objc_alloc(MEMORY[0x1E696ABC0]);
        v89 = *MEMORY[0x1E698F240];
        v154 = *MEMORY[0x1E696A578];
        v118 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"thumbnailPath"];
        v155 = v118;
        v90 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v155 forKeys:&v154 count:1];
        v91 = v88;
        self = v140;
        v9 = v125;
        v117 = v90;
        v120 = 0;
        v27 = 0;
        *v142 = [v91 initWithDomain:v89 code:2 userInfo:?];
        v34 = v138;
        v67 = v122;
        goto LABEL_91;
      }

      v120 = 0;
      v27 = 0;
      v34 = v138;
      self = v140;
LABEL_131:
      v67 = v122;
      goto LABEL_92;
    }

    if (v142)
    {
      v84 = objc_alloc(MEMORY[0x1E696ABC0]);
      v85 = *MEMORY[0x1E698F240];
      v156 = *MEMORY[0x1E696A578];
      v120 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"itemLocalizedPrice"];
      v157 = v120;
      v86 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v157 forKeys:&v156 count:1];
      v87 = v84;
      self = v140;
      v9 = v125;
      v119 = v86;
      v123 = 0;
      v27 = 0;
      *v142 = [v87 initWithDomain:v85 code:2 userInfo:?];
      v34 = v138;
      goto LABEL_131;
    }

    v123 = 0;
    v27 = 0;
    v34 = v138;
    self = v140;
LABEL_126:
    v67 = v122;
    goto LABEL_93;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    goto LABEL_4;
  }

  if (a4)
  {
    v22 = self;
    v23 = objc_alloc(MEMORY[0x1E696ABC0]);
    v24 = *MEMORY[0x1E698F240];
    v170 = *MEMORY[0x1E696A578];
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"requestID"];
    v171[0] = v10;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v171 forKeys:&v170 count:1];
    v25 = v23;
    self = v22;
    v26 = [v25 initWithDomain:v24 code:2 userInfo:v9];
    v8 = 0;
    v27 = 0;
    *a4 = v26;
LABEL_100:

    goto LABEL_101;
  }

  v8 = 0;
  v27 = 0;
LABEL_101:

  v82 = *MEMORY[0x1E69E9840];
  return v27;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMFamilyAskToBuy *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
  if (self->_requestID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasEventTime)
  {
    eventTime = self->_eventTime;
    PBDataWriterWriteDoubleField();
  }

  if (self->_userID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_actionUserID)
  {
    PBDataWriterWriteStringField();
  }

  status = self->_status;
  PBDataWriterWriteUint32Field();
  if (self->_itemTitle)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_itemDescription)
  {
    PBDataWriterWriteStringField();
  }

  v6 = v9;
  if (self->_itemLocalizedPrice)
  {
    PBDataWriterWriteStringField();
    v6 = v9;
  }

  if (self->_thumbnailPath)
  {
    PBDataWriterWriteStringField();
    v6 = v9;
  }

  if (self->_ageRating)
  {
    PBDataWriterWriteStringField();
    v6 = v9;
  }

  if (self->_hasStarRating)
  {
    starRating = self->_starRating;
    PBDataWriterWriteFloatField();
    v6 = v9;
  }

  if (self->_productType)
  {
    PBDataWriterWriteStringField();
    v6 = v9;
  }

  if (self->_hasIsActionUserDevice)
  {
    isActionUserDevice = self->_isActionUserDevice;
    PBDataWriterWriteBOOLField();
    v6 = v9;
  }

  if (self->_storeLink)
  {
    PBDataWriterWriteStringField();
    v6 = v9;
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v43.receiver = self;
  v43.super_class = BMFamilyAskToBuy;
  v5 = [(BMEventBase *)&v43 init];
  if (!v5)
  {
    goto LABEL_71;
  }

  v6 = [v4 position];
  if (v6 < [v4 length])
  {
    do
    {
      if ([v4 hasError])
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v44) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v44 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (LOBYTE(v44) & 0x7F) << v7;
        if ((LOBYTE(v44) & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        v13 = v8++ >= 9;
        if (v13)
        {
          v14 = 0;
          goto LABEL_16;
        }
      }

      v14 = [v4 hasError] ? 0 : v9;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        break;
      }

      switch((v14 >> 3))
      {
        case 1u:
          v15 = PBReaderReadString();
          v16 = 32;
          goto LABEL_53;
        case 2u:
          v5->_hasEventTime = 1;
          v44 = 0.0;
          v31 = [v4 position] + 8;
          if (v31 >= [v4 position] && (v32 = objc_msgSend(v4, "position") + 8, v32 <= objc_msgSend(v4, "length")))
          {
            v37 = [v4 data];
            [v37 getBytes:&v44 range:{objc_msgSend(v4, "position"), 8}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
          }

          else
          {
            [v4 _setError];
          }

          v38 = v44;
          v39 = 40;
          goto LABEL_68;
        case 3u:
          v15 = PBReaderReadString();
          v16 = 48;
          goto LABEL_53;
        case 4u:
          v15 = PBReaderReadString();
          v16 = 56;
          goto LABEL_53;
        case 5u:
          v17 = 0;
          v18 = 0;
          v19 = 0;
          while (1)
          {
            LOBYTE(v44) = 0;
            v20 = [v4 position] + 1;
            if (v20 >= [v4 position] && (v21 = objc_msgSend(v4, "position") + 1, v21 <= objc_msgSend(v4, "length")))
            {
              v22 = [v4 data];
              [v22 getBytes:&v44 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v19 |= (LOBYTE(v44) & 0x7F) << v17;
            if ((LOBYTE(v44) & 0x80) == 0)
            {
              break;
            }

            v17 += 7;
            if (v18++ > 8)
            {
              goto LABEL_60;
            }
          }

          if (([v4 hasError] & 1) != 0 || v19 > 3)
          {
LABEL_60:
            LODWORD(v19) = 0;
          }

          v5->_status = v19;
          goto LABEL_54;
        case 6u:
          v15 = PBReaderReadString();
          v16 = 64;
          goto LABEL_53;
        case 7u:
          v15 = PBReaderReadString();
          v16 = 72;
          goto LABEL_53;
        case 8u:
          v15 = PBReaderReadString();
          v16 = 80;
          goto LABEL_53;
        case 9u:
          v15 = PBReaderReadString();
          v16 = 88;
          goto LABEL_53;
        case 0xAu:
          v15 = PBReaderReadString();
          v16 = 96;
          goto LABEL_53;
        case 0xBu:
          v5->_hasStarRating = 1;
          LODWORD(v44) = 0;
          v33 = [v4 position] + 4;
          if (v33 >= [v4 position] && (v34 = objc_msgSend(v4, "position") + 4, v34 <= objc_msgSend(v4, "length")))
          {
            v40 = [v4 data];
            [v40 getBytes:&v44 range:{objc_msgSend(v4, "position"), 4}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 4}];
          }

          else
          {
            [v4 _setError];
          }

          v38 = *&v44;
          v39 = 104;
LABEL_68:
          *(&v5->super.super.isa + v39) = v38;
          goto LABEL_54;
        case 0xCu:
          v15 = PBReaderReadString();
          v16 = 112;
          goto LABEL_53;
        case 0xDu:
          v24 = 0;
          v25 = 0;
          v26 = 0;
          v5->_hasIsActionUserDevice = 1;
          break;
        case 0xEu:
          v15 = PBReaderReadString();
          v16 = 120;
LABEL_53:
          v35 = *(&v5->super.super.isa + v16);
          *(&v5->super.super.isa + v16) = v15;

          goto LABEL_54;
        default:
          if (!PBReaderSkipValueWithTag())
          {
            goto LABEL_70;
          }

          goto LABEL_54;
      }

      while (1)
      {
        LOBYTE(v44) = 0;
        v27 = [v4 position] + 1;
        if (v27 >= [v4 position] && (v28 = objc_msgSend(v4, "position") + 1, v28 <= objc_msgSend(v4, "length")))
        {
          v29 = [v4 data];
          [v29 getBytes:&v44 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v26 |= (LOBYTE(v44) & 0x7F) << v24;
        if ((LOBYTE(v44) & 0x80) == 0)
        {
          break;
        }

        v24 += 7;
        v13 = v25++ >= 9;
        if (v13)
        {
          LOBYTE(v30) = 0;
          goto LABEL_63;
        }
      }

      v30 = (v26 != 0) & ~[v4 hasError];
LABEL_63:
      v5->_isActionUserDevice = v30;
LABEL_54:
      v36 = [v4 position];
    }

    while (v36 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_70:
    v41 = 0;
  }

  else
  {
LABEL_71:
    v41 = v5;
  }

  return v41;
}

- (NSString)description
{
  v17 = objc_alloc(MEMORY[0x1E696AEC0]);
  v21 = [(BMFamilyAskToBuy *)self requestID];
  v3 = MEMORY[0x1E696AD98];
  [(BMFamilyAskToBuy *)self eventTime];
  v20 = [v3 numberWithDouble:?];
  v19 = [(BMFamilyAskToBuy *)self userID];
  v16 = [(BMFamilyAskToBuy *)self actionUserID];
  v15 = BMFamilyAskToBuyRequestStatusAsString([(BMFamilyAskToBuy *)self status]);
  v4 = [(BMFamilyAskToBuy *)self itemTitle];
  v5 = [(BMFamilyAskToBuy *)self itemDescription];
  v6 = [(BMFamilyAskToBuy *)self itemLocalizedPrice];
  v7 = [(BMFamilyAskToBuy *)self thumbnailPath];
  v8 = [(BMFamilyAskToBuy *)self ageRating];
  v9 = MEMORY[0x1E696AD98];
  [(BMFamilyAskToBuy *)self starRating];
  v10 = [v9 numberWithDouble:?];
  v11 = [(BMFamilyAskToBuy *)self productType];
  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMFamilyAskToBuy isActionUserDevice](self, "isActionUserDevice")}];
  v13 = [(BMFamilyAskToBuy *)self storeLink];
  v18 = [v17 initWithFormat:@"BMFamilyAskToBuy with requestID: %@, eventTime: %@, userID: %@, actionUserID: %@, status: %@, itemTitle: %@, itemDescription: %@, itemLocalizedPrice: %@, thumbnailPath: %@, ageRating: %@, starRating: %@, productType: %@, isActionUserDevice: %@, storeLink: %@", v21, v20, v19, v16, v15, v4, v5, v6, v7, v8, v10, v11, v12, v13];

  return v18;
}

- (BMFamilyAskToBuy)initWithRequestID:(id)a3 eventTime:(id)a4 userID:(id)a5 actionUserID:(id)a6 status:(int)a7 itemTitle:(id)a8 itemDescription:(id)a9 itemLocalizedPrice:(id)a10 thumbnailPath:(id)a11 ageRating:(id)a12 starRating:(id)a13 productType:(id)a14 isActionUserDevice:(id)a15 storeLink:(id)a16
{
  v43 = a3;
  v20 = a4;
  v32 = a5;
  v42 = a5;
  v33 = a6;
  v41 = a6;
  v40 = a8;
  v39 = a9;
  v38 = a10;
  v37 = a11;
  v36 = a12;
  v21 = v20;
  v22 = a13;
  v23 = a14;
  v24 = a15;
  v25 = a16;
  v44.receiver = self;
  v44.super_class = BMFamilyAskToBuy;
  v26 = [(BMEventBase *)&v44 init];
  if (v26)
  {
    v26->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v26->_requestID, a3);
    if (v21)
    {
      v26->_hasEventTime = 1;
      [v21 doubleValue];
    }

    else
    {
      v26->_hasEventTime = 0;
      v27 = -1.0;
    }

    v26->_eventTime = v27;
    objc_storeStrong(&v26->_userID, v32);
    objc_storeStrong(&v26->_actionUserID, v33);
    v26->_status = a7;
    objc_storeStrong(&v26->_itemTitle, a8);
    objc_storeStrong(&v26->_itemDescription, a9);
    objc_storeStrong(&v26->_itemLocalizedPrice, a10);
    objc_storeStrong(&v26->_thumbnailPath, a11);
    objc_storeStrong(&v26->_ageRating, a12);
    if (v22)
    {
      v26->_hasStarRating = 1;
      [v22 floatValue];
      v29 = v28;
    }

    else
    {
      v26->_hasStarRating = 0;
      v29 = -1.0;
    }

    v26->_starRating = v29;
    objc_storeStrong(&v26->_productType, a14);
    if (v24)
    {
      v26->_hasIsActionUserDevice = 1;
      v26->_isActionUserDevice = [v24 BOOLValue];
    }

    else
    {
      v26->_hasIsActionUserDevice = 0;
      v26->_isActionUserDevice = 0;
    }

    objc_storeStrong(&v26->_storeLink, a16);
  }

  return v26;
}

+ (id)protoFields
{
  v19[14] = *MEMORY[0x1E69E9840];
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"requestID" number:1 type:13 subMessageClass:0];
  v19[0] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"eventTime" number:2 type:0 subMessageClass:0];
  v19[1] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userID" number:3 type:13 subMessageClass:0];
  v19[2] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"actionUserID" number:4 type:13 subMessageClass:0];
  v19[3] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"status" number:5 type:4 subMessageClass:0];
  v19[4] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"itemTitle" number:6 type:13 subMessageClass:0];
  v19[5] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"itemDescription" number:7 type:13 subMessageClass:0];
  v19[6] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"itemLocalizedPrice" number:8 type:13 subMessageClass:0];
  v19[7] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"thumbnailPath" number:9 type:13 subMessageClass:0];
  v19[8] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"ageRating" number:10 type:13 subMessageClass:0];
  v19[9] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"starRating" number:11 type:1 subMessageClass:0];
  v19[10] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"productType" number:12 type:13 subMessageClass:0];
  v19[11] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isActionUserDevice" number:13 type:12 subMessageClass:0];
  v19[12] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"storeLink" number:14 type:13 subMessageClass:0];
  v19[13] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:14];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4 == 2)
  {
    v4 = MEMORY[0x1E69C65B8];
    v5 = a3;
    v6 = [[v4 alloc] initWithData:v5];

    v7 = [[BMFamilyAskToBuy alloc] initByReadFrom:v6];
    v8 = v7;
    if (v7)
    {
      v7[5] = 2;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end