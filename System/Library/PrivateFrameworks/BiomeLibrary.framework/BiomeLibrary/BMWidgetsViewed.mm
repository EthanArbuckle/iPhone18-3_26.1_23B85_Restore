@interface BMWidgetsViewed
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMWidgetsViewed)initWithBudgetID:(id)d bundleID:(id)iD endDate:(id)date extensionBundleID:(id)bundleID inStack:(id)stack pageID:(id)pageID startDate:(id)startDate timeUntilExpiration:(id)self0 viewID:(id)self1;
- (BMWidgetsViewed)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSDate)endDate;
- (NSDate)startDate;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMWidgetsViewed

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    budgetID = [(BMWidgetsViewed *)self budgetID];
    budgetID2 = [v5 budgetID];
    v8 = budgetID2;
    if (budgetID == budgetID2)
    {
    }

    else
    {
      budgetID3 = [(BMWidgetsViewed *)self budgetID];
      budgetID4 = [v5 budgetID];
      v11 = [budgetID3 isEqual:budgetID4];

      if (!v11)
      {
        goto LABEL_40;
      }
    }

    bundleID = [(BMWidgetsViewed *)self bundleID];
    bundleID2 = [v5 bundleID];
    v15 = bundleID2;
    if (bundleID == bundleID2)
    {
    }

    else
    {
      bundleID3 = [(BMWidgetsViewed *)self bundleID];
      bundleID4 = [v5 bundleID];
      v18 = [bundleID3 isEqual:bundleID4];

      if (!v18)
      {
        goto LABEL_40;
      }
    }

    endDate = [(BMWidgetsViewed *)self endDate];
    endDate2 = [v5 endDate];
    v21 = endDate2;
    if (endDate == endDate2)
    {
    }

    else
    {
      endDate3 = [(BMWidgetsViewed *)self endDate];
      endDate4 = [v5 endDate];
      v24 = [endDate3 isEqual:endDate4];

      if (!v24)
      {
        goto LABEL_40;
      }
    }

    extensionBundleID = [(BMWidgetsViewed *)self extensionBundleID];
    extensionBundleID2 = [v5 extensionBundleID];
    v27 = extensionBundleID2;
    if (extensionBundleID == extensionBundleID2)
    {
    }

    else
    {
      extensionBundleID3 = [(BMWidgetsViewed *)self extensionBundleID];
      extensionBundleID4 = [v5 extensionBundleID];
      v30 = [extensionBundleID3 isEqual:extensionBundleID4];

      if (!v30)
      {
        goto LABEL_40;
      }
    }

    if (-[BMWidgetsViewed hasInStack](self, "hasInStack") || [v5 hasInStack])
    {
      if (![(BMWidgetsViewed *)self hasInStack])
      {
        goto LABEL_40;
      }

      if (![v5 hasInStack])
      {
        goto LABEL_40;
      }

      inStack = [(BMWidgetsViewed *)self inStack];
      if (inStack != [v5 inStack])
      {
        goto LABEL_40;
      }
    }

    if (-[BMWidgetsViewed hasPageID](self, "hasPageID") || [v5 hasPageID])
    {
      if (![(BMWidgetsViewed *)self hasPageID])
      {
        goto LABEL_40;
      }

      if (![v5 hasPageID])
      {
        goto LABEL_40;
      }

      pageID = [(BMWidgetsViewed *)self pageID];
      if (pageID != [v5 pageID])
      {
        goto LABEL_40;
      }
    }

    startDate = [(BMWidgetsViewed *)self startDate];
    startDate2 = [v5 startDate];
    v35 = startDate2;
    if (startDate == startDate2)
    {
    }

    else
    {
      startDate3 = [(BMWidgetsViewed *)self startDate];
      startDate4 = [v5 startDate];
      v38 = [startDate3 isEqual:startDate4];

      if (!v38)
      {
        goto LABEL_40;
      }
    }

    if (!-[BMWidgetsViewed hasTimeUntilExpiration](self, "hasTimeUntilExpiration") && ![v5 hasTimeUntilExpiration] || -[BMWidgetsViewed hasTimeUntilExpiration](self, "hasTimeUntilExpiration") && objc_msgSend(v5, "hasTimeUntilExpiration") && (-[BMWidgetsViewed timeUntilExpiration](self, "timeUntilExpiration"), v40 = v39, objc_msgSend(v5, "timeUntilExpiration"), v40 == v41))
    {
      viewID = [(BMWidgetsViewed *)self viewID];
      viewID2 = [v5 viewID];
      if (viewID == viewID2)
      {
        v12 = 1;
      }

      else
      {
        viewID3 = [(BMWidgetsViewed *)self viewID];
        viewID4 = [v5 viewID];
        v12 = [viewID3 isEqual:viewID4];
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

- (NSDate)startDate
{
  if (self->_hasRaw_startDate)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_startDate];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)endDate
{
  if (self->_hasRaw_endDate)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_endDate];
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
  v43[9] = *MEMORY[0x1E69E9840];
  budgetID = [(BMWidgetsViewed *)self budgetID];
  bundleID = [(BMWidgetsViewed *)self bundleID];
  endDate = [(BMWidgetsViewed *)self endDate];
  if (endDate)
  {
    v6 = MEMORY[0x1E696AD98];
    endDate2 = [(BMWidgetsViewed *)self endDate];
    [endDate2 timeIntervalSince1970];
    v8 = [v6 numberWithDouble:?];
  }

  else
  {
    v8 = 0;
  }

  extensionBundleID = [(BMWidgetsViewed *)self extensionBundleID];
  if ([(BMWidgetsViewed *)self hasInStack])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMWidgetsViewed inStack](self, "inStack")}];
  }

  else
  {
    v10 = 0;
  }

  if ([(BMWidgetsViewed *)self hasPageID])
  {
    v41 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMWidgetsViewed pageID](self, "pageID")}];
  }

  else
  {
    v41 = 0;
  }

  startDate = [(BMWidgetsViewed *)self startDate];
  if (startDate)
  {
    v12 = MEMORY[0x1E696AD98];
    [(BMWidgetsViewed *)self startDate];
    v14 = v13 = v10;
    [v14 timeIntervalSince1970];
    v40 = [v12 numberWithDouble:?];

    v10 = v13;
  }

  else
  {
    v40 = 0;
  }

  if (![(BMWidgetsViewed *)self hasTimeUntilExpiration]|| ([(BMWidgetsViewed *)self timeUntilExpiration], fabs(v15) == INFINITY))
  {
    v17 = 0;
  }

  else
  {
    [(BMWidgetsViewed *)self timeUntilExpiration];
    v16 = MEMORY[0x1E696AD98];
    [(BMWidgetsViewed *)self timeUntilExpiration];
    v17 = [v16 numberWithDouble:?];
  }

  viewID = [(BMWidgetsViewed *)self viewID];
  v42[0] = @"budgetID";
  null = budgetID;
  if (!budgetID)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v36 = null;
  v43[0] = null;
  v42[1] = @"bundleID";
  null2 = bundleID;
  if (!bundleID)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v35 = null2;
  v43[1] = null2;
  v42[2] = @"endDate";
  null3 = v8;
  if (!v8)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v34 = null3;
  v43[2] = null3;
  v42[3] = @"extensionBundleID";
  null4 = extensionBundleID;
  if (!extensionBundleID)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v39 = budgetID;
  v33 = null4;
  v43[3] = null4;
  v42[4] = @"inStack";
  null5 = v10;
  if (!v10)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v38 = bundleID;
  v43[4] = null5;
  v42[5] = @"pageID";
  null6 = v41;
  if (!v41)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = v10;
  v26 = v8;
  v43[5] = null6;
  v42[6] = @"startDate";
  null7 = v40;
  if (!v40)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = extensionBundleID;
  v43[6] = null7;
  v42[7] = @"timeUntilExpiration";
  null8 = v17;
  if (!v17)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v43[7] = null8;
  v42[8] = @"viewID";
  null9 = viewID;
  if (!viewID)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v43[8] = null9;
  v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:9];
  if (viewID)
  {
    if (v17)
    {
      goto LABEL_37;
    }
  }

  else
  {

    if (v17)
    {
      goto LABEL_37;
    }
  }

LABEL_37:
  if (!v40)
  {
  }

  if (!v41)
  {
  }

  if (!v25)
  {
  }

  if (v28)
  {
    if (v26)
    {
      goto LABEL_45;
    }
  }

  else
  {

    if (v26)
    {
LABEL_45:
      if (v38)
      {
        goto LABEL_46;
      }

LABEL_54:

      if (v39)
      {
        goto LABEL_47;
      }

      goto LABEL_55;
    }
  }

  if (!v38)
  {
    goto LABEL_54;
  }

LABEL_46:
  if (v39)
  {
    goto LABEL_47;
  }

LABEL_55:

LABEL_47:
  v31 = *MEMORY[0x1E69E9840];

  return v37;
}

- (BMWidgetsViewed)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v129[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"budgetID"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"bundleID"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v20 = 0;
          goto LABEL_68;
        }

        v25 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy = error;
        v27 = v9;
        v28 = *MEMORY[0x1E698F240];
        v126 = *MEMORY[0x1E696A578];
        v110 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"bundleID"];
        v127 = v110;
        v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v127 forKeys:&v126 count:1];
        v30 = v25;
        v10 = v29;
        v31 = v28;
        v9 = v27;
        v20 = 0;
        error = 0;
        *errorCopy = [v30 initWithDomain:v31 code:2 userInfo:v29];
        goto LABEL_67;
      }

      v109 = v9;
    }

    else
    {
      v109 = 0;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"endDate"];
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = MEMORY[0x1E695DF00];
        v12 = v10;
        v13 = v10;
        v14 = [v11 alloc];
        [v13 doubleValue];
        v16 = v15;

        v10 = v12;
        v17 = [v14 initWithTimeIntervalSince1970:v16];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v32 = objc_alloc_init(MEMORY[0x1E696AC80]);
          v110 = [v32 dateFromString:v10];

          goto LABEL_23;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v110 = 0;
            v20 = v109;
            goto LABEL_67;
          }

          v82 = v10;
          v83 = objc_alloc(MEMORY[0x1E696ABC0]);
          errorCopy2 = error;
          v84 = v9;
          v85 = *MEMORY[0x1E698F240];
          v124 = *MEMORY[0x1E696A578];
          v108 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"endDate"];
          v125 = v108;
          v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v125 forKeys:&v124 count:1];
          v86 = v83;
          v10 = v82;
          v87 = v85;
          v9 = v84;
          v110 = 0;
          error = 0;
          *errorCopy2 = [v86 initWithDomain:v87 code:2 userInfo:v33];
          v20 = v109;
LABEL_66:

LABEL_67:
          goto LABEL_68;
        }

        v17 = v10;
      }

      v110 = v17;
    }

    else
    {
      v110 = 0;
    }

LABEL_23:
    v33 = [dictionaryCopy objectForKeyedSubscript:@"extensionBundleID"];
    errorCopy9 = self;
    v107 = v8;
    if (v33 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v108 = 0;
          v20 = v109;
          goto LABEL_66;
        }

        v44 = v10;
        v45 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy3 = error;
        v46 = v9;
        v47 = *MEMORY[0x1E698F240];
        v122 = *MEMORY[0x1E696A578];
        v106 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"extensionBundleID"];
        v123 = v106;
        v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v123 forKeys:&v122 count:1];
        v48 = v45;
        v10 = v44;
        v49 = v47;
        v9 = v46;
        v108 = 0;
        error = 0;
        *errorCopy3 = [v48 initWithDomain:v49 code:2 userInfo:v34];
        v20 = v109;
        goto LABEL_65;
      }

      v108 = v33;
    }

    else
    {
      v108 = 0;
    }

    v34 = [dictionaryCopy objectForKeyedSubscript:@"inStack"];
    v104 = v7;
    if (v34 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v106 = 0;
          goto LABEL_64;
        }

        v50 = v10;
        v51 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy4 = error;
        v52 = v9;
        v53 = *MEMORY[0x1E698F240];
        v120 = *MEMORY[0x1E696A578];
        v54 = v33;
        v55 = objc_alloc(MEMORY[0x1E696AEC0]);
        v92 = objc_opt_class();
        v56 = v55;
        v33 = v54;
        v105 = [v56 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v92, @"inStack"];
        v121 = v105;
        v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v121 forKeys:&v120 count:1];
        v57 = v51;
        v10 = v50;
        v58 = v53;
        v9 = v52;
        v106 = 0;
        error = 0;
        *errorCopy4 = [v57 initWithDomain:v58 code:2 userInfo:v35];
LABEL_63:

        v7 = v104;
LABEL_64:
        v20 = v109;
LABEL_65:

        v8 = v107;
        goto LABEL_66;
      }

      v106 = v34;
    }

    else
    {
      v106 = 0;
    }

    v35 = [dictionaryCopy objectForKeyedSubscript:@"pageID"];
    v103 = v9;
    if (v35 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v105 = 0;
          goto LABEL_63;
        }

        errorCopy5 = error;
        v60 = v10;
        v61 = objc_alloc(MEMORY[0x1E696ABC0]);
        v62 = *MEMORY[0x1E698F240];
        v118 = *MEMORY[0x1E696A578];
        v63 = v33;
        v64 = objc_alloc(MEMORY[0x1E696AEC0]);
        v93 = objc_opt_class();
        v65 = v64;
        v33 = v63;
        v37 = [v65 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v93, @"pageID"];
        v119 = v37;
        v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v119 forKeys:&v118 count:1];
        v66 = v61;
        v10 = v60;
        v105 = 0;
        error = 0;
        *errorCopy5 = [v66 initWithDomain:v62 code:2 userInfo:v36];
        goto LABEL_62;
      }

      v102 = v10;
      v105 = v35;
    }

    else
    {
      v102 = v10;
      v105 = 0;
    }

    v36 = [dictionaryCopy objectForKeyedSubscript:@"startDate"];
    v101 = v33;
    if (v36 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v38 = MEMORY[0x1E695DF00];
        v39 = v36;
        v40 = [v38 alloc];
        [v39 doubleValue];
        v42 = v41;

        v43 = [v40 initWithTimeIntervalSince1970:v42];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v67 = objc_alloc_init(MEMORY[0x1E696AC80]);
          v37 = [v67 dateFromString:v36];

          goto LABEL_52;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v37 = 0;
            v10 = v102;
            goto LABEL_62;
          }

          errorCopy6 = error;
          v89 = objc_alloc(MEMORY[0x1E696ABC0]);
          v90 = *MEMORY[0x1E698F240];
          v116 = *MEMORY[0x1E696A578];
          v71 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"startDate"];
          v117 = v71;
          v68 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v117 forKeys:&v116 count:1];
          v91 = [v89 initWithDomain:v90 code:2 userInfo:v68];
          v37 = 0;
          error = 0;
          *errorCopy6 = v91;
LABEL_61:

          v33 = v101;
          v10 = v102;
LABEL_62:

          self = errorCopy9;
          v9 = v103;
          goto LABEL_63;
        }

        v43 = v36;
      }

      v37 = v43;
    }

    else
    {
      v37 = 0;
    }

LABEL_52:
    v68 = [dictionaryCopy objectForKeyedSubscript:@"timeUntilExpiration"];
    if (v68 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v71 = 0;
          goto LABEL_61;
        }

        v76 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy7 = error;
        v77 = *MEMORY[0x1E698F240];
        v114 = *MEMORY[0x1E696A578];
        v73 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"timeUntilExpiration"];
        v115 = v73;
        v72 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v115 forKeys:&v114 count:1];
        v78 = [v76 initWithDomain:v77 code:2 userInfo:v72];
        v71 = 0;
        error = 0;
        *errorCopy7 = v78;
        goto LABEL_60;
      }

      v98 = v35;
      v69 = v34;
      v70 = v37;
      v71 = v68;
    }

    else
    {
      v98 = v35;
      v69 = v34;
      v70 = v37;
      v71 = 0;
    }

    v72 = [dictionaryCopy objectForKeyedSubscript:@"viewID"];
    if (v72 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v95 = objc_alloc(MEMORY[0x1E696ABC0]);
          v94 = *MEMORY[0x1E698F240];
          v112 = *MEMORY[0x1E696A578];
          errorCopy8 = error;
          v80 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"viewID"];
          v113 = v80;
          v81 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v113 forKeys:&v112 count:1];
          *errorCopy8 = [v95 initWithDomain:v94 code:2 userInfo:v81];

          v73 = 0;
          error = 0;
        }

        else
        {
          v73 = 0;
        }

        v37 = v70;
        goto LABEL_59;
      }

      v73 = v72;
    }

    else
    {
      v73 = 0;
    }

    v37 = v70;
    error = [(BMWidgetsViewed *)errorCopy9 initWithBudgetID:v107 bundleID:v109 endDate:v110 extensionBundleID:v108 inStack:v106 pageID:v105 startDate:v70 timeUntilExpiration:v71 viewID:v73];
    errorCopy9 = error;
LABEL_59:
    v34 = v69;
    v35 = v98;
LABEL_60:

    goto LABEL_61;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    goto LABEL_4;
  }

  if (!error)
  {
    v8 = 0;
    goto LABEL_69;
  }

  v18 = objc_alloc(MEMORY[0x1E696ABC0]);
  v19 = *MEMORY[0x1E698F240];
  v128 = *MEMORY[0x1E696A578];
  v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"budgetID"];
  v129[0] = v20;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v129 forKeys:&v128 count:1];
  v22 = v19;
  v9 = v21;
  v23 = [v18 initWithDomain:v22 code:2 userInfo:v21];
  v8 = 0;
  errorCopy10 = error;
  error = 0;
  *errorCopy10 = v23;
LABEL_68:

LABEL_69:
  v74 = *MEMORY[0x1E69E9840];
  return error;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMWidgetsViewed *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v10 = toCopy;
  if (self->_budgetID)
  {
    PBDataWriterWriteStringField();
    toCopy = v10;
  }

  if (self->_bundleID)
  {
    PBDataWriterWriteStringField();
    toCopy = v10;
  }

  if (self->_hasRaw_endDate)
  {
    raw_endDate = self->_raw_endDate;
    PBDataWriterWriteDoubleField();
    toCopy = v10;
  }

  if (self->_extensionBundleID)
  {
    PBDataWriterWriteStringField();
    toCopy = v10;
  }

  if (self->_hasInStack)
  {
    inStack = self->_inStack;
    PBDataWriterWriteBOOLField();
    toCopy = v10;
  }

  if (self->_hasPageID)
  {
    pageID = self->_pageID;
    PBDataWriterWriteInt64Field();
    toCopy = v10;
  }

  if (self->_hasRaw_startDate)
  {
    raw_startDate = self->_raw_startDate;
    PBDataWriterWriteDoubleField();
    toCopy = v10;
  }

  if (self->_hasTimeUntilExpiration)
  {
    timeUntilExpiration = self->_timeUntilExpiration;
    PBDataWriterWriteDoubleField();
    toCopy = v10;
  }

  if (self->_viewID)
  {
    PBDataWriterWriteStringField();
    toCopy = v10;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v47.receiver = self;
  v47.super_class = BMWidgetsViewed;
  v5 = [(BMEventBase *)&v47 init];
  if (!v5)
  {
    goto LABEL_80;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_78;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v48) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v48 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v48 & 0x7F) << v7;
        if ((v48 & 0x80) == 0)
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

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        goto LABEL_78;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 4)
      {
        break;
      }

      if (v15 > 6)
      {
        if (v15 == 7)
        {
          v5->_hasRaw_startDate = 1;
          v48 = 0;
          v28 = [fromCopy position] + 8;
          if (v28 >= [fromCopy position] && (v29 = objc_msgSend(fromCopy, "position") + 8, v29 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v48 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
          }

          v40 = v48;
          v41 = 40;
          goto LABEL_76;
        }

        if (v15 == 8)
        {
          v5->_hasTimeUntilExpiration = 1;
          v48 = 0;
          v37 = [fromCopy position] + 8;
          if (v37 >= [fromCopy position] && (v38 = objc_msgSend(fromCopy, "position") + 8, v38 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:&v48 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
          }

          v40 = v48;
          v41 = 88;
LABEL_76:
          *(&v5->super.super.isa + v41) = v40;
          goto LABEL_77;
        }

        if (v15 != 9)
        {
          goto LABEL_62;
        }

        v16 = PBReaderReadString();
        v17 = 96;
        goto LABEL_43;
      }

      if (v15 == 5)
      {
        v30 = 0;
        v31 = 0;
        v32 = 0;
        v5->_hasInStack = 1;
        while (1)
        {
          LOBYTE(v48) = 0;
          v33 = [fromCopy position] + 1;
          if (v33 >= [fromCopy position] && (v34 = objc_msgSend(fromCopy, "position") + 1, v34 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:&v48 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v32 |= (v48 & 0x7F) << v30;
          if ((v48 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v13 = v31++ >= 9;
          if (v13)
          {
            LOBYTE(v36) = 0;
            goto LABEL_69;
          }
        }

        v36 = (v32 != 0) & ~[fromCopy hasError];
LABEL_69:
        v5->_inStack = v36;
      }

      else
      {
        if (v15 != 6)
        {
LABEL_62:
          if (!PBReaderSkipValueWithTag())
          {
            goto LABEL_79;
          }

          goto LABEL_77;
        }

        v18 = 0;
        v19 = 0;
        v20 = 0;
        v5->_hasPageID = 1;
        while (1)
        {
          LOBYTE(v48) = 0;
          v21 = [fromCopy position] + 1;
          if (v21 >= [fromCopy position] && (v22 = objc_msgSend(fromCopy, "position") + 1, v22 <= objc_msgSend(fromCopy, "length")))
          {
            data5 = [fromCopy data];
            [data5 getBytes:&v48 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v20 |= (v48 & 0x7F) << v18;
          if ((v48 & 0x80) == 0)
          {
            break;
          }

          v18 += 7;
          v13 = v19++ >= 9;
          if (v13)
          {
            v24 = 0;
            goto LABEL_67;
          }
        }

        if ([fromCopy hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v20;
        }

LABEL_67:
        v5->_pageID = v24;
      }

LABEL_77:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_78;
      }
    }

    if (v15 > 2)
    {
      if (v15 == 3)
      {
        v5->_hasRaw_endDate = 1;
        v48 = 0;
        v26 = [fromCopy position] + 8;
        if (v26 >= [fromCopy position] && (v27 = objc_msgSend(fromCopy, "position") + 8, v27 <= objc_msgSend(fromCopy, "length")))
        {
          data6 = [fromCopy data];
          [data6 getBytes:&v48 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        v40 = v48;
        v41 = 24;
        goto LABEL_76;
      }

      if (v15 != 4)
      {
        goto LABEL_62;
      }

      v16 = PBReaderReadString();
      v17 = 72;
    }

    else if (v15 == 1)
    {
      v16 = PBReaderReadString();
      v17 = 56;
    }

    else
    {
      if (v15 != 2)
      {
        goto LABEL_62;
      }

      v16 = PBReaderReadString();
      v17 = 64;
    }

LABEL_43:
    v25 = *(&v5->super.super.isa + v17);
    *(&v5->super.super.isa + v17) = v16;

    goto LABEL_77;
  }

LABEL_78:
  if ([fromCopy hasError])
  {
LABEL_79:
    v45 = 0;
  }

  else
  {
LABEL_80:
    v45 = v5;
  }

  return v45;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  budgetID = [(BMWidgetsViewed *)self budgetID];
  bundleID = [(BMWidgetsViewed *)self bundleID];
  endDate = [(BMWidgetsViewed *)self endDate];
  extensionBundleID = [(BMWidgetsViewed *)self extensionBundleID];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMWidgetsViewed inStack](self, "inStack")}];
  v9 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMWidgetsViewed pageID](self, "pageID")}];
  startDate = [(BMWidgetsViewed *)self startDate];
  v11 = MEMORY[0x1E696AD98];
  [(BMWidgetsViewed *)self timeUntilExpiration];
  v12 = [v11 numberWithDouble:?];
  viewID = [(BMWidgetsViewed *)self viewID];
  v14 = [v3 initWithFormat:@"BMWidgetsViewed with budgetID: %@, bundleID: %@, endDate: %@, extensionBundleID: %@, inStack: %@, pageID: %@, startDate: %@, timeUntilExpiration: %@, viewID: %@", budgetID, bundleID, endDate, extensionBundleID, v8, v9, startDate, v12, viewID];

  return v14;
}

- (BMWidgetsViewed)initWithBudgetID:(id)d bundleID:(id)iD endDate:(id)date extensionBundleID:(id)bundleID inStack:(id)stack pageID:(id)pageID startDate:(id)startDate timeUntilExpiration:(id)self0 viewID:(id)self1
{
  dCopy = d;
  iDCopy = iD;
  dateCopy = date;
  bundleIDCopy = bundleID;
  stackCopy = stack;
  pageIDCopy = pageID;
  startDateCopy = startDate;
  expirationCopy = expiration;
  viewIDCopy = viewID;
  v33.receiver = self;
  v33.super_class = BMWidgetsViewed;
  v23 = [(BMEventBase *)&v33 init];
  if (v23)
  {
    v23->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v23->_budgetID, d);
    objc_storeStrong(&v23->_bundleID, iD);
    if (dateCopy)
    {
      v23->_hasRaw_endDate = 1;
      [dateCopy timeIntervalSince1970];
    }

    else
    {
      v23->_hasRaw_endDate = 0;
      v24 = -1.0;
    }

    v23->_raw_endDate = v24;
    objc_storeStrong(&v23->_extensionBundleID, bundleID);
    if (stackCopy)
    {
      v23->_hasInStack = 1;
      v23->_inStack = [stackCopy BOOLValue];
    }

    else
    {
      v23->_hasInStack = 0;
      v23->_inStack = 0;
    }

    if (pageIDCopy)
    {
      v23->_hasPageID = 1;
      longLongValue = [pageIDCopy longLongValue];
    }

    else
    {
      v23->_hasPageID = 0;
      longLongValue = -1;
    }

    v23->_pageID = longLongValue;
    if (startDateCopy)
    {
      v23->_hasRaw_startDate = 1;
      [startDateCopy timeIntervalSince1970];
    }

    else
    {
      v23->_hasRaw_startDate = 0;
      v26 = -1.0;
    }

    v23->_raw_startDate = v26;
    if (expirationCopy)
    {
      v23->_hasTimeUntilExpiration = 1;
      [expirationCopy doubleValue];
    }

    else
    {
      v23->_hasTimeUntilExpiration = 0;
      v27 = -1.0;
    }

    v23->_timeUntilExpiration = v27;
    objc_storeStrong(&v23->_viewID, viewID);
  }

  return v23;
}

+ (id)protoFields
{
  v14[9] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"budgetID" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleID" number:2 type:13 subMessageClass:{0, v2}];
  v14[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"endDate" number:3 type:0 subMessageClass:0];
  v14[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"extensionBundleID" number:4 type:13 subMessageClass:0];
  v14[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"inStack" number:5 type:12 subMessageClass:0];
  v14[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"pageID" number:6 type:3 subMessageClass:0];
  v14[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"startDate" number:7 type:0 subMessageClass:0];
  v14[6] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"timeUntilExpiration" number:8 type:0 subMessageClass:0];
  v14[7] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"viewID" number:9 type:13 subMessageClass:0];
  v14[8] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:9];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)columns
{
  v14[9] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"budgetID" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleID" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"endDate" dataType:3 requestOnly:0 fieldNumber:3 protoDataType:0 convertedType:2];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"extensionBundleID" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"inStack" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:12 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"pageID" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:3 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"startDate" dataType:3 requestOnly:0 fieldNumber:7 protoDataType:0 convertedType:2];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"timeUntilExpiration" dataType:1 requestOnly:0 fieldNumber:8 protoDataType:0 convertedType:0];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"viewID" dataType:2 requestOnly:0 fieldNumber:9 protoDataType:13 convertedType:0];
  v14[0] = v2;
  v14[1] = v3;
  v14[2] = v4;
  v14[3] = v5;
  v14[4] = v6;
  v14[5] = v7;
  v14[6] = v8;
  v14[7] = v9;
  v14[8] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:9];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v7 = [[v5 alloc] initWithData:dataCopy];

    v8 = [[BMWidgetsViewed alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[13] = 0;
    }
  }

  return v4;
}

@end