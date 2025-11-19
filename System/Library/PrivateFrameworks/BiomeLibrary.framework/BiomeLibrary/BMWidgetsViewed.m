@interface BMWidgetsViewed
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMWidgetsViewed)initWithBudgetID:(id)a3 bundleID:(id)a4 endDate:(id)a5 extensionBundleID:(id)a6 inStack:(id)a7 pageID:(id)a8 startDate:(id)a9 timeUntilExpiration:(id)a10 viewID:(id)a11;
- (BMWidgetsViewed)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSDate)endDate;
- (NSDate)startDate;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMWidgetsViewed

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMWidgetsViewed *)self budgetID];
    v7 = [v5 budgetID];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMWidgetsViewed *)self budgetID];
      v10 = [v5 budgetID];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_40;
      }
    }

    v13 = [(BMWidgetsViewed *)self bundleID];
    v14 = [v5 bundleID];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMWidgetsViewed *)self bundleID];
      v17 = [v5 bundleID];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_40;
      }
    }

    v19 = [(BMWidgetsViewed *)self endDate];
    v20 = [v5 endDate];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMWidgetsViewed *)self endDate];
      v23 = [v5 endDate];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_40;
      }
    }

    v25 = [(BMWidgetsViewed *)self extensionBundleID];
    v26 = [v5 extensionBundleID];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(BMWidgetsViewed *)self extensionBundleID];
      v29 = [v5 extensionBundleID];
      v30 = [v28 isEqual:v29];

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

      v31 = [(BMWidgetsViewed *)self inStack];
      if (v31 != [v5 inStack])
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

      v32 = [(BMWidgetsViewed *)self pageID];
      if (v32 != [v5 pageID])
      {
        goto LABEL_40;
      }
    }

    v33 = [(BMWidgetsViewed *)self startDate];
    v34 = [v5 startDate];
    v35 = v34;
    if (v33 == v34)
    {
    }

    else
    {
      v36 = [(BMWidgetsViewed *)self startDate];
      v37 = [v5 startDate];
      v38 = [v36 isEqual:v37];

      if (!v38)
      {
        goto LABEL_40;
      }
    }

    if (!-[BMWidgetsViewed hasTimeUntilExpiration](self, "hasTimeUntilExpiration") && ![v5 hasTimeUntilExpiration] || -[BMWidgetsViewed hasTimeUntilExpiration](self, "hasTimeUntilExpiration") && objc_msgSend(v5, "hasTimeUntilExpiration") && (-[BMWidgetsViewed timeUntilExpiration](self, "timeUntilExpiration"), v40 = v39, objc_msgSend(v5, "timeUntilExpiration"), v40 == v41))
    {
      v42 = [(BMWidgetsViewed *)self viewID];
      v43 = [v5 viewID];
      if (v42 == v43)
      {
        v12 = 1;
      }

      else
      {
        v44 = [(BMWidgetsViewed *)self viewID];
        v45 = [v5 viewID];
        v12 = [v44 isEqual:v45];
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
  v3 = [(BMWidgetsViewed *)self budgetID];
  v4 = [(BMWidgetsViewed *)self bundleID];
  v5 = [(BMWidgetsViewed *)self endDate];
  if (v5)
  {
    v6 = MEMORY[0x1E696AD98];
    v7 = [(BMWidgetsViewed *)self endDate];
    [v7 timeIntervalSince1970];
    v8 = [v6 numberWithDouble:?];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(BMWidgetsViewed *)self extensionBundleID];
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

  v11 = [(BMWidgetsViewed *)self startDate];
  if (v11)
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

  v18 = [(BMWidgetsViewed *)self viewID];
  v42[0] = @"budgetID";
  v19 = v3;
  if (!v3)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v36 = v19;
  v43[0] = v19;
  v42[1] = @"bundleID";
  v20 = v4;
  if (!v4)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v35 = v20;
  v43[1] = v20;
  v42[2] = @"endDate";
  v21 = v8;
  if (!v8)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v34 = v21;
  v43[2] = v21;
  v42[3] = @"extensionBundleID";
  v22 = v9;
  if (!v9)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v39 = v3;
  v33 = v22;
  v43[3] = v22;
  v42[4] = @"inStack";
  v23 = v10;
  if (!v10)
  {
    v23 = [MEMORY[0x1E695DFB0] null];
  }

  v38 = v4;
  v43[4] = v23;
  v42[5] = @"pageID";
  v24 = v41;
  if (!v41)
  {
    v24 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = v10;
  v26 = v8;
  v43[5] = v24;
  v42[6] = @"startDate";
  v27 = v40;
  if (!v40)
  {
    v27 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = v9;
  v43[6] = v27;
  v42[7] = @"timeUntilExpiration";
  v29 = v17;
  if (!v17)
  {
    v29 = [MEMORY[0x1E695DFB0] null];
  }

  v43[7] = v29;
  v42[8] = @"viewID";
  v30 = v18;
  if (!v18)
  {
    v30 = [MEMORY[0x1E695DFB0] null];
  }

  v43[8] = v30;
  v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:9];
  if (v18)
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

- (BMWidgetsViewed)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v129[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"budgetID"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"bundleID"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v20 = 0;
          goto LABEL_68;
        }

        v25 = objc_alloc(MEMORY[0x1E696ABC0]);
        v26 = a4;
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
        a4 = 0;
        *v26 = [v30 initWithDomain:v31 code:2 userInfo:v29];
        goto LABEL_67;
      }

      v109 = v9;
    }

    else
    {
      v109 = 0;
    }

    v10 = [v6 objectForKeyedSubscript:@"endDate"];
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
          if (!a4)
          {
            v110 = 0;
            v20 = v109;
            goto LABEL_67;
          }

          v82 = v10;
          v83 = objc_alloc(MEMORY[0x1E696ABC0]);
          v100 = a4;
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
          a4 = 0;
          *v100 = [v86 initWithDomain:v87 code:2 userInfo:v33];
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
    v33 = [v6 objectForKeyedSubscript:@"extensionBundleID"];
    v111 = self;
    v107 = v8;
    if (v33 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v108 = 0;
          v20 = v109;
          goto LABEL_66;
        }

        v44 = v10;
        v45 = objc_alloc(MEMORY[0x1E696ABC0]);
        v96 = a4;
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
        a4 = 0;
        *v96 = [v48 initWithDomain:v49 code:2 userInfo:v34];
        v20 = v109;
        goto LABEL_65;
      }

      v108 = v33;
    }

    else
    {
      v108 = 0;
    }

    v34 = [v6 objectForKeyedSubscript:@"inStack"];
    v104 = v7;
    if (v34 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v106 = 0;
          goto LABEL_64;
        }

        v50 = v10;
        v51 = objc_alloc(MEMORY[0x1E696ABC0]);
        v97 = a4;
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
        a4 = 0;
        *v97 = [v57 initWithDomain:v58 code:2 userInfo:v35];
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

    v35 = [v6 objectForKeyedSubscript:@"pageID"];
    v103 = v9;
    if (v35 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v105 = 0;
          goto LABEL_63;
        }

        v59 = a4;
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
        a4 = 0;
        *v59 = [v66 initWithDomain:v62 code:2 userInfo:v36];
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

    v36 = [v6 objectForKeyedSubscript:@"startDate"];
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
          if (!a4)
          {
            v37 = 0;
            v10 = v102;
            goto LABEL_62;
          }

          v88 = a4;
          v89 = objc_alloc(MEMORY[0x1E696ABC0]);
          v90 = *MEMORY[0x1E698F240];
          v116 = *MEMORY[0x1E696A578];
          v71 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"startDate"];
          v117 = v71;
          v68 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v117 forKeys:&v116 count:1];
          v91 = [v89 initWithDomain:v90 code:2 userInfo:v68];
          v37 = 0;
          a4 = 0;
          *v88 = v91;
LABEL_61:

          v33 = v101;
          v10 = v102;
LABEL_62:

          self = v111;
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
    v68 = [v6 objectForKeyedSubscript:@"timeUntilExpiration"];
    if (v68 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v71 = 0;
          goto LABEL_61;
        }

        v76 = objc_alloc(MEMORY[0x1E696ABC0]);
        v99 = a4;
        v77 = *MEMORY[0x1E698F240];
        v114 = *MEMORY[0x1E696A578];
        v73 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"timeUntilExpiration"];
        v115 = v73;
        v72 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v115 forKeys:&v114 count:1];
        v78 = [v76 initWithDomain:v77 code:2 userInfo:v72];
        v71 = 0;
        a4 = 0;
        *v99 = v78;
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

    v72 = [v6 objectForKeyedSubscript:@"viewID"];
    if (v72 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (a4)
        {
          v95 = objc_alloc(MEMORY[0x1E696ABC0]);
          v94 = *MEMORY[0x1E698F240];
          v112 = *MEMORY[0x1E696A578];
          v79 = a4;
          v80 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"viewID"];
          v113 = v80;
          v81 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v113 forKeys:&v112 count:1];
          *v79 = [v95 initWithDomain:v94 code:2 userInfo:v81];

          v73 = 0;
          a4 = 0;
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
    a4 = [(BMWidgetsViewed *)v111 initWithBudgetID:v107 bundleID:v109 endDate:v110 extensionBundleID:v108 inStack:v106 pageID:v105 startDate:v70 timeUntilExpiration:v71 viewID:v73];
    v111 = a4;
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

  if (!a4)
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
  v24 = a4;
  a4 = 0;
  *v24 = v23;
LABEL_68:

LABEL_69:
  v74 = *MEMORY[0x1E69E9840];
  return a4;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMWidgetsViewed *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (self->_budgetID)
  {
    PBDataWriterWriteStringField();
    v4 = v10;
  }

  if (self->_bundleID)
  {
    PBDataWriterWriteStringField();
    v4 = v10;
  }

  if (self->_hasRaw_endDate)
  {
    raw_endDate = self->_raw_endDate;
    PBDataWriterWriteDoubleField();
    v4 = v10;
  }

  if (self->_extensionBundleID)
  {
    PBDataWriterWriteStringField();
    v4 = v10;
  }

  if (self->_hasInStack)
  {
    inStack = self->_inStack;
    PBDataWriterWriteBOOLField();
    v4 = v10;
  }

  if (self->_hasPageID)
  {
    pageID = self->_pageID;
    PBDataWriterWriteInt64Field();
    v4 = v10;
  }

  if (self->_hasRaw_startDate)
  {
    raw_startDate = self->_raw_startDate;
    PBDataWriterWriteDoubleField();
    v4 = v10;
  }

  if (self->_hasTimeUntilExpiration)
  {
    timeUntilExpiration = self->_timeUntilExpiration;
    PBDataWriterWriteDoubleField();
    v4 = v10;
  }

  if (self->_viewID)
  {
    PBDataWriterWriteStringField();
    v4 = v10;
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v47.receiver = self;
  v47.super_class = BMWidgetsViewed;
  v5 = [(BMEventBase *)&v47 init];
  if (!v5)
  {
    goto LABEL_80;
  }

  v6 = [v4 position];
  if (v6 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_78;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v48) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v48 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
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

      v14 = [v4 hasError] ? 0 : v9;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v14 & 7) == 4)
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
          v28 = [v4 position] + 8;
          if (v28 >= [v4 position] && (v29 = objc_msgSend(v4, "position") + 8, v29 <= objc_msgSend(v4, "length")))
          {
            v42 = [v4 data];
            [v42 getBytes:&v48 range:{objc_msgSend(v4, "position"), 8}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
          }

          else
          {
            [v4 _setError];
          }

          v40 = v48;
          v41 = 40;
          goto LABEL_76;
        }

        if (v15 == 8)
        {
          v5->_hasTimeUntilExpiration = 1;
          v48 = 0;
          v37 = [v4 position] + 8;
          if (v37 >= [v4 position] && (v38 = objc_msgSend(v4, "position") + 8, v38 <= objc_msgSend(v4, "length")))
          {
            v43 = [v4 data];
            [v43 getBytes:&v48 range:{objc_msgSend(v4, "position"), 8}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
          }

          else
          {
            [v4 _setError];
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
          v33 = [v4 position] + 1;
          if (v33 >= [v4 position] && (v34 = objc_msgSend(v4, "position") + 1, v34 <= objc_msgSend(v4, "length")))
          {
            v35 = [v4 data];
            [v35 getBytes:&v48 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
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

        v36 = (v32 != 0) & ~[v4 hasError];
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
          v21 = [v4 position] + 1;
          if (v21 >= [v4 position] && (v22 = objc_msgSend(v4, "position") + 1, v22 <= objc_msgSend(v4, "length")))
          {
            v23 = [v4 data];
            [v23 getBytes:&v48 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
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

        if ([v4 hasError])
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
      v44 = [v4 position];
      if (v44 >= [v4 length])
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
        v26 = [v4 position] + 8;
        if (v26 >= [v4 position] && (v27 = objc_msgSend(v4, "position") + 8, v27 <= objc_msgSend(v4, "length")))
        {
          v39 = [v4 data];
          [v39 getBytes:&v48 range:{objc_msgSend(v4, "position"), 8}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
        }

        else
        {
          [v4 _setError];
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
  if ([v4 hasError])
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
  v4 = [(BMWidgetsViewed *)self budgetID];
  v5 = [(BMWidgetsViewed *)self bundleID];
  v6 = [(BMWidgetsViewed *)self endDate];
  v7 = [(BMWidgetsViewed *)self extensionBundleID];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMWidgetsViewed inStack](self, "inStack")}];
  v9 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMWidgetsViewed pageID](self, "pageID")}];
  v10 = [(BMWidgetsViewed *)self startDate];
  v11 = MEMORY[0x1E696AD98];
  [(BMWidgetsViewed *)self timeUntilExpiration];
  v12 = [v11 numberWithDouble:?];
  v13 = [(BMWidgetsViewed *)self viewID];
  v14 = [v3 initWithFormat:@"BMWidgetsViewed with budgetID: %@, bundleID: %@, endDate: %@, extensionBundleID: %@, inStack: %@, pageID: %@, startDate: %@, timeUntilExpiration: %@, viewID: %@", v4, v5, v6, v7, v8, v9, v10, v12, v13];

  return v14;
}

- (BMWidgetsViewed)initWithBudgetID:(id)a3 bundleID:(id)a4 endDate:(id)a5 extensionBundleID:(id)a6 inStack:(id)a7 pageID:(id)a8 startDate:(id)a9 timeUntilExpiration:(id)a10 viewID:(id)a11
{
  v32 = a3;
  v31 = a4;
  v18 = a5;
  v30 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v29 = a11;
  v33.receiver = self;
  v33.super_class = BMWidgetsViewed;
  v23 = [(BMEventBase *)&v33 init];
  if (v23)
  {
    v23->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v23->_budgetID, a3);
    objc_storeStrong(&v23->_bundleID, a4);
    if (v18)
    {
      v23->_hasRaw_endDate = 1;
      [v18 timeIntervalSince1970];
    }

    else
    {
      v23->_hasRaw_endDate = 0;
      v24 = -1.0;
    }

    v23->_raw_endDate = v24;
    objc_storeStrong(&v23->_extensionBundleID, a6);
    if (v19)
    {
      v23->_hasInStack = 1;
      v23->_inStack = [v19 BOOLValue];
    }

    else
    {
      v23->_hasInStack = 0;
      v23->_inStack = 0;
    }

    if (v20)
    {
      v23->_hasPageID = 1;
      v25 = [v20 longLongValue];
    }

    else
    {
      v23->_hasPageID = 0;
      v25 = -1;
    }

    v23->_pageID = v25;
    if (v21)
    {
      v23->_hasRaw_startDate = 1;
      [v21 timeIntervalSince1970];
    }

    else
    {
      v23->_hasRaw_startDate = 0;
      v26 = -1.0;
    }

    v23->_raw_startDate = v26;
    if (v22)
    {
      v23->_hasTimeUntilExpiration = 1;
      [v22 doubleValue];
    }

    else
    {
      v23->_hasTimeUntilExpiration = 0;
      v27 = -1.0;
    }

    v23->_timeUntilExpiration = v27;
    objc_storeStrong(&v23->_viewID, a11);
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

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    v6 = a3;
    v7 = [[v5 alloc] initWithData:v6];

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